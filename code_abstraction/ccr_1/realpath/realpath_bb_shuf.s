	.section	.text
	.align	16
	#Procedure 0x401579
	.globl sub_401579
	.type sub_401579, @function
sub_401579:

	hlt	
	.section	.text
	.align	16
	#Procedure 0x40157a
	.globl sub_40157a
	.type sub_40157a, @function
sub_40157a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4015b2
	.globl sub_4015b2
	.type sub_4015b2, @function
sub_4015b2:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4015fa
	.globl sub_4015fa
	.type sub_4015fa, @function
sub_4015fa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40161c
	.globl sub_40161c
	.type sub_40161c, @function
sub_40161c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40162d
	.globl sub_40162d
	.type sub_40162d, @function
sub_40162d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401646
	.globl sub_401646
	.type sub_401646, @function
sub_401646:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401650
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
	#Procedure 0x40165f
	.globl sub_40165f
	.type sub_40165f, @function
sub_40165f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401660

	.globl hash_get_n_buckets_used
	.type hash_get_n_buckets_used, @function
hash_get_n_buckets_used:
	mov	rax, qword ptr [rdi + 0x18]
	ret	
	.section	.text
	.align	16
	#Procedure 0x401665
	.globl sub_401665
	.type sub_401665, @function
sub_401665:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401670
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	add	edi, -0x20
	cmp	edi, 0x5f
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x40167a
	.globl sub_40167a
	.type sub_40167a, @function
sub_40167a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401680

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_10:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_9
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_11
	.section	.text
	.align	16
	#Procedure 0x4016a9
	.globl sub_4016a9
	.type sub_4016a9, @function
sub_4016a9:

	nop	dword ptr [rax]
.label_9:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_11:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_12
	inc	r9
	cmp	r9, 0xa
	jb	.label_10
.label_12:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	16
	#Procedure 0x4016df
	.globl sub_4016df
	.type sub_4016df, @function
sub_4016df:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4016e0

	.globl hash_get_max_bucket_length
	.type hash_get_max_bucket_length, @function
hash_get_max_bucket_length:
	mov	rcx, qword ptr [rdi]
	xor	eax, eax
	cmp	rcx, qword ptr [rdi + 8]
	jae	.label_13
	mov	rdx, qword ptr [rdi + 8]
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_15:
	cmp	qword ptr [rcx], 0
	je	.label_14
	xor	esi, esi
	mov	rdi, rcx
	nop	dword ptr [rax + rax]
.label_16:
	mov	rdi, qword ptr [rdi + 8]
	inc	rsi
	test	rdi, rdi
	jne	.label_16
	cmp	rsi, rax
	cmova	rax, rsi
.label_14:
	add	rcx, 0x10
	cmp	rcx, rdx
	jb	.label_15
.label_13:
	ret	
	.section	.text
	.align	16
	#Procedure 0x40172d
	.globl sub_40172d
	.type sub_40172d, @function
sub_40172d:

	nop	dword ptr [rax]
.label_18:
	mov	ecx, 1
.label_17:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	16
	#Procedure 0x401740
	.globl sub_401740
	.type sub_401740, @function
sub_401740:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401745

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_18
	test	rsi, rsi
	mov	ecx, 1
	je	.label_17
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_17
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x401780

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
	je	.label_21
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_19
	jmp	.label_20
.label_21:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_20
.label_19:
	mov	eax, 1
	test	bpl, bpl
	je	.label_20
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
.label_20:
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
	#Procedure 0x401808
	.globl sub_401808
	.type sub_401808, @function
sub_401808:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401810

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
	je	.label_22
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_24
	jmp	.label_23
.label_22:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_23
.label_24:
	mov	eax, 1
	test	bpl, bpl
	je	.label_23
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
.label_23:
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
	#Procedure 0x401889
	.globl sub_401889
	.type sub_401889, @function
sub_401889:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401890

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
	je	.label_27
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_26
	jmp	.label_25
.label_27:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_25
.label_26:
	mov	eax, 1
	test	bpl, bpl
	je	.label_25
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
.label_25:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
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
	je	.label_30
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_28
	jmp	.label_29
.label_30:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_29
.label_28:
	mov	eax, 1
	test	bpl, bpl
	je	.label_29
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_29:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40195f
	.globl sub_40195f
	.type sub_40195f, @function
sub_40195f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401960

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
	je	.label_31
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_33
	jmp	.label_32
.label_31:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_32
.label_33:
	mov	eax, 1
	test	bpl, bpl
	je	.label_32
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_32:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4019a9
	.globl sub_4019a9
	.type sub_4019a9, @function
sub_4019a9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4019b0

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
	je	.label_36
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_35
	jmp	.label_34
.label_36:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_34
.label_35:
	mov	eax, 1
	test	bpl, bpl
	je	.label_34
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_34:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4019f5
	.globl sub_4019f5
	.type sub_4019f5, @function
sub_4019f5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401a00

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_38
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_39
	jmp	.label_37
.label_38:
	mov	eax, 1
	test	cl, cl
	je	.label_37
.label_39:
	xor	eax, eax
.label_37:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x401a2f
	.globl sub_401a2f
	.type sub_401a2f, @function
sub_401a2f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401a30
	.globl hash_print_statistics
	.type hash_print_statistics, @function
hash_print_statistics:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r13, rsi
	mov	rbx, rdi
	call	hash_get_n_entries
	mov	rbp, rax
	mov	rdi, rbx
	call	hash_get_n_buckets
	mov	r12, rax
	mov	rdi, rbx
	call	hash_get_n_buckets_used
	mov	r15, rax
	mov	rdi, rbx
	call	hash_get_max_bucket_length
	mov	r14, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_40
	xor	eax, eax
	mov	rdi, r13
	mov	rcx, rbp
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_41
	xor	eax, eax
	mov	rdi, r13
	mov	rcx, r12
	call	__fprintf_chk
	movq	xmm1, r15
	movdqa	xmm2,  xmmword ptr [word ptr [rip + label_42]]
	punpckldq	xmm1, xmm2
	movapd	xmm3,  xmmword ptr [word ptr [rip + label_43]]
	subpd	xmm1, xmm3
	pshufd	xmm0, xmm1, 0x4e
	addpd	xmm0, xmm1
	mulsd	xmm0,  qword ptr [word ptr [rip + label_44]]
	movq	xmm1, r12
	punpckldq	xmm1, xmm2
	subpd	xmm1, xmm3
	pshufd	xmm2, xmm1, 0x4e
	addpd	xmm2, xmm1
	divsd	xmm0, xmm2
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_45
	mov	al, 1
	mov	rdi, r13
	mov	rcx, r15
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_46
	xor	eax, eax
	mov	rdi, r13
	mov	rcx, r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	__fprintf_chk
	.section	.text
	.align	16
	#Procedure 0x401b1c
	.globl sub_401b1c
	.type sub_401b1c, @function
sub_401b1c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401b20

	.globl canonicalize_filename_mode
	.type canonicalize_filename_mode, @function
canonicalize_filename_mode:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xe8
	mov	ebx, esi
	mov	rbp, rdi
	mov	qword ptr [rsp + 0x38], 0
	mov	r14d, ebx
	and	r14d, 3
	lea	eax, [rbx + 3]
	test	eax, r14d
	jne	.label_54
	test	rbp, rbp
	je	.label_54
	mov	al, byte ptr [rbp]
	cmp	al, 0x2f
	je	.label_62
	test	al, al
	jne	.label_65
	call	__errno_location
	mov	dword ptr [rax], 2
	jmp	.label_66
.label_54:
	call	__errno_location
	mov	dword ptr [rax], 0x16
.label_66:
	xor	ebp, ebp
.label_68:
	mov	rax, rbp
	add	rsp, 0xe8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_62:
	mov	edi, 0x1000
	call	xmalloc
	mov	rdi, rax
	mov	byte ptr [rdi], 0x2f
	lea	rax, [rdi + 0x1000]
	lea	r13, [rdi + 1]
	jmp	.label_79
.label_65:
	mov	r15, rbp
	call	xgetcwd
	xor	ebp, ebp
	test	rax, rax
	je	.label_68
	xor	esi, esi
	mov	rbp, rax
	mov	rdi, rbp
	call	__rawmemchr
	mov	rdi, rbp
	mov	r13, rax
	sub	r13, rdi
	cmp	r13, 0xfff
	jg	.label_92
	mov	esi, 0x1000
	call	xrealloc
	mov	rdi, rax
	add	r13, rdi
	add	rax, 0x1000
	jmp	.label_97
.label_92:
	mov	r13, rax
.label_97:
	mov	rbp, r15
.label_79:
	xor	r15d, r15d
	cmp	byte ptr [rbp], 0
	je	.label_53
	mov	ecx, ebx
	and	ecx, 4
	mov	dword ptr [rsp + 0x48], ecx
	mov	ecx, ebx
	and	ecx, 7
	mov	dword ptr [rsp + 0x4c], ecx
	xor	ecx, ecx
	cmp	r14d, 2
	setne	cl
	lea	ecx, [rcx + rcx*8 + 4]
	mov	dword ptr [rsp + 0x44], ecx
	xor	r15d, r15d
	and	bl, 3
	mov	rdx, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x18], rcx
	mov	dword ptr [rsp + 0x14], ecx
	mov	dword ptr [rsp + 0x2c], r14d
.label_49:
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp], r15
	mov	rbp, rdx
.label_86:
	lea	rdx, [rdi + 1]
	mov	r12, r13
	nop	word ptr cs:[rax + rax]
.label_99:
	dec	rbp
	mov	r15, rbp
	nop	word ptr cs:[rax + rax]
.label_48:
	cmp	byte ptr [r15 + 1], 0x2f
	lea	r15, [r15 + 1]
	je	.label_48
	mov	rbp, r15
	jmp	.label_71
.label_75:
	inc	rbp
.label_71:
	movzx	ecx, byte ptr [rbp]
	test	cl, cl
	je	.label_73
	cmp	cl, 0x2f
	jne	.label_75
.label_73:
	mov	r14, rbp
	sub	r14, r15
	cmp	r14, 1
	je	.label_78
	cmp	r14, 2
	jne	.label_80
	cmp	byte ptr [r15], 0x2e
	jne	.label_84
	cmp	byte ptr [r15 + 1], 0x2e
	jne	.label_84
	cmp	r12, rdx
	jbe	.label_88
	dec	r12
	mov	rcx, r12
	nop	word ptr [rax + rax]
.label_93:
	mov	r12, rcx
	cmp	r12, rdi
	jbe	.label_88
	lea	rcx, [r12 - 1]
	cmp	byte ptr [r12 - 1], 0x2f
	jne	.label_93
	jmp	.label_88
	.section	.text
	.align	16
	#Procedure 0x401cd7
	.globl sub_401cd7
	.type sub_401cd7, @function
sub_401cd7:

	nop	word ptr [rax + rax]
.label_78:
	cmp	byte ptr [r15], 0x2e
	jne	.label_84
.label_88:
	cmp	byte ptr [rbp], 0
	jne	.label_99
	jmp	.label_83
.label_80:
	test	r14, r14
	je	.label_83
.label_84:
	cmp	byte ptr [r12 - 1], 0x2f
	je	.label_102
	mov	byte ptr [r12], 0x2f
	inc	r12
.label_102:
	lea	rcx, [r12 + r14]
	cmp	rcx, rax
	jae	.label_50
	mov	qword ptr [rsp + 0x30], rax
	mov	qword ptr [rsp + 8], rdi
	jmp	.label_52
.label_50:
	sub	r12, rdi
	sub	rax, rdi
	lea	r13, [r14 + 1]
	cmp	r14, 0xfff
	mov	ecx, 0x1000
	cmovle	r13, rcx
	add	r13, rax
	mov	rsi, r13
	call	xrealloc
	add	r13, rax
	mov	qword ptr [rsp + 8], rax
	add	r12, rax
	mov	qword ptr [rsp + 0x30], r13
.label_52:
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r14
	call	memcpy
	lea	r13, [r12 + r14]
	mov	byte ptr [r12 + r14], 0
	cmp	dword ptr [rsp + 0x4c], 6
	je	.label_67
	cmp	dword ptr [rsp + 0x48], 0
	jne	.label_69
	mov	rdi, qword ptr [rsp + 8]
	lea	rsi, [rsp + 0x58]
	call	lstat
	jmp	.label_76
.label_69:
	mov	rdi, qword ptr [rsp + 8]
	lea	rsi, [rsp + 0x58]
	call	stat
.label_76:
	test	eax, eax
	je	.label_81
	call	__errno_location
	mov	r14d, dword ptr [rax]
	mov	rax, rbx
	cmp	al, 1
	mov	dword ptr [rsp + 0x14], r14d
	je	.label_85
	test	al, al
	je	.label_56
.label_67:
	mov	dword ptr [rsp + 0x70], 0
.label_81:
	movzx	eax, word ptr [rsp + 0x70]
	and	eax, 0xf000
	cmp	eax, 0xa000
	jne	.label_94
	lea	rdi, [rsp + 0x38]
	mov	rsi, qword ptr [rsp + 0x20]
	lea	rdx, [rsp + 0x58]
	call	seen_triple
	test	al, al
	je	.label_101
	mov	r14d, dword ptr [rsp + 0x2c]
	cmp	r14d, 2
	mov	eax, dword ptr [rsp + 0x14]
	mov	ecx, 0x28
	cmovne	eax, ecx
	mov	dword ptr [rsp + 0x14], eax
	mov	ecx, dword ptr [rsp + 0x44]
	jmp	.label_91
.label_101:
	mov	rsi, qword ptr [rsp + 0x88]
	mov	rdi, qword ptr [rsp + 8]
	call	areadlink_with_size
	mov	r14, rax
	test	r14, r14
	jne	.label_55
	mov	r14d, dword ptr [rsp + 0x2c]
	cmp	r14d, 2
	jne	.label_57
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	je	.label_57
	mov	rdi, qword ptr [rsp + 8]
	mov	rax, qword ptr [rsp + 0x30]
	jmp	.label_61
