	.section	.text
	.align	32
	#Procedure 0x401349
	.globl sub_401349
	.type sub_401349, @function
sub_401349:

	hlt	
	.section	.text
	.align	32
	#Procedure 0x40134a
	.globl sub_40134a
	.type sub_40134a, @function
sub_40134a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401382
	.globl sub_401382
	.type sub_401382, @function
sub_401382:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4013ca
	.globl sub_4013ca
	.type sub_4013ca, @function
sub_4013ca:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4013ec
	.globl sub_4013ec
	.type sub_4013ec, @function
sub_4013ec:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4013fd
	.globl sub_4013fd
	.type sub_4013fd, @function
sub_4013fd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401416
	.globl sub_401416
	.type sub_401416, @function
sub_401416:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401420

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
	jne	.label_16
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
	je	.label_12
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_17
	mov	eax, OFFSET FLAT:label_18
	jmp	.label_15
.label_12:
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
	je	.label_11
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_13
	mov	eax, OFFSET FLAT:label_14
	jmp	.label_15
.label_11:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:label_9
	mov	eax, OFFSET FLAT:label_10
.label_15:
	cmove	rax, rcx
.label_16:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4014dd
	.globl sub_4014dd
	.type sub_4014dd, @function
sub_4014dd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4014e0

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
	je	.label_31
	mov	edx, OFFSET FLAT:label_22
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_28
.label_31:
	mov	edx, OFFSET FLAT:label_29
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_28:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_33
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
	mov	esi, OFFSET FLAT:label_30
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_34
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_35]]
.label_319:
	add	rsp, 8
	jmp	.label_21
.label_34:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_25
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
	jmp	.label_21
.label_320:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_20
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
.label_321:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_26
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
.label_322:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_23
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
.label_323:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_37
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
	jmp	.label_21
.label_324:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_36
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
	jmp	.label_21
.label_325:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_19
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
	jmp	.label_21
.label_326:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_24
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
	jmp	.label_21
.label_328:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_27
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
	jmp	.label_21
.label_327:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_32
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
.label_21:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x401838
	.globl sub_401838
	.type sub_401838, @function
sub_401838:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401840

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_38
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_39
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x401870

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
.label_41:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4018f8
	.globl sub_4018f8
	.type sub_4018f8, @function
sub_4018f8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401900

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
.label_44:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401979
	.globl sub_401979
	.type sub_401979, @function
sub_401979:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401980

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
.label_46:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4019e3
	.globl sub_4019e3
	.type sub_4019e3, @function
sub_4019e3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4019f0

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
	je	.label_51
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_49
	jmp	.label_50
.label_51:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_50
.label_49:
	mov	eax, 1
	test	bpl, bpl
	je	.label_50
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_50:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401a4f
	.globl sub_401a4f
	.type sub_401a4f, @function
sub_401a4f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x401a50

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
	je	.label_52
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_54
	jmp	.label_53
.label_52:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_53
.label_54:
	mov	eax, 1
	test	bpl, bpl
	je	.label_53
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_53:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401a99
	.globl sub_401a99
	.type sub_401a99, @function
sub_401a99:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401aa0

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
	je	.label_57
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_56
	jmp	.label_55
.label_57:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_55
.label_56:
	mov	eax, 1
	test	bpl, bpl
	je	.label_55
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_55:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401ae5
	.globl sub_401ae5
	.type sub_401ae5, @function
sub_401ae5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401af0

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_60
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_59
	jmp	.label_58
.label_60:
	mov	eax, 1
	test	cl, cl
	je	.label_58
.label_59:
	xor	eax, eax
.label_58:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x401b1f
	.globl sub_401b1f
	.type sub_401b1f, @function
sub_401b1f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x401b20
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_61
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_61:
	push	rax
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401b46
	.globl sub_401b46
	.type sub_401b46, @function
sub_401b46:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401b50

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_62
	test	rbx, rbx
	jne	.label_62
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_62:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_64
	test	rax, rax
	je	.label_63
.label_64:
	pop	rbx
	ret	
.label_63:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401b80

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
	je	.label_65
	cmp	r15, -2
	jb	.label_65
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_65
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_65:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x401bd6
	.globl sub_401bd6
	.type sub_401bd6, @function
sub_401bd6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401be0
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
	.align	32
	#Procedure 0x401c29
	.globl sub_401c29
	.type sub_401c29, @function
sub_401c29:

	nop	dword ptr [rax]
.label_67:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_66
	test	cl, cl
	jne	.label_66
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_66:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401c5b
	.globl sub_401c5b
	.type sub_401c5b, @function
