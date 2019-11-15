	.section	.text
	.align	16
	#Procedure 0x401859
	.globl sub_401859
	.type sub_401859, @function
sub_401859:

	hlt	
	.section	.text
	.align	16
	#Procedure 0x40185a
	.globl sub_40185a
	.type sub_40185a, @function
sub_40185a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401892
	.globl sub_401892
	.type sub_401892, @function
sub_401892:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4018da
	.globl sub_4018da
	.type sub_4018da, @function
sub_4018da:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4018fc
	.globl sub_4018fc
	.type sub_4018fc, @function
sub_4018fc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40190d
	.globl sub_40190d
	.type sub_40190d, @function
sub_40190d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401926
	.globl sub_401926
	.type sub_401926, @function
sub_401926:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401930

	.globl xstrtoumax
	.type xstrtoumax, @function
xstrtoumax:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r14, r8
	mov	r12d, edx
	mov	rbp, rsi
	mov	rbx, rdi
	cmp	r12d, 0x25
	jae	.label_15
	mov	qword ptr [rsp + 8], rcx
	call	__errno_location
	mov	r15, rax
	mov	dword ptr [r15], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_9:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_9
	test	rbp, rbp
	lea	rsi, [rsp + 0x20]
	cmovne	rsi, rbp
	mov	r13d, 4
	cmp	al, 0x2d
	je	.label_11
	xor	ebp, ebp
	xor	ecx, ecx
	mov	rdi, rbx
	mov	qword ptr [rsp + 0x18], rsi
	mov	edx, r12d
	call	__strtoul_internal
	mov	r12, rax
	mov	rax, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rax]
	cmp	rcx, rbx
	je	.label_18
	mov	eax, dword ptr [r15]
	test	eax, eax
	je	.label_26
	cmp	eax, 0x22
	jne	.label_11
	mov	ebp, 1
.label_26:
	test	r14, r14
	mov	r15d, ebp
	jne	.label_20
	jmp	.label_12
.label_18:
	test	r14, r14
	je	.label_11
	movsx	esi, byte ptr [rbx]
	test	esi, esi
	je	.label_11
	mov	rdi, r14
	mov	rbx, rcx
	call	strchr
	mov	rcx, rbx
	xor	r15d, r15d
	mov	r12d, 1
	test	rax, rax
	je	.label_11
.label_20:
	movsx	r13d, byte ptr [rcx]
	test	r13d, r13d
	je	.label_12
	mov	qword ptr [rsp + 0x10], rcx
	mov	rdi, r14
	mov	esi, r13d
	call	strchr
	test	rax, rax
	je	.label_19
	mov	ecx, 1
	mov	esi, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_14
	movabs	rdx, 0x814400308945
	bt	rdx, rax
	jae	.label_14
	mov	esi, 0x30
	mov	rdi, r14
	call	strchr
	mov	ecx, 1
	mov	esi, 0x400
	test	rax, rax
	je	.label_14
	mov	rax, qword ptr [rsp + 0x10]
	movsx	eax, byte ptr [rax + 1]
	mov	ecx, 1
	mov	esi, 0x400
	cmp	eax, 0x42
	je	.label_10
	cmp	eax, 0x44
	je	.label_10
	cmp	eax, 0x69
	jne	.label_14
	xor	eax, eax
	mov	rcx, qword ptr [rsp + 0x10]
	cmp	byte ptr [rcx + 2], 0x42
	sete	al
	lea	rcx, [rax + rax + 1]
	mov	esi, 0x400
	jmp	.label_14
.label_10:
	mov	ecx, 2
	mov	esi, 0x3e8
.label_14:
	add	r13d, -0x42
	cmp	r13d, 0x35
	ja	.label_19
	xor	eax, eax
	jmp	qword ptr [(r13 * 8) + label_28]
.label_1004:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, r12
	sbb	r8b, r8b
	mov	rbx, r12
	imul	rbx, rsi
	cmp	rax, r12
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	bl, bl
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, rdi
	or	dl, r8b
	jmp	.label_29
.label_19:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], r12
	or	r15d, 2
	jmp	.label_17
.label_1005:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	imul	rsi, r12
	cmp	rax, r12
	cmovb	rsi, rdi
	sbb	eax, eax
	jmp	.label_21
.label_1006:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, r12
	sbb	r8b, r8b
	mov	rbx, r12
	imul	rbx, rsi
	cmp	rax, r12
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	imul	rsi, rbx
	cmp	rax, rbx
	cmovb	rsi, rdi
	or	dl, r8b
	jmp	.label_13
.label_1008:
	mov	r9, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, r12
	sbb	r8b, r8b
	mov	rbx, r12
	imul	rbx, rsi
	cmp	rax, r12
	cmovb	rbx, r9
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, r9
	cmp	rax, rbp
	sbb	r10b, r10b
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r9
	cmp	rax, rdi
	sbb	bl, bl
	imul	rsi, rdi
	cmp	rax, rdi
	cmovb	rsi, r9
	or	dl, r8b
	jmp	.label_30
.label_1002:
	xor	eax, eax
	mov	rdx, r12
	shr	rdx, 0x36
	setne	al
	shl	r12, 0xa
	jmp	.label_27
.label_1003:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, r12
	sbb	r8b, r8b
	mov	rbx, r12
	imul	rbx, rsi
	cmp	rax, r12
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	r10b, r10b
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r11b, r11b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	bpl, bpl
	imul	rsi, rbx
	cmp	rax, rbx
	cmovb	rsi, rdi
	or	dl, r8b
	or	dl, r9b
	or	dl, r10b
	or	dl, r11b
	or	dl, bpl
	jmp	.label_13
.label_1007:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, r12
	sbb	r8b, r8b
	mov	rbx, r12
	imul	rbx, rsi
	cmp	rax, r12
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	r10b, r10b
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	bl, bl
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, rdi
	or	dl, r8b
	or	dl, r9b
.label_30:
	or	dl, r10b
.label_29:
	or	dl, bl
.label_13:
	and	dl, 1
	movzx	eax, dl
	mov	r12, rsi
	jmp	.label_16
.label_1009:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, r12
	sbb	r8b, r8b
	mov	rbx, r12
	imul	rbx, rsi
	cmp	rax, r12
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	r10b, r10b
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r11b, r11b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	r14b, r14b
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	mov	r13d, r15d
	sbb	r15b, r15b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	bpl, bpl
	imul	rsi, rbx
	cmp	rax, rbx
	cmovb	rsi, rdi
	or	dl, r8b
	or	dl, r9b
	or	dl, r10b
	or	dl, r11b
	and	dl, 1
	or	dl, r14b
	or	dl, r15b
	mov	r15d, r13d
	or	dl, bpl
	jmp	.label_22
.label_1010:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, r12
	sbb	r8b, r8b
	mov	rbx, r12
	imul	rbx, rsi
	cmp	rax, r12
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	r10b, r10b
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r11b, r11b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	r14b, r14b
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	bl, bl
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, rdi
	or	dl, r8b
	or	dl, r9b
	or	dl, r10b
	and	dl, 1
	or	dl, r11b
	or	dl, r14b
	or	dl, bl
.label_22:
	movzx	eax, dl
.label_21:
	and	eax, 1
	mov	r12, rsi
	jmp	.label_16
.label_1011:
	xor	eax, eax
	mov	rdx, r12
	shr	rdx, 0x37
	setne	al
	shl	r12, 9
.label_27:
	cmp	rdx, 1
	sbb	rdx, rdx
	not	rdx
	or	r12, rdx
	jmp	.label_16
.label_1012:
	lea	rax, [r12 + r12]
	test	r12, r12
	mov	rdx, -1
	cmovns	rdx, rax
	shr	r12, 0x3f
	mov	eax, r12d
	mov	r12, rdx
.label_16:
	or	eax, r15d
	mov	rdi, qword ptr [rsp + 0x10]
	lea	rdx, [rdi + rcx]
	mov	rsi, qword ptr [rsp + 0x18]
	mov	qword ptr [rsi], rdx
	lea	r15d, [rax + 2]
	cmp	byte ptr [rdi + rcx], 0
	cmove	r15d, eax
.label_12:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], r12
.label_17:
	mov	r13d, r15d
.label_11:
	mov	eax, r13d
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_15:
	mov	edi, OFFSET FLAT:label_23
	mov	esi, OFFSET FLAT:label_24
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_25
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x401f61
	.globl sub_401f61
	.type sub_401f61, @function
sub_401f61:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401f70
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_31]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_32]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_33]
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
	#Procedure 0x401fc4
	.globl sub_401fc4
	.type sub_401fc4, @function
sub_401fc4:

	nop	word ptr cs:[rax + rax]
.label_34:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x401fd5
	.globl sub_401fd5
	.type sub_401fd5, @function
sub_401fd5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401fdf
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_34
	call	rpl_calloc
	test	rax, rax
	je	.label_34
	pop	rcx
	ret	
.label_35:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402005
	.globl sub_402005
	.type sub_402005, @function
sub_402005:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402010
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_35
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_36
	test	rax, rax
	je	.label_35
.label_36:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x402040

	.globl display_speed
	.type display_speed, @function
display_speed:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r12d, esi
	mov	rbx, rdi
	call	cfgetispeed
	test	eax, eax
	je	.label_55
	mov	rdi, rbx
	call	cfgetispeed
	mov	ebp, eax
	mov	rdi, rbx
	call	cfgetospeed
	cmp	ebp, eax
	jne	.label_57
.label_55:
	mov	eax, OFFSET FLAT:label_52
	mov	ebp, OFFSET FLAT:label_53
	test	r12b, r12b
	cmovne	rbp, rax
	mov	rdi, rbx
	call	cfgetospeed
	mov	ecx, 1
	mov	edx, OFFSET FLAT:label_39
	xor	esi, esi
	nop	word ptr cs:[rax + rax]
.label_51:
	cmp	dword ptr [rdx], eax
	je	.label_47
	cmp	dword ptr [rdx + 0x18], eax
	je	.label_48
	add	rcx, 2
	add	rdx, 0x30
	cmp	rcx, 0x23
	jne	.label_51
	jmp	.label_41
.label_57:
	mov	eax, OFFSET FLAT:label_49
	mov	r14d, OFFSET FLAT:label_50
	test	r12b, r12b
	cmovne	r14, rax
	mov	rdi, rbx
	call	cfgetispeed
	mov	ecx, 1
	mov	edx, OFFSET FLAT:label_39
	xor	r15d, r15d
.label_46:
	cmp	dword ptr [rdx], eax
	je	.label_37
	cmp	dword ptr [rdx + 0x18], eax
	je	.label_45
	add	rcx, 2
	add	rdx, 0x30
	cmp	rcx, 0x23
	jne	.label_46
	jmp	.label_58
.label_47:
	dec	rcx
.label_48:
	lea	rax, [rcx + rcx*2]
	mov	rsi, qword ptr [(rax * 8) + label_44]
.label_41:
	xor	eax, eax
	mov	rdi, rbp
	call	wrapf
	jmp	.label_43
.label_37:
	dec	rcx
.label_45:
	lea	rax, [rcx + rcx*2]
	mov	r15, qword ptr [(rax * 8) + label_44]
.label_58:
	mov	rdi, rbx
	call	cfgetospeed
	mov	ecx, 1
	mov	esi, OFFSET FLAT:label_39
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_40:
	cmp	dword ptr [rsi], eax
	je	.label_42
	cmp	dword ptr [rsi + 0x18], eax
	je	.label_54
	add	rcx, 2
	add	rsi, 0x30
	cmp	rcx, 0x23
	jne	.label_40
	jmp	.label_38
.label_42:
	dec	rcx
.label_54:
	lea	rax, [rcx + rcx*2]
	mov	rdx, qword ptr [(rax * 8) + label_44]
.label_38:
	xor	eax, eax
	mov	rdi, r14
	mov	rsi, r15
	call	wrapf
.label_43:
	test	r12b, r12b
	jne	.label_56
	mov	dword ptr [rip + current_col],  0
.label_56:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40218d
	.globl sub_40218d
	.type sub_40218d, @function
sub_40218d:

	nop	dword ptr [rax]
.label_59:
	mov	eax, ebx
.label_60:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40219d
	.globl sub_40219d
	.type sub_40219d, @function
sub_40219d:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4021a7

	.globl fd_reopen
	.type fd_reopen, @function
fd_reopen:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	ebp, edi
	xor	eax, eax
	mov	rdi, rsi
	mov	esi, edx
	mov	edx, ecx
	call	open
	mov	ebx, eax
	cmp	ebx, ebp
	je	.label_59
	test	ebx, ebx
	js	.label_59
	mov	edi, ebx
	mov	esi, ebp
	call	dup2
	mov	r14d, eax
	call	__errno_location
	mov	rbp, rax
	mov	r15d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	mov	dword ptr [rbp], r15d
	mov	eax, r14d
	jmp	.label_60
	.section	.text
	.align	16
	#Procedure 0x4021f0
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
	#Procedure 0x4021ff
	.globl sub_4021ff
	.type sub_4021ff, @function
sub_4021ff:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402200
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_31]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_32]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_33]
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
	#Procedure 0x40226e
	.globl sub_40226e
	.type sub_40226e, @function
sub_40226e:

	nop	
.label_61:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402275
	.globl sub_402275
	.type sub_402275, @function
sub_402275:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402279

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
	je	.label_62
	test	r15, r15
	je	.label_61
.label_62:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x4022b0
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
	#Procedure 0x402371
	.globl sub_402371
	.type sub_402371, @function
sub_402371:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402380
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x402388
	.globl sub_402388
	.type sub_402388, @function
sub_402388:

	nop	dword ptr [rax + rax]
.label_63:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402395
	.globl sub_402395
	.type sub_402395, @function
sub_402395:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4023a0

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
	je	.label_63
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
	.section	.text
	.align	16
	#Procedure 0x402430

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_74
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_76
.label_74:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_76:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_64
	cmp	r10d, 0x29
	jae	.label_73
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_75
.label_73:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_75:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_64
	cmp	r10d, 0x29
	jae	.label_71
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_72
.label_71:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_72:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_64
	cmp	r10d, 0x29
	jae	.label_69
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_70
.label_69:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_70:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_64
	cmp	r10d, 0x29
	jae	.label_67
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_68
.label_67:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_68:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_64
	cmp	r10d, 0x29
	jae	.label_65
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_66
.label_65:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_66:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_64
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_64
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_64
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_64
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_64:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	16
	#Procedure 0x402612
	.globl sub_402612
	.type sub_402612, @function
sub_402612:

	nop	word ptr cs:[rax + rax]
.label_77:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402625
	.globl sub_402625
	.type sub_402625, @function
sub_402625:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402629
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_31]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_32]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_33]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_77
	test	rsi, rsi
	je	.label_77
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
	#Procedure 0x402690

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
	#Procedure 0x4026a9
	.globl sub_4026a9
	.type sub_4026a9, @function
sub_4026a9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4026b0

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
	mov	r13, rdx
	mov	eax, esi
	mov	r12, rdi
	lea	rcx, [rsp]
	xor	esi, esi
	mov	edx, eax
	call	xstrtoumax
	test	eax, eax
	je	.label_81
	cmp	eax, 1
	je	.label_82
	cmp	eax, 3
	jne	.label_85
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_78
.label_82:
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	jmp	.label_78
.label_81:
	mov	rbx, qword ptr [rsp]
	cmp	rbx, r13
	jb	.label_84
	cmp	rbx, r15
	jbe	.label_79
.label_84:
	call	__errno_location
	cmp	rbx, 0x40000000
	jb	.label_83
	mov	dword ptr [rax], 0x4b
	jmp	.label_78
.label_85:
	call	__errno_location
	jmp	.label_78
.label_83:
	mov	dword ptr [rax], 0x22
.label_78:
	mov	ecx, dword ptr [rsp + 0x40]
	test	ecx, ecx
	mov	ebx, 1
	cmovne	ebx, ecx
	mov	ebp, dword ptr [rax]
	xor	eax, eax
	cmp	ebp, 0x16
	cmove	ebp, eax
	mov	rdi, r12
	call	quote
	mov	r8, rax
	mov	edx, OFFSET FLAT:label_80
	xor	eax, eax
	mov	edi, ebx
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	rbx, qword ptr [rsp]
.label_79:
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
	#Procedure 0x40277b
	.globl sub_40277b
	.type sub_40277b, @function
