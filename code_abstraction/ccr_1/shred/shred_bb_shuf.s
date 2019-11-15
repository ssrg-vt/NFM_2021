	.section	.text
	.align	16
	#Procedure 0x401dd9
	.globl sub_401dd9
	.type sub_401dd9, @function
sub_401dd9:

	hlt	
	.section	.text
	.align	16
	#Procedure 0x401dda
	.globl sub_401dda
	.type sub_401dda, @function
sub_401dda:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401e12
	.globl sub_401e12
	.type sub_401e12, @function
sub_401e12:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401e5a
	.globl sub_401e5a
	.type sub_401e5a, @function
sub_401e5a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401e7c
	.globl sub_401e7c
	.type sub_401e7c, @function
sub_401e7c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401e8d
	.globl sub_401e8d
	.type sub_401e8d, @function
sub_401e8d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401ea6
	.globl sub_401ea6
	.type sub_401ea6, @function
sub_401ea6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401eb0
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
	#Procedure 0x401ee3
	.globl sub_401ee3
	.type sub_401ee3, @function
sub_401ee3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401ef0

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
	mov	esi, OFFSET FLAT:label_13
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbx, qword ptr [r15]
	test	rbx, rbx
	je	.label_11
	xor	r12d, r12d
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_15:
	test	rbp, rbp
	je	.label_9
	mov	rdi, r12
	mov	rsi, r13
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	je	.label_14
.label_9:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, qword ptr [r15 + rbp*8]
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_12
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	r12, r13
	jmp	.label_16
	.section	.text
	.align	16
	#Procedure 0x401f83
	.globl sub_401f83
	.type sub_401f83, @function
sub_401f83:

	nop	word ptr cs:[rax + rax]
.label_14:
	mov	rax,  qword ptr [word ptr [rip + stderr]]
	mov	qword ptr [rsp], rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_10
	xor	eax, eax
	mov	rdi, qword ptr [rsp]
	call	__fprintf_chk
.label_16:
	mov	rbx, qword ptr [r15 + rbp*8 + 8]
	inc	rbp
	add	r13, r14
	test	rbx, rbx
	jne	.label_15
.label_11:
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
	#Procedure 0x401fee
	.globl sub_401fee
	.type sub_401fee, @function
sub_401fee:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401ff0
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
	#Procedure 0x402017
	.globl sub_402017
	.type sub_402017, @function
sub_402017:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402020

	.globl human_readable
	.type human_readable, @function
human_readable:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	r14, r8
	mov	r15, rcx
	mov	r12, rsi
	mov	r13, rdi
	mov	eax, edx
	and	eax, 3
	mov	dword ptr [rsp + 0x3c], eax
	mov	dword ptr [rsp + 0x1c], edx
	mov	eax, edx
	and	eax, 0x20
	mov	dword ptr [rsp + 0x38], eax
	mov	eax, 0x400
	mov	ecx, 0x3e8
	cmovne	ecx, eax
	mov	dword ptr [rsp + 0x34], ecx
	call	localeconv
	mov	rbp, rax
	mov	rbx, qword ptr [rbp]
	mov	rdi, rbx
	call	strlen
	lea	rcx, [rax - 1]
	cmp	rcx, 0x10
	mov	ecx, 1
	cmovb	rcx, rax
	mov	qword ptr [rsp + 0x50], rcx
	mov	eax, OFFSET FLAT:label_23
	cmovb	rax, rbx
	mov	qword ptr [rsp + 0x40], rax
	mov	rbx, qword ptr [rbp + 8]
	mov	rbp, qword ptr [rbp + 0x10]
	mov	rdi, rbx
	call	strlen
	mov	rsi, r14
	cmp	rax, 0x11
	mov	r14d, OFFSET FLAT:label_47
	cmovb	r14, rbx
	mov	qword ptr [rsp + 0x20], r12
	lea	rax, [r12 + 0x287]
	mov	qword ptr [rsp + 0x28], rax
	cmp	rsi, r15
	mov	qword ptr [rsp + 0x60], rsi
	mov	qword ptr [rsp + 0x70], rbp
	mov	qword ptr [rsp + 0x68], r14
	jbe	.label_48
	test	r15, r15
	mov	r8d, dword ptr [rsp + 0x34]
	je	.label_21
	xor	edx, edx
	mov	rax, rsi
	div	r15
	test	rdx, rdx
	jne	.label_21
	xor	edx, edx
	mov	rax, rsi
	div	r15
	mov	rsi, rax
	xor	edx, edx
	mov	rax, r13
	div	rsi
	mov	r12, rax
	add	rdx, rdx
	lea	rax, [rdx + rdx*4]
	xor	edx, edx
	div	rsi
	mov	rcx, rax
	xor	ebp, ebp
	add	rdx, rdx
	setne	bpl
	cmp	rsi, rdx
	sbb	eax, eax
	and	eax, 1
	or	eax, 2
	cmp	rdx, rsi
	cmovae	ebp, eax
	jmp	.label_19
.label_48:
	xor	edx, edx
	mov	rax, r15
	div	rsi
	test	rdx, rdx
	mov	r8d, dword ptr [rsp + 0x34]
	jne	.label_21
	xor	ebp, ebp
	xor	edx, edx
	mov	rax, r15
	div	rsi
	mov	rcx, rax
	mov	r12, rcx
	imul	r12, r13
	xor	edx, edx
	mov	rax, r12
	div	rcx
	cmp	rax, r13
	mov	ecx, 0
	jne	.label_21
.label_19:
	mov	r15d, dword ptr [rsp + 0x1c]
	and	r15d, 0x10
	mov	ebx, 0xffffffff
	je	.label_38
	mov	esi, r8d
	xor	ebx, ebx
	cmp	rsi, r12
	mov	rax, qword ptr [rsp + 0x28]
	jbe	.label_41
	mov	r14, rax
	jmp	.label_26
.label_21:
	mov	qword ptr [rsp + 0x80], rsi
	xor	eax, eax
	test	rsi, rsi
	setns	al
	fild	qword ptr [rsp + 0x80]
	fadd	dword ptr [dword ptr [+ (rax * 4) + label_45]]
	mov	qword ptr [rsp + 0x88], r13
	xor	eax, eax
	test	r13, r13
	setns	al
	fild	qword ptr [rsp + 0x88]
	fadd	dword ptr [dword ptr [+ (rax * 4) + label_45]]
	mov	qword ptr [rsp + 0x90], r15
	xor	eax, eax
	test	r15, r15
	setns	al
	fild	qword ptr [rsp + 0x90]
	fadd	dword ptr [dword ptr [+ (rax * 4) + label_45]]
	fdivrp	st(2)
	fmulp	st(1)
	mov	r12d, dword ptr [rsp + 0x1c]
	test	r12b, 0x10
	jne	.label_46
	fstp	xword ptr [rsp]
	mov	edi, dword ptr [rsp + 0x3c]
	call	adjust_value
	fstp	xword ptr [rsp]
	xor	r13d, r13d
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_24
	xor	eax, eax
	mov	r15, qword ptr [rsp + 0x20]
	mov	rdi, r15
	call	__sprintf_chk
	mov	rdi, r15
	call	strlen
	mov	ebx, 0xffffffff
	jmp	.label_29
.label_46:
	mov	eax, r8d
	mov	qword ptr [rsp + 0x78], rax
	fld1	
	xor	ebx, ebx
	fild	qword ptr [rsp + 0x78]
	fldz	
	nop	dword ptr [rax]
.label_39:
	fstp	st(0)
	fmul	st(1), st(0)
	inc	ebx
	fld	st(0)
	fmul	st(2)
	cmp	ebx, 7
	jg	.label_35
	fxch	st(3)
	fucomi	st(3)
	fstp	st(3)
	fldz	
	jae	.label_39
.label_35:
	fstp	st(1)
	fstp	st(0)
	fdivp	st(1)
	fld	st(0)
	fstp	xword ptr [rsp + 0x40]
	fstp	xword ptr [rsp]
	mov	ebp, dword ptr [rsp + 0x3c]
	mov	edi, ebp
	call	adjust_value
	fstp	xword ptr [rsp]
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_53
	xor	eax, eax
	mov	r15, qword ptr [rsp + 0x20]
	mov	rdi, r15
	call	__sprintf_chk
	mov	rdi, r15
	call	strlen
	mov	ecx, dword ptr [rsp + 0x38]
	shr	ecx, 5
	xor	ecx, 1
	or	rcx, 2
	mov	r13, qword ptr [rsp + 0x50]
	add	rcx, r13
	cmp	rcx, rax
	jb	.label_50
	fld	xword ptr [rsp + 0x40]
	fstp	st(0)
	inc	r13
	test	r12b, 8
	je	.label_29
	cmp	byte ptr [r15 + rax - 1], 0x30
	jne	.label_29
.label_50:
	fld	dword ptr [dword ptr [rip + label_17]]
	fld	st(0)
	fstp	xword ptr [rsp + 0x50]
	fld	xword ptr [rsp + 0x40]
	fmulp	st(1)
	fstp	xword ptr [rsp]
	mov	edi, ebp
	call	adjust_value
	fld	xword ptr [rsp + 0x50]
	fdivp	st(1)
	fstp	xword ptr [rsp]
	xor	r13d, r13d
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_24
	xor	eax, eax
	mov	rdi, r15
	call	__sprintf_chk
	mov	rdi, r15
	call	strlen
.label_29:
	mov	r14, qword ptr [rsp + 0x28]
	mov	rbp, r14
	sub	rbp, rax
	mov	rdi, rbp
	mov	rsi, r15
	mov	rdx, rax
	call	memmove
	sub	r14, r13
	jmp	.label_32
.label_38:
	mov	r14, qword ptr [rsp + 0x28]
	jmp	.label_26
.label_41:
	xor	ebx, ebx
	mov	r9d, dword ptr [rsp + 0x3c]
	nop	dword ptr [rax]
.label_54:
	xor	edx, edx
	mov	rax, r12
	div	rsi
	lea	edx, [rdx + rdx*4]
	lea	ecx, [rcx + rdx*2]
	mov	edi, ebp
	sar	edi, 1
	xor	edx, edx
	mov	r12, rax
	mov	eax, ecx
	div	r8d
	lea	edx, [rdi + rdx*2]
	cmp	edx, r8d
	mov	ecx, eax
	jae	.label_40
	xor	eax, eax
	add	edx, ebp
	setne	al
	mov	ebp, eax
	jmp	.label_43
	.section	.text
	.align	16
	#Procedure 0x4023b1
	.globl sub_4023b1
	.type sub_4023b1, @function
sub_4023b1:

	nop	word ptr cs:[rax + rax]
.label_40:
	add	edx, ebp
	cmp	r8d, edx
	sbb	ebp, ebp
	and	ebp, 1
	or	ebp, 2
.label_43:
	inc	ebx
	cmp	ebx, 7
	jg	.label_51
	cmp	rsi, r12
	jbe	.label_54
.label_51:
	cmp	r12, 9
	ja	.label_56
	cmp	r9d, 1
	jne	.label_28
	mov	eax, ecx
	and	eax, 1
	add	eax, ebp
	cmp	eax, 2
	ja	.label_57
	jmp	.label_20
.label_56:
	mov	r14, qword ptr [rsp + 0x28]
	jmp	.label_26
.label_28:
	test	r9d, r9d
	jne	.label_20
	test	ebp, ebp
	je	.label_20
.label_57:
	inc	ecx
	xor	ebp, ebp
	cmp	ecx, 0xa
	jne	.label_20
	inc	r12
	xor	ecx, ecx
	cmp	r12, 9
	mov	ebp, 0
	ja	.label_22
.label_20:
	mov	eax, dword ptr [rsp + 0x1c]
	test	al, 8
	je	.label_25
	test	ecx, ecx
	jne	.label_25
	mov	r14, qword ptr [rsp + 0x28]
	jmp	.label_26
.label_25:
	add	ecx, 0x30
	mov	rax, qword ptr [rsp + 0x20]
	lea	r14, [rax + 0x286]
	mov	byte ptr [rax + 0x286], cl
	mov	rdx, qword ptr [rsp + 0x50]
	sub	r14, rdx
	mov	rdi, r14
	mov	rsi, qword ptr [rsp + 0x40]
	call	memcpy
	xor	ebp, ebp
	xor	ecx, ecx
	jmp	.label_26
.label_22:
	xor	ebp, ebp
	mov	r14, qword ptr [rsp + 0x28]
	mov	r12d, 0xa
.label_26:
	mov	eax, dword ptr [rsp + 0x1c]
	and	al, 3
	je	.label_33
	cmp	al, 1
	jne	.label_36
	movsxd	rax, ebp
	mov	edx, r12d
	and	edx, 1
	xor	esi, esi
	add	rdx, rax
	setne	sil
	add	esi, ecx
	cmp	esi, 5
	jg	.label_37
	jmp	.label_36
.label_33:
	add	ecx, ebp
	jle	.label_36
.label_37:
	inc	r12
	mov	eax, dword ptr [rsp + 0x34]
	cmp	ebx, 7
	jg	.label_36
	test	r15d, r15d
	je	.label_36
	cmp	r12, rax
	jne	.label_36
	inc	ebx
	mov	r12d, 1
	mov	eax, dword ptr [rsp + 0x1c]
	test	al, 8
	jne	.label_36
	mov	byte ptr [r14 - 1], 0x30
	dec	r14
	mov	rdx, qword ptr [rsp + 0x50]
	sub	r14, rdx
	mov	rdi, r14
	mov	rsi, qword ptr [rsp + 0x40]
	call	memcpy
	mov	r12d, 1
.label_36:
	mov	r15, qword ptr [rsp + 0x20]
	movabs	rcx, 0xcccccccccccccccd
	mov	rbp, r14
	nop	word ptr cs:[rax + rax]
.label_18:
	mov	rax, r12
	mul	rcx
	mov	eax, edx
	shr	eax, 2
	and	eax, 0x3ffffffe
	lea	eax, [rax + rax*4]
	mov	esi, r12d
	sub	esi, eax
	or	sil, 0x30
	mov	byte ptr [rbp - 1], sil
	dec	rbp
	shr	rdx, 3
	cmp	r12, 9
	mov	r12, rdx
	ja	.label_18
	mov	r12d, dword ptr [rsp + 0x1c]
.label_32:
	test	r12b, 4
	je	.label_27
	sub	r14, rbp
	mov	rdi, rbp
	mov	rsi, r14
	mov	rdx, qword ptr [rsp + 0x70]
	mov	rcx, qword ptr [rsp + 0x68]
	call	group_number
	mov	rbp, rax
.label_27:
	mov	rsi, qword ptr [rsp + 0x60]
	mov	eax, dword ptr [rsp + 0x34]
	mov	rdi, qword ptr [rsp + 0x28]
	test	r12b, r12b
	jns	.label_30
	test	ebx, ebx
	jns	.label_34
	xor	ebx, ebx
	cmp	rsi, 2
	jb	.label_34
	mov	eax, eax
	xor	ecx, ecx
	mov	edx, 1
	nop	word ptr cs:[rax + rax]
.label_42:
	mov	ebx, 8
	cmp	ecx, 7
	je	.label_34
	inc	ecx
	imul	rdx, rax
	cmp	rdx, rsi
	mov	ebx, ecx
	jb	.label_42
.label_34:
	mov	eax, r12d
	and	eax, 0x100
	test	r12b, 0x40
	je	.label_44
	mov	ecx, ebx
	or	ecx, eax
	je	.label_44
	mov	byte ptr [r15 + 0x287], 0x20
	add	r15, 0x288
	mov	rdi, r15
.label_44:
	test	ebx, ebx
	je	.label_49
	cmp	dword ptr [rsp + 0x38], 0
	jne	.label_52
	mov	cl, 0x6b
	cmp	ebx, 1
	je	.label_55
.label_52:
	movsxd	rcx, ebx
	mov	cl,  byte ptr [byte ptr [rcx + power_letter]]
.label_55:
	mov	byte ptr [rdi], cl
	inc	rdi
.label_49:
	test	eax, eax
	je	.label_30
	cmp	dword ptr [rsp + 0x38], 0
	je	.label_31
	test	ebx, ebx
	je	.label_31
	mov	byte ptr [rdi], 0x69
	inc	rdi
.label_31:
	mov	byte ptr [rdi], 0x42
	inc	rdi
.label_30:
	mov	byte ptr [rdi], 0
	mov	rax, rbp
	add	rsp, 0x98
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402620

	.globl isaac_seed
	.type isaac_seed, @function
isaac_seed:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	movabs	rbp, 0x647c4677a2884b7c
	movabs	r15, 0xb9f8b322c73ac862
	movabs	r14, 0x8c0ea5053d4712a0
	movabs	rbx, 0xb29b2e824a595524
	movabs	r13, 0x82f053db8355e0ce
	movabs	rdx, 0x48fe4a0fa5a09315
	movabs	rax, 0xae985bf2cbfc89ed
	movabs	r12, 0x98f5704f6c44c0ab
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x28], rdi
	nop	word ptr cs:[rax + rax]
.label_59:
	mov	qword ptr [rsp + 0x20], rcx
	add	rbp, qword ptr [rdi + rcx*8]
	add	r15, qword ptr [rdi + rcx*8 + 8]
	add	r14, qword ptr [rdi + rcx*8 + 0x10]
	add	rbx, qword ptr [rdi + rcx*8 + 0x18]
	add	r13, qword ptr [rdi + rcx*8 + 0x20]
	add	rdx, qword ptr [rdi + rcx*8 + 0x28]
	mov	qword ptr [rsp], rdx
	add	rax, qword ptr [rdi + rcx*8 + 0x30]
	mov	qword ptr [rsp + 8], rax
	add	r12, qword ptr [rdi + rcx*8 + 0x38]
	sub	rbp, r13
	mov	rdi, r12
	call	just
	shr	rax, 9
	xor	rax, qword ptr [rsp]
	mov	qword ptr [rsp], rax
	add	r12, rbp
	sub	r15, rax
	lea	rax, [r15 + rbp]
	mov	qword ptr [rsp + 0x18], rax
	shl	rbp, 9
	xor	rbp, qword ptr [rsp + 8]
	mov	qword ptr [rsp + 8], rbp
	sub	r14, rbp
	mov	rdi, r15
	call	just
	shr	rax, 0x17
	xor	r12, rax
	add	r15, r14
	mov	qword ptr [rsp + 0x30], r15
	sub	rbx, r12
	lea	rax, [rbx + r14]
	mov	qword ptr [rsp + 0x10], rax
	shl	r14, 0xf
	mov	rbp, r14
	xor	rbp, qword ptr [rsp + 0x18]
	sub	r13, rbp
	mov	rdi, rbx
	call	just
	mov	r15, rax
	shr	r15, 0xe
	xor	r15, qword ptr [rsp + 0x30]
	add	rbx, r13
	mov	qword ptr [rsp + 0x18], rbx
	mov	rdi, qword ptr [rsp]
	sub	rdi, r15
	mov	qword ptr [rsp], rdi
	mov	r14, r13
	shl	r14, 0x14
	xor	r14, qword ptr [rsp + 0x10]
	add	r13, rdi
	mov	qword ptr [rsp + 0x10], r13
	mov	r13, qword ptr [rsp + 8]
	sub	r13, r14
	call	just
	mov	rcx, qword ptr [rsp + 0x20]
	mov	rdi, qword ptr [rsp + 0x28]
	mov	rbx, rax
	shr	rbx, 0x11
	xor	rbx, qword ptr [rsp + 0x18]
	mov	rdx, qword ptr [rsp]
	mov	rax, r13
	add	rdx, rax
	sub	r12, rbx
	shl	r13, 0xe
	xor	r13, qword ptr [rsp + 0x10]
	add	rax, r12
	mov	qword ptr [rdi + rcx*8], rbp
	mov	qword ptr [rdi + rcx*8 + 8], r15
	mov	qword ptr [rdi + rcx*8 + 0x10], r14
	mov	qword ptr [rdi + rcx*8 + 0x18], rbx
	mov	qword ptr [rdi + rcx*8 + 0x20], r13
	mov	qword ptr [rdi + rcx*8 + 0x28], rdx
	mov	qword ptr [rdi + rcx*8 + 0x30], rax
	mov	qword ptr [rdi + rcx*8 + 0x38], r12
	add	rcx, 8
	cmp	rcx, 0x100
	jl	.label_59
	xor	ecx, ecx
	nop	
