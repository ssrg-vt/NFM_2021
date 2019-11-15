	.section	.text
	.align	32
	#Procedure 0x401709
	.globl sub_401709
	.type sub_401709, @function
sub_401709:

	hlt	
	.section	.text
	.align	32
	#Procedure 0x40170a
	.globl sub_40170a
	.type sub_40170a, @function
sub_40170a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401742
	.globl sub_401742
	.type sub_401742, @function
sub_401742:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40178a
	.globl sub_40178a
	.type sub_40178a, @function
sub_40178a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4017ac
	.globl sub_4017ac
	.type sub_4017ac, @function
sub_4017ac:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4017bd
	.globl sub_4017bd
	.type sub_4017bd, @function
sub_4017bd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4017d6
	.globl sub_4017d6
	.type sub_4017d6, @function
sub_4017d6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4017e0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_9
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_10
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x401805
	.globl sub_401805
	.type sub_401805, @function
sub_401805:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
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
	.align	32
	#Procedure 0x40181f
	.globl sub_40181f
	.type sub_40181f, @function
sub_40181f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x401820

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_13
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_12
	cmp	dword ptr [rbp], 0x20
	jne	.label_12
.label_13:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_16
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_16:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_14:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_15
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
.label_12:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_17
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_14
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_11
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	.section	.text
	.align	32
	#Procedure 0x4018e0
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
	#Procedure 0x401916
	.globl sub_401916
	.type sub_401916, @function
sub_401916:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401920
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_18
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_20:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_20
.label_18:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_22
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_21], OFFSET FLAT:slot0
.label_22:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_19
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_19:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x4019b1
	.globl sub_4019b1
	.type sub_4019b1, @function
sub_4019b1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4019c0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_23
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_23:
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
	#Procedure 0x401a43
	.globl sub_401a43
	.type sub_401a43, @function
sub_401a43:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401a50

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_24
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_11
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
.label_25:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x401a85
	.globl sub_401a85
	.type sub_401a85, @function
sub_401a85:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401a94
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
	je	.label_25
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
	.align	32
	#Procedure 0x401af0
	.globl readlinebuffer
	.type readlinebuffer, @function
readlinebuffer:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r13, rsi
	mov	r14, rdi
	xor	eax, eax
	test	byte ptr [r13], 0x10
	jne	.label_29
	mov	r15, qword ptr [r14 + 0x10]
	mov	r12, qword ptr [r14]
	add	r12, r15
	mov	rbx, r15
	nop	dword ptr [rax + rax]
.label_31:
	mov	rax, qword ptr [r13 + 8]
	cmp	rax, qword ptr [r13 + 0x10]
	jae	.label_26
	lea	rcx, [rax + 1]
	mov	qword ptr [r13 + 8], rcx
	movzx	ebp, byte ptr [rax]
.label_28:
	cmp	rbx, r12
	jne	.label_30
	mov	rbx, qword ptr [r14]
	mov	rdi, r15
	mov	rsi, r14
	call	x2realloc
	mov	r15, rax
	add	rbx, r15
	mov	qword ptr [r14 + 0x10], r15
	mov	r12, r15
	add	r12, qword ptr [r14]
.label_30:
	mov	byte ptr [rbx], bpl
	inc	rbx
	cmp	ebp, 0xa
	jne	.label_31
	jmp	.label_27
.label_26:
	mov	rdi, r13
	call	__uflow
	mov	ebp, eax
	cmp	ebp, -1
	jne	.label_28
	cmp	rbx, r15
	mov	eax, 0
	je	.label_29
	test	byte ptr [r13], 0x20
	jne	.label_29
	mov	ebp, 0xa
	cmp	byte ptr [rbx - 1], 0xa
	jne	.label_28
.label_27:
	sub	rbx, r15
	mov	qword ptr [r14 + 8], rbx
	mov	rax, r14
.label_29:
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
	#Procedure 0x401ba9
	.globl sub_401ba9
	.type sub_401ba9, @function
sub_401ba9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401bb0

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
	mov	r14, r8
	mov	r12d, edx
	mov	rbp, rsi
	mov	rbx, rdi
	cmp	r12d, 0x25
	jae	.label_42
	mov	qword ptr [rsp], rcx
	call	__errno_location
	mov	r15, rax
	mov	dword ptr [r15], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_32:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_32
	test	rbp, rbp
	lea	rsi, [rsp + 0x10]
	cmovne	rsi, rbp
	mov	r13d, 4
	cmp	al, 0x2d
	je	.label_34
	mov	rdi, rbx
	mov	edx, r12d
	mov	qword ptr [rsp + 8], rsi
	call	strtoul
	mov	rbp, rax
	mov	rax, qword ptr [rsp + 8]
	mov	r12, qword ptr [rax]
	cmp	r12, rbx
	je	.label_50
	mov	eax, dword ptr [r15]
	xor	ebx, ebx
	test	eax, eax
	je	.label_49
	cmp	eax, 0x22
	jne	.label_34
	mov	ebx, 1
.label_49:
	test	r14, r14
	jne	.label_52
	jmp	.label_38
.label_50:
	test	r14, r14
	je	.label_34
	movsx	esi, byte ptr [rbx]
	test	esi, esi
	je	.label_34
	mov	rdi, r14
	call	strchr
	xor	ebx, ebx
	mov	ebp, 1
	test	rax, rax
	je	.label_34
.label_52:
	movsx	r13d, byte ptr [r12]
	test	r13d, r13d
	je	.label_38
	mov	rdi, r14
	mov	esi, r13d
	call	strchr
	test	rax, rax
	je	.label_41
	mov	r15d, 1
	mov	esi, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_37
	movabs	rdx, 0x814400308945
	bt	rdx, rax
	jae	.label_37
	mov	esi, 0x30
	mov	rdi, r14
	call	strchr
	mov	r15d, 1
	mov	esi, 0x400
	test	rax, rax
	je	.label_37
	movsx	eax, byte ptr [r12 + 1]
	mov	r15d, 1
	mov	esi, 0x400
	cmp	eax, 0x42
	je	.label_51
	cmp	eax, 0x44
	je	.label_51
	cmp	eax, 0x69
	jne	.label_37
	xor	eax, eax
	cmp	byte ptr [r12 + 2], 0x42
	sete	al
	lea	r15, [rax + rax + 1]
	mov	esi, 0x400
	jmp	.label_37
.label_51:
	mov	r15d, 2
	mov	esi, 0x3e8
.label_37:
	add	r13d, -0x42
	cmp	r13d, 0x35
	ja	.label_41
	xor	eax, eax
	jmp	qword ptr [(r13 * 8) + label_48]
.label_545:
	mov	r8, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r8
	cmp	rax, rdi
	sbb	dl, dl
	mov	rbp, rdi
	imul	rbp, rsi
	cmp	rax, rdi
	cmovb	rbp, r8
	cmp	rax, rbp
	sbb	dil, dil
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, r8
	or	dl, r9b
	or	dl, dil
	jmp	.label_36
.label_41:
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax], rbp
	or	ebx, 2
	jmp	.label_39
.label_546:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, rdi
	sbb	eax, eax
	jmp	.label_43
.label_547:
	mov	r8, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r8
	cmp	rax, rdi
	sbb	dl, dl
	imul	rsi, rdi
	cmp	rax, rdi
	cmovb	rsi, r8
	or	dl, r9b
	jmp	.label_36
.label_549:
	mov	r9, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r9
	cmp	rax, rdi
	sbb	dl, dl
	mov	rbp, rdi
	imul	rbp, rsi
	cmp	rax, rdi
	cmovb	rbp, r9
	cmp	rax, rbp
	sbb	r10b, r10b
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r9
	cmp	rax, rdi
	sbb	cl, cl
	imul	rsi, rdi
	cmp	rax, rdi
	cmovb	rsi, r9
	or	dl, r8b
	or	dl, r10b
	or	dl, cl
	jmp	.label_36
.label_543:
	xor	eax, eax
	mov	rdx, rbp
	shr	rdx, 0x36
	setne	al
	shl	rbp, 0xa
	jmp	.label_33
.label_544:
	mov	r9, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r9
	cmp	rax, rdi
	sbb	dl, dl
	mov	rbp, rdi
	imul	rbp, rsi
	cmp	rax, rdi
	cmovb	rbp, r9
	cmp	rax, rbp
	sbb	r10b, r10b
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r9
	cmp	rax, rdi
	sbb	r11b, r11b
	mov	rbp, rdi
	imul	rbp, rsi
	cmp	rax, rdi
	cmovb	rbp, r9
	cmp	rax, rbp
	sbb	r14b, r14b
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r9
	cmp	rax, rdi
	sbb	bpl, bpl
	imul	rsi, rdi
	cmp	rax, rdi
	cmovb	rsi, r9
	or	dl, r8b
	or	dl, r10b
	or	dl, r11b
	or	dl, r14b
	or	dl, bpl
.label_36:
	and	dl, 1
	movzx	eax, dl
	jmp	.label_40
.label_548:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rdx, rbp
	imul	rdx, rsi
	cmp	rax, rbp
	cmovb	rdx, rdi
	cmp	rax, rdx
	sbb	cl, cl
	mov	rbp, rdx
	imul	rbp, rsi
	cmp	rax, rdx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rdx, rbp
	imul	rdx, rsi
	cmp	rax, rbp
	cmovb	rdx, rdi
	cmp	rax, rdx
	sbb	r10b, r10b
	mov	rbp, rdx
	imul	rbp, rsi
	cmp	rax, rdx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	dl, dl
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, rdi
	or	cl, r8b
	or	cl, r9b
	or	cl, r10b
	or	cl, dl
	and	cl, 1
	movzx	eax, cl
	jmp	.label_40
.label_550:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rcx, rbp
	imul	rcx, rsi
	cmp	rax, rbp
	cmovb	rcx, rdi
	cmp	rax, rcx
	sbb	dl, dl
	mov	rbp, rcx
	imul	rbp, rsi
	cmp	rax, rcx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rcx, rbp
	imul	rcx, rsi
	cmp	rax, rbp
	cmovb	rcx, rdi
	cmp	rax, rcx
	sbb	r10b, r10b
	mov	rbp, rcx
	imul	rbp, rsi
	cmp	rax, rcx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r11b, r11b
	mov	rcx, rbp
	imul	rcx, rsi
	cmp	rax, rbp
	cmovb	rcx, rdi
	cmp	rax, rcx
	sbb	r14b, r14b
	mov	rbp, rcx
	imul	rbp, rsi
	cmp	rax, rcx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r13b, r13b
	mov	rcx, rbp
	imul	rcx, rsi
	cmp	rax, rbp
	cmovb	rcx, rdi
	cmp	rax, rcx
	sbb	bpl, bpl
	imul	rsi, rcx
	cmp	rax, rcx
	cmovb	rsi, rdi
	or	dl, r8b
	or	dl, r9b
	or	dl, r10b
	or	dl, r11b
	and	dl, 1
	or	dl, r14b
	or	dl, r13b
	or	dl, bpl
	jmp	.label_47
.label_551:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rcx, rbp
	imul	rcx, rsi
	cmp	rax, rbp
	cmovb	rcx, rdi
	cmp	rax, rcx
	sbb	dl, dl
	mov	rbp, rcx
	imul	rbp, rsi
	cmp	rax, rcx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rcx, rbp
	imul	rcx, rsi
	cmp	rax, rbp
	cmovb	rcx, rdi
	cmp	rax, rcx
	sbb	r10b, r10b
	mov	rbp, rcx
	imul	rbp, rsi
	cmp	rax, rcx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r11b, r11b
	mov	rcx, rbp
	imul	rcx, rsi
	cmp	rax, rbp
	cmovb	rcx, rdi
	cmp	rax, rcx
	sbb	r14b, r14b
	mov	rbp, rcx
	imul	rbp, rsi
	cmp	rax, rcx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	cl, cl
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, rdi
	or	dl, r8b
	or	dl, r9b
	or	dl, r10b
	and	dl, 1
	or	dl, r11b
	or	dl, r14b
	or	dl, cl
.label_47:
	movzx	eax, dl
.label_43:
	and	eax, 1
.label_40:
	mov	rbp, rsi
.label_35:
	or	eax, ebx
	lea	rcx, [r12 + r15]
	mov	rdx, qword ptr [rsp + 8]
	mov	qword ptr [rdx], rcx
	lea	ebx, [rax + 2]
	cmp	byte ptr [r12 + r15], 0
	cmove	ebx, eax
.label_38:
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax], rbp
.label_39:
	mov	r13d, ebx
.label_34:
	mov	eax, r13d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_552:
	xor	eax, eax
	mov	rdx, rbp
	shr	rdx, 0x37
	setne	al
	shl	rbp, 9
.label_33:
	cmp	rdx, 1
	sbb	rdx, rdx
	not	rdx
	or	rbp, rdx
	jmp	.label_35
.label_553:
	lea	rax, [rbp + rbp]
	test	rbp, rbp
	mov	rcx, -1
	cmovns	rcx, rax
	shr	rbp, 0x3f
	mov	eax, ebp
	mov	rbp, rcx
	jmp	.label_35
.label_42:
	mov	edi, OFFSET FLAT:label_44
	mov	esi, OFFSET FLAT:label_45
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_46
	call	__assert_fail
	.section	.text
	.align	32
	#Procedure 0x4021cd
	.globl sub_4021cd
	.type sub_4021cd, @function
sub_4021cd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4021d0

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
	call	freopen
	mov	rbx, rax
	test	r15, r15
	je	.label_54
	test	rbx, rbx
	je	.label_54
	mov	rdi, rbx
	call	fileno
	mov	ebp, eax
	mov	edi, ebp
	mov	esi, ebp
	call	dup2
	test	eax, eax
	jns	.label_54
	call	__errno_location
	cmp	dword ptr [rax], 9
	jne	.label_54
	mov	edi, OFFSET FLAT:label_55
	mov	esi, 0x80000
	xor	eax, eax
	call	open
	mov	r12d, eax
	cmp	r12d, ebp
	je	.label_53
	mov	edi, r12d
	mov	esi, ebp
	call	dup2
	mov	ebp, eax
	mov	edi, r12d
	call	close
	test	ebp, ebp
	js	.label_54
.label_53:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	jmp	freopen
.label_54:
	mov	rax, rbx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402264
	.globl sub_402264
	.type sub_402264, @function
sub_402264:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402270
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_59
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_61
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_56
.label_59:
	test	rcx, rcx
	jne	.label_62
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_62:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_57
.label_56:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_58
	test	rbx, rbx
	jne	.label_58
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_58:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_60
	test	rax, rax
	je	.label_61
.label_60:
	pop	rbx
	ret	
.label_61:
	call	xalloc_die
.label_57:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402307
	.globl sub_402307
	.type sub_402307, @function
sub_402307:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402310
	.globl xmemcoll0
	.type xmemcoll0, @function
xmemcoll0:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rcx
	mov	r15, rdx
	mov	rbp, rsi
	mov	r12, rdi
	call	memcoll0
	mov	r13d, eax
	call	__errno_location
	mov	ebx, dword ptr [rax]
	test	ebx, ebx
	je	.label_65
	dec	rbp
	dec	r14
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_66
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_63
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	eax, dword ptr [rip + exit_failure]
	mov	dword ptr [rsp + 4], eax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_64
	mov	edx, 5
	call	dcgettext
	mov	rbx, r15
	mov	r15d, r13d
	mov	r13, rax
	xor	edi, edi
	mov	esi, 8
	mov	rdx, r12
	mov	rcx, rbp
	call	quotearg_n_style_mem
	mov	rbp, rax
	mov	edi, 1
	mov	esi, 8
	mov	rdx, rbx
	mov	rcx, r14
	call	quotearg_n_style_mem
	mov	rbx, rax
	xor	esi, esi
	xor	eax, eax
	mov	edi, dword ptr [rsp + 4]
	mov	rdx, r13
	mov	r13d, r15d
	mov	rcx, rbp
	mov	r8, rbx
	call	error
.label_65:
	mov	eax, r13d
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
	#Procedure 0x402404
	.globl sub_402404
	.type sub_402404, @function
sub_402404:

	nop	word ptr cs:[rax + rax]
.label_67:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x402415
	.globl sub_402415
	.type sub_402415, @function
sub_402415:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402419

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
	je	.label_67
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
.label_68:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x402485
	.globl sub_402485
	.type sub_402485, @function
sub_402485:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402490

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
	je	.label_68
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
.label_69:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402525
	.globl sub_402525
	.type sub_402525, @function
sub_402525:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402533
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
	je	.label_70
	test	r15, r15
	je	.label_69
.label_70:
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
	.align	32
	#Procedure 0x402570
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_71
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_72
	test	rbx, rbx
	jne	.label_72
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_72:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_73
	test	rax, rax
	je	.label_71
.label_73:
	pop	rbx
	ret	
.label_71:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4025b8
	.globl sub_4025b8
	.type sub_4025b8, @function
sub_4025b8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4025c0

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
	jne	.label_75
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_82
	cmp	ecx, 0x55
	jne	.label_74
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_74
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_74
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_74
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_74
	cmp	byte ptr [rax + 5], 0
	jne	.label_74
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_79
	mov	eax, OFFSET FLAT:label_80
	jmp	.label_81
.label_82:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_74
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_74
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_74
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_74
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_74
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_74
	cmp	byte ptr [rax + 7], 0
	je	.label_76
.label_74:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_77
	mov	eax, OFFSET FLAT:label_78
.label_81:
	cmove	rax, rcx
.label_75:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_76:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_83
	mov	eax, OFFSET FLAT:label_84
	jmp	.label_81
	.section	.text
	.align	32
	#Procedure 0x402685
	.globl sub_402685
	.type sub_402685, @function
sub_402685:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402690

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
	je	.label_85
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
.label_85:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4026f8
	.globl sub_4026f8
	.type sub_4026f8, @function
sub_4026f8:

	nop	dword ptr [rax + rax]
.label_86:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x402702
	.globl sub_402702
	.type sub_402702, @function
sub_402702:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402705

	.globl fadvise
	.type fadvise, @function
fadvise:
	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_86
	call	fileno
	xor	esi, esi
	xor	edx, edx
	mov	edi, eax
	mov	ecx, ebx
	pop	rbx
	jmp	posix_fadvise
	.section	.text
	.align	32
	#Procedure 0x402720

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
	mov	rbx, rsi
	mov	r15, rdi
	call	strlen
	mov	r12, rax
	mov	qword ptr [rsp + 0x18], rbx
	mov	rbp, qword ptr [rbx]
	test	rbp, rbp
	je	.label_95
	test	r14, r14
	je	.label_89
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 0x20], r14
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_87:
	mov	rdi, rbp
	mov	rsi, r15
	mov	rdx, r12
	call	strncmp
	test	eax, eax
	jne	.label_88
	mov	rdi, rbp
	call	strlen
	cmp	rax, r12
	je	.label_90
	mov	rax, qword ptr [rsp + 8]
	cmp	rax, -1
	je	.label_91
	mov	rdi, rax
	imul	rdi, r13
	add	rdi, qword ptr [rsp + 0x20]
	mov	rsi, r14
	mov	rdx, r13
	call	memcmp
	test	eax, eax
	je	.label_88
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_88
.label_91:
	mov	qword ptr [rsp + 8], rbx
	nop	word ptr [rax + rax]
.label_88:
	mov	rax, qword ptr [rsp + 0x18]
	mov	rbp, qword ptr [rax + rbx*8 + 8]
	inc	rbx
	add	r14, r13
	test	rbp, rbp
	jne	.label_87
	jmp	.label_93
.label_95:
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_93
.label_89:
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	xor	ebx, ebx
	nop	dword ptr [rax + rax]
.label_94:
	mov	rdi, rbp
	mov	rsi, r15
	mov	rdx, r12
	call	strncmp
	test	eax, eax
	jne	.label_92
	mov	rdi, rbp
	call	strlen
	cmp	rax, r12
	je	.label_90
	mov	rax, qword ptr [rsp + 8]
	cmp	rax, -1
	cmove	rax, rbx
	mov	qword ptr [rsp + 8], rax
	je	.label_92
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	nop	word ptr [rax + rax]
.label_92:
	mov	rax, qword ptr [rsp + 0x18]
	mov	rbp, qword ptr [rax + rbx*8 + 8]
	inc	rbx
	test	rbp, rbp
	jne	.label_94
.label_93:
	mov	rax, qword ptr [rsp + 0x10]
	test	al, 1
	mov	rbx, -2
	cmove	rbx, qword ptr [rsp + 8]
.label_90:
	mov	rax, rbx
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
	#Procedure 0x402898
	.globl sub_402898
	.type sub_402898, @function
sub_402898:

	nop	dword ptr [rax + rax]
.label_114:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_96
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
	.align	32
	#Procedure 0x4028d8
	.globl sub_4028d8
	.type sub_4028d8, @function
sub_4028d8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4028dd

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_114
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_111
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
	mov	esi, OFFSET FLAT:label_103
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
	mov	esi, OFFSET FLAT:label_105
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
	mov	esi, OFFSET FLAT:label_118
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
	mov	esi, OFFSET FLAT:label_112
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
	mov	esi, OFFSET FLAT:label_120
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
	mov	esi, OFFSET FLAT:label_97
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
	mov	esi, OFFSET FLAT:label_117
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_106
	mov	ecx, OFFSET FLAT:label_100
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_98
	mov	esi, OFFSET FLAT:label_107
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_98
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_102
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_98:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_119
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_100
	mov	ecx, OFFSET FLAT:label_101
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_110
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_101
	mov	ecx, OFFSET FLAT:label_109
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
	.section	.text
	.align	32
	#Procedure 0x402b80

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
	jne	.label_123
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_122
	test	cl, cl
	jne	.label_122
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_122
.label_123:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_122
	call	__errno_location
	mov	dword ptr [rax], 0
.label_122:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402be0
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
	je	.label_124
	mov	qword ptr [rax], rbx
.label_124:
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
	#Procedure 0x402ccc
	.globl sub_402ccc
	.type sub_402ccc, @function
sub_402ccc:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402cd0

	.globl __xargmatch_internal
	.type __xargmatch_internal, @function
__xargmatch_internal:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r14, r9
	mov	r15, r8
	mov	r12, rcx
	mov	r13, rdx
	mov	rbp, rsi
	mov	rbx, rdi
	mov	rdi, rbp
	mov	rsi, r13
	mov	rdx, r12
	mov	rcx, r15
	call	argmatch
	test	rax, rax
	jns	.label_125
	cmp	rax, -1
	mov	qword ptr [rsp + 0x10], rbx
	mov	rbx, r14
	je	.label_126
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_127
	jmp	.label_128
.label_126:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_129
.label_128:
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rsp + 8], rax
	xor	edi, edi
	mov	esi, 8
	mov	rdx, rbp
	call	quotearg_n_style
	mov	r14, rax
	mov	edi, 1
	mov	rsi, qword ptr [rsp + 0x10]
	call	quote_n
	mov	rbp, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, qword ptr [rsp + 8]
	mov	rcx, r14
	mov	r8, rbp
	call	error
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r15
	call	argmatch_valid
	call	rbx
	mov	rax, -1
.label_125:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402d93
	.globl sub_402d93
	.type sub_402d93, @function
sub_402d93:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402da0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_130
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_130
	test	byte ptr [rbx + 1], 1
	je	.label_130
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_130:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	32
	#Procedure 0x402dd3
	.globl sub_402dd3
	.type sub_402dd3, @function
sub_402dd3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402de0

	.globl memcoll0
	.type memcoll0, @function
memcoll0:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rcx
	mov	r12, rdx
	mov	r15, rsi
	mov	rbx, rdi
	cmp	r15, r14
	jne	.label_131
	mov	rdi, rbx
	mov	rsi, r12
	mov	rdx, r15
	call	memcmp
	test	eax, eax
	je	.label_133
.label_131:
	call	__errno_location
	mov	r13, rax
	nop	word ptr cs:[rax + rax]
.label_135:
	mov	dword ptr [r13], 0
	mov	rdi, rbx
	mov	rsi, r12
	call	strcoll
	test	eax, eax
	jne	.label_132
	mov	rdi, rbx
	call	strlen
	mov	rbp, rax
	inc	rbp
	mov	rdi, r12
	call	strlen
	inc	rax
	sub	r14, rax
	sub	r15, rbp
	je	.label_134
	add	r12, rax
	add	rbx, rbp
	mov	eax, 1
	test	r14, r14
	jne	.label_135
	jmp	.label_132
.label_133:
	call	__errno_location
	mov	dword ptr [rax], 0
	xor	eax, eax
.label_132:
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
	#Procedure 0x402e86
	.globl sub_402e86
	.type sub_402e86, @function
sub_402e86:

	nop	dword ptr [rax]
.label_134:
	neg	r14
	sbb	eax, eax
	jmp	.label_132
	.section	.text
	.align	32
	#Procedure 0x402e90

	.globl xmemcoll
	.type xmemcoll, @function
xmemcoll:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r13, rcx
	mov	r12, rdx
	mov	r14, rsi
	mov	r15, rdi
	call	memcoll
	mov	ebp, eax
	call	__errno_location
	mov	ebx, dword ptr [rax]
	test	ebx, ebx
	je	.label_136
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_66
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_63
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	eax, dword ptr [rip + exit_failure]
	mov	dword ptr [rsp + 4], eax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_64
	mov	edx, 5
	call	dcgettext
	mov	rbx, r13
	mov	r13, rax
	xor	edi, edi
	mov	esi, 8
	mov	rdx, r15
	mov	rcx, r14
	call	quotearg_n_style_mem
	mov	r14, rax
	mov	edi, 1
	mov	esi, 8
	mov	rdx, r12
	mov	rcx, rbx
	call	quotearg_n_style_mem
	mov	rbx, rax
	xor	esi, esi
	xor	eax, eax
	mov	edi, dword ptr [rsp + 4]
	mov	rdx, r13
	mov	rcx, r14
	mov	r8, rbx
	call	error
.label_136:
	mov	eax, ebp
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
	#Procedure 0x402f76
	.globl sub_402f76
	.type sub_402f76, @function
sub_402f76:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402f80
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
	#Procedure 0x402fb3
	.globl sub_402fb3
	.type sub_402fb3, @function
sub_402fb3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402fc0

	.globl posix2_version
	.type posix2_version, @function
posix2_version:
	push	rax
	mov	edi, OFFSET FLAT:label_137
	call	getenv
	mov	ecx, 0x31069
	test	rax, rax
	je	.label_138
	mov	ecx, 0x31069
	cmp	byte ptr [rax], 0
	je	.label_138
	lea	rsi, [rsp]
	mov	edx, 0xa
	mov	rdi, rax
	call	strtol
	mov	rcx, qword ptr [rsp]
	cmp	byte ptr [rcx], 0
	mov	ecx, 0x31069
	cmove	rcx, rax
.label_138:
	cmp	rcx, 0x7fffffff
	mov	edx, 0x7fffffff
	cmovl	edx, ecx
	cmp	rcx, -0x80000000
	mov	eax, 0x80000000
	cmovge	eax, edx
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x403020
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x40302a
	.globl sub_40302a
	.type sub_40302a, @function
sub_40302a:

	nop	word ptr [rax + rax]
.label_139:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403035
	.globl sub_403035
	.type sub_403035, @function
sub_403035:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40303b
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_140]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_141]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_142]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_139
	test	rdx, rdx
	je	.label_139
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_145:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_143
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4030c0
	.globl sub_4030c0
	.type sub_4030c0, @function
sub_4030c0:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4030cf

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_145
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_146
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_148
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_146
	mov	esi, OFFSET FLAT:label_147
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_144
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_144:
	mov	rbx, r14
.label_146:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x403150

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	mov	edi, 1
	jmp	usage
	.section	.text
	.align	32
	#Procedure 0x40315a
	.globl sub_40315a
	.type sub_40315a, @function
sub_40315a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403160

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_150
	cmp	byte ptr [rax], 0x43
	jne	.label_152
	cmp	byte ptr [rax + 1], 0
	je	.label_149
.label_152:
	mov	esi, OFFSET FLAT:label_151
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_150
.label_149:
	xor	ebx, ebx
.label_150:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x403191
	.globl sub_403191
	.type sub_403191, @function
sub_403191:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4031a0

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x4031b1
	.globl sub_4031b1
	.type sub_4031b1, @function
sub_4031b1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4031c0

	.globl memcoll
	.type memcoll, @function
memcoll:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	rbx, rcx
	mov	r14, rdx
	mov	rbp, rsi
	mov	r12, rdi
	cmp	rbp, rbx
	jne	.label_153
	mov	rdi, r12
	mov	rsi, r14
	mov	rdx, rbp
	call	memcmp
	test	eax, eax
	je	.label_157
.label_153:
	mov	al, byte ptr [r12 + rbp]
	mov	byte ptr [rsp + 7], al
	mov	al, byte ptr [r14 + rbx]
	mov	byte ptr [rsp + 6], al
	mov	byte ptr [r12 + rbp], 0
	mov	byte ptr [r14 + rbx], 0
	mov	qword ptr [rsp + 0x10], rbp
	lea	r13, [rbp + 1]
	mov	qword ptr [rsp + 0x20], rbx
	lea	r15, [rbx + 1]
	call	__errno_location
	mov	rbx, rax
	mov	qword ptr [rsp + 0x18], r14
	mov	rbp, r14
	mov	qword ptr [rsp + 8], r12
	mov	r14, r12
	nop	dword ptr [rax]
.label_154:
	mov	dword ptr [rbx], 0
	mov	rdi, r14
	mov	rsi, rbp
	call	strcoll
	test	eax, eax
	jne	.label_155
	mov	rdi, r14
	call	strlen
	mov	r12, rax
	inc	r12
	mov	rdi, rbp
	call	strlen
	inc	rax
	sub	r15, rax
	sub	r13, r12
	je	.label_156
	add	rbp, rax
	add	r14, r12
	mov	eax, 1
	test	r15, r15
	jne	.label_154
	jmp	.label_155
.label_156:
	neg	r15
	sbb	eax, eax
.label_155:
	mov	rcx, qword ptr [rsp + 0x10]
	mov	rdx, qword ptr [rsp + 8]
	mov	bl, byte ptr [rsp + 7]
	mov	byte ptr [rdx + rcx], bl
	mov	rcx, qword ptr [rsp + 0x20]
	mov	rdx, qword ptr [rsp + 0x18]
	mov	bl, byte ptr [rsp + 6]
	mov	byte ptr [rdx + rcx], bl
	jmp	.label_158
.label_157:
	call	__errno_location
	mov	dword ptr [rax], 0
	xor	eax, eax
.label_158:
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
	#Procedure 0x4032cd
	.globl sub_4032cd
	.type sub_4032cd, @function
sub_4032cd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4032d0

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
	je	.label_159
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
.label_159:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403338
	.globl sub_403338
	.type sub_403338, @function
sub_403338:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403340

	.globl initbuffer
	.type initbuffer, @function
initbuffer:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rdi], xmm0
	mov	qword ptr [rdi + 0x10], 0
	ret	
	.section	.text
	.align	32
	#Procedure 0x40334f
	.globl sub_40334f
	.type sub_40334f, @function
sub_40334f:

	nop	
.label_160:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403355
	.globl sub_403355
	.type sub_403355, @function
sub_403355:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403359
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_140]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_141]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_142]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_160
	test	rsi, rsi
	je	.label_160
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
	.align	32
	#Procedure 0x4033c0
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
	.align	32
	#Procedure 0x403481
	.globl sub_403481
	.type sub_403481, @function
sub_403481:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403490

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
	.align	32
	#Procedure 0x4034e6
	.globl sub_4034e6
	.type sub_4034e6, @function
sub_4034e6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4034f0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_140]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_141]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_142]
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
	.align	32
	#Procedure 0x403545
	.globl sub_403545
	.type sub_403545, @function
sub_403545:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403550
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_162
	test	rdx, rdx
	je	.label_162
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_162:
	push	rax
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40357b
	.globl sub_40357b
	.type sub_40357b, @function
sub_40357b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403580
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
	.align	32
	#Procedure 0x4035f5
	.globl sub_4035f5
	.type sub_4035f5, @function
sub_4035f5:

	nop	word ptr cs:[rax + rax]
.label_164:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x403605
	.globl sub_403605
	.type sub_403605, @function
sub_403605:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403609

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
	je	.label_163
	test	r15, r15
	je	.label_164
.label_163:
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
	.align	32
	#Procedure 0x403640

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x88
	mov	r14, rsi
	mov	ebp, edi
	mov	edi, OFFSET FLAT:label_184
	call	getenv
	mov	r13, rax
	mov	eax, OFFSET FLAT:label_236
	movq	xmm0, rax
	pshufd	xmm0, xmm0, 0x44
	movdqa	xmmword ptr [rsp + 0x50], xmm0
	mov	rdi, qword ptr [r14]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_9
	call	setlocale
	mov	edi, OFFSET FLAT:label_204
	mov	esi, OFFSET FLAT:label_205
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_204
	call	textdomain
	mov	edi, 3
	call	hard_locale
	mov	byte ptr [rip + hard_LC_COLLATE],  al
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	qword ptr [rip + skip_chars],  0
	mov	qword ptr [rip + skip_fields],  0
	mov	qword ptr [rip + check_chars],  -1
	mov	byte ptr [rip + output_first_repeated],  1
	mov	byte ptr [rip + output_unique],  1
	mov	byte ptr [rip + output_later_repeated],  0
	mov	byte ptr [rip + countmode],  1
	mov	dword ptr [rip + delimit_groups],  0
	mov	bl, 0xa
	xor	ecx, ecx
	mov	dword ptr [rsp + 0x28], 0
	xor	r15d, r15d
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	jmp	.label_171
	.section	.text
	.align	32
	#Procedure 0x403721
	.globl sub_403721
	.type sub_403721, @function
sub_403721:

	nop	word ptr cs:[rax + rax]
.label_278:
	lea	ecx, [rax + 1]
	mov	dword ptr [rip + optind],  ecx
	mov	rax, qword ptr [r14 + rax*8]
	mov	ecx, r15d
	inc	r15d
	mov	qword ptr [rsp + rcx*8 + 0x50], rax
	mov	ecx, edx
	mov	bl, r12b
.label_171:
	mov	r12d, ebx
	test	r13, r13
	setne	al
	test	r15d, r15d
	setne	dl
	cmp	ecx, -1
	je	.label_250
	and	al, dl
	mov	edx, ecx
	jne	.label_255
	xor	ebx, ebx
	mov	edx, OFFSET FLAT:label_258
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, ebp
	mov	rsi, r14
	call	getopt_long
	lea	esi, [rax + 1]
	cmp	esi, 0x81
	ja	.label_261
	mov	ecx, 0x7a
	mov	edx, 0xffffffff
	jmp	qword ptr [(rsi * 8) + label_264]
.label_583:
	cmp	dword ptr [rsp + 0x28], 2
	jne	.label_266
	mov	qword ptr [rip + skip_fields],  0
	xor	ecx, ecx
	jmp	.label_268
	.section	.text
	.align	32
	#Procedure 0x4037b6
	.globl sub_4037b6
	.type sub_4037b6, @function
sub_4037b6:

	nop	word ptr cs:[rax + rax]
.label_250:
	mov	edx, ecx
.label_255:
	movsxd	rax, dword ptr [rip + optind]
	cmp	eax, ebp
	jge	.label_274
	cmp	r15d, 2
	jne	.label_278
	jmp	.label_280
.label_266:
	mov	rcx, qword ptr [rip + skip_fields]
	movabs	rdx, 0x1999999999999999
	cmp	rcx, rdx
	ja	.label_177
.label_268:
	lea	rdx, [rcx + rcx*4]
	movsxd	rsi, eax
	lea	rdx, [rsi + rdx*2 - 0x30]
	cmp	rdx, rcx
	jae	.label_285
.label_177:
	mov	qword ptr [rip + skip_fields],  -1
	jmp	.label_169
.label_285:
	mov	qword ptr [rip + skip_fields],  rdx
.label_169:
	mov	dword ptr [rsp + 0x28], 1
	mov	ecx, eax
	mov	bl, r12b
	jmp	.label_171
.label_582:
	mov	rax, qword ptr [rip + optarg]
	cmp	byte ptr [rax], 0x2b
	jne	.label_178
	call	posix2_version
	add	eax, 0xfffcf250
	cmp	eax, 0x2b9
	jb	.label_178
	mov	rdi, qword ptr [rip + optarg]
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:label_9
	lea	rcx, [rsp + 0x38]
	call	xstrtoul
	test	eax, eax
	je	.label_196
.label_178:
	cmp	r15d, 2
	je	.label_216
	mov	rax, qword ptr [rip + optarg]
	mov	ecx, r15d
	inc	r15d
	mov	qword ptr [rsp + rcx*8 + 0x50], rax
.label_239:
	mov	ecx, 1
	mov	bl, r12b
	jmp	.label_171
.label_584:
	mov	byte ptr [rip + output_unique],  0
	mov	byte ptr [rip + output_later_repeated],  1
	mov	rsi, qword ptr [rip + optarg]
	xor	eax, eax
	test	rsi, rsi
	je	.label_210
	mov	r9, qword ptr [rip + argmatch_die]
	mov	edi, OFFSET FLAT:label_221
	mov	edx, OFFSET FLAT:delimit_method_string
	mov	ecx, OFFSET FLAT:delimit_method_map
	mov	r8d, 4
	call	__xargmatch_internal
	mov	eax, dword ptr [(rax * 4) + delimit_method_map]
.label_210:
	mov	dword ptr [rip + delimit_groups],  eax
	mov	al, 1
	mov	qword ptr [rsp + 8], rax
	mov	ecx, 0x44
	mov	bl, r12b
	jmp	.label_171
.label_585:
	mov	byte ptr [rip + countmode],  0
	mov	al, 1
	mov	qword ptr [rsp + 8], rax
	mov	ecx, 0x63
	mov	bl, r12b
	jmp	.label_171
.label_586:
	mov	byte ptr [rip + output_unique],  0
	mov	al, 1
	mov	qword ptr [rsp + 8], rax
	mov	ecx, 0x64
	mov	bl, r12b
	jmp	.label_171
.label_587:
	mov	rbx, qword ptr [rip + optarg]
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:label_9
	mov	rdi, rbx
	lea	rcx, [rsp + 0x38]
	call	xstrtoul
	cmp	eax, 2
	jae	.label_279
	mov	rax, qword ptr [rsp + 0x38]
	mov	qword ptr [rip + skip_fields],  rax
	mov	dword ptr [rsp + 0x28], 2
	mov	ecx, 0x66
	mov	bl, r12b
	jmp	.label_171
.label_588:
	mov	byte ptr [rip + ignore_case],  1
	mov	ecx, 0x69
	mov	bl, r12b
	jmp	.label_171
.label_589:
	mov	rbx, qword ptr [rip + optarg]
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:label_9
	mov	rdi, rbx
	lea	rcx, [rsp + 0x38]
	call	xstrtoul
	cmp	eax, 2
	jae	.label_270
	mov	rax, qword ptr [rsp + 0x38]
	mov	qword ptr [rip + skip_chars],  rax
	mov	ecx, 0x73
	mov	bl, r12b
	jmp	.label_171
.label_590:
	mov	byte ptr [rip + output_first_repeated],  0
	mov	al, 1
	mov	qword ptr [rsp + 8], rax
	mov	ecx, 0x75
	mov	bl, r12b
	jmp	.label_171
.label_591:
	mov	rbx, qword ptr [rip + optarg]
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:label_9
	mov	rdi, rbx
	lea	rcx, [rsp + 0x38]
	call	xstrtoul
	cmp	eax, 2
	jae	.label_170
	mov	rax, qword ptr [rsp + 0x38]
	mov	qword ptr [rip + check_chars],  rax
	mov	ecx, 0x77
	mov	bl, r12b
	jmp	.label_171
.label_592:
	mov	rsi, qword ptr [rip + optarg]
	test	rsi, rsi
	je	.label_243
	mov	r9, qword ptr [rip + argmatch_die]
	mov	edi, OFFSET FLAT:label_180
	mov	edx, OFFSET FLAT:grouping_method_string
	mov	ecx, OFFSET FLAT:grouping_method_map
	mov	r8d, 4
	call	__xargmatch_internal
	mov	eax, dword ptr [(rax * 4) + grouping_method_map]
	mov	dword ptr [rip + grouping],  eax
	jmp	.label_192
.label_243:
	mov	dword ptr [rip + grouping],  3
.label_192:
	mov	ecx, 0x80
	mov	bl, r12b
	jmp	.label_171
.label_196:
	mov	rax, qword ptr [rsp + 0x38]
	mov	qword ptr [rip + skip_chars],  rax
	jmp	.label_239
.label_274:
	mov	ecx, dword ptr [rip + grouping]
	mov	rax, qword ptr [rsp + 8]
	test	al, al
	je	.label_207
	test	ecx, ecx
	jne	.label_283
.label_207:
	mov	al, byte ptr [rip + countmode]
	test	ecx, ecx
	je	.label_219
	mov	ecx, eax
	xor	cl, 1
	test	cl, 1
	jne	.label_222
.label_219:
	test	al, 1
	jne	.label_223
	cmp	byte ptr [rip + output_later_repeated],  1
	je	.label_224
.label_223:
	mov	rbp, qword ptr [rsp + 0x50]
	mov	rbx, qword ptr [rsp + 0x58]
	cmp	byte ptr [rbp], 0x2d
	jne	.label_227
	cmp	byte ptr [rbp + 1], 0
	je	.label_231
.label_227:
	mov	rdx, qword ptr [rip + stdin]
	mov	esi, OFFSET FLAT:label_232
	mov	rdi, rbp
	call	freopen_safer
	test	rax, rax
	je	.label_237
.label_231:
	cmp	byte ptr [rbx], 0x2d
	jne	.label_240
	cmp	byte ptr [rbx + 1], 0
	je	.label_242
.label_240:
	mov	rdx, qword ptr [rip + stdout]
	mov	esi, OFFSET FLAT:label_193
	mov	rdi, rbx
	call	freopen_safer
	test	rax, rax
	je	.label_246
.label_242:
	mov	qword ptr [rsp + 0x68], rbp
	mov	rdi, qword ptr [rip + stdin]
	mov	esi, 2
	call	fadvise
	lea	r14, [rsp + 0x38]
	mov	rdi, r14
	call	initbuffer
	lea	rbx, [rsp + 0x70]
	mov	rdi, rbx
	call	initbuffer
	cmp	byte ptr [rip + output_unique],  1
	jne	.label_254
	cmp	byte ptr [rip + output_first_repeated],  1
	jne	.label_254
	test	byte ptr [rip + countmode],  1
	je	.label_254
	movzx	eax, r12b
	mov	dword ptr [rsp + 0x18], eax
	lea	r13, [rsp + 0x38]
	mov	al, 1
	movsx	ecx, r12b
	mov	dword ptr [rsp + 8], ecx
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 0x20], rcx
	jmp	.label_259
.label_254:
	mov	rsi, qword ptr [rip + stdin]
	movsx	r13d, r12b
	lea	rbp, [rsp + 0x70]
	mov	rdi, rbp
	mov	edx, r13d
	call	readlinebuffer_delim
	test	rax, rax
	je	.label_213
	mov	r15, r14
	mov	r14, qword ptr [rsp + 0x78]
	mov	rbx, qword ptr [rsp + 0x80]
	mov	rdi, r14
	mov	rsi, rbx
	call	find_field
	lea	rcx, [r14 + rbx - 1]
	mov	rbx, r15
	mov	qword ptr [rsp + 0x10], rax
	sub	rcx, rax
	mov	qword ptr [rsp + 8], rcx
	movzx	eax, r12b
	mov	dword ptr [rsp + 0x34], eax
	mov	r14b, 1
	xor	r15d, r15d
	jmp	.label_281
	.section	.text
	.align	32
	#Procedure 0x403c01
	.globl sub_403c01
	.type sub_403c01, @function
sub_403c01:

	nop	word ptr cs:[rax + rax]
.label_256:
	test	bpl, bpl
	mov	eax, 0
	cmovne	r15, rax
	mov	rbp, qword ptr [rsp + 0x28]
.label_281:
	mov	dword ptr [rsp + 0x20], r14d
	mov	qword ptr [rsp + 0x28], rbx
	mov	qword ptr [rsp + 0x18], rbp
	test	r14b, 1
	jne	.label_175
	jmp	.label_181
.label_187:
	mov	rbp, rsi
	mov	esi, dword ptr [rsp + 0x34]
	call	__overflow
	mov	rsi, rbp
	jmp	.label_188
.label_181:
	mov	rsi, qword ptr [rip + stdin]
	test	byte ptr [rsi], 0x10
	jne	.label_191
	mov	rbx, qword ptr [rsp + 0x28]
	mov	rdi, rbx
	mov	edx, r13d
	call	readlinebuffer_delim
	test	rax, rax
	je	.label_165
	mov	r14d, r13d
	mov	rbp, qword ptr [rbx + 8]
	mov	r13, qword ptr [rbx + 0x10]
	mov	rdi, rbp
	mov	rsi, r13
	call	find_field
	mov	rsi, rax
	sub	r13, rsi
	lea	rbx, [rbp + r13 - 1]
	mov	rcx, qword ptr [rip + check_chars]
	cmp	rcx, rbx
	mov	rdx, rbx
	cmovb	rdx, rcx
	mov	rax, qword ptr [rsp + 8]
	cmp	rcx, rax
	cmovae	rcx, rax
	movzx	eax, byte ptr [rip + ignore_case]
	test	al, al
	je	.label_253
	mov	al, 1
	cmp	rdx, rcx
	mov	r13d, r14d
	jne	.label_179
	mov	rdi, rsi
	mov	rbp, rsi
	mov	rsi, qword ptr [rsp + 0x10]
	call	memcasecmp
	jmp	.label_230
	.section	.text
	.align	32
	#Procedure 0x403cde
	.globl sub_403cde
	.type sub_403cde, @function
sub_403cde:

	nop	
.label_253:
	cmp	byte ptr [rip + hard_LC_COLLATE],  0
	je	.label_235
	mov	rdi, rsi
	mov	rbp, rsi
	mov	rsi, rdx
	mov	rdx, qword ptr [rsp + 0x10]
	call	xmemcoll
	mov	rsi, rbp
	test	eax, eax
	setne	al
	mov	r13d, r14d
	jmp	.label_179
.label_235:
	mov	al, 1
	cmp	rdx, rcx
	mov	r13d, r14d
	jne	.label_179
	mov	rdi, rsi
	mov	rbp, rsi
	mov	rsi, qword ptr [rsp + 0x10]
	call	memcmp
.label_230:
	mov	rsi, rbp
	test	eax, eax
	setne	al
.label_179:
	movzx	ecx, al
	xor	rcx, 1
	add	r15, rcx
	xor	ecx, ecx
	cmp	r15, -1
	sete	cl
	sub	r15, rcx
	mov	ecx, dword ptr [rip + delimit_groups]
	test	ecx, ecx
	mov	r14d, dword ptr [rsp + 0x20]
	je	.label_247
	test	al, al
	jne	.label_282
	dec	ecx
	cmp	ecx, 1
	ja	.label_188
	cmp	r15, 1
	jne	.label_188
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_187
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], r12b
	jmp	.label_188
	.section	.text
	.align	32
	#Procedure 0x403d83
	.globl sub_403d83
	.type sub_403d83, @function
sub_403d83:

	nop	word ptr cs:[rax + rax]
.label_247:
	mov	bpl, 1
	test	al, al
	jne	.label_265
.label_188:
	movzx	eax, byte ptr [rip + output_later_repeated]
	test	al, al
	je	.label_181
	xor	ebp, ebp
.label_265:
	mov	qword ptr [rsp + 0x10], rsi
	mov	qword ptr [rsp + 8], rbx
	mov	rbx, qword ptr [rsp + 0x18]
	jmp	.label_257
.label_282:
	mov	qword ptr [rsp + 0x10], rsi
	mov	qword ptr [rsp + 8], rbx
	jmp	.label_272
.label_229:
	mov	esi, dword ptr [rsp + 0x34]
	call	__overflow
	jmp	.label_226
	.section	.text
	.align	32
	#Procedure 0x403dd9
	.globl sub_403dd9
	.type sub_403dd9, @function
sub_403dd9:

	nop	dword ptr [rax]
.label_175:
	mov	rsi, qword ptr [rip + stdin]
	test	byte ptr [rsi], 0x10
	jne	.label_191
	mov	rbx, qword ptr [rsp + 0x28]
	mov	rdi, rbx
	mov	edx, r13d
	call	readlinebuffer_delim
	test	rax, rax
	je	.label_165
	mov	rbp, qword ptr [rbx + 8]
	mov	rbx, qword ptr [rbx + 0x10]
	mov	rdi, rbp
	mov	rsi, rbx
	call	find_field
	mov	r14, rax
	sub	rbx, r14
	lea	rbx, [rbp + rbx - 1]
	mov	rcx, qword ptr [rip + check_chars]
	cmp	rcx, rbx
	mov	rdx, rbx
	cmovb	rdx, rcx
	mov	rax, qword ptr [rsp + 8]
	cmp	rcx, rax
	cmovae	rcx, rax
	cmp	byte ptr [rip + ignore_case],  1
	jne	.label_174
	mov	al, 1
	cmp	rdx, rcx
	jne	.label_202
	mov	rdi, r14
	mov	rsi, qword ptr [rsp + 0x10]
	call	memcasecmp
	jmp	.label_195
	.section	.text
	.align	32
	#Procedure 0x403e63
	.globl sub_403e63
	.type sub_403e63, @function
sub_403e63:

	nop	word ptr cs:[rax + rax]
.label_174:
	cmp	byte ptr [rip + hard_LC_COLLATE],  0
	je	.label_244
	mov	rdi, r14
	mov	rsi, rdx
	mov	rdx, qword ptr [rsp + 0x10]
	call	xmemcoll
	jmp	.label_195
.label_244:
	mov	al, 1
	cmp	rdx, rcx
	jne	.label_202
	mov	rdi, r14
	mov	rsi, qword ptr [rsp + 0x10]
	call	memcmp
	nop	
.label_195:
	test	eax, eax
	setne	al
.label_202:
	movzx	ecx, al
	xor	rcx, 1
	add	r15, rcx
	xor	ecx, ecx
	cmp	r15, -1
	sete	cl
	sub	r15, rcx
	mov	ecx, dword ptr [rip + delimit_groups]
	test	ecx, ecx
	je	.label_218
	test	al, al
	jne	.label_214
	cmp	ecx, 1
	jne	.label_226
	cmp	r15, 1
	jne	.label_226
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_229
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], r12b
	jmp	.label_226
	.section	.text
	.align	32
	#Procedure 0x403ef6
	.globl sub_403ef6
	.type sub_403ef6, @function
sub_403ef6:

	nop	word ptr cs:[rax + rax]
.label_218:
	mov	bpl, 1
	test	al, al
	jne	.label_168
.label_226:
	cmp	byte ptr [rip + output_later_repeated],  1
	jne	.label_175
	xor	ebp, ebp
.label_168:
	mov	qword ptr [rsp + 0x10], r14
	mov	qword ptr [rsp + 8], rbx
	mov	rbx, qword ptr [rsp + 0x18]
	mov	r14d, dword ptr [rsp + 0x20]
	jmp	.label_257
.label_214:
	mov	qword ptr [rsp + 0x10], r14
	mov	qword ptr [rsp + 8], rbx
	mov	r14d, dword ptr [rsp + 0x20]
.label_272:
	test	r15, r15
	mov	rbx, qword ptr [rsp + 0x18]
	je	.label_248
	xor	r14d, r14d
.label_248:
	mov	bpl, 1
.label_257:
	test	r15, r15
	je	.label_275
	test	bpl, bpl
	je	.label_234
	mov	al, byte ptr [rip + output_first_repeated]
	jmp	.label_252
.label_275:
	mov	al, byte ptr [rip + output_unique]
.label_252:
	test	al, al
	je	.label_256
	jmp	.label_200
.label_234:
	cmp	byte ptr [rip + output_later_repeated],  1
	jne	.label_256
.label_200:
	mov	al, byte ptr [rip + countmode]
	test	al, al
	jne	.label_260
	lea	rdx, [r15 + 1]
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_233
	xor	eax, eax
	call	__printf_chk
.label_260:
	mov	rdx, qword ptr [rbx + 8]
	mov	rdi, qword ptr [rbx + 0x10]
	mov	rcx, qword ptr [rip + stdout]
	mov	esi, 1
	call	fwrite_unlocked
	jmp	.label_256
	.section	.text
	.align	32
	#Procedure 0x403fb7
	.globl sub_403fb7
	.type sub_403fb7, @function
sub_403fb7:

	nop	word ptr [rax + rax]
.label_197:
	mov	rdx, qword ptr [r13 + 8]
	mov	rdi, qword ptr [r13 + 0x10]
	mov	rcx, qword ptr [rip + stdout]
	mov	esi, 1
	call	fwrite_unlocked
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rbp
	mov	qword ptr [rsp + 0x20], r14
	mov	rbx, r13
	mov	r13, qword ptr [rsp + 0x28]
.label_259:
	mov	qword ptr [rsp + 0x28], rbx
	test	al, 1
	je	.label_185
.label_238:
	mov	rsi, qword ptr [rip + stdin]
	mov	bl, 1
	test	byte ptr [rsi], 0x10
	jne	.label_173
	mov	rdi, r13
	mov	edx, dword ptr [rsp + 8]
	call	readlinebuffer_delim
	test	rax, rax
	je	.label_173
	mov	rbx, qword ptr [r13 + 8]
	mov	rbp, qword ptr [r13 + 0x10]
	mov	rdi, rbx
	mov	rsi, rbp
	call	find_field
	mov	r14, rax
	sub	rbp, r14
	lea	rbp, [rbx + rbp - 1]
	mov	bl, 1
	mov	rax, qword ptr [rsp + 0x28]
	cmp	qword ptr [rax + 8], 0
	je	.label_166
	mov	rcx, qword ptr [rip + check_chars]
	cmp	rcx, rbp
	mov	rdx, rbp
	cmovb	rdx, rcx
	mov	rax, qword ptr [rsp + 0x10]
	cmp	rcx, rax
	cmovae	rcx, rax
	cmp	byte ptr [rip + ignore_case],  1
	jne	.label_189
	cmp	rdx, rcx
	jne	.label_166
	mov	rdi, r14
	mov	rsi, qword ptr [rsp + 0x20]
	call	memcasecmp
	jmp	.label_201
	.section	.text
	.align	32
	#Procedure 0x404087
	.globl sub_404087
	.type sub_404087, @function
sub_404087:

	nop	word ptr [rax + rax]
.label_189:
	cmp	byte ptr [rip + hard_LC_COLLATE],  0
	je	.label_206
	mov	rdi, r14
	mov	rsi, rdx
	mov	rdx, qword ptr [rsp + 0x20]
	call	xmemcoll
	jmp	.label_201
.label_206:
	cmp	rdx, rcx
	jne	.label_166
	mov	rdi, r14
	mov	rsi, qword ptr [rsp + 0x20]
	call	memcmp
	nop	dword ptr [rax]
.label_201:
	test	eax, eax
	setne	bl
.label_166:
	mov	eax, dword ptr [rip + grouping]
	test	bl, bl
	je	.label_225
	test	eax, eax
	je	.label_225
	cmp	eax, 4
	je	.label_228
	cmp	eax, 1
	jne	.label_225
.label_228:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jb	.label_284
	mov	esi, dword ptr [rsp + 0x18]
	call	__overflow
	mov	eax, dword ptr [rip + grouping]
	nop	dword ptr [rax]
.label_225:
	test	eax, eax
	setne	al
	or	bl, al
	cmp	bl, 1
	jne	.label_238
	jmp	.label_197
	.section	.text
	.align	32
	#Procedure 0x404115
	.globl sub_404115
	.type sub_404115, @function
sub_404115:

	nop	word ptr cs:[rax + rax]
.label_284:
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], r12b
	jmp	.label_197
.label_262:
	mov	esi, dword ptr [rsp + 0x18]
	call	__overflow
	mov	eax, dword ptr [rip + grouping]
	jmp	.label_172
	.section	.text
	.align	32
	#Procedure 0x404144
	.globl sub_404144
	.type sub_404144, @function
sub_404144:

	nop	word ptr cs:[rax + rax]
.label_185:
	mov	rsi, qword ptr [rip + stdin]
	test	byte ptr [rsi], 0x10
	jne	.label_251
	mov	rdi, r13
	mov	edx, dword ptr [rsp + 8]
	call	readlinebuffer_delim
	test	rax, rax
	je	.label_251
	mov	rbx, qword ptr [r13 + 8]
	mov	r15, qword ptr [r13 + 0x10]
	mov	rdi, rbx
	mov	rsi, r15
	call	find_field
	mov	r14, rax
	sub	r15, r14
	lea	rbp, [rbx + r15 - 1]
	mov	bl, 1
	mov	rax, qword ptr [rsp + 0x28]
	cmp	qword ptr [rax + 8], 0
	je	.label_263
	mov	rcx, qword ptr [rip + check_chars]
	cmp	rcx, rbp
	mov	rdx, rbp
	cmovb	rdx, rcx
	mov	rax, qword ptr [rsp + 0x10]
	cmp	rcx, rax
	cmovae	rcx, rax
	movzx	eax, byte ptr [rip + ignore_case]
	test	al, al
	je	.label_267
	cmp	rdx, rcx
	jne	.label_263
	mov	rdi, r14
	mov	rsi, qword ptr [rsp + 0x20]
	call	memcasecmp
	jmp	.label_273
	.section	.text
	.align	32
	#Procedure 0x4041dd
	.globl sub_4041dd
	.type sub_4041dd, @function
sub_4041dd:

	nop	dword ptr [rax]
.label_267:
	cmp	byte ptr [rip + hard_LC_COLLATE],  0
	je	.label_249
	mov	rdi, r14
	mov	rsi, rdx
	mov	rdx, qword ptr [rsp + 0x20]
	call	xmemcoll
	jmp	.label_273
.label_249:
	cmp	rdx, rcx
	jne	.label_263
	mov	rdi, r14
	mov	rsi, qword ptr [rsp + 0x20]
	call	memcmp
	nop	dword ptr [rax]
.label_273:
	test	eax, eax
	setne	bl
.label_263:
	mov	eax, dword ptr [rip + grouping]
	test	bl, bl
	je	.label_172
	test	eax, eax
	je	.label_172
	cmp	eax, 1
	je	.label_176
	cmp	eax, 4
	je	.label_176
	mov	ecx, eax
	or	ecx, 1
	cmp	ecx, 3
	jne	.label_172
	nop	word ptr [rax + rax]
.label_176:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rdi + 0x28]
	cmp	rcx, qword ptr [rdi + 0x30]
	jae	.label_262
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], r12b
.label_172:
	test	eax, eax
	setne	al
	or	bl, al
	je	.label_185
	jmp	.label_197
.label_191:
	mov	rbx, qword ptr [rsp + 0x18]
	jmp	.label_198
.label_165:
	mov	rbx, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [rip + stdin]
	test	byte ptr [rax], 0x20
	jne	.label_213
.label_198:
	test	r15, r15
	je	.label_203
	cmp	byte ptr [rip + output_first_repeated],  1
	je	.label_209
	jmp	.label_213
.label_251:
	xor	ebx, ebx
.label_173:
	mov	eax, dword ptr [rip + grouping]
	cmp	eax, 4
	je	.label_215
	cmp	eax, 2
	jne	.label_213
.label_215:
	test	bl, bl
	jne	.label_213
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_220
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], r12b
	jmp	.label_213
.label_203:
	mov	al, byte ptr [rip + output_unique]
	test	al, al
	je	.label_213
.label_209:
	mov	al, byte ptr [rip + countmode]
	test	al, al
	jne	.label_194
	inc	r15
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_233
	xor	eax, eax
	mov	rdx, r15
	call	__printf_chk
.label_194:
	mov	rdx, qword ptr [rbx + 8]
	mov	rdi, qword ptr [rbx + 0x10]
	mov	rcx, qword ptr [rip + stdout]
	mov	esi, 1
	call	fwrite_unlocked
.label_213:
	mov	rdi, qword ptr [rip + stdin]
	test	byte ptr [rdi], 0x20
	jne	.label_245
	call	rpl_fclose
	test	eax, eax
	jne	.label_245
	mov	rdi, qword ptr [rsp + 0x48]
	call	free
	mov	rdi, qword ptr [rsp + 0x80]
	call	free
	xor	eax, eax
	add	rsp, 0x88
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_220:
	mov	esi, dword ptr [rsp + 0x18]
	call	__overflow
	jmp	.label_213
.label_280:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_199
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	movsxd	rax, dword ptr [rip + optind]
	mov	rdi, qword ptr [r14 + rax*8]
.label_208:
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	edi, 1
	call	usage
.label_261:
	cmp	eax, 0xffffff7d
	je	.label_269
	cmp	eax, 0xffffff7e
	jne	.label_271
	xor	edi, edi
	call	usage
.label_271:
	mov	edi, 1
	call	usage
.label_269:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	qword ptr [rsp], 0
	mov	esi, OFFSET FLAT:label_101
	mov	edx, OFFSET FLAT:label_106
	mov	r8d, OFFSET FLAT:label_276
	mov	r9d, OFFSET FLAT:label_277
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_245:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_167
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x68]
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_279:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_182
	jmp	.label_183
.label_270:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_186
	jmp	.label_183
.label_170:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_190
.label_183:
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 1
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_15
	xor	eax, eax
	mov	rcx, rbx
	mov	r8, rbp
	call	error
.label_216:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_199
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + optarg]
	jmp	.label_208
.label_283:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_211
	jmp	.label_212
.label_222:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_217
	jmp	.label_212
.label_237:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbp
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_11
	xor	eax, eax
	mov	esi, ebx
	call	error
.label_246:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbx
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_11
	xor	eax, eax
	mov	esi, ebp
	call	error
.label_224:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_241
.label_212:
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
	.section	.text
	.align	32
	#Procedure 0x404531
	.globl sub_404531
	.type sub_404531, @function
sub_404531:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
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
	je	.label_286
	add	rbx, 8
	nop	word ptr cs:[rax + rax]
.label_287:
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	mov	rax, r13
	je	.label_286
	mov	r13, qword ptr [rbx]
	add	rbx, 8
	add	r15, r14
	test	r13, r13
	mov	eax, 0
	jne	.label_287
.label_286:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x4045a3
	.globl sub_4045a3
	.type sub_4045a3, @function
sub_4045a3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4045b0

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
	mov	r12, rsi
	mov	rbp, rdi
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_292
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stderr]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbx, qword ptr [rbp]
	test	rbx, rbx
	je	.label_289
	xor	r13d, r13d
	xor	r15d, r15d
	mov	qword ptr [rsp], rbp
	nop	dword ptr [rax + rax]
.label_294:
	test	r15, r15
	je	.label_288
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	je	.label_293
.label_288:
	mov	r13, qword ptr [rip + stderr]
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_290
	xor	eax, eax
	mov	rdi, r13
	call	__fprintf_chk
	mov	r13, r12
	jmp	.label_296
	.section	.text
	.align	32
	#Procedure 0x404642
	.globl sub_404642
	.type sub_404642, @function
sub_404642:

	nop	word ptr cs:[rax + rax]
.label_293:
	mov	rbp, qword ptr [rip + stderr]
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_295
	xor	eax, eax
	mov	rdi, rbp
	mov	rbp, qword ptr [rsp]
	call	__fprintf_chk
.label_296:
	mov	rbx, qword ptr [rbp + r15*8 + 8]
	inc	r15
	add	r12, r14
	test	rbx, rbx
	jne	.label_294
.label_289:
	mov	rdi, qword ptr [rip + stderr]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_291
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_291:
	mov	esi, 0xa
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	__overflow
	.section	.text
	.align	32
	#Procedure 0x4046d1
	.globl sub_4046d1
	.type sub_4046d1, @function
sub_4046d1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4046e0
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x4046ea
	.globl sub_4046ea
	.type sub_4046ea, @function
sub_4046ea:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4046f0

	.globl readlinebuffer_delim
	.type readlinebuffer_delim, @function
readlinebuffer_delim:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	rbp, rsi
	mov	r15, rdi
	xor	eax, eax
	test	byte ptr [rbp], 0x10
	jne	.label_300
	mov	r12, qword ptr [r15 + 0x10]
	mov	r14, qword ptr [r15]
	add	r14, r12
	mov	dword ptr [rsp + 4], edx
	movsx	edx, dl
	mov	r13, r12
	mov	dword ptr [rsp], edx
	nop	word ptr cs:[rax + rax]
.label_299:
	mov	rax, qword ptr [rbp + 8]
	cmp	rax, qword ptr [rbp + 0x10]
	jae	.label_302
	lea	rcx, [rax + 1]
	mov	qword ptr [rbp + 8], rcx
	movzx	ebx, byte ptr [rax]
.label_297:
	cmp	r13, r14
	jne	.label_298
	mov	r13, qword ptr [r15]
	mov	rdi, r12
	mov	rsi, r15
	call	x2realloc
	mov	edx, dword ptr [rsp]
	mov	r12, rax
	add	r13, r12
	mov	qword ptr [r15 + 0x10], r12
	mov	r14, r12
	add	r14, qword ptr [r15]
.label_298:
	mov	byte ptr [r13], bl
	inc	r13
	cmp	ebx, edx
	jne	.label_299
	jmp	.label_301
.label_302:
	mov	rdi, rbp
	call	__uflow
	mov	edx, dword ptr [rsp]
	mov	ebx, eax
	cmp	ebx, -1
	jne	.label_297
	cmp	r13, r12
	mov	ecx, dword ptr [rsp + 4]
	mov	eax, 0
	je	.label_300
	test	byte ptr [rbp], 0x20
	jne	.label_300
	cmp	byte ptr [r13 - 1], cl
	mov	ebx, edx
	jne	.label_297
.label_301:
	sub	r13, r12
	mov	qword ptr [r15 + 8], r13
	mov	rax, r15
.label_300:
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
	#Procedure 0x4047bf
	.globl sub_4047bf
	.type sub_4047bf, @function
sub_4047bf:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4047c0
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
	.align	32
	#Procedure 0x4047d8
	.globl sub_4047d8
	.type sub_4047d8, @function
sub_4047d8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4047e0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_313
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_315
.label_313:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_315:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_304
	cmp	r10d, 0x29
	jae	.label_312
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_314
.label_312:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_314:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_304
	cmp	r10d, 0x29
	jae	.label_310
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_311
.label_310:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_311:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_304
	cmp	r10d, 0x29
	jae	.label_308
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_309
.label_308:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_309:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_304
	cmp	r10d, 0x29
	jae	.label_306
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_307
.label_306:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_307:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_304
	cmp	r10d, 0x29
	jae	.label_303
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_305
.label_303:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_305:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_304
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_304
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_304
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_304
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_304:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	32
	#Procedure 0x4049c2
	.globl sub_4049c2
	.type sub_4049c2, @function
sub_4049c2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4049d0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_316:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_316
	jmp	version_etc_arn
	.section	.text
	.align	32
	#Procedure 0x4049f1
	.globl sub_4049f1
	.type sub_4049f1, @function
sub_4049f1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404a00
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	.section	.text
	.align	32
	#Procedure 0x404a08
	.globl sub_404a08
	.type sub_404a08, @function
sub_404a08:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404a10
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_140]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_141]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_142]
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
	.align	32
	#Procedure 0x404a64
	.globl sub_404a64
	.type sub_404a64, @function
sub_404a64:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404a70
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_140]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_141]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_142]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_317
	test	rsi, rsi
	je	.label_317
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_317:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x404ae0

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
	.align	32
	#Procedure 0x404af9
	.globl sub_404af9
	.type sub_404af9, @function
sub_404af9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404b00
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
	.align	32
	#Procedure 0x404b18
	.globl sub_404b18
	.type sub_404b18, @function
sub_404b18:

	nop	dword ptr [rax + rax]
.label_318:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x404b25
	.globl sub_404b25
	.type sub_404b25, @function
sub_404b25:

	nop	
	.section	.text
	.align	32
	#Procedure 0x404b27
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_140]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_141]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_142]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_318
	test	rdx, rdx
	je	.label_318
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	.section	.text
	.align	32
	#Procedure 0x404b90
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_140]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_141]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_142]
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
	.align	32
	#Procedure 0x404bfe
	.globl sub_404bfe
	.type sub_404bfe, @function
sub_404bfe:

	nop	
	.section	.text
	.align	32
	#Procedure 0x404c00
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
	#Procedure 0x404c13
	.globl sub_404c13
	.type sub_404c13, @function
sub_404c13:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404c20
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
	.align	32
	#Procedure 0x404c39
	.globl sub_404c39
	.type sub_404c39, @function
sub_404c39:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404c40
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x404c48
	.globl sub_404c48
	.type sub_404c48, @function
sub_404c48:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404c50

	.globl x2realloc
	.type x2realloc, @function
x2realloc:
	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_320
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_323
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_319
	call	free
	xor	eax, eax
	jmp	.label_322
.label_321:
	call	xalloc_die
.label_323:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x404c8c
	.globl sub_404c8c
	.type sub_404c8c, @function
sub_404c8c:

	nop	word ptr cs:[rax + rax]
.label_320:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_321
	mov	qword ptr [rsi], rbx
.label_319:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_322
	test	rax, rax
	je	.label_321
.label_322:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x404cc0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_324
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_325
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_327
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_106
	mov	ecx, OFFSET FLAT:label_100
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_326
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	32
	#Procedure 0x404d34
	.globl sub_404d34
	.type sub_404d34, @function
sub_404d34:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404d40
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_328
	call	rpl_calloc
	test	rax, rax
	je	.label_328
	pop	rcx
	ret	
.label_328:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x404d66
	.globl sub_404d66
	.type sub_404d66, @function
sub_404d66:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404d70

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
	mov	edx, OFFSET FLAT:label_334
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_342
.label_345:
	mov	edx, OFFSET FLAT:label_343
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_342:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_347
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
	mov	esi, OFFSET FLAT:label_344
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_330
	jmp	qword ptr [(r12 * 8) + label_331]
.label_643:
	add	rsp, 8
	jmp	.label_329
.label_330:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_339
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
	jmp	.label_329
.label_644:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_340
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
.label_645:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_337
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
.label_646:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_336
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
.label_647:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_332
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
	jmp	.label_329
.label_648:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_335
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
	jmp	.label_329
.label_649:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_333
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
	jmp	.label_329
.label_650:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_338
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
	jmp	.label_329
.label_652:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_341
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
	jmp	.label_329
.label_651:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_346
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
.label_329:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x4050c8
	.globl sub_4050c8
	.type sub_4050c8, @function
sub_4050c8:

	nop	dword ptr [rax + rax]
.label_349:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	.section	.text
	.align	32
	#Procedure 0x4050dc
	.globl sub_4050dc
	.type sub_4050dc, @function
sub_4050dc:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4050e8

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_349
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_348
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_349
.label_348:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_349
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_350
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_350:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_351:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_352
	test	rax, rax
	je	.label_353
.label_352:
	pop	rbx
	ret	
.label_353:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x405169

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_351
	test	rbx, rbx
	jne	.label_351
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_354:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x405185
	.globl sub_405185
	.type sub_405185, @function
sub_405185:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40518f
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
	je	.label_355
	test	r14, r14
	je	.label_354
.label_355:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x4051c0
	.globl freebuffer
	.type freebuffer, @function
freebuffer:

	mov	rdi, qword ptr [rdi + 0x10]
	jmp	free
	.section	.text
	.align	32
	#Procedure 0x4051c9
	.globl sub_4051c9
	.type sub_4051c9, @function
sub_4051c9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4051d0

	.globl find_field
	.type find_field, @function
find_field:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r14, rsi
	mov	r15, rdi
	xor	ebx, ebx
	dec	r15
	je	.label_360
	mov	r12, qword ptr [rip + skip_fields]
	test	r12, r12
	je	.label_360
	xor	ebx, ebx
	xor	r13d, r13d
	nop	dword ptr [rax + rax]
.label_358:
	cmp	rbx, r15
	jae	.label_356
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	nop	dword ptr [rax]
.label_359:
	movzx	ecx, byte ptr [r14 + rbx]
	cmp	rcx, 0xa
	je	.label_357
	movzx	ecx, word ptr [rax + rcx*2]
	and	ecx, 1
	test	cx, cx
	je	.label_356
.label_357:
	inc	rbx
	cmp	rbx, r15
	jb	.label_359
.label_356:
	cmp	rbx, r15
	jae	.label_361
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	nop	dword ptr [rax]
.label_362:
	movzx	ecx, byte ptr [r14 + rbx]
	cmp	rcx, 0xa
	je	.label_361
	movzx	ecx, word ptr [rax + rcx*2]
	and	ecx, 1
	test	cx, cx
	jne	.label_361
	inc	rbx
	cmp	rbx, r15
	jb	.label_362
.label_361:
	cmp	r15, rbx
	jbe	.label_360
	inc	r13
	cmp	r13, r12
	jb	.label_358
.label_360:
	mov	rax, qword ptr [rip + skip_chars]
	sub	r15, rbx
	cmp	rax, r15
	cmovb	r15, rax
	add	r15, rbx
	add	r14, r15
	mov	rax, r14
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x405290
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_363
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_364
	test	rax, rax
	je	.label_363
.label_364:
	pop	rbx
	ret	
.label_363:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4052c5
	.globl sub_4052c5
	.type sub_4052c5, @function
sub_4052c5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4052d0

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
	jne	.label_365
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_365
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_366
.label_365:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_366:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_367
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_367:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40533e
	.globl sub_40533e
	.type sub_40533e, @function
sub_40533e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x405340
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
	#Procedure 0x40534f
	.globl sub_40534f
	.type sub_40534f, @function
sub_40534f:

	nop	
.label_369:
	mov	esi, OFFSET FLAT:label_129
.label_368:
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
	.align	32
	#Procedure 0x4053a3
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
	je	.label_369
	mov	esi, OFFSET FLAT:label_127
	jmp	.label_368
	.section	.text
	.align	32
	#Procedure 0x4053c0

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
	jmp	.label_373
	.section	.text
	.align	32
	#Procedure 0x40546f
	.globl sub_40546f
	.type sub_40546f, @function
sub_40546f:

	nop	
.label_419:
	cmp	r8d, 2
	setne	al
	cmp	byte ptr [rsp + 0xf], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa8]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x34]
	mov	rsi, qword ptr [rsp + 0xc0]
	je	.label_401
	or	al, dl
	jne	.label_401
	test	dil, 1
	jne	.label_416
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_401
	test	rbp, rbp
	mov	r15d, r8d
	mov	al, bl
	mov	qword ptr [rsp + 0x48], rcx
	mov	r12d, esi
	mov	r13, qword ptr [rsp + 0x68]
	je	.label_373
	jmp	.label_401
.label_599:
	mov	r8d, 5
	test	r12b, 1
	jne	.label_425
	test	rbp, rbp
	je	.label_405
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax], 0x22
.label_405:
	mov	r14d, 1
	jmp	.label_432
.label_600:
	mov	r13b, 1
	mov	r8d, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_77
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	sil, 1
	jmp	.label_379
.label_425:
	xor	r14d, r14d
.label_432:
	mov	eax, OFFSET FLAT:label_77
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	r13b, 1
	jmp	.label_441
	.section	.text
	.align	32
	#Procedure 0x40553f
	.globl sub_40553f
	.type sub_40553f, @function
sub_40553f:

	nop	
.label_373:
	mov	rbp, r13
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_451
	mov	r8d, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	jmp	qword ptr [(rcx * 8) + label_400]
.label_601:
	mov	r14d, edi
	mov	edi, OFFSET FLAT:label_462
	mov	esi, r15d
	mov	ebx, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x80], rax
	mov	edi, OFFSET FLAT:label_78
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebx
	mov	edi, r14d
	mov	qword ptr [rsp + 0x78], rax
.label_602:
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x80]
	jne	.label_377
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_377
	xor	r14d, r14d
	nop	
.label_485:
	cmp	r14, rbp
	jae	.label_428
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], al
.label_428:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_485
.label_377:
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
	jmp	.label_379
.label_594:
	xor	r8d, r8d
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_379
.label_597:
	mov	al, 1
.label_595:
	mov	r12b, 1
.label_598:
	test	r12b, 1
	mov	cl, 1
	je	.label_384
	mov	ecx, eax
.label_384:
	mov	al, cl
.label_596:
	mov	r8d, 2
	test	r12b, 1
	jne	.label_386
	test	rbp, rbp
	je	.label_392
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx], 0x27
.label_392:
	mov	r14d, 1
	jmp	.label_395
.label_386:
	xor	r14d, r14d
.label_395:
	mov	ecx, OFFSET FLAT:label_78
	mov	qword ptr [rsp + 0x58], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x50], rcx
	mov	r13d, eax
.label_441:
	mov	sil, r12b
.label_379:
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
	jmp	.label_407
	.section	.text
	.align	32
	#Procedure 0x405701
	.globl sub_405701
	.type sub_405701, @function
sub_405701:

	nop	word ptr cs:[rax + rax]
.label_398:
	inc	r12
.label_407:
	cmp	r11, -1
	je	.label_436
	cmp	r12, r11
	jne	.label_437
	jmp	.label_438
	.section	.text
	.align	32
	#Procedure 0x405723
	.globl sub_405723
	.type sub_405723, @function
sub_405723:

	nop	word ptr cs:[rax + rax]
.label_436:
	mov	rcx, -1
	cmp	byte ptr [r10 + r12], 0
	je	.label_444
.label_437:
	cmp	byte ptr [rsp + 0x37], 0
	je	.label_452
	mov	rax, qword ptr [rsp + 0x50]
	lea	rbx, [r12 + rax]
	cmp	rax, 2
	jb	.label_458
	cmp	r11, -1
	jne	.label_458
	mov	r15d, edi
	mov	rdi, r10
	mov	r13d, r9d
	call	strlen
	mov	r9d, r13d
	mov	r8, qword ptr [rsp + 0x38]
	mov	edi, r15d
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_458:
	cmp	rbx, r11
	jbe	.label_467
.label_452:
	xor	esi, esi
.label_370:
	movzx	r15d, byte ptr [r10 + r12]
	cmp	r15, 0x7e
	ja	.label_469
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_474]
.label_614:
	test	r12, r12
	jne	.label_431
	jmp	.label_439
	.section	.text
	.align	32
	#Procedure 0x4057b6
	.globl sub_4057b6
	.type sub_4057b6, @function
sub_4057b6:

	nop	word ptr cs:[rax + rax]
.label_467:
	mov	r13d, r9d
	mov	r15d, edi
	mov	rbx, r11
	lea	rdi, [r10 + r12]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	rdx, qword ptr [rsp + 0x50]
	call	memcmp
	test	eax, eax
	sete	sil
	jne	.label_484
	cmp	byte ptr [rsp + 0xf], 0
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	je	.label_370
	jmp	.label_393
.label_484:
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	jmp	.label_370
.label_618:
	xor	eax, eax
	cmp	r11, -1
	je	.label_378
	test	r12, r12
	jne	.label_383
	cmp	r11, 1
	je	.label_439
	xor	r13d, r13d
	jmp	.label_394
.label_607:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_388
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_393
	cmp	r8d, 2
	jne	.label_374
	mov	eax, r9d
	and	al, 1
	jne	.label_374
	cmp	r14, rbp
	jae	.label_399
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_399:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_402
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_402:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_409
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_409:
	add	r14, 3
	mov	r9b, 1
.label_374:
	mov	rcx, r14
	cmp	rcx, rbp
	jae	.label_415
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + rcx], 0x5c
.label_415:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r8d, 2
	je	.label_418
	lea	rdx, [r12 + 1]
	cmp	rdx, r11
	jae	.label_418
	mov	dl, byte ptr [r10 + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_418
	cmp	r14, rbp
	jae	.label_492
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x30
.label_492:
	lea	rdx, [rcx + 2]
	cmp	rdx, rbp
	jae	.label_477
	mov	ebx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rdx], 0x30
	mov	esi, ebx
.label_477:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_394
.label_608:
	mov	bl, 0x62
	jmp	.label_429
.label_609:
	mov	cl, 0x74
	jmp	.label_417
.label_610:
	mov	bl, 0x76
	jmp	.label_429
.label_611:
	mov	bl, 0x66
	jmp	.label_429
.label_612:
	mov	cl, 0x72
	jmp	.label_417
.label_615:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa8], rax
	cmp	r8d, 2
	jne	.label_448
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_406
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
	jae	.label_456
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_456:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_471
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x5c
.label_471:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_476
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_476:
	add	r14, 3
	xor	r9d, r9d
.label_448:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_394
.label_616:
	mov	r15b, 0x3f
	cmp	r8d, 5
	je	.label_480
	cmp	r8d, 2
	jne	.label_431
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_431
	jmp	.label_406
.label_617:
	cmp	r8d, 2
	jne	.label_489
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_406
	mov	r15b, 0x5c
	xor	eax, eax
	jmp	.label_493
.label_469:
	cmp	qword ptr [rsp + 0xb8], 1
	mov	qword ptr [rsp + 0xa0], rbp
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	mov	dword ptr [rsp + 0x94], esi
	jne	.label_371
	mov	qword ptr [rsp + 0x48], r11
	call	__ctype_b_loc
	mov	r10, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	ebx, 1
	jmp	.label_385
.label_378:
	test	r12, r12
	jne	.label_396
	mov	cl, byte ptr [r10 + 1]
	test	cl, cl
	jne	.label_396
.label_439:
	mov	dl, 1
.label_613:
	cmp	byte ptr [rsp + 0x27], 0
	je	.label_406
	xor	eax, eax
	mov	r13b, dl
.label_394:
	cmp	byte ptr [rsp + 0x36], 0
	je	.label_408
	cmp	qword ptr [rsp + 0x100], 0
	jne	.label_410
	jmp	.label_412
	.section	.text
	.align	32
	#Procedure 0x405a94
	.globl sub_405a94
	.type sub_405a94, @function
sub_405a94:

	nop	word ptr cs:[rax + rax]
.label_408:
	cmp	byte ptr [rsp + 0x35], 0
	je	.label_412
.label_410:
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	ebx, esi
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_490
	mov	rcx, qword ptr [rsp + 0x100]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_421
	.section	.text
	.align	32
	#Procedure 0x405acd
	.globl sub_405acd
	.type sub_405acd, @function
sub_405acd:

	nop	dword ptr [rax]
.label_412:
	test	sil, sil
.label_421:
	mov	ebx, r15d
	je	.label_423
	jmp	.label_427
.label_490:
	mov	ebx, r15d
	jmp	.label_427
.label_388:
	cmp	dword ptr [rsp + 0x9c], 0
	jne	.label_398
	xor	r15d, r15d
	jmp	.label_431
.label_489:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x32], 0
	je	.label_417
	xor	eax, eax
	mov	r15b, 0x5c
.label_493:
	xor	r13d, r13d
	jmp	.label_423
.label_417:
	cmp	byte ptr [rsp + 0x27], 0
	mov	ebx, ecx
	je	.label_406
.label_429:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1f], 0
	mov	r13d, 0
	je	.label_394
	nop	
.label_427:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_393
	cmp	r8d, 2
	jne	.label_449
	mov	eax, r9d
	and	al, 1
	jne	.label_449
	cmp	r14, rbp
	jae	.label_454
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_454:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_457
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_457:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_461
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_461:
	add	r14, 3
	mov	r9b, 1
.label_449:
	cmp	r14, rbp
	jae	.label_468
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_468:
	inc	r14
	jmp	.label_460
.label_371:
	mov	qword ptr [rsp + 0x70], 0
	cmp	r11, -1
	jne	.label_475
	mov	rdi, r10
	call	strlen
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_475:
	cmp	byte ptr [rsp + 0x31], 0
	mov	qword ptr [rsp + 0x48], r11
	mov	qword ptr [rsp + 0x88], r12
	je	.label_479
	lea	rax, [r10 + r12]
	mov	qword ptr [rsp + 0xb0], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbp, [rsp + 0x70]
.label_487:
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
	je	.label_375
	cmp	rbx, -1
	mov	r10, qword ptr [rsp + 0x28]
	movabs	rsi, 0x20000002b
	je	.label_380
	test	rbx, rbx
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_397
	cmp	rbx, 2
	mov	rbp, qword ptr [rsp + 0xa0]
	jb	.label_390
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax]
.label_414:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_372
	bt	rsi, rdx
	jb	.label_406
.label_372:
	inc	rcx
	cmp	rcx, rbx
	jb	.label_414
.label_390:
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	jne	.label_470
	xor	r13d, r13d
.label_470:
	lea	rbp, [rsp + 0x70]
	mov	r12, qword ptr [rsp + 0x40]
	add	r12, rbx
	mov	rdi, rbp
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_487
	jmp	.label_382
.label_418:
	xor	r13d, r13d
	jmp	.label_394
.label_396:
	mov	r11, -1
	xor	r13d, r13d
	jmp	.label_394
.label_480:
	cmp	dword ptr [rsp + 0x98], 0
	je	.label_431
	lea	rcx, [r12 + 2]
	cmp	rcx, r11
	jae	.label_431
	cmp	byte ptr [r10 + r12 + 1], 0x3f
	jne	.label_431
	movsx	edx, byte ptr [r10 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_435
	mov	ebx, esi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_413
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_434
	cmp	r14, rbp
	jae	.label_446
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x3f
.label_446:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_453
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_453:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_440
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_440:
	lea	rax, [r14 + 3]
	cmp	rax, rbp
	jae	.label_450
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x3f
.label_450:
	add	r14, 4
	xor	eax, eax
	mov	r12, rcx
	mov	r15b, dl
.label_413:
	xor	r13d, r13d
	mov	esi, ebx
	jmp	.label_394
.label_431:
	xor	eax, eax
.label_383:
	xor	r13d, r13d
	jmp	.label_394
.label_479:
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbx, [rsp + 0x70]
	nop	word ptr cs:[rax + rax]
.label_411:
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
	je	.label_445
	cmp	rbp, -1
	je	.label_488
	cmp	rbp, -2
	je	.label_375
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	mov	r12, qword ptr [rsp + 0x40]
	jne	.label_494
	xor	r13d, r13d
.label_494:
	add	r12, rbp
	lea	rbx, [rsp + 0x70]
	mov	rdi, rbx
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_411
	jmp	.label_382
.label_375:
	mov	r10, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x40]
	lea	rax, [rsi + r12]
	mov	rdx, qword ptr [rsp + 0x48]
	cmp	rax, rdx
	jae	.label_389
	lea	rax, [r10 + r12]
.label_478:
	cmp	byte ptr [rax + rsi], 0
	je	.label_389
	lea	rcx, [r12 + rsi + 1]
	inc	rsi
	cmp	rcx, rdx
	jb	.label_478
.label_389:
	mov	qword ptr [rsp + 0x40], rsi
.label_380:
	xor	r13d, r13d
	jmp	.label_397
.label_488:
	xor	r13d, r13d
.label_445:
	mov	r10, qword ptr [rsp + 0x28]
.label_397:
	mov	r12, qword ptr [rsp + 0x40]
.label_382:
	mov	rbx, r12
	mov	r12, qword ptr [rsp + 0x88]
.label_385:
	and	r13b, 1
	mov	eax, r13d
	or	al, byte ptr [rsp + 0x33]
	cmp	rbx, 1
	mov	rbp, qword ptr [rsp + 0xa0]
	mov	dil, byte ptr [rsp + 0x1e]
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x60]
	mov	esi, dword ptr [rsp + 0x94]
	ja	.label_404
	test	al, al
	je	.label_404
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_394
.label_404:
	mov	byte ptr [rsp + 0x40], al
	add	rbx, r12
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_420
	.section	.text
	.align	32
	#Procedure 0x405ec7
	.globl sub_405ec7
	.type sub_405ec7, @function
sub_405ec7:

	nop	word ptr [rax + rax]
.label_381:
	inc	r14
	mov	r15b, byte ptr [r10 + r12 + 1]
	mov	r12, rdx
.label_420:
	cmp	byte ptr [rsp + 0x40], 0
	je	.label_426
	test	sil, 1
	je	.label_433
	cmp	r14, rbp
	jae	.label_430
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x5c
.label_430:
	inc	r14
	xor	esi, esi
	jmp	.label_433
	.section	.text
	.align	32
	#Procedure 0x405f05
	.globl sub_405f05
	.type sub_405f05, @function
sub_405f05:

	nop	word ptr cs:[rax + rax]
.label_426:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_393
	cmp	r8d, 2
	jne	.label_422
	mov	eax, r9d
	and	al, 1
	jne	.label_422
	cmp	r14, rbp
	jae	.label_443
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_443:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_447
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x24
.label_447:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_376
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x27
.label_376:
	add	r14, 3
	mov	r9b, 1
.label_422:
	cmp	r14, rbp
	jae	.label_459
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_459:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_464
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_464:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_472
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_472:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_433:
	lea	rdx, [r12 + 1]
	cmp	rbx, rdx
	jbe	.label_423
	test	r9b, 1
	je	.label_481
	mov	rcx, rbx
	mov	ebx, eax
	and	bl, 1
	jne	.label_424
	mov	r8, r12
	mov	r12d, esi
	cmp	r14, rbp
	jae	.label_483
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], 0x27
.label_483:
	lea	rsi, [r14 + 1]
	cmp	rsi, rbp
	jae	.label_491
	mov	rbx, qword ptr [rsp + 0x10]
	mov	byte ptr [rbx + rsi], 0x27
.label_491:
	add	r14, 2
	xor	r9d, r9d
	mov	esi, r12d
	mov	rbx, rcx
	mov	r12, r8
	mov	r8, qword ptr [rsp + 0x38]
	jmp	.label_481
	.section	.text
	.align	32
	#Procedure 0x406016
	.globl sub_406016
	.type sub_406016, @function
sub_406016:

	nop	word ptr cs:[rax + rax]
.label_424:
	mov	rbx, rcx
.label_481:
	cmp	r14, rbp
	jae	.label_381
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], r15b
	mov	esi, ecx
	jmp	.label_381
	.section	.text
	.align	32
	#Procedure 0x40603e
	.globl sub_40603e
	.type sub_40603e, @function
sub_40603e:

	nop	
.label_423:
	test	r9b, 1
	je	.label_387
	and	al, 1
	jne	.label_387
	cmp	r14, rbp
	jae	.label_391
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_391:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_465
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_465:
	add	r14, 2
	xor	r9d, r9d
.label_387:
	mov	ebx, r15d
.label_460:
	cmp	r14, rbp
	jae	.label_403
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], bl
.label_403:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, dil
	mov	edi, r13d
	jmp	.label_398
.label_435:
	xor	r13d, r13d
	jmp	.label_394
	.section	.text
	.align	32
	#Procedure 0x4060a1
	.globl sub_4060a1
	.type sub_4060a1, @function
sub_4060a1:

	nop	word ptr cs:[rax + rax]
.label_438:
	mov	rcx, r12
.label_444:
	cmp	r8d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_419
	or	al, dl
	jne	.label_419
	mov	r11, rcx
	jmp	.label_393
.label_406:
	mov	eax, 2
.label_486:
	mov	qword ptr [rsp + 0x38], rax
.label_393:
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
.label_473:
	mov	r14, rax
.label_482:
	mov	rax, r14
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_401:
	mov	rdx, qword ptr [rsp + 0x58]
	test	rdx, rdx
	je	.label_455
	cmp	byte ptr [rsp + 0xf], 0
	mov	rcx, qword ptr [rsp + 0x10]
	jne	.label_442
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_442
	inc	rdx
	nop	dword ptr [rax + rax]
.label_466:
	cmp	r14, rbp
	jae	.label_463
	mov	byte ptr [rcx + r14], al
.label_463:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_466
	jmp	.label_442
.label_416:
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
	jmp	.label_473
.label_455:
	mov	rcx, qword ptr [rsp + 0x10]
.label_442:
	cmp	r14, rbp
	jae	.label_482
	mov	byte ptr [rcx + r14], 0
	jmp	.label_482
.label_434:
	mov	eax, 5
	jmp	.label_486
.label_451:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4061f0

	.globl memcasecmp
	.type memcasecmp, @function
memcasecmp:
	push	r15
	push	r14
	push	rbx
	mov	rbx, rdx
	mov	r14, rsi
	mov	r15, rdi
	xor	eax, eax
	test	rbx, rbx
	je	.label_495
	call	__ctype_toupper_loc
	mov	rcx, qword ptr [rax]
	xor	edx, edx
	nop	
.label_496:
	movzx	eax, byte ptr [r15 + rdx]
	mov	eax, dword ptr [rcx + rax*4]
	movzx	esi, byte ptr [r14 + rdx]
	sub	eax, dword ptr [rcx + rsi*4]
	jne	.label_495
	inc	rdx
	xor	eax, eax
	cmp	rdx, rbx
	jb	.label_496
.label_495:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x406232
	.globl sub_406232
	.type sub_406232, @function
sub_406232:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406240
	.globl fdadvise
	.type fdadvise, @function
fdadvise:

	jmp	posix_fadvise
	.section	.text
	.align	32
	#Procedure 0x406245
	.globl sub_406245
	.type sub_406245, @function
sub_406245:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406250
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_497
	test	rax, rax
	je	.label_498
.label_497:
	pop	rbx
	ret	
.label_498:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40626a
	.globl sub_40626a
	.type sub_40626a, @function
sub_40626a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406270
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_140]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_141]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_142]
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
	.align	32
	#Procedure 0x4062df
	.globl sub_4062df
	.type sub_4062df, @function
sub_4062df:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4062e0

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
	#Procedure 0x4062f7
	.globl sub_4062f7
	.type sub_4062f7, @function
sub_4062f7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406300

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
	mov	rbx, rdx
	mov	r14, rsi
	mov	rbp, rdi
	mov	rdi, rbx
	call	fileno
	xor	r12d, r12d
	test	eax, eax
	je	.label_505
	cmp	eax, 1
	je	.label_508
	cmp	eax, 2
	je	.label_510
	mov	edi, 2
	mov	esi, 2
	call	dup2
	cmp	eax, 2
	setne	r12b
.label_510:
	mov	r15b, r12b
	mov	edi, 1
	mov	esi, 1
	call	dup2
	cmp	eax, 1
	setne	r12b
	jmp	.label_504
.label_505:
	xor	r15d, r15d
	xor	r13d, r13d
	jmp	.label_507
.label_508:
	xor	r15d, r15d
.label_504:
	xor	r13d, r13d
	xor	edi, edi
	xor	esi, esi
	call	dup2
	test	eax, eax
	je	.label_500
	mov	edi, OFFSET FLAT:label_55
	xor	esi, esi
	xor	eax, eax
	call	open
	mov	r13b, 1
	test	eax, eax
	je	.label_500
	mov	r13b, 1
	jmp	.label_499
.label_500:
	test	r12b, r12b
	je	.label_503
	mov	edi, OFFSET FLAT:label_55
	xor	esi, esi
	xor	eax, eax
	call	open
	cmp	eax, 1
	jne	.label_509
.label_503:
	test	r15b, r15b
	je	.label_507
	mov	edi, OFFSET FLAT:label_55
	xor	esi, esi
	xor	eax, eax
	call	open
	cmp	eax, 2
	jne	.label_499
.label_507:
	mov	rdi, rbp
	mov	rsi, r14
	mov	rdx, rbx
	call	rpl_freopen
	mov	r14, rax
	jmp	.label_502
.label_509:
	mov	r12b, 1
.label_499:
	xor	r14d, r14d
	test	eax, eax
	js	.label_502
	mov	edi, eax
	call	close
	call	__errno_location
	mov	dword ptr [rax], 9
	xor	r14d, r14d
.label_502:
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	test	r15b, r15b
	je	.label_506
	mov	edi, 2
	call	close
.label_506:
	test	r12b, r12b
	je	.label_501
	mov	edi, 1
	call	close
.label_501:
	test	r13b, r13b
	je	.label_511
	xor	edi, edi
	call	close
.label_511:
	test	r14, r14
	jne	.label_512
	mov	dword ptr [rbx], ebp
.label_512:
	mov	rax, r14
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
	#Procedure 0x406442
	.globl sub_406442
	.type sub_406442, @function
sub_406442:

	nop	word ptr cs:[rax + rax]
.label_513:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x406455
	.globl sub_406455
	.type sub_406455, @function
sub_406455:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40645b

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_514
	test	rax, rax
	je	.label_513
.label_514:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x406470

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_515
	test	rsi, rsi
	mov	ecx, 1
	je	.label_516
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_516
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_515:
	mov	ecx, 1
.label_516:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	32
	#Procedure 0x4064bb
	.globl sub_4064bb
	.type sub_4064bb, @function
sub_4064bb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4064c0
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x4064ce
	.globl sub_4064ce
	.type sub_4064ce, @function
sub_4064ce:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4064d0

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
	js	.label_520
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_523
	cmp	r12d, 0x7fffffff
	je	.label_518
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
	jne	.label_521
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_521:
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
.label_523:
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
	jbe	.label_519
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_522
.label_519:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_517
	mov	rdi, r14
	call	free
.label_517:
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
.label_522:
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
.label_520:
	call	abort
.label_518:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40668d
	.globl sub_40668d
	.type sub_40668d, @function
sub_40668d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4066f5
	.globl sub_4066f5
	.type sub_4066f5, @function
sub_4066f5:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406702
	.globl sub_406702
	.type sub_406702, @function
sub_406702:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406726
	.globl sub_406726
	.type sub_406726, @function
sub_406726:

	nop	word ptr cs:[rax + rax]