.label_85:
	mov	esi, 0x2f
	mov	rdi, rbp
	call	__strspn_c1
	xor	ecx, ecx
	cmp	byte ptr [rax + rbp], 0
	setne	cl
	cmp	r14d, 2
	lea	ecx, [rcx + rcx*8 + 4]
	mov	eax, 0xd
	cmovne	ecx, eax
.label_91:
	mov	rdi, qword ptr [rsp + 8]
	mov	r15, qword ptr [rsp]
	and	cl, 0xf
	cmp	cl, 4
	mov	rax, qword ptr [rsp + 0x30]
	jne	.label_72
.label_61:
	cmp	byte ptr [rbp], 0
	jne	.label_86
	jmp	.label_98
.label_94:
	movzx	eax, ax
	cmp	eax, 0x4000
	jne	.label_87
	mov	rax, qword ptr [rsp + 0x18]
	mov	rcx, rax
	mov	rdx, rbp
	mov	rdi, qword ptr [rsp + 8]
	mov	rax, qword ptr [rsp + 0x30]
	mov	r15, qword ptr [rsp]
	jmp	.label_89
.label_87:
	mov	r14d, dword ptr [rsp + 0x2c]
	cmp	r14d, 2
	mov	rdi, qword ptr [rsp + 8]
	mov	rax, qword ptr [rsp + 0x30]
	mov	r15, qword ptr [rsp]
	je	.label_95
	mov	cl, byte ptr [rbp]
	mov	edx, 0x14
	test	cl, cl
	jne	.label_100
.label_95:
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rdx, rbp
.label_89:
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_47
.label_55:
	mov	rdi, r14
	call	strlen
	mov	qword ptr [rsp + 0x20], rax
	mov	rdi, rbp
	call	strlen
	mov	rdx, rax
	mov	rax, qword ptr [rsp + 0x20]
	lea	rcx, [rax + rdx + 1]
	mov	rax, qword ptr [rsp + 0x18]
	test	rax, rax
	mov	qword ptr [rsp + 0x50], r14
	je	.label_90
	cmp	rcx, rax
	jbe	.label_59
	mov	rdi, qword ptr [rsp]
	mov	qword ptr [rsp + 0x18], rcx
	mov	rsi, rcx
	mov	r14, rdx
	call	xrealloc
	jmp	.label_63
.label_90:
	cmp	rcx, 0x1000
	mov	eax, 0x1000
	cmovbe	rcx, rax
	mov	qword ptr [rsp + 0x18], rcx
	mov	rdi, rcx
	mov	r14, rdx
	call	xmalloc
.label_63:
	mov	rdx, r14
	mov	r14, rax
	jmp	.label_70
.label_59:
	mov	qword ptr [rsp + 0x18], rax
	mov	r14, qword ptr [rsp]
.label_70:
	mov	rdi, qword ptr [rsp + 0x20]
	add	rdi, r14
	inc	rdx
	mov	rsi, rbp
	call	memmove
	mov	qword ptr [rsp], r14
	mov	rdi, r14
	mov	r14, qword ptr [rsp + 0x50]
	mov	rsi, r14
	mov	rdx, qword ptr [rsp + 0x20]
	call	memcpy
	mov	rcx, qword ptr [rsp + 8]
	lea	rax, [rcx + 1]
	cmp	byte ptr [r14], 0x2f
	jne	.label_77
	mov	byte ptr [rcx], 0x2f
	mov	r13, rax
	jmp	.label_51
.label_77:
	cmp	r13, rax
	jbe	.label_51
	sub	r12, r15
	lea	rax, [r12 + rbp - 1]
.label_60:
	mov	r13, rax
	cmp	r13, rcx
	jbe	.label_51
	lea	rax, [r13 - 1]
	cmp	byte ptr [r13 - 1], 0x2f
	jne	.label_60
.label_51:
	mov	rdi, r14
	call	free
	mov	rdi, qword ptr [rsp + 8]
	mov	rdx, qword ptr [rsp]
	mov	r15, rdx
	mov	rbp, rdx
	mov	rax, qword ptr [rsp + 0x30]
	mov	rcx, qword ptr [rsp + 0x18]
.label_47:
	cmp	byte ptr [rdx], 0
	mov	qword ptr [rsp + 0x18], rcx
	jne	.label_49
	jmp	.label_53
.label_83:
	mov	r13, r12
.label_98:
	mov	r15, qword ptr [rsp]
.label_53:
	lea	rcx, [rdi + 1]
	cmp	r13, rcx
	jbe	.label_96
	lea	rcx, [r13 - 1]
	cmp	byte ptr [r13 - 1], 0x2f
	cmove	r13, rcx
.label_96:
	mov	byte ptr [r13], 0
	lea	rcx, [r13 + 1]
	cmp	rax, rcx
	je	.label_58
	mov	esi, 1
	sub	rsi, rdi
	add	rsi, r13
	call	xrealloc
	mov	rbp, rax
	jmp	.label_64
.label_58:
	mov	rbp, rdi
.label_64:
	mov	rdi, r15
	call	free
	mov	rdi, qword ptr [rsp + 0x38]
	test	rdi, rdi
	je	.label_68
	call	hash_free
	jmp	.label_68
.label_57:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	mov	rdi, qword ptr [rsp + 8]
	mov	r15, qword ptr [rsp]
	jmp	.label_74
.label_72:
	cmp	cl, 0xd
	mov	r14d, dword ptr [rsp + 0x14]
	jne	.label_68
	jmp	.label_74
.label_56:
	mov	edx, dword ptr [rsp + 0x14]
	mov	rdi, qword ptr [rsp + 8]
	mov	r15, qword ptr [rsp]
.label_100:
	mov	r14d, edx
.label_74:
	mov	rbx, rdi
	mov	rdi, r15
	call	free
	mov	rdi, rbx
	call	free
	mov	rdi, qword ptr [rsp + 0x38]
	test	rdi, rdi
	je	.label_82
	call	hash_free
.label_82:
	call	__errno_location
	mov	dword ptr [rax], r14d
	jmp	.label_66
	.section	.text
	.align	16
	#Procedure 0x4020e1
	.globl sub_4020e1
	.type sub_4020e1, @function
sub_4020e1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4020f0

	.globl rotr_sz
	.type rotr_sz, @function
rotr_sz:
	mov	ecx, esi
	ror	rdi, cl
	mov	rax, rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x4020f9
	.globl sub_4020f9
	.type sub_4020f9, @function
sub_4020f9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402100

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
	#Procedure 0x402149
	.globl sub_402149
	.type sub_402149, @function
sub_402149:

	nop	dword ptr [rax]
.label_103:
	add	r14, 0x10
.label_112:
	cmp	r14, qword ptr [r15 + 8]
	jae	.label_107
	cmp	qword ptr [r14], 0
	je	.label_103
	test	r14, r14
	je	.label_103
	mov	rbx, r14
	nop	dword ptr [rax + rax]
.label_111:
	mov	rdi, qword ptr [rbx]
	call	qword ptr [r15 + 0x40]
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	jne	.label_111
	jmp	.label_103
	.section	.text
	.align	16
	#Procedure 0x402182

	.globl hash_free
	.type hash_free, @function
hash_free:
	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	cmp	qword ptr [r15 + 0x40], 0
	je	.label_107
	cmp	qword ptr [r15 + 0x20], 0
	je	.label_107
	mov	r14, qword ptr [r15]
	jmp	.label_112
	.section	.text
	.align	16
	#Procedure 0x40219d
	.globl sub_40219d
	.type sub_40219d, @function
sub_40219d:

	nop	dword ptr [rax + rax]
.label_107:
	mov	r14, qword ptr [r15]
	jmp	.label_108
	.section	.text
	.align	16
	#Procedure 0x4021a7
	.globl sub_4021a7
	.type sub_4021a7, @function
sub_4021a7:

	nop	word ptr [rax + rax]
.label_110:
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_109
	nop	dword ptr [rax]
.label_105:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_105
.label_109:
	mov	rdi, qword ptr [r15]
	call	free
	mov	rdi, r15
	pop	rbx
	pop	r14
	pop	r15
	jmp	free
	.section	.text
	.align	16
	#Procedure 0x4021e3
	.globl sub_4021e3
	.type sub_4021e3, @function
sub_4021e3:

	nop	word ptr cs:[rax + rax]
.label_106:
	add	r14, 0x10
.label_108:
	cmp	r14, qword ptr [r15 + 8]
	jae	.label_110
	mov	rdi, qword ptr [r14 + 8]
	test	rdi, rdi
	je	.label_106
	nop	word ptr cs:[rax + rax]
.label_104:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_104
	jmp	.label_106
.label_115:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:label_113
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402240
	.globl sub_402240
	.type sub_402240, @function
sub_402240:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40224f

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_115
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_114
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_118
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_114
	mov	esi, OFFSET FLAT:label_117
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_116
	add	r14, 3
	mov	qword ptr [word ptr [rip + __progname]],  r14
.label_116:
	mov	rbx, r14
.label_114:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x4022d0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	jmp	x2nrealloc
	.section	.text
	.align	16
	#Procedure 0x4022da
	.globl sub_4022da
	.type sub_4022da, @function
sub_4022da:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4022e0
	.globl rotr32
	.type rotr32, @function
rotr32:

	mov	ecx, esi
	ror	edi, cl
	mov	eax, edi
	ret	
	.section	.text
	.align	16
	#Procedure 0x4022e7
	.globl sub_4022e7
	.type sub_4022e7, @function
sub_4022e7:

	nop	word ptr [rax + rax]
.label_119:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_121
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
.label_124:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_120
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_119
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_122
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_125:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	.section	.text
	.align	16
	#Procedure 0x402374

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_123
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_124
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_124
.label_123:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_125
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_127:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4023b5
	.globl sub_4023b5
	.type sub_4023b5, @function
sub_4023b5:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4023bc

	.globl seen_triple
	.type seen_triple, @function
seen_triple:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdx
	mov	r15, rsi
	mov	rbx, rdi
	cmp	qword ptr [rbx], 0
	jne	.label_128
	mov	edi, 7
	xor	esi, esi
	mov	edx, OFFSET FLAT:triple_hash
	mov	ecx, OFFSET FLAT:triple_compare_ino_str
	mov	r8d, OFFSET FLAT:triple_free
	call	hash_initialize
	mov	qword ptr [rbx], rax
	test	rax, rax
	je	.label_127
.label_128:
	mov	rdi, qword ptr [rbx]
	mov	rsi, r15
	mov	rdx, r14
	call	seen_file
	mov	ecx, eax
	mov	al, 1
	test	cl, cl
	jne	.label_126
	mov	rdi, qword ptr [rbx]
	mov	rsi, r15
	mov	rdx, r14
	call	record_file
	xor	eax, eax
.label_126:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x402420

	.globl c_isupper
	.type c_isupper, @function
c_isupper:
	add	edi, -0x41
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x40242a
	.globl sub_40242a
	.type sub_40242a, @function
sub_40242a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402430
	.globl rotr8
	.type rotr8, @function
rotr8:

	mov	eax, edi
	mov	ecx, esi
	shr	eax, cl
	mov	ecx, 8
	sub	ecx, esi
	shl	edi, cl
	or	edi, eax
	mov	eax, edi
	ret	
	.section	.text
	.align	16
	#Procedure 0x402444
	.globl sub_402444
	.type sub_402444, @function
sub_402444:

	nop	word ptr cs:[rax + rax]
.label_130:
	inc	rax
	mov	sil, dl
.label_133:
	movzx	ecx, byte ptr [rax]
	mov	dl, 1
	cmp	cl, 0x2f
	je	.label_130
	test	cl, cl
	je	.label_129
	mov	edx, esi
	and	dl, 1
	je	.label_131
	xor	esi, esi
.label_131:
	test	dl, dl
	cmovne	rdi, rax
	mov	edx, esi
	jmp	.label_130
.label_129:
	mov	rax, rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x40247b
	.globl sub_40247b
	.type sub_40247b, @function
sub_40247b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402480

	.globl last_component
	.type last_component, @function
last_component:
	dec	rdi
	nop	word ptr cs:[rax + rax]
.label_132:
	cmp	byte ptr [rdi + 1], 0x2f
	lea	rdi, [rdi + 1]
	je	.label_132
	xor	esi, esi
	mov	rax, rdi
	jmp	.label_133
	.section	.text
	.align	16
	#Procedure 0x4024a1
	.globl sub_4024a1
	.type sub_4024a1, @function
sub_4024a1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4024b0

	.globl hash_insert
	.type hash_insert, @function
hash_insert:
	push	rbx
	sub	rsp, 0x10
	mov	rbx, rsi
	lea	rdx, [rsp + 8]
	call	hash_insert_if_absent
	mov	ecx, eax
	xor	eax, eax
	cmp	ecx, -1
	je	.label_134
	test	ecx, ecx
	cmove	rbx, qword ptr [rsp + 8]
	mov	rax, rbx
.label_134:
	add	rsp, 0x10
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4024dc
	.globl sub_4024dc
	.type sub_4024dc, @function
sub_4024dc:

	nop	dword ptr [rax]
.label_140:
	shr	rdi, 1
	or	rax, rdi
	cvtsi2ss	xmm0, rax
	addss	xmm0, xmm0
.label_139:
	divss	xmm0, dword ptr [rsi + 8]
	movss	xmm1,  dword ptr [dword ptr [rip + label_135]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rdi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rdi, rcx
	xor	eax, eax
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_136]]
	jae	.label_137
.label_138:
	push	rax
	call	next_prime
	mov	rcx, rax
	xor	eax, eax
	mov	rdx, rcx
	shr	rdx, 0x3c
	cmove	rax, rcx
	add	rsp, 8
.label_137:
	ret	
	.section	.text
	.align	16
	#Procedure 0x402547
	.globl sub_402547
	.type sub_402547, @function
sub_402547:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402549

	.globl compute_bucket_size
	.type compute_bucket_size, @function
compute_bucket_size:
	cmp	byte ptr [rsi + 0x10], 0
	jne	.label_138
	mov	eax, edi
	and	eax, 1
	test	rdi, rdi
	js	.label_140
	cvtsi2ss	xmm0, rdi
	jmp	.label_139
	.section	.text
	.align	16
	#Procedure 0x402560
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_141
	call	rpl_calloc
	test	rax, rax
	je	.label_141
	pop	rcx
	ret	