.label_58:
	mov	qword ptr [rsp + 0x20], rcx
	add	rbp, qword ptr [rdi + rcx*8]
	add	r15, qword ptr [rdi + rcx*8 + 8]
	add	r14, qword ptr [rdi + rcx*8 + 0x10]
	add	rbx, qword ptr [rdi + rcx*8 + 0x18]
	add	r13, qword ptr [rdi + rcx*8 + 0x20]
	add	rdx, qword ptr [rdi + rcx*8 + 0x28]
	mov	qword ptr [rsp], rdx
	add	rax, qword ptr [rdi + rcx*8 + 0x30]
	mov	qword ptr [rsp + 8], rax
	add	r12, qword ptr [rdi + rcx*8 + 0x38]
	sub	rbp, r13
	mov	rdi, r12
	call	just
	shr	rax, 9
	xor	rax, qword ptr [rsp]
	mov	qword ptr [rsp], rax
	add	r12, rbp
	sub	r15, rax
	lea	rax, [r15 + rbp]
	mov	qword ptr [rsp + 0x18], rax
	shl	rbp, 9
	xor	rbp, qword ptr [rsp + 8]
	sub	r14, rbp
	mov	rdi, r15
	call	just
	shr	rax, 0x17
	xor	rax, r12
	add	r15, r14
	sub	rbx, rax
	mov	r12, rax
	lea	rax, [rbx + r14]
	mov	qword ptr [rsp + 0x10], rax
	shl	r14, 0xf
	xor	r14, qword ptr [rsp + 0x18]
	mov	qword ptr [rsp + 8], r14
	sub	r13, r14
	mov	rdi, rbx
	call	just
	shr	rax, 0xe
	xor	r15, rax
	add	rbx, r13
	mov	rdi, qword ptr [rsp]
	sub	rdi, r15
	mov	qword ptr [rsp], rdi
	mov	r14, r13
	shl	r14, 0x14
	xor	r14, qword ptr [rsp + 0x10]
	add	r13, rdi
	sub	rbp, r14
	call	just
	mov	rcx, qword ptr [rsp + 0x20]
	mov	rdi, qword ptr [rsp + 0x28]
	shr	rax, 0x11
	xor	rbx, rax
	mov	rdx, qword ptr [rsp]
	add	rdx, rbp
	sub	r12, rbx
	mov	rax, rbp
	shl	rax, 0xe
	xor	r13, rax
	add	rbp, r12
	mov	rsi, qword ptr [rsp + 8]
	mov	qword ptr [rdi + rcx*8], rsi
	mov	qword ptr [rdi + rcx*8 + 8], r15
	mov	qword ptr [rdi + rcx*8 + 0x10], r14
	mov	qword ptr [rdi + rcx*8 + 0x18], rbx
	mov	qword ptr [rdi + rcx*8 + 0x20], r13
	mov	qword ptr [rdi + rcx*8 + 0x28], rdx
	mov	qword ptr [rdi + rcx*8 + 0x30], rbp
	mov	qword ptr [rdi + rcx*8 + 0x38], r12
	add	rcx, 8
	cmp	rcx, 0x100
	mov	rax, rbp
	mov	rbp, rsi
	jl	.label_58
	xorps	xmm0, xmm0
	movups	xmmword ptr [rdi + 0x800], xmm0
	mov	qword ptr [rdi + 0x810], 0
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
	#Procedure 0x40293c
	.globl sub_40293c
	.type sub_40293c, @function
sub_40293c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402940

	.globl default_block_size
	.type default_block_size, @function
default_block_size:
	push	rax
	mov	edi, OFFSET FLAT:label_60
	call	getenv
	test	rax, rax
	mov	ecx, 0x200
	mov	eax, 0x400
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40295e
	.globl sub_40295e
	.type sub_40295e, @function
sub_40295e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402960
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
	#Procedure 0x40296f
	.globl sub_40296f
	.type sub_40296f, @function
sub_40296f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402970

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
	#Procedure 0x40299d
	.globl sub_40299d
	.type sub_40299d, @function
sub_40299d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4029a0

	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_61
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_61:
	push	rax
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4029c3
	.globl sub_4029c3
	.type sub_4029c3, @function
sub_4029c3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4029d0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_62
	test	rax, rax
	je	.label_63
.label_62:
	pop	rbx
	ret	
.label_63:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4029ea
	.globl sub_4029ea
	.type sub_4029ea, @function
sub_4029ea:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4029f0

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_72
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_71
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_69
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_65
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_mandatory_arg_note
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_70
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, 3
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_77
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_73
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_66
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_74
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_75
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_76
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
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_68
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_78
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_ancillary_info
	mov	edi, ebp
	call	exit
.label_72:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_64
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
	#Procedure 0x402bf8
	.globl sub_402bf8
	.type sub_402bf8, @function
sub_402bf8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402c00
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
	#Procedure 0x402c0f
	.globl sub_402c0f
	.type sub_402c0f, @function
sub_402c0f:

	nop	
.label_79:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x402c13
	.globl sub_402c13
	.type sub_402c13, @function
sub_402c13:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402c1b
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_79
	mov	eax, 0x80001f
	mov	ecx, edi
	shr	eax, cl
	and	eax, 1
	ret	
.label_80:
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_84
	.section	.text
	.align	16
	#Procedure 0x402c3d

	.globl xnumtoumax
	.type xnumtoumax, @function
xnumtoumax:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, r9
	mov	r15, rcx
	mov	r12, rdx
	mov	eax, esi
	mov	r13, rdi
	lea	rcx, [rsp]
	xor	esi, esi
	mov	edx, eax
	call	xstrtoumax
	cmp	eax, 3
	je	.label_80
	cmp	eax, 1
	je	.label_82
	test	eax, eax
	jne	.label_84
	mov	rbx, qword ptr [rsp]
	cmp	rbx, r12
	jb	.label_86
	cmp	rbx, r15
	jbe	.label_83
.label_86:
	call	__errno_location
	cmp	rbx, 0x40000000
	jb	.label_81
	mov	dword ptr [rax], 0x4b
	jmp	.label_84
.label_82:
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	jmp	.label_84
.label_81:
	mov	dword ptr [rax], 0x22
.label_84:
	mov	eax, dword ptr [rsp + 0x40]
	test	eax, eax
	mov	ebp, 1
	cmovne	ebp, eax
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	eax, eax
	cmp	ebx, 0x16
	cmove	ebx, eax
	mov	rdi, r13
	call	quote
	mov	r8, rax
	mov	edx, OFFSET FLAT:label_85
	xor	eax, eax
	mov	edi, ebp
	mov	esi, ebx
	mov	rcx, r14
	call	error
.label_83:
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
	#Procedure 0x402cf6
	.globl sub_402cf6
	.type sub_402cf6, @function
sub_402cf6:

	nop	word ptr cs:[rax + rax]
.label_87:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x402d03
	.globl sub_402d03
	.type sub_402d03, @function
sub_402d03:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402d11

	.globl periodic_pattern
	.type periodic_pattern, @function
periodic_pattern:
	test	edi, edi
	jle	.label_87
	mov	ecx, edi
	and	ecx, 0xfff
	mov	eax, ecx
	shl	eax, 0xc
	or	eax, ecx
	mov	ecx, edi
	shr	ecx, 4
	movzx	ecx, cl
	movzx	eax, ah
	movzx	edx, dil
	cmp	ecx, edx
	setne	dl
	cmp	ecx, eax
	setne	al
	or	al, dl
	ret	
	.section	.text
	.align	16
	#Procedure 0x402d40

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
	je	.label_88
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
.label_88:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402d92
	.globl sub_402d92
	.type sub_402d92, @function
sub_402d92:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402da0

	.globl randint_get_source
	.type randint_get_source, @function
randint_get_source:
	mov	rax, qword ptr [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x402da4
	.globl sub_402da4
	.type sub_402da4, @function
sub_402da4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402db0

	.globl isaac_refill
	.type isaac_refill, @function
isaac_refill:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	rbp, rsi
	mov	r14, rdi
	mov	rbx, qword ptr [r14 + 0x800]
	mov	rax, qword ptr [r14 + 0x810]
	inc	rax
	mov	r12, qword ptr [r14 + 0x808]
	add	r12, rax
	mov	qword ptr [r14 + 0x810], rax
	lea	rcx, [r14 + 0x400]
	lea	rax, [r14 + 0x20]
	cmp	rcx, rax
	mov	qword ptr [rsp + 0x20], rcx
	cmova	rax, rcx
	mov	rcx, r14
	not	rcx
	add	rcx, rax
	shr	rcx, 5
	lea	rax, [rcx*4]
	mov	qword ptr [rsp + 0x18], rax
	shl	rcx, 5
	lea	rax, [rbp + rcx + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 8], r14
	mov	r15, qword ptr [rsp + 8]
	nop	
.label_90:
	mov	qword ptr [rsp], rbp
	mov	r13, rbx
	shl	r13, 0x15
	xor	r13, rbx
	not	r13
	add	r13, qword ptr [r14 + 0x400]
	mov	rbx, qword ptr [r14]
	mov	rdi, r15
	mov	rsi, rbx
	call	ind
	add	rax, r12
	add	rax, r13
	mov	qword ptr [r14], rax
	shr	rax, 8
	mov	rdi, r15
	mov	rsi, rax
	call	ind
	add	rbx, rax
	mov	rdi, rbx
	call	just
	mov	rbx, rax
	mov	qword ptr [rbp], rbx
	mov	rdi, r13
	call	just
	mov	rbp, rax
	shr	rbp, 5
	xor	rbp, r13
	add	rbp, qword ptr [r14 + 0x408]
	mov	r12, qword ptr [r14 + 8]
	mov	rdi, r15
	mov	rsi, r12
	call	ind
	add	rbx, rbp
	add	rbx, rax
	mov	qword ptr [r14 + 8], rbx
	shr	rbx, 8
	mov	rdi, r15
	mov	rsi, rbx
	call	ind
	add	r12, rax
	mov	rdi, r12
	call	just
	mov	rbx, rax
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax + 8], rbx
	mov	r12, rbp
	shl	r12, 0xc
	xor	r12, rbp
	add	r12, qword ptr [r14 + 0x410]
	mov	rbp, qword ptr [r14 + 0x10]
	mov	rdi, r15
	mov	rsi, rbp
	call	ind
	add	rbx, r12
	add	rbx, rax
	mov	qword ptr [r14 + 0x10], rbx
	shr	rbx, 8
	mov	rdi, r15
	mov	rsi, rbx
	call	ind
	add	rbp, rax
	mov	rdi, rbp
	call	just
	mov	rbp, rax
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax + 0x10], rbp
	mov	rdi, r12
	call	just
	mov	rbx, rax
	shr	rbx, 0x21
	xor	rbx, r12
	add	rbx, qword ptr [r14 + 0x418]
	mov	r12, qword ptr [r14 + 0x18]
	mov	rdi, r15
	mov	rsi, r12
	call	ind
	add	rbp, rbx
	add	rbp, rax
	mov	qword ptr [r14 + 0x18], rbp
	shr	rbp, 8
	mov	rdi, r15
	mov	rsi, rbp
	mov	rbp, qword ptr [rsp]
	call	ind
	add	r12, rax
	mov	rdi, r12
	call	just
	mov	r12, rax
	mov	qword ptr [rbp + 0x18], r12
	add	r14, 0x20
	add	rbp, 0x20
	cmp	r14, qword ptr [rsp + 0x20]
	jb	.label_90
	mov	rcx, qword ptr [rsp + 8]
	lea	rax, [rcx + 0x800]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rsp + 0x18]
	lea	r13, [rcx + rax*8 + 0x38]
	mov	r14, qword ptr [rsp + 8]
	nop	
.label_89:
	mov	r15, rbx
	shl	r15, 0x15
	xor	r15, rbx
	not	r15
	add	r15, qword ptr [r13 - 0x418]
	mov	rbx, qword ptr [r13 - 0x18]
	mov	rdi, r14
	mov	rsi, rbx
	call	ind
	add	rax, r12
	add	rax, r15
	mov	qword ptr [r13 - 0x18], rax
	shr	rax, 8
	mov	rdi, r14
	mov	rsi, rax
	call	ind
	add	rbx, rax
	mov	rdi, rbx
	call	just
	mov	rbp, rax
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rax], rbp
	mov	r12, rax
	mov	rdi, r15
	call	just
	mov	rbx, rax
	shr	rbx, 5
	xor	rbx, r15
	add	rbx, qword ptr [r13 - 0x410]
	mov	r15, qword ptr [r13 - 0x10]
	mov	rdi, r14
	mov	rsi, r15
	call	ind
	add	rbp, rbx
	add	rbp, rax
	mov	qword ptr [r13 - 0x10], rbp
	shr	rbp, 8
	mov	rdi, r14
	mov	rsi, rbp
	call	ind
	add	r15, rax
	mov	rdi, r15
	call	just
	mov	rbp, rax
	mov	qword ptr [r12 + 8], rbp
	mov	qword ptr [rsp + 0x10], r12
	mov	r15, rbx
	shl	r15, 0xc
	xor	r15, rbx
	add	r15, qword ptr [r13 - 0x408]
	mov	rbx, qword ptr [r13 - 8]
	mov	rdi, r14
	mov	rsi, rbx
	call	ind
	add	rbp, r15
	add	rbp, rax
	mov	qword ptr [r13 - 8], rbp
	shr	rbp, 8
	mov	rdi, r14
	mov	rsi, rbp
	call	ind
	add	rbx, rax
	mov	rdi, rbx
	call	just
	mov	rbp, rax
	mov	qword ptr [r12 + 0x10], rbp
	mov	rdi, r15
	call	just
	mov	rbx, rax
	shr	rbx, 0x21
	xor	rbx, r15
	add	rbx, qword ptr [r13 - 0x400]
	mov	r15, qword ptr [r13]
	mov	rdi, r14
	mov	rsi, r15
	call	ind
	add	rbp, rbx
	add	rbp, rax
	mov	qword ptr [r13], rbp
	shr	rbp, 8
	mov	rdi, r14
	mov	rsi, rbp
	call	ind
	add	r15, rax
	mov	rdi, r15
	call	just
	mov	r12, rax
	mov	rcx, qword ptr [rsp + 0x10]
	mov	qword ptr [rcx + 0x18], r12
	lea	rax, [r13 + 0x20]
	add	r13, 8
	add	rcx, 0x20
	mov	qword ptr [rsp + 0x10], rcx
	cmp	r13, qword ptr [rsp]
	mov	r13, rax
	jb	.label_89
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax + 0x800], rbx
	mov	qword ptr [rax + 0x808], r12
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
	#Procedure 0x403142
	.globl sub_403142
	.type sub_403142, @function
sub_403142:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403150

	.globl get_nonce
	.type get_nonce, @function
get_nonce:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x18
	mov	rbx, rsi
	mov	r14, rdi
	xor	r15d, r15d
	mov	edi, OFFSET FLAT:label_92
	xor	esi, esi
	xor	eax, eax
	call	open
	mov	ebp, eax
	test	ebp, ebp
	js	.label_93
	cmp	rbx, 0x800
	mov	edx, 0x800
	cmovbe	rdx, rbx
	mov	edi, ebp
	mov	rsi, r14
	call	read
	mov	rbx, rax
	mov	edi, ebp
	call	close
	xor	r15d, r15d
	test	rbx, rbx
	js	.label_93
	cmp	rbx, 0x7ff
	mov	r15, rbx
	ja	.label_91
.label_93:
	mov	eax, 0x800
	sub	rax, r15
	cmp	rax, 0x10
	mov	ebx, 0x10
	cmovbe	rbx, rax
	lea	rbp, [rsp + 8]
	xor	esi, esi
	mov	rdi, rbp
	call	gettimeofday
	lea	rdi, [r14 + r15]
	mov	rsi, rbp
	mov	rdx, rbx
	call	memcpy
	add	rbx, r15
	cmp	rbx, 0x7ff
	ja	.label_91
	mov	eax, 0x800
	sub	rax, rbx
	cmp	rax, 4
	mov	r15d, 4
	cmovbe	r15, rax
	call	getpid
	mov	dword ptr [rsp + 8], eax
	lea	rdi, [r14 + rbx]
	lea	rsi, [rsp + 8]
	mov	rdx, r15
	call	memcpy
	add	r15, rbx
	cmp	r15, 0x7ff
	ja	.label_91
	mov	eax, 0x800
	sub	rax, r15
	cmp	rax, 4
	mov	ebx, 4
	cmovbe	rbx, rax
	call	getppid
	mov	dword ptr [rsp + 8], eax
	lea	rdi, [r14 + r15]
	lea	rsi, [rsp + 8]
	mov	rdx, rbx
	call	memcpy
	add	rbx, r15
	cmp	rbx, 0x7ff
	ja	.label_91
	mov	eax, 0x800
	sub	rax, rbx
	cmp	rax, 4
	mov	r15d, 4
	cmovbe	r15, rax
	call	getuid
	mov	dword ptr [rsp + 8], eax
	lea	rdi, [r14 + rbx]
	lea	rsi, [rsp + 8]
	mov	rdx, r15
	call	memcpy
	add	r15, rbx
	cmp	r15, 0x7ff
	ja	.label_91
	mov	eax, 0x800
	sub	rax, r15
	cmp	rax, 4
	mov	ebx, 4
	cmovbe	rbx, rax
	call	getgid
	mov	dword ptr [rsp + 8], eax
	add	r14, r15
	lea	rsi, [rsp + 8]
	mov	rdi, r14
	mov	rdx, rbx
	call	memcpy