sub_40277b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402780

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_173
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_175
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	mov	rcx, rdx
	mov	r8, rdx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_182
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_151
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_193
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_88
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_96
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_103
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_114
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_119
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_127
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_133
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_141
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_147
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_156
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_162
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_171
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_177
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_170
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_187
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_140
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_126
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	cmp	dword ptr [rip + tcsetattr_options],  1
	jne	.label_146
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_94
	jmp	.label_95
.label_173:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_99
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
.label_146:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_112
.label_95:
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_180
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
	mov	esi, OFFSET FLAT:label_165
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_142
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_135
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_157
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_93
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_139
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_189
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
	mov	esi, OFFSET FLAT:label_167
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_150
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_89
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_168
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_104
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_92
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_179
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_128
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_153
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_191
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_137
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_122
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_163
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_190
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_186
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_183
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_188
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_194
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_124
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_97
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
	mov	esi, OFFSET FLAT:label_115
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_120
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_184
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_134
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_158
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_148
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_129
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_116
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_172
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_178
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_152
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_174
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_160
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_159
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_91
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
	mov	esi, OFFSET FLAT:label_105
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_117
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_121
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_130
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_136
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_144
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_149
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_154
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_123
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_164
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_169
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_176
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_181
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_185
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_192
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_86
	mov	ecx, OFFSET FLAT:label_87
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_90
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_98
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_102
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_106
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_109
	mov	ecx, OFFSET FLAT:label_110
	mov	r8d, OFFSET FLAT:label_111
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_118
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_125
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_131
	mov	ecx, OFFSET FLAT:label_132
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_143
	mov	esi, OFFSET FLAT:label_138
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_143
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_145
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_143:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_107
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_132
	mov	ecx, OFFSET FLAT:label_155
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_161
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_155
	mov	ecx, OFFSET FLAT:label_166
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
	.section	.text
	.align	16
	#Procedure 0x403384
	.globl sub_403384
	.type sub_403384, @function
sub_403384:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403390
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_200
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_199
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_195
.label_198:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_201
	test	rax, rax
	je	.label_199
.label_201:
	pop	rbx
	ret	
.label_199:
	call	xalloc_die
.label_196:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4033db
	.globl sub_4033db
	.type sub_4033db, @function
sub_4033db:

	nop	word ptr [rax + rax]
.label_200:
	test	rcx, rcx
	jne	.label_197
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_197:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_196
.label_195:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_198
	test	rbx, rbx
	jne	.label_198
	call	free
	xor	eax, eax
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x403430
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
	#Procedure 0x403463
	.globl sub_403463
	.type sub_403463, @function
sub_403463:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403470

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
	#Procedure 0x403487
	.globl sub_403487
	.type sub_403487, @function
sub_403487:

	nop	word ptr [rax + rax]
.label_202:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403495
	.globl sub_403495
	.type sub_403495, @function
sub_403495:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4034a4
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
	je	.label_202
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
	#Procedure 0x403500
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
	#Procedure 0x40350f
	.globl sub_40350f
	.type sub_40350f, @function
sub_40350f:

	nop	
.label_204:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_203
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403530
	.globl sub_403530
	.type sub_403530, @function
sub_403530:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40353f

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_204
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_205
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_208
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_205
	mov	esi, OFFSET FLAT:label_206
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_207
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_207:
	mov	rbx, r14
.label_205:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x4035c0

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0xd0
	mov	ebx, edi
	test	al, al
	je	.label_223
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_223:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xf0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x10
	cmp	esi, 0xb
	ja	.label_211
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_224
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_212
	test	esi, esi
	jne	.label_211
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_226
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_227
.label_211:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_209
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_212
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_215
.label_224:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_219
.label_212:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_220
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_221
.label_220:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_221:
	mov	edx, dword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
.label_222:
	call	fcntl
.label_219:
	mov	ebp, eax
.label_214:
	mov	eax, ebp
	add	rsp, 0xd0
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_215:
	cmp	eax, 6
	jne	.label_209
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_229
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_210
.label_209:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_213
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_217
.label_226:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_227:
	mov	edx, dword ptr [rax]
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	jmp	.label_222
.label_229:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_210:
	mov	r14d, dword ptr [rax]
	cmp	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  0
	js	.label_225
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	jns	.label_228
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_228
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	js	.label_214
	mov	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  0xffffffff
	mov	al, 1
	jmp	.label_216
.label_228:
	mov	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  1
	jmp	.label_214
.label_213:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_217:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_219
.label_225:
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	cmp	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  -1
	sete	al
.label_216:
	test	al, al
	je	.label_214
	test	ebp, ebp
	js	.label_214
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebp
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_218
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebp
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_214
.label_218:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	mov	ebp, 0xffffffff
	jmp	.label_214
	.section	.text
	.align	16
	#Procedure 0x403851
	.globl sub_403851
	.type sub_403851, @function
sub_403851:

	nop	word ptr cs:[rax + rax]
.label_230:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403865
	.globl sub_403865
	.type sub_403865, @function
sub_403865:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40386b
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_31]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_32]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_33]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_230
	test	rdx, rdx
	je	.label_230
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	.section	.text
	.align	16
	#Procedure 0x4038d0
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_31]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_32]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_33]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_231
	test	rdx, rdx
	je	.label_231
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_231:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40393e
	.globl sub_40393e
	.type sub_40393e, @function
sub_40393e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403940

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_233
	cmp	byte ptr [rax], 0x43
	jne	.label_235
	cmp	byte ptr [rax + 1], 0
	je	.label_232
.label_235:
	mov	esi, OFFSET FLAT:label_234
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_233
.label_232:
	xor	ebx, ebx
.label_233:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x403971
	.globl sub_403971
	.type sub_403971, @function
sub_403971:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403980
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x403991
	.globl sub_403991
	.type sub_403991, @function
sub_403991:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4039a0

	.globl apply_settings
	.type apply_settings, @function
apply_settings:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x78
	mov	qword ptr [rsp + 0x60], r9
	mov	r13, r8
	mov	ebx, ecx
	mov	qword ptr [rsp + 0x40], rdx
	mov	qword ptr [rsp + 0x58], rsi
	mov	dword ptr [rsp + 0x1c], edi
	cmp	ebx, 2
	jl	.label_307
	lea	rax, [r13 + 8]
	mov	qword ptr [rsp + 0x30], rax
	lea	rax, [r13 + 4]
	mov	qword ptr [rsp + 0x48], rax
	lea	rax, [r13 + 0xc]
	mov	qword ptr [rsp + 0x38], rax
	lea	eax, [rbx - 1]
	mov	dword ptr [rsp + 0x2c], eax
	mov	r15d, 1
	mov	qword ptr [rsp + 0x10], r13
	mov	qword ptr [rsp + 8], rbx
	jmp	.label_312
.label_271:
	mov	rcx, qword ptr [rsp + 0x30]
	mov	eax, dword ptr [rcx]
	cmp	r12b, 0x2d
	je	.label_317
	and	eax, 0xfffffccf
	or	eax, 0x120
	mov	dword ptr [rcx], eax
	jmp	.label_298
.label_275:
	mov	rcx, qword ptr [rsp + 0x30]
	mov	eax, dword ptr [rcx]
	cmp	r12b, 0x2d
	jne	.label_323
.label_317:
	and	eax, 0xfffffecf
	or	eax, 0x30
	mov	dword ptr [rcx], eax
	jmp	.label_298
.label_278:
	cmp	byte ptr [r13 + 1], 0x6b
	jne	.label_280
	cmp	byte ptr [r13 + 2], 0
	je	.label_326
.label_280:
	mov	esi, OFFSET FLAT:label_328
	mov	rdi, r13
	call	strcmp
	test	eax, eax
	je	.label_330
	mov	esi, OFFSET FLAT:label_332
	mov	rdi, r13
	call	strcmp
	test	eax, eax
	je	.label_334
	mov	esi, OFFSET FLAT:label_337
	mov	rdi, r13
	call	strcmp
	test	eax, eax
	je	.label_341
	mov	esi, OFFSET FLAT:label_343
	mov	rdi, r13
	call	strcmp
	test	eax, eax
	je	.label_347
	cmp	bl, 0x72
	jne	.label_350
	cmp	byte ptr [r13 + 1], 0x61
	jne	.label_350
	cmp	byte ptr [r13 + 2], 0x77
	jne	.label_350
	cmp	byte ptr [r13 + 3], 0
	je	.label_352
.label_350:
	mov	esi, OFFSET FLAT:label_282
	mov	rdi, r13
	call	strcmp
	test	eax, eax
	je	.label_352
	mov	esi, OFFSET FLAT:label_357
	mov	rdi, r13
	call	strcmp
	test	eax, eax
	je	.label_361
	mov	esi, OFFSET FLAT:label_362
	mov	rdi, r13
	call	strcmp
	test	eax, eax
	je	.label_364
	mov	esi, OFFSET FLAT:label_365
	mov	rdi, r13
	call	strcmp
	test	eax, eax
	je	.label_324
	mov	esi, OFFSET FLAT:label_369
	mov	rdi, r13
	call	strcmp
	test	eax, eax
	je	.label_324
	mov	al, 1
	cmp	bl, 0x64
	je	.label_370
	cmp	bl, 0x63
	jne	.label_250
	cmp	byte ptr [r13 + 1], 0x72
	mov	rbx, qword ptr [rsp + 8]
	jne	.label_371
	cmp	byte ptr [r13 + 2], 0x74
	jne	.label_372
	cmp	byte ptr [r13 + 3], 0
	je	.label_376
	mov	r13, qword ptr [rsp + 0x10]
	jmp	.label_276
.label_330:
	mov	r13, qword ptr [rsp + 0x10]
	test	r13, r13
	mov	byte ptr [r13 + 0x1c], 0
	mov	byte ptr [r13 + 0x21], 0
	mov	word ptr [r13 + 0x19], 0x1311
	mov	byte ptr [r13 + 0x1b], 0x1a
	mov	byte ptr [r13 + 0x1d], 0x12
	mov	byte ptr [r13 + 0x1f], 0x17
	mov	byte ptr [r13 + 0x20], 0x16
	mov	byte ptr [r13 + 0x1e], 0xf
	movabs	rax, 0x10004157f1c03
	mov	qword ptr [r13 + 0x11], rax
	mov	rbx, qword ptr [rsp + 8]
	mov	rcx, -0xb20
	je	.label_304
	nop	word ptr [rax + rax]
.label_273:
	movsx	eax, byte ptr [rcx + label_247]
	test	al, 0x10
	jne	.label_260
	test	al, 1
	jne	.label_394
	test	al, 2
	je	.label_260
	mov	edx, dword ptr [rcx + label_241]
	cmp	rdx, 4
	ja	.label_283
	mov	rax, qword ptr [rsp + 0x30]
	jmp	qword ptr [(rdx * 8) + label_400]
.label_920:
	mov	rax, r13
	jmp	.label_239
	.section	.text
	.align	16
	#Procedure 0x403c0c
	.globl sub_403c0c
	.type sub_403c0c, @function
sub_403c0c:

	nop	dword ptr [rax]
.label_394:
	mov	edx, dword ptr [rcx + label_241]
	cmp	rdx, 4
	ja	.label_242
	mov	rax, qword ptr [rsp + 0x30]
	jmp	qword ptr [(rdx * 8) + label_248]
.label_915:
	mov	rax, r13
	jmp	.label_254
.label_916:
	mov	rax, qword ptr [rsp + 0x48]
	jmp	.label_254
.label_917:
	mov	rax, qword ptr [rsp + 0x38]
.label_254:
	mov	edx, dword ptr [rcx + label_258]
	mov	esi, 0xffffffff
	xor	edx, esi
	and	edx, dword ptr [rax]
	or	edx, dword ptr [rcx + label_259]
	mov	dword ptr [rax], edx
	jmp	.label_260
.label_921:
	mov	rax, qword ptr [rsp + 0x48]
	jmp	.label_239
.label_922:
	mov	rax, qword ptr [rsp + 0x38]
.label_239:
	mov	edx, dword ptr [rcx + label_258]
	mov	edi, 0xffffffff
	xor	edx, edi
	and	edx, dword ptr [rax]
	mov	esi, dword ptr [rcx + label_259]
	xor	esi, edi
	and	esi, edx
	mov	dword ptr [rax], esi
	nop	dword ptr [rax]
.label_260:
	add	rcx, 0x20
	mov	al, 1
	jne	.label_273
	jmp	.label_276
	.section	.text
	.align	16
	#Procedure 0x403c91
	.globl sub_403c91
	.type sub_403c91, @function
sub_403c91:

	nop	word ptr cs:[rax + rax]
.label_304:
	movsx	eax, byte ptr [rcx + label_247]
	test	al, 0x10
	jne	.label_279
	test	al, 1
	jne	.label_281
	test	al, 2
	je	.label_279
	mov	edx, dword ptr [rcx + label_241]
	cmp	rdx, 4
	ja	.label_283
	mov	rax, qword ptr [rsp + 0x38]
	jmp	qword ptr [(rdx * 8) + label_286]
.label_930:
	mov	rax, qword ptr [rsp + 0x30]
	jmp	.label_289
.label_281:
	mov	edx, dword ptr [rcx + label_241]
	cmp	rdx, 4
	ja	.label_242
	mov	rax, qword ptr [rsp + 0x38]
	jmp	qword ptr [(rdx * 8) + label_291]
.label_926:
	mov	rax, qword ptr [rsp + 0x30]
	jmp	.label_292
.label_927:
	mov	rax, qword ptr [rsp + 0x48]
.label_292:
	mov	edx, dword ptr [rcx + label_258]
	mov	esi, 0xffffffff
	xor	edx, esi
	and	edx, dword ptr [rax]
	or	edx, dword ptr [rcx + label_259]
	mov	dword ptr [rax], edx
	jmp	.label_279
.label_931:
	mov	rax, qword ptr [rsp + 0x48]
.label_289:
	mov	edx, dword ptr [rcx + label_258]
	mov	edi, 0xffffffff
	xor	edx, edi
	and	edx, dword ptr [rax]
	mov	esi, dword ptr [rcx + label_259]
	xor	esi, edi
	and	esi, edx
	mov	dword ptr [rax], esi
	nop	
.label_279:
	add	rcx, 0x20
	mov	al, 1
	jne	.label_304
	jmp	.label_276
.label_323:
	and	eax, 0xfffffccf
	or	eax, 0x320
	mov	dword ptr [rcx], eax
	jmp	.label_298
.label_334:
	mov	rcx, qword ptr [rsp + 0x38]
	mov	eax, dword ptr [rcx]
	cmp	r12b, 0x2d
	jne	.label_263
	or	eax, 2
	mov	dword ptr [rcx], eax
	jmp	.label_298
.label_341:
	mov	rax, qword ptr [rsp + 0x30]
	mov	eax, dword ptr [rax]
	mov	ecx, 0xfffffecf
	and	eax, ecx
	cmp	r12b, 0x2d
	jne	.label_301
	or	eax, 0x120
	mov	r13, qword ptr [rsp + 0x10]
	mov	dword ptr [r13 + 8], eax
	or	byte ptr [r13], 0x20
	mov	al, 1
	jmp	.label_287
.label_263:
	and	eax, 0xfffffffd
	mov	dword ptr [rcx], eax
	jmp	.label_298
.label_347:
	mov	rax, qword ptr [rsp + 0x30]
	mov	eax, dword ptr [rax]
	mov	ecx, 0xfffffecf
	and	eax, ecx
	cmp	r12b, 0x2d
	jne	.label_309
	or	eax, 0x120
	mov	r13, qword ptr [rsp + 0x10]
	mov	dword ptr [r13 + 8], eax
	or	byte ptr [r13], 0x20
	or	byte ptr [r13 + 4], 1
	mov	al, 1
	jmp	.label_287
.label_301:
	or	eax, 0x30
	mov	r13, qword ptr [rsp + 0x10]
	mov	dword ptr [r13 + 8], eax
	and	byte ptr [r13], 0xdf
	mov	al, 1
	jmp	.label_287
.label_326:
	mov	r13, qword ptr [rsp + 0x10]
	mov	word ptr [r13 + 0x13], 0x157f
	mov	al, 1
	jmp	.label_287
.label_352:
	cmp	bl, 0x72
	setne	cl
	cmp	r12b, 0x2d
	sete	al
	setne	dl
	or	dl, cl
	cmp	bl, 0x63
	setne	cl
	cmp	dl, 1
	jne	.label_270
	or	al, cl
	je	.label_270
	mov	r13, qword ptr [rsp + 0x10]
	mov	dword ptr [r13], 0
	and	byte ptr [r13 + 4], 0xfe
	and	byte ptr [r13 + 0xc], 0xf8
	mov	word ptr [r13 + 0x16], 0x100
	mov	al, 1
	jmp	.label_287
.label_309:
	or	eax, 0x30
	mov	r13, qword ptr [rsp + 0x10]
	mov	dword ptr [r13 + 8], eax
	and	byte ptr [r13], 0xdf
	and	byte ptr [r13 + 4], 0xfe
	mov	al, 1
	jmp	.label_287
.label_285:
	and	eax, 0xfffffeff
	mov	dword ptr [r13], eax
	and	byte ptr [r13 + 4], 0xfb
	mov	al, 1
	jmp	.label_287
.label_361:
	mov	r13, qword ptr [rsp + 0x10]
	mov	eax, dword ptr [r13]
	cmp	r12b, 0x2d
	jne	.label_340
	or	eax, 0x800
	jmp	.label_344
.label_270:
	mov	r13, qword ptr [rsp + 0x10]
	or	dword ptr [r13], 0x526
	or	byte ptr [r13 + 4], 1
	or	byte ptr [r13 + 0xc], 3
	mov	al, 1
	jmp	.label_287
.label_324:
	mov	rax, qword ptr [rsp + 0x38]
	mov	eax, dword ptr [rax]
	cmp	r12b, 0x2d
	jne	.label_353
	and	eax, 0xfffffffb
	mov	r13, qword ptr [rsp + 0x10]
	mov	dword ptr [r13 + 0xc], eax
	and	byte ptr [r13 + 1], 0xfd
	and	byte ptr [r13 + 4], 0xfd
	mov	al, 1
	jmp	.label_287
.label_364:
	mov	rcx, qword ptr [rsp + 0x48]
	mov	eax, dword ptr [rcx]
	cmp	r12b, 0x2d
	jne	.label_360
	or	eax, 0x1800
	mov	dword ptr [rcx], eax
	jmp	.label_298
.label_340:
	and	eax, 0xfffff7ff
.label_344:
	mov	dword ptr [r13], eax
	mov	al, 1
	jmp	.label_287
.label_353:
	or	eax, 4
	mov	r13, qword ptr [rsp + 0x10]
	mov	dword ptr [r13 + 0xc], eax
	or	byte ptr [r13 + 1], 2
	or	byte ptr [r13 + 4], 2
	mov	al, 1
	jmp	.label_287
.label_360:
	and	eax, 0xffffe7ff
	mov	dword ptr [rcx], eax
	jmp	.label_298
.label_370:
	cmp	byte ptr [r13 + 1], 0x65
	jne	.label_250
	cmp	byte ptr [r13 + 2], 0x63
	mov	rbx, qword ptr [rsp + 8]
	jne	.label_372
	cmp	byte ptr [r13 + 3], 0
	je	.label_373
.label_371:
	mov	r13, qword ptr [rsp + 0x10]
	jmp	.label_276
.label_372:
	mov	r13, qword ptr [rsp + 0x10]
	jmp	.label_276
.label_386:
	cmp	r15d, dword ptr [rsp + 0x2c]
	je	.label_252
	mov	rax, qword ptr [rsp + 0x40]
	mov	rbp, qword ptr [rax + rbp*8 + 8]
	test	rbp, rbp
	je	.label_252
	inc	r15d
	mov	eax, dword ptr [rsp + 0x1c]
	test	al, al
	jne	.label_236
	mov	rbx, -0x330
.label_389:
	mov	rsi, qword ptr [rbx + label_237]
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	je	.label_388
	add	rbx, 0x18
	mov	esi, 0xffffffff
	jne	.label_389
	jmp	.label_349
.label_390:
	cmp	r15d, dword ptr [rsp + 0x2c]
	je	.label_252
	mov	rax, qword ptr [rsp + 0x40]
	mov	rbp, qword ptr [rax + rbp*8 + 8]
	test	rbp, rbp
	je	.label_252
	inc	r15d
	mov	eax, dword ptr [rsp + 0x1c]
	test	al, al
	jne	.label_261
	mov	rbx, -0x330
.label_245:
	mov	rsi, qword ptr [rbx + label_237]
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	je	.label_240
	add	rbx, 0x18
	mov	esi, 0xffffffff
	jne	.label_245
	jmp	.label_249
.label_397:
	cmp	r15d, dword ptr [rsp + 0x2c]
	je	.label_252
	mov	rax, qword ptr [rsp + 0x40]
	mov	rbp, qword ptr [rax + rbp*8 + 8]
	test	rbp, rbp
	je	.label_252
	inc	r15d
	mov	eax, dword ptr [rsp + 0x1c]
	test	al, al
	jne	.label_261
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_284
	mov	edx, 5
	call	dcgettext
	mov	dword ptr [rsp], 0
	xor	esi, esi
	xor	edx, edx
	mov	ecx, 0x7fffffff
	mov	r8d, OFFSET FLAT:label_268
	mov	rdi, rbp
	mov	r9, rax
	call	xnumtoumax
	mov	edi, 0xffffffff
	mov	esi, eax
	jmp	.label_274
.label_392:
	cmp	r15d, dword ptr [rsp + 0x2c]
	je	.label_252
	mov	rax, qword ptr [rsp + 0x40]
	mov	rbp, qword ptr [rax + rbp*8 + 8]
	test	rbp, rbp
	je	.label_252
	inc	r15d
	mov	eax, dword ptr [rsp + 0x1c]
	test	al, al
	jne	.label_261
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_284
	mov	edx, 5
	call	dcgettext
	mov	dword ptr [rsp], 0
	xor	esi, esi
	xor	edx, edx
	mov	ecx, 0x7fffffff
	mov	r8d, OFFSET FLAT:label_268
	mov	rdi, rbp
	mov	r9, rax
	call	xnumtoumax
	mov	esi, 0xffffffff
	mov	edi, eax
.label_274:
	mov	rdx, qword ptr [rsp + 0x58]
	call	set_window_size
	jmp	.label_261
.label_376:
	mov	rcx, qword ptr [rsp + 0x38]
	or	dword ptr [rcx], 0xa10
	mov	r13, qword ptr [rsp + 0x10]
	jmp	.label_276
.label_373:
	mov	r13, qword ptr [rsp + 0x10]
	mov	byte ptr [r13 + 0x11], 3
	mov	byte ptr [r13 + 0x13], 0x7f
	mov	byte ptr [r13 + 0x14], 0x15
	or	dword ptr [r13 + 0xc], 0xa10
	and	byte ptr [r13 + 1], 0xf7
	jmp	.label_276
.label_388:
	mov	esi, dword ptr [rbx + label_295]
.label_349:
	mov	rdi, r13
	call	cfsetispeed
	jmp	.label_297
.label_240:
	mov	esi, dword ptr [rbx + label_295]
.label_249:
	mov	r13, qword ptr [rsp + 0x10]
	mov	rdi, r13
.label_383:
	call	cfsetospeed
.label_297:
	mov	rax, qword ptr [rsp + 0x60]
	mov	byte ptr [rax], 1
	jmp	.label_277
.label_243:
	mov	eax, dword ptr [rsp + 0x1c]
	test	al, al
	jne	.label_261
	mov	edi, 1
	mov	esi, 0x5413
	xor	eax, eax
	lea	rdx, [rsp + 0x20]
	call	ioctl
	test	eax, eax
	jne	.label_303
	movzx	eax, word ptr [rsp + 0x22]
	test	eax, eax
	jne	.label_302
.label_303:
	mov	edi, OFFSET FLAT:label_306
	call	getenv
	test	rax, rax
	je	.label_311
	xor	esi, esi
	xor	edx, edx
	mov	r8d, OFFSET FLAT:label_308
	mov	rdi, rax
	lea	rcx, [rsp + 0x50]
	call	xstrtol
	test	eax, eax
	jne	.label_311
	mov	rax, qword ptr [rsp + 0x50]
	lea	rcx, [rax - 1]
	cmp	rcx, 0x7fffffff
	jb	.label_302
.label_311:
	mov	qword ptr [rsp + 0x50], 0x50
	mov	eax, 0x50
.label_302:
	mov	dword ptr [rip + max_col],  eax
	mov	dword ptr [rip + current_col],  0
	xor	edi, edi
	mov	rsi, qword ptr [rsp + 0x58]
	call	display_window_size
	jmp	.label_261
.label_251:
	cmp	r15d, dword ptr [rsp + 0x2c]
	je	.label_252
	mov	rax, qword ptr [rsp + 0x40]
	mov	r13, qword ptr [rax + rbp*8 + 8]
	test	r13, r13
	je	.label_252
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_284
	mov	edx, 5
	call	dcgettext
	mov	dword ptr [rsp], 0
	xor	esi, esi
	xor	edx, edx
	mov	rcx, -1
	mov	r8d, OFFSET FLAT:label_268
	mov	rdi, r13
	mov	r9, rax
	call	xnumtoumax
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + 0x10], al
	movzx	ecx, al
	cmp	rcx, rax
	je	.label_322
	inc	rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_338
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rax, qword ptr [rsp + 0x40]
	mov	rdi, qword ptr [rax + rbp*8]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	call	error
.label_322:
	inc	r15d
	jmp	.label_277
.label_257:
	mov	eax, dword ptr [rsp + 0x1c]
	test	al, al
	jne	.label_261
	mov	edi, 1
	mov	esi, 0x5413
	xor	eax, eax
	lea	rdx, [rsp + 0x20]
	call	ioctl
	test	eax, eax
	jne	.label_354
	movzx	eax, word ptr [rsp + 0x22]
	test	eax, eax
	jne	.label_355
.label_354:
	mov	edi, OFFSET FLAT:label_306
	call	getenv
	test	rax, rax
	je	.label_359
	xor	esi, esi
	xor	edx, edx
	mov	r8d, OFFSET FLAT:label_308
	mov	rdi, rax
	lea	rcx, [rsp + 0x50]
	call	xstrtol
	test	eax, eax
	jne	.label_359
	mov	rax, qword ptr [rsp + 0x50]
	lea	rcx, [rax - 1]
	cmp	rcx, 0x7fffffff
	jb	.label_355
.label_359:
	mov	qword ptr [rsp + 0x50], 0x50
	mov	eax, 0x50
.label_355:
	mov	dword ptr [rip + max_col],  eax
	xor	esi, esi
	mov	r13, qword ptr [rsp + 0x10]
	mov	rdi, r13
	call	display_speed
	jmp	.label_261
.label_266:
	mov	eax, dword ptr [rsp + 0x1c]
	test	al, al
	jne	.label_261
	mov	rbx, -0x330
.label_377:
	mov	rsi, qword ptr [rbx + label_237]
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	je	.label_375
	add	rbx, 0x18
	mov	ebp, 0xffffffff
	jne	.label_377
	jmp	.label_380
.label_375:
	mov	ebp, dword ptr [rbx + label_295]
.label_380:
	mov	r13, qword ptr [rsp + 0x10]
	mov	rdi, r13
	mov	esi, ebp
	call	cfsetispeed
	mov	rdi, r13
	mov	esi, ebp
	jmp	.label_383
	.section	.text
	.align	16
	#Procedure 0x40438e
	.globl sub_40438e
	.type sub_40438e, @function
sub_40438e:

	nop	
.label_312:
	movsxd	rbp, r15d
	mov	rax, qword ptr [rsp + 0x40]
	mov	rax, qword ptr [rax + rbp*8]
	test	rax, rax
	je	.label_236
	mov	r12b, byte ptr [rax]
	lea	r14, [rax + 1]
	cmp	r12b, 0x2d
	cmovne	r14, rax
	mov	esi, OFFSET FLAT:label_314
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	je	.label_339
	mov	rbx, -0xb20
	nop	dword ptr [rax]
.label_396:
	mov	r13, qword ptr [rbx + label_358]
	mov	rdi, r14
	mov	rsi, r13
	call	strcmp
	test	eax, eax
	je	.label_395
	add	rbx, 0x20
	jne	.label_396
	xor	eax, eax
	mov	r13, qword ptr [rsp + 0x10]
	mov	rbx, qword ptr [rsp + 8]
	jmp	.label_384
	.section	.text
	.align	16
	#Procedure 0x4043fd
	.globl sub_4043fd
	.type sub_4043fd, @function
sub_4043fd:

	nop	dword ptr [rax]
.label_339:
	xor	eax, eax
	cmp	r12b, 0x2d
	setne	al
	mov	dword ptr [rip + tcsetattr_options],  eax
	jmp	.label_236
.label_395:
	cmp	r12b, 0x2d
	jne	.label_244
	test	byte ptr [rbx + label_247],  4
	jne	.label_244
	xor	eax, eax
	jmp	.label_250
.label_244:
	mov	ecx, dword ptr [rbx + label_241]
	cmp	rcx, 4
	ja	.label_253
	mov	rax, qword ptr [rsp + 0x30]
	jmp	qword ptr [(rcx * 8) + label_256]
.label_908:
	mov	rax, qword ptr [rsp + 0x10]
	test	rax, rax
	jne	.label_262
.label_911:
	mov	esi, OFFSET FLAT:label_265
	mov	rdi, r13
	call	strcmp
	test	eax, eax
	je	.label_271
	mov	esi, OFFSET FLAT:label_269
	mov	rdi, r13
	call	strcmp
	test	eax, eax
	je	.label_271
	mov	esi, OFFSET FLAT:label_272
	mov	rdi, r13
	call	strcmp
	test	eax, eax
	je	.label_275
	mov	bl, byte ptr [r13]
	cmp	bl, 0x65
	je	.label_278
	cmp	bl, 0x6e
	jne	.label_280
	cmp	byte ptr [r13 + 1], 0x6c
	jne	.label_280
	cmp	byte ptr [r13 + 2], 0
	jne	.label_280
	mov	r13, qword ptr [rsp + 0x10]
	mov	eax, dword ptr [r13]
	cmp	r12b, 0x2d
	jne	.label_285
	and	eax, 0xfffffe3f
	or	eax, 0x100
	mov	dword ptr [r13], eax
	mov	eax, dword ptr [r13 + 4]
	and	eax, 0xffffffd3
	or	eax, 4
	mov	dword ptr [r13 + 4], eax
	mov	al, 1
	jmp	.label_287
.label_910:
	mov	rax, qword ptr [rsp + 0x38]
	jmp	.label_262
.label_909:
	mov	rax, qword ptr [rsp + 0x48]
.label_262:
	mov	edx, dword ptr [rax]
	mov	rcx, qword ptr [rbx + label_258]
	not	rcx
	and	rcx, rdx
	mov	rdx, qword ptr [rbx + label_259]
	cmp	r12b, 0x2d
	jne	.label_293
	mov	esi, 0xffffffff
	xor	edx, esi
	and	ecx, edx
	jmp	.label_294
.label_293:
	or	ecx, edx
.label_294:
	mov	dword ptr [rax], ecx
.label_298:
	mov	al, 1
.label_250:
	mov	r13, qword ptr [rsp + 0x10]
.label_287:
	mov	rbx, qword ptr [rsp + 8]
.label_276:
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx], 1
.label_384:
	cmp	r12b, 0x2d
	setne	cl
	test	al, al
	jne	.label_382
	test	cl, cl
	je	.label_296
.label_382:
	test	al, al
	jne	.label_236
	mov	esi, OFFSET FLAT:label_299
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	mov	edi, OFFSET FLAT:label_299
	mov	r12d, 0
	je	.label_300
	mov	esi, OFFSET FLAT:label_290
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	mov	edi, OFFSET FLAT:label_290
	mov	r12d, 1
	je	.label_300
	mov	esi, OFFSET FLAT:label_305
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	mov	edi, OFFSET FLAT:label_305
	mov	r12d, 2
	je	.label_300
	mov	esi, OFFSET FLAT:label_310
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	mov	edi, OFFSET FLAT:label_310
	mov	r12d, 3
	je	.label_300
	mov	esi, OFFSET FLAT:label_313
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	mov	edi, OFFSET FLAT:label_313
	mov	r12d, 4
	je	.label_300
	mov	esi, OFFSET FLAT:label_316
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	mov	edi, OFFSET FLAT:label_316
	mov	r12d, 5
	je	.label_300
	mov	esi, OFFSET FLAT:label_318
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	mov	edi, OFFSET FLAT:label_318
	mov	r12d, 6
	je	.label_300
	mov	esi, OFFSET FLAT:label_325
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	mov	edi, OFFSET FLAT:label_325
	mov	r12d, 7
	je	.label_300
	mov	esi, OFFSET FLAT:label_329
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	mov	edi, OFFSET FLAT:label_329
	mov	r12d, 8
	je	.label_300
	mov	esi, OFFSET FLAT:label_335
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	mov	edi, OFFSET FLAT:label_335
	mov	r12d, 9
	je	.label_300
	mov	esi, OFFSET FLAT:label_345
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	mov	edi, OFFSET FLAT:label_345
	mov	r12d, 0xa
	je	.label_300
	mov	esi, OFFSET FLAT:label_351
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	mov	edi, OFFSET FLAT:label_351
	mov	r12d, 0xb
	je	.label_300
	mov	esi, OFFSET FLAT:label_356
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	mov	edi, OFFSET FLAT:label_356
	mov	r12d, 0xc
	je	.label_300
	mov	esi, OFFSET FLAT:label_363
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	mov	edi, OFFSET FLAT:label_363
	mov	r12d, 0xd
	je	.label_300
	mov	esi, OFFSET FLAT:label_368
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	mov	edi, OFFSET FLAT:label_368
	mov	r12d, 0xe
	je	.label_300
	mov	esi, OFFSET FLAT:label_378
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	mov	edi, OFFSET FLAT:label_378
	mov	r12d, 0xf
	je	.label_300
	mov	esi, OFFSET FLAT:label_374
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	mov	edi, OFFSET FLAT:label_374
	mov	r12d, 0x10
	je	.label_300
	mov	esi, OFFSET FLAT:label_333
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	mov	edi, OFFSET FLAT:label_333
	mov	r12d, 0x11
	je	.label_300
	mov	esi, OFFSET FLAT:label_385
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	je	.label_386
	mov	esi, OFFSET FLAT:label_387
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	je	.label_390
	mov	esi, OFFSET FLAT:label_391
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	je	.label_392
	mov	esi, OFFSET FLAT:label_393
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	je	.label_397
	mov	esi, OFFSET FLAT:label_399
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	je	.label_397
	mov	esi, OFFSET FLAT:label_238
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	je	.label_243
	mov	esi, OFFSET FLAT:label_246
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	je	.label_251
	mov	esi, OFFSET FLAT:label_255
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	je	.label_257
	mov	rbx, -0x330
.label_267:
	mov	rsi, qword ptr [rbx + label_237]
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	je	.label_266
	add	rbx, 0x18
	jne	.label_267
	call	__errno_location
	mov	r13, rax
	mov	dword ptr [r13], 0
	mov	edx, 0x10
	mov	rdi, r14
	lea	rsi, [rsp + 0x20]
	call	strtoul
	mov	qword ptr [rsp + 0x70], rax
	cmp	dword ptr [r13], 0
	jne	.label_264
	mov	rcx, qword ptr [rsp + 0x70]
	mov	eax, ecx
	cmp	rax, rcx
	jne	.label_264
	mov	rbx, qword ptr [rsp + 0x20]
	cmp	rbx, r14
	je	.label_264
	cmp	byte ptr [rbx], 0x3a
	jne	.label_264
	inc	rbx
	mov	dword ptr [r13], 0
	mov	edx, 0x10
	mov	rdi, rbx
	lea	rsi, [rsp + 0x20]
	call	strtoul
	mov	qword ptr [rsp + 0x68], rax
	cmp	dword ptr [r13], 0
	jne	.label_264
	mov	rcx, qword ptr [rsp + 0x68]
	mov	eax, ecx
	cmp	rax, rcx
	jne	.label_264
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbp, rbx
	je	.label_264
	cmp	byte ptr [rbp], 0x3a
	jne	.label_264
	inc	rbp
	mov	dword ptr [r13], 0
	mov	edx, 0x10
	mov	rdi, rbp
	lea	rsi, [rsp + 0x20]
	call	strtoul
	mov	r12, rax
	cmp	dword ptr [r13], 0
	jne	.label_264
	mov	rcx, r12
	mov	eax, ecx
	cmp	rax, rcx
	jne	.label_264
	mov	rbx, qword ptr [rsp + 0x20]
	cmp	rbx, rbp
	je	.label_264
	cmp	byte ptr [rbx], 0x3a
	jne	.label_264
	inc	rbx
	mov	dword ptr [r13], 0
	mov	edx, 0x10
	mov	rdi, rbx
	lea	rsi, [rsp + 0x20]
	call	strtoul
	cmp	dword ptr [r13], 0
	jne	.label_264
	mov	ecx, eax
	cmp	rcx, rax
	jne	.label_264
	mov	rcx, qword ptr [rsp + 0x20]
	cmp	rcx, rbx
	je	.label_264
	cmp	byte ptr [rcx], 0x3a
	jne	.label_264
	mov	rdx, qword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 0x70]
	mov	dword ptr [rdx], esi
	mov	rsi, qword ptr [rsp + 0x68]
	mov	dword ptr [rdx + 4], esi
	mov	dword ptr [rdx + 8], r12d
	mov	dword ptr [rdx + 0xc], eax
	xor	ebx, ebx
.label_288:
	mov	rbp, rcx
	inc	rbp
	mov	dword ptr [r13], 0
	mov	edx, 0x10
	mov	rdi, rbp
	lea	rsi, [rsp + 0x20]
	call	strtoul
	cmp	dword ptr [r13], 0
	jne	.label_264
	cmp	rbx, 0x1f
	mov	dl, 0x3a
	jne	.label_315
	xor	edx, edx
.label_315:
	movzx	ecx, al
	cmp	rcx, rax
	jne	.label_264
	mov	rcx, qword ptr [rsp + 0x20]
	cmp	rcx, rbp
	je	.label_264
	cmp	byte ptr [rcx], dl
	jne	.label_264
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rbx + 0x11], al
	inc	rbx
	cmp	rbx, 0x20
	jb	.label_288
	jmp	.label_277
.label_300:
	cmp	r15d, dword ptr [rsp + 0x2c]
	je	.label_252
	mov	rax, qword ptr [rsp + 0x40]
	mov	rbp, qword ptr [rax + rbp*8 + 8]
	test	rbp, rbp
	je	.label_252
	cmp	byte ptr [rdi], 0x6d
	jne	.label_327
	cmp	byte ptr [rdi + 1], 0x69
	jne	.label_327
	cmp	byte ptr [rdi + 2], 0x6e
	jne	.label_327
	cmp	byte ptr [rdi + 3], 0
	je	.label_331
.label_327:
	mov	esi, OFFSET FLAT:label_333
	call	strcmp
	test	eax, eax
	je	.label_331
	movzx	ebx, byte ptr [rbp]
	test	rbx, rbx
	je	.label_336
	movzx	r14d, byte ptr [rbp + 1]
	test	r14, r14
	je	.label_336
	cmp	bl, 0x5e
	jne	.label_342
	cmp	r14b, 0x2d
	jne	.label_342
	cmp	byte ptr [rbp + 2], 0
	mov	eax, 0
	je	.label_346
.label_342:
	mov	esi, OFFSET FLAT:label_348
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	eax, 0
	je	.label_346
	cmp	bl, 0x5e
	jne	.label_331
	cmp	r14b, 0x3f
	mov	eax, 0x7f
	je	.label_346
	and	r14d, 0x9f
	mov	rax, r14
	jmp	.label_346
.label_331:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_284
	mov	edx, 5
	call	dcgettext
	mov	dword ptr [rsp], 0
	xor	esi, esi
	xor	edx, edx
	mov	ecx, 0xff
	mov	r8d, OFFSET FLAT:label_268
	mov	rdi, rbp
	mov	r9, rax
	call	xnumtoumax
	jmp	.label_346
.label_336:
	mov	rax, rbx
.label_346:
	inc	r15d
	lea	rcx, [r12 + r12*2]
	mov	rcx, qword ptr [(rcx * 8) + label_367]
	mov	byte ptr [r13 + rcx + 0x11], al
.label_277:
	mov	rax, qword ptr [rsp + 0xb0]
	mov	byte ptr [rax], 1
.label_261:
	mov	rbx, qword ptr [rsp + 8]
	nop	word ptr [rax + rax]
.label_236:
	inc	r15d
	cmp	r15d, ebx
	jl	.label_312
.label_307:
	add	rsp, 0x78
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_296:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_366
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	dec	r14
	jmp	.label_379
.label_252:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_381
.label_398:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
.label_379:
	mov	rdi, r14
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	edi, 1
	call	usage
.label_253:
	call	abort
.label_918:
	mov	edi, OFFSET FLAT:label_319
	mov	esi, OFFSET FLAT:label_320
	mov	edx, 0x8cb
	mov	ecx, OFFSET FLAT:label_321
	call	__assert_fail
.label_242:
	call	abort
.label_923:
	mov	edi, OFFSET FLAT:label_319
	mov	esi, OFFSET FLAT:label_320
	mov	edx, 0x8d1
	mov	ecx, OFFSET FLAT:label_321
	call	__assert_fail
.label_283:
	call	abort
.label_264:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_366
	jmp	.label_398
	.section	.text
	.align	16
	#Procedure 0x404bf5
	.globl sub_404bf5
	.type sub_404bf5, @function
sub_404bf5:

	nop	word ptr cs:[rax + rax]
.label_407:
	mov	eax, OFFSET FLAT:label_401
	mov	edi, OFFSET FLAT:label_402
	test	bpl, bpl
	cmovne	rdi, rax
	movzx	esi, word ptr [rsp + 8]
	movzx	edx, word ptr [rsp + 0xa]
	xor	eax, eax
	call	wrapf
	test	bpl, bpl
	jne	.label_403
	mov	dword ptr [rip + current_col],  0
.label_403:
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404c3a

	.globl display_window_size
	.type display_window_size, @function
display_window_size:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x10
	mov	r14, rsi
	mov	ebp, edi
	lea	rdx, [rsp + 8]
	xor	edi, edi
	mov	esi, 0x5413
	xor	eax, eax
	call	ioctl
	test	eax, eax
	je	.label_407
	call	__errno_location
	mov	ebx, dword ptr [rax]
	cmp	ebx, 0x16
	jne	.label_404
	test	bpl, bpl
	jne	.label_403
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_405
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r14
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_404:
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r14
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_406
	xor	eax, eax
	mov	esi, ebx
	call	error
	nop	dword ptr [rax + rax]
.label_408:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x404cd5
	.globl sub_404cd5
	.type sub_404cd5, @function
sub_404cd5:

	nop	dword ptr [rax + rax]
.label_410:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_409
	test	rax, rax
	je	.label_408
.label_409:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x404cf1
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_408
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_410
	test	rbx, rbx
	jne	.label_410
	call	free
	xor	eax, eax
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x404d20
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_31]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_32]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_33]
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
	#Procedure 0x404d8f
	.globl sub_404d8f
	.type sub_404d8f, @function
sub_404d8f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x404d90
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	.section	.text
	.align	16
	#Procedure 0x404d98
	.globl sub_404d98
	.type sub_404d98, @function
sub_404d98:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404da0
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
	#Procedure 0x404db8
	.globl sub_404db8
	.type sub_404db8, @function
sub_404db8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404dc0
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
	#Procedure 0x404dd9
	.globl sub_404dd9
	.type sub_404dd9, @function
sub_404dd9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404de0
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
	#Procedure 0x404df8
	.globl sub_404df8
	.type sub_404df8, @function
sub_404df8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404e00

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_31]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_32]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_33]
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
	#Procedure 0x404e55
	.globl sub_404e55
	.type sub_404e55, @function
sub_404e55:

	nop	word ptr cs:[rax + rax]
.label_413:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_411
	test	rax, rax
	je	.label_412
.label_411:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x404e74

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_413
	test	rbx, rbx
	jne	.label_413
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_412:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x404e90
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_414
	test	rdx, rdx
	je	.label_414
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_414:
	push	rax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404ebb
	.globl sub_404ebb
	.type sub_404ebb, @function
sub_404ebb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404ec0

	.globl wrapf
	.type wrapf, @function
wrapf:
	push	rbx
	sub	rsp, 0xe0
	mov	rbx, rdi
	test	al, al
	je	.label_415
	movaps	xmmword ptr [rsp + 0x60], xmm0
	movaps	xmmword ptr [rsp + 0x70], xmm1
	movaps	xmmword ptr [rsp + 0x80], xmm2
	movaps	xmmword ptr [rsp + 0x90], xmm3
	movaps	xmmword ptr [rsp + 0xa0], xmm4
	movaps	xmmword ptr [rsp + 0xb0], xmm5
	movaps	xmmword ptr [rsp + 0xc0], xmm6
	movaps	xmmword ptr [rsp + 0xd0], xmm7
.label_415:
	mov	qword ptr [rsp + 0x58], r9
	mov	qword ptr [rsp + 0x50], r8
	mov	qword ptr [rsp + 0x48], rcx
	mov	qword ptr [rsp + 0x40], rdx
	mov	qword ptr [rsp + 0x38], rsi
	lea	rax, [rsp + 0x30]
	mov	qword ptr [rsp + 0x20], rax
	lea	rax, [rsp + 0xf0]
	mov	qword ptr [rsp + 0x18], rax
	mov	dword ptr [rsp + 0x14], 0x30
	mov	dword ptr [rsp + 0x10], 8
	lea	rdi, [rsp + 8]
	lea	rcx, [rsp + 0x10]
	mov	esi, 1
	mov	rdx, rbx
	call	__vasprintf_chk
	mov	ebx, eax
	test	ebx, ebx
	js	.label_416
	mov	eax, dword ptr [rip + current_col]
	test	eax, eax
	jle	.label_417
	mov	esi, dword ptr [rip + max_col]
	sub	esi, eax
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rdi + 0x28]
	mov	rdx, qword ptr [rdi + 0x30]
	cmp	esi, ebx
	jge	.label_421
	cmp	rcx, rdx
	jae	.label_419
	lea	rax, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rax
	mov	byte ptr [rcx], 0xa
	mov	dword ptr [rip + current_col],  0
	jmp	.label_417
.label_421:
	cmp	rcx, rdx
	jae	.label_418
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], 0x20
.label_420:
	inc	eax
	mov	dword ptr [rip + current_col],  eax
.label_417:
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, qword ptr [rip + stdout]
	call	fputs_unlocked
	mov	rdi, qword ptr [rsp + 8]
	call	free
	add	dword ptr [rip + current_col],  ebx
	add	rsp, 0xe0
	pop	rbx
	ret	
.label_416:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x404ff2
	.globl sub_404ff2
	.type sub_404ff2, @function
sub_404ff2:

	nop	
	nop	dword ptr [rax]
.label_419:
	mov	esi, 0xa
	call	__overflow
	mov	dword ptr [rip + current_col],  0
	jmp	.label_417
.label_418:
	mov	esi, 0x20
	call	__overflow
	mov	eax, dword ptr [rip + current_col]
	jmp	.label_420
.label_425:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_422
	mov	eax, OFFSET FLAT:label_423
	jmp	.label_424
	.section	.text
	.align	16
	#Procedure 0x40502f
	.globl sub_40502f
	.type sub_40502f, @function
sub_40502f:

	nop	word ptr cs:[rax + rax]
.label_432:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_426
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_426
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_426
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_426
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_426
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_426
	cmp	byte ptr [rax + 7], 0
	je	.label_425
.label_426:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_427
	mov	eax, OFFSET FLAT:label_428
.label_424:
	cmove	rax, rcx
.label_431:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405082

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
	jne	.label_431
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_432
	cmp	ecx, 0x55
	jne	.label_426
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_426
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_426
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_426
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_426
	cmp	byte ptr [rax + 5], 0
	jne	.label_426
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_429
	mov	eax, OFFSET FLAT:label_430
	jmp	.label_424
	.section	.text
	.align	16
	#Procedure 0x4050f0
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x4050fe
	.globl sub_4050fe
	.type sub_4050fe, @function
sub_4050fe:

	nop	
	.section	.text
	.align	16
	#Procedure 0x405100

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
	js	.label_433
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_436
	cmp	r12d, 0x7fffffff
	je	.label_438
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
	jne	.label_434
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_434:
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
.label_436:
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
	jbe	.label_439
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_435
.label_439:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_437
	mov	rdi, r14
	call	free
.label_437:
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
.label_435:
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
.label_433:
	call	abort
.label_438:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4052bd
	.globl sub_4052bd
	.type sub_4052bd, @function
sub_4052bd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4052c0

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
	jne	.label_441
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_440
	test	cl, cl
	jne	.label_440
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_440
.label_441:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_440
	call	__errno_location
	mov	dword ptr [rax], 0
.label_440:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405320
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
	#Procedure 0x405395
	.globl sub_405395
	.type sub_405395, @function
sub_405395:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4053a0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_442
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_406
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4053d0

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	r12, rsi
	mov	dword ptr [rsp + 0x1c], edi
	mov	rdi, qword ptr [r12]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_308
	call	setlocale
	mov	edi, OFFSET FLAT:label_445
	mov	esi, OFFSET FLAT:label_463
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_445
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	dword ptr [rip + opterr],  0
	xor	eax, eax
	mov	qword ptr [rsp + 0x28], rax
	mov	ebp, 1
	mov	al, 1
	mov	dword ptr [rsp + 0x18], eax
	mov	r13d, 0
	xor	eax, eax
	mov	qword ptr [rsp + 0x38], rax
	xor	r15d, r15d
	xor	ebx, ebx
	jmp	.label_453
.label_474:
	mov	ebp, r12d
	mov	eax, dword ptr [rsp + 0x34]
	mov	r12, rbx
	mov	ebx, eax
	jmp	.label_453
	.section	.text
	.align	16
	#Procedure 0x40545e
	.globl sub_40545e
	.type sub_40545e, @function
sub_40545e:

	nop	
.label_552:
	test	rax, rax
	je	.label_474
	neg	rax
	nop	dword ptr [rax + rax]
.label_477:
	inc	r12
	inc	rax
	jne	.label_477
	jmp	.label_474
	.section	.text
	.align	16
	#Procedure 0x40547a
	.globl sub_40547a
	.type sub_40547a, @function
sub_40547a:

	nop	word ptr [rax + rax]
.label_453:
	mov	edi, dword ptr [rsp + 0x1c]
	sub	edi, r15d
	movsxd	rax, r15d
	lea	rsi, [r12 + rax*8]
	mov	edx, OFFSET FLAT:label_522
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	call	getopt_long
	cmp	eax, 0x45
	jg	.label_488
	cmp	eax, -1
	je	.label_490
	cmp	eax, 0xffffff7d
	je	.label_493
	cmp	eax, 0xffffff7e
	jne	.label_499
	jmp	.label_503
	.section	.text
	.align	16
	#Procedure 0x4054c5
	.globl sub_4054c5
	.type sub_4054c5, @function
sub_4054c5:

	nop	word ptr cs:[rax + rax]
.label_488:
	cmp	eax, 0x46
	je	.label_511
	cmp	eax, 0x61
	je	.label_507
	cmp	eax, 0x67
	jne	.label_499
	mov	ebx, 2
	mov	r13b, 1
	jmp	.label_510
	.section	.text
	.align	16
	#Procedure 0x4054e9
	.globl sub_4054e9
	.type sub_4054e9, @function
sub_4054e9:

	nop	dword ptr [rax]
.label_499:
	add	r15d, ebp
	movsxd	rax, r15d
	mov	rbp, qword ptr [r12 + rax*8]
	mov	esi, OFFSET FLAT:label_516
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	je	.label_482
	mov	esi, OFFSET FLAT:label_314
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	je	.label_482
	mov	dword ptr [rsp + 0x18], 0
.label_482:
	mov	dword ptr [rip + optind],  0
	mov	ebp, 1
	jmp	.label_510
.label_511:
	cmp	qword ptr [rsp + 0x28], 0
	jne	.label_528
	mov	rax, qword ptr [rip + optarg]
	mov	qword ptr [rsp + 0x28], rax
	jmp	.label_510
.label_507:
	mov	al, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	ebx, 1
.label_510:
	movsxd	r14, dword ptr [rip + optind]
	cmp	ebp, r14d
	jge	.label_453
	mov	rcx, r12
	mov	dword ptr [rsp + 0x34], ebx
	movsxd	r12, ebp
	movsxd	rax, r15d
	add	rax, r12
	mov	rbx, rcx
	lea	rdi, [rcx + rax*8]
	lea	rdx, [r12 + 1]
	cmp	rdx, r14
	cmovl	rdx, r14
	sub	rdx, r12
	shl	rdx, 3
	xor	esi, esi
	call	memset
	mov	eax, r14d
	sub	eax, ebp
	lea	rcx, [r14 - 1]
	sub	rcx, r12
	and	eax, 7
	cmp	rcx, 7
	jb	.label_552
	sub	r14, rax
	nop	dword ptr [rax + rax]
.label_559:
	add	r12, 8
	cmp	r14, r12
	jne	.label_559
	jmp	.label_552
.label_490:
	mov	r14d, ebx
	mov	eax, r13d
	mov	rbx, qword ptr [rsp + 0x38]
	and	al, bl
	test	al, 1
	jne	.label_563
	mov	eax, dword ptr [rsp + 0x18]
	test	al, 1
	mov	rbp, qword ptr [rsp + 0x28]
	jne	.label_567
	mov	eax, ebx
	or	al, r13b
	and	al, 1
	jne	.label_570
.label_567:
	test	rbp, rbp
	mov	r15, rbp
	jne	.label_569
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_444
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
.label_569:
	mov	eax, dword ptr [rsp + 0x18]
	or	r13b, al
	or	r13b, bl
	and	r13b, 1
	jne	.label_451
	lea	rax, [rsp + 0x17]
	mov	qword ptr [rsp], rax
	lea	r9, [rsp + 0x16]
	mov	edi, 1
	mov	r8d, OFFSET FLAT:main.check_mode
	mov	rsi, r15
	mov	rdx, r12
	mov	ecx, dword ptr [rsp + 0x1c]
	call	apply_settings
.label_451:
	test	rbp, rbp
	mov	ebx, r14d
	je	.label_466
	xor	edi, edi
	mov	edx, 0x800
	xor	ecx, ecx
	mov	rsi, r15
	call	fd_reopen
	test	eax, eax
	js	.label_460
	xor	edi, edi
	mov	esi, 3
	xor	eax, eax
	call	rpl_fcntl
	mov	ecx, eax
	cmp	ecx, -1
	je	.label_489
	and	ecx, 0xfffff7ff
	xor	edi, edi
	mov	esi, 4
	xor	eax, eax
	mov	edx, ecx
	call	rpl_fcntl
	test	eax, eax
	js	.label_489
.label_466:
	xor	edi, edi
	mov	esi, OFFSET FLAT:main.mode
	call	tcgetattr
	test	eax, eax
	jne	.label_460
	test	r13b, r13b
	jne	.label_502
	mov	byte ptr [rsp + 0x16], 0
	mov	byte ptr [rsp + 0x17], 0
	lea	rax, [rsp + 0x17]
	mov	qword ptr [rsp], rax
	lea	r9, [rsp + 0x16]
	xor	edi, edi
	mov	r8d, OFFSET FLAT:main.mode
	mov	rsi, r15
	mov	rdx, r12
	mov	ecx, dword ptr [rsp + 0x1c]
	call	apply_settings
	cmp	byte ptr [rsp + 0x17], 0
	je	.label_446
	mov	esi, dword ptr [rip + tcsetattr_options]
	xor	edi, edi
	mov	edx, OFFSET FLAT:main.mode
	call	tcsetattr
	test	eax, eax
	jne	.label_460
	xor	edi, edi
	mov	esi, OFFSET FLAT:main.new_mode
	call	tcgetattr
	test	eax, eax
	jne	.label_460
	mov	edi, OFFSET FLAT:main.mode
	mov	esi, OFFSET FLAT:main.new_mode
	mov	edx, 0x3c
	call	memcmp
	test	eax, eax
	je	.label_446
	and	dword ptr [rip + label_532],  0xeff0ffff
	cmp	byte ptr [rsp + 0x16], 0
	jne	.label_533
	mov	edi, OFFSET FLAT:main.mode
	mov	esi, OFFSET FLAT:main.new_mode
	mov	edx, 0x3c
	call	memcmp
	test	eax, eax
	je	.label_446
.label_533:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_544
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r15
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_502:
	lea	rdx, [rsp + 0x20]
	mov	edi, 1
	mov	esi, 0x5413
	xor	eax, eax
	call	ioctl
	test	eax, eax
	jne	.label_484
	movzx	eax, word ptr [rsp + 0x22]
	test	eax, eax
	jne	.label_561
.label_484:
	mov	edi, OFFSET FLAT:label_306
	call	getenv
	test	rax, rax
	je	.label_564
	lea	rcx, [rsp + 0x40]
	xor	esi, esi
	xor	edx, edx
	mov	r8d, OFFSET FLAT:label_308
	mov	rdi, rax
	call	xstrtol
	test	eax, eax
	jne	.label_564
	mov	rax, qword ptr [rsp + 0x40]
	lea	rcx, [rax - 1]
	cmp	rcx, 0x7fffffff
	jb	.label_561
.label_564:
	mov	qword ptr [rsp + 0x40], 0x50
	mov	eax, 0x50
.label_561:
	mov	dword ptr [rip + max_col],  eax
	mov	dword ptr [rip + current_col],  0
	cmp	ebx, 2
	je	.label_452
	cmp	ebx, 1
	je	.label_458
	test	ebx, ebx
	jne	.label_446
	mov	edi, OFFSET FLAT:main.mode
	mov	esi, 1
	call	display_speed
	movzx	esi, byte ptr [rip + label_468]
	mov	edi, OFFSET FLAT:label_469
	xor	eax, eax
	call	wrapf
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_476
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
.label_487:
	mov	dword ptr [rip + current_col],  0
	mov	r14b, 1
	mov	ebp, OFFSET FLAT:label_367
	jmp	.label_480
	.section	.text
	.align	16
	#Procedure 0x40589b
	.globl sub_40589b
	.type sub_40589b, @function
sub_40589b:

	nop	dword ptr [rax + rax]
.label_506:
	add	rbp, 0x18
.label_480:
	mov	r15, qword ptr [rbp - 0x10]
	cmp	byte ptr [r15], 0x6d
	jne	.label_447
	cmp	byte ptr [r15 + 1], 0x69
	jne	.label_447
	cmp	byte ptr [r15 + 2], 0x6e
	jne	.label_447
	cmp	byte ptr [r15 + 3], 0
	je	.label_501
	nop	word ptr [rax + rax]
.label_447:
	mov	rax, qword ptr [rbp]
	movzx	ebx, byte ptr [rax + label_505]
	cmp	bl, byte ptr [rbp - 8]
	je	.label_506
	mov	esi, OFFSET FLAT:label_368
	mov	rdi, r15
	call	strcmp
	test	eax, eax
	je	.label_506
	test	bl, bl
	mov	edx, OFFSET FLAT:label_517
	je	.label_518
	cmp	bl, 0x20
	jb	.label_520
	cmp	bl, 0x7e
	ja	.label_521
	mov	byte ptr [rip + visible.buf],  bl
	mov	eax, OFFSET FLAT:label_523
	jmp	.label_492
.label_520:
	mov	byte ptr [rip + visible.buf],  0x5e
	add	bl, 0x40
	mov	byte ptr [rip + label_523],  bl
	jmp	.label_526
.label_521:
	cmp	bl, 0x7f
	jne	.label_527
	mov	word ptr [rip + visible.buf],  0x3f5e
.label_526:
	mov	eax, OFFSET FLAT:label_455
.label_492:
	mov	byte ptr [rax], 0
	mov	edx, OFFSET FLAT:visible.buf
.label_518:
	xor	r14d, r14d
	mov	edi, OFFSET FLAT:label_530
	xor	eax, eax
	mov	rsi, r15
	call	wrapf
	jmp	.label_506
.label_527:
	mov	word ptr [rip + visible.buf],  0x2d4d
	cmp	bl, 0xa0
	jb	.label_536
	cmp	bl, 0xff
	je	.label_541
	xor	bl, 0x80
	mov	byte ptr [rip + label_455],  bl
	mov	eax, OFFSET FLAT:label_491
	jmp	.label_492
.label_536:
	mov	byte ptr [rip + label_455],  0x5e
	add	bl, 0xc0
	mov	byte ptr [rip + label_491],  bl
	mov	eax, OFFSET FLAT:label_456
	jmp	.label_492
.label_541:
	mov	word ptr [rip + label_455],  0x3f5e
	mov	eax, OFFSET FLAT:label_456
	jmp	.label_492
.label_452:
	mov	edx, dword ptr [rip + main.mode]
	mov	ecx, dword ptr [rip + label_553]
	mov	r8d, dword ptr [rip + label_554]
	mov	r9d, dword ptr [rip + label_472]
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_555
	xor	eax, eax
	call	__printf_chk
	mov	rbx, -0x20
	nop	word ptr cs:[rax + rax]
.label_571:
	movzx	edx, byte ptr [rbx + label_565]
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_566
	xor	eax, eax
	call	__printf_chk
	inc	rbx
	jne	.label_571
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_572
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
	jmp	.label_446
.label_458:
	mov	edi, OFFSET FLAT:main.mode
	mov	esi, 1
	call	display_speed
	lea	rdx, [rsp + 0x20]
	xor	edi, edi
	mov	esi, 0x5413
	xor	eax, eax
	call	ioctl
	test	eax, eax
	je	.label_462
	call	__errno_location
	mov	ebx, dword ptr [rax]
	cmp	ebx, 0x16
	je	.label_465
	jmp	.label_470
.label_501:
	test	byte ptr [rip + label_472],  2
	jne	.label_473
	movzx	esi, byte ptr [rip + label_448]
	movzx	edx, byte ptr [rip + label_449]
	mov	edi, OFFSET FLAT:label_475
	xor	eax, eax
	call	wrapf
	jmp	.label_479
.label_473:
	test	r14b, 1
	jne	.label_479
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_481
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
.label_479:
	mov	dword ptr [rip + current_col],  0
	xor	eax, eax
	mov	r14b, 1
	mov	rbx, -0xb20
	jmp	.label_461
.label_462:
	movzx	esi, word ptr [rsp + 0x20]
	movzx	edx, word ptr [rsp + 0x22]
	mov	edi, OFFSET FLAT:label_401
	xor	eax, eax
	call	wrapf
.label_465:
	movzx	esi, byte ptr [rip + label_468]
	mov	edi, OFFSET FLAT:label_469
	xor	eax, eax
	call	wrapf
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_515
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
.label_500:
	mov	dword ptr [rip + current_col],  0
	mov	ebp, OFFSET FLAT:label_367
	jmp	.label_525
	.section	.text
	.align	16
	#Procedure 0x405b1d
	.globl sub_405b1d
	.type sub_405b1d, @function
sub_405b1d:

	nop	dword ptr [rax]
.label_537:
	add	rbp, 0x18
.label_525:
	mov	rbx, qword ptr [rbp - 0x10]
	cmp	byte ptr [rbx], 0x6d
	jne	.label_508
	cmp	byte ptr [rbx + 1], 0x69
	jne	.label_508
	cmp	byte ptr [rbx + 2], 0x6e
	jne	.label_508
	cmp	byte ptr [rbx + 3], 0
	je	.label_529
	nop	word ptr cs:[rax + rax]
.label_508:
	mov	esi, OFFSET FLAT:label_368
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	je	.label_537
	mov	rax, qword ptr [rbp]
	movzx	eax, byte ptr [rax + label_505]
	test	al, al
	mov	edx, OFFSET FLAT:label_517
	je	.label_539
	cmp	al, 0x20
	jb	.label_543
	cmp	al, 0x7e
	ja	.label_546
	mov	byte ptr [rip + visible.buf],  al
	mov	eax, OFFSET FLAT:label_523
	jmp	.label_457
.label_543:
	mov	byte ptr [rip + visible.buf],  0x5e
	add	al, 0x40
	mov	byte ptr [rip + label_523],  al
	jmp	.label_548
.label_546:
	cmp	al, 0x7f
	jne	.label_551
	mov	word ptr [rip + visible.buf],  0x3f5e
	nop	dword ptr [rax + rax]
.label_548:
	mov	eax, OFFSET FLAT:label_455
.label_457:
	mov	byte ptr [rax], 0
	mov	edx, OFFSET FLAT:visible.buf
.label_539:
	mov	edi, OFFSET FLAT:label_530
	xor	eax, eax
	mov	rsi, rbx
	call	wrapf
	jmp	.label_537
.label_551:
	mov	word ptr [rip + visible.buf],  0x2d4d
	cmp	al, 0xa0
	jb	.label_513
	cmp	al, 0xff
	je	.label_514
	xor	al, 0x80
	mov	byte ptr [rip + label_455],  al
	mov	eax, OFFSET FLAT:label_491
	jmp	.label_457
.label_513:
	mov	byte ptr [rip + label_455],  0x5e
	add	al, 0xc0
	mov	byte ptr [rip + label_491],  al
	mov	eax, OFFSET FLAT:label_456
	jmp	.label_457
.label_514:
	mov	word ptr [rip + label_455],  0x3f5e
	mov	eax, OFFSET FLAT:label_456
	jmp	.label_457
.label_529:
	movzx	esi, byte ptr [rip + label_448]
	movzx	edx, byte ptr [rip + label_449]
	mov	edi, OFFSET FLAT:label_450
	xor	eax, eax
	call	wrapf
	cmp	dword ptr [rip + current_col],  0
	je	.label_504
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_459
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
.label_504:
	mov	dword ptr [rip + current_col],  0
	mov	rbx, -0xb20
	xor	r15d, r15d
	jmp	.label_471
.label_519:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_478
	.section	.text
	.align	16
	#Procedure 0x405c7c
	.globl sub_405c7c
	.type sub_405c7c, @function
sub_405c7c:

	nop	dword ptr [rax]
.label_471:
	movzx	r14d, byte ptr [rbx + label_247]
	test	r14b, 8
	jne	.label_494
	mov	ebp, dword ptr [rbx + label_241]
	cmp	ebp, r15d
	je	.label_483
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_519
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
.label_478:
	mov	dword ptr [rip + current_col],  0
	mov	r15d, ebp
.label_483:
	cmp	r15d, 5
	jae	.label_498
	mov	rax, qword ptr [rbx + label_258]
	test	rax, rax
	jne	.label_534
	mov	rax, qword ptr [rbx + label_259]
.label_534:
	cmp	r15d, 4
	je	.label_512
	movsxd	rcx, r15d
	mov	rcx, qword ptr [(rcx * 8) + label_496]
	mov	ecx, dword ptr [rcx]
	and	rcx, rax
	cmp	rcx, qword ptr [rbx + label_259]
	jne	.label_497
	mov	rsi, qword ptr [rbx + label_358]
	mov	edi, OFFSET FLAT:label_406
	jmp	.label_524
	.section	.text
	.align	16
	#Procedure 0x405d14
	.globl sub_405d14
	.type sub_405d14, @function
sub_405d14:

	nop	word ptr cs:[rax + rax]
.label_497:
	test	r14b, 4
	je	.label_494
	mov	rsi, qword ptr [rbx + label_358]
	mov	edi, OFFSET FLAT:label_454
.label_524:
	xor	eax, eax
	call	wrapf
.label_494:
	add	rbx, 0x20
	jne	.label_471
	jmp	.label_549
.label_550:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_535
	.section	.text
	.align	16
	#Procedure 0x405d54
	.globl sub_405d54
	.type sub_405d54, @function
sub_405d54:

	nop	word ptr cs:[rax + rax]
.label_461:
	movsx	r15d, byte ptr [rbx + label_247]
	test	r15b, 8
	jne	.label_538
	mov	ebp, dword ptr [rbx + label_241]
	cmp	ebp, eax
	jne	.label_542
	mov	ebp, eax
	jmp	.label_545
	.section	.text
	.align	16
	#Procedure 0x405d7c
	.globl sub_405d7c
	.type sub_405d7c, @function
sub_405d7c:

	nop	dword ptr [rax]
.label_538:
	mov	ebp, eax
	jmp	.label_485
	.section	.text
	.align	16
	#Procedure 0x405d87
	.globl sub_405d87
	.type sub_405d87, @function
sub_405d87:

	nop	word ptr [rax + rax]
.label_542:
	test	r14b, 1
	jne	.label_545
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_550
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
.label_535:
	mov	dword ptr [rip + current_col],  0
	mov	r14b, 1
.label_545:
	cmp	ebp, 5
	jae	.label_558
	mov	rax, qword ptr [rbx + label_258]
	test	rax, rax
	jne	.label_495
	mov	rax, qword ptr [rbx + label_259]
.label_495:
	cmp	ebp, 4
	je	.label_486
	movsxd	rcx, ebp
	mov	rcx, qword ptr [(rcx * 8) + label_496]
	mov	ecx, dword ptr [rcx]
	and	rcx, rax
	cmp	rcx, qword ptr [rbx + label_259]
	jne	.label_568
	test	r15b, 2
	je	.label_485
	mov	rsi, qword ptr [rbx + label_358]
	xor	r14d, r14d
	mov	edi, OFFSET FLAT:label_406
	jmp	.label_443
	.section	.text
	.align	16
	#Procedure 0x405e14
	.globl sub_405e14
	.type sub_405e14, @function
sub_405e14:

	nop	word ptr cs:[rax + rax]
.label_568:
	and	r15d, 5
	cmp	r15d, 5
	jne	.label_485
	mov	rsi, qword ptr [rbx + label_358]
	xor	r14d, r14d
	mov	edi, OFFSET FLAT:label_454
.label_443:
	xor	eax, eax
	call	wrapf
.label_485:
	add	rbx, 0x20
	mov	eax, ebp
	jne	.label_461
	test	r14b, 1
	jne	.label_464
.label_549:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_467
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
.label_464:
	mov	dword ptr [rip + current_col],  0
.label_446:
	xor	eax, eax
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_467:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_464
.label_476:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_487
.label_572:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_446
.label_515:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_500
.label_459:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_504
.label_481:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_479
.label_493:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	esi, OFFSET FLAT:label_155
	mov	edx, OFFSET FLAT:label_131
	mov	r8d, OFFSET FLAT:label_509
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_503:
	xor	edi, edi
	call	usage
.label_460:
	call	__errno_location
	mov	ebx, dword ptr [rax]
.label_470:
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r15
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_406
	xor	eax, eax
	mov	esi, ebx
	call	error
.label_498:
	call	abort
.label_512:
	mov	edi, OFFSET FLAT:label_319
	mov	esi, OFFSET FLAT:label_320
	mov	edx, 0x7f6
	mov	ecx, OFFSET FLAT:label_531
	call	__assert_fail
.label_558:
	call	abort
.label_486:
	mov	edi, OFFSET FLAT:label_319
	mov	esi, OFFSET FLAT:label_320
	mov	edx, 0x7a2
	mov	ecx, OFFSET FLAT:label_540
	call	__assert_fail
.label_489:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_547
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r15
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbx
	call	error
.label_563:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_556
	jmp	.label_557
.label_570:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_560
	jmp	.label_557
.label_528:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_562
.label_557:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	nop	word ptr cs:[rax + rax]
.label_577:
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r14
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_406
	xor	eax, eax
	mov	esi, r15d
	call	error
	nop	
	.section	.text
	.align	16
	#Procedure 0x406028

	.globl set_window_size
	.type set_window_size, @function
set_window_size:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rdx
	mov	ebp, esi
	mov	ebx, edi
	lea	rdx, [rsp]
	xor	edi, edi
	mov	esi, 0x5413
	xor	eax, eax
	call	ioctl
	test	eax, eax
	je	.label_575
	call	__errno_location
	mov	r15d, dword ptr [rax]
	cmp	r15d, 0x16
	jne	.label_577
	mov	qword ptr [rsp], 0
.label_575:
	test	ebx, ebx
	js	.label_573
	mov	word ptr [rsp], bx
.label_573:
	test	ebp, ebp
	js	.label_576
	mov	word ptr [rsp + 2], bp
.label_576:
	lea	rdx, [rsp]
	xor	edi, edi
	mov	esi, 0x5414
	xor	eax, eax
	call	ioctl
	test	eax, eax
	jne	.label_574
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_574:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r14
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_406
	xor	eax, eax
	mov	esi, ebx
	call	error
.label_578:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4060c5
	.globl sub_4060c5
	.type sub_4060c5, @function
sub_4060c5:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4060c9
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
	je	.label_578
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
	.section	.text
	.align	16
	#Procedure 0x406130

	.globl xstrtol
	.type xstrtol, @function
xstrtol:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r14, r8
	mov	qword ptr [rsp + 8], rcx
	mov	ebp, edx
	mov	r13, rdi
	cmp	ebp, 0x25
	jae	.label_589
	test	rsi, rsi
	lea	r15, [rsp + 0x20]
	cmovne	r15, rsi
	call	__errno_location
	mov	rbx, rax
	mov	dword ptr [rbx], 0
	mov	rdi, r13
	mov	rsi, r15
	mov	edx, ebp
	call	strtol
	mov	r12, rax
	mov	rcx, qword ptr [r15]
	cmp	rcx, r13
	je	.label_602
	mov	eax, dword ptr [rbx]
	xor	ebp, ebp
	test	eax, eax
	je	.label_604
	mov	ebp, 4
	cmp	eax, 0x22
	jne	.label_607
	mov	ebp, 1
.label_604:
	test	r14, r14
	je	.label_609
	mov	ebx, ebp
	jmp	.label_631
.label_602:
	mov	ebp, 4
	test	r14, r14
	je	.label_607
	movsx	esi, byte ptr [r13]
	test	esi, esi
	je	.label_607
	mov	rdi, r14
	mov	rbx, rcx
	call	strchr
	mov	rcx, rbx
	xor	ebx, ebx
	mov	r12d, 1
	test	rax, rax
	je	.label_607
.label_631:
	movsx	r13d, byte ptr [rcx]
	test	r13d, r13d
	je	.label_624
	mov	qword ptr [rsp + 0x10], rcx
	mov	rdi, r14
	mov	esi, r13d
	call	strchr
	test	rax, rax
	je	.label_580
	mov	edi, 1
	mov	r8d, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_583
	movabs	rcx, 0x814400308945
	bt	rcx, rax
	jae	.label_583
	mov	esi, 0x30
	mov	rdi, r14
	call	strchr
	mov	edi, 1
	mov	r8d, 0x400
	test	rax, rax
	je	.label_583
	mov	rax, qword ptr [rsp + 0x10]
	movsx	eax, byte ptr [rax + 1]
	mov	edi, 1
	mov	r8d, 0x400
	cmp	eax, 0x42
	je	.label_594
	cmp	eax, 0x44
	je	.label_594
	cmp	eax, 0x69
	jne	.label_583
	xor	eax, eax
	mov	rcx, qword ptr [rsp + 0x10]
	cmp	byte ptr [rcx + 2], 0x42
	sete	al
	lea	rdi, [rax + rax + 1]
	mov	r8d, 0x400
	jmp	.label_583
.label_609:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], r12
	jmp	.label_607
.label_594:
	mov	edi, 2
	mov	r8d, 0x3e8
.label_583:
	add	r13d, -0x42
	cmp	r13d, 0x35
	ja	.label_580
	movabs	r9, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	r14, r12
	jmp	qword ptr [(r13 * 8) + label_613]
.label_945:
	lea	r14, [r9 + 1]
	mov	rax, r14
	cqo	
	idiv	r8
	mov	r10, rax
	cmp	r12, r10
	mov	r11d, 1
	mov	rsi, r14
	mov	ecx, 1
	jl	.label_618
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, r12
	imul	rsi, r8
	xor	ecx, ecx
	cmp	rax, r12
	setl	cl
	cmovl	rsi, r9
.label_618:
	cmp	rsi, r10
	mov	rbp, r14
	jl	.label_582
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rbp, rsi
	imul	rbp, r8
	xor	r11d, r11d
	cmp	rax, rsi
	setl	r11b
	cmovl	rbp, r9
.label_582:
	or	r11d, ecx
	cmp	rbp, r10
	mov	ecx, 1
	jl	.label_586
	xor	edx, edx
	mov	rax, r9
	div	r8
	imul	r8, rbp
	xor	ecx, ecx
	cmp	rax, rbp
	setl	cl
	cmovl	r8, r9
	mov	r14, r8
.label_586:
	or	ecx, r11d
	jmp	.label_579
.label_580:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], r12
	or	ebx, 2
	jmp	.label_591
.label_946:
	lea	r14, [r9 + 1]
	mov	rax, r14
	cqo	
	idiv	r8
	cmp	r12, rax
	mov	ecx, 1
	jl	.label_579
	xor	edx, edx
	mov	rax, r9
	div	r8
	imul	r8, r12
	xor	ecx, ecx
	cmp	rax, r12
	setl	cl
	cmovl	r8, r9
	mov	r14, r8
	jmp	.label_579
.label_947:
	lea	r14, [r9 + 1]
	mov	rax, r14
	cqo	
	idiv	r8
	mov	rbp, rax
	cmp	r12, rbp
	mov	ecx, 1
	mov	rsi, r14
	mov	r10d, 1
	jl	.label_612
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, r12
	imul	rsi, r8
	xor	r10d, r10d
	cmp	rax, r12
	setl	r10b
	cmovl	rsi, r9
.label_612:
	cmp	rsi, rbp
	jl	.label_625
	xor	edx, edx
	mov	rax, r9
	div	r8
	imul	r8, rsi
	xor	ecx, ecx
	cmp	rax, rsi
	setl	cl
	cmovl	r8, r9
	mov	r14, r8
.label_625:
	or	ecx, r10d
	jmp	.label_579
.label_949:
	mov	r13, rdi
	lea	r14, [r9 + 1]
	mov	rax, r14
	cqo	
	idiv	r8
	mov	r10, rax
	cmp	r12, r10
	mov	r11d, 1
	mov	rsi, r14
	mov	ecx, 1
	jl	.label_584
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, r12
	imul	rsi, r8
	xor	ecx, ecx
	cmp	rax, r12
	setl	cl
	cmovl	rsi, r9
.label_584:
	cmp	rsi, r10
	mov	rdi, r14
	jl	.label_593
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rdi, rsi
	imul	rdi, r8
	xor	r11d, r11d
	cmp	rax, rsi
	setl	r11b
	cmovl	rdi, r9
.label_593:
	or	r11d, ecx
	cmp	rdi, r10
	mov	ecx, 1
	mov	rsi, r14
	mov	ebp, 1
	jl	.label_599
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, rdi
	imul	rsi, r8
	xor	ebp, ebp
	cmp	rax, rdi
	setl	bpl
	cmovl	rsi, r9
.label_599:
	or	ebp, r11d
	cmp	rsi, r10
	jl	.label_611
	xor	edx, edx
	mov	rax, r9
	div	r8
	imul	r8, rsi
	xor	ecx, ecx
	cmp	rax, rsi
	setl	cl
	cmovl	r8, r9
	mov	r14, r8
.label_611:
	or	ecx, ebp
	mov	rdi, r13
	jmp	.label_579
.label_943:
	movabs	rax, 0xffe0000000000000
	cmp	r12, rax
	jl	.label_619
	mov	r14, r12
	shl	r14, 0xa
	movabs	rax, 0x1fffffffffffff
	jmp	.label_622
.label_944:
	lea	r14, [r9 + 1]
	mov	rax, r14
	cqo	
	idiv	r8
	mov	r10, rax
	cmp	r12, r10
	mov	r13d, 1
	mov	rcx, r14
	mov	esi, 1
	jl	.label_620
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, r12
	imul	rcx, r8
	xor	esi, esi
	cmp	rax, r12
	setl	sil
	cmovl	rcx, r9
.label_620:
	mov	qword ptr [rsp + 0x18], rdi
	cmp	rcx, r10
	mov	rbp, r14
	jl	.label_590
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rbp, rcx
	imul	rbp, r8
	xor	r13d, r13d
	cmp	rax, rcx
	setl	r13b
	cmovl	rbp, r9
.label_590:
	or	r13d, esi
	cmp	rbp, r10
	mov	r11d, 1
	mov	rcx, r14
	mov	edi, 1
	jl	.label_598
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rbp
	imul	rcx, r8
	xor	edi, edi
	cmp	rax, rbp
	setl	dil
	cmovl	rcx, r9
.label_598:
	or	edi, r13d
	cmp	rcx, r10
	mov	rbp, r14
	jl	.label_608
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rbp, rcx
	imul	rbp, r8
	xor	r11d, r11d
	cmp	rax, rcx
	setl	r11b
	cmovl	rbp, r9
.label_608:
	or	r11d, edi
	cmp	rbp, r10
	mov	ecx, 1
	mov	rdi, r14
	mov	r12d, 1
	jl	.label_615
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rdi, rbp
	imul	rdi, r8
	xor	r12d, r12d
	cmp	rax, rbp
	setl	r12b
	cmovl	rdi, r9
.label_615:
	or	r12d, r11d
	cmp	rdi, r10
	jl	.label_627
	xor	edx, edx
	mov	rax, r9
	div	r8
	imul	r8, rdi
	xor	ecx, ecx
	cmp	rax, rdi
	setl	cl
	cmovl	r8, r9
	mov	r14, r8
.label_627:
	or	ecx, r12d
	mov	rdi, qword ptr [rsp + 0x18]
	jmp	.label_579
.label_948:
	lea	r14, [r9 + 1]
	mov	rax, r14
	cqo	
	idiv	r8
	mov	r10, rax
	cmp	r12, r10
	mov	r13d, 1
	mov	rcx, r14
	mov	esi, 1
	jl	.label_587
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, r12
	imul	rcx, r8
	xor	esi, esi
	cmp	rax, r12
	setl	sil
	cmovl	rcx, r9
.label_587:
	mov	r12, rdi
	cmp	rcx, r10
	mov	rbp, r14
	jl	.label_601
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rbp, rcx
	imul	rbp, r8
	xor	r13d, r13d
	cmp	rax, rcx
	setl	r13b
	cmovl	rbp, r9
.label_601:
	or	r13d, esi
	cmp	rbp, r10
	mov	r11d, 1
	mov	rcx, r14
	mov	edi, 1
	jl	.label_605
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rbp
	imul	rcx, r8
	xor	edi, edi
	cmp	rax, rbp
	setl	dil
	cmovl	rcx, r9
.label_605:
	or	edi, r13d
	cmp	rcx, r10
	mov	rbp, r14
	jl	.label_614
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rbp, rcx
	imul	rbp, r8
	xor	r11d, r11d
	cmp	rax, rcx
	setl	r11b
	cmovl	rbp, r9
.label_614:
	or	r11d, edi
	cmp	rbp, r10
	mov	ecx, 1
	jl	.label_623
	xor	edx, edx
	mov	rax, r9
	div	r8
	imul	r8, rbp
	xor	ecx, ecx
	cmp	rax, rbp
	setl	cl
	cmovl	r8, r9
	mov	r14, r8
.label_623:
	or	ecx, r11d
	mov	rdi, r12
	jmp	.label_579
.label_950:
	lea	r14, [r9 + 1]
	mov	rax, r14
	cqo	
	idiv	r8
	mov	r10, rax
	cmp	r12, r10
	mov	r13d, 1
	mov	rsi, r14
	mov	ebp, 1
	jl	.label_585
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, r12
	imul	rsi, r8
	xor	ebp, ebp
	cmp	rax, r12
	setl	bpl
	cmovl	rsi, r9
.label_585:
	cmp	rsi, r10
	mov	rcx, r14
	jl	.label_628
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rsi
	imul	rcx, r8
	xor	r13d, r13d
	cmp	rax, rsi
	setl	r13b
	cmovl	rcx, r9
.label_628:
	or	r13d, ebp
	cmp	rcx, r10
	mov	r11d, 1
	mov	rsi, r14
	mov	ebp, 1
	jl	.label_600
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, rcx
	imul	rsi, r8
	xor	ebp, ebp
	cmp	rax, rcx
	setl	bpl
	cmovl	rsi, r9
.label_600:
	or	ebp, r13d
	cmp	rsi, r10
	mov	rcx, r14
	jl	.label_630
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rsi
	imul	rcx, r8
	xor	r11d, r11d
	cmp	rax, rsi
	setl	r11b
	cmovl	rcx, r9
.label_630:
	or	r11d, ebp
	cmp	rcx, r10
	mov	r12d, 1
	mov	rsi, r14
	mov	r13d, 1
	jl	.label_621
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, rcx
	imul	rsi, r8
	xor	r13d, r13d
	cmp	rax, rcx
	setl	r13b
	cmovl	rsi, r9
.label_621:
	or	r13d, r11d
	cmp	rsi, r10
	mov	rbp, r14
	jl	.label_581
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rbp, rsi
	imul	rbp, r8
	xor	r12d, r12d
	cmp	rax, rsi
	setl	r12b
	cmovl	rbp, r9
.label_581:
	or	r12d, r13d
	cmp	rbp, r10
	mov	ecx, 1
	mov	rsi, r14
	mov	r11d, 1
	jl	.label_588
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, rbp
	imul	rsi, r8
	xor	r11d, r11d
	cmp	rax, rbp
	setl	r11b
	cmovl	rsi, r9
.label_588:
	or	r11d, r12d
	cmp	rsi, r10
	jl	.label_597
	xor	edx, edx
	mov	rax, r9
	div	r8
	imul	r8, rsi
	xor	ecx, ecx
	cmp	rax, rsi
	setl	cl
	cmovl	r8, r9
	mov	r14, r8
.label_597:
	or	ecx, r11d
	jmp	.label_579
.label_951:
	lea	r14, [r9 + 1]
	mov	rax, r14
	cqo	
	idiv	r8
	mov	r10, rax
	cmp	r12, r10
	mov	r13d, 1
	mov	rsi, r14
	mov	ebp, 1
	jl	.label_606
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, r12
	imul	rsi, r8
	xor	ebp, ebp
	cmp	rax, r12
	setl	bpl
	cmovl	rsi, r9
.label_606:
	cmp	rsi, r10
	mov	rcx, r14
	jl	.label_617
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rsi
	imul	rcx, r8
	xor	r13d, r13d
	cmp	rax, rsi
	setl	r13b
	cmovl	rcx, r9
.label_617:
	or	r13d, ebp
	cmp	rcx, r10
	mov	r11d, 1
	mov	rsi, r14
	mov	ebp, 1
	jl	.label_626
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, rcx
	imul	rsi, r8
	xor	ebp, ebp
	cmp	rax, rcx
	setl	bpl
	cmovl	rsi, r9
.label_626:
	or	ebp, r13d
	cmp	rsi, r10
	mov	rcx, r14
	jl	.label_616
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rsi
	imul	rcx, r8
	xor	r11d, r11d
	cmp	rax, rsi
	setl	r11b
	cmovl	rcx, r9
.label_616:
	or	r11d, ebp
	cmp	rcx, r10
	mov	r12d, 1
	mov	rsi, r14
	mov	r13d, 1
	jl	.label_592
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, rcx
	imul	rsi, r8
	xor	r13d, r13d
	cmp	rax, rcx
	setl	r13b
	cmovl	rsi, r9
.label_592:
	or	r13d, r11d
	cmp	rsi, r10
	mov	rbp, r14
	jl	.label_603
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rbp, rsi
	imul	rbp, r8
	xor	r12d, r12d
	cmp	rax, rsi
	setl	r12b
	cmovl	rbp, r9
.label_603:
	or	r12d, r13d
	cmp	rbp, r10
	mov	ecx, 1
	jl	.label_610
	xor	edx, edx
	mov	rax, r9
	div	r8
	imul	r8, rbp
	xor	ecx, ecx
	cmp	rax, rbp
	setl	cl
	cmovl	r8, r9
	mov	r14, r8
.label_610:
	or	ecx, r12d
	jmp	.label_579
.label_952:
	movabs	rax, 0xffc0000000000000
	cmp	r12, rax
	jl	.label_619
	mov	r14, r12
	shl	r14, 9
	movabs	rax, 0x3fffffffffffff
	jmp	.label_622
.label_953:
	movabs	rax, 0xc000000000000000
	cmp	r12, rax
	jge	.label_629
.label_619:
	inc	r9
	mov	ecx, 1
	mov	r14, r9
	jmp	.label_579
.label_629:
	lea	r14, [r12 + r12]
	movabs	rax, 0x3fffffffffffffff
.label_622:
	xor	ecx, ecx
	cmp	r12, rax
	setg	cl
	cmovg	r14, r9
.label_579:
	or	ecx, ebx
	mov	rdx, qword ptr [rsp + 0x10]
	lea	rax, [rdx + rdi]
	mov	qword ptr [r15], rax
	lea	ebx, [rcx + 2]
	cmp	byte ptr [rdx + rdi], 0
	cmove	ebx, ecx
	mov	r12, r14
.label_624:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], r12
.label_591:
	mov	ebp, ebx
.label_607:
	mov	eax, ebp
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_589:
	mov	edi, OFFSET FLAT:label_23
	mov	esi, OFFSET FLAT:label_595
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_596
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x406a79
	.globl sub_406a79
	.type sub_406a79, @function
sub_406a79:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406a80

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_308
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_632
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x406aa5
	.globl sub_406aa5
	.type sub_406aa5, @function
sub_406aa5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406ab0
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
	#Procedure 0x406ae6
	.globl sub_406ae6
	.type sub_406ae6, @function
sub_406ae6:

	nop	word ptr cs:[rax + rax]
.label_634:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_633
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_633:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406b24
	.globl sub_406b24
	.type sub_406b24, @function
sub_406b24:

	nop	
	.section	.text
	.align	16
	#Procedure 0x406b26

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
	jne	.label_635
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_635
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_634
.label_635:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
	.section	.text
	.align	16
	#Procedure 0x406b60
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x406b6a
	.globl sub_406b6a
	.type sub_406b6a, @function
sub_406b6a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406b70
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
	je	.label_637
	test	r14, r14
	je	.label_636
.label_637:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_636:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x406ba6
	.globl sub_406ba6
	.type sub_406ba6, @function
sub_406ba6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406bb0
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
	#Procedure 0x406bd3
	.globl sub_406bd3
	.type sub_406bd3, @function
sub_406bd3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406be0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_638
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_641:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_641
.label_638:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_642
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_639], OFFSET FLAT:slot0
.label_642:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_640
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_640:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x406c71
	.globl sub_406c71
	.type sub_406c71, @function
sub_406c71:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406c80
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
	je	.label_643
	mov	qword ptr [rax], rbx
.label_643:
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
	#Procedure 0x406d6c
	.globl sub_406d6c
	.type sub_406d6c, @function
sub_406d6c:

	nop	dword ptr [rax]
.label_973:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_644
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
.label_976:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_656
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
	jmp	.label_646
.label_979:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_658
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
	jmp	.label_646
.label_978:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_647
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
.label_646:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x406e97
	.globl sub_406e97
	.type sub_406e97, @function
sub_406e97:

	nop	dword ptr [rax + rax]
.label_974:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_645
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
	jmp	.label_646
.label_977:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_654
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
	jmp	.label_646
.label_971:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_655
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
	.section	.text
	.align	16
	#Procedure 0x406f59

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
	je	.label_651
	mov	edx, OFFSET FLAT:label_661
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_650
.label_970:
	add	rsp, 8
	jmp	.label_646
.label_651:
	mov	edx, OFFSET FLAT:label_652
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_650:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_657
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
	mov	esi, OFFSET FLAT:label_653
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_659
	jmp	qword ptr [(r12 * 8) + label_662]
.label_972:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_648
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
.label_659:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_660
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
	jmp	.label_646
.label_975:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_649
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
	jmp	.label_646
	.section	.text
	.align	16
	#Procedure 0x4070d0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_663
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_664
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_666
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_131
	mov	ecx, OFFSET FLAT:label_132
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_665
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x407144
	.globl sub_407144
	.type sub_407144, @function
sub_407144:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407150

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_667
	test	rsi, rsi
	mov	ecx, 1
	je	.label_668
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_668
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_667:
	mov	ecx, 1
.label_668:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	16
	#Procedure 0x40719b
	.globl sub_40719b
	.type sub_40719b, @function
sub_40719b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4071a0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_669
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_669
	test	byte ptr [rbx + 1], 1
	je	.label_669
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_669:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	16
	#Procedure 0x4071d3
	.globl sub_4071d3
	.type sub_4071d3, @function
sub_4071d3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4071e0

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
	jmp	.label_685
	.section	.text
	.align	16
	#Procedure 0x40728f
	.globl sub_40728f
	.type sub_40728f, @function
sub_40728f:

	nop	
.label_730:
	cmp	r8d, 2
	setne	al
	cmp	byte ptr [rsp + 0xf], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa8]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x34]
	mov	rsi, qword ptr [rsp + 0xc0]
	je	.label_712
	or	al, dl
	jne	.label_712
	test	dil, 1
	jne	.label_727
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_712
	test	rbp, rbp
	mov	r15d, r8d
	mov	al, bl
	mov	qword ptr [rsp + 0x48], rcx
	mov	r12d, esi
	mov	r13, qword ptr [rsp + 0x68]
	je	.label_685
	jmp	.label_712
.label_854:
	mov	r8d, 5
	test	r12b, 1
	jne	.label_734
	test	rbp, rbp
	je	.label_737
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax], 0x22
.label_737:
	mov	r14d, 1
	jmp	.label_739
.label_855:
	mov	r13b, 1
	mov	r8d, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_427
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	sil, 1
	jmp	.label_677
.label_734:
	xor	r14d, r14d
.label_739:
	mov	eax, OFFSET FLAT:label_427
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	r13b, 1
	jmp	.label_771
	.section	.text
	.align	16
	#Procedure 0x40735f
	.globl sub_40735f
	.type sub_40735f, @function
sub_40735f:

	nop	
.label_685:
	mov	rbp, r13
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_757
	mov	r8d, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	jmp	qword ptr [(rcx * 8) + label_762]
.label_856:
	mov	r14d, edi
	mov	edi, OFFSET FLAT:label_768
	mov	esi, r15d
	mov	ebx, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x80], rax
	mov	edi, OFFSET FLAT:label_428
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebx
	mov	edi, r14d
	mov	qword ptr [rsp + 0x78], rax
.label_857:
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x80]
	jne	.label_780
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_780
	xor	r14d, r14d
	nop	
.label_744:
	cmp	r14, rbp
	jae	.label_791
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], al
.label_791:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_744
.label_780:
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
	jmp	.label_677
.label_849:
	xor	r8d, r8d
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_677
.label_852:
	mov	al, 1
.label_850:
	mov	r12b, 1
.label_853:
	test	r12b, 1
	mov	cl, 1
	je	.label_694
	mov	ecx, eax
.label_694:
	mov	al, cl
.label_851:
	mov	r8d, 2
	test	r12b, 1
	jne	.label_697
	test	rbp, rbp
	je	.label_704
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx], 0x27
.label_704:
	mov	r14d, 1
	jmp	.label_729
.label_697:
	xor	r14d, r14d
.label_729:
	mov	ecx, OFFSET FLAT:label_428
	mov	qword ptr [rsp + 0x58], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x50], rcx
	mov	r13d, eax
.label_771:
	mov	sil, r12b
.label_677:
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
	jmp	.label_716
	.section	.text
	.align	16
	#Procedure 0x407521
	.globl sub_407521
	.type sub_407521, @function
sub_407521:

	nop	word ptr cs:[rax + rax]
.label_718:
	inc	r12
.label_716:
	cmp	r11, -1
	je	.label_745
	cmp	r12, r11
	jne	.label_748
	jmp	.label_750
	.section	.text
	.align	16
	#Procedure 0x407543
	.globl sub_407543
	.type sub_407543, @function
sub_407543:

	nop	word ptr cs:[rax + rax]
.label_745:
	mov	rcx, -1
	cmp	byte ptr [r10 + r12], 0
	je	.label_788
.label_748:
	cmp	byte ptr [rsp + 0x37], 0
	je	.label_758
	mov	rax, qword ptr [rsp + 0x50]
	lea	rbx, [r12 + rax]
	cmp	rax, 2
	jb	.label_707
	cmp	r11, -1
	jne	.label_707
	mov	r15d, edi
	mov	rdi, r10
	mov	r13d, r9d
	call	strlen
	mov	r9d, r13d
	mov	r8, qword ptr [rsp + 0x38]
	mov	edi, r15d
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_707:
	cmp	rbx, r11
	jbe	.label_774
.label_758:
	xor	esi, esi
.label_671:
	movzx	r15d, byte ptr [r10 + r12]
	cmp	r15, 0x7e
	ja	.label_775
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_777]
.label_870:
	test	r12, r12
	jne	.label_721
	jmp	.label_772
	.section	.text
	.align	16
	#Procedure 0x4075d6
	.globl sub_4075d6
	.type sub_4075d6, @function
sub_4075d6:

	nop	word ptr cs:[rax + rax]
.label_774:
	mov	r13d, r9d
	mov	r15d, edi
	mov	rbx, r11
	lea	rdi, [r10 + r12]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	rdx, qword ptr [rsp + 0x50]
	call	memcmp
	test	eax, eax
	sete	sil
	jne	.label_793
	cmp	byte ptr [rsp + 0xf], 0
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	je	.label_671
	jmp	.label_705
.label_793:
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	jmp	.label_671
.label_874:
	xor	eax, eax
	cmp	r11, -1
	je	.label_687
	test	r12, r12
	jne	.label_691
	cmp	r11, 1
	je	.label_772
	xor	r13d, r13d
	jmp	.label_679
.label_863:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_700
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_705
	cmp	r8d, 2
	jne	.label_708
	mov	eax, r9d
	and	al, 1
	jne	.label_708
	cmp	r14, rbp
	jae	.label_711
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_711:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_713
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_713:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_719
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_719:
	add	r14, 3
	mov	r9b, 1
.label_708:
	mov	rcx, r14
	cmp	rcx, rbp
	jae	.label_726
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + rcx], 0x5c
.label_726:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r8d, 2
	je	.label_728
	lea	rdx, [r12 + 1]
	cmp	rdx, r11
	jae	.label_728
	mov	dl, byte ptr [r10 + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_728
	cmp	r14, rbp
	jae	.label_786
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x30
.label_786:
	lea	rdx, [rcx + 2]
	cmp	rdx, rbp
	jae	.label_699
	mov	ebx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rdx], 0x30
	mov	esi, ebx
.label_699:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_679
.label_864:
	mov	bl, 0x62
	jmp	.label_746
.label_865:
	mov	cl, 0x74
	jmp	.label_740
.label_866:
	mov	bl, 0x76
	jmp	.label_746
.label_867:
	mov	bl, 0x66
	jmp	.label_746
.label_868:
	mov	cl, 0x72
	jmp	.label_740
.label_871:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa8], rax
	cmp	r8d, 2
	jne	.label_755
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_676
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
	jae	.label_763
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_763:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_776
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x5c
.label_776:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_779
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_779:
	add	r14, 3
	xor	r9d, r9d
.label_755:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_679
.label_872:
	mov	r15b, 0x3f
	cmp	r8d, 5
	je	.label_789
	cmp	r8d, 2
	jne	.label_721
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_721
	jmp	.label_676
.label_873:
	cmp	r8d, 2
	jne	.label_673
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_676
	mov	r15b, 0x5c
	xor	eax, eax
	jmp	.label_680
.label_775:
	cmp	qword ptr [rsp + 0xb8], 1
	mov	qword ptr [rsp + 0xa0], rbp
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	mov	dword ptr [rsp + 0x94], esi
	jne	.label_684
	mov	qword ptr [rsp + 0x48], r11
	call	__ctype_b_loc
	mov	r10, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	ebx, 1
	jmp	.label_696
.label_687:
	test	r12, r12
	jne	.label_709
	mov	cl, byte ptr [r10 + 1]
	test	cl, cl
	jne	.label_709
.label_772:
	mov	dl, 1
.label_869:
	cmp	byte ptr [rsp + 0x27], 0
	je	.label_676
	xor	eax, eax
	mov	r13b, dl
.label_679:
	cmp	byte ptr [rsp + 0x36], 0
	je	.label_717
	cmp	qword ptr [rsp + 0x100], 0
	jne	.label_720
	jmp	.label_722
	.section	.text
	.align	16
	#Procedure 0x4078b4
	.globl sub_4078b4
	.type sub_4078b4, @function
sub_4078b4:

	nop	word ptr cs:[rax + rax]
.label_717:
	cmp	byte ptr [rsp + 0x35], 0
	je	.label_722
.label_720:
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	ebx, esi
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_741
	mov	rcx, qword ptr [rsp + 0x100]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_732
	.section	.text
	.align	16
	#Procedure 0x4078ed
	.globl sub_4078ed
	.type sub_4078ed, @function
sub_4078ed:

	nop	dword ptr [rax]
.label_722:
	test	sil, sil
.label_732:
	mov	ebx, r15d
	je	.label_733
	jmp	.label_736
.label_741:
	mov	ebx, r15d
	jmp	.label_736
.label_700:
	cmp	dword ptr [rsp + 0x9c], 0
	jne	.label_718
	xor	r15d, r15d
	jmp	.label_721
.label_673:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x32], 0
	je	.label_740
	xor	eax, eax
	mov	r15b, 0x5c
.label_680:
	xor	r13d, r13d
	jmp	.label_733
.label_740:
	cmp	byte ptr [rsp + 0x27], 0
	mov	ebx, ecx
	je	.label_676
.label_746:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1f], 0
	mov	r13d, 0
	je	.label_679
	nop	
.label_736:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_705
	cmp	r8d, 2
	jne	.label_756
	mov	eax, r9d
	and	al, 1
	jne	.label_756
	cmp	r14, rbp
	jae	.label_760
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_760:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_781
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_781:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_765
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_765:
	add	r14, 3
	mov	r9b, 1
.label_756:
	cmp	r14, rbp
	jae	.label_782
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_782:
	inc	r14
	jmp	.label_683
.label_684:
	mov	qword ptr [rsp + 0x70], 0
	cmp	r11, -1
	jne	.label_778
	mov	rdi, r10
	call	strlen
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_778:
	cmp	byte ptr [rsp + 0x31], 0
	mov	qword ptr [rsp + 0x48], r11
	mov	qword ptr [rsp + 0x88], r12
	je	.label_784
	lea	rax, [r10 + r12]
	mov	qword ptr [rsp + 0xb0], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbp, [rsp + 0x70]
.label_688:
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
	je	.label_674
	cmp	rbx, -1
	mov	r10, qword ptr [rsp + 0x28]
	movabs	rsi, 0x20000002b
	je	.label_767
	test	rbx, rbx
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_710
	cmp	rbx, 2
	mov	rbp, qword ptr [rsp + 0xa0]
	jb	.label_702
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax]
.label_742:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_725
	bt	rsi, rdx
	jb	.label_676
.label_725:
	inc	rcx
	cmp	rcx, rbx
	jb	.label_742
.label_702:
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	jne	.label_724
	xor	r13d, r13d
.label_724:
	lea	rbp, [rsp + 0x70]
	mov	r12, qword ptr [rsp + 0x40]
	add	r12, rbx
	mov	rdi, rbp
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_688
	jmp	.label_690
.label_728:
	xor	r13d, r13d
	jmp	.label_679
.label_709:
	mov	r11, -1
	xor	r13d, r13d
	jmp	.label_679
.label_789:
	cmp	dword ptr [rsp + 0x98], 0
	je	.label_721
	lea	rcx, [r12 + 2]
	cmp	rcx, r11
	jae	.label_721
	cmp	byte ptr [r10 + r12 + 1], 0x3f
	jne	.label_721
	movsx	edx, byte ptr [r10 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_743
	mov	ebx, esi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_754
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_752
	cmp	r14, rbp
	jae	.label_753
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x3f
.label_753:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_759
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_759:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_783
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_783:
	lea	rax, [r14 + 3]
	cmp	rax, rbp
	jae	.label_747
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x3f
.label_747:
	add	r14, 4
	xor	eax, eax
	mov	r12, rcx
	mov	r15b, dl
.label_754:
	xor	r13d, r13d
	mov	esi, ebx
	jmp	.label_679
.label_721:
	xor	eax, eax
.label_691:
	xor	r13d, r13d
	jmp	.label_679
.label_784:
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbx, [rsp + 0x70]
	nop	word ptr cs:[rax + rax]
.label_695:
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
	je	.label_794
	cmp	rbp, -1
	je	.label_672
	cmp	rbp, -2
	je	.label_674
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	mov	r12, qword ptr [rsp + 0x40]
	jne	.label_678
	xor	r13d, r13d
.label_678:
	add	r12, rbp
	lea	rbx, [rsp + 0x70]
	mov	rdi, rbx
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_695
	jmp	.label_690
.label_674:
	mov	r10, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x40]
	lea	rax, [rsi + r12]
	mov	rdx, qword ptr [rsp + 0x48]
	cmp	rax, rdx
	jae	.label_701
	lea	rax, [r10 + r12]
.label_686:
	cmp	byte ptr [rax + rsi], 0
	je	.label_701
	lea	rcx, [r12 + rsi + 1]
	inc	rsi
	cmp	rcx, rdx
	jb	.label_686
.label_701:
	mov	qword ptr [rsp + 0x40], rsi
.label_767:
	xor	r13d, r13d
	jmp	.label_710
.label_672:
	xor	r13d, r13d
.label_794:
	mov	r10, qword ptr [rsp + 0x28]
.label_710:
	mov	r12, qword ptr [rsp + 0x40]
.label_690:
	mov	rbx, r12
	mov	r12, qword ptr [rsp + 0x88]
.label_696:
	and	r13b, 1
	mov	eax, r13d
	or	al, byte ptr [rsp + 0x33]
	cmp	rbx, 1
	mov	rbp, qword ptr [rsp + 0xa0]
	mov	dil, byte ptr [rsp + 0x1e]
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x60]
	mov	esi, dword ptr [rsp + 0x94]
	ja	.label_715
	test	al, al
	je	.label_715
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_679
.label_715:
	mov	byte ptr [rsp + 0x40], al
	add	rbx, r12
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_731
	.section	.text
	.align	16
	#Procedure 0x407ce7
	.globl sub_407ce7
	.type sub_407ce7, @function
sub_407ce7:

	nop	word ptr [rax + rax]
.label_692:
	inc	r14
	mov	r15b, byte ptr [r10 + r12 + 1]
	mov	r12, rdx
.label_731:
	cmp	byte ptr [rsp + 0x40], 0
	je	.label_735
	test	sil, 1
	je	.label_675
	cmp	r14, rbp
	jae	.label_738
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x5c
.label_738:
	inc	r14
	xor	esi, esi
	jmp	.label_675
	.section	.text
	.align	16
	#Procedure 0x407d25
	.globl sub_407d25
	.type sub_407d25, @function
sub_407d25:

	nop	word ptr cs:[rax + rax]
.label_735:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_705
	cmp	r8d, 2
	jne	.label_749
	mov	eax, r9d
	and	al, 1
	jne	.label_749
	cmp	r14, rbp
	jae	.label_751
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_751:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_682
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x24
.label_682:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_689
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x27
.label_689:
	add	r14, 3
	mov	r9b, 1
.label_749:
	cmp	r14, rbp
	jae	.label_764
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_764:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_770
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_770:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_706
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_706:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_675:
	lea	rdx, [r12 + 1]
	cmp	rbx, rdx
	jbe	.label_733
	test	r9b, 1
	je	.label_681
	mov	rcx, rbx
	mov	ebx, eax
	and	bl, 1
	jne	.label_785
	mov	r8, r12
	mov	r12d, esi
	cmp	r14, rbp
	jae	.label_792
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], 0x27
.label_792:
	lea	rsi, [r14 + 1]
	cmp	rsi, rbp
	jae	.label_693
	mov	rbx, qword ptr [rsp + 0x10]
	mov	byte ptr [rbx + rsi], 0x27
.label_693:
	add	r14, 2
	xor	r9d, r9d
	mov	esi, r12d
	mov	rbx, rcx
	mov	r12, r8
	mov	r8, qword ptr [rsp + 0x38]
	jmp	.label_681
	.section	.text
	.align	16
	#Procedure 0x407e36
	.globl sub_407e36
	.type sub_407e36, @function
sub_407e36:

	nop	word ptr cs:[rax + rax]
.label_785:
	mov	rbx, rcx
.label_681:
	cmp	r14, rbp
	jae	.label_692
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], r15b
	mov	esi, ecx
	jmp	.label_692
	.section	.text
	.align	16
	#Procedure 0x407e5e
	.globl sub_407e5e
	.type sub_407e5e, @function
sub_407e5e:

	nop	
.label_733:
	test	r9b, 1
	je	.label_698
	and	al, 1
	jne	.label_698
	cmp	r14, rbp
	jae	.label_703
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_703:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_766
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_766:
	add	r14, 2
	xor	r9d, r9d
.label_698:
	mov	ebx, r15d
.label_683:
	cmp	r14, rbp
	jae	.label_714
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], bl
.label_714:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, dil
	mov	edi, r13d
	jmp	.label_718
.label_743:
	xor	r13d, r13d
	jmp	.label_679
	.section	.text
	.align	16
	#Procedure 0x407ec1
	.globl sub_407ec1
	.type sub_407ec1, @function
sub_407ec1:

	nop	word ptr cs:[rax + rax]
.label_750:
	mov	rcx, r12
.label_788:
	cmp	r8d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_730
	or	al, dl
	jne	.label_730
	mov	r11, rcx
	jmp	.label_705
.label_676:
	mov	eax, 2
.label_670:
	mov	qword ptr [rsp + 0x38], rax
.label_705:
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
.label_787:
	mov	r14, rax
.label_790:
	mov	rax, r14
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_712:
	mov	rdx, qword ptr [rsp + 0x58]
	test	rdx, rdx
	je	.label_761
	cmp	byte ptr [rsp + 0xf], 0
	mov	rcx, qword ptr [rsp + 0x10]
	jne	.label_723
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_723
	inc	rdx
	nop	dword ptr [rax + rax]
.label_773:
	cmp	r14, rbp
	jae	.label_769
	mov	byte ptr [rcx + r14], al
.label_769:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_773
	jmp	.label_723
.label_727:
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
	jmp	.label_787
.label_761:
	mov	rcx, qword ptr [rsp + 0x10]
.label_723:
	cmp	r14, rbp
	jae	.label_790
	mov	byte ptr [rcx + r14], 0
	jmp	.label_790
.label_752:
	mov	eax, 5
	jmp	.label_670
.label_757:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x408010
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
	je	.label_795
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
.label_795:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x408078
	.globl sub_408078
	.type sub_408078, @function
sub_408078:

	nop	dword ptr [rax + rax]
.label_797:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_80
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
.label_798:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_796
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_797
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_406
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	.section	.text
	.align	16
	#Procedure 0x4080f2

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_799
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_798
	cmp	dword ptr [rbp], 0x20
	jne	.label_798
.label_799:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_800
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_800:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	.section	.text
	.align	16
	#Procedure 0x408140
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
	je	.label_801
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
.label_801:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4081a8
	.globl sub_4081a8
	.type sub_4081a8, @function
sub_4081a8:

	nop	dword ptr [rax + rax]
.label_802:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4081b5
	.globl sub_4081b5
	.type sub_4081b5, @function
sub_4081b5:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4081bb
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_803
	test	rax, rax
	je	.label_802
.label_803:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4081d0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_804:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_804
	jmp	version_etc_arn
	.section	.text
	.align	16
	#Procedure 0x4081f1
	.globl sub_4081f1
	.type sub_4081f1, @function
sub_4081f1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408200
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
	je	.label_806
	test	r15, r15
	je	.label_805
.label_806:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_805:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x408242
	.globl sub_408242
	.type sub_408242, @function
sub_408242:

	nop	word ptr cs:[rax + rax]
.label_807:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x408255
	.globl sub_408255
	.type sub_408255, @function
sub_408255:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40825b

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_808
	test	rax, rax
	je	.label_807
.label_808:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x408270
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
	#Procedure 0x408283
	.globl sub_408283
	.type sub_408283, @function
sub_408283:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408290
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_31]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_32]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_33]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_809
	test	rsi, rsi
	je	.label_809
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_809:
	call	abort
.label_814:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_810
	mov	qword ptr [rsi], rbx
.label_813:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_812
	test	rax, rax
	je	.label_810
.label_812:
	pop	rbx
	ret	
.label_811:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40832d
	.globl sub_40832d
	.type sub_40832d, @function
sub_40832d:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408339
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_814
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_811
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_813
	call	free
	xor	eax, eax
	jmp	.label_812
.label_810:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x408370

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
	je	.label_815
	cmp	r15, -2
	jb	.label_815
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_815
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_815:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x4083c6
	.globl sub_4083c6
	.type sub_4083c6, @function
sub_4083c6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4083d0
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x4083da
	.globl sub_4083da
	.type sub_4083da, @function
sub_4083da:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4083e0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_816
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_816:
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
	#Procedure 0x408463
	.globl sub_408463
	.type sub_408463, @function
sub_408463:

	nop	word ptr cs:[rax + rax]
.label_818:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	.section	.text
	.align	16
	#Procedure 0x40847c
	.globl sub_40847c
	.type sub_40847c, @function
sub_40847c:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408488

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_818
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_817
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_818
.label_817:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_818
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_819
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_819:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408555
	.globl sub_408555
	.type sub_408555, @function
sub_408555:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408562
	.globl sub_408562
	.type sub_408562, @function
sub_408562:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408586
	.globl sub_408586
	.type sub_408586, @function
sub_408586:

	nop	word ptr cs:[rax + rax]
