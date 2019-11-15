	.section	.text
	.align	16
	#Procedure 0x4014b9
	.globl sub_4014b9
	.type sub_4014b9, @function
sub_4014b9:

	hlt	
	.section	.text
	.align	16
	#Procedure 0x4014ba
	.globl sub_4014ba
	.type sub_4014ba, @function
sub_4014ba:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4014f2
	.globl sub_4014f2
	.type sub_4014f2, @function
sub_4014f2:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40153a
	.globl sub_40153a
	.type sub_40153a, @function
sub_40153a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40155c
	.globl sub_40155c
	.type sub_40155c, @function
sub_40155c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40156d
	.globl sub_40156d
	.type sub_40156d, @function
sub_40156d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401586
	.globl sub_401586
	.type sub_401586, @function
sub_401586:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401590

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
	.align	16
	#Procedure 0x4015b5
	.globl sub_4015b5
	.type sub_4015b5, @function
sub_4015b5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4015c0

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
	jne	.label_12
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_11
	test	cl, cl
	jne	.label_11
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_11
.label_12:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_11
	call	__errno_location
	mov	dword ptr [rax], 0
.label_11:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401620
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x401628
	.globl sub_401628
	.type sub_401628, @function
sub_401628:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401630

	.globl mode_compile
	.type mode_compile, @function
mode_compile:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	mov	bl, byte ptr [r14]
	mov	eax, ebx
	and	al, 0xf8
	cmp	al, 0x30
	jne	.label_26
	xor	eax, eax
	xor	r15d, r15d
	mov	rdx, r14
	nop	
.label_33:
	movsx	ecx, bl
	lea	r15d, [rcx + r15*8 - 0x30]
	cmp	r15d, 0xfff
	ja	.label_14
	movzx	ebx, byte ptr [rdx + 1]
	inc	rdx
	mov	ecx, ebx
	and	cl, 0xf8
	cmp	cl, 0x30
	je	.label_33
	xor	eax, eax
	test	bl, bl
	jne	.label_14
	sub	rdx, r14
	mov	eax, r15d
	and	eax, 0xc00
	or	eax, 0x3ff
	cmp	rdx, 5
	mov	ebx, 0xfff
	cmovl	ebx, eax
	mov	edi, 0x20
	call	xmalloc
	mov	byte ptr [rax], 0x3d
	mov	byte ptr [rax + 1], 1
	mov	dword ptr [rax + 4], 0xfff
	mov	dword ptr [rax + 8], r15d
	mov	dword ptr [rax + 0xc], ebx
	mov	byte ptr [rax + 0x11], 0
	jmp	.label_14
.label_26:
	lea	rax, [r14 + 1]
	mov	edi, 1
	jmp	.label_29
	.section	.text
	.align	16
	#Procedure 0x4016cf
	.globl sub_4016cf
	.type sub_4016cf, @function
sub_4016cf:

	nop	
.label_21:
	add	rdi, rdx
	movzx	ebx, byte ptr [rax]
	inc	rax
.label_29:
	cmp	bl, 0x2c
	jle	.label_31
	cmp	bl, 0x2d
	je	.label_32
	cmp	bl, 0x3d
	mov	edx, 1
	je	.label_21
	jmp	.label_37
	.section	.text
	.align	16
	#Procedure 0x4016ef
	.globl sub_4016ef
	.type sub_4016ef, @function
sub_4016ef:

	nop	
.label_31:
	cmp	bl, 0x2b
	mov	edx, 1
	je	.label_21
	test	bl, bl
	je	.label_39
.label_37:
	xor	edx, edx
	jmp	.label_21
	.section	.text
	.align	16
	#Procedure 0x401702
	.globl sub_401702
	.type sub_401702, @function
sub_401702:

	nop	word ptr cs:[rax + rax]
.label_32:
	mov	edx, 1
	jmp	.label_21
.label_39:
	mov	rax, rdi
	shr	rax, 0x3b
	jne	.label_22
	shl	rdi, 4
	call	xmalloc
	xor	r9d, r9d
	movabs	r8, 0x2000280000000000
	jmp	.label_24
	.section	.text
	.align	16
	#Procedure 0x40173c

	.globl sub_40173c
	.type sub_40173c, @function
sub_40173c:
	inc	r14
	nop	
.label_24:
	xor	esi, esi
	jmp	.label_13
	.section	.text
	.align	16
	#Procedure 0x401744
	.globl sub_401744
	.type sub_401744, @function
sub_401744:

	nop	word ptr cs:[rax + rax]
.label_488:
	or	esi, 0x207
	inc	r14
.label_13:
	movzx	edx, byte ptr [r14]
	movsx	ecx, dl
	lea	edi, [rcx - 0x61]
	cmp	edi, 0x14
	ja	.label_25
	jmp	qword ptr [(rdi * 8) + label_36]
.label_486:
	or	esi, 0xfff
	inc	r14
	jmp	.label_13
	.section	.text
	.align	16
	#Procedure 0x40177a
	.globl sub_40177a
	.type sub_40177a, @function
sub_40177a:

	nop	word ptr [rax + rax]
.label_487:
	or	esi, 0x438
	inc	r14
	jmp	.label_13
	.section	.text
	.align	16
	#Procedure 0x40178b
	.globl sub_40178b
	.type sub_40178b, @function
sub_40178b:

	nop	dword ptr [rax + rax]
.label_489:
	or	esi, 0x9c0
	inc	r14
	jmp	.label_13
	.section	.text
	.align	16
	#Procedure 0x40179b
	.globl sub_40179b
	.type sub_40179b, @function
sub_40179b:

	nop	dword ptr [rax + rax]
.label_25:
	mov	edi, ecx
	cmp	ecx, 0x3d
	ja	.label_15
	bt	r8, rdi
	jae	.label_15
.label_513:
	lea	rbx, [r14 + 1]
	movsx	ecx, byte ptr [r14 + 1]
	mov	edi, ecx
	add	edi, -0x30
	cmp	edi, 0x45
	ja	.label_27
	jmp	qword ptr [(rdi * 8) + label_30]
.label_504:
	xor	edi, edi
	mov	r14, rbx
	nop	word ptr cs:[rax + rax]
.label_38:
	movsx	ecx, cl
	lea	edi, [rcx + rdi*8 - 0x30]
	cmp	edi, 0xfff
	ja	.label_15
	mov	cl, byte ptr [r14 + 1]
	inc	r14
	mov	ebx, ecx
	and	bl, 0xf8
	cmp	bl, 0x30
	je	.label_38
	test	esi, esi
	jne	.label_15
	mov	r11b, 1
	mov	esi, 0xfff
	test	cl, cl
	je	.label_19
	cmp	cl, 0x2c
	mov	r10d, 0xfff
	je	.label_23
	jmp	.label_15
.label_19:
	mov	r10d, 0xfff
	jmp	.label_23
.label_27:
	mov	r11b, 1
	xor	r10d, r10d
	mov	r14, rbx
	xor	edi, edi
	jmp	.label_28
	.section	.text
	.align	16
	#Procedure 0x401844
	.globl sub_401844
	.type sub_401844, @function
sub_401844:

	nop	word ptr cs:[rax + rax]
.label_18:
	mov	cl, byte ptr [r14 + 1]
	inc	r14
	mov	r11d, ebx
.label_28:
	movsx	ecx, cl
	add	ecx, -0x58
	cmp	ecx, 0x20
	ja	.label_23
	mov	bl, 2
	jmp	qword ptr [(rcx * 8) + label_35]
.label_420:
	or	edi, 0x124
	jmp	.label_16
.label_421:
	or	edi, 0xc00
	jmp	.label_16
.label_422:
	or	edi, 0x200
	jmp	.label_16
.label_423:
	or	edi, 0x92
	jmp	.label_16
.label_424:
	or	edi, 0x49
	nop	word ptr cs:[rax + rax]
.label_16:
	mov	ebx, r11d
	jmp	.label_18
.label_505:
	add	r14, 2
	mov	r11b, 3
	xor	r10d, r10d
	mov	edi, 0x38
	jmp	.label_23
.label_506:
	add	r14, 2
	mov	r11b, 3
	xor	r10d, r10d
	mov	edi, 7
	jmp	.label_23
.label_507:
	add	r14, 2
	mov	r11b, 3
	xor	r10d, r10d
	mov	edi, 0x1c0
	nop	word ptr cs:[rax + rax]
.label_23:
	mov	rcx, r9
	shl	rcx, 4
	mov	byte ptr [rax + rcx], dl
	mov	byte ptr [rax + rcx + 1], r11b
	mov	dword ptr [rax + rcx + 4], esi
	mov	dword ptr [rax + rcx + 8], edi
	test	r10d, r10d
	jne	.label_34
	cmp	esi, 1
	sbb	r10d, r10d
	or	r10d, esi
	and	r10d, edi
.label_34:
	inc	r9
	mov	dword ptr [rax + rcx + 0xc], r10d
	mov	dl, byte ptr [r14]
	mov	ecx, edx
	add	cl, 0xd5
	movzx	ecx, cl
	cmp	cl, 0x12
	ja	.label_17
	jmp	qword ptr [(rcx * 8) + label_20]
.label_17:
	test	dl, dl
	jne	.label_15
	shl	r9, 4
	mov	byte ptr [rax + r9 + 1], 0
	jmp	.label_14
.label_15:
	mov	rdi, rax
	call	free
	xor	eax, eax
.label_14:
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_22:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40194c
	.globl sub_40194c
	.type sub_40194c, @function
sub_40194c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401950

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
	jae	.label_50
	mov	qword ptr [rsp + 8], rcx
	call	__errno_location
	mov	r15, rax
	mov	dword ptr [r15], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_45:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_45
	test	rbp, rbp
	lea	rsi, [rsp + 0x20]
	cmovne	rsi, rbp
	mov	r13d, 4
	cmp	al, 0x2d
	je	.label_43
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
	je	.label_53
	mov	eax, dword ptr [r15]
	test	eax, eax
	je	.label_60
	cmp	eax, 0x22
	jne	.label_43
	mov	ebp, 1
.label_60:
	test	r14, r14
	mov	r15d, ebp
	jne	.label_40
	jmp	.label_42
.label_53:
	test	r14, r14
	je	.label_43
	movsx	esi, byte ptr [rbx]
	test	esi, esi
	je	.label_43
	mov	rdi, r14
	mov	rbx, rcx
	call	strchr
	mov	rcx, rbx
	xor	r15d, r15d
	mov	r12d, 1
	test	rax, rax
	je	.label_43
.label_40:
	movsx	r13d, byte ptr [rcx]
	test	r13d, r13d
	je	.label_42
	mov	qword ptr [rsp + 0x10], rcx
	mov	rdi, r14
	mov	esi, r13d
	call	strchr
	test	rax, rax
	je	.label_54
	mov	ecx, 1
	mov	esi, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_44
	movabs	rdx, 0x814400308945
	bt	rdx, rax
	jae	.label_44
	mov	esi, 0x30
	mov	rdi, r14
	call	strchr
	mov	ecx, 1
	mov	esi, 0x400
	test	rax, rax
	je	.label_44
	mov	rax, qword ptr [rsp + 0x10]
	movsx	eax, byte ptr [rax + 1]
	mov	ecx, 1
	mov	esi, 0x400
	cmp	eax, 0x42
	je	.label_46
	cmp	eax, 0x44
	je	.label_46
	cmp	eax, 0x69
	jne	.label_44
	xor	eax, eax
	mov	rcx, qword ptr [rsp + 0x10]
	cmp	byte ptr [rcx + 2], 0x42
	sete	al
	lea	rcx, [rax + rax + 1]
	mov	esi, 0x400
	jmp	.label_44
.label_46:
	mov	ecx, 2
	mov	esi, 0x3e8
.label_44:
	add	r13d, -0x42
	cmp	r13d, 0x35
	ja	.label_54
	xor	eax, eax
	jmp	qword ptr [(r13 * 8) + label_61]
.label_516:
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
	jmp	.label_41
.label_54:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], r12
	or	r15d, 2
	jmp	.label_51
.label_517:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	imul	rsi, r12
	cmp	rax, r12
	cmovb	rsi, rdi
	sbb	eax, eax
	jmp	.label_55
.label_518:
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
	jmp	.label_48
.label_520:
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
	jmp	.label_49
.label_514:
	xor	eax, eax
	mov	rdx, r12
	shr	rdx, 0x36
	setne	al
	shl	r12, 0xa
	jmp	.label_47
.label_515:
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
	jmp	.label_48
.label_519:
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
.label_49:
	or	dl, r10b
.label_41:
	or	dl, bl
.label_48:
	and	dl, 1
	movzx	eax, dl
	mov	r12, rsi
	jmp	.label_52
.label_521:
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
	jmp	.label_56
.label_522:
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
.label_56:
	movzx	eax, dl
.label_55:
	and	eax, 1
	mov	r12, rsi
	jmp	.label_52
.label_523:
	xor	eax, eax
	mov	rdx, r12
	shr	rdx, 0x37
	setne	al
	shl	r12, 9
.label_47:
	cmp	rdx, 1
	sbb	rdx, rdx
	not	rdx
	or	r12, rdx
	jmp	.label_52
.label_524:
	lea	rax, [r12 + r12]
	test	r12, r12
	mov	rdx, -1
	cmovns	rdx, rax
	shr	r12, 0x3f
	mov	eax, r12d
	mov	r12, rdx
.label_52:
	or	eax, r15d
	mov	rdi, qword ptr [rsp + 0x10]
	lea	rdx, [rdi + rcx]
	mov	rsi, qword ptr [rsp + 0x18]
	mov	qword ptr [rsi], rdx
	lea	r15d, [rax + 2]
	cmp	byte ptr [rdi + rcx], 0
	cmove	r15d, eax
.label_42:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], r12
.label_51:
	mov	r13d, r15d
.label_43:
	mov	eax, r13d
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_50:
	mov	edi, OFFSET FLAT:label_57
	mov	esi, OFFSET FLAT:label_58
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_59
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x401f81
	.globl sub_401f81
	.type sub_401f81, @function
sub_401f81:

	nop	word ptr cs:[rax + rax]
.label_62:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x401f95
	.globl sub_401f95
	.type sub_401f95, @function
sub_401f95:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401f99
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
	je	.label_62
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
	#Procedure 0x402000
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_63]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_64]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_65]
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
	#Procedure 0x40206f
	.globl sub_40206f
	.type sub_40206f, @function
sub_40206f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402070

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_66
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_67
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
.label_69:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_70
	test	rax, rax
	je	.label_68
.label_70:
	pop	rbx
	ret	
.label_68:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4020b9
	.globl sub_4020b9
	.type sub_4020b9, @function
sub_4020b9:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4020c1
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_68
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_69
	test	rbx, rbx
	jne	.label_69
	call	free
	xor	eax, eax
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4020f0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_72
	cmp	byte ptr [rax], 0x43
	jne	.label_74
	cmp	byte ptr [rax + 1], 0
	je	.label_71
.label_74:
	mov	esi, OFFSET FLAT:label_73
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_72
.label_71:
	xor	ebx, ebx
.label_72:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x402121
	.globl sub_402121
	.type sub_402121, @function
sub_402121:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402130
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
	#Procedure 0x402148
	.globl sub_402148
	.type sub_402148, @function
sub_402148:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402150
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_63]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_64]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_65]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_75
	test	rdx, rdx
	je	.label_75
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_75:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4021ba
	.globl sub_4021ba
	.type sub_4021ba, @function
sub_4021ba:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4021c0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_76
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_76
	test	byte ptr [rbx + 1], 1
	je	.label_76
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_76:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	16
	#Procedure 0x4021f3
	.globl sub_4021f3
	.type sub_4021f3, @function
sub_4021f3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402200
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x40220a
	.globl sub_40220a
	.type sub_40220a, @function
sub_40220a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402210

	.globl mode_adjust
	.type mode_adjust, @function
mode_adjust:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	qword ptr [rsp - 8], r8
	and	edi, 0xfff
	mov	al, byte ptr [rcx + 1]
	xor	r13d, r13d
	test	al, al
	je	.label_81
	xor	r13d, r13d
	test	sil, sil
	mov	r9d, 0xc00
	cmove	r9d, r13d
	not	edx
	mov	r10d, r9d
	not	r10d
	movzx	r12d, sil
	mov	r14d, 0x92
	mov	r15d, 0x49
	nop	dword ptr [rax + rax]
.label_84:
	movsx	ebp, al
	mov	ebx, dword ptr [rcx + 4]
	mov	esi, dword ptr [rcx + 8]
	mov	r8d, dword ptr [rcx + 0xc]
	cmp	ebp, 2
	je	.label_77
	cmp	ebp, 3
	jne	.label_80
	and	esi, edi
	mov	ebp, esi
	and	ebp, 0x124
	mov	eax, 0x124
	cmovne	ebp, eax
	mov	r11d, esi
	and	r11d, 0x92
	cmovne	r11d, r14d
	or	r11d, esi
	and	esi, 0x49
	cmovne	esi, r15d
	or	esi, ebp
	or	esi, r11d
	jmp	.label_80
	.section	.text
	.align	16
	#Procedure 0x4022a8
	.globl sub_4022a8
	.type sub_4022a8, @function
sub_4022a8:

	nop	dword ptr [rax + rax]
.label_77:
	mov	ebp, edi
	and	ebp, 0x49
	mov	eax, esi
	or	eax, 0x49
	or	ebp, r12d
	cmovne	esi, eax
.label_80:
	test	ebx, ebx
	mov	eax, edx
	cmovne	eax, ebx
	mov	ebp, r8d
	or	ebp, r10d
	and	ebp, esi
	and	ebp, eax
	movsx	esi, byte ptr [rcx]
	cmp	esi, 0x2b
	je	.label_83
	cmp	esi, 0x2d
	je	.label_82
	cmp	esi, 0x3d
	jne	.label_78
	not	r8d
	and	r8d, r9d
	test	ebx, ebx
	mov	eax, ebx
	not	eax
	cmove	eax, ebx
	or	eax, r8d
	mov	esi, eax
	not	esi
	and	esi, 0xfff
	or	r13d, esi
	and	eax, edi
	or	ebp, eax
	mov	edi, ebp
	jmp	.label_78
	.section	.text
	.align	16
	#Procedure 0x40230a
	.globl sub_40230a
	.type sub_40230a, @function
sub_40230a:

	nop	word ptr [rax + rax]
.label_83:
	or	r13d, ebp
	or	edi, ebp
.label_78:
	movzx	eax, byte ptr [rcx + 0x11]
	add	rcx, 0x10
	test	al, al
	jne	.label_84
.label_81:
	mov	rax, qword ptr [rsp - 8]
	test	rax, rax
	je	.label_79
	mov	dword ptr [rax], r13d
.label_79:
	mov	eax, edi
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40233f
	.globl sub_40233f
	.type sub_40233f, @function
sub_40233f:

	nop	
.label_82:
	or	r13d, ebp
	not	ebp
	and	edi, ebp
	jmp	.label_78
	.section	.text
	.align	16
	#Procedure 0x402349
	.globl sub_402349
	.type sub_402349, @function
sub_402349:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402350

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
	je	.label_91
	mov	edx, OFFSET FLAT:label_100
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_87
.label_91:
	mov	edx, OFFSET FLAT:label_89
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_87:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_94
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
	mov	esi, OFFSET FLAT:label_90
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_96
	jmp	qword ptr [(r12 * 8) + label_97]
.label_525:
	add	rsp, 8
	jmp	.label_88
.label_96:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_103
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
	jmp	.label_88
.label_526:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_95
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
.label_527:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_85
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
.label_528:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_101
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
.label_529:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_98
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
	jmp	.label_88
.label_530:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_93
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
	jmp	.label_88
.label_531:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_99
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
	jmp	.label_88
.label_532:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_102
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
	jmp	.label_88
.label_534:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_86
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
	jmp	.label_88
.label_533:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_92
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
.label_88:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x4026a8
	.globl sub_4026a8
	.type sub_4026a8, @function
sub_4026a8:

	nop	dword ptr [rax + rax]
.label_104:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4026b5
	.globl sub_4026b5
	.type sub_4026b5, @function
sub_4026b5:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4026bb
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_105
	test	rax, rax
	je	.label_104
.label_105:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4026d0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_106
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_107
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_109
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_110
	mov	ecx, OFFSET FLAT:label_111
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_108
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x402744
	.globl sub_402744
	.type sub_402744, @function
sub_402744:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402750

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_116
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_123
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_117
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
	mov	esi, OFFSET FLAT:label_129
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
	mov	esi, OFFSET FLAT:label_113
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
	mov	esi, OFFSET FLAT:label_120
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
	mov	esi, OFFSET FLAT:label_122
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_115
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_130
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_110
	mov	ecx, OFFSET FLAT:label_111
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_126
	mov	esi, OFFSET FLAT:label_128
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_126
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_112
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_126:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_124
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_111
	mov	ecx, OFFSET FLAT:label_115
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_114
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_115
	mov	ecx, OFFSET FLAT:label_125
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_116:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_131
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
	#Procedure 0x4029b3
	.globl sub_4029b3
	.type sub_4029b3, @function
sub_4029b3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4029c0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_63]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_64]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_65]
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
	#Procedure 0x402a14
	.globl sub_402a14
	.type sub_402a14, @function
sub_402a14:

	nop	word ptr cs:[rax + rax]
.label_132:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402a25
	.globl sub_402a25
	.type sub_402a25, @function
sub_402a25:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402a2d
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
	je	.label_132
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
	.section	.text
	.align	16
	#Procedure 0x402a90

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_133
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_133:
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
	#Procedure 0x402b13
	.globl sub_402b13
	.type sub_402b13, @function
sub_402b13:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402b20

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
	jne	.label_134
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_134
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_135
.label_134:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_135:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_136
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_136:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402b8e
	.globl sub_402b8e
	.type sub_402b8e, @function
sub_402b8e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402b90
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	.section	.text
	.align	16
	#Procedure 0x402b98
	.globl sub_402b98
	.type sub_402b98, @function
sub_402b98:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402ba0
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
	je	.label_137
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
.label_137:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402c01
	.globl sub_402c01
	.type sub_402c01, @function
sub_402c01:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402c10
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x402c21
	.globl sub_402c21
	.type sub_402c21, @function
sub_402c21:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402c30
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x402c3e
	.globl sub_402c3e
	.type sub_402c3e, @function
sub_402c3e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402c40

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
	js	.label_138
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_141
	cmp	r12d, 0x7fffffff
	je	.label_143
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
	jne	.label_139
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_139:
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
.label_141:
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
	jbe	.label_144
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_140
.label_144:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_142
	mov	rdi, r14
	call	free
.label_142:
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
.label_140:
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
.label_138:
	call	abort
.label_143:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402dfd
	.globl sub_402dfd
	.type sub_402dfd, @function
sub_402dfd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402e00

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_63]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_64]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_65]
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
	#Procedure 0x402e55
	.globl sub_402e55
	.type sub_402e55, @function
sub_402e55:

	nop	word ptr cs:[rax + rax]
.label_149:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_145
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402e80
	.globl sub_402e80
	.type sub_402e80, @function
sub_402e80:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402e8f

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_149
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_147
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_150
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_147
	mov	esi, OFFSET FLAT:label_148
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_146
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_146:
	mov	rbx, r14
.label_147:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_152:
	mov	ecx, 1
.label_151:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	16
	#Procedure 0x402f20
	.globl sub_402f20
	.type sub_402f20, @function
sub_402f20:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402f25

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_152
	test	rsi, rsi
	mov	ecx, 1
	je	.label_151
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_151
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_153:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402f65
	.globl sub_402f65
	.type sub_402f65, @function
sub_402f65:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402f69
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_63]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_64]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_65]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_153
	test	rsi, rsi
	je	.label_153
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
	#Procedure 0x402fd0

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
	jmp	.label_163
	.section	.text
	.align	16
	#Procedure 0x40307f
	.globl sub_40307f
	.type sub_40307f, @function
sub_40307f:

	nop	
.label_209:
	cmp	r8d, 2
	setne	al
	cmp	byte ptr [rsp + 0xf], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa8]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x34]
	mov	rsi, qword ptr [rsp + 0xc0]
	je	.label_195
	or	al, dl
	jne	.label_195
	test	dil, 1
	jne	.label_208
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_195
	test	rbp, rbp
	mov	r15d, r8d
	mov	al, bl
	mov	qword ptr [rsp + 0x48], rcx
	mov	r12d, esi
	mov	r13, qword ptr [rsp + 0x68]
	je	.label_163
	jmp	.label_195
.label_414:
	mov	r8d, 5
	test	r12b, 1
	jne	.label_217
	test	rbp, rbp
	je	.label_265
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax], 0x22
.label_265:
	mov	r14d, 1
	jmp	.label_222
.label_415:
	mov	r13b, 1
	mov	r8d, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_224
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	sil, 1
	jmp	.label_156
.label_217:
	xor	r14d, r14d
.label_222:
	mov	eax, OFFSET FLAT:label_224
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	r13b, 1
	jmp	.label_233
	.section	.text
	.align	16
	#Procedure 0x40314f
	.globl sub_40314f
	.type sub_40314f, @function
sub_40314f:

	nop	
.label_163:
	mov	rbp, r13
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_240
	mov	r8d, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	jmp	qword ptr [(rcx * 8) + label_245]
.label_416:
	mov	r14d, edi
	mov	edi, OFFSET FLAT:label_251
	mov	esi, r15d
	mov	ebx, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x80], rax
	mov	edi, OFFSET FLAT:label_192
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebx
	mov	edi, r14d
	mov	qword ptr [rsp + 0x78], rax
.label_417:
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x80]
	jne	.label_264
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_264
	xor	r14d, r14d
	nop	
.label_257:
	cmp	r14, rbp
	jae	.label_270
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], al
.label_270:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_257
.label_264:
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
	jmp	.label_156
.label_409:
	xor	r8d, r8d
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_156
.label_412:
	mov	al, 1
.label_410:
	mov	r12b, 1
.label_413:
	test	r12b, 1
	mov	cl, 1
	je	.label_173
	mov	ecx, eax
.label_173:
	mov	al, cl
.label_411:
	mov	r8d, 2
	test	r12b, 1
	jne	.label_178
	test	rbp, rbp
	je	.label_186
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx], 0x27
.label_186:
	mov	r14d, 1
	jmp	.label_187
.label_178:
	xor	r14d, r14d
.label_187:
	mov	ecx, OFFSET FLAT:label_192
	mov	qword ptr [rsp + 0x58], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x50], rcx
	mov	r13d, eax
.label_233:
	mov	sil, r12b
.label_156:
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
	jmp	.label_199
	.section	.text
	.align	16
	#Procedure 0x403311
	.globl sub_403311
	.type sub_403311, @function
sub_403311:

	nop	word ptr cs:[rax + rax]
.label_201:
	inc	r12
.label_199:
	cmp	r11, -1
	je	.label_227
	cmp	r12, r11
	jne	.label_229
	jmp	.label_232
	.section	.text
	.align	16
	#Procedure 0x403333
	.globl sub_403333
	.type sub_403333, @function
sub_403333:

	nop	word ptr cs:[rax + rax]
.label_227:
	mov	rcx, -1
	cmp	byte ptr [r10 + r12], 0
	je	.label_236
.label_229:
	cmp	byte ptr [rsp + 0x37], 0
	je	.label_241
	mov	rax, qword ptr [rsp + 0x50]
	lea	rbx, [r12 + rax]
	cmp	rax, 2
	jb	.label_244
	cmp	r11, -1
	jne	.label_244
	mov	r15d, edi
	mov	rdi, r10
	mov	r13d, r9d
	call	strlen
	mov	r9d, r13d
	mov	r8, qword ptr [rsp + 0x38]
	mov	edi, r15d
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_244:
	cmp	rbx, r11
	jbe	.label_254
.label_241:
	xor	esi, esi
.label_160:
	movzx	r15d, byte ptr [r10 + r12]
	cmp	r15, 0x7e
	ja	.label_258
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_261]
.label_434:
	test	r12, r12
	jne	.label_180
	jmp	.label_172
	.section	.text
	.align	16
	#Procedure 0x4033c6
	.globl sub_4033c6
	.type sub_4033c6, @function
sub_4033c6:

	nop	word ptr cs:[rax + rax]
.label_254:
	mov	r13d, r9d
	mov	r15d, edi
	mov	rbx, r11
	lea	rdi, [r10 + r12]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	rdx, qword ptr [rsp + 0x50]
	call	memcmp
	test	eax, eax
	sete	sil
	jne	.label_274
	cmp	byte ptr [rsp + 0xf], 0
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	je	.label_160
	jmp	.label_183
.label_274:
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	jmp	.label_160
.label_438:
	xor	eax, eax
	cmp	r11, -1
	je	.label_166
	test	r12, r12
	jne	.label_171
	cmp	r11, 1
	je	.label_172
	xor	r13d, r13d
	jmp	.label_175
.label_427:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_181
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_183
	cmp	r8d, 2
	jne	.label_190
	mov	eax, r9d
	and	al, 1
	jne	.label_190
	cmp	r14, rbp
	jae	.label_193
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_193:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_196
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_196:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_202
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_202:
	add	r14, 3
	mov	r9b, 1
.label_190:
	mov	rcx, r14
	cmp	rcx, rbp
	jae	.label_207
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + rcx], 0x5c
.label_207:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r8d, 2
	je	.label_167
	lea	rdx, [r12 + 1]
	cmp	rdx, r11
	jae	.label_167
	mov	dl, byte ptr [r10 + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_167
	cmp	r14, rbp
	jae	.label_273
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x30
.label_273:
	lea	rdx, [rcx + 2]
	cmp	rdx, rbp
	jae	.label_154
	mov	ebx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rdx], 0x30
	mov	esi, ebx
.label_154:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_175
.label_428:
	mov	bl, 0x62
	jmp	.label_228
.label_429:
	mov	cl, 0x74
	jmp	.label_212
.label_430:
	mov	bl, 0x76
	jmp	.label_228
.label_431:
	mov	bl, 0x66
	jmp	.label_228
.label_432:
	mov	cl, 0x72
	jmp	.label_212
.label_435:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa8], rax
	cmp	r8d, 2
	jne	.label_238
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_155
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
	jae	.label_246
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_246:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_259
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x5c
.label_259:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_263
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_263:
	add	r14, 3
	xor	r9d, r9d
.label_238:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_175
.label_436:
	mov	r15b, 0x3f
	cmp	r8d, 5
	je	.label_269
	cmp	r8d, 2
	jne	.label_180
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_180
	jmp	.label_155
.label_437:
	cmp	r8d, 2
	jne	.label_279
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_155
	mov	r15b, 0x5c
	xor	eax, eax
	jmp	.label_158
.label_258:
	cmp	qword ptr [rsp + 0xb8], 1
	mov	qword ptr [rsp + 0xa0], rbp
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	mov	dword ptr [rsp + 0x94], esi
	jne	.label_162
	mov	qword ptr [rsp + 0x48], r11
	call	__ctype_b_loc
	mov	r10, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	ebx, 1
	jmp	.label_176
.label_166:
	test	r12, r12
	jne	.label_188
	mov	cl, byte ptr [r10 + 1]
	test	cl, cl
	jne	.label_188
.label_172:
	mov	dl, 1
.label_433:
	cmp	byte ptr [rsp + 0x27], 0
	je	.label_155
	xor	eax, eax
	mov	r13b, dl
.label_175:
	cmp	byte ptr [rsp + 0x36], 0
	je	.label_200
	cmp	qword ptr [rsp + 0x100], 0
	jne	.label_203
	jmp	.label_204
	.section	.text
	.align	16
	#Procedure 0x4036a4
	.globl sub_4036a4
	.type sub_4036a4, @function
sub_4036a4:

	nop	word ptr cs:[rax + rax]
.label_200:
	cmp	byte ptr [rsp + 0x35], 0
	je	.label_204
.label_203:
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	ebx, esi
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_231
	mov	rcx, qword ptr [rsp + 0x100]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_213
	.section	.text
	.align	16
	#Procedure 0x4036dd
	.globl sub_4036dd
	.type sub_4036dd, @function
sub_4036dd:

	nop	dword ptr [rax]
.label_204:
	test	sil, sil
.label_213:
	mov	ebx, r15d
	je	.label_215
	jmp	.label_219
.label_231:
	mov	ebx, r15d
	jmp	.label_219
.label_181:
	cmp	dword ptr [rsp + 0x9c], 0
	jne	.label_201
	xor	r15d, r15d
	jmp	.label_180
.label_279:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x32], 0
	je	.label_212
	xor	eax, eax
	mov	r15b, 0x5c
.label_158:
	xor	r13d, r13d
	jmp	.label_215
.label_212:
	cmp	byte ptr [rsp + 0x27], 0
	mov	ebx, ecx
	je	.label_155
.label_228:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1f], 0
	mov	r13d, 0
	je	.label_175
	nop	
.label_219:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_183
	cmp	r8d, 2
	jne	.label_239
	mov	eax, r9d
	and	al, 1
	jne	.label_239
	cmp	r14, rbp
	jae	.label_243
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_243:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_247
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_247:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_249
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_249:
	add	r14, 3
	mov	r9b, 1
.label_239:
	cmp	r14, rbp
	jae	.label_256
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_256:
	inc	r14
	jmp	.label_266
.label_162:
	mov	qword ptr [rsp + 0x70], 0
	cmp	r11, -1
	jne	.label_255
	mov	rdi, r10
	call	strlen
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_255:
	cmp	byte ptr [rsp + 0x31], 0
	mov	qword ptr [rsp + 0x48], r11
	mov	qword ptr [rsp + 0x88], r12
	je	.label_267
	lea	rax, [r10 + r12]
	mov	qword ptr [rsp + 0xb0], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbp, [rsp + 0x70]
.label_205:
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
	je	.label_164
	cmp	rbx, -1
	mov	r10, qword ptr [rsp + 0x28]
	movabs	rsi, 0x20000002b
	je	.label_168
	test	rbx, rbx
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_189
	cmp	rbx, 2
	mov	rbp, qword ptr [rsp + 0xa0]
	jb	.label_184
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax]
.label_216:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_211
	bt	rsi, rdx
	jb	.label_155
.label_211:
	inc	rcx
	cmp	rcx, rbx
	jb	.label_216
.label_184:
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	jne	.label_206
	xor	r13d, r13d
.label_206:
	lea	rbp, [rsp + 0x70]
	mov	r12, qword ptr [rsp + 0x40]
	add	r12, rbx
	mov	rdi, rbp
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_205
	jmp	.label_170
.label_167:
	xor	r13d, r13d
	jmp	.label_175
.label_188:
	mov	r11, -1
	xor	r13d, r13d
	jmp	.label_175
.label_269:
	cmp	dword ptr [rsp + 0x98], 0
	je	.label_180
	lea	rcx, [r12 + 2]
	cmp	rcx, r11
	jae	.label_180
	cmp	byte ptr [r10 + r12 + 1], 0x3f
	jne	.label_180
	movsx	edx, byte ptr [r10 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_226
	mov	ebx, esi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_220
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_235
	cmp	r14, rbp
	jae	.label_237
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x3f
.label_237:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_242
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_242:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_250
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_250:
	lea	rax, [r14 + 3]
	cmp	rax, rbp
	jae	.label_214
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x3f
.label_214:
	add	r14, 4
	xor	eax, eax
	mov	r12, rcx
	mov	r15b, dl
.label_220:
	xor	r13d, r13d
	mov	esi, ebx
	jmp	.label_175
.label_180:
	xor	eax, eax
.label_171:
	xor	r13d, r13d
	jmp	.label_175
.label_267:
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbx, [rsp + 0x70]
	nop	word ptr cs:[rax + rax]
.label_165:
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
	je	.label_276
	cmp	rbp, -1
	je	.label_278
	cmp	rbp, -2
	je	.label_164
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	mov	r12, qword ptr [rsp + 0x40]
	jne	.label_157
	xor	r13d, r13d
.label_157:
	add	r12, rbp
	lea	rbx, [rsp + 0x70]
	mov	rdi, rbx
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_165
	jmp	.label_170
.label_164:
	mov	r10, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x40]
	lea	rax, [rsi + r12]
	mov	rdx, qword ptr [rsp + 0x48]
	cmp	rax, rdx
	jae	.label_275
	lea	rax, [r10 + r12]
.label_174:
	cmp	byte ptr [rax + rsi], 0
	je	.label_275
	lea	rcx, [r12 + rsi + 1]
	inc	rsi
	cmp	rcx, rdx
	jb	.label_174
.label_275:
	mov	qword ptr [rsp + 0x40], rsi
.label_168:
	xor	r13d, r13d
	jmp	.label_189
.label_278:
	xor	r13d, r13d
.label_276:
	mov	r10, qword ptr [rsp + 0x28]
.label_189:
	mov	r12, qword ptr [rsp + 0x40]
.label_170:
	mov	rbx, r12
	mov	r12, qword ptr [rsp + 0x88]
.label_176:
	and	r13b, 1
	mov	eax, r13d
	or	al, byte ptr [rsp + 0x33]
	cmp	rbx, 1
	mov	rbp, qword ptr [rsp + 0xa0]
	mov	dil, byte ptr [rsp + 0x1e]
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x60]
	mov	esi, dword ptr [rsp + 0x94]
	ja	.label_198
	test	al, al
	je	.label_198
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_175
.label_198:
	mov	byte ptr [rsp + 0x40], al
	add	rbx, r12
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_210
	.section	.text
	.align	16
	#Procedure 0x403ad7
	.globl sub_403ad7
	.type sub_403ad7, @function
sub_403ad7:

	nop	word ptr [rax + rax]
.label_169:
	inc	r14
	mov	r15b, byte ptr [r10 + r12 + 1]
	mov	r12, rdx
.label_210:
	cmp	byte ptr [rsp + 0x40], 0
	je	.label_218
	test	sil, 1
	je	.label_225
	cmp	r14, rbp
	jae	.label_221
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x5c
.label_221:
	inc	r14
	xor	esi, esi
	jmp	.label_225
	.section	.text
	.align	16
	#Procedure 0x403b15
	.globl sub_403b15
	.type sub_403b15, @function
sub_403b15:

	nop	word ptr cs:[rax + rax]
.label_218:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_183
	cmp	r8d, 2
	jne	.label_230
	mov	eax, r9d
	and	al, 1
	jne	.label_230
	cmp	r14, rbp
	jae	.label_191
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_191:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_262
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x24
.label_262:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_177
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x27
.label_177:
	add	r14, 3
	mov	r9b, 1
.label_230:
	cmp	r14, rbp
	jae	.label_248
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_248:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_223
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_223:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_260
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_260:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_225:
	lea	rdx, [r12 + 1]
	cmp	rbx, rdx
	jbe	.label_215
	test	r9b, 1
	je	.label_159
	mov	rcx, rbx
	mov	ebx, eax
	and	bl, 1
	jne	.label_234
	mov	r8, r12
	mov	r12d, esi
	cmp	r14, rbp
	jae	.label_272
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], 0x27
.label_272:
	lea	rsi, [r14 + 1]
	cmp	rsi, rbp
	jae	.label_280
	mov	rbx, qword ptr [rsp + 0x10]
	mov	byte ptr [rbx + rsi], 0x27
.label_280:
	add	r14, 2
	xor	r9d, r9d
	mov	esi, r12d
	mov	rbx, rcx
	mov	r12, r8
	mov	r8, qword ptr [rsp + 0x38]
	jmp	.label_159
	.section	.text
	.align	16
	#Procedure 0x403c26
	.globl sub_403c26
	.type sub_403c26, @function
sub_403c26:

	nop	word ptr cs:[rax + rax]
.label_234:
	mov	rbx, rcx
.label_159:
	cmp	r14, rbp
	jae	.label_169
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], r15b
	mov	esi, ecx
	jmp	.label_169
	.section	.text
	.align	16
	#Procedure 0x403c4e
	.globl sub_403c4e
	.type sub_403c4e, @function
sub_403c4e:

	nop	
.label_215:
	test	r9b, 1
	je	.label_179
	and	al, 1
	jne	.label_179
	cmp	r14, rbp
	jae	.label_185
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_185:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_194
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_194:
	add	r14, 2
	xor	r9d, r9d
.label_179:
	mov	ebx, r15d
.label_266:
	cmp	r14, rbp
	jae	.label_197
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], bl
.label_197:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, dil
	mov	edi, r13d
	jmp	.label_201
.label_226:
	xor	r13d, r13d
	jmp	.label_175
	.section	.text
	.align	16
	#Procedure 0x403cb1
	.globl sub_403cb1
	.type sub_403cb1, @function
sub_403cb1:

	nop	word ptr cs:[rax + rax]
.label_232:
	mov	rcx, r12
.label_236:
	cmp	r8d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_209
	or	al, dl
	jne	.label_209
	mov	r11, rcx
	jmp	.label_183
.label_155:
	mov	eax, 2
.label_277:
	mov	qword ptr [rsp + 0x38], rax
.label_183:
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
.label_268:
	mov	r14, rax
.label_271:
	mov	rax, r14
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_195:
	mov	rdx, qword ptr [rsp + 0x58]
	test	rdx, rdx
	je	.label_161
	cmp	byte ptr [rsp + 0xf], 0
	mov	rcx, qword ptr [rsp + 0x10]
	jne	.label_182
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_182
	inc	rdx
	nop	dword ptr [rax + rax]
.label_253:
	cmp	r14, rbp
	jae	.label_252
	mov	byte ptr [rcx + r14], al
.label_252:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_253
	jmp	.label_182
.label_208:
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
	jmp	.label_268
.label_161:
	mov	rcx, qword ptr [rsp + 0x10]
.label_182:
	cmp	r14, rbp
	jae	.label_271
	mov	byte ptr [rcx + r14], 0
	jmp	.label_271
.label_235:
	mov	eax, 5
	jmp	.label_277
.label_240:
	call	abort
.label_281:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403e05
	.globl sub_403e05
	.type sub_403e05, @function
sub_403e05:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403e13
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
	je	.label_282
	test	r15, r15
	je	.label_281
.label_282:
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
	#Procedure 0x403e50

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_283
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_285
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_283
.label_285:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_283
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_284
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_284:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_283:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	.section	.text
	.align	16
	#Procedure 0x403ec4
	.globl sub_403ec4
	.type sub_403ec4, @function
sub_403ec4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403ed0
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
	#Procedure 0x403f06
	.globl sub_403f06
	.type sub_403f06, @function
sub_403f06:

	nop	word ptr cs:[rax + rax]
.label_290:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_286
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_287
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_67
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	.section	.text
	.align	16
	#Procedure 0x403f51

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_289
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_290
	cmp	dword ptr [rbp], 0x20
	jne	.label_290
.label_289:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_291
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_287:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_288
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
.label_291:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	.section	.text
	.align	16
	#Procedure 0x403fd0
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
	#Procedure 0x403fe3
	.globl sub_403fe3
	.type sub_403fe3, @function
sub_403fe3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403ff0
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
	#Procedure 0x404009
	.globl sub_404009
	.type sub_404009, @function
sub_404009:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404010

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
	#Procedure 0x404029
	.globl sub_404029
	.type sub_404029, @function
sub_404029:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404030

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
	je	.label_292
	test	r15, r15
	je	.label_293
.label_292:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_293:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40406c
	.globl sub_40406c
	.type sub_40406c, @function
sub_40406c:

	nop	dword ptr [rax]
.label_294:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404075
	.globl sub_404075
	.type sub_404075, @function
sub_404075:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404080

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
	je	.label_294
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
	#Procedure 0x404110
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
	#Procedure 0x404143
	.globl sub_404143
	.type sub_404143, @function
sub_404143:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404150
	.globl mode_create_from_ref
	.type mode_create_from_ref, @function
mode_create_from_ref:

	push	rbx
	sub	rsp, 0x90
	mov	rax, rdi
	lea	rdx, [rsp]
	mov	edi, 1
	mov	rsi, rax
	call	__xstat
	mov	ecx, eax
	xor	eax, eax
	test	ecx, ecx
	jne	.label_295
	mov	ebx, dword ptr [rsp + 0x18]
	mov	edi, 0x20
	call	xmalloc
	mov	byte ptr [rax], 0x3d
	mov	byte ptr [rax + 1], 1
	mov	dword ptr [rax + 4], 0xfff
	mov	dword ptr [rax + 8], ebx
	mov	dword ptr [rax + 0xc], 0xfff
	mov	byte ptr [rax + 0x11], 0
.label_295:
	add	rsp, 0x90
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4041a7
	.globl sub_4041a7
	.type sub_4041a7, @function
sub_4041a7:

	nop	word ptr [rax + rax]
.label_297:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4041b5
	.globl sub_4041b5
	.type sub_4041b5, @function
sub_4041b5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4041bf
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
	je	.label_296
	test	r14, r14
	je	.label_297
.label_296:
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
	.align	16
	#Procedure 0x4041f0
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_63]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_64]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_65]
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
	#Procedure 0x40425e
	.globl sub_40425e
	.type sub_40425e, @function
sub_40425e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x404260
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
	#Procedure 0x4042d5
	.globl sub_4042d5
	.type sub_4042d5, @function
sub_4042d5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4042e0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_308
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_310
.label_308:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_310:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_299
	cmp	r10d, 0x29
	jae	.label_307
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_309
.label_307:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_309:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_299
	cmp	r10d, 0x29
	jae	.label_305
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_306
.label_305:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_306:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_299
	cmp	r10d, 0x29
	jae	.label_303
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_304
.label_303:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_304:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_299
	cmp	r10d, 0x29
	jae	.label_301
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_302
.label_301:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_302:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_299
	cmp	r10d, 0x29
	jae	.label_298
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_300
.label_298:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_300:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_299
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_299
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_299
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_299
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_299:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	16
	#Procedure 0x4044c2
	.globl sub_4044c2
	.type sub_4044c2, @function
sub_4044c2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4044d0

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
	je	.label_311
	cmp	r15, -2
	jb	.label_311
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_311
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_311:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x404526
	.globl sub_404526
	.type sub_404526, @function
sub_404526:

	nop	word ptr cs:[rax + rax]
.label_312:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x404535
	.globl sub_404535
	.type sub_404535, @function
sub_404535:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40453b

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_313
	test	rax, rax
	je	.label_312
.label_313:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x404550
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
	#Procedure 0x40455f
	.globl sub_40455f
	.type sub_40455f, @function
sub_40455f:

	nop	
.label_315:
	call	xalloc_die
.label_318:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40456a
	.globl sub_40456a
	.type sub_40456a, @function
sub_40456a:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404576
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_317
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_318
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_316
	call	free
	xor	eax, eax
	jmp	.label_314
.label_317:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_315
	mov	qword ptr [rsi], rbx
.label_316:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_314
	test	rax, rax
	je	.label_315
.label_314:
	pop	rbx
	ret	
.label_319:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4045d5
	.globl sub_4045d5
	.type sub_4045d5, @function
sub_4045d5:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4045d7
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_63]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_64]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_65]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_319
	test	rdx, rdx
	je	.label_319
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_320:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404645
	.globl sub_404645
	.type sub_404645, @function
sub_404645:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40464d

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
	je	.label_320
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
	#Procedure 0x4046b0

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
	#Procedure 0x4046c7
	.globl sub_4046c7
	.type sub_4046c7, @function
sub_4046c7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4046d0
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
	je	.label_321
	mov	qword ptr [rax], rbx
.label_321:
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
	#Procedure 0x4047bc
	.globl sub_4047bc
	.type sub_4047bc, @function
sub_4047bc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4047c0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_322
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_324:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_324
.label_322:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_326
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_325], OFFSET FLAT:slot0
.label_326:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_323
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_323:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x404851
	.globl sub_404851
	.type sub_404851, @function
sub_404851:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404860
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
	#Procedure 0x40486f
	.globl sub_40486f
	.type sub_40486f, @function
sub_40486f:

	nop	
.label_331:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_327
	mov	eax, OFFSET FLAT:label_328
	jmp	.label_329
	.section	.text
	.align	16
	#Procedure 0x40487f
	.globl sub_40487f
	.type sub_40487f, @function
sub_40487f:

	nop	word ptr cs:[rax + rax]
.label_334:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_330
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_330
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_330
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_330
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_330
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_330
	cmp	byte ptr [rax + 7], 0
	je	.label_331
.label_330:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_224
	mov	eax, OFFSET FLAT:label_192
.label_329:
	cmove	rax, rcx
.label_335:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4048d2

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
	jne	.label_335
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_334
	cmp	ecx, 0x55
	jne	.label_330
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_330
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_330
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_330
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_330
	cmp	byte ptr [rax + 5], 0
	jne	.label_330
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_332
	mov	eax, OFFSET FLAT:label_333
	jmp	.label_329
	.section	.text
	.align	16
	#Procedure 0x404940

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
	mov	r12d, edi
	mov	rdi, qword ptr [r13]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_9
	call	setlocale
	mov	edi, OFFSET FLAT:label_355
	mov	esi, OFFSET FLAT:label_380
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_355
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	xor	r14d, r14d
	jmp	.label_337
	.section	.text
	.align	16
	#Procedure 0x404994
	.globl sub_404994
	.type sub_404994, @function
sub_404994:

	nop	word ptr cs:[rax + rax]
.label_370:
	mov	r14, qword ptr [rip + optarg]
.label_337:
	mov	edx, OFFSET FLAT:label_359
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, r12d
	mov	rsi, r13
	call	getopt_long
	cmp	eax, 0x59
	jle	.label_366
	cmp	eax, 0x5a
	je	.label_369
	cmp	eax, 0x6d
	je	.label_370
	jmp	.label_371
	.section	.text
	.align	16
	#Procedure 0x4049d3
	.globl sub_4049d3
	.type sub_4049d3, @function
sub_4049d3:

	nop	word ptr cs:[rax + rax]
.label_369:
	cmp	qword ptr [rip + optarg],  0
	je	.label_337
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_377
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	jmp	.label_337
.label_366:
	cmp	eax, -1
	jne	.label_340
	mov	r15d, 0x1b6
	test	r14, r14
	je	.label_344
	mov	rdi, r14
	call	mode_compile
	mov	rbp, rax
	test	rbp, rbp
	je	.label_346
	xor	edi, edi
	call	umask
	mov	ebx, eax
	mov	edi, ebx
	call	umask
	mov	edi, 0x1b6
	xor	esi, esi
	xor	r8d, r8d
	mov	edx, ebx
	mov	rcx, rbp
	call	mode_adjust
	mov	r15d, eax
	mov	rdi, rbp
	call	free
	cmp	r15d, 0x200
	jae	.label_352
.label_344:
	movsxd	rax, dword ptr [rip + optind]
	mov	bpl, 1
	cmp	eax, r12d
	jge	.label_354
	lea	ecx, [rax + 1]
	cmp	ecx, r12d
	jge	.label_357
	mov	rcx, qword ptr [r13 + rax*8 + 8]
	cmp	byte ptr [rcx], 0x70
	sete	bpl
	jmp	.label_354
.label_357:
	xor	ebp, ebp
.label_354:
	xor	ecx, ecx
	test	bpl, bpl
	sete	cl
	lea	rbx, [rcx + rcx + 2]
	mov	ecx, r12d
	sub	ecx, eax
	movsxd	rcx, ecx
	cmp	rcx, rbx
	jb	.label_358
	cmp	rbx, rcx
	jb	.label_364
	mov	rcx, qword ptr [r13 + rax*8 + 8]
	movsx	ecx, byte ptr [rcx]
	add	ecx, -0x62
	cmp	ecx, 0x13
	ja	.label_367
	mov	ebp, 0x6000
	jmp	qword ptr [(rcx * 8) + label_372]
.label_491:
	mov	ebp, 0x2000
.label_490:
	mov	r12, qword ptr [r13 + rax*8 + 0x10]
	mov	rbx, qword ptr [r13 + rax*8 + 0x18]
	lea	rcx, [rsp]
	xor	esi, esi
	xor	edx, edx
	xor	r8d, r8d
	mov	rdi, r12
	call	xstrtoumax
	test	eax, eax
	jne	.label_336
	mov	rax, qword ptr [rsp]
	mov	ecx, eax
	cmp	rax, rcx
	jne	.label_336
	lea	rcx, [rsp + 8]
	xor	esi, esi
	xor	edx, edx
	xor	r8d, r8d
	mov	rdi, rbx
	call	xstrtoumax
	test	eax, eax
	jne	.label_341
	mov	rax, qword ptr [rsp + 8]
	mov	ecx, eax
	cmp	rax, rcx
	jne	.label_341
	mov	rdx, qword ptr [rsp]
	movzx	esi, al
	mov	rdi, rdx
	shl	rdi, 8
	and	edi, 0xfff00
	shl	rax, 0xc
	movabs	rcx, 0xffffff00000
	and	rcx, rax
	and	rdx, 0xfffffffffffff000
	shl	rdx, 0x20
	or	rcx, rsi
	or	rcx, rdx
	or	rcx, rdi
	cmp	rcx, -1
	je	.label_349
	movsxd	rax, dword ptr [rip + optind]
	mov	rsi, qword ptr [r13 + rax*8]
	or	ebp, r15d
	mov	qword ptr [rsp + 0x10], rcx
	lea	rcx, [rsp + 0x10]
	xor	edi, edi
	mov	edx, ebp
	call	__xmknod
	jmp	.label_360
.label_492:
	mov	rdi, qword ptr [r13 + rax*8]
	mov	esi, r15d
	call	mkfifo
.label_360:
	test	eax, eax
	jne	.label_365
	test	r14, r14
	je	.label_368
	movsxd	rax, dword ptr [rip + optind]
	mov	rdi, qword ptr [r13 + rax*8]
	mov	esi, r15d
	call	chmod
	test	eax, eax
	jne	.label_373
.label_368:
	xor	eax, eax
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_340:
	cmp	eax, 0xffffff7d
	je	.label_378
	cmp	eax, 0xffffff7e
	jne	.label_371
	xor	edi, edi
	call	usage
.label_336:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_342
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, r12
	call	quote
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_341:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_376
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
.label_358:
	xor	edi, edi
	cmp	eax, r12d
	jge	.label_353
	mov	esi, OFFSET FLAT:label_375
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	movsxd	rax, r12d
	mov	rdi, qword ptr [r13 + rax*8 - 8]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	jmp	.label_361
.label_378:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	esi, OFFSET FLAT:label_115
	mov	edx, OFFSET FLAT:label_110
	mov	r8d, OFFSET FLAT:label_362
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_364:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_374
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	movsxd	rax, dword ptr [rip + optind]
	add	rax, rbx
	mov	rdi, qword ptr [r13 + rax*8]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	call	error
	test	bpl, bpl
	je	.label_345
	sub	r12d, dword ptr [rip + optind]
	cmp	r12d, 4
	jne	.label_345
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_381
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_348
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
.label_345:
	mov	edi, 1
	call	usage
.label_367:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_351
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	movsxd	rax, dword ptr [rip + optind]
	mov	rdi, qword ptr [r13 + rax*8 + 8]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	edi, 1
	call	usage
.label_371:
	mov	edi, 1
	call	usage
.label_365:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	movsxd	rax, dword ptr [rip + optind]
	mov	rdx, qword ptr [r13 + rax*8]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_67
	xor	eax, eax
	mov	esi, ebx
	call	error
.label_349:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_350
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, r12
	mov	r8, rbx
	call	error
.label_346:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_338
	jmp	.label_339
.label_352:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_343
.label_339:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_373:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_379
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	movsxd	rax, dword ptr [rip + optind]
	mov	rsi, qword ptr [r13 + rax*8]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_353:
	mov	esi, OFFSET FLAT:label_356
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_361:
	test	bpl, bpl
	jne	.label_347
	sub	r12d, dword ptr [rip + optind]
	cmp	r12d, 2
	jne	.label_347
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_363
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_348
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
.label_347:
	mov	edi, 1
	call	usage
	.section	.text
	.align	16
	#Procedure 0x404eeb
	.globl sub_404eeb
	.type sub_404eeb, @function
sub_404eeb:

	nop	
	nop	dword ptr [rax]
.label_388:
	test	rcx, rcx
	jne	.label_384
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_384:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_385
.label_387:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_382
	test	rbx, rbx
	jne	.label_382
	call	free
	xor	eax, eax
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x404f3c
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_388
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_383
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_387
.label_385:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x404f6e
	.globl sub_404f6e
	.type sub_404f6e, @function
sub_404f6e:

	nop	word ptr [rax + rax]
.label_382:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_386
	test	rax, rax
	je	.label_383
.label_386:
	pop	rbx
	ret	
.label_383:
	call	xalloc_die
.label_391:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x404f95

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_390
	test	rbx, rbx
	jne	.label_390
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_390:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_389
	test	rax, rax
	je	.label_391
.label_389:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x404fc0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_392:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_392
	jmp	version_etc_arn
	.section	.text
	.align	16
	#Procedure 0x404fe1
	.globl sub_404fe1
	.type sub_404fe1, @function
sub_404fe1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404ff0
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
	#Procedure 0x4050b1
	.globl sub_4050b1
	.type sub_4050b1, @function
sub_4050b1:

	nop	word ptr cs:[rax + rax]
.label_393:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4050c5
	.globl sub_4050c5
	.type sub_4050c5, @function
sub_4050c5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4050cf
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_393
	call	rpl_calloc
	test	rax, rax
	je	.label_393
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4050f0
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
	#Procedure 0x405108
	.globl sub_405108
	.type sub_405108, @function
sub_405108:

	nop	dword ptr [rax + rax]
.label_394:
	push	rax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405116
	.globl sub_405116
	.type sub_405116, @function
sub_405116:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40511b
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_394
	test	rdx, rdx
	je	.label_394
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
	.section	.text
	.align	16
	#Procedure 0x405140
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
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
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_63]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_64]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_65]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_395
	test	rsi, rsi
	je	.label_395
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_395:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4051c0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_396
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_397
	test	rax, rax
	je	.label_396
.label_397:
	pop	rbx
	ret	
.label_396:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4051f5
	.globl sub_4051f5
	.type sub_4051f5, @function
sub_4051f5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405265
	.globl sub_405265
	.type sub_405265, @function
sub_405265:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405272
	.globl sub_405272
	.type sub_405272, @function
sub_405272:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405296
	.globl sub_405296
	.type sub_405296, @function
sub_405296:

	nop	word ptr cs:[rax + rax]