.label_91:
	add	rsp, 0x18
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4032e9
	.globl sub_4032e9
	.type sub_4032e9, @function
sub_4032e9:

	nop	dword ptr [rax]
.label_95:
	cmp	edi, 0x7f
	je	.label_94
	xor	eax, eax
	jmp	.label_94
	.section	.text
	.align	16
	#Procedure 0x4032f9
	.globl sub_4032f9
	.type sub_4032f9, @function
sub_4032f9:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403308
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_95
.label_94:
	ret	
	.section	.text
	.align	16
	#Procedure 0x403310

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_96
	ret	
.label_96:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	.section	.text
	.align	16
	#Procedure 0x403323
	.globl sub_403323
	.type sub_403323, @function
sub_403323:

	nop	word ptr cs:[rax + rax]
.label_98:
	mov	eax, ebx
.label_97:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40333d
	.globl sub_40333d
	.type sub_40333d, @function
sub_40333d:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40334c

	.globl fd_safer
	.type fd_safer, @function
fd_safer:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	ebx, edi
	cmp	ebx, 2
	ja	.label_98
	mov	edi, ebx
	call	dup_safer
	mov	r14d, eax
	call	__errno_location
	mov	rbp, rax
	mov	r15d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	mov	dword ptr [rbp], r15d
	mov	eax, r14d
	jmp	.label_97
	.section	.text
	.align	16
	#Procedure 0x403380

	.globl do_wipefd
	.type do_wipefd, @function
do_wipefd:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xc8
	mov	rbx, rcx
	mov	r15, rdx
	mov	qword ptr [rsp + 0x10], rsi
	mov	r13d, edi
	xor	ebp, ebp
	cmp	byte ptr [rbx + 0x1c], 0
	je	.label_99
	movzx	ebp, byte ptr [rbx + 0x1e]
	add	rbp, qword ptr [rbx + 8]
.label_99:
	lea	rsi, [rsp + 0x38]
	mov	edi, r13d
	call	fstat
	test	eax, eax
	je	.label_116
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_117
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	jmp	.label_119
.label_116:
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x50]
	cmp	eax, 0x2000
	jne	.label_122
	mov	edi, r13d
	call	isatty
	test	eax, eax
	jne	.label_106
.label_122:
	movzx	eax, word ptr [rsp + 0x50]
	and	eax, 0xf000
	cmp	eax, 0x8000
	je	.label_100
	movzx	eax, ax
	cmp	eax, 0x1000
	je	.label_106
	cmp	eax, 0xc000
	jne	.label_109
.label_106:
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_111
.label_105:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
.label_119:
	mov	rdx, rcx
	mov	rcx, qword ptr [rsp + 0x10]
	call	error
.label_103:
	mov	eax, ebp
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_100:
	cmp	qword ptr [rsp + 0x68], 0
	js	.label_121
.label_109:
	movabs	r14, 0x2000000000000001
	mov	rdi, qword ptr [rbx + 8]
	mov	esi, 4
	call	xnmalloc
	mov	qword ptr [rsp + 0x20], rax
	mov	rcx, qword ptr [rbx + 0x10]
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x50]
	cmp	rcx, -1
	mov	qword ptr [rsp + 0x28], rbp
	je	.label_101
	cmp	eax, 0x8000
	mov	qword ptr [rsp + 8], rcx
	jne	.label_110
	mov	rdi, rcx
	mov	r12d, r13d
	mov	rax, qword ptr [rsp + 0x68]
	mov	rcx, qword ptr [rsp + 0x70]
	cmp	rcx, r14
	mov	edx, 0x200
	mov	esi, 0x200
	cmovb	rsi, rcx
	test	rcx, rcx
	cmovle	rsi, rdx
	cmp	rsi, rdi
	cmovg	rsi, rdi
	xor	ebp, ebp
	cmp	rax, rsi
	cmovl	rbp, rax
	jmp	.label_102
.label_101:
	cmp	eax, 0x8000
	jne	.label_123
	mov	rdi, qword ptr [rsp + 0x68]
	xor	ebp, ebp
	cmp	byte ptr [rbx + 0x1d], 0
	je	.label_125
	mov	qword ptr [rsp + 8], rdi
	mov	r12d, r13d
	jmp	.label_102
.label_110:
	mov	r12d, r13d
	xor	ebp, ebp
	jmp	.label_102
.label_121:
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_104
	jmp	.label_105
.label_123:
	xor	ebp, ebp
	xor	esi, esi
	mov	edx, 2
	mov	r12d, r13d
	mov	edi, r13d
	call	lseek
	test	rax, rax
	mov	rcx, -1
	cmovg	rcx, rax
	mov	qword ptr [rsp + 8], rcx
.label_102:
	mov	rsi, qword ptr [rbx + 8]
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rdx, r15
	call	genpattern
	mov	rdi, r15
	call	randint_get_source
	mov	r13, rax
	mov	al, 1
	mov	qword ptr [rsp + 0x18], rax
	lea	r15, [rsp + 0x30]
	jmp	.label_120
	.section	.text
	.align	16
	#Procedure 0x40356f
	.globl sub_40356f
	.type sub_40356f, @function
sub_40356f:

	nop	
.label_112:
	xor	ebp, ebp
.label_120:
	test	rbp, rbp
	je	.label_126
	xor	r14d, r14d
	jmp	.label_127
	.section	.text
	.align	16
	#Procedure 0x40357c
	.globl sub_40357c
	.type sub_40357c, @function
sub_40357c:

	nop	dword ptr [rax]
.label_126:
	mov	rax, qword ptr [rsp + 8]
	test	rax, rax
	mov	rbp, rax
	mov	eax, 0
	mov	qword ptr [rsp + 8], rax
	mov	r14, qword ptr [rsp + 0x28]
	je	.label_113
.label_127:
	mov	qword ptr [rsp + 0x30], rbp
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_115:
	mov	rax, qword ptr [rbx + 8]
	movzx	ecx, byte ptr [rbx + 0x1e]
	add	rcx, rax
	cmp	rbp, rcx
	jae	.label_112
	xor	r8d, r8d
	cmp	rbp, rax
	jae	.label_114
	mov	rax, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rax + rbp*4]
.label_114:
	inc	rbp
	mov	edi, r12d
	lea	rsi, [rsp + 0x38]
	mov	rdx, qword ptr [rsp + 0x10]
	mov	rcx, r15
	mov	r9, r13
	push	r14
	push	rbp
	call	dopass
	add	rsp, 0x10
	test	eax, eax
	je	.label_115
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x18], rcx
	test	eax, eax
	jns	.label_115
	xor	ebp, ebp
.label_108:
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	and	bpl, 1
	jmp	.label_103
.label_113:
	cmp	dword ptr [rbx + 0x18], 0
	je	.label_107
	xor	esi, esi
	mov	edi, r12d
	call	ftruncate
	test	eax, eax
	je	.label_124
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x50]
	cmp	eax, 0x8000
	mov	rbp, qword ptr [rsp + 0x18]
	jne	.label_108
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_118
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	mov	rcx, qword ptr [rsp + 0x10]
	call	error
	jmp	.label_108
.label_107:
	mov	rbp, qword ptr [rsp + 0x18]
	jmp	.label_108
.label_125:
	mov	r12d, r13d
	mov	rax, qword ptr [rsp + 0x70]
	cmp	rax, r14
	mov	ecx, 0x200
	mov	esi, 0x200
	cmovb	rsi, rax
	test	rax, rax
	cmovle	rsi, rcx
	mov	rax, rdi
	cqo	
	idiv	rsi
	xor	ebp, ebp
	cmp	rdi, rsi
	cmovl	rbp, rdi
	test	rdi, rdi
	cmove	rbp, rdi
	test	rdx, rdx
	je	.label_128
	mov	rax, qword ptr [rsp + 0x70]
	cmp	rax, r14
	mov	ecx, 0x200
	mov	esi, 0x200
	cmovb	rsi, rax
	test	rax, rax
	cmovle	rsi, rcx
	sub	rsi, rdx
	movabs	rax, 0x7fffffffffffffff
	sub	rax, rdi
	cmp	rsi, rax
	cmovle	rax, rsi
	add	rdi, rax
	mov	qword ptr [rsp + 8], rdi
	jmp	.label_102
.label_124:
	mov	rbp, qword ptr [rsp + 0x18]
	jmp	.label_108
.label_128:
	mov	qword ptr [rsp + 8], rdi
	jmp	.label_102
	.section	.text
	.align	16
	#Procedure 0x40370f
	.globl sub_40370f
	.type sub_40370f, @function
sub_40370f:

	nop	
.label_130:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_129
	test	cl, cl
	jne	.label_129
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_129:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40373b
	.globl sub_40373b
	.type sub_40373b, @function
sub_40373b:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403745

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
	je	.label_130
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_129
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_129
	.section	.text
	.align	16
	#Procedure 0x403780

	.globl ind
	.type ind, @function
ind:
	and	esi, 0x7f8
	mov	rax, qword ptr [rdi + rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40378b
	.globl sub_40378b
	.type sub_40378b, @function
sub_40378b:

	nop	dword ptr [rax + rax]
.label_132:
	mov	rax, rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x403794
	.globl sub_403794
	.type sub_403794, @function
sub_403794:

	nop	dword ptr [rax + rax]
.label_131:
	inc	rax
	mov	sil, dl
.label_135:
	movzx	ecx, byte ptr [rax]
	mov	dl, 1
	cmp	cl, 0x2f
	je	.label_131
	test	cl, cl
	je	.label_132
	mov	edx, esi
	and	dl, 1
	je	.label_133
	xor	esi, esi
.label_133:
	test	dl, dl
	cmovne	rdi, rax
	mov	edx, esi
	jmp	.label_131
	.section	.text
	.align	16
	#Procedure 0x4037c0

	.globl last_component
	.type last_component, @function
last_component:
	dec	rdi
	nop	word ptr cs:[rax + rax]
.label_134:
	cmp	byte ptr [rdi + 1], 0x2f
	lea	rdi, [rdi + 1]
	je	.label_134
	xor	esi, esi
	mov	rax, rdi
	jmp	.label_135
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
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_136
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_139:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_139
.label_136:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_140
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_138]], OFFSET FLAT:slot0
.label_140:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_137
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_137:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x403881
	.globl sub_403881
	.type sub_403881, @function
sub_403881:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403890

	.globl open_safer
	.type open_safer, @function
open_safer:
	sub	rsp, 0xd8
	test	al, al
	je	.label_141
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_141:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x30], rdx
	xor	edx, edx
	test	sil, 0x40
	je	.label_142
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x10
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_144
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_143
.label_144:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_143:
	mov	edx, dword ptr [rax]
.label_142:
	xor	eax, eax
	call	open
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xd8
	ret	
	.section	.text
	.align	16
	#Procedure 0x403954
	.globl sub_403954
	.type sub_403954, @function
sub_403954:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403960

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_145
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_145:
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
	#Procedure 0x4039e3
	.globl sub_4039e3
	.type sub_4039e3, @function
sub_4039e3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4039f0

	.globl randread_new
	.type randread_new, @function
randread_new:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r15, rsi
	mov	rbx, rdi
	test	r15, r15
	je	.label_149
	test	rbx, rbx
	je	.label_146
	mov	esi, OFFSET FLAT:label_147
	mov	rdi, rbx
	call	fopen_safer
	mov	r12, rax
	xor	r14d, r14d
	test	r12, r12
	je	.label_148
	mov	rdi, r12
	mov	rsi, rbx
	call	simple_new
	mov	r14, rax
	lea	rsi, [r14 + 0x18]
	cmp	r15, 0x1000
	mov	ecx, 0x1000
	cmovbe	rcx, r15
	xor	edx, edx
	mov	rdi, r12
	call	setvbuf
	jmp	.label_148
.label_149:
	xor	edi, edi
	xor	esi, esi
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	simple_new
.label_146:
	xor	edi, edi
	mov	rsi, rbx
	call	simple_new
	mov	r14, rax
	mov	qword ptr [r14 + 0x18], 0
	mov	rbx, r14
	add	rbx, 0x20
	mov	rdi, rbx
	mov	rsi, r15
	call	get_nonce
	mov	rdi, rbx
	call	isaac_seed
.label_148:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x403a9d
	.globl sub_403a9d
	.type sub_403a9d, @function
sub_403a9d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403aa0

	.globl simple_new
	.type simple_new, @function
simple_new:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	mov	edi, 0x1038
	call	xmalloc
	mov	qword ptr [rax], rbx
	mov	qword ptr [word ptr [rax + 8]], OFFSET FLAT:randread_error
	mov	qword ptr [rax + 0x10], r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x403acb
	.globl sub_403acb
	.type sub_403acb, @function
sub_403acb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403ad0

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x403ade
	.globl sub_403ade
	.type sub_403ade, @function
sub_403ade:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403ae0

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
	js	.label_150
	mov	eax, dword ptr [r13]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_153
	cmp	r12d, 0x7fffffff
	je	.label_155
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
	jne	.label_151
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_151:
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
.label_153:
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
	jbe	.label_156
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_152
.label_156:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_154
	mov	rdi, r14
	call	free
.label_154:
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
.label_152:
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
.label_150:
	call	abort
.label_155:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403c9d
	.globl sub_403c9d
	.type sub_403c9d, @function
sub_403c9d:

	nop	dword ptr [rax]
.label_157:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403ca5
	.globl sub_403ca5
	.type sub_403ca5, @function
sub_403ca5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403cb3

	.globl dir_name
	.type dir_name, @function
dir_name:
	push	rax
	call	mdir_name
	test	rax, rax
	je	.label_157
	pop	rcx
	ret	
.label_159:
	mov	ecx, 1
.label_158:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	16
	#Procedure 0x403cd0
	.globl sub_403cd0
	.type sub_403cd0, @function
sub_403cd0:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403cd5

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_159
	test	rsi, rsi
	mov	ecx, 1
	je	.label_158
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_158
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x403d10

	.globl randread_free
	.type randread_free, @function
randread_free:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	r14, qword ptr [rbx]
	mov	esi, 0x1038
	call	explicit_bzero
	mov	rdi, rbx
	call	free
	test	r14, r14
	je	.label_160
	mov	rdi, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	rpl_fclose
.label_160:
	xor	eax, eax
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x403d4a
	.globl sub_403d4a
	.type sub_403d4a, @function
sub_403d4a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403d50

	.globl wipefile
	.type wipefile, @function
wipefile:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rcx
	mov	r12, rdx
	mov	r14, rsi
	mov	r13, rdi
	mov	esi, 0x101
	xor	eax, eax
	call	open_safer
	mov	ebx, eax
	test	ebx, ebx
	jns	.label_168
	call	__errno_location
	cmp	dword ptr [rax], 0xd
	jne	.label_161
	cmp	byte ptr [r15], 0
	je	.label_161
	mov	esi, 0x80
	mov	rdi, r13
	call	chmod
	test	eax, eax
	jne	.label_161
	mov	esi, 0x101
	xor	eax, eax
	mov	rdi, r13
	call	open_safer
	mov	ebx, eax
	test	ebx, ebx
	js	.label_161
.label_168:
	mov	edi, ebx
	mov	rsi, r14
	mov	rdx, r12
	mov	rcx, r15
	call	do_wipefd
	mov	ebp, eax
	mov	edi, ebx
	call	close
	test	eax, eax
	je	.label_162
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_163
	jmp	.label_164
.label_161:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_166
.label_164:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rcx
	mov	rcx, r14
	call	error
.label_165:
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_167:
	xor	ebx, ebx
	jmp	.label_165
	.section	.text
	.align	16
	#Procedure 0x403e21
	.globl sub_403e21
	.type sub_403e21, @function
sub_403e21:

	nop	word ptr cs:[rax + rax]
.label_162:
	test	bpl, bpl
	je	.label_167
	mov	bl, 1
	cmp	dword ptr [r15 + 0x18], 0
	je	.label_165
	mov	rdi, r13
	mov	rsi, r14
	mov	rdx, r15
	call	wipename
	mov	bl, al
	jmp	.label_165
.label_169:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_171
	jmp	.label_172
	.section	.text
	.align	16
	#Procedure 0x403e59

	.globl dosync
	.type dosync, @function
dosync:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r14, rsi
	mov	ebp, edi
	call	fdatasync
	xor	r12d, r12d
	test	eax, eax
	je	.label_170
	call	__errno_location
	mov	r15, rax
	mov	ebx, dword ptr [r15]
	mov	edi, ebx
	call	ignorable_sync_errno
	test	al, al
	je	.label_169
	mov	edi, ebp
	call	fsync
	test	eax, eax
	je	.label_170
	mov	ebx, dword ptr [r15]
	mov	edi, ebx
	call	ignorable_sync_errno
	test	al, al
	je	.label_174
	call	sync
	jmp	.label_170
.label_174:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_173
.label_172:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	mov	rcx, r14
	call	error
	mov	dword ptr [r15], ebx
	mov	r12d, 0xffffffff
.label_170:
	mov	eax, r12d
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403ee2
	.globl sub_403ee2
	.type sub_403ee2, @function
sub_403ee2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403ef0

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
	#Procedure 0x403f07
	.globl sub_403f07
	.type sub_403f07, @function
sub_403f07:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403f10
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_175:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_175
	jmp	version_etc_arn
	.section	.text
	.align	16
	#Procedure 0x403f31
	.globl sub_403f31
	.type sub_403f31, @function
sub_403f31:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403f40

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
.label_177:
	mov	rax, rcx
	cmp	r14, rax
	jae	.label_176
	lea	rcx, [rax - 1]
	cmp	byte ptr [rbx + rax - 1], 0x2f
	je	.label_177
.label_176:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x403f7b
	.globl sub_403f7b
	.type sub_403f7b, @function
sub_403f7b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403f80
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x403f88
	.globl sub_403f88
	.type sub_403f88, @function
sub_403f88:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403f90
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	add	edi, -0x21
	cmp	edi, 0x5d
	ja	.label_178
	mov	al, 1
	jmp	qword ptr [word ptr [+ (rdi * 8) + label_180]]
.label_178:
	xor	eax, eax
	jmp	.label_179
	.section	.text
	.align	16
	#Procedure 0x403fa5
	.globl sub_403fa5
	.type sub_403fa5, @function
sub_403fa5:

	nop	word ptr cs:[rax + rax]
.label_179:
	ret	
.label_183:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	.section	.text
	.align	16
	#Procedure 0x403fbb

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_182
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_184
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_184
.label_182:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_183
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_184:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_185
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_181
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_186
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_181:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_85
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404070

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
	#Procedure 0x4040a6
	.globl sub_4040a6
	.type sub_4040a6, @function