.label_141:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402586
	.globl sub_402586
	.type sub_402586, @function
sub_402586:

	nop	word ptr cs:[rax + rax]
.label_147:
	add	r14, 0x10
.label_148:
	cmp	r14, qword ptr [r15 + 8]
	jae	.label_146
	cmp	qword ptr [r14], 0
	je	.label_147
	mov	rbx, qword ptr [r14 + 8]
	mov	rax, qword ptr [r15 + 0x40]
	test	rax, rax
	setne	cl
	test	rbx, rbx
	je	.label_142
	nop	word ptr cs:[rax + rax]
.label_144:
	test	cl, 1
	je	.label_143
	mov	rdi, qword ptr [rbx]
	call	rax
.label_143:
	mov	qword ptr [rbx], 0
	mov	rdx, qword ptr [rbx + 8]
	mov	rax, qword ptr [r15 + 0x48]
	mov	qword ptr [rbx + 8], rax
	mov	qword ptr [r15 + 0x48], rbx
	mov	rax, qword ptr [r15 + 0x40]
	test	rax, rax
	setne	cl
	test	rdx, rdx
	mov	rbx, rdx
	jne	.label_144
.label_142:
	test	cl, cl
	je	.label_145
	mov	rdi, qword ptr [r14]
	call	rax
.label_145:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	jmp	.label_147
	.section	.text
	.align	16
	#Procedure 0x402605
	.globl hash_clear
	.type hash_clear, @function
hash_clear:

	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	mov	r14, qword ptr [r15]
	jmp	.label_148
	.section	.text
	.align	16
	#Procedure 0x402612
	.globl sub_402612
	.type sub_402612, @function
sub_402612:

	nop	dword ptr [rax]
.label_146:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x18], xmm0
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x402623
	.globl sub_402623
	.type sub_402623, @function
sub_402623:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402630

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x40263a
	.globl sub_40263a
	.type sub_40263a, @function
sub_40263a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402640
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quotearg_n
	.section	.text
	.align	16
	#Procedure 0x40264d
	.globl sub_40264d
	.type sub_40264d, @function
sub_40264d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402650
	.globl quotearg_mem
	.type quotearg_mem, @function
quotearg_mem:

	mov	rax, rsi
	mov	rcx, rdi
	xor	edi, edi
	mov	rsi, rcx
	mov	rdx, rax
	jmp	quotearg_n_mem
.label_149:
	push	rax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402666
	.globl sub_402666
	.type sub_402666, @function
sub_402666:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40266b

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_149
	test	rdx, rdx
	je	.label_149
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_152:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_150
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_150:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4026c4
	.globl sub_4026c4
	.type sub_4026c4, @function
sub_4026c4:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4026c6

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
	jne	.label_151
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_151
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_152
.label_151:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
	.section	.text
	.align	16
	#Procedure 0x402700
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
	#Procedure 0x40270f
	.globl sub_40270f
	.type sub_40270f, @function
sub_40270f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402710

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rsi
	mov	ebp, edi
	mov	rdi, qword ptr [r14]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_161
	call	setlocale
	mov	edi, OFFSET FLAT:label_163
	mov	esi, OFFSET FLAT:label_164
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_163
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	r15d, 1
	xor	r13d, r13d
	xor	ebx, ebx
	jmp	.label_159
.label_617:
	mov	rbx,  qword ptr [word ptr [rip + optarg]]
	nop	
.label_159:
	mov	edx, OFFSET FLAT:label_173
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, ebp
	mov	rsi, r14
	call	getopt_long
	cmp	eax, 0x4b
	jle	.label_154
	add	eax, -0x4c
	cmp	eax, 0x35
	ja	.label_156
	jmp	qword ptr [word ptr [+ (rax * 8) + label_157]]
.label_609:
	or	r15d, 4
	mov	byte ptr [byte ptr [rip + logical]],  1
	jmp	.label_159
.label_610:
	and	r15d, 0xfffffffb
	mov	byte ptr [byte ptr [rip + logical]],  0
	jmp	.label_159
.label_611:
	and	r15d, 0xfffffffc
	jmp	.label_159
.label_612:
	and	r15d, 0xfffffffc
	or	r15d, 2
	jmp	.label_159
.label_613:
	mov	byte ptr [byte ptr [rip + verbose]],  1
	jmp	.label_159
.label_614:
	or	r15d, 4
	mov	byte ptr [byte ptr [rip + logical]],  0
	jmp	.label_159
.label_615:
	mov	byte ptr [byte ptr [rip + use_nuls]],  1
	jmp	.label_159
.label_616:
	mov	r13,  qword ptr [word ptr [rip + optarg]]
	jmp	.label_159
.label_154:
	cmp	eax, -1
	jne	.label_174
	cmp	dword ptr [dword ptr [rip + optind]],  ebp
	jge	.label_178
	test	rbx, rbx
	mov	r12, rbx
	cmove	r12, r13
	test	r13, r13
	cmovne	r12, r13
	mov	r13d, r15d
	and	r13d, 3
	test	r12, r12
	je	.label_155
	mov	rdi, r12
	mov	esi, r15d
	call	realpath_canon
	mov	qword ptr [word ptr [rip + can_relative_to]],  rax
	test	rax, rax
	je	.label_162
	test	r13d, r13d
	jne	.label_155
	mov	rdi, rax
	call	isdir
	test	al, al
	je	.label_168
.label_155:
	cmp	rbx, r12
	je	.label_169
	test	rbx, rbx
	je	.label_171
	mov	rdi, rbx
	mov	esi, r15d
	call	realpath_canon
	mov	r12, rax
	test	r12, r12
	je	.label_172
	test	r13d, r13d
	jne	.label_176
	mov	rdi, r12
	call	isdir
	test	al, al
	je	.label_153
.label_176:
	mov	rsi,  qword ptr [word ptr [rip + can_relative_to]]
	mov	rdi, r12
	call	path_prefix
	test	al, al
	je	.label_158
	mov	qword ptr [word ptr [rip + can_relative_base]],  r12
	jmp	.label_171
.label_169:
	mov	rax,  qword ptr [word ptr [rip + can_relative_to]]
	mov	qword ptr [word ptr [rip + can_relative_base]],  rax
	jmp	.label_171
.label_158:
	mov	rdi, r12
	call	free
	mov	rax,  qword ptr [word ptr [rip + can_relative_to]]
	mov	qword ptr [word ptr [rip + can_relative_base]],  rax
	mov	qword ptr [word ptr [rip + can_relative_to]],  0
.label_171:
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	mov	bl, 1
	cmp	eax, ebp
	jge	.label_170
	mov	bl, 1
	nop	word ptr [rax + rax]
.label_179:
	cdqe	
	mov	rdi, qword ptr [r14 + rax*8]
	mov	esi, r15d
	call	process_path
	and	bl, al
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	inc	eax
	mov	dword ptr [dword ptr [rip + optind]],  eax
	cmp	eax, ebp
	jl	.label_179
.label_170:
	movzx	eax, bl
	xor	eax, 1
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_174:
	cmp	eax, 0xffffff7d
	je	.label_160
	cmp	eax, 0xffffff7e
	jne	.label_156
	xor	edi, edi
	call	usage
.label_160:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	esi, OFFSET FLAT:label_165
	mov	edx, OFFSET FLAT:label_166
	mov	r8d, OFFSET FLAT:label_167
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_156:
	mov	edi, 1
	call	usage
.label_178:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_175
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
.label_162:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r12
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_122
	xor	eax, eax
	mov	esi, ebx
	call	error
.label_172:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbx
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_122
	xor	eax, eax
	mov	esi, ebp
	call	error
.label_168:
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r12
	jmp	.label_177
.label_153:
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbx
.label_177:
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	esi, 0x14
	mov	edx, OFFSET FLAT:label_122
	xor	eax, eax
	call	error
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402a30
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
	#Procedure 0x402a43
	.globl sub_402a43
	.type sub_402a43, @function
sub_402a43:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402a50

	.globl areadlink_with_size
	.type areadlink_with_size, @function
areadlink_with_size:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rdi
	cmp	rsi, 0x401
	lea	rax, [rsi + 1]
	mov	r12d, 0x401
	cmovb	r12, rax
	mov	rdi, r12
	call	malloc
	mov	rbx, rax
	xor	eax, eax
	mov	qword ptr [rsp], rax
	test	rbx, rbx
	je	.label_182
	xor	eax, eax
	mov	qword ptr [rsp], rax
	nop	word ptr cs:[rax + rax]
.label_181:
	mov	rdi, r15
	mov	rsi, rbx
	mov	rdx, r12
	call	readlink
	mov	r13, rax
	test	r13, r13
	jns	.label_187
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	cmp	r14d, 0x22
	jne	.label_185
.label_187:
	cmp	r13, r12
	jb	.label_180
	mov	rdi, rbx
	call	free
	mov	rax, r12
	shr	rax, 0x3e
	jne	.label_183
	add	r12, r12
	jmp	.label_184
	.section	.text
	.align	16
	#Procedure 0x402ae3
	.globl sub_402ae3
	.type sub_402ae3, @function
sub_402ae3:

	nop	word ptr cs:[rax + rax]
.label_183:
	movabs	rax, 0x7fffffffffffffff
	cmp	r12, rax
	mov	r12, rax
	jae	.label_188
.label_184:
	mov	rdi, r12
	call	malloc
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_181
	jmp	.label_182
.label_180:
	mov	byte ptr [rbx + r13], 0
	mov	qword ptr [rsp], rbx
	jmp	.label_182
.label_188:
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_186
.label_185:
	mov	rdi, rbx
	call	free
	mov	dword ptr [rbp], r14d
.label_186:
	xor	eax, eax
	mov	qword ptr [rsp], rax
.label_182:
	mov	rax, qword ptr [rsp]
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
	#Procedure 0x402b51
	.globl sub_402b51
	.type sub_402b51, @function
sub_402b51:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402b60

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
	#Procedure 0x402b99
	.globl sub_402b99
	.type sub_402b99, @function
sub_402b99:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402ba0

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
	#Procedure 0x402bb1
	.globl sub_402bb1
	.type sub_402bb1, @function
sub_402bb1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402bc0
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
	#Procedure 0x402bd4
	.globl sub_402bd4
	.type sub_402bd4, @function
sub_402bd4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402be0

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x402bee
	.globl sub_402bee
	.type sub_402bee, @function
sub_402bee:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402bf0

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
	js	.label_192
	mov	eax, dword ptr [r13]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_195
	cmp	r12d, 0x7fffffff
	je	.label_190
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
	jne	.label_193
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_193:
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
.label_195:
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
	jbe	.label_191
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_194
.label_191:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_189
	mov	rdi, r14
	call	free
.label_189:
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
.label_194:
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
.label_192:
	call	abort
.label_190:
	call	xalloc_die
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

	.globl next_prime
	.type next_prime, @function
next_prime:
	push	r14
	push	rbx
	push	rax
	cmp	rdi, 0xa
	mov	ebx, 0xa
	cmovae	rbx, rdi
	or	rbx, 1
	mov	r14, -1
	jmp	.label_196
	.section	.text
	.align	16
	#Procedure 0x402dce
	.globl sub_402dce
	.type sub_402dce, @function
sub_402dce:

	nop	
.label_197:
	add	rbx, 2
.label_196:
	cmp	rbx, -1
	je	.label_198
	mov	rdi, rbx
	call	is_prime
	test	al, al
	je	.label_197
	mov	r14, rbx
.label_198:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x402df4
	.globl sub_402df4
	.type sub_402df4, @function
sub_402df4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402e00

	.globl hash_get_n_buckets
	.type hash_get_n_buckets, @function
hash_get_n_buckets:
	mov	rax, qword ptr [rdi + 0x10]
	ret	
	.section	.text
	.align	16
	#Procedure 0x402e05
	.globl sub_402e05
	.type sub_402e05, @function
sub_402e05:

	nop	word ptr cs:[rax + rax]
.label_200:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_199
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbp
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402e58

	.globl isdir
	.type isdir, @function
isdir:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x90
	mov	rbx, rdi
	lea	rsi, [rsp]
	call	stat
	test	eax, eax
	jne	.label_200
	mov	eax, dword ptr [rsp + 0x18]
	and	eax, 0xf000
	cmp	eax, 0x4000
	sete	al
	add	rsp, 0x90
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402e90
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_201
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_202
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_204
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_166
	mov	ecx, OFFSET FLAT:label_205
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_203
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x402f04
	.globl sub_402f04
	.type sub_402f04, @function
sub_402f04:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402f10

	.globl free_entry
	.type free_entry, @function
free_entry:
	mov	qword ptr [rsi], 0
	mov	rax, qword ptr [rdi + 0x48]
	mov	qword ptr [rsi + 8], rax
	mov	qword ptr [rdi + 0x48], rsi
	ret	
	.section	.text
	.align	16
	#Procedure 0x402f24
	.globl sub_402f24
	.type sub_402f24, @function
sub_402f24:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402f30
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	add	edi, -0x21
	cmp	edi, 0x5e
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x402f3a
	.globl sub_402f3a
	.type sub_402f3a, @function
sub_402f3a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402f40

	.globl realpath_canon
	.type realpath_canon, @function
realpath_canon:
	push	r14
	push	rbx
	push	rax
	mov	ebx, esi
	call	canonicalize_filename_mode
	mov	r14, rax
	cmp	byte ptr [byte ptr [rip + logical]],  1
	jne	.label_207
	test	r14, r14
	je	.label_207
	and	ebx, 0xfffffffb
	mov	rdi, r14
	mov	esi, ebx
	call	canonicalize_filename_mode
	mov	rbx, rax
	mov	rdi, r14
	call	free
	mov	rax, rbx
	jmp	.label_206
.label_207:
	mov	rax, r14
.label_206:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x402f84
	.globl sub_402f84
	.type sub_402f84, @function
sub_402f84:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402f90

	.globl hash_get_n_entries
	.type hash_get_n_entries, @function
hash_get_n_entries:
	mov	rax, qword ptr [rdi + 0x20]
	ret	
	.section	.text
	.align	16
	#Procedure 0x402f95
	.globl sub_402f95
	.type sub_402f95, @function
sub_402f95:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402fa0
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	mov	rax, rdx
	xor	edx, edx
	mov	rcx, rax
	jmp	quotearg_alloc_mem
	.section	.text
	.align	16
	#Procedure 0x402faa
	.globl sub_402faa
	.type sub_402faa, @function
sub_402faa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402fb0

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
	je	.label_208
	mov	qword ptr [rax], rbx
.label_208:
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
	#Procedure 0x40309c
	.globl sub_40309c
	.type sub_40309c, @function
sub_40309c:

	nop	dword ptr [rax]
.label_210:
	test	rcx, rcx
	jne	.label_209
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	xor	ecx, ecx
	cmp	r8, 0x80
	seta	cl
	add	rcx, rax
.label_209:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_211
.label_212:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
	.section	.text
	.align	16
	#Procedure 0x4030e2

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_210
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_213
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_212
.label_213:
	call	xalloc_die
.label_211:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403119
	.globl sub_403119
	.type sub_403119, @function
sub_403119:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403120

	.globl raw_comparator
	.type raw_comparator, @function
raw_comparator:
	cmp	rdi, rsi
	sete	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x403127
	.globl sub_403127
	.type sub_403127, @function
sub_403127:

	nop	word ptr [rax + rax]
.label_214:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x403133
	.globl sub_403133
	.type sub_403133, @function
sub_403133:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40313e

	.globl seen_file
	.type seen_file, @function
seen_file:
	test	rdi, rdi
	je	.label_214
	sub	rsp, 0x18
	mov	qword ptr [rsp], rsi
	mov	rax, qword ptr [rdx + 8]
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rdx]
	mov	qword ptr [rsp + 0x10], rax
	lea	rsi, [rsp]
	call	hash_lookup
	test	rax, rax
	setne	al
	add	rsp, 0x18
	ret	
	.section	.text
	.align	16
	#Procedure 0x403170

	.globl check_tuning
	.type check_tuning, @function
check_tuning:
	mov	rcx, qword ptr [rdi + 0x28]
	mov	edx, OFFSET FLAT:default_tuning
	mov	al, 1
	cmp	rcx, rdx
	je	.label_215
	movss	xmm0, dword ptr [rcx + 8]
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_216]]
	jbe	.label_217
	movss	xmm1,  dword ptr [dword ptr [rip + label_220]]
	ucomiss	xmm1, xmm0
	jbe	.label_217
	movss	xmm1, dword ptr [rcx + 0xc]
	ucomiss	xmm1,  dword ptr [dword ptr [rip + label_219]]
	jbe	.label_217
	movss	xmm1, dword ptr [rcx]
	xorps	xmm2, xmm2
	ucomiss	xmm1, xmm2
	jb	.label_217
	addss	xmm1,  dword ptr [dword ptr [rip + label_216]]
	ucomiss	xmm0, xmm1
	jbe	.label_217
	movss	xmm0, dword ptr [rcx + 4]
	movss	xmm2,  dword ptr [dword ptr [rip + label_218]]
	ucomiss	xmm2, xmm0
	jb	.label_217
	ucomiss	xmm0, xmm1
	ja	.label_215
.label_217:
	mov	qword ptr [word ptr [rdi + 40]], OFFSET FLAT:default_tuning
	xor	eax, eax
.label_215:
	ret	
	.section	.text
	.align	16
	#Procedure 0x4031e4
	.globl sub_4031e4
	.type sub_4031e4, @function
sub_4031e4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4031f0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_221
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_221:
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
	#Procedure 0x403273
	.globl sub_403273
	.type sub_403273, @function
sub_403273:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403280
	.globl hash_get_next
	.type hash_get_next, @function
hash_get_next:

	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	call	safe_hasher
	mov	rcx, rax
	nop	word ptr cs:[rax + rax]
.label_226:
	cmp	qword ptr [rcx], rbx
	jne	.label_222
	mov	rdx, qword ptr [rcx + 8]
	test	rdx, rdx
	jne	.label_223
.label_222:
	mov	rcx, qword ptr [rcx + 8]
	test	rcx, rcx
	jne	.label_226
	mov	rdx, qword ptr [r14 + 8]
	add	rax, 0x10
	nop	
.label_225:
	cmp	rax, rdx
	mov	ecx, 0
	jae	.label_224
	mov	rcx, qword ptr [rax]
	add	rax, 0x10
	test	rcx, rcx
	je	.label_225
	jmp	.label_224
.label_223:
	mov	rcx, qword ptr [rdx]
.label_224:
	mov	rax, rcx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x4032e6
	.globl sub_4032e6
	.type sub_4032e6, @function
sub_4032e6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4032f0

	.globl hash_rehash
	.type hash_rehash, @function
hash_rehash:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x50
	mov	rbx, rdi
	mov	rax, qword ptr [rbx + 0x28]
	mov	rdi, rsi
	mov	rsi, rax
	call	compute_bucket_size
	mov	rbp, rax
	test	rbp, rbp
	je	.label_227
	mov	r14b, 1
	cmp	rbp, qword ptr [rbx + 0x10]
	je	.label_229
	mov	esi, 0x10
	mov	rdi, rbp
	call	rpl_calloc
	mov	qword ptr [rsp], rax
	test	rax, rax
	je	.label_227
	mov	qword ptr [rsp + 0x10], rbp
	shl	rbp, 4
	add	rbp, qword ptr [rsp]
	mov	qword ptr [rsp + 8], rbp
	xorps	xmm0, xmm0
	movups	xmmword ptr [rsp + 0x18], xmm0
	mov	rax, qword ptr [rbx + 0x28]
	mov	qword ptr [rsp + 0x28], rax
	mov	rax, qword ptr [rbx + 0x30]
	mov	qword ptr [rsp + 0x30], rax
	mov	rax, qword ptr [rbx + 0x38]
	mov	qword ptr [rsp + 0x38], rax
	mov	rax, qword ptr [rbx + 0x40]
	mov	qword ptr [rsp + 0x40], rax
	mov	rax, qword ptr [rbx + 0x48]
	mov	qword ptr [rsp + 0x48], rax
	lea	rdi, [rsp]
	xor	edx, edx
	mov	rsi, rbx
	call	transfer_entries
	test	al, al
	je	.label_230
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rbx], rax
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rbx + 8], rax
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rbx + 0x10], rax
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rbx + 0x18], rax
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [rbx + 0x48], rax
	jmp	.label_229
.label_228:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4033d0
	.globl sub_4033d0
	.type sub_4033d0, @function
sub_4033d0:

	nop	dword ptr [rax + rax]
.label_230:
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [rbx + 0x48], rax
	lea	rsi, [rsp]
	mov	edx, 1
	mov	rdi, rbx
	call	transfer_entries
	test	al, al
	je	.label_228
	lea	rsi, [rsp]
	xor	edx, edx
	mov	rdi, rbx
	call	transfer_entries
	test	al, al
	je	.label_228
	mov	rdi, qword ptr [rsp]
	call	free
.label_227:
	xor	r14d, r14d
.label_229:
	mov	eax, r14d
	add	rsp, 0x50
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_231:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	.section	.text
	.align	16
	#Procedure 0x40342e
	.globl sub_40342e
	.type sub_40342e, @function
sub_40342e:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403437

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_231
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_233
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_231
.label_233:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_231
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_232
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_232:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4034a0

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_234
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_238
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_239
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_240
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_237
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_235
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_ancillary_info
	mov	edi, ebp
	call	exit
.label_234:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_236
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
	#Procedure 0x40359b
	.globl sub_40359b
	.type sub_40359b, @function
sub_40359b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4035a0
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
	#Procedure 0x4035ad
	.globl sub_4035ad
	.type sub_4035ad, @function
sub_4035ad:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4035b0
	.globl triple_hash_no_name
	.type triple_hash_no_name, @function
triple_hash_no_name:

	mov	rax, qword ptr [rdi + 8]
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4035bd
	.globl sub_4035bd
	.type sub_4035bd, @function
sub_4035bd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4035c0
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_241
	movabs	rax, 0x3ffffff03ffffff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_241:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x4035de
	.globl sub_4035de
	.type sub_4035de, @function
sub_4035de:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4035e0

	.globl hash_insert_if_absent
	.type hash_insert_if_absent, @function
hash_insert_if_absent:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdx
	mov	r14, rsi
	mov	r15, rdi
	test	r14, r14
	je	.label_246
	lea	rdx, [rsp]
	xor	ebp, ebp
	xor	ecx, ecx
	mov	rdi, r15
	mov	rsi, r14
	call	hash_find_entry
	test	rax, rax
	je	.label_244
	test	rbx, rbx
	je	.label_245
	mov	qword ptr [rbx], rax
	jmp	.label_245
.label_244:
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [r15 + 0x18]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_250
	cvtsi2ss	xmm0, rcx
	jmp	.label_255
.label_250:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_255:
	mov	rcx, qword ptr [r15 + 0x28]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_243
	cvtsi2ss	xmm1, rax
	jmp	.label_249
.label_243:
	shr	rax, 1
	or	rdx, rax
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_249:
	mulss	xmm1, dword ptr [rcx + 8]
	ucomiss	xmm0, xmm1
	jbe	.label_251
	mov	rdi, r15
	call	check_tuning
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [r15 + 0x18]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_242
	cvtsi2ss	xmm2, rcx
	jmp	.label_247
.label_242:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm2, rdx
	addss	xmm2, xmm2
.label_247:
	mov	rcx, qword ptr [r15 + 0x28]
	movss	xmm1, dword ptr [rcx + 8]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_253
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rax
	jmp	.label_256
.label_253:
	shr	rax, 1
	or	rdx, rax
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_256:
	movaps	xmm3, xmm1
	mulss	xmm3, xmm0
	ucomiss	xmm2, xmm3
	jbe	.label_251
	cmp	byte ptr [rcx + 0x10], 0
	mulss	xmm0, dword ptr [rcx + 0xc]
	jne	.label_252
	mulss	xmm0, xmm1
.label_252:
	mov	ebp, 0xffffffff
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_136]]
	jae	.label_245
	movss	xmm1,  dword ptr [dword ptr [rip + label_135]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rsi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rsi, rcx
	mov	rdi, r15
	call	hash_rehash
	test	al, al
	je	.label_245
	lea	rdx, [rsp]
	xor	ecx, ecx
	mov	rdi, r15
	mov	rsi, r14
	call	hash_find_entry
	test	rax, rax
	jne	.label_246
.label_251:
	mov	rax, qword ptr [rsp]
	cmp	qword ptr [rax], 0
	je	.label_248
	mov	rdi, r15
	call	allocate_entry
	mov	ebp, 0xffffffff
	test	rax, rax
	je	.label_245
	mov	qword ptr [rax], r14
	mov	rcx, qword ptr [rsp]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	rcx, qword ptr [rsp]
	mov	qword ptr [rcx + 8], rax
	inc	qword ptr [r15 + 0x20]
	jmp	.label_254
.label_248:
	mov	qword ptr [rax], r14
	inc	qword ptr [r15 + 0x20]
	inc	qword ptr [r15 + 0x18]
.label_254:
	mov	ebp, 1
.label_245:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_246:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4037b2
	.globl sub_4037b2
	.type sub_4037b2, @function
sub_4037b2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4037c0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_257:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_257
	jmp	version_etc_arn
	.section	.text
	.align	16
	#Procedure 0x4037e1
	.globl sub_4037e1
	.type sub_4037e1, @function
sub_4037e1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4037f0

	.globl process_path
	.type process_path, @function
process_path:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	realpath_canon
	mov	r14, rax
	test	r14, r14
	je	.label_263
	cmp	qword ptr [word ptr [rip + can_relative_to]],  0
	je	.label_258
	mov	rdi,  qword ptr [word ptr [rip + can_relative_base]]
	test	rdi, rdi
	je	.label_261
	mov	rsi, r14
	call	path_prefix
	test	al, al
	je	.label_258
.label_261:
	mov	rsi,  qword ptr [word ptr [rip + can_relative_to]]
	test	rsi, rsi
	je	.label_259
	xor	edx, edx
	xor	ecx, ecx
	mov	rdi, r14
	call	relpath
	test	al, al
	jne	.label_259
.label_258:
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, r14
	call	fputs_unlocked
.label_259:
	mov	al,  byte ptr [byte ptr [rip + use_nuls]]
	xor	ecx, ecx
	test	al, al
	mov	edi, 0xa
	cmovne	edi, ecx
	call	putchar_unlocked
	mov	rdi, r14
	call	free
	mov	bpl, 1
	jmp	.label_260
.label_263:
	mov	al,  byte ptr [byte ptr [rip + verbose]]
	test	al, al
	je	.label_262
	xor	ebp, ebp
	jmp	.label_260
.label_262:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbx
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_122
	xor	eax, eax
	mov	esi, r14d
	call	error
.label_260:
	mov	eax, ebp
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4038b7
	.globl sub_4038b7
	.type sub_4038b7, @function
sub_4038b7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4038c0

	.globl same_name
	.type same_name, @function
same_name:
	mov	rax, rsi
	mov	rcx, rdi
	mov	edi, 0xffffff9c
	mov	edx, 0xffffff9c
	mov	rsi, rcx
	mov	rcx, rax
	jmp	same_nameat
	.section	.text
	.align	16
	#Procedure 0x4038d8
	.globl sub_4038d8
	.type sub_4038d8, @function
sub_4038d8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4038e0

	.globl same_nameat
	.type same_nameat, @function
same_nameat:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x138
	mov	r15, rcx
	mov	dword ptr [rsp + 0xc], edx
	mov	r13, rsi
	mov	r12d, edi
	mov	rdi, r13
	call	last_component
	mov	rbx, rax
	mov	rdi, r15
	call	last_component
	mov	rbp, rax
	mov	rdi, rbx
	call	base_len
	mov	r14, rax
	mov	rdi, rbp
	call	base_len
	cmp	r14, rax
	jne	.label_267
	mov	qword ptr [rsp + 0x10], r15
	mov	r15d, dword ptr [rsp + 0xc]
	mov	rdi, rbx
	mov	rsi, rbp
	mov	rdx, rax
	call	memcmp
	test	eax, eax
	je	.label_265
.label_267:
	xor	ebp, ebp
.label_266:
	mov	eax, ebp
	add	rsp, 0x138
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_265:
	mov	rdi, r13
	call	dir_name
	mov	rbp, rax
	lea	rdx, [rsp + 0xa8]
	mov	ecx, 0x100
	mov	edi, r12d
	mov	rsi, rbp
	call	fstatat
	test	eax, eax
	je	.label_264
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_122
	xor	eax, eax
	mov	rcx, rbp
	call	error
.label_264:
	mov	rdi, rbp
	call	free
	mov	rdi, qword ptr [rsp + 0x10]
	call	dir_name
	mov	rbx, rax
	lea	rdx, [rsp + 0x18]
	mov	ecx, 0x100
	mov	edi, r15d
	mov	rsi, rbx
	call	fstatat
	test	eax, eax
	je	.label_270
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_122
	xor	eax, eax
	mov	rcx, rbx
	call	error
.label_270:
	mov	rax, qword ptr [rsp + 0xb0]
	cmp	rax, qword ptr [rsp + 0x20]
	jne	.label_268
	mov	rax, qword ptr [rsp + 0xa8]
	cmp	rax, qword ptr [rsp + 0x18]
	sete	bpl
	jmp	.label_269
.label_268:
	xor	ebp, ebp
.label_269:
	mov	rdi, rbx
	call	free
	jmp	.label_266
	.section	.text
	.align	16
	#Procedure 0x403a1a
	.globl sub_403a1a
	.type sub_403a1a, @function
sub_403a1a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403a20

	.globl triple_free
	.type triple_free, @function
triple_free:
	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rdi, rbx
	pop	rbx
	jmp	free
	.section	.text
	.align	16
	#Procedure 0x403a35
	.globl sub_403a35
	.type sub_403a35, @function
sub_403a35:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403a40

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
	#Procedure 0x403a57
	.globl sub_403a57
	.type sub_403a57, @function
sub_403a57:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403a60
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_271
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_273:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_273
.label_271:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_274
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_275]], OFFSET FLAT:slot0
.label_274:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_272
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_272:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x403af1
	.globl sub_403af1
	.type sub_403af1, @function
sub_403af1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403b00

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
	je	.label_276
	mov	edx, OFFSET FLAT:label_286
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_292
.label_276:
	mov	edx, OFFSET FLAT:label_293
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_292:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_279
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
	mov	esi, OFFSET FLAT:label_294
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_281
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_282]]
.label_631:
	add	rsp, 8
	jmp	.label_280
.label_281:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_289
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
	jmp	.label_280
.label_632:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_277
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
.label_633:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_290
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
.label_634:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_287
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
.label_635:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_284
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
	jmp	.label_280
.label_636:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_283
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
	jmp	.label_280
.label_637:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_285
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
	jmp	.label_280
.label_638:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_288
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
	jmp	.label_280
.label_640:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_291
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
	jmp	.label_280
.label_639:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_278
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
.label_280:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x403e58
	.globl sub_403e58
	.type sub_403e58, @function
sub_403e58:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403e60

	.globl hash_pjw
	.type hash_pjw, @function
hash_pjw:
	mov	cl, byte ptr [rdi]
	xor	eax, eax
	test	cl, cl
	je	.label_295
	inc	rdi
	xor	eax, eax
	nop	dword ptr [rax]
.label_296:
	movsx	rcx, cl
	rol	rax, 9
	add	rax, rcx
	movzx	ecx, byte ptr [rdi]
	inc	rdi
	test	cl, cl
	jne	.label_296
.label_295:
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	.section	.text
	.align	16
	#Procedure 0x403e8e
	.globl sub_403e8e
	.type sub_403e8e, @function
sub_403e8e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403e90
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	.section	.text
	.align	16
	#Procedure 0x403e98
	.globl sub_403e98
	.type sub_403e98, @function
sub_403e98:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403ea0

	.globl triple_hash
	.type triple_hash, @function
triple_hash:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	call	hash_pjw
	xor	rax, qword ptr [rbx + 8]
	xor	edx, edx
	div	r14
	mov	rax, rdx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x403ec6
	.globl sub_403ec6
	.type sub_403ec6, @function
sub_403ec6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403ed0

	.globl dir_len
	.type dir_len, @function
dir_len:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	xor	r14d, r14d
	cmp	byte ptr [rbx], 0x2f
	sete	r14b
	call	last_component
	mov	rcx, rax
	sub	rcx, rbx
	nop	dword ptr [rax]
.label_298:
	mov	rax, rcx
	cmp	r14, rax
	jae	.label_297
	lea	rcx, [rax - 1]
	cmp	byte ptr [rbx + rax - 1], 0x2f
	je	.label_298
.label_297:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x403f0b
	.globl sub_403f0b
	.type sub_403f0b, @function
sub_403f0b:

	nop	dword ptr [rax + rax]
.label_300:
	mov	r15, qword ptr [rbx]
.label_299:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x403f22

	.globl hash_lookup
	.type hash_lookup, @function
hash_lookup:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r12, rsi
	mov	r14, rdi
	call	safe_hasher
	mov	rbx, rax
	xor	r15d, r15d
	cmp	qword ptr [rbx], 0
	je	.label_299
	test	rbx, rbx
	je	.label_299
	xor	r15d, r15d
	nop	word ptr [rax + rax]
.label_301:
	mov	rsi, qword ptr [rbx]
	cmp	rsi, r12
	je	.label_300
	mov	rdi, r12
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_300
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	jne	.label_301
	jmp	.label_299
	.section	.text
	.align	16
	#Procedure 0x403f70

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
.label_303:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_400
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_314]]
.label_628:
	mov	r14d, r10d
	mov	edi, OFFSET FLAT:label_320
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_325
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10d, r14d
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_629:
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_337
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_337
	xor	r14d, r14d
.label_351:
	cmp	r14, r11
	jae	.label_347
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_347:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_351
.label_337:
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
	jmp	.label_356
.label_621:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_356
.label_624:
	mov	al, 1
.label_622:
	mov	r12b, 1
.label_625:
	test	r12b, 1
	mov	cl, 1
	je	.label_368
	mov	ecx, eax
.label_368:
	mov	al, cl
.label_623:
	test	r12b, 1
	jne	.label_370
	test	r11, r11
	je	.label_372
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_372:
	mov	r14d, 1
	jmp	.label_376
.label_370:
	xor	r14d, r14d
.label_376:
	mov	ecx, OFFSET FLAT:label_325
	mov	qword ptr [rsp + 0x40], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x38], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_356
.label_626:
	test	r12b, 1
	jne	.label_384
	test	r11, r11
	je	.label_308
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_308:
	mov	r14d, 1
	jmp	.label_333
.label_627:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_390
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	sil, 1
	jmp	.label_356
.label_384:
	xor	r14d, r14d
.label_333:
	mov	eax, OFFSET FLAT:label_390
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_356:
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
	jmp	.label_402
	.section	.text
	.align	16
	#Procedure 0x40424c
	.globl sub_40424c
	.type sub_40424c, @function
sub_40424c:

	nop	dword ptr [rax]
.label_336:
	inc	rsi
.label_402:
	cmp	rbp, -1
	je	.label_324
	cmp	rsi, rbp
	jne	.label_327
	jmp	.label_329
	.section	.text
	.align	16
	#Procedure 0x404263
	.globl sub_404263
	.type sub_404263, @function
sub_404263:

	nop	word ptr cs:[rax + rax]
.label_324:
	cmp	byte ptr [rdi + rsi], 0
	je	.label_329
.label_327:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_341
	mov	rax, qword ptr [rsp + 0x38]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_343
	cmp	rbp, -1
	jne	.label_343
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
.label_343:
	cmp	rbx, rbp
	jbe	.label_357
.label_341:
	xor	r8d, r8d
.label_377:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_358
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_362]]
.label_654:
	test	rsi, rsi
	jne	.label_353
	jmp	.label_365
	.section	.text
	.align	16
	#Procedure 0x4042fe
	.globl sub_4042fe
	.type sub_4042fe, @function
sub_4042fe:

	nop	
.label_357:
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
	jne	.label_374
	cmp	byte ptr [rsp + 7], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_377
	jmp	.label_318
.label_374:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_377
.label_658:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_392
	test	rsi, rsi
	jne	.label_394
	cmp	rbp, 1
	je	.label_365
	xor	r13d, r13d
	jmp	.label_330
.label_647:
	cmp	byte ptr [rsp + 0x1e], 0
	je	.label_399
	cmp	byte ptr [rsp + 7], 0
	jne	.label_306
	cmp	r12d, 2
	jne	.label_349
	mov	eax, r9d
	and	al, 1
	jne	.label_349
	cmp	r14, r11
	jae	.label_403
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_403:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_406
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_406:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_412
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_412:
	add	r14, 3
	mov	r9b, 1
.label_349:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_304
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_304:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_305
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_305
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_305
	cmp	r14, r11
	jae	.label_321
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_321:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_393
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_393:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_330
.label_648:
	mov	bl, 0x62
	jmp	.label_335
.label_649:
	mov	cl, 0x74
	jmp	.label_339
.label_650:
	mov	bl, 0x76
	jmp	.label_335
.label_651:
	mov	bl, 0x66
	jmp	.label_335
.label_652:
	mov	cl, 0x72
	jmp	.label_339
.label_655:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_346
	cmp	byte ptr [rsp + 7], 0
	jne	.label_306
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
	jae	.label_352
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_352:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_363
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_363:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_366
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_366:
	add	r14, 3
	xor	r9d, r9d
.label_346:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_330
.label_656:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_373
	cmp	r12d, 2
	jne	.label_353
	cmp	byte ptr [rsp + 7], 0
	je	.label_353
	jmp	.label_306
.label_657:
	cmp	r12d, 2
	jne	.label_382
	cmp	byte ptr [rsp + 7], 0
	jne	.label_306
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_331
.label_358:
	mov	dword ptr [rsp + 0x4c], r8d
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xb0], 1
	jne	.label_387
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
.label_345:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2b]
	mov	qword ptr [rsp + 0x58], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 0x17]
	mov	r12, qword ptr [rsp + 0x68]
	mov	r9d, dword ptr [rsp + 0x48]
	ja	.label_401
	test	r8b, r8b
	je	.label_401
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x4c]
	jmp	.label_330
.label_392:
	test	rsi, rsi
	jne	.label_302
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_302
.label_365:
	mov	dl, 1
.label_653:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_306
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_330:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_315
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_316
	jmp	.label_322
	.section	.text
	.align	16
	#Procedure 0x404644
	.globl sub_404644
	.type sub_404644, @function
sub_404644:

	nop	word ptr cs:[rax + rax]
.label_315:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_322
.label_316:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_326
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_331
	jmp	.label_344
	.section	.text
	.align	16
	#Procedure 0x40468d
	.globl sub_40468d
	.type sub_40468d, @function
sub_40468d:

	nop	dword ptr [rax]
.label_322:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_344
	jmp	.label_331
.label_326:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_344
.label_399:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_336
	xor	r15d, r15d
	jmp	.label_353
.label_382:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x2a], 0
	je	.label_339
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_331
.label_339:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_306
.label_335:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1e], 0
	mov	r13d, 0
	je	.label_330
	nop	word ptr cs:[rax + rax]
.label_344:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_306
	cmp	r12d, 2
	jne	.label_332
	mov	eax, r9d
	and	al, 1
	jne	.label_332
	cmp	r14, r11
	jae	.label_371
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_371:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_364
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_364:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_379
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_379:
	add	r14, 3
	mov	r9b, 1
.label_332:
	cmp	r14, r11
	jae	.label_383
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_383:
	inc	r14
	jmp	.label_323
.label_387:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_388
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_388:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x58], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x50], rsi
.label_355:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_405
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_408
	cmp	rbp, -2
	je	.label_413
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2c]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_415
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_342:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_411
	bt	rsi, rdx
	jb	.label_318
.label_411:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_342
.label_415:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_328
	xor	r13d, r13d
.label_328:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x50]
	je	.label_355
	jmp	.label_345
.label_305:
	xor	r13d, r13d
	jmp	.label_330
.label_302:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_330
.label_373:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_353
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_353
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_353
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_359
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_381
	cmp	byte ptr [rsp + 7], 0
	jne	.label_306
	mov	r15b, byte ptr [rdi + rcx]
	cmp	r14, r11
	jae	.label_367
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_367:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_340
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_340:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_375
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_375:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_378
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x3f
.label_378:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r13d, r13d
	jmp	.label_330
.label_353:
	xor	eax, eax
.label_394:
	xor	r13d, r13d
	jmp	.label_330
.label_401:
	add	qword ptr [rsp + 0x58], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_386
	.section	.text
	.align	16
	#Procedure 0x404973
	.globl sub_404973
	.type sub_404973, @function
sub_404973:

	nop	word ptr cs:[rax + rax]
.label_319:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_386:
	test	r8b, r8b
	je	.label_395
	mov	ecx, dword ptr [rsp + 0x4c]
	test	cl, 1
	je	.label_396
	cmp	r14, r11
	jae	.label_397
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_397:
	inc	r14
	mov	dword ptr [rsp + 0x4c], 0
	jmp	.label_396
	.section	.text
	.align	16
	#Procedure 0x4049bc
	.globl sub_4049bc
	.type sub_4049bc, @function
sub_4049bc:

	nop	dword ptr [rax]
.label_395:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_318
	cmp	r12d, 2
	jne	.label_309
	mov	eax, r9d
	and	al, 1
	jne	.label_309
	cmp	r14, r11
	jae	.label_407
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_407:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_389
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_389:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_416
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_416:
	add	r14, 3
	mov	r9b, 1