sub_401c5b:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401c65

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
	je	.label_67
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_66
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_66
	.section	.text
	.align	32
	#Procedure 0x401ca0

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
	je	.label_68
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
.label_68:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x401cf2
	.globl sub_401cf2
	.type sub_401cf2, @function
sub_401cf2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401d00
	.globl c_tolower
	.type c_tolower, @function
c_tolower:

	lea	ecx, [rdi - 0x41]
	lea	eax, [rdi + 0x20]
	cmp	ecx, 0x1a
	cmovae	eax, edi
	ret	
	.section	.text
	.align	32
	#Procedure 0x401d0d
	.globl sub_401d0d
	.type sub_401d0d, @function
sub_401d0d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401d10

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_69
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_71
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_71
.label_69:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_70
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_71:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_73
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_72
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_39
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_70:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_72:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_74
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
	#Procedure 0x401dd0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_75
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_75
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_75:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	32
	#Procedure 0x401df6
	.globl sub_401df6
	.type sub_401df6, @function
sub_401df6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401e00
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x401e0a
	.globl sub_401e0a
	.type sub_401e0a, @function
sub_401e0a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401e10

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
	.align	32
	#Procedure 0x401e47
	.globl sub_401e47
	.type sub_401e47, @function
sub_401e47:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401e50
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	mov	rax, rdx
	xor	edx, edx
	mov	rcx, rax
	jmp	quotearg_alloc_mem
	.section	.text
	.align	32
	#Procedure 0x401e5a
	.globl sub_401e5a
	.type sub_401e5a, @function
sub_401e5a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401e60

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
	je	.label_76
	mov	qword ptr [rax], rbx
.label_76:
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
	.align	32
	#Procedure 0x401f4c
	.globl sub_401f4c
	.type sub_401f4c, @function
sub_401f4c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401f50

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x401f5a
	.globl sub_401f5a
	.type sub_401f5a, @function
sub_401f5a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401f60
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quotearg_n
	.section	.text
	.align	32
	#Procedure 0x401f6d
	.globl sub_401f6d
	.type sub_401f6d, @function
sub_401f6d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401f70
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
	#Procedure 0x401f80

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_77
	test	rdx, rdx
	je	.label_77
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_77:
	push	rax
	call	abort
	.section	.text
	.align	32
	#Procedure 0x401fab
	.globl sub_401fab
	.type sub_401fab, @function
sub_401fab:

	nop	dword ptr [rax + rax]
.label_79:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_78
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x401fbb
	.globl sub_401fbb
	.type sub_401fbb, @function
sub_401fbb:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401fc5
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_79
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_79
.label_78:
	ret	
	.section	.text
	.align	32
	#Procedure 0x401fe0

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
	mov	rcx,  qword ptr [word ptr [rip + label_80]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_81]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_82]]
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
	.align	32
	#Procedure 0x40204d
	.globl sub_40204d
	.type sub_40204d, @function
sub_40204d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402050

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	mov	eax, esi
	mov	rsi, -1
	mov	edx, eax
	jmp	quotearg_char_mem
	.section	.text
	.align	32
	#Procedure 0x40205d
	.globl sub_40205d
	.type sub_40205d, @function
sub_40205d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402060

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	.section	.text
	.align	32
	#Procedure 0x402067
	.globl sub_402067
	.type sub_402067, @function
sub_402067:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402070

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
	jne	.label_83
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_83
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_84
.label_83:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_84:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_85
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_85:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4020de
	.globl sub_4020de
	.type sub_4020de, @function
sub_4020de:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4020e0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_86
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_87
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_89
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_90
	mov	ecx, OFFSET FLAT:label_91
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_88
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	32
	#Procedure 0x402154
	.globl sub_402154
	.type sub_402154, @function
sub_402154:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402160

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
	je	.label_92
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_94
	jmp	.label_93
.label_92:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_93
.label_94:
	mov	eax, 1
	test	bpl, bpl
	je	.label_93
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
.label_93:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4021dd
	.globl sub_4021dd
	.type sub_4021dd, @function
sub_4021dd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4021e0

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
	.align	32
	#Procedure 0x402219
	.globl sub_402219
	.type sub_402219, @function
sub_402219:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402220
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
	.align	32
	#Procedure 0x402231
	.globl sub_402231
	.type sub_402231, @function
sub_402231:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402240
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
	.align	32
	#Procedure 0x402254
	.globl sub_402254
	.type sub_402254, @function
sub_402254:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402260
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	add	edi, -0x21
	cmp	edi, 0x5d
	ja	.label_95
	mov	al, 1
	jmp	qword ptr [word ptr [+ (rdi * 8) + label_97]]
.label_95:
	xor	eax, eax
	jmp	.label_96
	.section	.text
	.align	32
	#Procedure 0x402275
	.globl sub_402275
	.type sub_402275, @function
sub_402275:

	nop	word ptr cs:[rax + rax]
.label_96:
	ret	
	.section	.text
	.align	32
	#Procedure 0x402280
	.globl set_quoting_style
	.type set_quoting_style, @function
set_quoting_style:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], esi
	ret	
	.section	.text
	.align	32
	#Procedure 0x40228f
	.globl sub_40228f
	.type sub_40228f, @function
sub_40228f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402290
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	add	edi, -0x20
	cmp	edi, 0x5f
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x40229a
	.globl sub_40229a
	.type sub_40229a, @function
sub_40229a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4022a0

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x4022ae
	.globl sub_4022ae
	.type sub_4022ae, @function
sub_4022ae:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4022b0

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
	js	.label_101
	mov	eax, dword ptr [r13]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_104
	cmp	r12d, 0x7fffffff
	je	.label_99
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
	jne	.label_102
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_102:
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
.label_104:
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
	jbe	.label_100
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_103
.label_100:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_98
	mov	rdi, r14
	call	free
.label_98:
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
.label_103:
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
.label_101:
	call	abort
.label_99:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40246d
	.globl sub_40246d
	.type sub_40246d, @function
sub_40246d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402470
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x402478
	.globl sub_402478
	.type sub_402478, @function
sub_402478:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402480

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:label_105
	nop	
.label_116:
	mov	edi, OFFSET FLAT:label_107
	call	strcmp
	test	eax, eax
	je	.label_114
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_116
.label_114:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:label_107
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_108
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_90
	mov	ecx, OFFSET FLAT:label_91
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_106
	mov	esi, OFFSET FLAT:label_112
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_106
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_113
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_106:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_109
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:label_107
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_91
	mov	ecx, OFFSET FLAT:label_107
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_115
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:label_110
	mov	ecx, OFFSET FLAT:label_111
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
	.align	32
	#Procedure 0x40259a
	.globl sub_40259a
	.type sub_40259a, @function
sub_40259a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4025a0

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	.section	.text
	.align	32
	#Procedure 0x4025a5
	.globl sub_4025a5
	.type sub_4025a5, @function
sub_4025a5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4025b0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_117
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_117:
	push	rax
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4025d3
	.globl sub_4025d3
	.type sub_4025d3, @function
sub_4025d3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4025e0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_118
	test	rax, rax
	je	.label_119
.label_118:
	pop	rbx
	ret	
.label_119:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4025fa
	.globl sub_4025fa
	.type sub_4025fa, @function
sub_4025fa:

	nop	word ptr [rax + rax]
.label_120:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x402603
	.globl sub_402603
	.type sub_402603, @function
sub_402603:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402605
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_120
	movabs	rax, 0x7e0000007e03ff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_123:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_121
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
	.align	32
	#Procedure 0x402658
	.globl sub_402658
	.type sub_402658, @function
sub_402658:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402665

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_123
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_126
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_122
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_124
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_127
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_125
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_107
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	call	emit_ancillary_info
	mov	edi, ebp
	call	exit
	.section	.text
	.align	32
	#Procedure 0x402730
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	.section	.text
	.align	32
	#Procedure 0x402738
	.globl sub_402738
	.type sub_402738, @function
sub_402738:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402740
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_128
	call	rpl_calloc
	test	rax, rax
	je	.label_128
	pop	rcx
	ret	
.label_128:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402766
	.globl sub_402766
	.type sub_402766, @function
sub_402766:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402770

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x40277a
	.globl sub_40277a
	.type sub_40277a, @function
sub_40277a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402780
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
	#Procedure 0x402790

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	.section	.text
	.align	32
	#Procedure 0x402799
	.globl sub_402799
	.type sub_402799, @function
sub_402799:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4027a0
	.globl quote
	.type quote, @function
quote:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quote_n
	.section	.text
	.align	32
	#Procedure 0x4027aa
	.globl sub_4027aa
	.type sub_4027aa, @function
sub_4027aa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4027b0

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	.section	.text
	.align	32
	#Procedure 0x4027b9
	.globl sub_4027b9
	.type sub_4027b9, @function
sub_4027b9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4027c0

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
	mov	rax,  qword ptr [word ptr [rip + label_80]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_81]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_82]]
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
	.align	32
	#Procedure 0x402828
	.globl sub_402828
	.type sub_402828, @function
sub_402828:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402830
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
	.align	32
	#Procedure 0x402849
	.globl sub_402849
	.type sub_402849, @function
sub_402849:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402850
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	lea	ecx, [rdi - 0x61]
	lea	eax, [rdi - 0x20]
	cmp	ecx, 0x1a
	cmovae	eax, edi
	ret	
	.section	.text
	.align	32
	#Procedure 0x40285d
	.globl sub_40285d
	.type sub_40285d, @function
sub_40285d:

	nop	dword ptr [rax]
.label_133:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:label_129
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	32
	#Procedure 0x402880
	.globl sub_402880
	.type sub_402880, @function
sub_402880:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40288f

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_133
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_131
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_134
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_131
	mov	esi, OFFSET FLAT:label_132
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_130
	add	r14, 3
	mov	qword ptr [word ptr [rip + __progname]],  r14
.label_130:
	mov	rbx, r14
.label_131:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x402910
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_135
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_137:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_137
.label_135:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_138
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_139]], OFFSET FLAT:slot0
.label_138:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_136
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_136:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x4029a1
	.globl sub_4029a1
	.type sub_4029a1, @function
sub_4029a1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4029b0
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
	.align	32
	#Procedure 0x4029d7
	.globl sub_4029d7
	.type sub_4029d7, @function
sub_4029d7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4029e0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	.section	.text
	.align	32
	#Procedure 0x4029ea
	.globl sub_4029ea
	.type sub_4029ea, @function
sub_4029ea:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4029f0
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_140
	mov	eax, 0x80001f
	mov	ecx, edi
	shr	eax, cl
	and	eax, 1
	ret	
.label_140:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x402a08
	.globl sub_402a08
	.type sub_402a08, @function
sub_402a08:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402a10
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
	.align	32
	#Procedure 0x402a43
	.globl sub_402a43
	.type sub_402a43, @function
sub_402a43:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402a50

	.globl initialize_exit_failure
	.type initialize_exit_failure, @function
initialize_exit_failure:
	mov	dword ptr [dword ptr [rip + exit_failure]],  2
	ret	
	.section	.text
	.align	32
	#Procedure 0x402a5b
	.globl sub_402a5b
	.type sub_402a5b, @function
sub_402a5b:

	nop	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402a60
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	add	edi, -0x30
	cmp	edi, 0xa
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x402a6a
	.globl sub_402a6a
	.type sub_402a6a, @function
sub_402a6a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402a70
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	add	edi, -0x21
	cmp	edi, 0x5e
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x402a7a
	.globl sub_402a7a
	.type sub_402a7a, @function
sub_402a7a:

	nop	word ptr [rax + rax]
.label_145:
	test	rcx, rcx
	jne	.label_141
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	xor	ecx, ecx
	cmp	r8, 0x80
	seta	cl
	add	rcx, rax
.label_141:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_142
.label_144:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
.label_142:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402ac7
	.globl sub_402ac7
	.type sub_402ac7, @function
sub_402ac7:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402ace

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_145
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_143
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_144
.label_143:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402b00
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
	.align	32
	#Procedure 0x402b0f
	.globl sub_402b0f
	.type sub_402b0f, @function
sub_402b0f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402b10
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
	.align	32
	#Procedure 0x402b26
	.globl sub_402b26
	.type sub_402b26, @function
sub_402b26:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402b30

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
.label_251:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_254
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_232]]
.label_355:
	mov	r14d, r10d
	mov	edi, OFFSET FLAT:label_146
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_10
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10d, r14d
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_356:
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_161
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_161
	xor	r14d, r14d
.label_175:
	cmp	r14, r11
	jae	.label_171
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_171:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_175
.label_161:
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
	jmp	.label_189
.label_348:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_189
.label_351:
	mov	al, 1
.label_349:
	mov	r12b, 1
.label_352:
	test	r12b, 1
	mov	cl, 1
	je	.label_195
	mov	ecx, eax
.label_195:
	mov	al, cl
.label_350:
	test	r12b, 1
	jne	.label_197
	test	r11, r11
	je	.label_213
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_213:
	mov	r14d, 1
	jmp	.label_202
.label_197:
	xor	r14d, r14d
.label_202:
	mov	ecx, OFFSET FLAT:label_10
	mov	qword ptr [rsp + 0x40], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x38], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_189
.label_353:
	test	r12b, 1
	jne	.label_210
	test	r11, r11
	je	.label_212
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_212:
	mov	r14d, 1
	jmp	.label_215
.label_354:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_9
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	sil, 1
	jmp	.label_189
.label_210:
	xor	r14d, r14d
.label_215:
	mov	eax, OFFSET FLAT:label_9
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_189:
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
	jmp	.label_233
	.section	.text
	.align	32
	#Procedure 0x402e0c
	.globl sub_402e0c
	.type sub_402e0c, @function
sub_402e0c:

	nop	dword ptr [rax]
.label_172:
	inc	rsi
.label_233:
	cmp	rbp, -1
	je	.label_150
	cmp	rsi, rbp
	jne	.label_152
	jmp	.label_154
	.section	.text
	.align	32
	#Procedure 0x402e23
	.globl sub_402e23
	.type sub_402e23, @function
sub_402e23:

	nop	word ptr cs:[rax + rax]
.label_150:
	cmp	byte ptr [rdi + rsi], 0
	je	.label_154
.label_152:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_164
	mov	rax, qword ptr [rsp + 0x38]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_166
	cmp	rbp, -1
	jne	.label_166
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
.label_166:
	cmp	rbx, rbp
	jbe	.label_178
.label_164:
	xor	r8d, r8d
.label_184:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_180
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_246]]
.label_380:
	test	rsi, rsi
	jne	.label_177
	jmp	.label_190
	.section	.text
	.align	32
	#Procedure 0x402ebe
	.globl sub_402ebe
	.type sub_402ebe, @function
sub_402ebe:

	nop	
.label_178:
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
	jne	.label_201
	cmp	byte ptr [rsp + 7], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_184
	jmp	.label_188
.label_201:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_184
.label_384:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_220
	test	rsi, rsi
	jne	.label_222
	cmp	rbp, 1
	je	.label_190
	xor	r13d, r13d
	jmp	.label_156
.label_373:
	cmp	byte ptr [rsp + 0x1e], 0
	je	.label_227
	cmp	byte ptr [rsp + 7], 0
	jne	.label_173
	cmp	r12d, 2
	jne	.label_207
	mov	eax, r9d
	and	al, 1
	jne	.label_207
	cmp	r14, r11
	jae	.label_218
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_218:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_239
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_239:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_245
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_245:
	add	r14, 3
	mov	r9b, 1
.label_207:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_250
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_250:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_253
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_253
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_253
	cmp	r14, r11
	jae	.label_147
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_147:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_229
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_229:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_156
.label_374:
	mov	bl, 0x62
	jmp	.label_159
.label_375:
	mov	cl, 0x74
	jmp	.label_163
.label_376:
	mov	bl, 0x76
	jmp	.label_159
.label_377:
	mov	bl, 0x66
	jmp	.label_159
.label_378:
	mov	cl, 0x72
	jmp	.label_163
.label_381:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_170
	cmp	byte ptr [rsp + 7], 0
	jne	.label_173
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
	jae	.label_176
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_176:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_187
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_187:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_191
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_191:
	add	r14, 3
	xor	r9d, r9d
.label_170:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_156
.label_382:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_200
	cmp	r12d, 2
	jne	.label_177
	cmp	byte ptr [rsp + 7], 0
	je	.label_177
	jmp	.label_173
.label_383:
	cmp	r12d, 2
	jne	.label_208
	cmp	byte ptr [rsp + 7], 0
	jne	.label_173
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_160
.label_180:
	mov	dword ptr [rsp + 0x4c], r8d
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xb0], 1
	jne	.label_155
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
.label_169:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2b]
	mov	qword ptr [rsp + 0x58], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 0x17]
	mov	r12, qword ptr [rsp + 0x68]
	mov	r9d, dword ptr [rsp + 0x48]
	ja	.label_231
	test	r8b, r8b
	je	.label_231
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x4c]
	jmp	.label_156
.label_220:
	test	rsi, rsi
	jne	.label_179
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_179
.label_190:
	mov	dl, 1
.label_379:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_173
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_156:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_256
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_257
	jmp	.label_148
	.section	.text
	.align	32
	#Procedure 0x403204
	.globl sub_403204
	.type sub_403204, @function
sub_403204:

	nop	word ptr cs:[rax + rax]
.label_256:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_148
.label_257:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_151
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_160
	jmp	.label_167
	.section	.text
	.align	32
	#Procedure 0x40324d
	.globl sub_40324d
	.type sub_40324d, @function
sub_40324d:

	nop	dword ptr [rax]
.label_148:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_167
	jmp	.label_160
.label_151:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_167
.label_227:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_172
	xor	r15d, r15d
	jmp	.label_177
.label_208:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x2a], 0
	je	.label_163
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_160
.label_163:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_173
.label_159:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1e], 0
	mov	r13d, 0
	je	.label_156
	nop	word ptr cs:[rax + rax]
.label_167:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_173
	cmp	r12d, 2
	jne	.label_153
	mov	eax, r9d
	and	al, 1
	jne	.label_153
	cmp	r14, r11
	jae	.label_198
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_198:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_230
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_230:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_205
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_205:
	add	r14, 3
	mov	r9b, 1
.label_153:
	cmp	r14, r11
	jae	.label_209
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_209:
	inc	r14
	jmp	.label_194
.label_155:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_217
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_217:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x58], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x50], rsi
.label_219:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_237
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_241
	cmp	rbp, -2
	je	.label_149
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2c]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_248
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_157:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_252
	bt	rsi, rdx
	jb	.label_188
.label_252:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_157
.label_248:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_235
	xor	r13d, r13d
.label_235:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x50]
	je	.label_219
	jmp	.label_169
.label_253:
	xor	r13d, r13d
	jmp	.label_156
.label_179:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_156
.label_200:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_177
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_177
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_177
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_181
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_168
	cmp	byte ptr [rsp + 7], 0
	jne	.label_173
	mov	r15b, byte ptr [rdi + rcx]
	cmp	r14, r11
	jae	.label_192
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_192:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_185
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_185:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_228
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_228:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_204
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x3f
.label_204:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r13d, r13d
	jmp	.label_156
.label_177:
	xor	eax, eax
.label_222:
	xor	r13d, r13d
	jmp	.label_156
.label_231:
	add	qword ptr [rsp + 0x58], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_214
	.section	.text
	.align	32
	#Procedure 0x403533
	.globl sub_403533
	.type sub_403533, @function
sub_403533:

	nop	word ptr cs:[rax + rax]
.label_174:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_214:
	test	r8b, r8b
	je	.label_223
	mov	ecx, dword ptr [rsp + 0x4c]
	test	cl, 1
	je	.label_224
	cmp	r14, r11
	jae	.label_225
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_225:
	inc	r14
	mov	dword ptr [rsp + 0x4c], 0
	jmp	.label_224
	.section	.text
	.align	32
	#Procedure 0x40357c
	.globl sub_40357c
	.type sub_40357c, @function
sub_40357c:

	nop	dword ptr [rax]
.label_223:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_188
	cmp	r12d, 2
	jne	.label_236
	mov	eax, r9d
	and	al, 1
	jne	.label_236
	cmp	r14, r11
	jae	.label_240
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_240:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_244
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_244:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_249
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_249:
	add	r14, 3
	mov	r9b, 1
.label_236:
	cmp	r14, r11
	jae	.label_203
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_203:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_221
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_221:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_258
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_258:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_224:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x58], rdx
	jbe	.label_160
	test	r9b, 1
	je	.label_162
	mov	ebx, eax
	and	bl, 1
	jne	.label_162
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_165
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_165:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_211
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_211:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_162:
	cmp	r14, r11
	jae	.label_174
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_174
	.section	.text
	.align	32
	#Procedure 0x403683
	.globl sub_403683
	.type sub_403683, @function
sub_403683:

	nop	word ptr cs:[rax + rax]
.label_160:
	test	r9b, 1
	je	.label_182
	and	al, 1
	jne	.label_182
	cmp	r14, r11
	jae	.label_242
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_242:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_216
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_216:
	add	r14, 2
	xor	r9d, r9d
.label_182:
	mov	ebx, r15d
.label_194:
	cmp	r14, r11
	jae	.label_193
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_193:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_172
.label_241:
	xor	r13d, r13d
.label_237:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_169
.label_149:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbx, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	jae	.label_206
	mov	rsi, qword ptr [rsp + 0x50]
.label_186:
	mov	rax, qword ptr [rsp + 0x58]
	cmp	byte ptr [rax + r12], 0
	je	.label_238
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_186
	xor	r13d, r13d
	jmp	.label_169
.label_206:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_169
.label_238:
	xor	r13d, r13d
	jmp	.label_169
.label_181:
	xor	r13d, r13d
	jmp	.label_156
.label_168:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_156
	.section	.text
	.align	32
	#Procedure 0x403758
	.globl sub_403758
	.type sub_403758, @function
sub_403758:

	nop	dword ptr [rax + rax]
.label_154:
	test	r14, r14
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0xa8]
	and	cl, 1
	mov	qword ptr [rsp + 0x20], rbp
	je	.label_226
	or	dl, al
	je	.label_188
.label_226:
	test	cl, cl
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x1d]
	mov	rsi, qword ptr [rsp + 0xa8]
	je	.label_234
	or	dl, al
	jne	.label_234
	test	r10b, 1
	jne	.label_247
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_234
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x60]
	je	.label_251
.label_234:
	mov	rdx, qword ptr [rsp + 0x40]
	test	rdx, rdx
	je	.label_255
	test	cl, cl
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_158
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_158
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_183:
	cmp	r14, r11
	jae	.label_243
	mov	byte ptr [rcx + r14], al
.label_243:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_183
	jmp	.label_158
.label_173:
	mov	qword ptr [rsp + 0x20], rbp
.label_188:
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
.label_196:
	mov	r14, rax
.label_199:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_247:
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
	jmp	.label_196
.label_255:
	mov	rcx, qword ptr [rsp + 8]
.label_158:
	cmp	r14, r11
	jae	.label_199
	mov	byte ptr [rcx + r14], 0
	jmp	.label_199
.label_254:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4038ec
	.globl sub_4038ec
	.type sub_4038ec, @function
sub_4038ec:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4038f0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_260
	cmp	byte ptr [rax], 0x43
	jne	.label_262
	cmp	byte ptr [rax + 1], 0
	je	.label_259
.label_262:
	mov	esi, OFFSET FLAT:label_261
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_260
.label_259:
	xor	ebx, ebx
.label_260:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x403921
	.globl sub_403921
	.type sub_403921, @function
sub_403921:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403930

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_111
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_263
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x403955
	.globl sub_403955
	.type sub_403955, @function
sub_403955:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403960
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
	.align	32
	#Procedure 0x403973
	.globl sub_403973
	.type sub_403973, @function
sub_403973:

	nop	word ptr cs:[rax + rax]
.label_264:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	.section	.text
	.align	32
	#Procedure 0x40398e
	.globl sub_40398e
	.type sub_40398e, @function
sub_40398e:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403997

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_264
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_266
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_264
.label_266:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_264
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_265
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_265:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403a00
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_267:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_267
	jmp	version_etc_arn
	.section	.text
	.align	32
	#Procedure 0x403a21
	.globl sub_403a21
	.type sub_403a21, @function
sub_403a21:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403a30
	.globl c_islower
	.type c_islower, @function
c_islower:

	add	edi, -0x61
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x403a3a
	.globl sub_403a3a
	.type sub_403a3a, @function
sub_403a3a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403a40

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_268
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_268:
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
	.align	32
	#Procedure 0x403ac3
	.globl sub_403ac3
	.type sub_403ac3, @function
sub_403ac3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403ad0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	jmp	x2nrealloc
	.section	.text
	.align	32
	#Procedure 0x403ada
	.globl sub_403ada
	.type sub_403ada, @function
sub_403ada:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403ae0

	.globl c_isupper
	.type c_isupper, @function
c_isupper:
	add	edi, -0x41
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x403aea
	.globl sub_403aea
	.type sub_403aea, @function
sub_403aea:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403af0
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_269
.label_270:
	ret	
.label_269:
	cmp	edi, 0x7f
	je	.label_270
	xor	eax, eax
	jmp	.label_270
	.section	.text
	.align	32
	#Procedure 0x403b01
	.globl sub_403b01
	.type sub_403b01, @function
sub_403b01:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403b10

	.globl rpl_nl_langinfo
	.type rpl_nl_langinfo, @function
rpl_nl_langinfo:
	lea	eax, [rdi - 0x27d8]
	lea	ecx, [rdi + 0x1d842]
	cmp	eax, 0xc
	cmovb	edi, ecx
	jmp	nl_langinfo
	.section	.text
	.align	32
	#Procedure 0x403b27
	.globl sub_403b27
	.type sub_403b27, @function
sub_403b27:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403b30
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	eax, dword ptr [rax]
	ret	
	.section	.text
	.align	32
	#Procedure 0x403b3f
	.globl sub_403b3f
	.type sub_403b3f, @function
sub_403b3f:

	nop	
.label_272:
	mov	ecx, 1
.label_271:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	32
	#Procedure 0x403b50
	.globl sub_403b50
	.type sub_403b50, @function
sub_403b50:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403b55

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_272
	test	rsi, rsi
	mov	ecx, 1
	je	.label_271
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_271
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x403b90

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
	.align	32
	#Procedure 0x403bc6
	.globl sub_403bc6
	.type sub_403bc6, @function
sub_403bc6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403bd0

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r13, rsi
	mov	ebx, edi
	mov	rdi, qword ptr [r13]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_111
	call	setlocale
	mov	edi, OFFSET FLAT:label_273
	mov	esi, OFFSET FLAT:label_294
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_273
	call	textdomain
	call	initialize_exit_failure
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	r15d, 0xa
.label_287:
	mov	edx, OFFSET FLAT:label_279
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, ebx
	mov	rsi, r13
	call	getopt_long
	cmp	eax, 0x2f
	jle	.label_286
	cmp	eax, 0x30
	mov	r15d, 0
	je	.label_287
	jmp	.label_278
.label_286:
	cmp	eax, -1
	jne	.label_288
	movsxd	rbp,  dword ptr [dword ptr [rip + optind]]
	cmp	ebp, ebx
	jge	.label_290
	xor	r14d, r14d
	mov	dword ptr [rsp + 0x14], ebx
	nop	word ptr cs:[rax + rax]
.label_282:
	mov	rdi, qword ptr [r13 + rbp*8]
	mov	esi, 0x3d
	call	strchr
	test	rax, rax
	jne	.label_275
	mov	r12,  qword ptr [word ptr [rip + __environ]]
	mov	rdx, qword ptr [r12]
	xor	esi, esi
	jmp	.label_277
	.section	.text
	.align	32
	#Procedure 0x403ca7
	.globl sub_403ca7
	.type sub_403ca7, @function
sub_403ca7:

	nop	word ptr [rax + rax]
.label_274:
	mov	rdx, qword ptr [r12 + 8]
	add	r12, 8
.label_277:
	test	rdx, rdx
	je	.label_284
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_274
	mov	rcx, qword ptr [r13 + rbp*8]
	inc	rcx
	add	rdx, 2
.label_283:
	movzx	ebx, byte ptr [rcx - 1]
	test	bl, bl
	je	.label_274
	cmp	al, bl
	jne	.label_274
	movzx	eax, byte ptr [rdx - 1]
	cmp	al, 0x3d
	jne	.label_289
	cmp	byte ptr [rcx], 0
	je	.label_292
	movzx	eax, byte ptr [rdx - 1]
.label_289:
	inc	rcx
	inc	rdx
	test	al, al
	jne	.label_283
	jmp	.label_274
.label_292:
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_291
	xor	eax, eax
	mov	ecx, r15d
	call	__printf_chk
	mov	sil, 1
	jmp	.label_274
	.section	.text
	.align	32
	#Procedure 0x403d12
	.globl sub_403d12
	.type sub_403d12, @function
sub_403d12:

	nop	word ptr cs:[rax + rax]
.label_284:
	and	sil, 1
	movzx	eax, sil
	add	r14d, eax
	mov	ebx, dword ptr [rsp + 0x14]
.label_275:
	inc	rbp
	cmp	ebp, ebx
	jne	.label_282
	sub	ebx,  dword ptr [dword ptr [rip + optind]]
	cmp	r14d, ebx
	sete	bl
	jmp	.label_285
.label_290:
	mov	rbp,  qword ptr [word ptr [rip + __environ]]
	mov	rdx, qword ptr [rbp]
	mov	bl, 1
	test	rdx, rdx
	je	.label_285
	add	rbp, 8
	nop	
.label_293:
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_291
	xor	eax, eax
	mov	ecx, r15d
	call	__printf_chk
	mov	rdx, qword ptr [rbp]
	add	rbp, 8
	test	rdx, rdx
	jne	.label_293
.label_285:
	movzx	eax, bl
	xor	eax, 1
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_288:
	cmp	eax, 0xffffff7d
	je	.label_276
	cmp	eax, 0xffffff7e
	jne	.label_278
	xor	edi, edi
	call	usage
.label_276:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	qword ptr [rsp], 0
	mov	esi, OFFSET FLAT:label_107
	mov	edx, OFFSET FLAT:label_90
	mov	r8d, OFFSET FLAT:label_280
	mov	r9d, OFFSET FLAT:label_281
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_278:
	mov	edi, 2
	call	usage
	.section	.text
	.align	32
	#Procedure 0x403def
	.globl sub_403def
	.type sub_403def, @function
sub_403def:

	nop	
.label_295:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	.section	.text
	.align	32
	#Procedure 0x403dfc
	.globl sub_403dfc
	.type sub_403dfc, @function
sub_403dfc:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403e09

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_295
	ret	
.label_296:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_298:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_299
	inc	r9
	cmp	r9, 0xa
	jb	.label_297
.label_299:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	32
	#Procedure 0x403e3f
	.globl sub_403e3f
	.type sub_403e3f, @function
sub_403e3f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x403e40

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_297:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_296
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_298
	.section	.text
	.align	32
	#Procedure 0x403e69
	.globl sub_403e69
	.type sub_403e69, @function
sub_403e69:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403e70
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_300
	movabs	rax, 0x3ffffff03ffffff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_300:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x403e8e
	.globl sub_403e8e
	.type sub_403e8e, @function
sub_403e8e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x403e90

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
	.align	32
	#Procedure 0x403ebd
	.globl sub_403ebd
	.type sub_403ebd, @function
sub_403ebd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403ec0
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
	.align	32
	#Procedure 0x403ed3
	.globl sub_403ed3
	.type sub_403ed3, @function
sub_403ed3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403ee0
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
	.align	32
	#Procedure 0x403f52
	.globl sub_403f52
	.type sub_403f52, @function
sub_403f52:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403fc5
	.globl sub_403fc5
	.type sub_403fc5, @function
sub_403fc5:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403fd2
	.globl sub_403fd2
	.type sub_403fd2, @function
sub_403fd2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403ff6
	.globl sub_403ff6
	.type sub_403ff6, @function
sub_403ff6:

	nop	word ptr cs:[rax + rax]