sub_4040a6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4040b0

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
	je	.label_187
	cmp	r15, -2
	jb	.label_187
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_187
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_187:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x404106
	.globl sub_404106
	.type sub_404106, @function
sub_404106:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404110

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
	#Procedure 0x404149
	.globl sub_404149
	.type sub_404149, @function
sub_404149:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404150
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
	#Procedure 0x404161
	.globl sub_404161
	.type sub_404161, @function
sub_404161:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404170
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
	#Procedure 0x404184
	.globl sub_404184
	.type sub_404184, @function
sub_404184:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404190

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
	#Procedure 0x4041bd
	.globl sub_4041bd
	.type sub_4041bd, @function
sub_4041bd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4041c0

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
	#Procedure 0x4041d3
	.globl sub_4041d3
	.type sub_4041d3, @function
sub_4041d3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4041e0

	.globl just
	.type just, @function
just:
	mov	rax, rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x4041e4
	.globl sub_4041e4
	.type sub_4041e4, @function
sub_4041e4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4041f0

	.globl lstatat
	.type lstatat, @function
lstatat:
	mov	ecx, 0x100
	jmp	fstatat
	.section	.text
	.align	16
	#Procedure 0x4041fa
	.globl sub_4041fa
	.type sub_4041fa, @function
sub_4041fa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404200

	.globl direct_mode
	.type direct_mode, @function
direct_mode:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, esi
	mov	ebx, edi
	mov	esi, 3
	xor	eax, eax
	call	rpl_fcntl
	test	eax, eax
	jle	.label_188
	mov	ecx, eax
	or	ecx, 0x4000
	mov	edx, eax
	and	edx, 0xffffbfff
	test	bpl, bpl
	cmovne	edx, ecx
	cmp	edx, eax
	jne	.label_189
.label_188:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_189:
	mov	esi, 4
	xor	eax, eax
	mov	edi, ebx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	rpl_fcntl
	.section	.text
	.align	16
	#Procedure 0x40424c
	.globl sub_40424c
	.type sub_40424c, @function
sub_40424c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404250

	.globl wipename
	.type wipename, @function
wipename:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	rbp, rdx
	mov	qword ptr [rsp + 0x10], rsi
	mov	r15, rdi
	call	xstrdup
	mov	rbx, rax
	mov	rdi, rbx
	call	last_component
	mov	r12, rax
	mov	rdi, rbx
	call	dir_name
	mov	r14, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r14
	call	quotearg_n_style_colon
	mov	rdi, rax
	call	xstrdup
	mov	qword ptr [rsp + 0x18], rax
	mov	dword ptr [rsp + 4], 0xffffffff
	mov	qword ptr [rsp + 0x20], rbp
	cmp	dword ptr [rbp + 0x18], 3
	jne	.label_194
	mov	esi, 0x10900
	xor	eax, eax
	mov	rdi, r14
	call	open_safer
	mov	dword ptr [rsp + 4], eax
.label_194:
	mov	rax, qword ptr [rsp + 0x20]
	cmp	byte ptr [rax + 0x1c], 0
	je	.label_200
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_202
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, qword ptr [rsp + 0x10]
	call	error
.label_200:
	mov	qword ptr [rsp + 0x28], r14
	mov	al, 1
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rsp + 0x20]
	cmp	dword ptr [rax + 0x18], 1
	jne	.label_208
	mov	ebp, dword ptr [rsp + 4]
	jmp	.label_192
.label_208:
	mov	rdi, r12
	call	base_len
	mov	r13, rax
	test	r13, r13
	mov	ebp, dword ptr [rsp + 4]
	je	.label_192
	mov	r14, r12
	sub	r14, rbx
	add	r14, r15
	mov	al, 1
	mov	qword ptr [rsp + 0x30], rax
	mov	al, 1
	mov	qword ptr [rsp + 8], rax
	nop	word ptr [rax + rax]
.label_196:
	mov	esi, 0x30
	mov	rdi, r12
	mov	rdx, r13
	call	memset
	mov	byte ptr [r12 + r13], 0
	nop	word ptr cs:[rax + rax]
.label_206:
	mov	edi, 0xffffff9c
	mov	edx, 0xffffff9c
	mov	r8d, 1
	mov	rsi, r15
	mov	rcx, rbx
	call	renameatu
	test	eax, eax
	je	.label_191
	call	__errno_location
	cmp	dword ptr [rax], 0x11
	jne	.label_193
	mov	rdi, r12
	mov	rsi, r13
	call	incname
	test	al, al
	jne	.label_206
	jmp	.label_193
	.section	.text
	.align	16
	#Procedure 0x4043ae
	.globl sub_4043ae
	.type sub_4043ae, @function
sub_4043ae:

	nop	
.label_191:
	test	ebp, ebp
	js	.label_197
	mov	edi, ebp
	mov	rsi, qword ptr [rsp + 0x18]
	call	dosync
	test	eax, eax
	je	.label_197
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
.label_197:
	mov	rax, qword ptr [rsp + 0x20]
	cmp	byte ptr [rax + 0x1c], 0
	je	.label_201
	mov	rax, qword ptr [rsp + 0x30]
	test	al, 1
	mov	rbp, r15
	cmovne	rbp, qword ptr [rsp + 0x10]
	xor	eax, eax
	mov	qword ptr [rsp + 0x30], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_204
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, rbp
	mov	ebp, dword ptr [rsp + 4]
	mov	r8, rbx
	call	error
.label_201:
	lea	rdx, [r13 + 1]
	mov	rdi, r14
	mov	rsi, r12
	call	memcpy
.label_193:
	dec	r13
	jne	.label_196
.label_192:
	mov	rdi, r15
	call	unlink
	test	eax, eax
	je	.label_203
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_199
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	ebp, dword ptr [rsp + 4]
	mov	rdx, rcx
	mov	rcx, qword ptr [rsp + 0x10]
	call	error
	mov	r14, qword ptr [rsp + 0x28]
	jmp	.label_207
.label_203:
	mov	rax, qword ptr [rsp + 0x20]
	cmp	byte ptr [rax + 0x1c], 0
	mov	r14, qword ptr [rsp + 0x28]
	je	.label_205
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_190
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, qword ptr [rsp + 0x10]
	call	error
.label_205:
	mov	r15, qword ptr [rsp + 8]
.label_207:
	test	ebp, ebp
	js	.label_198
	mov	edi, ebp
	mov	rsi, qword ptr [rsp + 0x18]
	call	dosync
	test	eax, eax
	je	.label_195
	xor	r15d, r15d
.label_195:
	mov	edi, ebp
	call	close
	test	eax, eax
	je	.label_198
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_163
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rcx
	mov	rcx, qword ptr [rsp + 0x18]
	call	error
.label_198:
	mov	rdi, rbx
	call	free
	mov	rdi, r14
	call	free
	mov	rdi, qword ptr [rsp + 0x18]
	call	free
	and	r15b, 1
	mov	eax, r15d
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
	#Procedure 0x404538
	.globl sub_404538
	.type sub_404538, @function
sub_404538:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404540
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
	je	.label_209
	add	rbx, 8
	nop	word ptr cs:[rax + rax]
.label_210:
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	mov	rax, r13
	je	.label_209
	mov	r13, qword ptr [rbx]
	add	rbx, 8
	add	r15, r14
	test	r13, r13
	mov	eax, 0
	jne	.label_210
.label_209:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x4045a3
	.globl sub_4045a3
	.type sub_4045a3, @function
sub_4045a3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4045b0
	.globl statat
	.type statat, @function
statat:

	xor	ecx, ecx
	jmp	fstatat
	.section	.text
	.align	16
	#Procedure 0x4045b7
	.globl sub_4045b7
	.type sub_4045b7, @function
sub_4045b7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4045c0

	.globl randint_all_free
	.type randint_all_free, @function
randint_all_free:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	call	randread_free
	mov	r14d, eax
	call	__errno_location
	mov	rbp, rax
	mov	r15d, dword ptr [rbp]
	mov	rdi, rbx
	call	randint_free
	mov	dword ptr [rbp], r15d
	mov	eax, r14d
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4045fb
	.globl sub_4045fb
	.type sub_4045fb, @function
sub_4045fb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404600

	.globl group_number
	.type group_number, @function
group_number:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	r15, rdx
	mov	r12, rsi
	mov	rbx, rdi
	mov	qword ptr [rsp + 8], rcx
	mov	rdi, rcx
	call	strlen
	mov	r14, rax
	lea	rdi, [rsp + 0x10]
	mov	rsi, rbx
	mov	rdx, r12
	call	memcpy
	add	rbx, r12
	mov	r13, r14
	neg	r13
	mov	rbp, -1
	jmp	.label_213
	.section	.text
	.align	16
	#Procedure 0x404649
	.globl sub_404649
	.type sub_404649, @function
sub_404649:

	nop	dword ptr [rax]
.label_211:
	add	rbx, r13
	mov	rdi, rbx
	mov	rsi, qword ptr [rsp + 8]
	mov	rdx, r14
	call	memcpy
.label_213:
	movzx	eax, byte ptr [r15]
	test	rax, rax
	je	.label_212
	cmp	al, 0x7f
	cmovae	rax, r12
	inc	r15
	mov	rbp, rax
.label_212:
	cmp	r12, rbp
	cmovb	rbp, r12
	sub	rbx, rbp
	mov	rax, r12
	sub	rax, rbp
	lea	rsi, [rsp + rax + 0x10]
	mov	rdi, rbx
	mov	rdx, rbp
	call	memcpy
	sub	r12, rbp
	jne	.label_211
	mov	rax, rbx
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
	#Procedure 0x4046af
	.globl sub_4046af
	.type sub_4046af, @function
sub_4046af:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4046b0
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
	#Procedure 0x4046c6
	.globl sub_4046c6
	.type sub_4046c6, @function
sub_4046c6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4046d0

	.globl randread_error
	.type randread_error, @function
randread_error:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_214
	mov	r14d,  dword ptr [dword ptr [rip + exit_failure]]
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	edi, edi
	test	r15d, r15d
	jne	.label_217
	mov	esi, OFFSET FLAT:label_215
	jmp	.label_216
.label_217:
	mov	esi, OFFSET FLAT:label_218
.label_216:
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	xor	eax, eax
	mov	edi, r14d
	mov	esi, r15d
	mov	rdx, rbp
	call	error
.label_214:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40472e
	.globl sub_40472e
	.type sub_40472e, @function
sub_40472e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x404730
	.globl c_islower
	.type c_islower, @function
c_islower:

	add	edi, -0x61
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x40473a
	.globl sub_40473a
	.type sub_40473a, @function
sub_40473a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404740

	.globl clear_random_data
	.type clear_random_data, @function
clear_random_data:
	mov	rdi,  qword ptr [word ptr [rip + randint_source]]
	jmp	randint_all_free
	.section	.text
	.align	16
	#Procedure 0x40474c
	.globl sub_40474c
	.type sub_40474c, @function
sub_40474c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404750

	.globl known
	.type known, @function
known:
	test	rdi, rdi
	setns	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x404757
	.globl sub_404757
	.type sub_404757, @function
sub_404757:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404760

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
	#Procedure 0x4047a9
	.globl sub_4047a9
	.type sub_4047a9, @function
sub_4047a9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4047b0

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
	je	.label_222
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 0x18], r14
	xor	ebp, ebp
	nop	dword ptr [rax + rax]
.label_219:
	mov	rdi, r15
	mov	rsi, r12
	mov	rdx, rbx
	call	strncmp
	test	eax, eax
	jne	.label_220
	mov	rdi, r15
	call	strlen
	cmp	rax, rbx
	je	.label_224
	cmp	qword ptr [rsp + 8], -1
	je	.label_225
	mov	rax, qword ptr [rsp + 0x18]
	test	rax, rax
	je	.label_221
	mov	rdi, qword ptr [rsp + 8]
	imul	rdi, r13
	add	rdi, rax
	mov	rsi, r14
	mov	rdx, r13
	call	memcmp
	test	eax, eax
	je	.label_220
.label_221:
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_220
.label_225:
	mov	qword ptr [rsp + 8], rbp
	nop	word ptr [rax + rax]
.label_220:
	mov	rax, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rax + rbp*8 + 8]
	inc	rbp
	add	r14, r13
	test	r15, r15
	jne	.label_219
	jmp	.label_223
.label_222:
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
.label_223:
	mov	rax, qword ptr [rsp + 0x10]
	test	al, 1
	mov	rbp, -2
	cmove	rbp, qword ptr [rsp + 8]
.label_224:
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
	#Procedure 0x4048ad
	.globl sub_4048ad
	.type sub_4048ad, @function
sub_4048ad:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4048b0

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x4048ba
	.globl sub_4048ba
	.type sub_4048ba, @function
sub_4048ba:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4048c0
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quotearg_n
	.section	.text
	.align	16
	#Procedure 0x4048cd
	.globl sub_4048cd
	.type sub_4048cd, @function
sub_4048cd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4048d0
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
	#Procedure 0x4048e0

	.globl randint_genmax
	.type randint_genmax, @function
randint_genmax:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r13, rsi
	mov	rax, qword ptr [rdi]
	mov	qword ptr [rsp + 0x18], rax
	mov	r15, qword ptr [rdi + 8]
	lea	rax, [rdi + 8]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], rdi
	mov	rbx, qword ptr [rdi + 0x10]
	lea	r12, [r13 + 1]
	nop	word ptr cs:[rax + rax]
.label_230:
	cmp	rbx, r13
	jae	.label_226
	mov	rax, rbx
	xor	r14d, r14d
	nop	dword ptr [rax + rax]
.label_229:
	mov	rdi, rax
	call	shift_left
	add	rax, 0xff
	inc	r14
	cmp	rax, r13
	jb	.label_229
	mov	rdi, qword ptr [rsp + 0x18]
	lea	rbp, [rsp + 0x20]
	mov	rsi, rbp
	mov	rdx, r14
	call	randread
	nop	dword ptr [rax + rax]
.label_227:
	mov	rdi, r15
	call	shift_left
	movzx	r15d, byte ptr [rbp]
	add	r15, rax
	mov	rdi, rbx
	call	shift_left
	mov	rbx, rax
	add	rbx, 0xff
	inc	rbp
	cmp	rbx, r13
	jb	.label_227
.label_226:
	mov	rcx, r15
	mov	rsi, rbx
	sub	rsi, r13
	je	.label_228
	xor	edx, edx
	mov	rax, rsi
	div	r12
	mov	rdi, rdx
	sub	rbx, rdi
	xor	edx, edx
	mov	rax, rcx
	div	r12
	mov	r15, rdx
	dec	rdi
	cmp	rcx, rbx
	mov	rbx, rdi
	ja	.label_230
	xor	edx, edx
	mov	rax, rcx
	div	r12
	mov	rcx, qword ptr [rsp + 0x10]
	mov	qword ptr [rcx + 8], rax
	xor	edx, edx
	mov	rax, rsi
	div	r12
	mov	qword ptr [rcx + 0x10], rax
	mov	rcx, r15
	jmp	.label_231
.label_228:
	xorps	xmm0, xmm0
	mov	rax, qword ptr [rsp + 8]
	movups	xmmword ptr [rax], xmm0
.label_231:
	mov	rax, rcx
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
	#Procedure 0x4049fc
	.globl sub_4049fc
	.type sub_4049fc, @function
sub_4049fc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404a00

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	.section	.text
	.align	16
	#Procedure 0x404a05
	.globl sub_404a05
	.type sub_404a05, @function
sub_404a05:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404a10
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
	#Procedure 0x404a1d
	.globl sub_404a1d
	.type sub_404a1d, @function
sub_404a1d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404a20

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
	#Procedure 0x404a2d
	.globl sub_404a2d
	.type sub_404a2d, @function
sub_404a2d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404a30
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
	#Procedure 0x404a3d
	.globl sub_404a3d
	.type sub_404a3d, @function
sub_404a3d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404a40

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	sub	rsp, 0xd8
	test	al, al
	je	.label_232
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_232:
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
	ja	.label_234
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_233
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_235
	test	esi, esi
	jne	.label_234
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_238
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_241
.label_234:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_239
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_235
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_237
.label_233:
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
.label_235:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_242
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_244
.label_242:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_244:
	mov	edx, dword ptr [rax]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
.label_237:
	cmp	eax, 6
	jne	.label_239
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_240
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_243
.label_239:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_245
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_236
.label_238:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_241:
	mov	esi, dword ptr [rax]
	call	rpl_fcntl_DUPFD
	add	rsp, 0xd8
	ret	
.label_240:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_243:
	mov	esi, dword ptr [rax]
	call	rpl_fcntl_DUPFD_CLOEXEC
	add	rsp, 0xd8
	ret	
.label_245:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_236:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
	.section	.text
	.align	16
	#Procedure 0x404bf4
	.globl sub_404bf4
	.type sub_404bf4, @function
sub_404bf4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404c00

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
	je	.label_246
	mov	esi, OFFSET FLAT:label_247
	jmp	.label_248
.label_246:
	mov	esi, OFFSET FLAT:label_249
.label_248:
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
	#Procedure 0x404c70

	.globl xstrtoumax
	.type xstrtoumax, @function
xstrtoumax:
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
	jae	.label_265
	mov	qword ptr [rsp + 8], rcx
	call	__errno_location
	mov	r12, rax
	mov	dword ptr [r12], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_258:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_258
	test	rbp, rbp
	lea	rsi, [rsp + 0x10]
	cmovne	rsi, rbp
	mov	r15d, 4
	cmp	al, 0x2d
	je	.label_254
	mov	rdi, rbx
	mov	edx, r14d
	mov	r14, rsi
	call	strtoumax
	mov	rcx, r14
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rcx]
	cmp	rax, rbx
	je	.label_266
	mov	eax, dword ptr [r12]
	xor	r12d, r12d
	test	eax, eax
	mov	rbp, r13
	je	.label_252
	cmp	eax, 0x22
	jne	.label_254
	mov	r12d, 1
.label_252:
	test	rbp, rbp
	jne	.label_256
	jmp	.label_263
.label_266:
	mov	rbp, r13
	test	rbp, rbp
	je	.label_254
	movsx	esi, byte ptr [rax]
	test	esi, esi
	je	.label_254
	mov	rdi, rbp
	call	strchr
	mov	rcx, r14
	test	rax, rax
	je	.label_254
	mov	qword ptr [rsp], 1
	xor	r12d, r12d
.label_256:
	mov	rax, qword ptr [rcx]
	movsx	ebx, byte ptr [rax]
	test	ebx, ebx
	je	.label_263
	mov	rdi, rbp
	mov	esi, ebx
	call	strchr
	test	rax, rax
	je	.label_267
	mov	r15d, 0x400
	mov	r13d, 1
	add	ebx, -0x45
	cmp	ebx, 0x2f
	ja	.label_251
	movabs	rax, 0x814400308945
	bt	rax, rbx
	jae	.label_251
	mov	esi, 0x30
	mov	rdi, rbp
	call	strchr
	mov	r13d, 1
	mov	rsi, r14
	test	rax, rax
	je	.label_257
	mov	rax, qword ptr [rsi]
	movsx	ecx, byte ptr [rax + 1]
	mov	r13d, 1
	cmp	ecx, 0x42
	je	.label_259
	cmp	ecx, 0x44
	je	.label_259
	cmp	ecx, 0x69
	jne	.label_257
	xor	ecx, ecx
	cmp	byte ptr [rax + 2], 0x42
	sete	cl
	lea	r13, [rcx + rcx + 1]
	jmp	.label_257
.label_259:
	mov	r15d, 0x3e8
	mov	r13d, 2
	jmp	.label_257
.label_251:
	mov	rsi, r14
.label_257:
	mov	rax, qword ptr [rsi]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x42
	cmp	ecx, 0x35
	ja	.label_267
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_253]]
.label_796:
	lea	rdi, [rsp]
	mov	edx, 3
	jmp	.label_250
.label_267:
	mov	rax, qword ptr [rsp]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
	or	r12d, 2
	jmp	.label_255
.label_797:
	lea	rdi, [rsp]
	mov	edx, 1
	jmp	.label_250
.label_798:
	lea	rdi, [rsp]
	mov	edx, 2
	jmp	.label_250
.label_800:
	lea	rdi, [rsp]
	mov	edx, 4
	jmp	.label_250
.label_794:
	lea	rdi, [rsp]
	mov	esi, 0x400
	call	bkm_scale
	jmp	.label_264
.label_795:
	lea	rdi, [rsp]
	mov	edx, 6
	jmp	.label_250
.label_799:
	lea	rdi, [rsp]
	mov	edx, 5
	jmp	.label_250
.label_801:
	lea	rdi, [rsp]
	mov	edx, 8
	jmp	.label_250
.label_802:
	lea	rdi, [rsp]
	mov	edx, 7
.label_250:
	mov	esi, r15d
	call	bkm_scale_by_power
.label_264:
	mov	rsi, r14
.label_804:
	or	eax, r12d
	mov	rcx, qword ptr [rsi]
	lea	rdx, [rcx + r13]
	mov	qword ptr [rsi], rdx
	mov	r12d, eax
	or	r12d, 2
	cmp	byte ptr [rcx + r13], 0
	cmove	r12d, eax
.label_263:
	mov	rax, qword ptr [rsp]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
.label_255:
	mov	r15d, r12d
.label_254:
	mov	eax, r15d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_803:
	lea	rdi, [rsp]
	mov	esi, 0x200
	call	bkm_scale
	jmp	.label_264
.label_805:
	lea	rdi, [rsp]
	mov	esi, 2
	call	bkm_scale
	jmp	.label_264
.label_265:
	mov	edi, OFFSET FLAT:label_260
	mov	esi, OFFSET FLAT:label_261
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_262
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x404f12
	.globl sub_404f12
	.type sub_404f12, @function
sub_404f12:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404f20
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	mov	rax, rdx
	xor	edx, edx
	mov	rcx, rax
	jmp	quotearg_alloc_mem
	.section	.text
	.align	16
	#Procedure 0x404f2a
	.globl sub_404f2a
	.type sub_404f2a, @function
sub_404f2a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404f30

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
	je	.label_268
	mov	qword ptr [rax], rbx
.label_268:
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
	#Procedure 0x40501c
	.globl sub_40501c
	.type sub_40501c, @function
sub_40501c:

	nop	dword ptr [rax]
.label_269:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x405023
	.globl sub_405023
	.type sub_405023, @function
sub_405023:

	nop	
	.section	.text
	.align	16
	#Procedure 0x405025
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_269
	movabs	rax, 0x3ffffff03ffffff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
	.section	.text
	.align	16
	#Procedure 0x405040
	.globl randread_set_handler
	.type randread_set_handler, @function
randread_set_handler:

	mov	qword ptr [rdi + 8], rsi
	ret	
	.section	.text
	.align	16
	#Procedure 0x405045
	.globl sub_405045
	.type sub_405045, @function
sub_405045:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405050

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:label_278
	nop	
.label_277:
	mov	edi, OFFSET FLAT:label_270
	call	strcmp
	test	eax, eax
	je	.label_275
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_277
.label_275:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:label_270
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_280
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_273
	mov	ecx, OFFSET FLAT:label_274
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_271
	mov	esi, OFFSET FLAT:label_272
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_271
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_279
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_271:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_281
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:label_270
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_274
	mov	ecx, OFFSET FLAT:label_270
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_276
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:label_282
	mov	ecx, OFFSET FLAT:label_47
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
	#Procedure 0x40516a
	.globl sub_40516a
	.type sub_40516a, @function
sub_40516a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405170

	.globl ptr_align
	.type ptr_align, @function
ptr_align:
	lea	rcx, [rdi + rsi - 1]
	xor	edx, edx
	mov	rax, rcx
	div	rsi
	sub	rcx, rdx
	mov	rax, rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x405184
	.globl sub_405184
	.type sub_405184, @function
sub_405184:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405190

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
	mov	r14, rsi
	mov	r12d, edi
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	rdi, qword ptr [r14]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_47
	call	setlocale
	mov	edi, OFFSET FLAT:label_296
	mov	esi, OFFSET FLAT:label_297
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_296
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	qword ptr [rsp + 0x18], 3
	mov	qword ptr [rsp + 0x20], -1
	xor	r15d, r15d
	movabs	rbp, 0x3fffffffffffffff
	movabs	r13, 0x7fffffffffffffff
	jmp	.label_283
.label_824:
	mov	byte ptr [rsp + 0x2e], 1
	nop	dword ptr [rax + rax]
.label_283:
	mov	edx, OFFSET FLAT:label_289
	mov	ecx, OFFSET FLAT:long_opts
	xor	r8d, r8d
	mov	edi, r12d
	mov	rsi, r14
	call	getopt_long
	cmp	eax, 0x65
	jle	.label_293
	add	eax, -0x66
	cmp	eax, 0x1a
	ja	.label_294
	jmp	qword ptr [word ptr [+ (rax * 8) + label_298]]
.label_818:
	mov	byte ptr [rsp + 0x10], 1
	jmp	.label_283
.label_819:
	mov	rbx,  qword ptr [word ptr [rip + optarg]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_303
	mov	edx, 5
	call	dcgettext
	xor	esi, esi
	mov	ecx, OFFSET FLAT:label_47
	xor	r9d, r9d
	mov	rdi, rbx
	mov	rdx, rbp
	mov	r8, rax
	call	xdectoumax
	mov	qword ptr [rsp + 0x18], rax
	jmp	.label_283
.label_820:
	mov	rbx,  qword ptr [word ptr [rip + optarg]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_286
	mov	edx, 5
	call	dcgettext
	mov	dword ptr [rsp], 0
	xor	esi, esi
	xor	edx, edx
	mov	r8d, OFFSET FLAT:label_291
	mov	rdi, rbx
	mov	rcx, r13
	mov	r9, rax
	call	xnumtoumax
	mov	qword ptr [rsp + 0x20], rax
	jmp	.label_283
.label_821:
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	test	rsi, rsi
	je	.label_301
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	mov	edi, OFFSET FLAT:label_305
	mov	edx, OFFSET FLAT:remove_args
	mov	ecx, OFFSET FLAT:remove_methods
	mov	r8d, 4
	call	__xargmatch_internal
	mov	eax,  dword ptr [dword ptr [+ (rax * 4) + remove_methods]]
	mov	dword ptr [rsp + 0x28], eax
	jmp	.label_283
.label_822:
	mov	byte ptr [rsp + 0x2c], 1
	jmp	.label_283
.label_823:
	mov	byte ptr [rsp + 0x2d], 1
	jmp	.label_283
.label_825:
	test	r15, r15
	je	.label_290
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	mov	rdi, r15
	call	strcmp
	test	eax, eax
	jne	.label_300
.label_290:
	mov	r15,  qword ptr [word ptr [rip + optarg]]
	jmp	.label_283
.label_301:
	mov	dword ptr [rsp + 0x28], 3
	jmp	.label_283
.label_293:
	cmp	eax, -1
	jne	.label_302
	movsxd	rbx,  dword ptr [dword ptr [rip + optind]]
	sub	r12d, ebx
	je	.label_306
	mov	rsi, -1
	mov	rdi, r15
	call	randint_all_new
	mov	qword ptr [word ptr [rip + randint_source]],  rax
	test	rax, rax
	je	.label_284
	mov	edi, OFFSET FLAT:clear_random_data
	call	atexit
	xor	eax, eax
	test	r12d, r12d
	jle	.label_287
	lea	rbp, [r14 + rbx*8]
	mov	bl, 1
	lea	r14, [rsp + 0x10]
	jmp	.label_288
.label_308:
	mov	rsi,  qword ptr [word ptr [rip + randint_source]]
	mov	rdi, r15
	mov	rdx, r14
	call	wipefd
	jmp	.label_295
	.section	.text
	.align	16
	#Procedure 0x4053c7
	.globl sub_4053c7
	.type sub_4053c7, @function
sub_4053c7:

	nop	word ptr [rax + rax]
.label_288:
	mov	rdx, qword ptr [rbp]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rdi, rax
	call	xstrdup
	mov	r15, rax
	mov	rax, qword ptr [rbp]
	cmp	byte ptr [rax], 0x2d
	jne	.label_307
	cmp	byte ptr [rax + 1], 0
	je	.label_308
.label_307:
	mov	rdi, qword ptr [rbp]
	mov	rdx,  qword ptr [word ptr [rip + randint_source]]
	mov	rsi, r15
	mov	rcx, r14
	call	wipefile
.label_295:
	and	bl, al
	mov	rdi, r15
	call	free
	add	rbp, 8
	dec	r12d
	jne	.label_288
	xor	bl, 1
	movzx	eax, bl
.label_287:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_302:
	cmp	eax, 0xffffff7d
	je	.label_292
	cmp	eax, 0xffffff7e
	jne	.label_294
	xor	edi, edi
	call	usage
.label_292:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	esi, OFFSET FLAT:label_270
	mov	edx, OFFSET FLAT:label_273
	mov	r8d, OFFSET FLAT:label_299
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_294:
	mov	edi, 1
	call	usage
.label_306:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_285
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
.label_284:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r15
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_186
	xor	eax, eax
	mov	esi, ebx
	call	error
.label_300:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_304
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405510

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_311
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_309
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_311
.label_309:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_311
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_310
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_310:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_311:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	.section	.text
	.align	16
	#Procedure 0x405587
	.globl sub_405587
	.type sub_405587, @function
sub_405587:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405590
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
	#Procedure 0x4055a9
	.globl sub_4055a9
	.type sub_4055a9, @function
sub_4055a9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4055b0

	.globl readisaac
	.type readisaac, @function
readisaac:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rdx
	mov	rbx, rsi
	mov	r14, rdi
	mov	r12, qword ptr [r14]
	lea	r13, [r14 + 0x820]
	mov	rsi, r13
	sub	rsi, r12
	add	rsi, 0x800
	cmp	r12, r15
	jae	.label_314
	lea	rbp, [r14 + 8]
	mov	rdi, rbx
	mov	rdx, r12
	call	memcpy
	add	rbx, r12
	sub	r15, r12
	xor	r12d, r12d
	nop	dword ptr [rax + rax]
.label_315:
	cmp	r15, 0x800
	jb	.label_312
	mov	rdi, rbp
	mov	rsi, rbx
	call	isaac_refill
	add	rbx, 0x800
	add	r15, -0x800
	jne	.label_315
	jmp	.label_313
.label_312:
	mov	rdi, rbp
	mov	rsi, r13
	call	isaac_refill
	mov	r12d, 0x800
	mov	rsi, r13
.label_314:
	mov	rdi, rbx
	mov	rdx, r15
	call	memcpy
	sub	r12, r15
.label_313:
	mov	qword ptr [r14], r12
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
	#Procedure 0x40565a
	.globl sub_40565a
	.type sub_40565a, @function
sub_40565a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405660

	.globl explicit_bzero
	.type explicit_bzero, @function
explicit_bzero:
	mov	rax, rsi
	xor	esi, esi
	mov	rdx, rax
	jmp	memset
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
	#Procedure 0x4056a7
	.globl sub_4056a7
	.type sub_4056a7, @function
sub_4056a7:

	nop	word ptr [rax + rax]
.label_318:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_316
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	jmp	.label_317
	.section	.text
	.align	16
	#Procedure 0x4056d5

	.globl wipefd
	.type wipefd, @function
wipefd:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r15, rdx
	mov	rbx, rsi
	mov	r14, rdi
	mov	edi, 1
	mov	esi, 3
	xor	eax, eax
	call	rpl_fcntl
	test	eax, eax
	js	.label_318
	test	ah, 4
	jne	.label_321
	mov	edi, 1
	mov	rsi, r14
	mov	rdx, rbx
	mov	rcx, r15
	call	do_wipefd
	mov	bl, al
	jmp	.label_319
.label_321:
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_320
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
.label_317:
	mov	rdx, rcx
	mov	rcx, r14
	call	error
.label_319:
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40574a
	.globl sub_40574a
	.type sub_40574a, @function
sub_40574a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405750

	.globl base_len
	.type base_len, @function
base_len:
	push	rbx
	mov	rbx, rdi
	call	strlen
	mov	rcx, rax
	nop	dword ptr [rax]
.label_323:
	mov	rax, rcx
	cmp	rax, 2
	jb	.label_322
	lea	rcx, [rax - 1]
	cmp	byte ptr [rbx + rax - 1], 0x2f
	je	.label_323
.label_322:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x405776
	.globl sub_405776
	.type sub_405776, @function
sub_405776:

	nop	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405780

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_324
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_186
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4057b0

	.globl randint_choose
	.type randint_choose, @function
randint_choose:
	dec	rsi
	jmp	randint_genmax
	.section	.text
	.align	16
	#Procedure 0x4057b8
	.globl sub_4057b8
	.type sub_4057b8, @function
sub_4057b8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4057c0

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
	je	.label_327
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_325
	jmp	.label_326
.label_327:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_326
.label_325:
	mov	eax, 1
	test	bpl, bpl
	je	.label_326
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
.label_326:
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
	#Procedure 0x405848
	.globl sub_405848
	.type sub_405848, @function
sub_405848:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405850

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
	je	.label_328
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_330
	jmp	.label_329
.label_328:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_329
.label_330:
	mov	eax, 1
	test	bpl, bpl
	je	.label_329
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
.label_329:
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
	#Procedure 0x4058c9
	.globl sub_4058c9
	.type sub_4058c9, @function
sub_4058c9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4058d0

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
	je	.label_333
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_332
	jmp	.label_331
.label_333:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_331
.label_332:
	mov	eax, 1
	test	bpl, bpl
	je	.label_331
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
.label_331:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405933
	.globl sub_405933
	.type sub_405933, @function
sub_405933:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405940

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
	je	.label_336
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_334
	jmp	.label_335
.label_336:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_335
.label_334:
	mov	eax, 1
	test	bpl, bpl
	je	.label_335
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_335:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40599f
	.globl sub_40599f
	.type sub_40599f, @function
sub_40599f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4059a0

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
	je	.label_337
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_339
	jmp	.label_338
.label_337:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_338
.label_339:
	mov	eax, 1
	test	bpl, bpl
	je	.label_338
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_338:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4059e9
	.globl sub_4059e9
	.type sub_4059e9, @function
sub_4059e9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4059f0

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
	je	.label_342
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_341
	jmp	.label_340
.label_342:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_340
.label_341:
	mov	eax, 1
	test	bpl, bpl
	je	.label_340
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_340:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405a35
	.globl sub_405a35
	.type sub_405a35, @function
sub_405a35:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405a40

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_345
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_344
	jmp	.label_343
.label_345:
	mov	eax, 1
	test	cl, cl
	je	.label_343
.label_344:
	xor	eax, eax
.label_343:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x405a6f
	.globl sub_405a6f
	.type sub_405a6f, @function
sub_405a6f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x405a70

	.globl c_isupper
	.type c_isupper, @function
c_isupper:
	add	edi, -0x41
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x405a7a
	.globl sub_405a7a
	.type sub_405a7a, @function
sub_405a7a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405a80

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	.section	.text
	.align	16
	#Procedure 0x405a89
	.globl sub_405a89
	.type sub_405a89, @function
sub_405a89:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405a90

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
	mov	rax,  qword ptr [word ptr [rip + label_346]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_347]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_348]]
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
	#Procedure 0x405af8
	.globl sub_405af8
	.type sub_405af8, @function
sub_405af8:

	nop	dword ptr [rax + rax]
.label_349:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x405b05
	.globl sub_405b05
	.type sub_405b05, @function
sub_405b05:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405b0f
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_349
	call	rpl_calloc
	test	rax, rax
	je	.label_349
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x405b30

	.globl rpl_fcntl_DUPFD_CLOEXEC
	.type rpl_fcntl_DUPFD_CLOEXEC, @function
rpl_fcntl_DUPFD_CLOEXEC:
	push	rbp
	push	r14
	push	rbx
	mov	r14d, esi
	mov	ebp, edi
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0
	js	.label_351
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebp
	mov	edx, r14d
	call	fcntl
	mov	ebx, eax
	test	ebx, ebx
	jns	.label_353
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_353
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
	test	ebx, ebx
	js	.label_350
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
	jmp	.label_354
.label_353:
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_354
.label_351:
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
.label_354:
	test	ebx, ebx
	js	.label_350
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	jne	.label_350
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_352
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebx
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_350
.label_352:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	mov	dword ptr [rbp], r14d
	mov	ebx, 0xffffffff
.label_350:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405bf3
	.globl sub_405bf3
	.type sub_405bf3, @function
sub_405bf3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405c00
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
	#Procedure 0x405c72
	.globl sub_405c72
	.type sub_405c72, @function
sub_405c72:

	nop	word ptr cs:[rax + rax]
.label_355:
	mov	byte ptr [r10 + 6], 0
	mov	word ptr [r10 + 4], 0x6d6f
	mov	dword ptr [r10], 0x646e6172
	ret	
	.section	.text
	.align	16
	#Procedure 0x405c94
	.globl sub_405c94
	.type sub_405c94, @function
sub_405c94:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405c9a

	.globl passname
	.type passname, @function
passname:
	mov	r10, rsi
	test	rdi, rdi
	je	.label_355
	push	rax
	movzx	r8d, byte ptr [rdi]
	movzx	r9d, byte ptr [rdi + 1]
	movzx	eax, byte ptr [rdi + 2]
	mov	dword ptr [rsp], eax
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_356
	xor	eax, eax
	mov	rdi, r10
	call	__sprintf_chk
	pop	rax
	ret	
	.section	.text
	.align	16
	#Procedure 0x405cd0

	.globl umaxtostr
	.type umaxtostr, @function
umaxtostr:
	mov	rcx, rdi
	mov	byte ptr [rsi + 0x14], 0
	add	rsi, 0x14
	movabs	r8, 0xcccccccccccccccd
	nop	word ptr cs:[rax + rax]
.label_357:
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
	ja	.label_357
	mov	rax, rsi
	ret	
	.section	.text
	.align	16
	#Procedure 0x405d1b
	.globl sub_405d1b
	.type sub_405d1b, @function
sub_405d1b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405d20
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	add	edi, -0x21
	cmp	edi, 0x5e
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x405d2a
	.globl sub_405d2a
	.type sub_405d2a, @function
sub_405d2a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405d30

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
.label_464:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_466
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_469]]
.label_681:
	mov	r14d, r10d
	mov	edi, OFFSET FLAT:label_358
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_365
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10d, r14d
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_682:
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_375
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_375
	xor	r14d, r14d
.label_388:
	cmp	r14, r11
	jae	.label_385
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_385:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_388
.label_375:
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
	jmp	.label_393
.label_674:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_393
.label_677:
	mov	al, 1
.label_675:
	mov	r12b, 1
.label_678:
	test	r12b, 1
	mov	cl, 1
	je	.label_406
	mov	ecx, eax
.label_406:
	mov	al, cl
.label_676:
	test	r12b, 1
	jne	.label_409
	test	r11, r11
	je	.label_411
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_411:
	mov	r14d, 1
	jmp	.label_417
.label_409:
	xor	r14d, r14d
.label_417:
	mov	ecx, OFFSET FLAT:label_365
	mov	qword ptr [rsp + 0x40], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x38], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_393
.label_679:
	test	r12b, 1
	jne	.label_426
	test	r11, r11
	je	.label_428
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_428:
	mov	r14d, 1
	jmp	.label_430
.label_680:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_432
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	sil, 1
	jmp	.label_393
.label_426:
	xor	r14d, r14d
.label_430:
	mov	eax, OFFSET FLAT:label_432
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_393:
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
	jmp	.label_370
	.section	.text
	.align	16
	#Procedure 0x40600c
	.globl sub_40600c
	.type sub_40600c, @function
sub_40600c:

	nop	dword ptr [rax]
.label_361:
	inc	rsi
.label_370:
	cmp	rbp, -1
	je	.label_363
	cmp	rsi, rbp
	jne	.label_367
	jmp	.label_369
	.section	.text
	.align	16
	#Procedure 0x406023
	.globl sub_406023
	.type sub_406023, @function
sub_406023:

	nop	word ptr cs:[rax + rax]
.label_363:
	cmp	byte ptr [rdi + rsi], 0
	je	.label_369
.label_367:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_378
	mov	rax, qword ptr [rsp + 0x38]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_381
	cmp	rbp, -1
	jne	.label_381
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
.label_381:
	cmp	rbx, rbp
	jbe	.label_391
.label_378:
	xor	r8d, r8d
.label_368:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_394
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_459]]
.label_695:
	test	rsi, rsi
	jne	.label_390
	jmp	.label_401
	.section	.text
	.align	16
	#Procedure 0x4060be
	.globl sub_4060be
	.type sub_4060be, @function
sub_4060be:

	nop	
.label_391:
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
	jne	.label_415
	cmp	byte ptr [rsp + 7], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_368
	jmp	.label_382
.label_415:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_368
.label_699:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_435
	test	rsi, rsi
	jne	.label_437
	cmp	rbp, 1
	je	.label_401
	xor	r13d, r13d
	jmp	.label_379
.label_688:
	cmp	byte ptr [rsp + 0x1e], 0
	je	.label_444
	cmp	byte ptr [rsp + 7], 0
	jne	.label_386
	cmp	r12d, 2
	jne	.label_412
	mov	eax, r9d
	and	al, 1
	jne	.label_412
	cmp	r14, r11
	jae	.label_448
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_448:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_451
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_451:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_456
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_456:
	add	r14, 3
	mov	r9b, 1
.label_412:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_463
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_463:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_465
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_465
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_465
	cmp	r14, r11
	jae	.label_359
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_359:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_419
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_419:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_379
.label_689:
	mov	bl, 0x62
	jmp	.label_373
.label_690:
	mov	cl, 0x74
	jmp	.label_377
.label_691:
	mov	bl, 0x76
	jmp	.label_373
.label_692:
	mov	bl, 0x66
	jmp	.label_373
.label_693:
	mov	cl, 0x72
	jmp	.label_377
.label_696:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_384
	cmp	byte ptr [rsp + 7], 0
	jne	.label_386
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
	jae	.label_389
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_389:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_400
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_400:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_402
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_402:
	add	r14, 3
	xor	r9d, r9d
.label_384:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_379
.label_697:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_413
	cmp	r12d, 2
	jne	.label_390
	cmp	byte ptr [rsp + 7], 0
	je	.label_390
	jmp	.label_386
.label_698:
	cmp	r12d, 2
	jne	.label_423
	cmp	byte ptr [rsp + 7], 0
	jne	.label_386
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_374
.label_394:
	mov	dword ptr [rsp + 0x4c], r8d
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xb0], 1
	jne	.label_436
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
.label_383:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2b]
	mov	qword ptr [rsp + 0x58], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 0x17]
	mov	r12, qword ptr [rsp + 0x68]
	mov	r9d, dword ptr [rsp + 0x48]
	ja	.label_447
	test	r8b, r8b
	je	.label_447
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x4c]
	jmp	.label_379
.label_435:
	test	rsi, rsi
	jne	.label_392
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_392
.label_401:
	mov	dl, 1
.label_694:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_386
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_379:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_470
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_471
	jmp	.label_360
	.section	.text
	.align	16
	#Procedure 0x406404
	.globl sub_406404
	.type sub_406404, @function
sub_406404:

	nop	word ptr cs:[rax + rax]
.label_470:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_360
.label_471:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_366
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_374
	jmp	.label_372
	.section	.text
	.align	16
	#Procedure 0x40644d
	.globl sub_40644d
	.type sub_40644d, @function
sub_40644d:

	nop	dword ptr [rax]
.label_360:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_372
	jmp	.label_374
.label_366:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_372
.label_444:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_361
	xor	r15d, r15d
	jmp	.label_390
.label_423:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x2a], 0
	je	.label_377
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_374
.label_377:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_386
.label_373:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1e], 0
	mov	r13d, 0
	je	.label_379
	nop	word ptr cs:[rax + rax]
.label_372:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_386
	cmp	r12d, 2
	jne	.label_407
	mov	eax, r9d
	and	al, 1
	jne	.label_407
	cmp	r14, r11
	jae	.label_410
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_410:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_445
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_445:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_421
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_421:
	add	r14, 3
	mov	r9b, 1
.label_407:
	cmp	r14, r11
	jae	.label_425
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_425:
	inc	r14
	jmp	.label_405
.label_436:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_431
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_431:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x58], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x50], rsi
.label_434:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_450
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_453
	cmp	rbp, -2
	je	.label_458
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2c]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_461
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_457:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_440
	bt	rsi, rdx
	jb	.label_382
.label_440:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_457
.label_461:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_446
	xor	r13d, r13d
.label_446:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x50]
	je	.label_434
	jmp	.label_383
.label_465:
	xor	r13d, r13d
	jmp	.label_379
.label_392:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_379
.label_413:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_390
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_390
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_390
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_443
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_468
	cmp	byte ptr [rsp + 7], 0
	jne	.label_386
	mov	r15b, byte ptr [rdi + rcx]
	cmp	r14, r11
	jae	.label_403
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_403:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_364
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_364:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_416
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_416:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_420
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x3f
.label_420:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r13d, r13d
	jmp	.label_379
.label_390:
	xor	eax, eax
.label_437:
	xor	r13d, r13d
	jmp	.label_379
.label_447:
	add	qword ptr [rsp + 0x58], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_429
	.section	.text
	.align	16
	#Procedure 0x406733
	.globl sub_406733
	.type sub_406733, @function
sub_406733:

	nop	word ptr cs:[rax + rax]
.label_387:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_429:
	test	r8b, r8b
	je	.label_438
	mov	ecx, dword ptr [rsp + 0x4c]
	test	cl, 1
	je	.label_439
	cmp	r14, r11
	jae	.label_441
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_441:
	inc	r14
	mov	dword ptr [rsp + 0x4c], 0
	jmp	.label_439
	.section	.text
	.align	16
	#Procedure 0x40677c
	.globl sub_40677c
	.type sub_40677c, @function
sub_40677c:

	nop	dword ptr [rax]
.label_438:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_382
	cmp	r12d, 2
	jne	.label_449
	mov	eax, r9d
	and	al, 1
	jne	.label_449
	cmp	r14, r11
	jae	.label_452
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_452:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_455
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_455:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_462
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_462:
	add	r14, 3
	mov	r9b, 1
.label_449:
	cmp	r14, r11
	jae	.label_418
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_418:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_454
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_454:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_472
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_472:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_439:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x58], rdx
	jbe	.label_374
	test	r9b, 1
	je	.label_376
	mov	ebx, eax
	and	bl, 1
	jne	.label_376
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_380
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_380:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_399
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_399:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_376:
	cmp	r14, r11
	jae	.label_387
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_387
	.section	.text
	.align	16
	#Procedure 0x406883
	.globl sub_406883
	.type sub_406883, @function
sub_406883:

	nop	word ptr cs:[rax + rax]
.label_374:
	test	r9b, 1
	je	.label_395
	and	al, 1
	jne	.label_395
	cmp	r14, r11
	jae	.label_397
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_397:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_427
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_427:
	add	r14, 2
	xor	r9d, r9d
.label_395:
	mov	ebx, r15d
.label_405:
	cmp	r14, r11
	jae	.label_404
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_404:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_361
.label_453:
	xor	r13d, r13d
.label_450:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_383
.label_458:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbx, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	jae	.label_422
	mov	rsi, qword ptr [rsp + 0x50]
.label_398:
	mov	rax, qword ptr [rsp + 0x58]
	cmp	byte ptr [rax + r12], 0
	je	.label_424
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_398
	xor	r13d, r13d
	jmp	.label_383
.label_422:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_383
.label_424:
	xor	r13d, r13d
	jmp	.label_383
.label_443:
	xor	r13d, r13d
	jmp	.label_379
.label_468:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_379
	.section	.text
	.align	16
	#Procedure 0x406958
	.globl sub_406958
	.type sub_406958, @function
sub_406958:

	nop	dword ptr [rax + rax]
.label_369:
	test	r14, r14
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0xa8]
	and	cl, 1
	mov	qword ptr [rsp + 0x20], rbp
	je	.label_442
	or	dl, al
	je	.label_382
.label_442:
	test	cl, cl
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x1d]
	mov	rsi, qword ptr [rsp + 0xa8]
	je	.label_362
	or	dl, al
	jne	.label_362
	test	r10b, 1
	jne	.label_460
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_362
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x60]
	je	.label_464
.label_362:
	mov	rdx, qword ptr [rsp + 0x40]
	test	rdx, rdx
	je	.label_467
	test	cl, cl
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_371
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_371
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_396:
	cmp	r14, r11
	jae	.label_433
	mov	byte ptr [rcx + r14], al
.label_433:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_396
	jmp	.label_371
.label_386:
	mov	qword ptr [rsp + 0x20], rbp
.label_382:
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
.label_408:
	mov	r14, rax
.label_414:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_460:
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
	jmp	.label_408
.label_467:
	mov	rcx, qword ptr [rsp + 8]
.label_371:
	cmp	r14, r11
	jae	.label_414
	mov	byte ptr [rcx + r14], 0
	jmp	.label_414
.label_466:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x406aec
	.globl sub_406aec
	.type sub_406aec, @function
sub_406aec:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406af0

	.globl adjust_value
	.type adjust_value, @function
adjust_value:
	fld	xword ptr [rsp + 8]
	cmp	edi, 1
	je	.label_473
	fld	xword ptr [word ptr [rip + label_475]]
	fucomip	st(1)
	jbe	.label_473
	fld	dword ptr [dword ptr [rip + label_474]]
	fld	st(1)
	fsub	st(1)
	fnstcw	word ptr [rsp - 0x22]
	movzx	eax, word ptr [rsp - 0x22]
	mov	word ptr [rsp - 0x22], 0xc7f
	fldcw	word ptr [rsp - 0x22]
	mov	word ptr [rsp - 0x22], ax
	fistp	qword ptr [rsp - 0x18]
	fldcw	word ptr [rsp - 0x22]
	fnstcw	word ptr [rsp - 0x24]
	movzx	eax, word ptr [rsp - 0x24]
	mov	word ptr [rsp - 0x24], 0xc7f
	fldcw	word ptr [rsp - 0x24]
	mov	word ptr [rsp - 0x24], ax
	fld	st(1)
	fistp	qword ptr [rsp - 0x20]
	fldcw	word ptr [rsp - 0x24]
	movabs	rax, 0x8000000000000000
	xor	rax, qword ptr [rsp - 0x18]
	fxch	st(1)
	fucomi	st(1)
	fstp	st(1)
	cmovb	rax, qword ptr [rsp - 0x20]
	test	edi, edi
	sete	sil
	mov	qword ptr [rsp - 0x10], rax
	xor	edx, edx
	test	rax, rax
	setns	dl
	fild	qword ptr [rsp - 0x10]
	fadd	dword ptr [dword ptr [+ (rdx * 4) + label_45]]
	fucomip	st(1)
	fstp	st(0)
	setp	dl
	setne	cl
	or	cl, dl
	and	cl, sil
	movzx	ecx, cl
	xor	edx, edx
	add	rcx, rax
	mov	qword ptr [rsp - 8], rcx
	setns	dl
	fild	qword ptr [rsp - 8]
	fadd	dword ptr [dword ptr [+ (rdx * 4) + label_45]]
.label_473:
	ret	
	.section	.text
	.align	16
	#Procedure 0x406bbd
	.globl sub_406bbd
	.type sub_406bbd, @function
sub_406bbd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406bc0

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_476
	test	rdx, rdx
	je	.label_476
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_476:
	push	rax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x406beb
	.globl sub_406beb
	.type sub_406beb, @function
sub_406beb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406bf0

	.globl randread
	.type randread, @function
randread:
	cmp	qword ptr [rdi], 0
	je	.label_477
	jmp	readsource
.label_477:
	add	rdi, 0x18
	jmp	readisaac
	.section	.text
	.align	16
	#Procedure 0x406c01
	.globl sub_406c01
	.type sub_406c01, @function
sub_406c01:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406c10

	.globl readsource
	.type readsource, @function
readsource:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r13, rdx
	mov	r14, rsi
	mov	r15, rdi
	mov	rcx, qword ptr [r15]
	mov	esi, 1
	mov	rdi, r14
	call	fread_unlocked
	mov	rbx, rax
	call	__errno_location
	mov	r12, rax
	jmp	.label_479
	.section	.text
	.align	16
	#Procedure 0x406c3f
	.globl sub_406c3f
	.type sub_406c3f, @function
sub_406c3f:

	nop	
.label_478:
	add	r14, rbx
	mov	ebx, dword ptr [r12]
	mov	rdi, qword ptr [r15]
	call	ferror_unlocked
	test	eax, eax
	cmove	ebx, eax
	mov	dword ptr [r12], ebx
	mov	rdi, qword ptr [r15 + 0x10]
	call	qword ptr [r15 + 8]
	mov	rcx, qword ptr [r15]
	mov	esi, 1
	mov	rdi, r14
	mov	rdx, r13
	call	fread_unlocked
	mov	rbx, rax
.label_479:
	sub	r13, rbx
	jne	.label_478
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x406c85
	.globl sub_406c85
	.type sub_406c85, @function
sub_406c85:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406c90
	.globl randread_set_handler_arg
	.type randread_set_handler_arg, @function
randread_set_handler_arg:

	mov	qword ptr [rdi + 0x10], rsi
	ret	
	.section	.text
	.align	16
	#Procedure 0x406c95
	.globl sub_406c95
	.type sub_406c95, @function
sub_406c95:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406ca0

	.globl dorewind
	.type dorewind, @function
dorewind:
	push	rbx
	sub	rsp, 0x10
	mov	ebx, edi
	mov	eax, 0xf000
	and	eax, dword ptr [rsi + 0x18]
	cmp	eax, 0x2000
	jne	.label_480
	mov	word ptr [rsp + 8], 6
	mov	dword ptr [rsp + 0xc], 1
	lea	rdx, [rsp + 8]
	mov	esi, 0x40086d01
	xor	eax, eax
	mov	edi, ebx
	call	ioctl
	test	eax, eax
	mov	al, 1
	je	.label_481
.label_480:
	xor	esi, esi
	xor	edx, edx
	mov	edi, ebx
	call	lseek
	mov	rbx, rax
	test	rbx, rbx
	jle	.label_482
	call	__errno_location
	mov	dword ptr [rax], 0x16
.label_482:
	test	rbx, rbx
	sete	al
.label_481:
	add	rsp, 0x10
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x406d08
	.globl sub_406d08
	.type sub_406d08, @function
sub_406d08:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406d10

	.globl randint_new
	.type randint_new, @function
randint_new:
	push	rbx
	mov	rbx, rdi
	mov	edi, 0x18
	call	xmalloc
	mov	qword ptr [rax], rbx
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + 8], xmm0
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x406d2a
	.globl sub_406d2a
	.type sub_406d2a, @function
sub_406d2a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406d30

	.globl randint_all_new
	.type randint_all_new, @function
randint_all_new:
	push	rax
	call	randread_new
	test	rax, rax
	je	.label_483
	mov	rdi, rax
	pop	rax
	jmp	randint_new
.label_483:
	xor	eax, eax
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x406d45
	.globl sub_406d45
	.type sub_406d45, @function
sub_406d45:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406d50
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_484
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_484:
	push	rax
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x406d76
	.globl sub_406d76
	.type sub_406d76, @function
sub_406d76:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406d80

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_485
	test	rbx, rbx
	jne	.label_485
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_485:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_487
	test	rax, rax
	je	.label_486
.label_487:
	pop	rbx
	ret	
.label_486:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x406db0

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
	jns	.label_488
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
.label_488:
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
	#Procedure 0x406e18
	.globl sub_406e18
	.type sub_406e18, @function
sub_406e18:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406e20

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
	mov	rcx,  qword ptr [word ptr [rip + label_346]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_347]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_348]]
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
	#Procedure 0x406e8d
	.globl sub_406e8d
	.type sub_406e8d, @function
sub_406e8d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406e90

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	mov	eax, esi
	mov	rsi, -1
	mov	edx, eax
	jmp	quotearg_char_mem
	.section	.text
	.align	16
	#Procedure 0x406e9d
	.globl sub_406e9d
	.type sub_406e9d, @function
sub_406e9d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406ea0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	.section	.text
	.align	16
	#Procedure 0x406ea7
	.globl sub_406ea7
	.type sub_406ea7, @function
sub_406ea7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406eb0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	jmp	x2nrealloc
	.section	.text
	.align	16
	#Procedure 0x406eba
	.globl sub_406eba
	.type sub_406eba, @function
sub_406eba:

	nop	word ptr [rax + rax]
.label_491:
	mov	rax, rbx
	jmp	.label_489
	.section	.text
	.align	16
	#Procedure 0x406ec5

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
	je	.label_489
	mov	rdi, rbx
	call	fileno
	cmp	eax, 2
	ja	.label_491
	mov	edi, eax
	call	dup_safer
	mov	ebp, eax
	test	ebp, ebp
	js	.label_492
	mov	rdi, rbx
	call	rpl_fclose
	test	eax, eax
	jne	.label_493
	mov	edi, ebp
	mov	rsi, r14
	call	fdopen
	test	rax, rax
	jne	.label_489
.label_493:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	jmp	.label_490
.label_492:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	rdi, rbx
	call	rpl_fclose
	mov	dword ptr [rbp], r14d
.label_490:
	xor	eax, eax
.label_489:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406f46
	.globl sub_406f46
	.type sub_406f46, @function
sub_406f46:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406f50

	.globl dup_safer
	.type dup_safer, @function
dup_safer:
	xor	esi, esi
	mov	edx, 3
	xor	eax, eax
	jmp	rpl_fcntl
	.section	.text
	.align	16
	#Procedure 0x406f5e
	.globl sub_406f5e
	.type sub_406f5e, @function
sub_406f5e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x406f60

	.globl shift_left
	.type shift_left, @function
shift_left:
	shl	rdi, 8
	mov	rax, rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x406f68
	.globl sub_406f68
	.type sub_406f68, @function
sub_406f68:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406f70

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x406f7a
	.globl sub_406f7a
	.type sub_406f7a, @function
sub_406f7a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406f80
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
	#Procedure 0x406f90

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	.section	.text
	.align	16
	#Procedure 0x406f99
	.globl sub_406f99
	.type sub_406f99, @function
sub_406f99:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406fa0

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quote_n
	.section	.text
	.align	16
	#Procedure 0x406faa
	.globl sub_406faa
	.type sub_406faa, @function
sub_406faa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406fb0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_495:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_494
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_496
	.section	.text
	.align	16
	#Procedure 0x406fd9
	.globl sub_406fd9
	.type sub_406fd9, @function
sub_406fd9:

	nop	dword ptr [rax]
.label_494:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_496:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_497
	inc	r9
	cmp	r9, 0xa
	jb	.label_495
.label_497:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	16
	#Procedure 0x40700f
	.globl sub_40700f
	.type sub_40700f, @function
sub_40700f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x407010

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
	je	.label_498
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_499:
	mov	rdi, r15
	mov	esi, r14d
	call	bkm_scale
	or	ebp, eax
	dec	ebx
	jne	.label_499
.label_498:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40704e
	.globl sub_40704e
	.type sub_40704e, @function
sub_40704e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x407050

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_500
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x407072
	.globl sub_407072
	.type sub_407072, @function
sub_407072:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407080

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
	jne	.label_508
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
	je	.label_505
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_506
	mov	eax, OFFSET FLAT:label_507
	jmp	.label_504
.label_501:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:label_432
	mov	eax, OFFSET FLAT:label_365
.label_504:
	cmove	rax, rcx
.label_508:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4070ff
	.globl sub_4070ff
	.type sub_4070ff, @function
sub_4070ff:

	nop	dword ptr [rax]
.label_505:
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
	je	.label_501
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_502
	mov	eax, OFFSET FLAT:label_503
	jmp	.label_504
	.section	.text
	.align	16
	#Procedure 0x407140

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_509
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_509
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_509:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	16
	#Procedure 0x407166
	.globl sub_407166
	.type sub_407166, @function
sub_407166:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407170
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_510
	movabs	rax, 0x7e0000007e03ff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_510:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x40718e
	.globl sub_40718e
	.type sub_40718e, @function
sub_40718e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x407190
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	add	edi, -0x30
	cmp	edi, 0xa
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x40719a
	.globl sub_40719a
	.type sub_40719a, @function
sub_40719a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4071a0

	.globl humblock
	.type humblock, @function
humblock:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rdx
	mov	r15, rsi
	test	rdi, rdi
	jne	.label_519
	mov	edi, OFFSET FLAT:label_521
	call	getenv
	mov	rdi, rax
	test	rdi, rdi
	jne	.label_519
	mov	edi, OFFSET FLAT:label_512
	call	getenv
	mov	rdi, rax
	test	rdi, rdi
	je	.label_516
.label_519:
	xor	ebp, ebp
	cmp	byte ptr [rdi], 0x27
	lea	rbx, [rdi + 1]
	sete	bpl
	cmovne	rbx, rdi
	shl	ebp, 2
	mov	esi, OFFSET FLAT:block_size_args
	mov	edx, OFFSET FLAT:block_size_opts
	mov	ecx, 4
	mov	rdi, rbx
	call	argmatch
	test	eax, eax
	js	.label_513
	cdqe	
	or	ebp,  dword ptr [dword ptr [+ (rax * 4) + block_size_opts]]
	mov	qword ptr [r15], 1
.label_514:
	mov	dword ptr [r14], ebp
	xor	eax, eax
	jmp	.label_517
.label_513:
	lea	rsi, [rsp]
	xor	edx, edx
	mov	r8d, OFFSET FLAT:label_511
	mov	rdi, rbx
	mov	rcx, r15
	call	xstrtoumax
	test	eax, eax
	je	.label_522
	mov	dword ptr [r14], 0
.label_517:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_522:
	mov	al, byte ptr [rbx]
	add	al, 0xd0
	cmp	al, 0xa
	jb	.label_514
	mov	rax, qword ptr [rsp]
	nop	dword ptr [rax]
.label_520:
	cmp	rax, rbx
	je	.label_518
	movzx	ecx, byte ptr [rbx + 1]
	inc	rbx
	add	cl, 0xd0
	cmp	cl, 0xa
	jae	.label_520
	jmp	.label_514
.label_516:
	call	default_block_size
	mov	qword ptr [r15], rax
	xor	ebp, ebp
	jmp	.label_514
.label_518:
	mov	ecx, ebp
	or	ecx, 0x80
	or	ebp, 0x180
	cmp	byte ptr [rax - 1], 0x42
	cmove	ecx, ebp
	jne	.label_515
	cmp	byte ptr [rax - 2], 0x69
	jne	.label_514
.label_515:
	or	ecx, 0x20
	mov	ebp, ecx
	jmp	.label_514
	.section	.text
	.align	16
	#Procedure 0x4072ad
	.globl sub_4072ad
	.type sub_4072ad, @function
sub_4072ad:

	nop	dword ptr [rax]
.label_527:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:label_523
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4072d0
	.globl sub_4072d0
	.type sub_4072d0, @function
sub_4072d0:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4072df

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_527
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_525
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_528
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_525
	mov	esi, OFFSET FLAT:label_526
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_524
	add	r14, 3
	mov	qword ptr [word ptr [rip + __progname]],  r14
.label_524:
	mov	rbx, r14
.label_525:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x407360

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_529
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_533
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_530
.label_531:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x407392
	.globl sub_407392
	.type sub_407392, @function
sub_407392:

	nop	dword ptr [rax]
.label_529:
	test	rcx, rcx
	jne	.label_532
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	xor	ecx, ecx
	cmp	r8, 0x80
	seta	cl
	add	rcx, rax
.label_532:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_531
.label_530:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
.label_533:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4073e0

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	mov	edi, 1
	jmp	usage
	.section	.text
	.align	16
	#Procedure 0x4073ea
	.globl sub_4073ea
	.type sub_4073ea, @function
sub_4073ea:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4073f0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_47
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_534
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x407415
	.globl sub_407415
	.type sub_407415, @function
sub_407415:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407420

	.globl renameatu
	.type renameatu, @function
renameatu:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x128
	mov	r13d, r8d
	mov	r12, rcx
	mov	r14d, edx
	mov	rbp, rsi
	mov	r15d, edi
	mov	edi, 0x13c
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, rbp
	mov	ecx, r14d
	mov	r8, r12
	mov	r9d, r13d
	call	syscall
	mov	rbx, rax
	call	__errno_location
	test	ebx, ebx
	jns	.label_539
	mov	ecx, dword ptr [rax]
	cmp	ecx, 0x16
	je	.label_547
	cmp	ecx, 0x5f
	je	.label_547
	cmp	ecx, 0x26
	jne	.label_539
.label_547:
	test	r13d, r13d
	je	.label_535
	cmp	r13d, 1
	jne	.label_537
	mov	rbx, rax
	lea	rdx, [rsp + 0x98]
	mov	edi, r14d
	mov	rsi, r12
	call	lstatat
	test	eax, eax
	je	.label_544
	mov	rax, rbx
	mov	ecx, dword ptr [rax]
	mov	r13b, 1
	cmp	ecx, 2
	je	.label_545
	mov	ebx, 0xffffffff
	cmp	ecx, 0x4b
	jne	.label_539
.label_544:
	mov	edi, 0x11
	jmp	.label_536
.label_535:
	xor	r13d, r13d
.label_545:
	mov	qword ptr [rsp], rax
	mov	rdi, rbp
	call	strlen
	mov	rbx, rax
	mov	rdi, r12
	call	strlen
	test	rbx, rbx
	je	.label_538
	test	rax, rax
	je	.label_538
	cmp	byte ptr [rbp + rbx - 1], 0x2f
	je	.label_548
	cmp	byte ptr [r12 + rax - 1], 0x2f
	jne	.label_538
.label_548:
	lea	rdx, [rsp + 8]
	mov	edi, r15d
	mov	rsi, rbp
	call	lstatat
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_539
	test	r13b, r13b
	je	.label_546
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x20]
	cmp	eax, 0x4000
	je	.label_538
	mov	edi, 2
	jmp	.label_541
.label_537:
	mov	edi, 0x5f
.label_536:
	call	errno_fail
	mov	ebx, 0xffffffff
	jmp	.label_539
.label_546:
	lea	rdx, [rsp + 0x98]
	mov	edi, r14d
	mov	rsi, r12
	call	lstatat
	test	eax, eax
	je	.label_542
	mov	rax, qword ptr [rsp]
	cmp	dword ptr [rax], 2
	jne	.label_539
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x20]
	cmp	eax, 0x4000
	je	.label_538
	jmp	.label_539
.label_542:
	mov	eax, 0xf000
	mov	ecx, dword ptr [rsp + 0xb0]
	and	ecx, eax
	cmp	ecx, 0x4000
	jne	.label_540
	and	eax, dword ptr [rsp + 0x20]
	cmp	eax, 0x4000
	jne	.label_543
.label_538:
	mov	edi, r15d
	mov	rsi, rbp
	mov	edx, r14d
	mov	rcx, r12
	call	renameat
	mov	ebx, eax
.label_539:
	mov	eax, ebx
	add	rsp, 0x128
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_540:
	mov	edi, 0x14
	jmp	.label_541
.label_543:
	mov	edi, 0x15
.label_541:
	call	errno_fail
	jmp	.label_539
	.section	.text
	.align	16
	#Procedure 0x4075e7
	.globl sub_4075e7
	.type sub_4075e7, @function
sub_4075e7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4075f0

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
	je	.label_559
	mov	edx, OFFSET FLAT:label_554
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_561
.label_559:
	mov	edx, OFFSET FLAT:label_562
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_561:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_566
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
	mov	esi, OFFSET FLAT:label_563
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_550
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_551]]
.label_777:
	add	rsp, 8
	jmp	.label_549
.label_550:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_558
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
	jmp	.label_549
.label_778:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_564
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
.label_779:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_557
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
.label_780:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_555
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
.label_781:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_552
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
	jmp	.label_549
.label_782:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_567
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
	jmp	.label_549
.label_783:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_553
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
	jmp	.label_549
.label_784:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_556
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
	jmp	.label_549
.label_786:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_560
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
	jmp	.label_549
.label_785:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_565
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
.label_549:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x407948
	.globl sub_407948
	.type sub_407948, @function
sub_407948:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407950
	.globl human_options
	.type human_options, @function
human_options:

	push	rbx
	mov	rbx, rdx
	mov	rax, rsi
	mov	rsi, rbx
	mov	rdx, rax
	call	humblock
	cmp	qword ptr [rbx], 0
	jne	.label_568
	call	default_block_size
	mov	qword ptr [rbx], rax
	mov	eax, 4
.label_568:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x407977
	.globl sub_407977
	.type sub_407977, @function
sub_407977:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407980
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x40798a
	.globl sub_40798a
	.type sub_40798a, @function
sub_40798a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407990

	.globl dopass
	.type dopass, @function
dopass:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x838
	mov	qword ptr [rsp + 0x78], r9
	mov	ebx, r8d
	mov	qword ptr [rsp + 0x18], rdx
	mov	r14, rsi
	mov	r15d, edi
	mov	qword ptr [rsp + 0x70], rcx
	mov	r12, qword ptr [rcx]
	call	getpagesize
	movsxd	rbp, eax
	mov	dword ptr [rsp + 0x24], ebx
	mov	edi, ebx
	call	periodic_pattern
	test	al, al
	mov	eax, 0xf000
	mov	r13d, 0x10000
	cmovne	r13, rax
	mov	rax, r13
	or	rax, 2
	movabs	rcx, 0xaaaaaaaaaaaaaaab
	mul	rcx
	shr	rdx, 1
	lea	rbx, [rdx + rdx*2]
	lea	rdi, [rbp + rbx - 1]
	call	xmalloc
	mov	qword ptr [rsp + 0x58], rax
	mov	rdi, rax
	mov	rsi, rbp
	mov	ebp, r15d
	call	ptr_align
	mov	qword ptr [rsp + 0x48], rax
	test	r12, r12
	setg	al
	mov	r15, r12
	cmp	r12, r13
	setb	cl
	and	cl, al
	mov	byte ptr [rsp + 6], cl
	jne	.label_590
	mov	esi, 1
	mov	edi, ebp
	call	direct_mode
.label_590:
	mov	edi, ebp
	mov	rsi, r14
	call	dorewind
	test	al, al
	je	.label_579
	mov	qword ptr [rsp + 0x38], r13
	mov	r13, qword ptr [rsp + 0x878]
	mov	r12d, dword ptr [rsp + 0x24]
	test	r12d, r12d
	js	.label_580
	mov	r14, r15
	mov	rdi, r14
	call	known
	test	al, al
	mov	rdx, rbx
	cmovne	rdx, r14
	cmp	r14, rbx
	cmovae	rdx, rbx
	mov	edi, r12d
	mov	rbx, qword ptr [rsp + 0x48]
	mov	rsi, rbx
	call	fillpattern
	lea	rsi, [rsp + 0x29]
	mov	rdi, rbx
	call	passname
	jmp	.label_593
.label_579:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_594
	jmp	.label_595
.label_580:
	lea	rsi, [rsp + 0x29]
	xor	edi, edi
	call	passname
	mov	r14, r15
	mov	rbx, qword ptr [rsp + 0x48]
.label_593:
	mov	r15, qword ptr [rsp + 0x870]
	test	r13, r13
	mov	r12, qword ptr [rsp + 0x38]
	je	.label_600
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_605
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	sub	rsp, 8
	lea	r10, [rsp + 0x31]
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, qword ptr [rsp + 0x20]
	mov	r8, r15
	mov	r9, r13
	push	r10
	call	error
	add	rsp, 0x10
	xor	edi, edi
	call	time
	add	rax, 5
.label_600:
	mov	qword ptr [rsp + 0x60], rax
	mov	eax, OFFSET FLAT:label_47
	mov	qword ptr [rsp + 0x30], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x40], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x68], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	r15, qword ptr [rsp + 0x18]
	mov	dword ptr [rsp + 0x20], ebp
	jmp	.label_573
.label_585:
	mov	qword ptr [rsp + 0x30], r13
	mov	r14, qword ptr [rsp + 8]
	nop	dword ptr [rax + rax]
.label_573:
	mov	qword ptr [rsp + 8], r14
	mov	rdi, r14
	call	known
	mov	byte ptr [rsp + 0x50], al
	test	al, al
	mov	r14, r12
	je	.label_584
	mov	rax, qword ptr [rsp + 8]
	sub	rax, qword ptr [rsp + 0x10]
	cmp	rax, r12
	mov	r14, r12
	jae	.label_584
	mov	rcx, qword ptr [rsp + 0x10]
	cmp	qword ptr [rsp + 8], rcx
	jl	.label_589
	test	rax, rax
	mov	r14, rax
	je	.label_589
.label_584:
	mov	eax, dword ptr [rsp + 0x24]
	test	eax, eax
	jns	.label_596
	mov	rdi, qword ptr [rsp + 0x78]
	mov	rsi, rbx
	mov	rdx, r14
	call	randread
.label_596:
	test	r14, r14
	je	.label_599
	mov	al, byte ptr [rsp + 0x50]
	xor	al, 1
	mov	byte ptr [rsp + 7], al
	xor	r13d, r13d
	nop	word ptr cs:[rax + rax]
.label_608:
	lea	rsi, [rbx + r13]
	mov	rdx, r14
	sub	rdx, r13
	mov	edi, ebp
	call	write
	mov	r12, rax
	test	r12, r12
	jg	.label_609
	cmp	byte ptr [rsp + 0x50], 0
	jne	.label_611
	test	r12, r12
	je	.label_570
	call	__errno_location
	cmp	dword ptr [rax], 0x1c
	je	.label_570
.label_611:
	call	__errno_location
	mov	r15, rax
	mov	ebp, dword ptr [r15]
	test	byte ptr [rsp + 6], 1
	jne	.label_574
	cmp	dword ptr [r15], 0x16
	jne	.label_574
	xor	esi, esi
	mov	ebp, dword ptr [rsp + 0x20]
	mov	edi, ebp
	call	direct_mode
	mov	byte ptr [rsp + 6], 1
	xor	r12d, r12d
	jmp	.label_583
	.section	.text
	.align	16
	#Procedure 0x407c4d
	.globl sub_407c4d
	.type sub_407c4d, @function
sub_407c4d:

	nop	dword ptr [rax]