.label_309:
	cmp	r14, r11
	jae	.label_334
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_334:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_311
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_311:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_317
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_317:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_396:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x58], rdx
	jbe	.label_331
	test	r9b, 1
	je	.label_338
	mov	ebx, eax
	and	bl, 1
	jne	.label_338
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_354
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_354:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_380
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_380:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_338:
	cmp	r14, r11
	jae	.label_319
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_319
	.section	.text
	.align	16
	#Procedure 0x404ac3
	.globl sub_404ac3
	.type sub_404ac3, @function
sub_404ac3:

	nop	word ptr cs:[rax + rax]
.label_331:
	test	r9b, 1
	je	.label_360
	and	al, 1
	jne	.label_360
	cmp	r14, r11
	jae	.label_361
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_361:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_391
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_391:
	add	r14, 2
	xor	r9d, r9d
.label_360:
	mov	ebx, r15d
.label_323:
	cmp	r14, r11
	jae	.label_310
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_310:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_336
.label_408:
	xor	r13d, r13d
.label_405:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_345
.label_413:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbx, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	jae	.label_385
	mov	rsi, qword ptr [rsp + 0x50]
.label_312:
	mov	rax, qword ptr [rsp + 0x58]
	cmp	byte ptr [rax + r12], 0
	je	.label_409
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_312
	xor	r13d, r13d
	jmp	.label_345
.label_385:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_345
.label_409:
	xor	r13d, r13d
	jmp	.label_345
.label_359:
	xor	r13d, r13d
	jmp	.label_330
.label_381:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_330
	.section	.text
	.align	16
	#Procedure 0x404b98
	.globl sub_404b98
	.type sub_404b98, @function
sub_404b98:

	nop	dword ptr [rax + rax]
.label_329:
	test	r14, r14
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0xa8]
	and	cl, 1
	mov	qword ptr [rsp + 0x20], rbp
	je	.label_398
	or	dl, al
	je	.label_318
.label_398:
	test	cl, cl
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x1d]
	mov	rsi, qword ptr [rsp + 0xa8]
	je	.label_350
	or	dl, al
	jne	.label_350
	test	r10b, 1
	jne	.label_414
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_350
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x60]
	je	.label_303
.label_350:
	mov	rdx, qword ptr [rsp + 0x40]
	test	rdx, rdx
	je	.label_307
	test	cl, cl
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_313
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_313
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_404:
	cmp	r14, r11
	jae	.label_410
	mov	byte ptr [rcx + r14], al
.label_410:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_404
	jmp	.label_313
.label_306:
	mov	qword ptr [rsp + 0x20], rbp
.label_318:
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
.label_369:
	mov	r14, rax
.label_348:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_414:
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
	jmp	.label_369
.label_307:
	mov	rcx, qword ptr [rsp + 8]
.label_313:
	cmp	r14, r11
	jae	.label_348
	mov	byte ptr [rcx + r14], 0
	jmp	.label_348
.label_400:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404d2c
	.globl sub_404d2c
	.type sub_404d2c, @function
sub_404d2c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404d30
	.globl rotr64
	.type rotr64, @function
rotr64:

	mov	ecx, esi
	ror	rdi, cl
	mov	rax, rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x404d39
	.globl sub_404d39
	.type sub_404d39, @function
sub_404d39:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404d40
	.globl rotl64
	.type rotl64, @function
rotl64:

	mov	ecx, esi
	rol	rdi, cl
	mov	rax, rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x404d49
	.globl sub_404d49
	.type sub_404d49, @function
sub_404d49:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404d50
	.globl rotl8
	.type rotl8, @function
rotl8:

	mov	eax, edi
	mov	ecx, esi
	shl	eax, cl
	mov	ecx, 8
	sub	ecx, esi
	shr	edi, cl
	or	edi, eax
	mov	eax, edi
	ret	
	.section	.text
	.align	16
	#Procedure 0x404d64
	.globl sub_404d64
	.type sub_404d64, @function
sub_404d64:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404d70
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
	#Procedure 0x404d86
	.globl sub_404d86
	.type sub_404d86, @function
sub_404d86:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404d90

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
	je	.label_417
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
.label_417:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404de2
	.globl sub_404de2
	.type sub_404de2, @function
sub_404de2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404df0
	.globl hash_string
	.type hash_string, @function
hash_string:

	mov	al, byte ptr [rdi]
	xor	edx, edx
	test	al, al
	je	.label_418
	inc	rdi
	xor	edx, edx
	nop	dword ptr [rax]
.label_419:
	mov	rcx, rdx
	shl	rcx, 5
	sub	rcx, rdx
	movzx	eax, al
	add	rax, rcx
	xor	edx, edx
	div	rsi
	movzx	eax, byte ptr [rdi]
	inc	rdi
	test	al, al
	jne	.label_419
.label_418:
	mov	rax, rdx
	ret	
	.section	.text
	.align	16
	#Procedure 0x404e23
	.globl sub_404e23
	.type sub_404e23, @function
sub_404e23:

	nop	word ptr cs:[rax + rax]
.label_421:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x404e35
	.globl sub_404e35
	.type sub_404e35, @function
sub_404e35:

	nop	word ptr cs:[rax + rax]
.label_420:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x404e4b

	.globl record_file
	.type record_file, @function
record_file:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r15, rdx
	mov	r12, rsi
	mov	r14, rdi
	test	r14, r14
	je	.label_420
	mov	edi, 0x18
	call	xmalloc
	mov	rbx, rax
	mov	rdi, r12
	call	xstrdup
	mov	qword ptr [rbx], rax
	mov	rax, qword ptr [r15 + 8]
	mov	qword ptr [rbx + 8], rax
	mov	rax, qword ptr [r15]
	mov	qword ptr [rbx + 0x10], rax
	mov	rdi, r14
	mov	rsi, rbx
	call	hash_insert
	test	rax, rax
	je	.label_421
	cmp	rax, rbx
	je	.label_420
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	triple_free
	.section	.text
	.align	16
	#Procedure 0x404eb0

	.globl transfer_entries
	.type transfer_entries, @function
transfer_entries:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r12d, edx
	mov	rbp, rsi
	mov	r14, rdi
	mov	r15, qword ptr [rbp]
	mov	al, 1
	cmp	r15, qword ptr [rbp + 8]
	jae	.label_425
	mov	qword ptr [rsp], rbp
	nop	dword ptr [rax + rax]
.label_429:
	cmp	qword ptr [r15], 0
	je	.label_423
	mov	rbx, qword ptr [r15 + 8]
	test	rbx, rbx
	je	.label_428
	nop	word ptr cs:[rax + rax]
.label_422:
	mov	r13, qword ptr [rbx]
	mov	rdi, r14
	mov	rsi, r13
	call	safe_hasher
	mov	rbp, qword ptr [rbx + 8]
	cmp	qword ptr [rax], 0
	je	.label_424
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rbx + 8], rcx
	mov	qword ptr [rax + 8], rbx
	jmp	.label_426
	.section	.text
	.align	16
	#Procedure 0x404f26
	.globl sub_404f26
	.type sub_404f26, @function
sub_404f26:

	nop	word ptr cs:[rax + rax]
.label_424:
	mov	qword ptr [rax], r13
	inc	qword ptr [r14 + 0x18]
	mov	rdi, r14
	mov	rsi, rbx
	call	free_entry
.label_426:
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_422
.label_428:
	mov	r13, qword ptr [r15]
	mov	qword ptr [r15 + 8], 0
	test	r12b, r12b
	mov	rbp, qword ptr [rsp]
	jne	.label_423
	mov	rdi, r14
	mov	rsi, r13
	call	safe_hasher
	mov	rbx, rax
	cmp	qword ptr [rbx], 0
	je	.label_427
	mov	rdi, r14
	call	allocate_entry
	test	rax, rax
	je	.label_430
	mov	qword ptr [rax], r13
	mov	rcx, qword ptr [rbx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbx + 8], rax
	jmp	.label_431
.label_430:
	xor	eax, eax
	jmp	.label_425
	.section	.text
	.align	16
	#Procedure 0x404f94
	.globl sub_404f94
	.type sub_404f94, @function
sub_404f94:

	nop	word ptr cs:[rax + rax]
.label_427:
	mov	qword ptr [rbx], r13
	inc	qword ptr [r14 + 0x18]
.label_431:
	mov	qword ptr [r15], 0
	dec	qword ptr [rbp + 0x18]
.label_423:
	add	r15, 0x10
	cmp	r15, qword ptr [rbp + 8]
	jb	.label_429
	mov	al, 1
.label_425:
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
	#Procedure 0x404fd0

	.globl raw_hasher
	.type raw_hasher, @function
raw_hasher:
	push	rbx
	mov	rbx, rsi
	mov	esi, 3
	call	rotr_sz
	xor	edx, edx
	div	rbx
	mov	rax, rdx
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x404fe8
	.globl sub_404fe8
	.type sub_404fe8, @function
sub_404fe8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404ff0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_161
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_432
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x405015
	.globl sub_405015
	.type sub_405015, @function
sub_405015:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405020

	.globl is_prime
	.type is_prime, @function
is_prime:
	mov	r8, rdi
	mov	esi, 3
	cmp	r8, 0xa
	jb	.label_433
	mov	esi, 3
	mov	edi, 9
	mov	ecx, 0x10
	nop	dword ptr [rax]
.label_434:
	xor	edx, edx
	mov	rax, r8
	div	rsi
	test	rdx, rdx
	je	.label_433
	add	rdi, rcx
	add	rsi, 2
	add	rcx, 8
	cmp	rdi, r8
	jb	.label_434
.label_433:
	xor	edx, edx
	mov	rax, r8
	div	rsi
	test	rdx, rdx
	setne	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x40506c
	.globl sub_40506c
	.type sub_40506c, @function
sub_40506c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405070
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
	#Procedure 0x405089
	.globl sub_405089
	.type sub_405089, @function
sub_405089:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405090
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x40509a
	.globl sub_40509a
	.type sub_40509a, @function
sub_40509a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4050a0
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
	#Procedure 0x405112
	.globl sub_405112
	.type sub_405112, @function
sub_405112:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405120
	.globl rotr16
	.type rotr16, @function
rotr16:

	mov	eax, edi
	mov	ecx, esi
	shr	eax, cl
	mov	ecx, 0x10
	sub	ecx, esi
	shl	edi, cl
	or	edi, eax
	mov	eax, edi
	ret	
	.section	.text
	.align	16
	#Procedure 0x405134
	.globl sub_405134
	.type sub_405134, @function
sub_405134:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405140
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	add	edi, -0x30
	cmp	edi, 0xa
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x40514a
	.globl sub_40514a
	.type sub_40514a, @function
sub_40514a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405150
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	.section	.text
	.align	16
	#Procedure 0x40515a
	.globl sub_40515a
	.type sub_40515a, @function
sub_40515a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405160
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	mov	eax,  dword ptr [dword ptr [rip + label_435]]
	mov	dword ptr [rdi + 0x10], eax
	movups	xmm0,  xmmword ptr [word ptr [rip + default_tuning]]
	movups	xmmword ptr [rdi], xmm0
	ret	
	.section	.text
	.align	16
	#Procedure 0x405174
	.globl sub_405174
	.type sub_405174, @function
sub_405174:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405180
	.globl c_islower
	.type c_islower, @function
c_islower:

	add	edi, -0x61
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x40518a
	.globl sub_40518a
	.type sub_40518a, @function
sub_40518a:

	nop	word ptr [rax + rax]
.label_438:
	xor	eax, eax
	jmp	.label_436
	.section	.text
	.align	16
	#Procedure 0x405194
	.globl sub_405194
	.type sub_405194, @function
sub_405194:

	nop	word ptr cs:[rax + rax]
.label_436:
	ret	
	.section	.text
	.align	16
	#Procedure 0x40519f
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	add	edi, -0x21
	cmp	edi, 0x5d
	ja	.label_438
	mov	al, 1
	jmp	qword ptr [word ptr [+ (rdi * 8) + label_437]]
	.section	.text
	.align	16
	#Procedure 0x4051b0

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	.section	.text
	.align	16
	#Procedure 0x4051b5
	.globl sub_4051b5
	.type sub_4051b5, @function
sub_4051b5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4051c0
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
	#Procedure 0x4051cf
	.globl sub_4051cf
	.type sub_4051cf, @function
sub_4051cf:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4051d0
	.globl hash_get_entries
	.type hash_get_entries, @function
hash_get_entries:

	mov	r8, qword ptr [rdi]
	xor	eax, eax
	cmp	r8, qword ptr [rdi + 8]
	jae	.label_439
	xor	eax, eax
.label_441:
	cmp	qword ptr [r8], 0
	je	.label_440
	test	r8, r8
	je	.label_440
	mov	r9, r8
	nop	dword ptr [rax + rax]
.label_442:
	cmp	rax, rdx
	jae	.label_439
	mov	rcx, qword ptr [r9]
	mov	qword ptr [rsi + rax*8], rcx
	inc	rax
	mov	r9, qword ptr [r9 + 8]
	test	r9, r9
	jne	.label_442
.label_440:
	add	r8, 0x10
	cmp	r8, qword ptr [rdi + 8]
	jb	.label_441
.label_439:
	ret	
	.section	.text
	.align	16
	#Procedure 0x405213
	.globl sub_405213
	.type sub_405213, @function
sub_405213:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405220
	.globl hash_table_ok
	.type hash_table_ok, @function
hash_table_ok:

	mov	rsi, qword ptr [rdi]
	xor	edx, edx
	cmp	rsi, qword ptr [rdi + 8]
	mov	ecx, 0
	jae	.label_443
	mov	r8, qword ptr [rdi + 8]
	xor	ecx, ecx
	xor	edx, edx
	nop	dword ptr [rax + rax]
.label_448:
	cmp	qword ptr [rsi], 0
	je	.label_446
	mov	rax, rsi
	nop	dword ptr [rax]
.label_444:
	inc	rcx
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_444
	inc	rdx
.label_446:
	add	rsi, 0x10
	cmp	rsi, r8
	jb	.label_448
.label_443:
	cmp	rdx, qword ptr [rdi + 0x18]
	jne	.label_445
	mov	al, 1
	cmp	rcx, qword ptr [rdi + 0x20]
	je	.label_447
.label_445:
	xor	eax, eax
.label_447:
	ret	
	.section	.text
	.align	16
	#Procedure 0x405279
	.globl sub_405279
	.type sub_405279, @function
sub_405279:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405280

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	.section	.text
	.align	16
	#Procedure 0x405289
	.globl sub_405289
	.type sub_405289, @function
sub_405289:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405290

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
	mov	rax,  qword ptr [word ptr [rip + label_449]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_450]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_451]]
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
	#Procedure 0x4052f8
	.globl sub_4052f8
	.type sub_4052f8, @function
sub_4052f8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405300
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
	#Procedure 0x405333
	.globl sub_405333
	.type sub_405333, @function
sub_405333:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405340
	.globl hash_do_for_each
	.type hash_do_for_each, @function
hash_do_for_each:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	r15, rsi
	mov	r12, rdi
	mov	r13, qword ptr [r12]
	xor	ebx, ebx
	cmp	r13, qword ptr [r12 + 8]
	jae	.label_452
	xor	ebx, ebx
.label_455:
	cmp	qword ptr [r13], 0
	je	.label_453
	test	r13, r13
	je	.label_453
	mov	rbp, r13
	nop	word ptr cs:[rax + rax]
.label_454:
	mov	rdi, qword ptr [rbp]
	mov	rsi, r14
	call	r15
	test	al, al
	je	.label_452
	inc	rbx
	mov	rbp, qword ptr [rbp + 8]
	test	rbp, rbp
	jne	.label_454
.label_453:
	add	r13, 0x10
	cmp	r13, qword ptr [r12 + 8]
	jb	.label_455
.label_452:
	mov	rax, rbx
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
	#Procedure 0x4053b7
	.globl sub_4053b7
	.type sub_4053b7, @function
sub_4053b7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4053c0
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_456
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_456
.label_457:
	ret	
.label_456:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_457
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x4053e6
	.globl sub_4053e6
	.type sub_4053e6, @function
sub_4053e6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4053f0
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_458
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_458:
	push	rax
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x405416
	.globl sub_405416
	.type sub_405416, @function
sub_405416:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405420

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_459
	test	rbx, rbx
	jne	.label_459
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_459:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_461
	test	rax, rax
	je	.label_460
.label_461:
	pop	rbx
	ret	
.label_460:
	call	xalloc_die
.label_463:
	mov	qword ptr [rbx], 0
	jmp	.label_462
	.section	.text
	.align	16
	#Procedure 0x405459

	.globl hash_find_entry
	.type hash_find_entry, @function
hash_find_entry:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r12d, ecx
	mov	rbp, rdx
	mov	r13, rsi
	mov	r14, rdi
	call	safe_hasher
	mov	rbx, rax
	mov	qword ptr [rbp], rbx
	mov	rsi, qword ptr [rbx]
	xor	r15d, r15d
	test	rsi, rsi
	je	.label_462
	cmp	rsi, r13
	je	.label_465
	mov	rdi, r13
	call	qword ptr [r14 + 0x38]
	test	al, al
	je	.label_468
.label_465:
	mov	r15, qword ptr [rbx]
	test	r12b, r12b
	je	.label_462
	mov	rsi, qword ptr [rbx + 8]
	test	rsi, rsi
	je	.label_463
	movups	xmm0, xmmword ptr [rsi]
	movups	xmmword ptr [rbx], xmm0
	jmp	.label_466
.label_464:
	mov	rsi, qword ptr [rbx]
	mov	r15, qword ptr [rsi]
	test	r12b, r12b
	je	.label_462
	mov	rax, qword ptr [rsi + 8]
	mov	qword ptr [rbx], rax
.label_466:
	mov	rdi, r14
	call	free_entry
.label_462:
	mov	rax, r15
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
	#Procedure 0x4054e0
	.globl sub_4054e0
	.type sub_4054e0, @function
sub_4054e0:

	nop	word ptr [rax + rax]
.label_468:
	mov	rax, qword ptr [rbx + 8]
	xor	r15d, r15d
	test	rax, rax
	je	.label_462
	add	rbx, 8
	xor	r15d, r15d
	nop	
.label_467:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r13
	je	.label_464
	mov	rdi, r13
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_464
	mov	rbx, qword ptr [rbx]
	mov	rax, qword ptr [rbx + 8]
	add	rbx, 8
	test	rax, rax
	jne	.label_467
	jmp	.label_462
	.section	.text
	.align	16
	#Procedure 0x405520

	.globl safe_hasher
	.type safe_hasher, @function
safe_hasher:
	push	rbx
	mov	rbx, rdi
	mov	rax, qword ptr [rbx + 0x10]
	mov	rdi, rsi
	mov	rsi, rax
	call	qword ptr [rbx + 0x30]
	cmp	rax, qword ptr [rbx + 0x10]
	jae	.label_469
	shl	rax, 4
	add	rax, qword ptr [rbx]
	pop	rbx
	ret	
.label_469:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405545
	.globl sub_405545
	.type sub_405545, @function
sub_405545:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405550
	.globl rotl_sz
	.type rotl_sz, @function
rotl_sz:

	mov	ecx, esi
	rol	rdi, cl
	mov	rax, rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x405559
	.globl sub_405559
	.type sub_405559, @function
sub_405559:

	nop	dword ptr [rax]
.label_471:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_470
	test	cl, cl
	jne	.label_470
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_470:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40558b
	.globl sub_40558b
	.type sub_40558b, @function
sub_40558b:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405595

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
	je	.label_471
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_470
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_470
	.section	.text
	.align	16
	#Procedure 0x4055d0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_472
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_472
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_472:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	16
	#Procedure 0x4055f6
	.globl sub_4055f6
	.type sub_4055f6, @function
sub_4055f6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405600

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
	mov	rcx,  qword ptr [word ptr [rip + label_449]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_450]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_451]]
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
	#Procedure 0x40566d
	.globl sub_40566d
	.type sub_40566d, @function
sub_40566d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405670

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	mov	eax, esi
	mov	rsi, -1
	mov	edx, eax
	jmp	quotearg_char_mem
	.section	.text
	.align	16
	#Procedure 0x40567d
	.globl sub_40567d
	.type sub_40567d, @function
sub_40567d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405680

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	.section	.text
	.align	16
	#Procedure 0x405687
	.globl sub_405687
	.type sub_405687, @function
sub_405687:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405690

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:label_478
	nop	
.label_477:
	mov	edi, OFFSET FLAT:label_165
	call	strcmp
	test	eax, eax
	je	.label_475
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_477
.label_475:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:label_165
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_480
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_166
	mov	ecx, OFFSET FLAT:label_205
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_473
	mov	esi, OFFSET FLAT:label_474
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_473
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_479
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_473:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_481
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:label_165
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_205
	mov	ecx, OFFSET FLAT:label_165
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_476
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:label_482
	mov	ecx, OFFSET FLAT:label_161
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
	#Procedure 0x4057aa
	.globl sub_4057aa
	.type sub_4057aa, @function
sub_4057aa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4057b0
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
	#Procedure 0x4057d7
	.globl sub_4057d7
	.type sub_4057d7, @function
sub_4057d7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4057e0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_483
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_122
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405810

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_485
	cmp	byte ptr [rax], 0x43
	jne	.label_487
	cmp	byte ptr [rax + 1], 0
	je	.label_484
.label_487:
	mov	esi, OFFSET FLAT:label_486
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_485
.label_484:
	xor	ebx, ebx
.label_485:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x405841
	.globl sub_405841
	.type sub_405841, @function
sub_405841:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405850

	.globl mdir_name
	.type mdir_name, @function
mdir_name:
	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	call	dir_len
	mov	rbx, rax
	xor	eax, eax
	test	rbx, rbx
	sete	al
	lea	rdi, [rbx + rax + 1]
	call	malloc
	mov	r14, rax
	xor	eax, eax
	test	r14, r14
	je	.label_488
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, rbx
	call	memcpy
	test	rbx, rbx
	jne	.label_489
	mov	byte ptr [r14 + rbx], 0x2e
	mov	ebx, 1
.label_489:
	mov	byte ptr [r14 + rbx], 0
	mov	rax, r14
.label_488:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x4058a7
	.globl sub_4058a7
	.type sub_4058a7, @function
sub_4058a7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4058b0

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x4058ba
	.globl sub_4058ba
	.type sub_4058ba, @function
sub_4058ba:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4058c0
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
	#Procedure 0x4058d0

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	.section	.text
	.align	16
	#Procedure 0x4058d9
	.globl sub_4058d9
	.type sub_4058d9, @function
sub_4058d9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4058e0
	.globl quote
	.type quote, @function
quote:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quote_n
	.section	.text
	.align	16
	#Procedure 0x4058ea
	.globl sub_4058ea
	.type sub_4058ea, @function
sub_4058ea:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4058f0
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_490
.label_491:
	ret	
.label_490:
	cmp	edi, 0x7f
	je	.label_491
	xor	eax, eax
	jmp	.label_491
	.section	.text
	.align	16
	#Procedure 0x405901
	.globl sub_405901
	.type sub_405901, @function
sub_405901:

	nop	word ptr cs:[rax + rax]
.label_492:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	.section	.text
	.align	16
	#Procedure 0x40591c
	.globl sub_40591c
	.type sub_40591c, @function
sub_40591c:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405929

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_492
	ret	
	.section	.text
	.align	16
	#Procedure 0x405930
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
	#Procedure 0x40593d
	.globl sub_40593d
	.type sub_40593d, @function
sub_40593d:

	nop	dword ptr [rax]
.label_493:
	push	rax
	mov	edi, 0x10
	call	malloc
	add	rsp, 8
	ret	
	.section	.text
	.align	16
	#Procedure 0x405950
	.globl sub_405950
	.type sub_405950, @function
sub_405950:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40595e

	.globl allocate_entry
	.type allocate_entry, @function
allocate_entry:
	mov	rax, qword ptr [rdi + 0x48]
	test	rax, rax
	je	.label_493
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rdi + 0x48], rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x405970

	.globl hash_initialize
	.type hash_initialize, @function
hash_initialize:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	rbx, r8
	mov	r12, rsi
	mov	r15, rdi
	test	rdx, rdx
	mov	ebp, OFFSET FLAT:raw_hasher
	cmovne	rbp, rdx
	test	rcx, rcx
	mov	r14d, OFFSET FLAT:raw_comparator
	cmovne	r14, rcx
	mov	edi, 0x50
	call	malloc
	mov	r13, rax
	xor	eax, eax
	test	r13, r13
	je	.label_495
	mov	qword ptr [rsp], rbx
	test	r12, r12
	mov	ebx, OFFSET FLAT:default_tuning
	cmovne	rbx, r12
	mov	qword ptr [r13 + 0x28], rbx
	mov	rdi, r13
	call	check_tuning
	test	al, al
	je	.label_494
	mov	rdi, r15
	mov	rsi, rbx
	call	compute_bucket_size
	mov	qword ptr [r13 + 0x10], rax
	test	rax, rax
	je	.label_494
	mov	esi, 0x10
	mov	rdi, rax
	call	rpl_calloc
	mov	qword ptr [r13], rax
	test	rax, rax
	je	.label_494
	mov	rcx, qword ptr [r13 + 0x10]
	shl	rcx, 4
	add	rax, rcx
	mov	qword ptr [r13 + 8], rax
	xorps	xmm0, xmm0
	movups	xmmword ptr [r13 + 0x18], xmm0
	mov	qword ptr [r13 + 0x30], rbp
	mov	qword ptr [r13 + 0x38], r14
	mov	rax, qword ptr [rsp]
	mov	qword ptr [r13 + 0x40], rax
	mov	qword ptr [r13 + 0x48], 0
	mov	rax, r13
	jmp	.label_495
.label_494:
	mov	rdi, r13
	call	free
	xor	eax, eax
.label_495:
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
	#Procedure 0x405a4c
	.globl sub_405a4c
	.type sub_405a4c, @function
sub_405a4c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405a50
	.globl rotl16
	.type rotl16, @function
rotl16:

	mov	eax, edi
	mov	ecx, esi
	shl	eax, cl
	mov	ecx, 0x10
	sub	ecx, esi
	shr	edi, cl
	or	edi, eax
	mov	eax, edi
	ret	
	.section	.text
	.align	16
	#Procedure 0x405a64
	.globl sub_405a64
	.type sub_405a64, @function
sub_405a64:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405a70

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
	jne	.label_500
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
	je	.label_496
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_501
	mov	eax, OFFSET FLAT:label_502
	jmp	.label_499
.label_496:
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
	je	.label_503
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_497
	mov	eax, OFFSET FLAT:label_498
	jmp	.label_499
.label_503:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:label_390
	mov	eax, OFFSET FLAT:label_325
.label_499:
	cmove	rax, rcx
.label_500:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405b2d
	.globl sub_405b2d
	.type sub_405b2d, @function
sub_405b2d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405b30

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
	#Procedure 0x405b5d
	.globl sub_405b5d
	.type sub_405b5d, @function
sub_405b5d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405b60

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
	#Procedure 0x405b73
	.globl sub_405b73
	.type sub_405b73, @function
sub_405b73:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405b80
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_504
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_504:
	push	rax
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x405ba3
	.globl sub_405ba3
	.type sub_405ba3, @function
sub_405ba3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405bb0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_505
	test	rax, rax
	je	.label_506
.label_505:
	pop	rbx
	ret	
.label_506:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x405bca
	.globl sub_405bca
	.type sub_405bca, @function
sub_405bca:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405bd0

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
	#Procedure 0x405c07
	.globl sub_405c07
	.type sub_405c07, @function
sub_405c07:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405c10

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
	#Procedure 0x405c46
	.globl sub_405c46
	.type sub_405c46, @function
sub_405c46:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405c50
	.globl triple_compare
	.type triple_compare, @function
triple_compare:

	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	jne	.label_507
	mov	rax, qword ptr [rdi + 0x10]
	cmp	rax, qword ptr [rsi + 0x10]
	jne	.label_508
	push	rax
	mov	rdi, qword ptr [rdi]
	mov	rsi, qword ptr [rsi]
	call	same_name
	add	rsp, 8
	ret	
.label_507:
	xor	eax, eax
	ret	
.label_508:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x405c7b
	.globl sub_405c7b
	.type sub_405c7b, @function
sub_405c7b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405c80

	.globl relpath
	.type relpath, @function
relpath:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x10
	mov	rbx, rsi
	mov	r14, rdi
	mov	qword ptr [rsp + 8], rdx
	mov	qword ptr [rsp], rcx
	mov	rdi, rbx
	mov	rsi, r14
	call	path_common_prefix
	test	eax, eax
	je	.label_518
	cdqe	
	lea	rcx, [r14 + rax]
	cmp	byte ptr [rbx + rax], 0x2f
	lea	rdx, [rbx + rax + 1]
	lea	rbx, [rbx + rax]
	cmove	rbx, rdx
	cmp	byte ptr [r14 + rax], 0x2f
	lea	r14, [r14 + rax + 1]
	cmovne	r14, rcx
	cmp	byte ptr [rbx], 0
	je	.label_520
	lea	r15, [rsp + 8]
	lea	r12, [rsp]
	mov	edi, OFFSET FLAT:label_515
	mov	rsi, r15
	mov	rdx, r12
	call	buffer_or_output
	mov	ebp, eax
	jmp	.label_522
	.section	.text
	.align	16
	#Procedure 0x405cf9
	.globl sub_405cf9
	.type sub_405cf9, @function
sub_405cf9:

	nop	dword ptr [rax]
.label_511:
	inc	rbx
.label_522:
	movzx	eax, byte ptr [rbx]
	cmp	al, 0x2f
	je	.label_514
	test	al, al
	jne	.label_511
	jmp	.label_512
.label_514:
	mov	edi, OFFSET FLAT:label_513
	mov	rsi, r15
	mov	rdx, r12
	call	buffer_or_output
	and	bpl, 1
	or	bpl, al
	jmp	.label_511
.label_512:
	cmp	byte ptr [r14], 0
	je	.label_516
	lea	r15, [rsp + 8]
	lea	r12, [rsp]
	mov	edi, OFFSET FLAT:label_521
	mov	rsi, r15
	mov	rdx, r12
	call	buffer_or_output
	and	bpl, 1
	or	bpl, al
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, r12
	call	buffer_or_output
	or	bpl, al
	jmp	.label_516
.label_518:
	xor	eax, eax
	jmp	.label_517
.label_520:
	cmp	byte ptr [r14], 0
	mov	edi, OFFSET FLAT:label_519
	cmovne	rdi, r14
	lea	rsi, [rsp + 8]
	lea	rdx, [rsp]
	call	buffer_or_output
	mov	ebp, eax
.label_516:
	and	bpl, 1
	je	.label_509
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_510
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	mov	esi, 0x24
	mov	edx, OFFSET FLAT:label_122
	xor	eax, eax
	call	error
.label_509:
	test	bpl, bpl
	sete	al
.label_517:
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405dc3
	.globl sub_405dc3
	.type sub_405dc3, @function
sub_405dc3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405dd0

	.globl buffer_or_output
	.type buffer_or_output, @function
buffer_or_output:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r14, rdx
	mov	r15, rsi
	mov	r12, rdi
	mov	r13, qword ptr [r15]
	test	r13, r13
	je	.label_523
	mov	rdi, r12
	call	strlen
	mov	rbx, rax
	mov	al, 1
	cmp	rbx, qword ptr [r14]
	jae	.label_524
	mov	rdx, rbx
	inc	rdx
	mov	rdi, r13
	mov	rsi, r12
	call	memcpy
	add	qword ptr [r15], rbx
	sub	qword ptr [r14], rbx
	jmp	.label_525
.label_523:
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, r12
	call	fputs_unlocked
.label_525:
	xor	eax, eax
.label_524:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x405e30
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_526
	mov	eax, 0x80001f
	mov	ecx, edi
	shr	eax, cl
	and	eax, 1
	ret	
.label_526:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x405e48
	.globl sub_405e48
	.type sub_405e48, @function
sub_405e48:

	nop	dword ptr [rax + rax]
.label_529:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_527
.label_528:
	mov	eax, 1
	test	bpl, bpl
	je	.label_527
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
.label_527:
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
	#Procedure 0x405e98
	.globl sub_405e98
	.type sub_405e98, @function
sub_405e98:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405e9b

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
	je	.label_529
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_528
	jmp	.label_527
.label_534:
	mov	cl, byte ptr [rsi]
	cmp	cl, 0x2f
	jne	.label_530
.label_531:
	mov	eax, r8d
.label_532:
	ret	
	.section	.text
	.align	16
	#Procedure 0x405edb
	.globl sub_405edb
	.type sub_405edb, @function
sub_405edb:

	nop	word ptr cs:[rax + rax]
.label_536:
	xor	eax, eax
	jmp	.label_533
.label_537:
	add	rsi, r8
	cmp	byte ptr [rdi + r8], 0
	lea	rdi, [rdi + r8]
	jne	.label_538
.label_533:
	cmp	byte ptr [rsi], 0
	je	.label_531
	cmp	byte ptr [rdi], 0
	je	.label_534
.label_538:
	mov	cl, byte ptr [rsi]
.label_530:
	test	cl, cl
	jne	.label_532
	cmp	byte ptr [rdi], 0x2f
	je	.label_531
	jmp	.label_532
	.section	.text
	.align	16
	#Procedure 0x405f11

	.globl path_common_prefix
	.type path_common_prefix, @function
path_common_prefix:
	cmp	byte ptr [rdi + 1], 0x2f
	sete	cl
	cmp	byte ptr [rsi + 1], 0x2f
	sete	dl
	xor	eax, eax
	xor	dl, cl
	jne	.label_532
	mov	dl, byte ptr [rdi]
	xor	r8d, r8d
	test	dl, dl
	je	.label_536
	xor	r8d, r8d
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_535:
	movzx	ecx, byte ptr [rsi + r8]
	test	cl, cl
	je	.label_537
	cmp	dl, cl
	jne	.label_537
	lea	rcx, [r8 + 1]
	cmp	dl, 0x2f
	cmove	eax, ecx
	movzx	edx, byte ptr [rdi + r8 + 1]
	test	dl, dl
	mov	r8, rcx
	jne	.label_535
	add	rsi, rcx
	add	rdi, rcx
	mov	r8d, ecx
	jmp	.label_533
	.section	.text
	.align	16
	#Procedure 0x405f70

	.globl base_len
	.type base_len, @function
base_len:
	push	rbx
	mov	rbx, rdi
	call	strlen
	mov	rcx, rax
	nop	dword ptr [rax]
.label_540:
	mov	rax, rcx
	cmp	rax, 2
	jb	.label_539
	lea	rcx, [rax - 1]
	cmp	byte ptr [rbx + rax - 1], 0x2f
	je	.label_540
.label_539:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x405f96
	.globl sub_405f96
	.type sub_405f96, @function
sub_405f96:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405fa0

	.globl triple_compare_ino_str
	.type triple_compare_ino_str, @function
triple_compare_ino_str:
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	jne	.label_541
	mov	rax, qword ptr [rdi + 0x10]
	cmp	rax, qword ptr [rsi + 0x10]
	jne	.label_542
	push	rax
	mov	rdi, qword ptr [rdi]
	mov	rsi, qword ptr [rsi]
	call	strcmp
	test	eax, eax
	sete	al
	add	rsp, 8
	ret	
.label_541:
	xor	eax, eax
	ret	
.label_542:
	xor	eax, eax
	ret	
.label_543:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x405fd5
	.globl sub_405fd5
	.type sub_405fd5, @function
sub_405fd5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405fdf

	.globl xgetcwd
	.type xgetcwd, @function
xgetcwd:
	push	rbx
	xor	edi, edi
	xor	esi, esi
	call	getcwd
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_544
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	je	.label_543
.label_544:
	mov	rax, rbx
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x406000
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x406008
	.globl sub_406008
	.type sub_406008, @function
sub_406008:

	nop	dword ptr [rax + rax]
.label_545:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x406013
	.globl sub_406013
	.type sub_406013, @function
sub_406013:

	nop	
	.section	.text
	.align	16
	#Procedure 0x406015
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_545
	movabs	rax, 0x7e0000007e03ff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_546:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x406035
	.globl sub_406035
	.type sub_406035, @function
sub_406035:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406043

	.globl dir_name
	.type dir_name, @function
dir_name:
	push	rax
	call	mdir_name
	test	rax, rax
	je	.label_546
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x406050

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
	je	.label_547
	cmp	r15, -2
	jb	.label_547
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_547
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_547:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x4060a6
	.globl sub_4060a6
	.type sub_4060a6, @function
sub_4060a6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4060b0
	.globl hash_delete
	.type hash_delete, @function
hash_delete:

	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x10
	mov	r15, rdi
	lea	rdx, [rsp + 8]
	mov	ecx, 1
	call	hash_find_entry
	mov	r14, rax
	xor	eax, eax
	test	r14, r14
	je	.label_552
	dec	qword ptr [r15 + 0x20]
	mov	rax, qword ptr [rsp + 8]
	cmp	qword ptr [rax], 0
	jne	.label_551
	mov	rax, qword ptr [r15 + 0x18]
	dec	rax
	mov	qword ptr [r15 + 0x18], rax
	mov	ecx, eax
	and	ecx, 1
	test	rax, rax
	js	.label_558
	cvtsi2ss	xmm0, rax
	jmp	.label_548
.label_554:
	shr	rcx, 1
	or	rdx, rcx
	xorps	xmm1, xmm1
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_557:
	mov	rcx, qword ptr [r15 + 0x28]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_556
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rax
	jmp	.label_559
.label_550:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_553:
	mulss	xmm1, dword ptr [rax]
	ucomiss	xmm1, xmm0
	jbe	.label_551
	mov	rdi, r15
	call	check_tuning
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [r15 + 0x18]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_554
	xorps	xmm1, xmm1
	cvtsi2ss	xmm1, rcx
	jmp	.label_557
.label_558:
	shr	rax, 1
	or	rcx, rax
	cvtsi2ss	xmm0, rcx
	addss	xmm0, xmm0
.label_548:
	mov	rcx, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x28]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_550
	cvtsi2ss	xmm1, rcx
	jmp	.label_553
.label_556:
	shr	rax, 1
	or	rdx, rax
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_559:
	movss	xmm2, dword ptr [rcx]
	mulss	xmm2, xmm0
	ucomiss	xmm2, xmm1
	jbe	.label_551
	mulss	xmm0, dword ptr [rcx + 4]
	cmp	byte ptr [rcx + 0x10], 0
	jne	.label_560
	mulss	xmm0, dword ptr [rcx + 8]
.label_560:
	movss	xmm1,  dword ptr [dword ptr [rip + label_135]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rsi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rsi, rcx
	mov	rdi, r15
	call	hash_rehash
	test	al, al
	jne	.label_551
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_549
	nop	dword ptr [rax + rax]
.label_555:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_555
.label_549:
	mov	qword ptr [r15 + 0x48], 0
.label_551:
	mov	rax, r14
.label_552:
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x406236
	.globl sub_406236
	.type sub_406236, @function
sub_406236:

	nop	word ptr cs:[rax + rax]
.label_563:
	cmp	byte ptr [rsi], 0x2f
	setne	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x406247

	.globl path_prefix
	.type path_prefix, @function
path_prefix:
	inc	rsi
	mov	al, byte ptr [rdi + 1]
	test	al, al
	je	.label_563
	cmp	al, 0x2f
	jne	.label_564
	cmp	byte ptr [rdi + 2], 0
	je	.label_566
	mov	al, byte ptr [rdi + 1]
.label_564:
	test	al, al
	je	.label_561
	add	rdi, 2
	nop	
.label_565:
	movzx	ecx, byte ptr [rsi]
	test	cl, cl
	je	.label_562
	cmp	al, cl
	jne	.label_562
	inc	rsi
	movzx	eax, byte ptr [rdi]
	inc	rdi
	test	al, al
	jne	.label_565
	jmp	.label_561
.label_562:
	cmp	byte ptr [rdi - 1], 0
	je	.label_561
	xor	eax, eax
	ret	
.label_566:
	cmp	byte ptr [rsi], 0x2f
	sete	al
	ret	
.label_561:
	mov	al, byte ptr [rsi]
	cmp	al, 0x2f
	sete	cl
	test	al, al
	sete	al
	or	al, cl
	ret	
.label_570:
	add	rcx, 0x10
.label_569:
	cmp	rcx, qword ptr [rdi + 8]
	jae	.label_568
	mov	rax, qword ptr [rcx]
	test	rax, rax
	je	.label_570
.label_567:
	ret	
.label_568:
	push	rax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4062b9
	.globl sub_4062b9
	.type sub_4062b9, @function
sub_4062b9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4062c0
	.globl hash_get_first
	.type hash_get_first, @function
hash_get_first:

	xor	eax, eax
	cmp	qword ptr [rdi + 0x20], 0
	je	.label_567
	mov	rcx, qword ptr [rdi]
	jmp	.label_569
	.section	.text
	.align	16
	#Procedure 0x4062ce
	.globl sub_4062ce
	.type sub_4062ce, @function
sub_4062ce:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4062d0
	.globl rotl32
	.type rotl32, @function
rotl32:

	mov	ecx, esi
	rol	edi, cl
	mov	eax, edi
	ret	
	.section	.text
	.align	16
	#Procedure 0x4062d7
	.globl sub_4062d7
	.type sub_4062d7, @function
sub_4062d7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406345
	.globl sub_406345
	.type sub_406345, @function
sub_406345:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406352
	.globl sub_406352
	.type sub_406352, @function
sub_406352:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406376
	.globl sub_406376
	.type sub_406376, @function
sub_406376:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406389
	.globl sub_406389
	.type sub_406389, @function
sub_406389:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406390

	.globl stat
	.type stat, @function
stat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__xstat
	.section	.text
	.align	16
	#Procedure 0x4063a0

	.globl lstat
	.type lstat, @function
lstat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__lxstat
	.section	.text
	.align	16
	#Procedure 0x4063b0

	.globl fstatat
	.type fstatat, @function
fstatat:
	mov	r8d, ecx
	mov	rcx, rdx
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstatat
