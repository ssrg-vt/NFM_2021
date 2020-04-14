	.section	.text
	.align	16
	#Procedure 0x401759
	.globl sub_401759
	.type sub_401759, @function
sub_401759:

	hlt	
	.section	.text
	.align	16
	#Procedure 0x40175a
	.globl sub_40175a
	.type sub_40175a, @function
sub_40175a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401792
	.globl sub_401792
	.type sub_401792, @function
sub_401792:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4017da
	.globl sub_4017da
	.type sub_4017da, @function
sub_4017da:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4017fc
	.globl sub_4017fc
	.type sub_4017fc, @function
sub_4017fc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40180d
	.globl sub_40180d
	.type sub_40180d, @function
sub_40180d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401826
	.globl sub_401826
	.type sub_401826, @function
sub_401826:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401830

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_9
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_11
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_9
.label_11:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_9
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_10
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_10:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_9:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	.section	.text
	.align	16
	#Procedure 0x4018a4
	.globl sub_4018a4
	.type sub_4018a4, @function
sub_4018a4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4018b0
	.globl quotearg_mem
	.type quotearg_mem, @function
quotearg_mem:

	mov	rax, rsi
	mov	rdx, rdi
	xor	edi, edi
	mov	ecx, OFFSET FLAT:default_quoting_options
	mov	rsi, rdx
	mov	rdx, rax
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x4018c8
	.globl sub_4018c8
	.type sub_4018c8, @function
sub_4018c8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4018d0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_12
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_13
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4018f5
	.globl sub_4018f5
	.type sub_4018f5, @function
sub_4018f5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401900
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
	call	xmalloc
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
	je	.label_14
	mov	qword ptr [rax], rbx
.label_14:
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
	#Procedure 0x4019ec
	.globl sub_4019ec
	.type sub_4019ec, @function
sub_4019ec:

	nop	dword ptr [rax]
.label_19:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_15
	mov	eax, OFFSET FLAT:label_16
	jmp	.label_17
	.section	.text
	.align	16
	#Procedure 0x4019ff
	.globl sub_4019ff
	.type sub_4019ff, @function
sub_4019ff:

	nop	word ptr cs:[rax + rax]
.label_24:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_18
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_18
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_18
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_18
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_18
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_18
	cmp	byte ptr [rax + 7], 0
	je	.label_19
.label_18:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_20
	mov	eax, OFFSET FLAT:label_21
.label_17:
	cmove	rax, rcx
.label_25:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401a52

	.globl gettext_quote
	.type gettext_quote, @function
gettext_quote:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, esi
	mov	rbx, rdi
	xor	edi, edi
	mov	edx, 5
	mov	rsi, rbx
	call	dcgettext
	cmp	rax, rbx
	jne	.label_25
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_24
	cmp	ecx, 0x55
	jne	.label_18
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_18
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_18
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_18
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_18
	cmp	byte ptr [rax + 5], 0
	jne	.label_18
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_22
	mov	eax, OFFSET FLAT:label_23
	jmp	.label_17
	.section	.text
	.align	16
	#Procedure 0x401ac0
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_26]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_27]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_28]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_29
	test	rdx, rdx
	je	.label_29
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_29:
	call	abort
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
	je	.label_30
	cmp	r15, -2
	jb	.label_30
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_30
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_30:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x401b86
	.globl sub_401b86
	.type sub_401b86, @function
sub_401b86:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401b90

	.globl freadptr
	.type freadptr, @function
freadptr:
	mov	rcx, qword ptr [rdi + 0x28]
	xor	eax, eax
	cmp	rcx, qword ptr [rdi + 0x20]
	ja	.label_31
	mov	rcx, qword ptr [rdi + 8]
	mov	rdx, qword ptr [rdi + 0x10]
	xor	eax, eax
	sub	rdx, rcx
	je	.label_31
	mov	qword ptr [rsi], rdx
	mov	rax, rcx
.label_31:
	ret	
	.section	.text
	.align	16
	#Procedure 0x401bb2
	.globl sub_401bb2
	.type sub_401bb2, @function
sub_401bb2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401bc0
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_26]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_27]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_28]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	edx, ecx
	shr	dl, 5
	movzx	edx, dl
	mov	esi, dword ptr [rsp + rdx*4 + 8]
	mov	edi, esi
	shr	edi, cl
	not	edi
	and	edi, 1
	shl	edi, cl
	xor	edi, esi
	mov	dword ptr [rsp + rdx*4 + 8], edi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	.section	.text
	.align	16
	#Procedure 0x401c2f
	.globl sub_401c2f
	.type sub_401c2f, @function
sub_401c2f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401c30
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x401c3a
	.globl sub_401c3a
	.type sub_401c3a, @function
sub_401c3a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401c40
	.globl quotearg_n_style
	.type quotearg_n_style, @function
quotearg_n_style:

	sub	rsp, 0x78
	mov	rax, rdx
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x30], 0
	cmp	esi, 0xa
	je	.label_32
	mov	dword ptr [rsp + 0x40], esi
	mov	ecx, dword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x74], ecx
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rsp + 0x64], xmm2
	movups	xmmword ptr [rsp + 0x54], xmm1
	movups	xmmword ptr [rsp + 0x44], xmm0
	lea	rcx, [rsp + 0x40]
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_32:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x401cac
	.globl sub_401cac
	.type sub_401cac, @function
sub_401cac:

	nop	dword ptr [rax]
.label_34:
	mov	ecx, 1
.label_33:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	16
	#Procedure 0x401cc0
	.globl sub_401cc0
	.type sub_401cc0, @function
sub_401cc0:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401cc5

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_34
	test	rsi, rsi
	mov	ecx, 1
	je	.label_33
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_33
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x401d00

	.globl getndelim2
	.type getndelim2, @function
getndelim2:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x58
	mov	dword ptr [rsp + 4], r8d
	mov	rbp, rcx
	mov	r14, rdx
	mov	r15, rsi
	mov	rbx, rdi
	mov	rcx, qword ptr [rbx]
	test	rcx, rcx
	je	.label_35
	mov	r13, qword ptr [r15]
	jmp	.label_47
.label_35:
	cmp	rbp, 0x40
	mov	r13d, 0x40
	cmovb	r13, rbp
	mov	rdi, r13
	mov	r12d, r9d
	call	malloc
	mov	r9d, r12d
	mov	rcx, rax
	mov	rax, -1
	test	rcx, rcx
	je	.label_58
.label_47:
	mov	qword ptr [rsp + 0x28], rbp
	mov	qword ptr [rsp + 0x18], rcx
	mov	qword ptr [rsp + 0x48], rbx
	mov	r12, r13
	sub	r12, r14
	mov	qword ptr [rsp + 0x50], r15
	jb	.label_63
	cmp	r13, qword ptr [rsp + 0x28]
	jb	.label_71
	test	r12, r12
	jne	.label_71
.label_63:
	mov	qword ptr [rsp + 0x38], -1
.label_55:
	mov	qword ptr [rsp + 0x10], r13
.label_52:
	mov	rax, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rsp + 0x48]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rsp + 0x50]
	mov	rcx, qword ptr [rsp + 0x10]
	mov	qword ptr [rax], rcx
	mov	rbx, qword ptr [rsp + 0x38]
	cmp	rbx, 1
	sbb	rax, rax
	or	rax, rbx
.label_58:
	add	rsp, 0x58
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_71:
	mov	qword ptr [rsp + 0x38], -1
	mov	rbp, qword ptr [rsp + 0x90]
	mov	rax, qword ptr [rsp + 0x18]
	mov	rcx, r14
	lea	r14, [rax + rcx]
	cmp	r9d, -1
	mov	eax, r9d
	mov	edx, dword ptr [rsp + 4]
	cmove	eax, edx
	cmp	edx, -1
	cmove	eax, r9d
	mov	dword ptr [rsp + 0x24], eax
	cmove	edx, r9d
	movabs	rax, 0x8000000000000000
	mov	qword ptr [rsp + 0x40], rcx
	xor	rax, rcx
	mov	qword ptr [rsp + 0x10], rax
	mov	ebx, edx
	cmp	edx, -1
	je	.label_44
	mov	dword ptr [rsp + 4], 0
	mov	dword ptr [rsp + 0x34], eax
	nop	dword ptr [rax]
.label_50:
	mov	rdi, rbp
	lea	rsi, [rsp + 8]
	call	freadptr
	mov	r15, rax
	test	r15, r15
	je	.label_56
	mov	rbp, qword ptr [rsp + 8]
	mov	rdi, r15
	mov	esi, ebx
	mov	edx, dword ptr [rsp + 0x24]
	mov	rcx, rbp
	call	memchr2
	test	rax, rax
	je	.label_65
	mov	ebp, 1
	sub	rbp, r15
	add	rbp, rax
	mov	qword ptr [rsp + 8], rbp
	mov	al, 1
	jmp	.label_66
	.section	.text
	.align	16
	#Procedure 0x401e74
	.globl sub_401e74
	.type sub_401e74, @function
sub_401e74:

	nop	word ptr cs:[rax + rax]
.label_56:
	mov	rax, qword ptr [rbp + 8]
	cmp	rax, qword ptr [rbp + 0x10]
	jae	.label_36
	lea	rcx, [rax + 1]
	mov	qword ptr [rbp + 8], rcx
	movzx	eax, byte ptr [rax]
.label_60:
	cmp	eax, dword ptr [rsp + 0x24]
	mov	dl, 1
	mov	cl, 1
	je	.label_43
	mov	ecx, dword ptr [rsp + 4]
.label_43:
	mov	dword ptr [rsp + 0x34], eax
	cmp	eax, ebx
	je	.label_69
	mov	edx, ecx
.label_69:
	mov	qword ptr [rsp + 8], 1
	mov	ebp, 1
	mov	al, dl
.label_66:
	mov	dword ptr [rsp + 4], eax
.label_65:
	cmp	r13, qword ptr [rsp + 0x28]
	jae	.label_41
	lea	rax, [rbp + 1]
	cmp	r12, rax
	jae	.label_41
	lea	rcx, [r13 + 0x40]
	lea	rdx, [r13 + r13]
	cmp	r13, 0x40
	cmovb	rdx, rcx
	mov	r12, qword ptr [rsp + 0x18]
	sub	r14, r12
	mov	rcx, rdx
	sub	rcx, r14
	cmp	rcx, rax
	lea	rax, [r14 + rbp + 1]
	cmovae	rax, rdx
	mov	rcx, qword ptr [rsp + 0x28]
	cmp	rax, rcx
	mov	rbp, rax
	cmova	rbp, rcx
	cmp	r13, rax
	cmovae	rbp, rcx
	cmp	rbp, qword ptr [rsp + 0x40]
	jns	.label_42
	mov	rax, qword ptr [rsp + 0x10]
	cmp	r13, rax
	mov	rbp, rax
	je	.label_52
.label_42:
	mov	rdi, r12
	mov	rsi, rbp
	call	realloc
	test	rax, rax
	je	.label_46
	mov	r12, rbp
	sub	r12, r14
	add	r14, rax
	mov	qword ptr [rsp + 0x18], rax
	mov	r13, rbp
.label_41:
	cmp	r12, 2
	jb	.label_39
	lea	rbp, [r12 - 1]
	mov	rax, qword ptr [rsp + 8]
	cmp	rax, rbp
	cmovb	rbp, rax
	test	r15, r15
	je	.label_51
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, rbp
	call	memcpy
	jmp	.label_45
.label_51:
	mov	eax, dword ptr [rsp + 0x34]
	mov	byte ptr [r14], al
.label_45:
	add	r14, rbp
	sub	r12, rbp
.label_39:
	mov	rbp, qword ptr [rsp + 0x90]
	test	r15, r15
	je	.label_67
	mov	rsi, qword ptr [rsp + 8]
	mov	rdi, rbp
	call	freadseek
	test	eax, eax
	jne	.label_55
.label_67:
	mov	eax, dword ptr [rsp + 4]
	test	al, 1
	je	.label_50
	jmp	.label_38
.label_36:
	mov	rdi, rbp
	call	__uflow
	cmp	eax, -1
	jne	.label_60
	jmp	.label_62
.label_44:
	mov	dword ptr [rsp + 4], 0
	nop	word ptr cs:[rax + rax]
.label_57:
	mov	rdi, rbp
	lea	rsi, [rsp + 8]
	call	freadptr
	mov	r15, rax
	test	r15, r15
	je	.label_72
	mov	rax, qword ptr [rsp + 8]
	jmp	.label_37
	.section	.text
	.align	16
	#Procedure 0x40200c
	.globl sub_40200c
	.type sub_40200c, @function
sub_40200c:

	nop	dword ptr [rax]
.label_72:
	mov	rax, qword ptr [rbp + 8]
	cmp	rax, qword ptr [rbp + 0x10]
	jae	.label_40
	lea	rcx, [rax + 1]
	mov	qword ptr [rbp + 8], rcx
	movzx	eax, byte ptr [rax]
.label_64:
	mov	ebx, eax
	cmp	eax, dword ptr [rsp + 0x24]
	mov	cl, 1
	mov	al, 1
	je	.label_48
	mov	eax, dword ptr [rsp + 4]
.label_48:
	cmp	ebx, -1
	je	.label_54
	mov	ecx, eax
.label_54:
	mov	qword ptr [rsp + 8], 1
	mov	eax, 1
	mov	dword ptr [rsp + 4], ecx
.label_37:
	cmp	r13, qword ptr [rsp + 0x28]
	jae	.label_61
	lea	rcx, [rax + 1]
	cmp	r12, rcx
	jae	.label_61
	lea	rdx, [r13 + 0x40]
	lea	rsi, [r13 + r13]
	cmp	r13, 0x40
	cmovb	rsi, rdx
	mov	r12, qword ptr [rsp + 0x18]
	sub	r14, r12
	mov	rdx, rsi
	sub	rdx, r14
	cmp	rdx, rcx
	lea	rax, [r14 + rax + 1]
	cmovae	rax, rsi
	mov	rcx, qword ptr [rsp + 0x28]
	cmp	rax, rcx
	mov	rbp, rax
	cmova	rbp, rcx
	cmp	r13, rax
	cmovae	rbp, rcx
	cmp	rbp, qword ptr [rsp + 0x40]
	jns	.label_68
	mov	rbp, qword ptr [rsp + 0x10]
	cmp	r13, rbp
	je	.label_52
.label_68:
	mov	rdi, r12
	mov	rsi, rbp
	call	realloc
	test	rax, rax
	je	.label_46
	mov	r12, rbp
	sub	r12, r14
	add	r14, rax
	mov	qword ptr [rsp + 0x18], rax
	mov	r13, rbp
	mov	rbp, qword ptr [rsp + 0x90]
.label_61:
	cmp	r12, 2
	jb	.label_70
	lea	rbp, [r12 - 1]
	mov	rax, qword ptr [rsp + 8]
	cmp	rax, rbp
	cmovb	rbp, rax
	test	r15, r15
	je	.label_53
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, rbp
	call	memcpy
	jmp	.label_59
.label_53:
	mov	byte ptr [r14], bl
.label_59:
	add	r14, rbp
	sub	r12, rbp
	mov	rbp, qword ptr [rsp + 0x90]
.label_70:
	test	r15, r15
	je	.label_49
	mov	rsi, qword ptr [rsp + 8]
	mov	rdi, rbp
	call	freadseek
	test	eax, eax
	jne	.label_55
.label_49:
	mov	eax, dword ptr [rsp + 4]
	test	al, 1
	je	.label_57
	jmp	.label_38
.label_40:
	mov	rdi, rbp
	call	__uflow
	cmp	eax, -1
	jne	.label_64
.label_62:
	cmp	r14, qword ptr [rsp + 0x18]
	mov	qword ptr [rsp + 0x10], r13
	je	.label_52
.label_38:
	mov	byte ptr [r14], 0
	mov	rbx, qword ptr [rsp + 0x40]
	add	rbx, qword ptr [rsp + 0x18]
	sub	r14, rbx
	mov	qword ptr [rsp + 0x38], r14
	jmp	.label_55
.label_46:
	mov	qword ptr [rsp + 0x18], r12
	jmp	.label_55
	.section	.text
	.align	16
	#Procedure 0x402198
	.globl sub_402198
	.type sub_402198, @function
sub_402198:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4021a0
	.globl xzalloc
	.type xzalloc, @function
xzalloc:

	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	call	malloc
	mov	r14, rax
	test	rbx, rbx
	je	.label_74
	test	r14, r14
	je	.label_73
.label_74:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_73:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4021d6
	.globl sub_4021d6
	.type sub_4021d6, @function
sub_4021d6:

	nop	word ptr cs:[rax + rax]
.label_75:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4021e5
	.globl sub_4021e5
	.type sub_4021e5, @function
sub_4021e5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4021f4
	.globl quotearg_style_mem
	.type quotearg_style_mem, @function
quotearg_style_mem:

	sub	rsp, 0x78
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x30], 0
	cmp	edi, 0xa
	je	.label_75
	mov	dword ptr [rsp + 0x40], edi
	mov	eax, dword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x74], eax
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rsp + 0x64], xmm2
	movups	xmmword ptr [rsp + 0x54], xmm1
	movups	xmmword ptr [rsp + 0x44], xmm0
	lea	rcx, [rsp + 0x40]
	xor	edi, edi
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
	.section	.text
	.align	16
	#Procedure 0x402250

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_76
	test	rax, rax
	je	.label_77
.label_76:
	pop	rbx
	ret	
.label_77:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40226a
	.globl sub_40226a
	.type sub_40226a, @function
sub_40226a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402270

	.globl freadahead
	.type freadahead, @function
freadahead:
	mov	rcx, qword ptr [rdi + 0x28]
	xor	eax, eax
	cmp	rcx, qword ptr [rdi + 0x20]
	ja	.label_78
	mov	rax, qword ptr [rdi + 0x10]
	sub	rax, qword ptr [rdi + 8]
	xor	ecx, ecx
	test	byte ptr [rdi + 1], 1
	je	.label_79
	mov	rcx, qword ptr [rdi + 0x58]
	sub	rcx, qword ptr [rdi + 0x48]
.label_79:
	add	rax, rcx
.label_78:
	ret	
	.section	.text
	.align	16
	#Procedure 0x402298
	.globl sub_402298
	.type sub_402298, @function
sub_402298:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4022a0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_26]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_27]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_28]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	or	byte ptr [rsp + 0xf], 4
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rsi, rdx
	mov	rdx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	.section	.text
	.align	16
	#Procedure 0x4022f4
	.globl sub_4022f4
	.type sub_4022f4, @function
sub_4022f4:

	nop	word ptr cs:[rax + rax]
.label_81:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_80
	call	__errno_location
	mov	dword ptr [rax], 0
.label_80:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40231b

	.globl close_stream
	.type close_stream, @function
close_stream:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	__fpending
	mov	r14, rax
	mov	ebp, dword ptr [rbx]
	mov	rdi, rbx
	call	rpl_fclose
	test	bpl, 0x20
	jne	.label_81
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_80
	test	cl, cl
	jne	.label_80
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_80
	.section	.text
	.align	16
	#Procedure 0x402360
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_82
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_83
	test	rbx, rbx
	jne	.label_83
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_83:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_84
	test	rax, rax
	je	.label_82
.label_84:
	pop	rbx
	ret	
.label_82:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4023a8
	.globl sub_4023a8
	.type sub_4023a8, @function
sub_4023a8:

	nop	dword ptr [rax + rax]
.label_85:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4023b5
	.globl sub_4023b5
	.type sub_4023b5, @function
sub_4023b5:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4023b9
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_26]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_27]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_28]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_85
	test	rsi, rsi
	je	.label_85
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rax, [rsp]
	xor	edi, edi
	mov	rsi, rdx
	mov	rdx, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	.section	.text
	.align	16
	#Procedure 0x402420

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_86
	test	rbx, rbx
	jne	.label_86
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_86:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_88
	test	rax, rax
	je	.label_87
.label_88:
	pop	rbx
	ret	
.label_87:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402450
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	.section	.text
	.align	16
	#Procedure 0x402458
	.globl sub_402458
	.type sub_402458, @function
sub_402458:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402460

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_103
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_109
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_99
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_100
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_101
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_102
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_91
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_112
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_98
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_113
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_105
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_106
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_107
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_108
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_92
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_93
	mov	ecx, OFFSET FLAT:label_94
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_95
	mov	esi, OFFSET FLAT:label_110
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_95
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_90
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_95:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_89
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_94
	mov	ecx, OFFSET FLAT:label_96
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_111
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_96
	mov	ecx, OFFSET FLAT:label_97
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_103:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_104
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [rip + program_name]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	edi, ebp
	call	exit
	.section	.text
	.align	16
	#Procedure 0x40271b
	.globl sub_40271b
	.type sub_40271b, @function
sub_40271b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402720

	.globl compare_ranges
	.type compare_ranges, @function
compare_ranges:
	mov	eax, dword ptr [rdi]
	xor	ecx, ecx
	cmp	eax, dword ptr [rsi]
	setg	cl
	mov	eax, 0xffffffff
	cmovge	eax, ecx
	ret	
	.section	.text
	.align	16
	#Procedure 0x402732
	.globl sub_402732
	.type sub_402732, @function
sub_402732:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402740

	.globl xstrdup
	.type xstrdup, @function
xstrdup:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	call	strlen
	mov	rbx, rax
	lea	rdi, [rbx + 1]
	call	malloc
	mov	r15, rax
	inc	rbx
	je	.label_115
	test	r15, r15
	je	.label_114
.label_115:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_114:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402782
	.globl sub_402782
	.type sub_402782, @function
sub_402782:

	nop	word ptr cs:[rax + rax]
.label_116:
	push	rax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402796
	.globl sub_402796
	.type sub_402796, @function
sub_402796:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40279b
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_116
	test	rdx, rdx
	je	.label_116
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4027c0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_118
	cmp	byte ptr [rax], 0x43
	jne	.label_120
	cmp	byte ptr [rax + 1], 0
	je	.label_117
.label_120:
	mov	esi, OFFSET FLAT:label_119
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_118
.label_117:
	xor	ebx, ebx
.label_118:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4027f1
	.globl sub_4027f1
	.type sub_4027f1, @function
sub_4027f1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402800
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	mov	rsi, rax
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x402819
	.globl sub_402819
	.type sub_402819, @function
sub_402819:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402820

	.globl fadvise
	.type fadvise, @function
fadvise:
	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_121
	call	fileno
	xor	esi, esi
	xor	edx, edx
	mov	edi, eax
	mov	ecx, ebx
	pop	rbx
	jmp	posix_fadvise
.label_121:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40283d
	.globl sub_40283d
	.type sub_40283d, @function
sub_40283d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402840

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
	#Procedure 0x402857
	.globl sub_402857
	.type sub_402857, @function
sub_402857:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402860
	.globl quotearg_n_style_mem
	.type quotearg_n_style_mem, @function
quotearg_n_style_mem:

	sub	rsp, 0x78
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x30], 0
	cmp	esi, 0xa
	je	.label_122
	mov	dword ptr [rsp + 0x40], esi
	mov	eax, dword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x74], eax
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rsp + 0x64], xmm2
	movups	xmmword ptr [rsp + 0x54], xmm1
	movups	xmmword ptr [rsp + 0x44], xmm0
	lea	rax, [rsp + 0x40]
	mov	rsi, rdx
	mov	rdx, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_122:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4028c8
	.globl sub_4028c8
	.type sub_4028c8, @function
sub_4028c8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4028d0

	.globl quotearg_buffer_restyled
	.type quotearg_buffer_restyled, @function
quotearg_buffer_restyled:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xc8
	mov	ebx, r9d
	mov	r15d, r8d
	mov	qword ptr [rsp + 0x48], rcx
	mov	qword ptr [rsp + 0x28], rdx
	mov	r13, rsi
	mov	qword ptr [rsp + 0x10], rdi
	mov	rax, qword ptr [rsp + 0x110]
	mov	qword ptr [rsp + 0x78], rax
	mov	rax, qword ptr [rsp + 0x108]
	mov	qword ptr [rsp + 0x80], rax
	call	__ctype_get_mb_cur_max
	mov	qword ptr [rsp + 0xb8], rax
	mov	r12d, ebx
	shr	r12b, 1
	and	r12b, 1
	mov	eax, ebx
	and	eax, 1
	mov	dword ptr [rsp + 0x9c], eax
	mov	dword ptr [rsp + 0x20], ebx
	and	ebx, 4
	mov	dword ptr [rsp + 0x98], ebx
	mov	dil, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0x68], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x50], rax
	mov	eax, 0
	xor	r9d, r9d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xa8], rcx
	jmp	.label_200
	.section	.text
	.align	16
	#Procedure 0x40297f
	.globl sub_40297f
	.type sub_40297f, @function
sub_40297f:

	nop	
.label_240:
	cmp	r8d, 2
	setne	al
	cmp	byte ptr [rsp + 0xf], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa8]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x34]
	mov	rsi, qword ptr [rsp + 0xc0]
	je	.label_221
	or	al, dl
	jne	.label_221
	test	dil, 1
	jne	.label_238
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_221
	test	rbp, rbp
	mov	r15d, r8d
	mov	al, bl
	mov	qword ptr [rsp + 0x48], rcx
	mov	r12d, esi
	mov	r13, qword ptr [rsp + 0x68]
	je	.label_200
	jmp	.label_221
.label_595:
	mov	r8d, 5
	test	r12b, 1
	jne	.label_244
	test	rbp, rbp
	je	.label_237
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax], 0x22
.label_237:
	mov	r14d, 1
	jmp	.label_123
.label_596:
	mov	r13b, 1
	mov	r8d, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_20
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	sil, 1
	jmp	.label_125
.label_244:
	xor	r14d, r14d
.label_123:
	mov	eax, OFFSET FLAT:label_20
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	r13b, 1
	jmp	.label_139
	.section	.text
	.align	16
	#Procedure 0x402a4f
	.globl sub_402a4f
	.type sub_402a4f, @function
sub_402a4f:

	nop	
.label_200:
	mov	rbp, r13
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_147
	mov	r8d, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	jmp	qword ptr [(rcx * 8) + label_154]
.label_597:
	mov	r14d, edi
	mov	edi, OFFSET FLAT:label_163
	mov	esi, r15d
	mov	ebx, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x80], rax
	mov	edi, OFFSET FLAT:label_21
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebx
	mov	edi, r14d
	mov	qword ptr [rsp + 0x78], rax
.label_598:
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x80]
	jne	.label_174
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_174
	xor	r14d, r14d
	nop	
.label_229:
	cmp	r14, rbp
	jae	.label_182
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], al
.label_182:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_229
.label_174:
	mov	rbx, qword ptr [rsp + 0x78]
	mov	rdi, rbx
	call	strlen
	mov	qword ptr [rsp + 0x50], rax
	mov	r8d, r15d
	mov	qword ptr [rsp + 0x58], rbx
	mov	r13b, 1
	mov	sil, r12b
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	mov	dil, byte ptr [rsp + 0x1e]
	mov	r9d, dword ptr [rsp + 0x60]
	jmp	.label_125
.label_590:
	xor	r8d, r8d
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_125
.label_593:
	mov	al, 1
.label_591:
	mov	r12b, 1
.label_594:
	test	r12b, 1
	mov	cl, 1
	je	.label_209
	mov	ecx, eax
.label_209:
	mov	al, cl
.label_592:
	mov	r8d, 2
	test	r12b, 1
	jne	.label_211
	test	rbp, rbp
	je	.label_216
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx], 0x27
.label_216:
	mov	r14d, 1
	jmp	.label_217
.label_211:
	xor	r14d, r14d
.label_217:
	mov	ecx, OFFSET FLAT:label_21
	mov	qword ptr [rsp + 0x58], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x50], rcx
	mov	r13d, eax
.label_139:
	mov	sil, r12b
.label_125:
	cmp	qword ptr [rsp + 0x100], 0
	setne	r12b
	cmp	r8d, 2
	setne	r15b
	sete	al
	mov	ecx, r13d
	and	cl, 1
	sete	byte ptr [rsp + 0x33]
	mov	ebx, r15d
	mov	byte ptr [rsp + 0x1f], cl
	and	bl, cl
	cmp	qword ptr [rsp + 0x50], 0
	setne	cl
	mov	edx, ecx
	mov	byte ptr [rsp + 0x36], bl
	and	dl, bl
	mov	byte ptr [rsp + 0x37], dl
	mov	ebx, esi
	and	bl, 1
	sete	dl
	and	al, bl
	mov	byte ptr [rsp + 0x31], al
	mov	byte ptr [rsp + 0xf], bl
	and	r12b, bl
	mov	byte ptr [rsp + 0x35], r12b
	or	dl, r15b
	mov	byte ptr [rsp + 0x27], dl
	mov	byte ptr [rsp + 0x34], r13b
	mov	qword ptr [rsp + 0xc0], rsi
	and	r13b, sil
	and	r13b, cl
	mov	byte ptr [rsp + 0x32], r13b
	xor	r12d, r12d
	mov	qword ptr [rsp + 0x38], r8
	jmp	.label_225
	.section	.text
	.align	16
	#Procedure 0x402c11
	.globl sub_402c11
	.type sub_402c11, @function
sub_402c11:

	nop	word ptr cs:[rax + rax]
.label_228:
	inc	r12
.label_225:
	cmp	r11, -1
	je	.label_133
	cmp	r12, r11
	jne	.label_136
	jmp	.label_138
	.section	.text
	.align	16
	#Procedure 0x402c33
	.globl sub_402c33
	.type sub_402c33, @function
sub_402c33:

	nop	word ptr cs:[rax + rax]
.label_133:
	mov	rcx, -1
	cmp	byte ptr [r10 + r12], 0
	je	.label_222
.label_136:
	cmp	byte ptr [rsp + 0x37], 0
	je	.label_194
	mov	rax, qword ptr [rsp + 0x50]
	lea	rbx, [r12 + rax]
	cmp	rax, 2
	jb	.label_151
	cmp	r11, -1
	jne	.label_151
	mov	r15d, edi
	mov	rdi, r10
	mov	r13d, r9d
	call	strlen
	mov	r9d, r13d
	mov	r8, qword ptr [rsp + 0x38]
	mov	edi, r15d
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_151:
	cmp	rbx, r11
	jbe	.label_166
.label_194:
	xor	esi, esi
.label_197:
	movzx	r15d, byte ptr [r10 + r12]
	cmp	r15, 0x7e
	ja	.label_168
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_171]
.label_626:
	test	r12, r12
	jne	.label_124
	jmp	.label_175
	.section	.text
	.align	16
	#Procedure 0x402cc6
	.globl sub_402cc6
	.type sub_402cc6, @function
sub_402cc6:

	nop	word ptr cs:[rax + rax]
.label_166:
	mov	r13d, r9d
	mov	r15d, edi
	mov	rbx, r11
	lea	rdi, [r10 + r12]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	rdx, qword ptr [rsp + 0x50]
	call	memcmp
	test	eax, eax
	sete	sil
	jne	.label_185
	cmp	byte ptr [rsp + 0xf], 0
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	je	.label_197
	jmp	.label_142
.label_185:
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	jmp	.label_197
.label_630:
	xor	eax, eax
	cmp	r11, -1
	je	.label_204
	test	r12, r12
	jne	.label_207
	cmp	r11, 1
	je	.label_175
	xor	r13d, r13d
	jmp	.label_129
.label_619:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_213
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_142
	cmp	r8d, 2
	jne	.label_159
	mov	eax, r9d
	and	al, 1
	jne	.label_159
	cmp	r14, rbp
	jae	.label_219
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_219:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_223
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_223:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_230
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_230:
	add	r14, 3
	mov	r9b, 1
.label_159:
	mov	rcx, r14
	cmp	rcx, rbp
	jae	.label_236
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + rcx], 0x5c
.label_236:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r8d, 2
	je	.label_239
	lea	rdx, [r12 + 1]
	cmp	rdx, r11
	jae	.label_239
	mov	dl, byte ptr [r10 + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_239
	cmp	r14, rbp
	jae	.label_234
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x30
.label_234:
	lea	rdx, [rcx + 2]
	cmp	rdx, rbp
	jae	.label_220
	mov	ebx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rdx], 0x30
	mov	esi, ebx
.label_220:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_129
.label_620:
	mov	bl, 0x62
	jmp	.label_134
.label_621:
	mov	cl, 0x74
	jmp	.label_126
.label_622:
	mov	bl, 0x76
	jmp	.label_134
.label_623:
	mov	bl, 0x66
	jmp	.label_134
.label_624:
	mov	cl, 0x72
	jmp	.label_126
.label_627:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa8], rax
	cmp	r8d, 2
	jne	.label_146
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_132
	test	rbp, rbp
	sete	al
	mov	rcx, qword ptr [rsp + 0x68]
	mov	rdx, rcx
	test	rdx, rdx
	setne	cl
	or	cl, al
	cmove	rdx, rbp
	mov	qword ptr [rsp + 0x68], rdx
	mov	eax, 0
	cmove	rbp, rax
	cmp	r14, rbp
	jae	.label_156
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_156:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_169
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x5c
.label_169:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_173
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_173:
	add	r14, 3
	xor	r9d, r9d
.label_146:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_129
.label_628:
	mov	r15b, 0x3f
	cmp	r8d, 5
	je	.label_178
	cmp	r8d, 2
	jne	.label_124
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_124
	jmp	.label_132
.label_629:
	cmp	r8d, 2
	jne	.label_191
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_132
	mov	r15b, 0x5c
	xor	eax, eax
	jmp	.label_196
.label_168:
	cmp	qword ptr [rsp + 0xb8], 1
	mov	qword ptr [rsp + 0xa0], rbp
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	mov	dword ptr [rsp + 0x94], esi
	jne	.label_198
	mov	qword ptr [rsp + 0x48], r11
	call	__ctype_b_loc
	mov	r10, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	ebx, 1
	jmp	.label_210
.label_204:
	test	r12, r12
	jne	.label_218
	mov	cl, byte ptr [r10 + 1]
	test	cl, cl
	jne	.label_218
.label_175:
	mov	dl, 1
.label_625:
	cmp	byte ptr [rsp + 0x27], 0
	je	.label_132
	xor	eax, eax
	mov	r13b, dl
.label_129:
	cmp	byte ptr [rsp + 0x36], 0
	je	.label_227
	cmp	qword ptr [rsp + 0x100], 0
	jne	.label_231
	jmp	.label_233
	.section	.text
	.align	16
	#Procedure 0x402fa4
	.globl sub_402fa4
	.type sub_402fa4, @function
sub_402fa4:

	nop	word ptr cs:[rax + rax]
.label_227:
	cmp	byte ptr [rsp + 0x35], 0
	je	.label_233
.label_231:
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	ebx, esi
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_189
	mov	rcx, qword ptr [rsp + 0x100]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_243
	.section	.text
	.align	16
	#Procedure 0x402fdd
	.globl sub_402fdd
	.type sub_402fdd, @function
sub_402fdd:

	nop	dword ptr [rax]
.label_233:
	test	sil, sil
.label_243:
	mov	ebx, r15d
	je	.label_130
	jmp	.label_246
.label_189:
	mov	ebx, r15d
	jmp	.label_246
.label_213:
	cmp	dword ptr [rsp + 0x9c], 0
	jne	.label_228
	xor	r15d, r15d
	jmp	.label_124
.label_191:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x32], 0
	je	.label_126
	xor	eax, eax
	mov	r15b, 0x5c
.label_196:
	xor	r13d, r13d
	jmp	.label_130
.label_126:
	cmp	byte ptr [rsp + 0x27], 0
	mov	ebx, ecx
	je	.label_132
.label_134:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1f], 0
	mov	r13d, 0
	je	.label_129
	nop	
.label_246:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_142
	cmp	r8d, 2
	jne	.label_148
	mov	eax, r9d
	and	al, 1
	jne	.label_148
	cmp	r14, rbp
	jae	.label_150
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_150:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_157
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_157:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_162
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_162:
	add	r14, 3
	mov	r9b, 1
.label_148:
	cmp	r14, rbp
	jae	.label_167
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_167:
	inc	r14
	jmp	.label_158
.label_198:
	mov	qword ptr [rsp + 0x70], 0
	cmp	r11, -1
	jne	.label_172
	mov	rdi, r10
	call	strlen
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_172:
	cmp	byte ptr [rsp + 0x31], 0
	mov	qword ptr [rsp + 0x48], r11
	mov	qword ptr [rsp + 0x88], r12
	je	.label_176
	lea	rax, [r10 + r12]
	mov	qword ptr [rsp + 0xb0], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbp, [rsp + 0x70]
.label_232:
	mov	rax, r12
	mov	qword ptr [rsp + 0x40], rax
	mov	rcx, qword ptr [rsp + 0x88]
	lea	rax, [r12 + rcx]
	mov	r12, rcx
	lea	rsi, [r10 + rax]
	mov	rdx, r11
	sub	rdx, rax
	lea	rdi, [rsp + 0x64]
	mov	rcx, rbp
	call	rpl_mbrtowc
	mov	rbx, rax
	cmp	rbx, -2
	je	.label_192
	cmp	rbx, -1
	mov	r10, qword ptr [rsp + 0x28]
	movabs	rsi, 0x20000002b
	je	.label_205
	test	rbx, rbx
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_152
	cmp	rbx, 2
	mov	rbp, qword ptr [rsp + 0xa0]
	jb	.label_214
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax]
.label_203:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_199
	bt	rsi, rdx
	jb	.label_132
.label_199:
	inc	rcx
	cmp	rcx, rbx
	jb	.label_203
.label_214:
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	jne	.label_241
	xor	r13d, r13d
.label_241:
	lea	rbp, [rsp + 0x70]
	mov	r12, qword ptr [rsp + 0x40]
	add	r12, rbx
	mov	rdi, rbp
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_232
	jmp	.label_208
.label_239:
	xor	r13d, r13d
	jmp	.label_129
.label_218:
	mov	r11, -1
	xor	r13d, r13d
	jmp	.label_129
.label_178:
	cmp	dword ptr [rsp + 0x98], 0
	je	.label_124
	lea	rcx, [r12 + 2]
	cmp	rcx, r11
	jae	.label_124
	cmp	byte ptr [r10 + r12 + 1], 0x3f
	jne	.label_124
	movsx	edx, byte ptr [r10 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_131
	mov	ebx, esi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_155
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_141
	cmp	r14, rbp
	jae	.label_144
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x3f
.label_144:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_226
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_226:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_235
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_235:
	lea	rax, [r14 + 3]
	cmp	rax, rbp
	jae	.label_179
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x3f
.label_179:
	add	r14, 4
	xor	eax, eax
	mov	r12, rcx
	mov	r15b, dl
.label_155:
	xor	r13d, r13d
	mov	esi, ebx
	jmp	.label_129
.label_124:
	xor	eax, eax
.label_207:
	xor	r13d, r13d
	jmp	.label_129
.label_176:
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbx, [rsp + 0x70]
	nop	word ptr cs:[rax + rax]
.label_184:
	mov	rax, r12
	mov	qword ptr [rsp + 0x40], rax
	mov	rcx, qword ptr [rsp + 0x88]
	lea	rax, [r12 + rcx]
	mov	r12, rcx
	lea	rsi, [r10 + rax]
	mov	rdx, r11
	sub	rdx, rax
	lea	rdi, [rsp + 0x64]
	mov	rcx, rbx
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_187
	cmp	rbp, -1
	je	.label_190
	cmp	rbp, -2
	je	.label_192
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	mov	r12, qword ptr [rsp + 0x40]
	jne	.label_143
	xor	r13d, r13d
.label_143:
	add	r12, rbp
	lea	rbx, [rsp + 0x70]
	mov	rdi, rbx
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_184
	jmp	.label_208
.label_192:
	mov	r10, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x40]
	lea	rax, [rsi + r12]
	mov	rdx, qword ptr [rsp + 0x48]
	cmp	rax, rdx
	jae	.label_153
	lea	rax, [r10 + r12]
.label_128:
	cmp	byte ptr [rax + rsi], 0
	je	.label_153
	lea	rcx, [r12 + rsi + 1]
	inc	rsi
	cmp	rcx, rdx
	jb	.label_128
.label_153:
	mov	qword ptr [rsp + 0x40], rsi
.label_205:
	xor	r13d, r13d
	jmp	.label_152
.label_190:
	xor	r13d, r13d
.label_187:
	mov	r10, qword ptr [rsp + 0x28]
.label_152:
	mov	r12, qword ptr [rsp + 0x40]
.label_208:
	mov	rbx, r12
	mov	r12, qword ptr [rsp + 0x88]
.label_210:
	and	r13b, 1
	mov	eax, r13d
	or	al, byte ptr [rsp + 0x33]
	cmp	rbx, 1
	mov	rbp, qword ptr [rsp + 0xa0]
	mov	dil, byte ptr [rsp + 0x1e]
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x60]
	mov	esi, dword ptr [rsp + 0x94]
	ja	.label_224
	test	al, al
	je	.label_224
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_129
.label_224:
	mov	byte ptr [rsp + 0x40], al
	add	rbx, r12
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_242
	.section	.text
	.align	16
	#Procedure 0x4033d7
	.globl sub_4033d7
	.type sub_4033d7, @function
sub_4033d7:

	nop	word ptr [rax + rax]
.label_202:
	inc	r14
	mov	r15b, byte ptr [r10 + r12 + 1]
	mov	r12, rdx
.label_242:
	cmp	byte ptr [rsp + 0x40], 0
	je	.label_245
	test	sil, 1
	je	.label_127
	cmp	r14, rbp
	jae	.label_247
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x5c
.label_247:
	inc	r14
	xor	esi, esi
	jmp	.label_127
	.section	.text
	.align	16
	#Procedure 0x403415
	.globl sub_403415
	.type sub_403415, @function
sub_403415:

	nop	word ptr cs:[rax + rax]
.label_245:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_142
	cmp	r8d, 2
	jne	.label_137
	mov	eax, r9d
	and	al, 1
	jne	.label_137
	cmp	r14, rbp
	jae	.label_140
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_140:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_145
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x24
.label_145:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_186
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x27
.label_186:
	add	r14, 3
	mov	r9b, 1
.label_137:
	cmp	r14, rbp
	jae	.label_160
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_160:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_195
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_195:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_170
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_170:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_127:
	lea	rdx, [r12 + 1]
	cmp	rbx, rdx
	jbe	.label_130
	test	r9b, 1
	je	.label_180
	mov	rcx, rbx
	mov	ebx, eax
	and	bl, 1
	jne	.label_206
	mov	r8, r12
	mov	r12d, esi
	cmp	r14, rbp
	jae	.label_183
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], 0x27
.label_183:
	lea	rsi, [r14 + 1]
	cmp	rsi, rbp
	jae	.label_193
	mov	rbx, qword ptr [rsp + 0x10]
	mov	byte ptr [rbx + rsi], 0x27
.label_193:
	add	r14, 2
	xor	r9d, r9d
	mov	esi, r12d
	mov	rbx, rcx
	mov	r12, r8
	mov	r8, qword ptr [rsp + 0x38]
	jmp	.label_180
	.section	.text
	.align	16
	#Procedure 0x403526
	.globl sub_403526
	.type sub_403526, @function
sub_403526:

	nop	word ptr cs:[rax + rax]
.label_206:
	mov	rbx, rcx
.label_180:
	cmp	r14, rbp
	jae	.label_202
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], r15b
	mov	esi, ecx
	jmp	.label_202
	.section	.text
	.align	16
	#Procedure 0x40354e
	.globl sub_40354e
	.type sub_40354e, @function
sub_40354e:

	nop	
.label_130:
	test	r9b, 1
	je	.label_212
	and	al, 1
	jne	.label_212
	cmp	r14, rbp
	jae	.label_215
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_215:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_161
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_161:
	add	r14, 2
	xor	r9d, r9d
.label_212:
	mov	ebx, r15d
.label_158:
	cmp	r14, rbp
	jae	.label_201
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], bl
.label_201:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, dil
	mov	edi, r13d
	jmp	.label_228
.label_131:
	xor	r13d, r13d
	jmp	.label_129
	.section	.text
	.align	16
	#Procedure 0x4035b1
	.globl sub_4035b1
	.type sub_4035b1, @function
sub_4035b1:

	nop	word ptr cs:[rax + rax]
.label_138:
	mov	rcx, r12
.label_222:
	cmp	r8d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_240
	or	al, dl
	jne	.label_240
	mov	r11, rcx
	jmp	.label_142
.label_132:
	mov	eax, 2
.label_188:
	mov	qword ptr [rsp + 0x38], rax
.label_142:
	mov	r9d, dword ptr [rsp + 0x20]
	cmp	byte ptr [rsp + 0x1f], 0
	mov	r8d, 4
	mov	rax, qword ptr [rsp + 0x38]
	cmove	r8d, eax
	cmp	eax, 2
	cmovne	r8d, eax
	and	r9d, 0xfffffffd
	sub	rsp, 8
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, rbp
	mov	rdx, r10
	mov	rcx, r11
	push	qword ptr [rsp + 0x80]
	push	qword ptr [rsp + 0x90]
	push	0
	call	quotearg_buffer_restyled
	add	rsp, 0x20
.label_177:
	mov	r14, rax
.label_181:
	mov	rax, r14
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_221:
	mov	rdx, qword ptr [rsp + 0x58]
	test	rdx, rdx
	je	.label_135
	cmp	byte ptr [rsp + 0xf], 0
	mov	rcx, qword ptr [rsp + 0x10]
	jne	.label_149
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_149
	inc	rdx
	nop	dword ptr [rax + rax]
.label_165:
	cmp	r14, rbp
	jae	.label_164
	mov	byte ptr [rcx + r14], al
.label_164:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_165
	jmp	.label_149
.label_238:
	sub	rsp, 8
	mov	r8d, 5
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, qword ptr [rsp + 0x70]
	mov	rdx, qword ptr [rsp + 0x30]
	mov	r9d, dword ptr [rsp + 0x28]
	push	qword ptr [rsp + 0x80]
	push	qword ptr [rsp + 0x90]
	push	qword ptr [rsp + 0x118]
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	jmp	.label_177
.label_135:
	mov	rcx, qword ptr [rsp + 0x10]
.label_149:
	cmp	r14, rbp
	jae	.label_181
	mov	byte ptr [rcx + r14], 0
	jmp	.label_181
.label_141:
	mov	eax, 5
	jmp	.label_188
.label_147:
	call	abort
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
	jne	.label_248
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_248
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_249
.label_248:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_249:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_250
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_250:
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

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_253
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_255
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_251
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_255
	mov	esi, OFFSET FLAT:label_256
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_252
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_252:
	mov	rbx, r14
.label_255:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_253:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_254
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403811
	.globl sub_403811
	.type sub_403811, @function
sub_403811:

	nop	word ptr cs:[rax + rax]
.label_261:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403825
	.globl sub_403825
	.type sub_403825, @function
sub_403825:

	nop	word ptr [rax + rax]
.label_262:
	test	rcx, rcx
	jne	.label_260
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_260:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_261
.label_263:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_257
	test	rbx, rbx
	jne	.label_257
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_259:
	call	xalloc_die
.label_257:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_258
	test	rax, rax
	je	.label_259
.label_258:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x403893
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_262
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_259
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_263
.label_264:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4038c5
	.globl sub_4038c5
	.type sub_4038c5, @function
sub_4038c5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4038cf
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_264
	call	rpl_calloc
	test	rax, rax
	je	.label_264
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4038f0
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
	mov	r8, qword ptr [rbp]
	mov	r9, r8
	shr	r9, 0x20
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
	#Procedure 0x403965
	.globl sub_403965
	.type sub_403965, @function
sub_403965:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403970

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	xor	edi, edi
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	mov	rsi, rax
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x403989
	.globl sub_403989
	.type sub_403989, @function
sub_403989:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403990
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	rbx, rsi
	mov	qword ptr [rsp + 8], rbx
	mov	r12, rdi
	test	rdx, rdx
	mov	r14d, OFFSET FLAT:default_quoting_options
	cmovne	r14, rdx
	call	__errno_location
	mov	qword ptr [rsp + 0x10], rax
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rsp + 4], ecx
	mov	r8d, dword ptr [r14]
	mov	ebp, dword ptr [r14 + 4]
	or	ebp, 1
	lea	r15, [r14 + 8]
	sub	rsp, 8
	xor	edi, edi
	xor	esi, esi
	mov	rdx, r12
	mov	rcx, rbx
	mov	r9d, ebp
	push	qword ptr [r14 + 0x30]
	push	qword ptr [r14 + 0x28]
	push	r15
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	mov	rbx, rax
	inc	rbx
	mov	rdi, rbx
	call	xmalloc
	mov	r13, rax
	mov	r8d, dword ptr [r14]
	sub	rsp, 8
	mov	rdi, r13
	mov	rsi, rbx
	mov	rdx, r12
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r9d, ebp
	push	qword ptr [r14 + 0x30]
	push	qword ptr [r14 + 0x28]
	push	r15
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	mov	eax, dword ptr [rsp + 4]
	mov	rcx, qword ptr [rsp + 0x10]
	mov	dword ptr [rcx], eax
	mov	rax, r13
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
	#Procedure 0x403a51
	.globl sub_403a51
	.type sub_403a51, @function
sub_403a51:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403a60

	.globl xstrndup
	.type xstrndup, @function
xstrndup:
	push	rax
	call	__strndup
	test	rax, rax
	je	.label_265
	pop	rcx
	ret	
.label_265:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403a72
	.globl sub_403a72
	.type sub_403a72, @function
sub_403a72:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403a80
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_266
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_268:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_268
.label_266:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_269
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_270], OFFSET FLAT:slot0
.label_269:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_267
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_267:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x403b11
	.globl sub_403b11
	.type sub_403b11, @function
sub_403b11:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403b20
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
	#Procedure 0x403b33
	.globl sub_403b33
	.type sub_403b33, @function
sub_403b33:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403b40

	.globl quotearg_n_style_colon
	.type quotearg_n_style_colon, @function
quotearg_n_style_colon:
	sub	rsp, 0x78
	mov	rax, rdx
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x30], 0
	cmp	esi, 0xa
	je	.label_271
	mov	ecx, dword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x70], ecx
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movaps	xmmword ptr [rsp + 0x60], xmm2
	movaps	xmmword ptr [rsp + 0x50], xmm1
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	dword ptr [rsp], esi
	mov	ecx, dword ptr [rsp + 0x70]
	mov	dword ptr [rsp + 0x34], ecx
	movaps	xmm0, xmmword ptr [rsp + 0x40]
	movaps	xmm1, xmmword ptr [rsp + 0x50]
	movaps	xmm2, xmmword ptr [rsp + 0x60]
	movups	xmmword ptr [rsp + 0x24], xmm2
	movups	xmmword ptr [rsp + 0x14], xmm1
	movups	xmmword ptr [rsp + 4], xmm0
	or	byte ptr [rsp + 0xf], 4
	lea	rcx, [rsp]
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_271:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403bd5
	.globl sub_403bd5
	.type sub_403bd5, @function
sub_403bd5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403be0
	.globl fdadvise
	.type fdadvise, @function
fdadvise:

	jmp	posix_fadvise
	.section	.text
	.align	16
	#Procedure 0x403be5
	.globl sub_403be5
	.type sub_403be5, @function
sub_403be5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403bf0
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_26]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_27]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_28]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	eax, ecx
	shr	al, 5
	movzx	eax, al
	mov	esi, dword ptr [rsp + rax*4 + 8]
	mov	edi, esi
	shr	edi, cl
	not	edi
	and	edi, 1
	shl	edi, cl
	xor	edi, esi
	mov	dword ptr [rsp + rax*4 + 8], edi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rsi, rdx
	mov	rdx, r8
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	.section	.text
	.align	16
	#Procedure 0x403c5e
	.globl sub_403c5e
	.type sub_403c5e, @function
sub_403c5e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403c60
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
	#Procedure 0x403c6f
	.globl sub_403c6f
	.type sub_403c6f, @function
sub_403c6f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403c70

	.globl set_fields
	.type set_fields, @function
set_fields:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r15, rdi
	xor	r12d, r12d
	mov	dword ptr [rsp + 0x10], esi
	and	esi, 1
	mov	dword ptr [rsp + 0x24], esi
	je	.label_310
	movzx	edx, byte ptr [r15]
	lea	rax, [r15 + 1]
	mov	ecx, 0x2d
	sub	ecx, edx
	jne	.label_327
	movzx	ecx, byte ptr [rax]
	neg	ecx
.label_327:
	xor	r12d, r12d
	test	ecx, ecx
	sete	r12b
	cmove	r15, rax
.label_310:
	xor	ebp, ebp
	mov	al, r12b
	mov	dword ptr [rsp + 0x14], eax
	mov	r13b, r12b
	mov	eax, 1
	mov	qword ptr [rsp + 0x18], rax
	jmp	.label_339
	.section	.text
	.align	16
	#Procedure 0x403ccc
	.globl sub_403ccc
	.type sub_403ccc, @function
sub_403ccc:

	nop	dword ptr [rax]
.label_280:
	inc	r15
	xor	r12d, r12d
.label_339:
	mov	eax, dword ptr [rsp + 0x14]
	and	al, 1
	mov	byte ptr [rsp + 0xf], al
	jne	.label_349
	mov	r14, rbp
	xor	ebx, ebx
	jmp	.label_354
	.section	.text
	.align	16
	#Procedure 0x403ced
	.globl sub_403ced
	.type sub_403ced, @function
sub_403ced:

	nop	dword ptr [rax]
.label_322:
	inc	r15
	mov	bl, 1
	mov	r13b, 1
.label_354:
	movzx	ebp, byte ptr [r15]
	cmp	rbp, 0x2c
	je	.label_279
	cmp	bpl, 0x2d
	je	.label_274
	call	__ctype_b_loc
	test	bpl, bpl
	je	.label_279
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbp*2]
	and	eax, 1
	test	ax, ax
	jne	.label_279
	movsx	eax, bpl
	add	eax, -0x30
	cmp	eax, 9
	ja	.label_290
	mov	rbp, qword ptr [rip + set_fields.num_start]
	test	rbp, rbp
	setne	al
	test	bl, al
	jne	.label_296
	mov	qword ptr [rip + set_fields.num_start],  r15
	mov	rbp, r15
.label_296:
	movabs	rax, 0x1999999999999999
	cmp	r12, rax
	ja	.label_277
	lea	rax, [r12 + r12*4]
	movsx	rcx, byte ptr [r15]
	lea	rax, [rcx + rax*2 - 0x30]
	cmp	rax, r12
	cmovae	r12, rax
	jb	.label_277
	cmp	r12, -1
	jne	.label_322
	jmp	.label_277
	.section	.text
	.align	16
	#Procedure 0x403d98
	.globl sub_403d98
	.type sub_403d98, @function
sub_403d98:

	nop	dword ptr [rax + rax]
.label_349:
	xor	r14d, r14d
	jmp	.label_334
	.section	.text
	.align	16
	#Procedure 0x403da5
	.globl sub_403da5
	.type sub_403da5, @function
sub_403da5:

	nop	word ptr cs:[rax + rax]
.label_315:
	inc	r15
	mov	r14b, 1
	mov	bpl, 1
.label_334:
	movzx	ebx, byte ptr [r15]
	cmp	rbx, 0x2c
	je	.label_341
	cmp	bl, 0x2d
	je	.label_344
	call	__ctype_b_loc
	test	bl, bl
	je	.label_341
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbx*2]
	and	eax, 1
	test	ax, ax
	jne	.label_341
	movsx	eax, bl
	add	eax, -0x30
	cmp	eax, 9
	ja	.label_290
	mov	rbp, qword ptr [rip + set_fields.num_start]
	test	rbp, rbp
	setne	al
	test	r14b, al
	jne	.label_360
	mov	qword ptr [rip + set_fields.num_start],  r15
	mov	rbp, r15
.label_360:
	movabs	rax, 0x1999999999999999
	cmp	r12, rax
	ja	.label_277
	lea	rax, [r12 + r12*4]
	movsx	rcx, byte ptr [r15]
	lea	rax, [rcx + rax*2 - 0x30]
	cmp	rax, r12
	cmovae	r12, rax
	jb	.label_277
	cmp	r12, -1
	jne	.label_315
	jmp	.label_277
	.section	.text
	.align	16
	#Procedure 0x403e4f
	.globl sub_403e4f
	.type sub_403e4f, @function
sub_403e4f:

	nop	
.label_279:
	mov	rbp, r14
.label_341:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_303
	test	r12, r12
	je	.label_284
	mov	rsi, qword ptr [rip + n_frp]
	cmp	rsi, qword ptr [rip + n_frp_allocated]
	jne	.label_308
	mov	rdi, qword ptr [rip + frp]
	test	rdi, rdi
	je	.label_357
	movabs	rax, 0x555555555555555
	cmp	rsi, rax
	jae	.label_272
	mov	rax, rsi
	shr	rax, 1
	lea	rsi, [rsi + rax + 1]
	jmp	.label_331
	.section	.text
	.align	16
	#Procedure 0x403eaa
	.globl sub_403eaa
	.type sub_403eaa, @function
sub_403eaa:

	nop	word ptr [rax + rax]
.label_303:
	or	r13b, bpl
	and	r13b, 1
	mov	eax, 1
	mov	rcx, qword ptr [rsp + 0x18]
	cmove	rcx, rax
	mov	qword ptr [rsp + 0x18], rcx
	cmp	dword ptr [rsp + 0x24], 0
	jne	.label_337
	test	r13b, r13b
	je	.label_348
.label_337:
	test	bpl, 1
	jne	.label_351
	mov	rcx, qword ptr [rip + n_frp]
	cmp	rcx, qword ptr [rip + n_frp_allocated]
	jne	.label_353
	mov	rdi, qword ptr [rip + frp]
	test	rdi, rdi
	je	.label_359
	movabs	rax, 0x555555555555555
	cmp	rcx, rax
	jae	.label_272
	mov	rax, rcx
	shr	rax, 1
	lea	rsi, [rcx + rax + 1]
	jmp	.label_281
.label_308:
	mov	rax, qword ptr [rip + frp]
	jmp	.label_288
.label_351:
	cmp	r12, qword ptr [rsp + 0x18]
	jb	.label_291
	mov	rcx, qword ptr [rip + n_frp]
	cmp	rcx, qword ptr [rip + n_frp_allocated]
	jne	.label_294
	mov	rdi, qword ptr [rip + frp]
	test	rdi, rdi
	je	.label_301
	movabs	rax, 0x555555555555555
	cmp	rcx, rax
	jae	.label_272
	mov	rax, rcx
	shr	rax, 1
	lea	rsi, [rcx + rax + 1]
	jmp	.label_311
.label_274:
	mov	rbp, r14
.label_344:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_319
	mov	eax, r13d
	and	al, 1
	sete	cl
	test	r12, r12
	jne	.label_325
	test	cl, cl
	je	.label_332
.label_325:
	test	al, al
	mov	eax, 1
	cmove	r12, rax
	mov	al, 1
	mov	dword ptr [rsp + 0x14], eax
	mov	qword ptr [rsp + 0x18], r12
	jmp	.label_280
.label_353:
	mov	rax, qword ptr [rip + frp]
	jmp	.label_343
.label_294:
	mov	rax, qword ptr [rip + frp]
	jmp	.label_346
.label_357:
	test	rsi, rsi
	mov	eax, 8
	cmove	rsi, rax
	movabs	rax, 0x7ffffffffffffff
	cmp	rsi, rax
	ja	.label_350
.label_331:
	mov	qword ptr [rip + n_frp_allocated],  rsi
	shl	rsi, 4
	call	xrealloc
	mov	qword ptr [rip + frp],  rax
	mov	rsi, qword ptr [rip + n_frp]
.label_288:
	shl	rsi, 4
	mov	qword ptr [rax + rsi], r12
	mov	rsi, qword ptr [rip + n_frp]
	mov	rcx, rsi
	shl	rcx, 4
	mov	qword ptr [rax + rcx + 8], r12
	inc	rsi
	mov	qword ptr [rip + n_frp],  rsi
	jmp	.label_278
.label_359:
	test	rcx, rcx
	mov	esi, 8
	cmovne	rsi, rcx
	movabs	rax, 0x7ffffffffffffff
	cmp	rsi, rax
	ja	.label_312
.label_281:
	mov	qword ptr [rip + n_frp_allocated],  rsi
	shl	rsi, 4
	call	xrealloc
	mov	qword ptr [rip + frp],  rax
	mov	rcx, qword ptr [rip + n_frp]
.label_343:
	shl	rcx, 4
	mov	rdx, qword ptr [rsp + 0x18]
	mov	qword ptr [rax + rcx], rdx
	mov	rsi, qword ptr [rip + n_frp]
	mov	rcx, rsi
	shl	rcx, 4
	mov	qword ptr [rax + rcx + 8], -1
	jmp	.label_317
.label_301:
	test	rcx, rcx
	mov	esi, 8
	cmovne	rsi, rcx
	movabs	rax, 0x7ffffffffffffff
	cmp	rsi, rax
	ja	.label_335
.label_311:
	mov	qword ptr [rip + n_frp_allocated],  rsi
	shl	rsi, 4
	call	xrealloc
	mov	qword ptr [rip + frp],  rax
	mov	rcx, qword ptr [rip + n_frp]
.label_346:
	shl	rcx, 4
	mov	rdx, qword ptr [rsp + 0x18]
	mov	qword ptr [rax + rcx], rdx
	mov	rsi, qword ptr [rip + n_frp]
	mov	rcx, rsi
	shl	rcx, 4
	mov	qword ptr [rax + rcx + 8], r12
.label_317:
	inc	rsi
	mov	qword ptr [rip + n_frp],  rsi
	mov	dword ptr [rsp + 0x14], 0
.label_278:
	cmp	byte ptr [r15], 0
	je	.label_358
	xor	ebp, ebp
	xor	r13d, r13d
	jmp	.label_280
.label_358:
	test	rsi, rsi
	je	.label_285
	mov	edx, 0x10
	mov	ecx, OFFSET FLAT:compare_ranges
	mov	rdi, rax
	call	qsort
	mov	rax, qword ptr [rip + n_frp]
	xor	ebx, ebx
	test	rax, rax
	je	.label_287
	xor	r15d, r15d
	mov	rbx, rax
	nop	word ptr cs:[rax + rax]
.label_273:
	mov	r14, r15
	lea	r15, [r14 + 1]
	jmp	.label_307
	.section	.text
	.align	16
	#Procedure 0x404169
	.globl sub_404169
	.type sub_404169, @function
sub_404169:

	nop	dword ptr [rax]
.label_340:
	lea	rsi, [rax + rsi + 8]
	lea	rdi, [rax + rcx]
	mov	rbp, qword ptr [rax + rcx + 8]
	cmp	rbp, rdx
	cmova	rdx, rbp
	mov	qword ptr [rsi], rdx
	lea	rsi, [rax + rcx + 0x10]
	sub	rbx, r15
	shl	rbx, 4
	add	rbx, -0x10
	mov	rdx, rbx
	call	memmove
	mov	rbx, qword ptr [rip + n_frp]
	dec	rbx
	mov	qword ptr [rip + n_frp],  rbx
.label_307:
	cmp	r15, rbx
	jae	.label_338
	mov	rax, qword ptr [rip + frp]
	mov	rcx, r15
	shl	rcx, 4
	mov	rsi, r14
	shl	rsi, 4
	mov	rdx, qword ptr [rax + rsi + 8]
	cmp	qword ptr [rax + rcx], rdx
	jbe	.label_340
	cmp	rbx, r15
	ja	.label_273
	jmp	.label_287
	.section	.text
	.align	16
	#Procedure 0x4041dd
	.globl sub_4041dd
	.type sub_4041dd, @function
sub_4041dd:

	nop	dword ptr [rax]
.label_338:
	cmp	r15, rbx
	jb	.label_273
.label_287:
	mov	eax, dword ptr [rsp + 0x10]
	test	al, 2
	je	.label_356
	mov	r14, qword ptr [rip + frp]
	mov	qword ptr [rip + frp],  0
	mov	qword ptr [rip + n_frp],  0
	mov	qword ptr [rip + n_frp_allocated],  0
	mov	rbp, qword ptr [r14]
	xor	esi, esi
	cmp	rbp, 2
	jb	.label_275
	dec	rbp
	mov	qword ptr [rip + n_frp_allocated],  8
	xor	edi, edi
	mov	esi, 0x80
	call	xrealloc
	mov	qword ptr [rip + frp],  rax
	mov	rcx, qword ptr [rip + n_frp]
	shl	rcx, 4
	mov	qword ptr [rax + rcx], 1
	mov	rsi, qword ptr [rip + n_frp]
	mov	rcx, rsi
	shl	rcx, 4
	mov	qword ptr [rax + rcx + 8], rbp
	inc	rsi
	mov	qword ptr [rip + n_frp],  rsi
	jmp	.label_297
.label_275:
	xor	eax, eax
.label_297:
	cmp	rbx, 2
	jb	.label_318
	lea	rbp, [r14 + 0x10]
	mov	r15d, 1
	nop	word ptr cs:[rax + rax]
.label_347:
	mov	r12, qword ptr [rbp - 8]
	mov	r13, qword ptr [rbp]
	inc	r12
	cmp	r12, r13
	je	.label_305
	cmp	rsi, qword ptr [rip + n_frp_allocated]
	jne	.label_326
	test	rax, rax
	je	.label_304
	movabs	rcx, 0x555555555555555
	cmp	rsi, rcx
	jae	.label_272
	mov	rcx, rsi
	shr	rcx, 1
	lea	rsi, [rsi + rcx + 1]
	jmp	.label_361
.label_304:
	test	rsi, rsi
	mov	ecx, 8
	cmove	rsi, rcx
	movabs	rcx, 0x7ffffffffffffff
	cmp	rsi, rcx
	ja	.label_330
.label_361:
	mov	qword ptr [rip + n_frp_allocated],  rsi
	shl	rsi, 4
	mov	rdi, rax
	call	xrealloc
	mov	qword ptr [rip + frp],  rax
	mov	rsi, qword ptr [rip + n_frp]
.label_326:
	dec	r13
	shl	rsi, 4
	mov	qword ptr [rax + rsi], r12
	mov	rsi, qword ptr [rip + n_frp]
	mov	rcx, rsi
	shl	rcx, 4
	mov	qword ptr [rax + rcx + 8], r13
	inc	rsi
	mov	qword ptr [rip + n_frp],  rsi
.label_305:
	inc	r15
	add	rbp, 0x10
	cmp	r15, rbx
	jb	.label_347
.label_318:
	shl	rbx, 4
	mov	rbx, qword ptr [r14 + rbx - 8]
	cmp	rbx, -1
	je	.label_336
	cmp	rsi, qword ptr [rip + n_frp_allocated]
	jne	.label_355
	test	rax, rax
	je	.label_313
	movabs	rcx, 0x555555555555555
	cmp	rsi, rcx
	jae	.label_272
	mov	rcx, rsi
	shr	rcx, 1
	lea	rcx, [rsi + rcx + 1]
	jmp	.label_324
.label_313:
	test	rsi, rsi
	mov	ecx, 8
	cmovne	rcx, rsi
	movabs	rdx, 0x7ffffffffffffff
	cmp	rcx, rdx
	ja	.label_300
.label_324:
	mov	qword ptr [rip + n_frp_allocated],  rcx
	shl	rcx, 4
	mov	rdi, rax
	mov	rsi, rcx
	call	xrealloc
	mov	qword ptr [rip + frp],  rax
	mov	rsi, qword ptr [rip + n_frp]
.label_355:
	inc	rbx
	shl	rsi, 4
	mov	qword ptr [rax + rsi], rbx
	mov	rcx, qword ptr [rip + n_frp]
	mov	rdx, rcx
	shl	rdx, 4
	mov	qword ptr [rax + rdx + 8], -1
	inc	rcx
	mov	qword ptr [rip + n_frp],  rcx
.label_336:
	mov	rdi, r14
	call	free
	mov	rbx, qword ptr [rip + n_frp]
.label_356:
	inc	rbx
	mov	qword ptr [rip + n_frp],  rbx
	mov	rdi, qword ptr [rip + frp]
	shl	rbx, 4
	mov	rsi, rbx
	call	xrealloc
	mov	qword ptr [rip + frp],  rax
	mov	rcx, qword ptr [rip + n_frp]
	shl	rcx, 4
	pcmpeqd	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx - 0x10], xmm0
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_277:
	mov	esi, OFFSET FLAT:label_298
	mov	rdi, rbp
	call	strspn
	mov	rdi, rbp
	mov	rsi, rax
	call	xstrndup
	mov	rbx, rax
	mov	eax, dword ptr [rsp + 0x10]
	xor	edi, edi
	test	al, 4
	jne	.label_316
	mov	esi, OFFSET FLAT:label_320
	jmp	.label_321
.label_290:
	mov	eax, dword ptr [rsp + 0x10]
	xor	edi, edi
	test	al, 4
	jne	.label_323
	mov	esi, OFFSET FLAT:label_328
	jmp	.label_329
.label_316:
	mov	esi, OFFSET FLAT:label_333
.label_321:
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
	mov	rdi, rbx
	call	free
	mov	edi, 1
	call	usage
.label_323:
	mov	esi, OFFSET FLAT:label_352
.label_329:
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, r15
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
	mov	edi, 1
	call	usage
.label_284:
	mov	eax, dword ptr [rsp + 0x10]
	xor	edi, edi
	test	al, 4
	jne	.label_276
	mov	esi, OFFSET FLAT:label_282
	jmp	.label_283
.label_348:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_286
	jmp	.label_283
.label_272:
	call	xalloc_die
.label_319:
	mov	eax, dword ptr [rsp + 0x10]
	xor	edi, edi
	test	al, 4
	jne	.label_289
	mov	esi, OFFSET FLAT:label_292
	jmp	.label_293
.label_332:
	mov	eax, dword ptr [rsp + 0x10]
	xor	edi, edi
	test	al, 4
	jne	.label_295
	mov	esi, OFFSET FLAT:label_282
	jmp	.label_293
.label_291:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_302
	jmp	.label_283
.label_276:
	mov	esi, OFFSET FLAT:label_306
.label_283:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	jmp	.label_309
.label_289:
	mov	esi, OFFSET FLAT:label_314
	jmp	.label_293
.label_295:
	mov	esi, OFFSET FLAT:label_306
.label_293:
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
.label_309:
	call	error
	mov	edi, 1
	call	usage
.label_350:
	call	xalloc_die
.label_312:
	call	xalloc_die
.label_335:
	call	xalloc_die
.label_285:
	mov	eax, dword ptr [rsp + 0x10]
	xor	edi, edi
	test	al, 4
	jne	.label_299
	mov	esi, OFFSET FLAT:label_342
	jmp	.label_283
.label_330:
	call	xalloc_die
.label_299:
	mov	esi, OFFSET FLAT:label_345
	jmp	.label_283
.label_300:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4045d6
	.globl sub_4045d6
	.type sub_4045d6, @function
sub_4045d6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4045e0
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_26]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_27]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_28]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_362
	test	rdx, rdx
	je	.label_362
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_362:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40464e
	.globl sub_40464e
	.type sub_40464e, @function
sub_40464e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x404650

	.globl memchr2
	.type memchr2, @function
memchr2:
	push	r14
	push	rbx
	movzx	esi, sil
	movzx	r8d, dl
	cmp	esi, r8d
	jne	.label_369
	mov	rdx, rcx
	pop	rbx
	pop	r14
	jmp	memchr
.label_369:
	mov	eax, edi
	and	eax, 7
	test	rcx, rcx
	je	.label_363
	nop	word ptr cs:[rax + rax]
.label_368:
	test	rax, rax
	je	.label_363
	movzx	eax, byte ptr [rdi]
	cmp	eax, esi
	je	.label_365
	cmp	eax, r8d
	je	.label_365
	inc	rdi
	mov	eax, edi
	and	eax, 7
	cmp	rcx, 1
	lea	rcx, [rcx - 1]
	jne	.label_368
.label_363:
	mov	eax, esi
	shl	eax, 8
	or	eax, esi
	mov	edx, r8d
	shl	edx, 8
	or	edx, r8d
	cmp	rcx, 8
	jb	.label_364
	mov	r10, rax
	shl	r10, 0x10
	or	r10, rax
	mov	rax, rdx
	shl	rax, 0x10
	or	rax, rdx
	mov	r9, r10
	shl	r9, 0x20
	or	r9, r10
	mov	r11, rax
	shl	r11, 0x20
	or	r11, rax
	movabs	r14, 0x8080808080808080
	movabs	r10, 0xfefefefefefefeff
	nop	word ptr cs:[rax + rax]
.label_370:
	mov	rdx, rcx
	mov	rbx, rdi
	mov	rax, qword ptr [rbx]
	mov	rcx, rax
	xor	rcx, r9
	xor	rax, r11
	lea	rdi, [rcx + r10]
	xor	rcx, r14
	and	rcx, rdi
	lea	rdi, [rax + r10]
	xor	rax, r14
	and	rax, rdi
	or	rax, rcx
	lea	rdi, [rbx + 8]
	lea	rcx, [rdx - 8]
	and	rax, r14
	cmovne	rdi, rbx
	cmovne	rcx, rdx
	test	rax, rax
	jne	.label_364
	cmp	rcx, 7
	ja	.label_370
.label_364:
	xor	eax, eax
	test	rcx, rcx
	je	.label_366
	xor	eax, eax
.label_367:
	movzx	edx, byte ptr [rdi]
	cmp	edx, esi
	je	.label_365
	cmp	edx, r8d
	je	.label_365
	inc	rdi
	dec	rcx
	jne	.label_367
	jmp	.label_366
.label_365:
	mov	rax, rdi
.label_366:
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x40477d
	.globl sub_40477d
	.type sub_40477d, @function
sub_40477d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404780
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x40478e
	.globl sub_40478e
	.type sub_40478e, @function
sub_40478e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x404790

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
	js	.label_374
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_377
	cmp	r12d, 0x7fffffff
	je	.label_372
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
	mov	qword ptr [rip + slotvec],  r14
	jne	.label_375
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_375:
	movsxd	rax, dword ptr [rip + nslots]
	movsxd	rbp, r15d
	mov	rdx, rbp
	sub	rdx, rax
	shl	rax, 4
	mov	rdi, r14
	add	rdi, rax
	shl	rdx, 4
	xor	esi, esi
	call	memset
	mov	dword ptr [rip + nslots],  ebp
	mov	rbp, r14
	mov	rbx, qword ptr [rsp + 0x10]
	mov	r15, qword ptr [rsp + 8]
.label_377:
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
	jbe	.label_373
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_376
.label_373:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_371
	mov	rdi, r14
	call	free
.label_371:
	mov	rdi, r15
	call	xmalloc
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
.label_376:
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
.label_374:
	call	abort
.label_372:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40494d
	.globl sub_40494d
	.type sub_40494d, @function
sub_40494d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404950
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_26]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_27]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_28]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_378
	test	rsi, rsi
	je	.label_378
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_378:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4049c0

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
	je	.label_379
	mov	edx, OFFSET FLAT:label_389
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_395
.label_379:
	mov	edx, OFFSET FLAT:label_396
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_395:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_382
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
	mov	esi, OFFSET FLAT:label_397
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_384
	jmp	qword ptr [(r12 * 8) + label_385]
.label_549:
	add	rsp, 8
	jmp	.label_383
.label_384:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_392
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
	jmp	.label_383
.label_550:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_380
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
.label_551:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_393
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
.label_552:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_390
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
.label_553:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_387
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
	jmp	.label_383
.label_554:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_386
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
	jmp	.label_383
.label_555:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_388
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
	jmp	.label_383
.label_556:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_391
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
	jmp	.label_383
.label_558:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_394
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
	jmp	.label_383
.label_557:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_381
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
.label_383:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x404d18
	.globl sub_404d18
	.type sub_404d18, @function
sub_404d18:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404d20

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_398
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_398
	test	byte ptr [rbx + 1], 1
	je	.label_398
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_398:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	16
	#Procedure 0x404d53
	.globl sub_404d53
	.type sub_404d53, @function
sub_404d53:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404d60
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x404d6a
	.globl sub_404d6a
	.type sub_404d6a, @function
sub_404d6a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404d70

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_409
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_411
.label_409:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_411:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_399
	cmp	r10d, 0x29
	jae	.label_408
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_410
.label_408:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_410:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_399
	cmp	r10d, 0x29
	jae	.label_406
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_407
.label_406:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_407:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_399
	cmp	r10d, 0x29
	jae	.label_404
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_405
.label_404:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_405:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_399
	cmp	r10d, 0x29
	jae	.label_402
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_403
.label_402:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_403:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_399
	cmp	r10d, 0x29
	jae	.label_400
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_401
.label_400:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_401:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_399
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_399
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_399
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_399
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_399:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	16
	#Procedure 0x404f52
	.globl sub_404f52
	.type sub_404f52, @function
sub_404f52:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404f60

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_26]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_27]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_28]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	or	byte ptr [rsp + 0xf], 4
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	.section	.text
	.align	16
	#Procedure 0x404fb5
	.globl sub_404fb5
	.type sub_404fb5, @function
sub_404fb5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404fc0

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r15, rsi
	mov	ebp, edi
	mov	rdi, qword ptr [r15]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_12
	call	setlocale
	mov	edi, OFFSET FLAT:label_427
	mov	esi, OFFSET FLAT:label_443
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_427
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	dword ptr [rip + operating_mode],  0
	mov	byte ptr [rip + suppress_non_delimited],  0
	mov	byte ptr [rip + delim],  0
	mov	byte ptr [rip + have_read_stdin],  0
	xor	r12d, r12d
	jmp	.label_414
.label_446:
	mov	dword ptr [rip + operating_mode],  1
	mov	r14, qword ptr [rip + optarg]
	nop	dword ptr [rax]
.label_414:
	mov	edx, OFFSET FLAT:label_412
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, ebp
	mov	rsi, r15
	call	getopt_long
	cmp	eax, 0x61
	jle	.label_441
	add	eax, -0x62
	cmp	eax, 0x1f
	ja	.label_434
	jmp	qword ptr [(rax * 8) + label_445]
.label_601:
	cmp	dword ptr [rip + operating_mode],  0
	je	.label_446
	jmp	.label_421
.label_602:
	mov	rcx, qword ptr [rip + optarg]
	movzx	eax, byte ptr [rcx]
	test	al, al
	je	.label_423
	cmp	byte ptr [rcx + 1], 0
	jne	.label_415
.label_423:
	mov	byte ptr [rip + delim],  al
	mov	r12b, 1
	jmp	.label_414
.label_603:
	cmp	dword ptr [rip + operating_mode],  0
	jne	.label_421
	mov	dword ptr [rip + operating_mode],  2
	mov	r14, qword ptr [rip + optarg]
	jmp	.label_414
.label_604:
	mov	byte ptr [rip + suppress_non_delimited],  1
	jmp	.label_414
.label_605:
	mov	byte ptr [rip + line_delim],  1
	jmp	.label_414
.label_606:
	mov	byte ptr [rip + output_delimiter_specified],  1
	mov	rbx, qword ptr [rip + optarg]
	cmp	byte ptr [rbx], 0
	mov	eax, 1
	je	.label_442
	mov	rdi, rbx
	call	strlen
.label_442:
	mov	qword ptr [rip + output_delimiter_length],  rax
	mov	rdi, rbx
	call	xstrdup
	mov	qword ptr [rip + output_delimiter_string],  rax
	jmp	.label_414
.label_607:
	mov	byte ptr [rip + complement],  1
	jmp	.label_414
.label_441:
	cmp	eax, -1
	jne	.label_422
	mov	eax, dword ptr [rip + operating_mode]
	test	eax, eax
	je	.label_425
	test	r12b, r12b
	je	.label_430
	cmp	eax, 2
	jne	.label_432
.label_430:
	cmp	eax, 2
	je	.label_435
	test	byte ptr [rip + suppress_non_delimited],  1
	jne	.label_437
.label_435:
	xor	ecx, ecx
	cmp	eax, 2
	setne	cl
	shl	ecx, 2
	movzx	eax, byte ptr [rip + complement]
	lea	esi, [rcx + rax*2]
	mov	rdi, r14
	call	set_fields
	test	r12b, r12b
	jne	.label_447
	mov	byte ptr [rip + delim],  9
.label_447:
	cmp	qword ptr [rip + output_delimiter_string],  0
	jne	.label_413
	mov	al, byte ptr [rip + delim]
	mov	byte ptr [rip + main.dummy],  al
	mov	byte ptr [rip + label_416],  0
	mov	qword ptr [rip + output_delimiter_string], OFFSET FLAT:main.dummy
	mov	qword ptr [rip + output_delimiter_length],  1
.label_413:
	mov	eax, dword ptr [rip + optind]
	cmp	eax, ebp
	jne	.label_428
	mov	edi, OFFSET FLAT:label_417
	call	cut_file
	mov	bl, al
	jmp	.label_436
.label_428:
	mov	bl, 1
	jge	.label_436
	mov	bl, 1
	nop	word ptr [rax + rax]
.label_444:
	cdqe	
	mov	rdi, qword ptr [r15 + rax*8]
	call	cut_file
	and	bl, al
	mov	eax, dword ptr [rip + optind]
	inc	eax
	mov	dword ptr [rip + optind],  eax
	cmp	eax, ebp
	jl	.label_444
.label_436:
	cmp	byte ptr [rip + have_read_stdin],  1
	jne	.label_418
	mov	rdi, qword ptr [rip + stdin]
	call	rpl_fclose
	cmp	eax, -1
	jne	.label_418
	call	__errno_location
	mov	esi, dword ptr [rax]
	xor	ebx, ebx
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_417
	xor	eax, eax
	call	error
.label_418:
	not	bl
	and	bl, 1
	movzx	eax, bl
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_422:
	cmp	eax, 0xffffff7d
	je	.label_431
	cmp	eax, 0xffffff7e
	jne	.label_434
	xor	edi, edi
	call	usage
.label_431:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	esi, OFFSET FLAT:label_96
	mov	edx, OFFSET FLAT:label_93
	mov	r8d, OFFSET FLAT:label_438
	mov	r9d, OFFSET FLAT:label_439
	mov	eax, 0
	push	0
	push	OFFSET FLAT:label_440
	call	version_etc
	add	rsp, 0x10
	xor	edi, edi
	call	exit
.label_434:
	mov	edi, 1
	call	usage
.label_421:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_419
	jmp	.label_420
.label_425:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_424
	jmp	.label_420
.label_432:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_426
	jmp	.label_420
.label_437:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_429
	jmp	.label_420
.label_415:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_433
.label_420:
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
.label_451:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_452
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_449
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_453
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	.section	.text
	.align	16
	#Procedure 0x405331

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_448
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_451
	cmp	dword ptr [rbp], 0x20
	jne	.label_451
.label_448:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_450
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_450:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_449:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_454
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4053b0
	.globl reset_fields
	.type reset_fields, @function
reset_fields:

	push	rax
	mov	qword ptr [rip + n_frp],  0
	mov	qword ptr [rip + n_frp_allocated],  0
	mov	rdi, qword ptr [rip + frp]
	call	free
	mov	qword ptr [rip + frp],  0
	pop	rax
	ret	
	.section	.text
	.align	16
	#Procedure 0x4053e0
	.globl quote_mem
	.type quote_mem, @function
quote_mem:

	mov	rax, rsi
	mov	rdx, rdi
	xor	edi, edi
	mov	ecx, OFFSET FLAT:quote_quoting_options
	mov	rsi, rdx
	mov	rdx, rax
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x4053f8
	.globl sub_4053f8
	.type sub_4053f8, @function
sub_4053f8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405400

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_455
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_455:
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
	#Procedure 0x405483
	.globl sub_405483
	.type sub_405483, @function
sub_405483:

	nop	word ptr cs:[rax + rax]
.label_456:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x405495
	.globl sub_405495
	.type sub_405495, @function
sub_405495:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4054a0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_456
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_457
	test	rax, rax
	je	.label_456
.label_457:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4054d0

	.globl cut_file
	.type cut_file, @function
cut_file:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	rbx, rdi
	cmp	byte ptr [rbx], 0x2d
	jne	.label_507
	cmp	byte ptr [rbx + 1], 0
	je	.label_513
.label_507:
	mov	esi, OFFSET FLAT:label_482
	mov	rdi, rbx
	call	fopen
	mov	r15, rax
	test	r15, r15
	jne	.label_515
	jmp	.label_459
.label_513:
	mov	byte ptr [rip + have_read_stdin],  1
	mov	r15, qword ptr [rip + stdin]
.label_515:
	mov	esi, 2
	mov	rdi, r15
	call	fadvise
	mov	eax, dword ptr [rip + operating_mode]
	mov	rcx, qword ptr [rip + frp]
	mov	qword ptr [rip + current_rp],  rcx
	cmp	eax, 1
	mov	qword ptr [rsp + 0x20], rbx
	jne	.label_468
	xor	r14d, r14d
	jmp	.label_496
	.section	.text
	.align	16
	#Procedure 0x405548
	.globl sub_405548
	.type sub_405548, @function
sub_405548:

	nop	dword ptr [rax + rax]
.label_485:
	mov	rax, qword ptr [rip + frp]
	mov	qword ptr [rip + current_rp],  rax
.label_496:
	xor	ebx, ebx
	xor	r12d, r12d
	jmp	.label_476
.label_466:
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], bpl
	mov	r12b, r13b
	nop	word ptr cs:[rax + rax]
.label_476:
	mov	rax, qword ptr [r15 + 8]
	cmp	rax, qword ptr [r15 + 0x10]
	jae	.label_492
	lea	rcx, [rax + 1]
	mov	qword ptr [r15 + 8], rcx
	movzx	ebp, byte ptr [rax]
.label_478:
	movzx	eax, byte ptr [rip + line_delim]
	test	al, al
	mov	esi, 0xa
	cmovne	esi, r14d
	cmp	ebp, esi
	je	.label_497
	cmp	ebp, -1
	je	.label_503
	inc	rbx
	mov	rax, qword ptr [rip + current_rp]
	cmp	rbx, qword ptr [rax + 8]
	jbe	.label_505
	add	rax, 0x10
	mov	qword ptr [rip + current_rp],  rax
.label_505:
	mov	rax, qword ptr [rax]
	cmp	rax, rbx
	ja	.label_476
	cmp	byte ptr [rip + output_delimiter_specified],  1
	jne	.label_510
	mov	r13b, 1
	test	r12b, 1
	je	.label_464
	cmp	rbx, rax
	jne	.label_464
	mov	rdi, qword ptr [rip + output_delimiter_string]
	mov	rdx, qword ptr [rip + output_delimiter_length]
	mov	rcx, qword ptr [rip + stdout]
	mov	esi, 1
	call	fwrite_unlocked
	jmp	.label_464
.label_510:
	mov	r13d, r12d
.label_464:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jb	.label_466
	movzx	esi, bpl
	call	__overflow
	mov	r12b, r13b
	jmp	.label_476
.label_492:
	mov	rdi, r15
	call	__uflow
	mov	ebp, eax
	jmp	.label_478
	.section	.text
	.align	16
	#Procedure 0x40564f
	.globl sub_40564f
	.type sub_40564f, @function
sub_40564f:

	nop	
.label_497:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_511
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], bpl
	jmp	.label_485
.label_511:
	movzx	esi, bpl
	call	__overflow
	jmp	.label_485
.label_468:
	mov	rax, qword ptr [r15 + 8]
	cmp	rax, qword ptr [r15 + 0x10]
	jae	.label_491
	lea	rcx, [rax + 1]
	mov	qword ptr [r15 + 8], rcx
	movzx	edi, byte ptr [rax]
.label_495:
	mov	rsi, r15
	call	ungetc
	mov	rax, qword ptr [rip + current_rp]
	cmp	qword ptr [rax], 1
	seta	al
	xor	al, byte ptr [rip + suppress_non_delimited]
	xor	al, 1
	mov	byte ptr [rsp + 0x17], al
	xor	r13d, r13d
	mov	ebx, 1
	xor	r14d, r14d
	xor	ebp, ebp
	jmp	.label_473
.label_503:
	test	rbx, rbx
	mov	rbx, qword ptr [rsp + 0x20]
	je	.label_498
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_462
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], sil
	jmp	.label_498
.label_517:
	add	rax, 0x10
	mov	qword ptr [rip + current_rp],  rax
	nop	word ptr [rax + rax]
.label_473:
	cmp	rbx, 1
	setne	al
	or	al, byte ptr [rsp + 0x17]
	test	al, 1
	je	.label_463
	mov	rax, qword ptr [rip + current_rp]
	jmp	.label_467
	.section	.text
	.align	16
	#Procedure 0x40572b
	.globl sub_40572b
	.type sub_40572b, @function
sub_40572b:

	nop	dword ptr [rax + rax]
.label_509:
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], sil
.label_463:
	movzx	r8d, byte ptr [rip + delim]
	movzx	eax, byte ptr [rip + line_delim]
	test	al, al
	mov	r9d, 0xa
	cmovne	r9d, r13d
	mov	qword ptr [rsp], r15
	mov	edi, OFFSET FLAT:field_1_buffer
	mov	esi, OFFSET FLAT:field_1_bufsize
	xor	edx, edx
	mov	rcx, -1
	call	getndelim2
	mov	rbx, rax
	test	rbx, rbx
	js	.label_488
	test	rbx, rbx
	je	.label_490
	mov	rdi, qword ptr [rip + field_1_buffer]
	movzx	eax, byte ptr [rdi + rbx - 1]
	cmp	al, byte ptr [rip + delim]
	je	.label_494
	cmp	byte ptr [rip + suppress_non_delimited],  1
	je	.label_463
	mov	rcx, qword ptr [rip + stdout]
	mov	esi, 1
	mov	rdx, rbx
	call	fwrite_unlocked
	mov	rax, qword ptr [rip + field_1_buffer]
	movsx	eax, byte ptr [rax + rbx - 1]
	movzx	ecx, byte ptr [rip + line_delim]
	test	cl, cl
	mov	esi, 0xa
	cmovne	esi, r13d
	cmp	eax, esi
	je	.label_463
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jb	.label_509
	call	__overflow
	jmp	.label_463
	.section	.text
	.align	16
	#Procedure 0x4057fd
	.globl sub_4057fd
	.type sub_4057fd, @function
sub_4057fd:

	nop	dword ptr [rax]
.label_494:
	mov	rax, qword ptr [rip + current_rp]
	cmp	qword ptr [rax], 1
	ja	.label_458
	dec	rbx
	mov	rcx, qword ptr [rip + stdout]
	mov	esi, 1
	mov	rdx, rbx
	call	fwrite_unlocked
	movzx	eax, byte ptr [rip + delim]
	mov	cl, byte ptr [rip + line_delim]
	test	cl, cl
	mov	ecx, 0xa
	cmovne	ecx, r13d
	cmp	eax, ecx
	jne	.label_470
	mov	rax, qword ptr [r15 + 8]
	cmp	rax, qword ptr [r15 + 0x10]
	jae	.label_516
	lea	rcx, [rax + 1]
	mov	qword ptr [r15 + 8], rcx
	movzx	edi, byte ptr [rax]
.label_514:
	mov	rsi, r15
	call	ungetc
.label_470:
	mov	r14b, 1
.label_458:
	mov	rax, qword ptr [rip + current_rp]
	xor	ebp, ebp
	cmp	qword ptr [rax + 8], 1
	ja	.label_486
	add	rax, 0x10
	mov	qword ptr [rip + current_rp],  rax
.label_486:
	mov	ebx, 2
.label_467:
	cmp	qword ptr [rax], rbx
	ja	.label_493
	mov	qword ptr [rsp + 0x18], rbx
	test	r14b, 1
	je	.label_479
	mov	rdi, qword ptr [rip + output_delimiter_string]
	mov	rdx, qword ptr [rip + output_delimiter_length]
	mov	rcx, qword ptr [rip + stdout]
	mov	esi, 1
	call	fwrite_unlocked
	jmp	.label_479
	.section	.text
	.align	16
	#Procedure 0x4058b9
	.globl sub_4058b9
	.type sub_4058b9, @function
sub_4058b9:

	nop	dword ptr [rax]
.label_461:
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], bl
	mov	ebp, ebx
.label_479:
	mov	rax, qword ptr [r15 + 8]
	cmp	rax, qword ptr [r15 + 0x10]
	jae	.label_506
	lea	rcx, [rax + 1]
	mov	qword ptr [r15 + 8], rcx
	movzx	ebx, byte ptr [rax]
.label_474:
	movzx	eax, byte ptr [rip + delim]
	mov	r14b, 1
	cmp	ebx, eax
	je	.label_471
	movzx	ecx, byte ptr [rip + line_delim]
	test	cl, cl
	mov	ecx, 0xa
	cmovne	ecx, r13d
	cmp	ebx, -1
	je	.label_471
	cmp	ebx, ecx
	je	.label_471
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jb	.label_461
	movzx	esi, bl
	call	__overflow
	mov	ebp, ebx
	jmp	.label_479
.label_506:
	mov	rdi, r15
	call	__uflow
	mov	ebx, eax
	jmp	.label_474
	.section	.text
	.align	16
	#Procedure 0x405933
	.globl sub_405933
	.type sub_405933, @function
sub_405933:

	nop	word ptr cs:[rax + rax]
.label_471:
	mov	r12d, ebp
	mov	ebp, ebx
	mov	rbx, qword ptr [rsp + 0x18]
	jmp	.label_489
.label_484:
	mov	rdi, r15
	call	__uflow
	mov	ebp, eax
	jmp	.label_481
	.section	.text
	.align	16
	#Procedure 0x405958
	.globl sub_405958
	.type sub_405958, @function
sub_405958:

	nop	dword ptr [rax + rax]
.label_493:
	mov	r12d, ebp
	mov	rax, qword ptr [r15 + 8]
	cmp	rax, qword ptr [r15 + 0x10]
	jae	.label_484
	lea	rcx, [rax + 1]
	mov	qword ptr [r15 + 8], rcx
	movzx	ebp, byte ptr [rax]
.label_481:
	movzx	eax, byte ptr [rip + delim]
	cmp	ebp, eax
	je	.label_489
	movzx	ecx, byte ptr [rip + line_delim]
	test	cl, cl
	mov	ecx, 0xa
	cmovne	ecx, r13d
	cmp	ebp, -1
	je	.label_489
	cmp	ebp, ecx
	jne	.label_493
	nop	
.label_489:
	movzx	ecx, al
	mov	dl, byte ptr [rip + line_delim]
	test	dl, dl
	mov	edx, 0xa
	cmovne	edx, r13d
	cmp	ebp, ecx
	jne	.label_504
	cmp	ecx, edx
	jne	.label_504
	mov	rax, qword ptr [r15 + 8]
	cmp	rax, qword ptr [r15 + 0x10]
	jae	.label_487
	lea	rcx, [rax + 1]
	mov	qword ptr [r15 + 8], rcx
	movzx	edi, byte ptr [rax]
.label_508:
	mov	rsi, r15
	call	ungetc
	mov	al, byte ptr [rip + delim]
.label_504:
	movzx	eax, al
	cmp	ebp, eax
	jne	.label_512
	inc	rbx
	mov	rax, qword ptr [rip + current_rp]
	cmp	rbx, qword ptr [rax + 8]
	jbe	.label_473
	jmp	.label_517
	.section	.text
	.align	16
	#Procedure 0x405a03
	.globl sub_405a03
	.type sub_405a03, @function
sub_405a03:

	nop	word ptr cs:[rax + rax]
.label_512:
	mov	cl, byte ptr [rip + line_delim]
	test	cl, cl
	mov	esi, 0xa
	cmovne	esi, r13d
	cmp	ebp, -1
	sete	dl
	je	.label_502
	cmp	ebp, esi
	jne	.label_473
.label_502:
	mov	rcx, rbx
	test	r14b, 1
	mov	rbx, qword ptr [rsp + 0x20]
	jne	.label_475
	cmp	rcx, 1
	jne	.label_475
	test	byte ptr [rip + suppress_non_delimited],  1
	jne	.label_477
.label_475:
	cmp	r12d, esi
	jne	.label_480
	cmp	ebp, esi
	je	.label_480
	cmp	eax, r12d
	jne	.label_477
.label_480:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_483
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], sil
.label_477:
	test	dl, dl
	jne	.label_498
	mov	rax, qword ptr [rip + frp]
	mov	qword ptr [rip + current_rp],  rax
	xor	r14d, r14d
	mov	ebx, 1
	jmp	.label_473
.label_487:
	mov	rdi, r15
	call	__uflow
	mov	edi, eax
	cmp	edi, -1
	jne	.label_508
	movzx	eax, byte ptr [rip + delim]
	mov	cl, byte ptr [rip + line_delim]
	test	cl, cl
	mov	esi, 0xa
	cmovne	esi, r13d
	mov	ebp, 0xffffffff
	mov	dl, 1
	jmp	.label_502
.label_483:
	mov	r14d, edx
	call	__overflow
	mov	edx, r14d
	jmp	.label_477
.label_516:
	mov	rdi, r15
	call	__uflow
	mov	edi, eax
	cmp	edi, -1
	jne	.label_514
	jmp	.label_458
.label_488:
	mov	rdi, qword ptr [rip + field_1_buffer]
	call	free
	mov	qword ptr [rip + field_1_buffer],  0
	test	byte ptr [r15], 0x30
	mov	rbx, qword ptr [rsp + 0x20]
	je	.label_460
.label_498:
	test	byte ptr [r15], 0x20
	jne	.label_459
	cmp	byte ptr [rbx], 0x2d
	jne	.label_469
	cmp	byte ptr [rbx + 1], 0
	je	.label_472
.label_469:
	mov	rdi, r15
	call	rpl_fclose
	mov	bpl, 1
	cmp	eax, -1
	jne	.label_465
.label_459:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbx
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_453
	xor	eax, eax
	mov	esi, r14d
	call	error
.label_465:
	mov	eax, ebp
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_472:
	mov	rdi, r15
	call	clearerr_unlocked
	mov	bpl, 1
	jmp	.label_465
.label_491:
	mov	rdi, r15
	call	__uflow
	mov	edi, eax
	cmp	edi, -1
	jne	.label_495
	jmp	.label_498
.label_462:
	call	__overflow
	jmp	.label_498
.label_490:
	mov	edi, OFFSET FLAT:label_499
	mov	esi, OFFSET FLAT:label_500
	mov	edx, 0x149
	mov	ecx, OFFSET FLAT:label_501
	call	__assert_fail
.label_460:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x405bc9
	.globl sub_405bc9
	.type sub_405bc9, @function
sub_405bc9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405bd0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_518
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_453
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
.label_521:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x405c05
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_520
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_522
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_523
	call	free
	xor	eax, eax
	jmp	.label_519
.label_522:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x405c3c
	.globl sub_405c3c
	.type sub_405c3c, @function
sub_405c3c:

	nop	word ptr cs:[rax + rax]
.label_520:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_521
	mov	qword ptr [rsi], rbx
.label_523:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_519
	test	rax, rax
	je	.label_521
.label_519:
	pop	rbx
	ret	
.label_524:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405c75
	.globl sub_405c75
	.type sub_405c75, @function
sub_405c75:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405c7d
	.globl quotearg_style
	.type quotearg_style, @function
quotearg_style:

	sub	rsp, 0x78
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x30], 0
	cmp	edi, 0xa
	je	.label_524
	mov	dword ptr [rsp + 0x40], edi
	mov	eax, dword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x74], eax
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rsp + 0x64], xmm2
	movups	xmmword ptr [rsp + 0x54], xmm1
	movups	xmmword ptr [rsp + 0x44], xmm0
	lea	rcx, [rsp + 0x40]
	xor	edi, edi
	mov	rdx, -1
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
	.section	.text
	.align	16
	#Procedure 0x405ce0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x405ce8
	.globl sub_405ce8
	.type sub_405ce8, @function
sub_405ce8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405cf0

	.globl freadseek
	.type freadseek, @function
freadseek:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x1008
	mov	rbx, rsi
	mov	r14, rdi
	xor	r15d, r15d
	test	rbx, rbx
	je	.label_527
	mov	rdi, r14
	call	freadahead
	mov	rbp, rax
	lea	r12, [rsp]
	nop	word ptr cs:[rax + rax]
.label_531:
	test	rbp, rbp
	je	.label_530
	mov	rdi, r14
	mov	rsi, r12
	call	freadptr
	test	rax, rax
	je	.label_525
	mov	rax, qword ptr [rsp]
	test	rax, rax
	je	.label_525
	cmp	rax, rbx
	cmovae	rax, rbx
	add	qword ptr [r14 + 8], rax
	sub	rbx, rax
	je	.label_527
	sub	rbp, rax
	je	.label_530
.label_525:
	mov	rdi, r14
	call	fgetc
	cmp	eax, -1
	je	.label_526
	xor	eax, eax
	mov	rcx, rbx
	dec	rcx
	setne	al
	sub	rbp, rax
	dec	rbx
	jne	.label_531
	jmp	.label_527
.label_530:
	mov	rdi, r14
	call	fileno
	test	eax, eax
	js	.label_529
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	test	rax, rax
	js	.label_529
	mov	edx, 1
	mov	rdi, r14
	mov	rsi, rbx
	call	rpl_fseeko
	mov	r15d, eax
	jmp	.label_527
.label_529:
	mov	r12d, 0x1000
	lea	r15, [rsp]
	xor	r13d, r13d
	nop	word ptr cs:[rax + rax]
.label_528:
	cmp	rbx, 0x1000
	mov	rbp, rbx
	cmova	rbp, r12
	mov	esi, 1
	mov	rdi, r15
	mov	rdx, rbp
	mov	rcx, r14
	call	fread
	cmp	rax, rbp
	mov	rcx, rbp
	cmovb	rcx, r13
	cmp	rax, rbp
	jb	.label_526
	sub	rbx, rcx
	jne	.label_528
	xor	r15d, r15d
	jmp	.label_527
.label_526:
	mov	rdi, r14
	call	ferror
	neg	eax
	sbb	r15d, r15d
.label_527:
	mov	eax, r15d
	add	rsp, 0x1008
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405e3c
	.globl sub_405e3c
	.type sub_405e3c, @function
sub_405e3c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405e40

	.globl xmemdup
	.type xmemdup, @function
xmemdup:
	push	r15
	push	r14
	push	rbx
	mov	rbx, rsi
	mov	r14, rdi
	mov	rdi, rbx
	call	malloc
	mov	r15, rax
	test	rbx, rbx
	je	.label_532
	test	r15, r15
	je	.label_533
.label_532:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_533:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x405e7c
	.globl sub_405e7c
	.type sub_405e7c, @function
sub_405e7c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405e80
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_534
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_535
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_537
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_93
	mov	ecx, OFFSET FLAT:label_94
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_536
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x405ef4
	.globl sub_405ef4
	.type sub_405ef4, @function
sub_405ef4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405f00
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
	#Procedure 0x405f0f
	.globl sub_405f0f
	.type sub_405f0f, @function
sub_405f0f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x405f10
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x405f21
	.globl sub_405f21
	.type sub_405f21, @function
sub_405f21:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405f30
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_538
	test	rax, rax
	je	.label_539
.label_538:
	pop	rbx
	ret	
.label_539:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x405f4a
	.globl sub_405f4a
	.type sub_405f4a, @function
sub_405f4a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405f50
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
	#Procedure 0x405f83
	.globl sub_405f83
	.type sub_405f83, @function
sub_405f83:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405f90
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_540:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_540
	jmp	version_etc_arn
	.section	.text
	.align	16
	#Procedure 0x405fb1
	.globl sub_405fb1
	.type sub_405fb1, @function
sub_405fb1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405fc0
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
	#Procedure 0x405ff6
	.globl sub_405ff6
	.type sub_405ff6, @function
sub_405ff6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406065
	.globl sub_406065
	.type sub_406065, @function
sub_406065:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406072
	.globl sub_406072
	.type sub_406072, @function
sub_406072:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406096
	.globl sub_406096
	.type sub_406096, @function
sub_406096:

	nop	word ptr cs:[rax + rax]