.label_574:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_581
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	mov	rax, qword ptr [rsp + 0x10]
	lea	rdi, [r13 + rax]
	lea	rsi, [rsp + 0x80]
	call	umaxtostr
	mov	rbx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, r12
	mov	rcx, qword ptr [rsp + 0x18]
	mov	r8, rbx
	call	error
	cmp	ebp, 5
	setne	al
	or	al, byte ptr [rsp + 7]
	jne	.label_591
	mov	r12, r13
	or	r12, 0x1ff
	cmp	r12, r14
	jae	.label_591
	mov	rax, qword ptr [rsp + 0x10]
	lea	rsi, [r12 + rax + 1]
	xor	edx, edx
	mov	ebp, dword ptr [rsp + 0x20]
	mov	edi, ebp
	call	lseek
	cmp	rax, -1
	je	.label_602
	inc	r12
	sub	r12, r13
	mov	al, 1
	mov	qword ptr [rsp + 0x40], rax
.label_583:
	mov	rbx, qword ptr [rsp + 0x48]
.label_609:
	add	r13, r12
	cmp	r14, r13
	ja	.label_608
.label_587:
	mov	r15, qword ptr [rsp + 0x18]
	mov	r14, qword ptr [rsp + 8]
.label_575:
	mov	r12, qword ptr [rsp + 0x38]
	jmp	.label_569
	.section	.text
	.align	16
	#Procedure 0x407d07
	.globl sub_407d07
	.type sub_407d07, @function
sub_407d07:

	nop	word ptr [rax + rax]
.label_599:
	xor	r13d, r13d
	mov	r14, qword ptr [rsp + 8]
.label_569:
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rsp + 0x10]
	sub	rax, rcx
	cmp	rax, r13
	jb	.label_572
	add	rcx, r13
	mov	qword ptr [rsp + 0x10], rcx
	mov	r13, qword ptr [rsp + 0x878]
	test	r13, r13
	je	.label_573
	cmp	qword ptr [rsp + 0x10], r14
	jne	.label_601
	mov	rax, qword ptr [rsp + 0x30]
	cmp	byte ptr [rax], 0
	jne	.label_582
.label_601:
	xor	edi, edi
	call	time
	mov	rcx, rax
	mov	qword ptr [rsp + 0x68], rcx
	cmp	qword ptr [rsp + 0x60], rax
	jg	.label_573
.label_582:
	mov	edx, 0x1b2
	mov	ecx, 1
	mov	r8d, 1
	mov	rax, qword ptr [rsp + 0x10]
	mov	rdi, rax
	lea	rsi, [rsp + 0x80]
	call	human_readable
	mov	rcx, r14
	mov	r14, rax
	mov	qword ptr [rsp + 8], rcx
	cmp	qword ptr [rsp + 0x10], rcx
	je	.label_592
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, r14
	call	strcmp
	test	eax, eax
	je	.label_598
.label_592:
	mov	r15, qword ptr [rsp + 8]
	mov	rdi, r15
	call	known
	test	al, al
	je	.label_603
	test	r15, r15
	mov	eax, 0x64
	mov	rbx, qword ptr [rsp + 0x10]
	je	.label_604
	movabs	rax, 0x28f5c28f5c28f5c
	cmp	rbx, rax
	ja	.label_606
	imul	rax, rbx, 0x64
	xor	edx, edx
	mov	r15, qword ptr [rsp + 8]
	div	r15
	jmp	.label_604
.label_570:
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rsp + 0x10]
	sub	rax, rcx
	cmp	r13, rax
	ja	.label_587
	lea	r14, [r13 + rcx]
	mov	rax, qword ptr [rsp + 0x70]
	mov	qword ptr [rax], r14
	mov	r15, qword ptr [rsp + 0x18]
	jmp	.label_575
.label_603:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_577
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	mov	eax, 0
	mov	rdx, rcx
	mov	r15, qword ptr [rsp + 0x18]
	mov	rcx, r15
	mov	r8, qword ptr [rsp + 0x870]
	mov	r9, r13
	push	r14
	lea	rbx, [rsp + 0x31]
	push	rbx
	call	error
	add	rsp, 0x10
	jmp	.label_588
.label_598:
	mov	r14, qword ptr [rsp + 8]
	jmp	.label_573
.label_606:
	mov	r15, qword ptr [rsp + 8]
	mov	rax, r15
	movabs	rcx, 0xa3d70a3d70a3d70b
	imul	rcx
	mov	rcx, rdx
	add	rcx, r15
	mov	rax, rcx
	shr	rax, 0x3f
	sar	rcx, 6
	add	rcx, rax
	xor	edx, edx
	mov	rax, rbx
	div	rcx
.label_604:
	mov	qword ptr [rsp + 0x50], rax
	mov	edx, 0x1b0
	mov	ecx, 1
	mov	r8d, 1
	mov	rdi, r15
	lea	rsi, [rsp + 0x310]
	call	human_readable
	mov	rbp, rax
	cmp	rbx, r15
	cmove	r14, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_586
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	mov	eax, 0
	mov	rdx, rcx
	mov	r15, qword ptr [rsp + 0x18]
	mov	rcx, r15
	mov	r8, qword ptr [rsp + 0x870]
	mov	r9, r13
	push	qword ptr [rsp + 0x50]
	push	rbp
	push	r14
	lea	rbp, [rsp + 0x41]
	push	rbp
	call	error
	add	rsp, 0x20
	mov	ebp, dword ptr [rsp + 0x20]
.label_588:
	mov	edx, 0x28c
	lea	r13, [rsp + 0x5a0]
	mov	rdi, r13
	mov	rsi, r14
	call	__strcpy_chk
	mov	rax, qword ptr [rsp + 0x68]
	lea	rax, [rax + 5]
	mov	qword ptr [rsp + 0x60], rax
	mov	edi, ebp
	mov	rsi, r15
	call	dosync
	test	eax, eax
	mov	rbx, qword ptr [rsp + 0x48]
	je	.label_585
	call	__errno_location
	mov	cl, 1
	mov	qword ptr [rsp + 0x40], rcx
	cmp	dword ptr [rax], 5
	mov	qword ptr [rsp + 0x30], r13
	mov	r14, qword ptr [rsp + 8]
	je	.label_573
	jmp	.label_591
.label_602:
	mov	ebx, dword ptr [r15]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_597
.label_595:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	mov	rcx, qword ptr [rsp + 0x18]
.label_610:
	call	error
.label_591:
	mov	rdi, qword ptr [rsp + 0x58]
	call	free
.label_576:
	mov	eax, 0xffffffff
.label_578:
	add	rsp, 0x838
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_572:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_607
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, r15
	jmp	.label_610
.label_589:
	mov	edi, ebp
	mov	rsi, r15
	call	dosync
	test	eax, eax
	je	.label_571
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, qword ptr [rsp + 0x58]
	call	free
	mov	rax, qword ptr [rsp + 0x40]
	and	al, 1
	cmp	ebp, 5
	movzx	ecx, al
	mov	eax, 1
	cmovne	eax, ecx
	jne	.label_576
	jmp	.label_578
.label_571:
	mov	rdi, qword ptr [rsp + 0x58]
	call	free
	mov	rax, qword ptr [rsp + 0x40]
	and	al, 1
	movzx	eax, al
	jmp	.label_578
	.section	.text
	.align	16
	#Procedure 0x40805b
	.globl sub_40805b
	.type sub_40805b, @function
sub_40805b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408060

	.globl xdectoumax
	.type xdectoumax, @function
xdectoumax:
	push	rax
	mov	r10, r8
	mov	rax, rcx
	mov	rcx, rdx
	mov	rdx, rsi
	mov	dword ptr [rsp], r9d
	mov	esi, 0xa
	mov	r8, rax
	mov	r9, r10
	call	xnumtoumax
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x408083
	.globl sub_408083
	.type sub_408083, @function
sub_408083:

	nop	word ptr cs:[rax + rax]
.label_612:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x408093
	.globl sub_408093
	.type sub_408093, @function
sub_408093:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40809b

	.globl ignorable_sync_errno
	.type ignorable_sync_errno, @function
ignorable_sync_errno:
	add	edi, -9
	cmp	edi, 0xd
	ja	.label_612
	mov	eax, 0x3001
	mov	ecx, edi
	shr	eax, cl
	and	eax, 1
	ret	
	.section	.text
	.align	16
	#Procedure 0x4080b0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	.section	.text
	.align	16
	#Procedure 0x4080ba
	.globl sub_4080ba
	.type sub_4080ba, @function
sub_4080ba:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4080c0
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
	#Procedure 0x4080d3
	.globl sub_4080d3
	.type sub_4080d3, @function
sub_4080d3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4080e0
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_613
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_613
.label_614:
	ret	
.label_613:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_614
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x408106
	.globl sub_408106
	.type sub_408106, @function
sub_408106:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408110

	.globl errno_fail
	.type errno_fail, @function
errno_fail:
	push	rbx
	mov	ebx, edi
	call	__errno_location
	mov	dword ptr [rax], ebx
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40811c
	.globl sub_40811c
	.type sub_40811c, @function
sub_40811c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408120

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
	je	.label_615
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, rbx
	call	memcpy
	test	rbx, rbx
	jne	.label_616
	mov	byte ptr [r14 + rbx], 0x2e
	mov	ebx, 1
.label_616:
	mov	byte ptr [r14 + rbx], 0
	mov	rax, r14
.label_615:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x408177
	.globl sub_408177
	.type sub_408177, @function
sub_408177:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408180

	.globl genpattern
	.type genpattern, @function
genpattern:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	qword ptr [rsp + 8], rdx
	mov	r12, rdi
	test	rsi, rsi
	je	.label_617
	mov	ebx, OFFSET FLAT:patterns
	xor	r15d, r15d
	mov	rcx, r12
	mov	r13, rsi
	mov	qword ptr [rsp], rsi
	jmp	.label_632
	.section	.text
	.align	16
	#Procedure 0x4081b3
	.globl sub_4081b3
	.type sub_4081b3, @function
sub_4081b3:

	nop	word ptr cs:[rax + rax]
.label_629:
	lea	rdx, [rbp*4]
	mov	r14, rcx
	mov	rdi, r14
	mov	rsi, rbx
	call	memcpy
	mov	rcx, r14
	lea	rbx, [rbx + rbp*4]
	lea	rcx, [rcx + rbp*4]
	mov	rsi, qword ptr [rsp]
.label_632:
	mov	r14, r13
	jmp	.label_628
	.section	.text
	.align	16
	#Procedure 0x4081ea
	.globl sub_4081ea
	.type sub_4081ea, @function
sub_4081ea:

	nop	word ptr [rax + rax]
.label_624:
	add	r15, rbp
	mov	r14, rax
.label_628:
	mov	rax, rbx
	nop	dword ptr [rax]
.label_618:
	mov	rbx, rax
	movsxd	rbp, dword ptr [rbx]
	test	rbp, rbp
	mov	eax, OFFSET FLAT:patterns
	je	.label_618
	add	rbx, 4
	test	ebp, ebp
	jns	.label_622
	neg	rbp
	mov	rax, r14
	sub	rax, rbp
	ja	.label_624
	jmp	.label_627
	.section	.text
	.align	16
	#Procedure 0x408225
	.globl sub_408225
	.type sub_408225, @function
sub_408225:

	nop	word ptr cs:[rax + rax]
.label_622:
	mov	r13, r14
	sub	r13, rbp
	jae	.label_629
	cmp	r14, 2
	jb	.label_619
	lea	rax, [r14 + r14*2]
	cmp	rax, rbp
	jb	.label_619
	mov	rsi, qword ptr [rsp]
	nop	word ptr cs:[rax + rax]
.label_621:
	cmp	rbp, r14
	je	.label_626
	mov	r13, rcx
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, rbp
	call	randint_choose
	mov	rcx, r13
	mov	rsi, qword ptr [rsp]
	cmp	rax, r14
	jae	.label_630
.label_626:
	mov	eax, dword ptr [rbx]
	mov	dword ptr [rcx], eax
	add	rcx, 4
	dec	r14
.label_630:
	add	rbx, 4
	dec	rbp
	test	r14, r14
	jne	.label_621
	jmp	.label_623
.label_627:
	add	r15, r14
.label_623:
	test	rsi, rsi
	je	.label_617
	mov	rbx, rsi
	sub	rbx, r15
	dec	r15
	lea	rax, [rsi - 1]
	mov	qword ptr [rsp + 0x10], rax
	xor	ebp, ebp
	mov	r13, r15
	xor	r14d, r14d
	nop	dword ptr [rax]
.label_620:
	cmp	r13, r15
	jbe	.label_625
	lea	rsi, [rbp + rbx]
	mov	rdi, qword ptr [rsp + 8]
	call	randint_choose
	mov	rsi, qword ptr [rsp]
	add	rax, r14
	mov	ecx, dword ptr [r12 + r14*4]
	mov	edx, dword ptr [r12 + rax*4]
	mov	dword ptr [r12 + r14*4], edx
	mov	dword ptr [r12 + rax*4], ecx
	jmp	.label_631
	.section	.text
	.align	16
	#Procedure 0x4082ed
	.globl sub_4082ed
	.type sub_4082ed, @function
sub_4082ed:

	nop	dword ptr [rax]
.label_625:
	add	r13, qword ptr [rsp + 0x10]
	mov	eax, dword ptr [r12 + r14*4]
	mov	dword ptr [r12 + rbx*4], eax
	inc	rbx
	mov	dword ptr [r12 + r14*4], 0xffffffff
.label_631:
	sub	r13, r15
	inc	r14
	dec	rbp
	cmp	rsi, r14
	jne	.label_620
.label_617:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_619:
	add	r15, r14
	mov	rsi, qword ptr [rsp]
	jmp	.label_623
	.section	.text
	.align	16
	#Procedure 0x408331
	.globl sub_408331
	.type sub_408331, @function
sub_408331:

	nop	word ptr cs:[rax + rax]
.label_635:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_633
.label_634:
	mov	eax, 1
	test	bpl, bpl
	je	.label_633
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
.label_633:
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
	#Procedure 0x408388
	.globl sub_408388
	.type sub_408388, @function
sub_408388:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40838b

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
	je	.label_635
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_634
	jmp	.label_633
.label_643:
	xor	eax, eax
.label_642:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_641:
	mov	edi, OFFSET FLAT:label_637
	mov	esi, OFFSET FLAT:label_638
	mov	edx, 0x40c
	mov	ecx, OFFSET FLAT:label_639
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x4083e3

	.globl incname
	.type incname, @function
incname:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	nop	word ptr [rax + rax]
.label_636:
	test	rbx, rbx
	je	.label_643
	movsx	esi, byte ptr [r14 + rbx - 1]
	mov	edi, OFFSET FLAT:nameset
	mov	edx, 0x41
	call	memchr
	test	rax, rax
	je	.label_641
	lea	rcx, [rbx - 1]
	movzx	eax, byte ptr [rax + 1]
	test	al, al
	mov	dl, 0x30
	je	.label_640
	mov	edx, eax
.label_640:
	mov	byte ptr [r14 + rbx - 1], dl
	mov	al, 1
	mov	rbx, rcx
	je	.label_636
	jmp	.label_642
	.section	.text
	.align	16
	#Procedure 0x408430

	.globl fillpattern
	.type fillpattern, @function
fillpattern:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r14, rdx
	mov	rbp, rsi
	mov	ecx, edi
	and	ecx, 0xfff
	mov	eax, ecx
	shl	eax, 0xc
	or	eax, ecx
	mov	ecx, edi
	shr	ecx, 4
	mov	byte ptr [rbp], cl
	mov	byte ptr [rbp + 1], ah
	mov	r12d, edi
	mov	byte ptr [rbp + 2], dil
	mov	ebx, 3
	cmp	r14, 6
	jb	.label_644
	mov	r15, r14
	shr	r15, 1
	mov	ebx, 3
	nop	word ptr cs:[rax + rax]
.label_645:
	lea	rdi, [rbp + rbx]
	mov	rsi, rbp
	mov	rdx, rbx
	call	memcpy
	add	rbx, rbx
	cmp	rbx, r15
	jbe	.label_645
.label_644:
	cmp	rbx, r14
	jae	.label_646
	lea	rdi, [rbp + rbx]
	mov	rdx, r14
	sub	rdx, rbx
	mov	rsi, rbp
	call	memcpy
.label_646:
	mov	eax, r12d
	test	ah, 0x10
	je	.label_647
	test	r14, r14
	je	.label_647
	xor	eax, eax
	nop	
.label_648:
	xor	byte ptr [rbp + rax], 0x80
	add	rax, 0x200
	cmp	rax, r14
	jb	.label_648
.label_647:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4084d9
	.globl sub_4084d9
	.type sub_4084d9, @function
sub_4084d9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4084e0
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	add	edi, -0x20
	cmp	edi, 0x5f
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x4084ea
	.globl sub_4084ea
	.type sub_4084ea, @function
sub_4084ea:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4084f0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	.section	.text
	.align	16
	#Procedure 0x4084f8
	.globl sub_4084f8
	.type sub_4084f8, @function
sub_4084f8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408500
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
	#Procedure 0x40850f
	.globl sub_40850f
	.type sub_40850f, @function
sub_40850f:

	nop	
.label_651:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_649
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_649:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408544
	.globl sub_408544
	.type sub_408544, @function
sub_408544:

	nop	
	.section	.text
	.align	16
	#Procedure 0x408546

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
	jne	.label_650
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_650
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_651
.label_650:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
	.section	.text
	.align	16
	#Procedure 0x408580

	.globl randint_free
	.type randint_free, @function
randint_free:
	push	rbx
	mov	rbx, rdi
	mov	esi, 0x18
	call	explicit_bzero
	mov	rdi, rbx
	pop	rbx
	jmp	free
	.section	.text
	.align	16
	#Procedure 0x408597
	.globl sub_408597
	.type sub_408597, @function
sub_408597:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4085a0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_652
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_653
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_655
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_273
	mov	ecx, OFFSET FLAT:label_274
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_654
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x408614
	.globl sub_408614
	.type sub_408614, @function
sub_408614:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408620

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_657
	cmp	byte ptr [rax], 0x43
	jne	.label_659
	cmp	byte ptr [rax + 1], 0
	je	.label_656
.label_659:
	mov	esi, OFFSET FLAT:label_658
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_657
.label_656:
	xor	ebx, ebx
.label_657:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x408651
	.globl sub_408651
	.type sub_408651, @function
sub_408651:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4086c5
	.globl sub_4086c5
	.type sub_4086c5, @function
sub_4086c5:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4086d2
	.globl sub_4086d2
	.type sub_4086d2, @function
sub_4086d2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4086f6
	.globl sub_4086f6
	.type sub_4086f6, @function
sub_4086f6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408709
	.globl sub_408709
	.type sub_408709, @function
sub_408709:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408710

	.globl fstat
	.type fstat, @function
fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat
	.section	.text
	.align	16
	#Procedure 0x40871f
	.globl sub_40871f
	.type sub_40871f, @function
sub_40871f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x408720

	.globl fstatat
	.type fstatat, @function
fstatat:
	mov	r8d, ecx
	mov	rcx, rdx
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstatat
