	.section	.text
	.align	32
	#Procedure 0x401bc9
	.globl sub_401bc9
	.type sub_401bc9, @function
sub_401bc9:

	hlt	
	.section	.text
	.align	32
	#Procedure 0x401bca
	.globl sub_401bca
	.type sub_401bca, @function
sub_401bca:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401c02
	.globl sub_401c02
	.type sub_401c02, @function
sub_401c02:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401c4a
	.globl sub_401c4a
	.type sub_401c4a, @function
sub_401c4a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401c6c
	.globl sub_401c6c
	.type sub_401c6c, @function
sub_401c6c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401c7d
	.globl sub_401c7d
	.type sub_401c7d, @function
sub_401c7d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401c96
	.globl sub_401c96
	.type sub_401c96, @function
sub_401c96:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401ca0

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
	mov	esi, OFFSET FLAT:label_9
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stderr]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbx, qword ptr [rbp]
	test	rbx, rbx
	je	.label_14
	xor	r13d, r13d
	xor	r15d, r15d
	mov	qword ptr [rsp], rbp
	nop	dword ptr [rax + rax]
.label_11:
	test	r15, r15
	je	.label_13
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	je	.label_10
.label_13:
	mov	r13, qword ptr [rip + stderr]
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_15
	xor	eax, eax
	mov	rdi, r13
	call	__fprintf_chk
	mov	r13, r12
	jmp	.label_12
	.section	.text
	.align	32
	#Procedure 0x401d32
	.globl sub_401d32
	.type sub_401d32, @function
sub_401d32:

	nop	word ptr cs:[rax + rax]
.label_10:
	mov	rbp, qword ptr [rip + stderr]
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_16
	xor	eax, eax
	mov	rdi, rbp
	mov	rbp, qword ptr [rsp]
	call	__fprintf_chk
.label_12:
	mov	rbx, qword ptr [rbp + r15*8 + 8]
	inc	r15
	add	r12, r14
	test	rbx, rbx
	jne	.label_11
.label_14:
	mov	rdi, qword ptr [rip + stderr]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_17
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
.label_17:
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
	#Procedure 0x401dc1
	.globl sub_401dc1
	.type sub_401dc1, @function
sub_401dc1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401dd0
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x401dda
	.globl sub_401dda
	.type sub_401dda, @function
sub_401dda:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401de0

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
	jae	.label_28
	mov	qword ptr [rsp + 8], rcx
	call	__errno_location
	mov	r15, rax
	mov	dword ptr [r15], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_25:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_25
	test	rbp, rbp
	lea	rsi, [rsp + 0x20]
	cmovne	rsi, rbp
	mov	r13d, 4
	cmp	al, 0x2d
	je	.label_18
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
	je	.label_31
	mov	eax, dword ptr [r15]
	test	eax, eax
	je	.label_39
	cmp	eax, 0x22
	jne	.label_18
	mov	ebp, 1
.label_39:
	test	r14, r14
	mov	r15d, ebp
	jne	.label_21
	jmp	.label_22
.label_31:
	test	r14, r14
	je	.label_18
	movsx	esi, byte ptr [rbx]
	test	esi, esi
	je	.label_18
	mov	rdi, r14
	mov	rbx, rcx
	call	strchr
	mov	rcx, rbx
	xor	r15d, r15d
	mov	r12d, 1
	test	rax, rax
	je	.label_18
.label_21:
	movsx	r13d, byte ptr [rcx]
	test	r13d, r13d
	je	.label_22
	mov	qword ptr [rsp + 0x10], rcx
	mov	rdi, r14
	mov	esi, r13d
	call	strchr
	test	rax, rax
	je	.label_32
	mov	ecx, 1
	mov	esi, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_20
	movabs	rdx, 0x814400308945
	bt	rdx, rax
	jae	.label_20
	mov	esi, 0x30
	mov	rdi, r14
	call	strchr
	mov	ecx, 1
	mov	esi, 0x400
	test	rax, rax
	je	.label_20
	mov	rax, qword ptr [rsp + 0x10]
	movsx	eax, byte ptr [rax + 1]
	mov	ecx, 1
	mov	esi, 0x400
	cmp	eax, 0x42
	je	.label_26
	cmp	eax, 0x44
	je	.label_26
	cmp	eax, 0x69
	jne	.label_20
	xor	eax, eax
	mov	rcx, qword ptr [rsp + 0x10]
	cmp	byte ptr [rcx + 2], 0x42
	sete	al
	lea	rcx, [rax + rax + 1]
	mov	esi, 0x400
	jmp	.label_20
.label_26:
	mov	ecx, 2
	mov	esi, 0x3e8
.label_20:
	add	r13d, -0x42
	cmp	r13d, 0x35
	ja	.label_32
	xor	eax, eax
	jmp	qword ptr [(r13 * 8) + label_19]
.label_1220:
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
.label_32:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], r12
	or	r15d, 2
	jmp	.label_30
.label_1221:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	imul	rsi, r12
	cmp	rax, r12
	cmovb	rsi, rdi
	sbb	eax, eax
	jmp	.label_34
.label_1222:
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
	jmp	.label_24
.label_1224:
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
	jmp	.label_27
.label_1218:
	xor	eax, eax
	mov	rdx, r12
	shr	rdx, 0x36
	setne	al
	shl	r12, 0xa
	jmp	.label_33
.label_1219:
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
	jmp	.label_24
.label_1223:
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
.label_27:
	or	dl, r10b
.label_29:
	or	dl, bl
.label_24:
	and	dl, 1
	movzx	eax, dl
	mov	r12, rsi
	jmp	.label_23
.label_1225:
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
	jmp	.label_35
.label_1226:
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
.label_35:
	movzx	eax, dl
.label_34:
	and	eax, 1
	mov	r12, rsi
	jmp	.label_23
.label_1227:
	xor	eax, eax
	mov	rdx, r12
	shr	rdx, 0x37
	setne	al
	shl	r12, 9
.label_33:
	cmp	rdx, 1
	sbb	rdx, rdx
	not	rdx
	or	r12, rdx
	jmp	.label_23
.label_1228:
	lea	rax, [r12 + r12]
	test	r12, r12
	mov	rdx, -1
	cmovns	rdx, rax
	shr	r12, 0x3f
	mov	eax, r12d
	mov	r12, rdx
.label_23:
	or	eax, r15d
	mov	rdi, qword ptr [rsp + 0x10]
	lea	rdx, [rdi + rcx]
	mov	rsi, qword ptr [rsp + 0x18]
	mov	qword ptr [rsi], rdx
	lea	r15d, [rax + 2]
	cmp	byte ptr [rdi + rcx], 0
	cmove	r15d, eax
.label_22:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], r12
.label_30:
	mov	r13d, r15d
.label_18:
	mov	eax, r13d
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_28:
	mov	edi, OFFSET FLAT:label_36
	mov	esi, OFFSET FLAT:label_37
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_38
	call	__assert_fail
	.section	.text
	.align	32
	#Procedure 0x402411
	.globl sub_402411
	.type sub_402411, @function
sub_402411:

	nop	word ptr cs:[rax + rax]
.label_40:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402425
	.globl sub_402425
	.type sub_402425, @function
sub_402425:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402430
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_40
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_41
	test	rax, rax
	je	.label_40
.label_41:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x402460

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_43
	cmp	byte ptr [rax], 0x43
	jne	.label_45
	cmp	byte ptr [rax + 1], 0
	je	.label_42
.label_45:
	mov	esi, OFFSET FLAT:label_44
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_43
.label_42:
	xor	ebx, ebx
.label_43:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x402491
	.globl sub_402491
	.type sub_402491, @function
sub_402491:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4024a0

	.globl hash_rehash
	.type hash_rehash, @function
hash_rehash:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x50
	mov	r14, rdi
	mov	rax, qword ptr [r14 + 0x28]
	cmp	byte ptr [rax + 0x10], 0
	jne	.label_59
	mov	ecx, esi
	and	ecx, 1
	test	rsi, rsi
	js	.label_63
	cvtsi2ss	xmm0, rsi
	jmp	.label_48
.label_63:
	shr	rsi, 1
	or	rcx, rsi
	cvtsi2ss	xmm0, rcx
	addss	xmm0, xmm0
.label_48:
	divss	xmm0, dword ptr [rax + 8]
	movss	xmm1, dword ptr [rip + label_54]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rsi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rsi, rcx
	ucomiss	xmm0, dword ptr [rip + label_55]
	jae	.label_50
.label_59:
	cmp	rsi, 0xa
	mov	ebx, 0xa
	cmovae	rbx, rsi
	or	rbx, 1
	jmp	.label_53
	.section	.text
	.align	32
	#Procedure 0x40252b
	.globl sub_40252b
	.type sub_40252b, @function
sub_40252b:

	nop	dword ptr [rax + rax]
.label_66:
	add	rbx, 2
.label_53:
	cmp	rbx, -1
	je	.label_50
	cmp	rbx, 0xa
	mov	ecx, 3
	jb	.label_46
	mov	esi, 0xc
	mov	edi, 9
	mov	ecx, 3
	nop	dword ptr [rax + rax]
.label_62:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_46
	lea	rdi, [rdi + rsi + 4]
	add	rcx, 2
	add	rsi, 8
	cmp	rdi, rbx
	jb	.label_62
.label_46:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_66
	lea	rax, [rbx - 1]
	movabs	rcx, 0xffffffffffffffe
	cmp	rax, rcx
	ja	.label_50
	mov	bpl, 1
	cmp	rbx, qword ptr [r14 + 0x10]
	je	.label_56
	mov	esi, 0x10
	mov	rdi, rbx
	call	rpl_calloc
	mov	qword ptr [rsp], rax
	test	rax, rax
	je	.label_50
	mov	qword ptr [rsp + 0x10], rbx
	shl	rbx, 4
	add	rax, rbx
	mov	qword ptr [rsp + 8], rax
	xorps	xmm0, xmm0
	movups	xmmword ptr [rsp + 0x18], xmm0
	movups	xmm0, xmmword ptr [r14 + 0x28]
	movups	xmmword ptr [rsp + 0x28], xmm0
	movups	xmm0, xmmword ptr [r14 + 0x38]
	movups	xmmword ptr [rsp + 0x38], xmm0
	mov	rax, qword ptr [r14 + 0x48]
	mov	qword ptr [rsp + 0x48], rax
	lea	rdi, [rsp]
	xor	edx, edx
	mov	rsi, r14
	call	transfer_entries
	test	al, al
	je	.label_51
	mov	rdi, qword ptr [r14]
	call	free
	movaps	xmm0, xmmword ptr [rsp]
	movups	xmmword ptr [r14], xmm0
	movaps	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [r14 + 0x10], xmm0
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [r14 + 0x48], rax
	jmp	.label_56
.label_51:
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [r14 + 0x48], rax
	mov	r12, qword ptr [rsp]
	mov	r15, qword ptr [rsp + 8]
	jmp	.label_64
	.section	.text
	.align	32
	#Procedure 0x40264e
	.globl sub_40264e
	.type sub_40264e, @function
sub_40264e:

	nop	
.label_57:
	add	r12, 0x10
.label_64:
	cmp	r12, r15
	jae	.label_52
	cmp	qword ptr [r12], 0
	je	.label_57
	mov	rbp, qword ptr [r12 + 8]
	test	rbp, rbp
	je	.label_60
	mov	rsi, qword ptr [r14 + 0x10]
	nop	word ptr cs:[rax + rax]
.label_58:
	mov	rbx, qword ptr [rbp]
	mov	rdi, rbx
	call	qword ptr [r14 + 0x30]
	mov	rsi, qword ptr [r14 + 0x10]
	cmp	rax, rsi
	jae	.label_49
	mov	rdx, qword ptr [r14]
	mov	rcx, qword ptr [rbp + 8]
	shl	rax, 4
	cmp	qword ptr [rdx + rax], 0
	je	.label_65
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [rbp + 8], rdi
	mov	qword ptr [rdx + rax + 8], rbp
	jmp	.label_61
	.section	.text
	.align	32
	#Procedure 0x4026ba
	.globl sub_4026ba
	.type sub_4026ba, @function
sub_4026ba:

	nop	word ptr [rax + rax]
.label_65:
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [r14 + 0x18]
	mov	qword ptr [rbp], 0
	mov	rax, qword ptr [r14 + 0x48]
	mov	qword ptr [rbp + 8], rax
	mov	qword ptr [r14 + 0x48], rbp
.label_61:
	test	rcx, rcx
	mov	rbp, rcx
	jne	.label_58
.label_60:
	mov	qword ptr [r12 + 8], 0
	jmp	.label_57
.label_52:
	lea	rsi, [rsp]
	xor	edx, edx
	mov	rdi, r14
	call	transfer_entries
	test	al, al
	je	.label_47
	mov	rdi, qword ptr [rsp]
	call	free
.label_50:
	xor	ebp, ebp
.label_56:
	mov	eax, ebp
	add	rsp, 0x50
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_49:
	call	abort
.label_47:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40272a
	.globl sub_40272a
	.type sub_40272a, @function
sub_40272a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402730

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
	mov	r14, r8
	mov	rbx, rsi
	mov	r12, rdi
	test	rdx, rdx
	mov	r13d, OFFSET FLAT:raw_hasher
	cmovne	r13, rdx
	test	rcx, rcx
	mov	ebp, OFFSET FLAT:raw_comparator
	cmovne	rbp, rcx
	mov	edi, 0x50
	call	malloc
	mov	r15, rax
	xor	eax, eax
	test	r15, r15
	je	.label_67
	test	rbx, rbx
	mov	eax, OFFSET FLAT:default_tuning
	cmove	rbx, rax
	mov	qword ptr [r15 + 0x28], rbx
	cmp	rbx, rax
	je	.label_78
	movss	xmm0, dword ptr [rbx + 8]
	ucomiss	xmm0, dword ptr [rip + label_70]
	jbe	.label_68
	movss	xmm1, dword ptr [rip + label_74]
	ucomiss	xmm1, xmm0
	jbe	.label_68
	movss	xmm1, dword ptr [rbx + 0xc]
	ucomiss	xmm1, dword ptr [rip + label_77]
	jbe	.label_68
	movss	xmm1, dword ptr [rbx]
	xorps	xmm2, xmm2
	ucomiss	xmm1, xmm2
	jb	.label_68
	addss	xmm1, dword ptr [rip + label_70]
	ucomiss	xmm0, xmm1
	jbe	.label_68
	movss	xmm0, dword ptr [rbx + 4]
	movss	xmm2, dword ptr [rip + label_75]
	ucomiss	xmm2, xmm0
	jb	.label_68
	ucomiss	xmm0, xmm1
	jbe	.label_68
.label_78:
	cmp	byte ptr [rbx + 0x10], 0
	jne	.label_79
	mov	eax, r12d
	and	eax, 1
	test	r12, r12
	js	.label_69
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, r12
	jmp	.label_72
.label_69:
	shr	r12, 1
	or	rax, r12
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rax
	addss	xmm0, xmm0
.label_72:
	divss	xmm0, dword ptr [rbx + 8]
	movss	xmm1, dword ptr [rip + label_54]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	r12, xmm0
	ucomiss	xmm0, xmm1
	cmovae	r12, rcx
	ucomiss	xmm0, dword ptr [rip + label_55]
	jae	.label_68
.label_79:
	cmp	r12, 0xa
	mov	ebx, 0xa
	cmovae	rbx, r12
	or	rbx, 1
	jmp	.label_76
	.section	.text
	.align	32
	#Procedure 0x40287e
	.globl sub_40287e
	.type sub_40287e, @function
sub_40287e:

	nop	
.label_73:
	add	rbx, 2
.label_76:
	cmp	rbx, -1
	je	.label_68
	cmp	rbx, 0xa
	mov	ecx, 3
	jb	.label_71
	mov	esi, 0xc
	mov	edi, 9
	mov	ecx, 3
	nop	dword ptr [rax + rax]
.label_80:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_71
	lea	rdi, [rdi + rsi + 4]
	add	rcx, 2
	add	rsi, 8
	cmp	rdi, rbx
	jb	.label_80
.label_71:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_73
	mov	rax, rbx
	shr	rax, 0x3c
	jne	.label_68
	mov	qword ptr [r15 + 0x10], rbx
	test	rbx, rbx
	je	.label_68
	mov	esi, 0x10
	mov	rdi, rbx
	call	rpl_calloc
	mov	qword ptr [r15], rax
	test	rax, rax
	je	.label_68
	shl	rbx, 4
	add	rax, rbx
	mov	qword ptr [r15 + 8], rax
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x18], xmm0
	mov	qword ptr [r15 + 0x30], r13
	mov	qword ptr [r15 + 0x38], rbp
	mov	qword ptr [r15 + 0x40], r14
	mov	qword ptr [r15 + 0x48], 0
	mov	rax, r15
	jmp	.label_67
.label_68:
	mov	rdi, r15
	call	free
	xor	eax, eax
.label_67:
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
	#Procedure 0x402948
	.globl sub_402948
	.type sub_402948, @function
sub_402948:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402950

	.globl wd_comparator
	.type wd_comparator, @function
wd_comparator:
	mov	eax, dword ptr [rdi + 0x44]
	cmp	eax, dword ptr [rsi + 0x44]
	sete	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x40295a
	.globl sub_40295a
	.type sub_40295a, @function
sub_40295a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402960

	.globl rpl_nanosleep
	.type rpl_nanosleep, @function
rpl_nanosleep:
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x10
	mov	r15, rsi
	mov	rcx, qword ptr [rdi + 8]
	cmp	rcx, 0x3b9aca00
	jb	.label_81
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	eax, 0xffffffff
	jmp	.label_84
.label_82:
	mov	qword ptr [rsp], rbx
	lea	rdi, [rsp]
	mov	rsi, r15
	call	nanosleep
.label_84:
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x4029a5
	.globl sub_4029a5
	.type sub_4029a5, @function
sub_4029a5:

	nop	word ptr cs:[rax + rax]
.label_81:
	mov	rbx, qword ptr [rdi]
	lea	r14, [rsp]
	nop	word ptr cs:[rax + rax]
.label_83:
	mov	qword ptr [rsp + 8], rcx
	cmp	rbx, 0x1fa401
	jl	.label_82
	mov	qword ptr [rsp], 0x1fa400
	mov	rdi, r14
	mov	rsi, r15
	call	nanosleep
	add	rbx, -0x1fa400
	test	eax, eax
	mov	ecx, 0
	je	.label_83
	test	r15, r15
	je	.label_84
	add	qword ptr [r15], rbx
	jmp	.label_84
	.section	.text
	.align	32
	#Procedure 0x402a00
	.globl hash_table_ok
	.type hash_table_ok, @function
hash_table_ok:

	mov	rax, qword ptr [rdi]
	mov	r9, qword ptr [rdi + 8]
	xor	r10d, r10d
	cmp	rax, r9
	mov	ecx, 0
	jae	.label_85
	mov	rcx, rax
	not	rcx
	add	r9, rcx
	shr	r9, 4
	lea	rsi, [r9 + 1]
	mov	r8d, esi
	and	r8d, 1
	xor	ecx, ecx
	test	r9, r9
	je	.label_89
	sub	rsi, r8
	xor	ecx, ecx
	xor	r10d, r10d
	nop	
.label_95:
	cmp	qword ptr [rax], 0
	je	.label_86
	mov	rdx, rax
	nop	dword ptr [rax]
.label_88:
	inc	rcx
	mov	rdx, qword ptr [rdx + 8]
	test	rdx, rdx
	jne	.label_88
	inc	r10
.label_86:
	cmp	qword ptr [rax + 0x10], 0
	je	.label_90
	lea	rdx, [rax + 0x10]
	nop	word ptr [rax + rax]
.label_93:
	inc	rcx
	mov	rdx, qword ptr [rdx + 8]
	test	rdx, rdx
	jne	.label_93
	inc	r10
.label_90:
	add	rax, 0x20
	add	rsi, -2
	jne	.label_95
	jmp	.label_87
.label_89:
	xor	r10d, r10d
.label_87:
	test	r8, r8
	je	.label_85
	cmp	qword ptr [rax], 0
	je	.label_85
	nop	dword ptr [rax]
.label_91:
	inc	rcx
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_91
	inc	r10
.label_85:
	cmp	r10, qword ptr [rdi + 0x18]
	jne	.label_92
	mov	al, 1
	cmp	rcx, qword ptr [rdi + 0x20]
	je	.label_94
.label_92:
	xor	eax, eax
.label_94:
	ret	
.label_96:
	push	rax
	call	abort
	.section	.text
	.align	32
	#Procedure 0x402ac6
	.globl sub_402ac6
	.type sub_402ac6, @function
sub_402ac6:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402ace
	.globl hash_get_first
	.type hash_get_first, @function
hash_get_first:

	xor	eax, eax
	cmp	qword ptr [rdi + 0x20], 0
	je	.label_99
	mov	rcx, qword ptr [rdi]
	mov	rdx, qword ptr [rdi + 8]
	jmp	.label_98
	.section	.text
	.align	32
	#Procedure 0x402ae0
	.globl sub_402ae0
	.type sub_402ae0, @function
sub_402ae0:

	nop	word ptr cs:[rax + rax]
.label_97:
	add	rcx, 0x10
.label_98:
	cmp	rcx, rdx
	jae	.label_96
	mov	rax, qword ptr [rcx]
	test	rax, rax
	je	.label_97
.label_99:
	ret	
	.section	.text
	.align	32
	#Procedure 0x402b00

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
	#Procedure 0x402b19
	.globl sub_402b19
	.type sub_402b19, @function
sub_402b19:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402b20

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_110
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_112
.label_110:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_112:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_101
	cmp	r10d, 0x29
	jae	.label_109
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_111
.label_109:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_111:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_101
	cmp	r10d, 0x29
	jae	.label_107
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_108
.label_107:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_108:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_101
	cmp	r10d, 0x29
	jae	.label_105
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_106
.label_105:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_106:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_101
	cmp	r10d, 0x29
	jae	.label_103
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_104
.label_103:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_104:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_101
	cmp	r10d, 0x29
	jae	.label_100
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_102
.label_100:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_102:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_101
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_101
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_101
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_101
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_101:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	32
	#Procedure 0x402d02
	.globl sub_402d02
	.type sub_402d02, @function
sub_402d02:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402d10

	.globl raw_comparator
	.type raw_comparator, @function
raw_comparator:
	cmp	rdi, rsi
	sete	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x402d17
	.globl sub_402d17
	.type sub_402d17, @function
sub_402d17:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402d20
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
	#Procedure 0x402d95
	.globl sub_402d95
	.type sub_402d95, @function
sub_402d95:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402da0
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
	#Procedure 0x402db8
	.globl sub_402db8
	.type sub_402db8, @function
sub_402db8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402dc0

	.globl hash_insert_if_absent
	.type hash_insert_if_absent, @function
hash_insert_if_absent:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rdx
	mov	r14, rsi
	mov	r13, rdi
	test	r14, r14
	je	.label_137
	mov	rsi, qword ptr [r13 + 0x10]
	mov	rdi, r14
	call	qword ptr [r13 + 0x30]
	mov	rbp, rax
	cmp	rbp, qword ptr [r13 + 0x10]
	jae	.label_137
	mov	rbx, qword ptr [r13]
	shl	rbp, 4
	lea	r12, [rbx + rbp]
	mov	rsi, qword ptr [rbx + rbp]
	test	rsi, rsi
	je	.label_125
	cmp	rsi, r14
	je	.label_116
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	test	al, al
	je	.label_114
	mov	rax, qword ptr [r12]
.label_115:
	test	rax, rax
	jne	.label_124
	jmp	.label_125
.label_116:
	mov	rax, r14
.label_124:
	xor	ebp, ebp
	test	r15, r15
	je	.label_128
	mov	qword ptr [r15], rax
	jmp	.label_128
.label_114:
	mov	rax, qword ptr [rbx + rbp + 8]
	test	rax, rax
	je	.label_125
	lea	rbp, [rbx + rbp + 8]
	nop	word ptr [rax + rax]
.label_142:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_139
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	mov	rbp, qword ptr [rbp]
	test	al, al
	jne	.label_141
	mov	rax, qword ptr [rbp + 8]
	add	rbp, 8
	test	rax, rax
	jne	.label_142
.label_125:
	mov	rcx, qword ptr [r13 + 0x10]
	mov	rax, qword ptr [r13 + 0x18]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_143
	cvtsi2ss	xmm1, rax
	jmp	.label_119
.label_143:
	shr	rax, 1
	or	rdx, rax
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_119:
	mov	rax, qword ptr [r13 + 0x28]
	movss	xmm2, dword ptr [rax + 8]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_126
	cvtsi2ss	xmm0, rcx
	jmp	.label_133
.label_126:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_133:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm1, xmm3
	jbe	.label_136
	mov	ecx, OFFSET FLAT:default_tuning
	cmp	rax, rcx
	je	.label_129
	ucomiss	xmm2, dword ptr [rip + label_70]
	jbe	.label_117
	movss	xmm3, dword ptr [rip + label_74]
	ucomiss	xmm3, xmm2
	jbe	.label_117
	movss	xmm3, dword ptr [rax + 0xc]
	ucomiss	xmm3, dword ptr [rip + label_77]
	jbe	.label_117
	movss	xmm3, dword ptr [rax]
	xorps	xmm4, xmm4
	ucomiss	xmm3, xmm4
	jb	.label_117
	addss	xmm3, dword ptr [rip + label_70]
	ucomiss	xmm2, xmm3
	jbe	.label_117
	movss	xmm4, dword ptr [rax + 4]
	movss	xmm5, dword ptr [rip + label_75]
	ucomiss	xmm5, xmm4
	jb	.label_117
	ucomiss	xmm4, xmm3
	ja	.label_132
.label_117:
	mov	qword ptr [r13 + 40], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	movss	xmm2, dword ptr [rip + label_134]
	jmp	.label_132
.label_129:
	mov	eax, OFFSET FLAT:default_tuning
.label_132:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm1, xmm3
	jbe	.label_136
	cmp	byte ptr [rax + 0x10], 0
	mulss	xmm0, dword ptr [rax + 0xc]
	jne	.label_121
	mulss	xmm0, xmm2
.label_121:
	mov	ebp, 0xffffffff
	ucomiss	xmm0, dword ptr [rip + label_55]
	jae	.label_128
	movss	xmm1, dword ptr [rip + label_54]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rsi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rsi, rcx
	mov	rdi, r13
	call	hash_rehash
	test	al, al
	je	.label_128
	mov	rsi, qword ptr [r13 + 0x10]
	mov	rdi, r14
	call	qword ptr [r13 + 0x30]
	mov	rbp, rax
	cmp	rbp, qword ptr [r13 + 0x10]
	jae	.label_137
	mov	rbx, qword ptr [r13]
	shl	rbp, 4
	lea	r12, [rbx + rbp]
	mov	rsi, qword ptr [rbx + rbp]
	test	rsi, rsi
	je	.label_136
	cmp	rsi, r14
	mov	rax, r14
	je	.label_120
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	test	al, al
	je	.label_113
	mov	rax, qword ptr [r12]
.label_120:
	test	rax, rax
	jne	.label_118
.label_136:
	cmp	qword ptr [r12], 0
	je	.label_122
	mov	rax, qword ptr [r13 + 0x48]
	test	rax, rax
	je	.label_123
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [r13 + 0x48], rcx
	jmp	.label_127
.label_122:
	mov	qword ptr [r12], r14
	movdqu	xmm0, xmmword ptr [r13 + 0x18]
	paddq	xmm0, xmmword ptr [rip + label_130]
	movdqu	xmmword ptr [r13 + 0x18], xmm0
	jmp	.label_131
.label_123:
	mov	edi, 0x10
	call	malloc
	mov	ebp, 0xffffffff
	test	rax, rax
	je	.label_128
.label_127:
	mov	qword ptr [rax], r14
	mov	rcx, qword ptr [r12 + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r12 + 8], rax
	inc	qword ptr [r13 + 0x20]
.label_131:
	mov	ebp, 1
.label_128:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_139:
	mov	rax, r14
	jmp	.label_115
.label_141:
	mov	rax, qword ptr [rbp]
	jmp	.label_115
.label_113:
	mov	rax, qword ptr [rbx + rbp + 8]
	test	rax, rax
	je	.label_136
	lea	rbp, [rbx + rbp + 8]
.label_138:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_140
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	mov	rbp, qword ptr [rbp]
	test	al, al
	jne	.label_135
	mov	rax, qword ptr [rbp + 8]
	add	rbp, 8
	test	rax, rax
	jne	.label_138
	jmp	.label_136
.label_140:
	mov	rax, r14
	jmp	.label_120
.label_135:
	mov	rax, qword ptr [rbp]
	jmp	.label_120
.label_137:
	call	abort
.label_118:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4030f1
	.globl sub_4030f1
	.type sub_4030f1, @function
sub_4030f1:

	nop	word ptr cs:[rax + rax]
.label_147:
	mov	rax, rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x403104
	.globl sub_403104
	.type sub_403104, @function
sub_403104:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403108

	.globl last_component
	.type last_component, @function
last_component:
	dec	rdi
	nop	word ptr cs:[rax + rax]
.label_144:
	movzx	edx, byte ptr [rdi + 1]
	inc	rdi
	cmp	dl, 0x2f
	je	.label_144
	xor	esi, esi
	mov	rax, rdi
	jmp	.label_146
	.section	.text
	.align	32
	#Procedure 0x40312b
	.globl sub_40312b
	.type sub_40312b, @function
sub_40312b:

	nop	word ptr cs:[rax + rax]
.label_145:
	movzx	edx, byte ptr [rax + 1]
	inc	rax
	mov	sil, cl
.label_146:
	mov	cl, 1
	cmp	dl, 0x2f
	je	.label_145
	test	dl, dl
	je	.label_147
	mov	ecx, esi
	and	cl, 1
	je	.label_148
	xor	esi, esi
.label_148:
	test	cl, cl
	cmovne	rdi, rax
	mov	ecx, esi
	jmp	.label_145
	.section	.text
	.align	32
	#Procedure 0x403160

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
	je	.label_149
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
.label_149:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4031f5
	.globl sub_4031f5
	.type sub_4031f5, @function
sub_4031f5:

	nop	word ptr cs:[rax + rax]
.label_151:
	call	xalloc_die
.label_154:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_151
	mov	qword ptr [rsi], rbx
.label_153:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_150
	test	rax, rax
	je	.label_151
.label_150:
	pop	rbx
	ret	
.label_152:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x403232
	.globl sub_403232
	.type sub_403232, @function
sub_403232:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40323e
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_154
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_152
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_153
	call	free
	xor	eax, eax
	jmp	.label_150
.label_155:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x403275
	.globl sub_403275
	.type sub_403275, @function
sub_403275:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40327f
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_155
	call	rpl_calloc
	test	rax, rax
	je	.label_155
	pop	rcx
	ret	
.label_158:
	mov	dword ptr [r15], ebp
	movsd	xmm0, qword ptr [rsp + 0x10]
.label_156:
	test	r14, r14
	je	.label_157
	mov	qword ptr [r14], r12
.label_157:
	add	rsp, 0x20
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4032be
	.globl sub_4032be
	.type sub_4032be, @function
sub_4032be:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4032c6

	.globl cl_strtod
	.type cl_strtod, @function
cl_strtod:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x20
	mov	r14, rsi
	mov	rbx, rdi
	lea	rsi, [rsp + 8]
	call	strtod
	mov	r12, qword ptr [rsp + 8]
	cmp	byte ptr [r12], 0
	je	.label_156
	movsd	qword ptr [rsp + 0x10], xmm0
	call	__errno_location
	mov	r15, rax
	mov	ebp, dword ptr [r15]
	lea	rsi, [rsp + 0x18]
	mov	rdi, rbx
	call	c_strtod
	mov	rax, qword ptr [rsp + 0x18]
	cmp	r12, rax
	jae	.label_158
	mov	qword ptr [rsp + 8], rax
	mov	r12, rax
	jmp	.label_156
.label_163:
	mov	rdx, qword ptr [r14 + 8]
	lea	rcx, [rcx + rax + 0x10]
	nop	word ptr cs:[rax + rax]
.label_159:
	cmp	rcx, rdx
	mov	eax, 0
	jae	.label_164
	mov	rax, qword ptr [rcx]
	add	rcx, 0x10
	test	rax, rax
	je	.label_159
.label_164:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x403354
	.globl hash_get_next
	.type hash_get_next, @function
hash_get_next:

	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	mov	rsi, qword ptr [r14 + 0x10]
	mov	rdi, rbx
	call	qword ptr [r14 + 0x30]
	cmp	rax, qword ptr [r14 + 0x10]
	jae	.label_161
	mov	rcx, qword ptr [r14]
	shl	rax, 4
	lea	rdx, [rcx + rax]
	nop	word ptr cs:[rax + rax]
.label_162:
	cmp	qword ptr [rdx], rbx
	mov	rdx, qword ptr [rdx + 8]
	je	.label_160
	test	rdx, rdx
	jne	.label_162
	jmp	.label_163
.label_160:
	test	rdx, rdx
	je	.label_163
	mov	rax, qword ptr [rdx]
	jmp	.label_164
.label_161:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4033a3
	.globl sub_4033a3
	.type sub_4033a3, @function
sub_4033a3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4033b0

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	mov	edi, 1
	jmp	usage
	.section	.text
	.align	32
	#Procedure 0x4033ba
	.globl sub_4033ba
	.type sub_4033ba, @function
sub_4033ba:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4033c0
	.globl hash_get_max_bucket_length
	.type hash_get_max_bucket_length, @function
hash_get_max_bucket_length:

	mov	rcx, qword ptr [rdi]
	mov	rdi, qword ptr [rdi + 8]
	xor	eax, eax
	cmp	rcx, rdi
	jae	.label_165
	mov	rax, rcx
	not	rax
	add	rdi, rax
	shr	rdi, 4
	lea	rsi, [rdi + 1]
	mov	r8d, esi
	and	r8d, 1
	xor	eax, eax
	test	rdi, rdi
	je	.label_172
	sub	rsi, r8
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_167:
	cmp	qword ptr [rcx], 0
	je	.label_166
	xor	edi, edi
	mov	rdx, rcx
	nop	dword ptr [rax + rax]
.label_171:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_171
	cmp	rdi, rax
	cmova	rax, rdi
.label_166:
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_168
	lea	rdx, [rcx + 0x10]
	xor	edi, edi
.label_169:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_169
	cmp	rdi, rax
	cmova	rax, rdi
.label_168:
	add	rcx, 0x20
	add	rsi, -2
	jne	.label_167
.label_172:
	test	r8, r8
	je	.label_165
	cmp	qword ptr [rcx], 0
	je	.label_165
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_170:
	mov	rcx, qword ptr [rcx + 8]
	inc	rdx
	test	rcx, rcx
	jne	.label_170
	cmp	rdx, rax
	cmova	rax, rdx
.label_165:
	ret	
	.section	.text
	.align	32
	#Procedure 0x403474
	.globl sub_403474
	.type sub_403474, @function
sub_403474:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403480

	.globl check_fspec
	.type check_fspec, @function
check_fspec:
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	r14, rsi
	mov	rbx, rdi
	mov	esi, dword ptr [rbx + 0x38]
	cmp	esi, -1
	je	.label_173
	mov	r15, qword ptr [rbx]
	cmp	byte ptr [r15], 0x2d
	jne	.label_180
	cmp	byte ptr [r15 + 1], 0
	jne	.label_180
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_182
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	esi, dword ptr [rbx + 0x38]
.label_180:
	lea	rdx, [rsp + 8]
	mov	edi, 1
	call	__fxstat
	test	eax, eax
	je	.label_177
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rbx + 0x3c], eax
	mov	edi, dword ptr [rbx + 0x38]
	mov	rsi, r15
	call	close_fd
	mov	dword ptr [rbx + 0x38], 0xffffffff
	jmp	.label_173
.label_177:
	mov	eax, 0xf000
	and	eax, dword ptr [rbx + 0x30]
	cmp	eax, 0x8000
	jne	.label_178
	mov	rax, qword ptr [rsp + 0x38]
	cmp	rax, qword ptr [rbx + 8]
	jge	.label_174
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_176
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r15
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r12
	call	error
	mov	edi, dword ptr [rbx + 0x38]
	xor	esi, esi
	xor	edx, edx
	mov	rcx, r15
	call	xlseek
	mov	qword ptr [rbx + 8], 0
	jmp	.label_178
.label_174:
	mov	rax, qword ptr [rsp + 0x38]
	cmp	rax, qword ptr [rbx + 8]
	jne	.label_178
	mov	rax, qword ptr [rbx + 0x10]
	cmp	rax, qword ptr [rsp + 0x60]
	jne	.label_178
	mov	eax, dword ptr [rbx + 0x18]
	cmp	eax, dword ptr [rsp + 0x68]
	je	.label_173
.label_178:
	cmp	byte ptr [rip + print_headers],  1
	jne	.label_175
	cmp	qword ptr [r14], rbx
	setne	al
	jmp	.label_183
.label_175:
	xor	eax, eax
.label_183:
	mov	edx, dword ptr [rbx + 0x38]
	movzx	edi, al
	mov	rcx, -1
	mov	rsi, r15
	call	dump_remainder
	add	qword ptr [rbx + 8], rax
	test	rax, rax
	je	.label_173
	mov	qword ptr [r14], rbx
	mov	rdi, qword ptr [rip + stdout]
	call	fflush_unlocked
	test	eax, eax
	jne	.label_181
.label_173:
	add	rsp, 0x98
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_181:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_179
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	.section	.text
	.align	32
	#Procedure 0x403600
	.globl base_len
	.type base_len, @function
base_len:

	push	rbx
	mov	rbx, rdi
	call	strlen
	mov	rcx, rax
	nop	dword ptr [rax]
.label_185:
	mov	rax, rcx
	cmp	rax, 2
	jb	.label_184
	lea	rcx, [rax - 1]
	cmp	byte ptr [rbx + rax - 1], 0x2f
	je	.label_185
.label_184:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x403626
	.globl sub_403626
	.type sub_403626, @function
sub_403626:

	nop	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403630
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
	je	.label_186
	mov	qword ptr [rax], rbx
.label_186:
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
	#Procedure 0x40371c
	.globl sub_40371c
	.type sub_40371c, @function
sub_40371c:

	nop	dword ptr [rax]
.label_189:
	test	rbx, rbx
	je	.label_187
	mov	qword ptr [rbx], r14
.label_187:
	xorps	xmm0, xmm0
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x403733
	.globl sub_403733
	.type sub_403733, @function
sub_403733:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403736

	.globl c_strtod
	.type c_strtod, @function
c_strtod:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	cmp	qword ptr [rip + c_locale_cache],  0
	jne	.label_190
	mov	edi, 0x1fbf
	mov	esi, OFFSET FLAT:label_188
	xor	edx, edx
	call	newlocale
	mov	qword ptr [rip + c_locale_cache],  rax
.label_190:
	mov	rdx, qword ptr [rip + c_locale_cache]
	test	rdx, rdx
	je	.label_189
	mov	rdi, r14
	mov	rsi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	strtod_l
.label_203:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_191
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
	#Procedure 0x4037b8
	.globl sub_4037b8
	.type sub_4037b8, @function
sub_4037b8:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4037bb

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_203
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_206
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_212
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, 0xa
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_208
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_202
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_209
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_215
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_198
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, 0xa
	mov	ecx, 5
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_204
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
	mov	esi, OFFSET FLAT:label_192
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_200
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_214
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_211
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_197
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_205
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_194
	mov	ecx, OFFSET FLAT:label_195
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_199
	mov	esi, OFFSET FLAT:label_210
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_199
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_213
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_199:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_196
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_195
	mov	ecx, OFFSET FLAT:label_201
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_216
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_201
	mov	ecx, OFFSET FLAT:label_207
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
	.section	.text
	.align	32
	#Procedure 0x403a70

	.globl safe_read
	.type safe_read, @function
safe_read:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdx
	mov	r14, rsi
	mov	r15d, edi
.label_218:
	mov	edi, r15d
	mov	rsi, r14
	mov	rdx, rbx
	call	read
	mov	rbp, rax
	test	rbp, rbp
	jns	.label_217
	call	__errno_location
	mov	eax, dword ptr [rax]
	cmp	eax, 4
	je	.label_218
	cmp	rbx, 0x7ff00001
	jb	.label_217
	cmp	eax, 0x16
	mov	ebx, 0x7ff00000
	je	.label_218
.label_217:
	mov	rax, rbp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
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

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_219
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_219
	test	byte ptr [rbx + 1], 1
	je	.label_219
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_219:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	32
	#Procedure 0x403b03
	.globl sub_403b03
	.type sub_403b03, @function
sub_403b03:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403b10
	.globl hash_clear
	.type hash_clear, @function
hash_clear:

	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	mov	r14, qword ptr [r15]
	mov	rax, qword ptr [r15 + 8]
	jmp	.label_222
	.section	.text
	.align	32
	#Procedure 0x403b21
	.globl sub_403b21
	.type sub_403b21, @function
sub_403b21:

	nop	word ptr cs:[rax + rax]
.label_225:
	add	r14, 0x10
.label_222:
	cmp	r14, rax
	jae	.label_224
	cmp	qword ptr [r14], 0
	je	.label_225
	mov	rbx, qword ptr [r14 + 8]
	mov	rax, qword ptr [r15 + 0x40]
	test	rax, rax
	setne	cl
	test	rbx, rbx
	je	.label_226
	nop	word ptr cs:[rax + rax]
.label_221:
	test	cl, 1
	je	.label_220
	mov	rdi, qword ptr [rbx]
	call	rax
	mov	rax, qword ptr [r15 + 0x40]
.label_220:
	mov	qword ptr [rbx], 0
	mov	rdx, qword ptr [rbx + 8]
	mov	rcx, qword ptr [r15 + 0x48]
	mov	qword ptr [rbx + 8], rcx
	mov	qword ptr [r15 + 0x48], rbx
	test	rax, rax
	setne	cl
	test	rdx, rdx
	mov	rbx, rdx
	jne	.label_221
.label_226:
	test	cl, cl
	je	.label_223
	mov	rdi, qword ptr [r14]
	call	rax
.label_223:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	mov	rax, qword ptr [r15 + 8]
	jmp	.label_225
.label_224:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x18], xmm0
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x403bb7
	.globl sub_403bb7
	.type sub_403bb7, @function
sub_403bb7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403bc0

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x403bd1
	.globl sub_403bd1
	.type sub_403bd1, @function
sub_403bd1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403be0

	.globl xnanosleep
	.type xnanosleep, @function
xnanosleep:
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x10
	call	dtotimespec
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], rdx
	call	__errno_location
	mov	r14, rax
	mov	dword ptr [r14], 0
	xor	ebx, ebx
	lea	rdi, [rsp]
	xor	esi, esi
	call	rpl_nanosleep
	test	eax, eax
	je	.label_227
	lea	r15, [rsp]
	nop	dword ptr [rax + rax]
.label_228:
	mov	eax, dword ptr [r14]
	mov	ebx, 0xffffffff
	or	eax, 4
	cmp	eax, 4
	jne	.label_227
	mov	dword ptr [r14], 0
	xor	ebx, ebx
	xor	esi, esi
	mov	rdi, r15
	call	rpl_nanosleep
	test	eax, eax
	jne	.label_228
.label_227:
	mov	eax, ebx
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x403c53
	.globl sub_403c53
	.type sub_403c53, @function
sub_403c53:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403c60

	.globl hash_free
	.type hash_free, @function
hash_free:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	cmp	qword ptr [r14 + 0x40], 0
	je	.label_234
	cmp	qword ptr [r14 + 0x20], 0
	je	.label_234
	mov	r15, qword ptr [r14]
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_239
	.section	.text
	.align	32
	#Procedure 0x403c7f
	.globl sub_403c7f
	.type sub_403c7f, @function
sub_403c7f:

	nop	
.label_231:
	add	r15, 0x10
.label_233:
	cmp	r15, rax
	jae	.label_229
	mov	rdi, qword ptr [r15 + 8]
	test	rdi, rdi
	je	.label_231
	nop	word ptr cs:[rax + rax]
.label_237:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_237
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_231
.label_230:
	add	r15, 0x10
.label_239:
	cmp	r15, rax
	jae	.label_234
	mov	rdi, qword ptr [r15]
	test	rdi, rdi
	je	.label_230
	test	r15, r15
	je	.label_230
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [r15 + 8]
	jmp	.label_232
.label_234:
	mov	r15, qword ptr [r14]
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_233
	.section	.text
	.align	32
	#Procedure 0x403ce0
	.globl sub_403ce0
	.type sub_403ce0, @function
sub_403ce0:

	nop	
.label_229:
	mov	rdi, qword ptr [r14 + 0x48]
	test	rdi, rdi
	je	.label_235
.label_238:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_238
.label_235:
	mov	rdi, qword ptr [r14]
	call	free
	mov	rdi, r14
	pop	rbx
	pop	r14
	pop	r15
	jmp	free
	.section	.text
	.align	32
	#Procedure 0x403d10
	.globl sub_403d10
	.type sub_403d10, @function
sub_403d10:

	nop	word ptr cs:[rax + rax]
.label_236:
	mov	rdi, qword ptr [rbx]
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [rbx + 8]
.label_232:
	test	rbx, rbx
	jne	.label_236
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_230
	.section	.text
	.align	32
	#Procedure 0x403d30
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
	je	.label_240
	add	rbx, 8
	nop	word ptr cs:[rax + rax]
.label_241:
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	mov	rax, r13
	je	.label_240
	mov	r13, qword ptr [rbx]
	add	rbx, 8
	add	r15, r14
	test	r13, r13
	mov	eax, 0
	jne	.label_241
.label_240:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x403d93
	.globl sub_403d93
	.type sub_403d93, @function
sub_403d93:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403da0

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
	je	.label_242
	test	r15, r15
	je	.label_243
.label_242:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_243:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x403ddc
	.globl sub_403ddc
	.type sub_403ddc, @function
sub_403ddc:

	nop	dword ptr [rax]
.label_244:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403de5
	.globl sub_403de5
	.type sub_403de5, @function
sub_403de5:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403ded

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
	je	.label_244
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
	.align	32
	#Procedure 0x403e50
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_245
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_248:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_248
.label_245:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_249
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_247], OFFSET FLAT:slot0
.label_249:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_246
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_246:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x403ee1
	.globl sub_403ee1
	.type sub_403ee1, @function
sub_403ee1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403ef0

	.globl dump_remainder
	.type dump_remainder, @function
dump_remainder:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x2018
	mov	r12, rcx
	mov	dword ptr [rsp + 4], edx
	mov	qword ptr [rsp + 8], rsi
	mov	ebp, edi
	xor	ebx, ebx
	lea	r13, [rsp + 0x10]
	mov	r15, r12
	nop	dword ptr [rax]
.label_250:
	cmp	r15, 0x2000
	mov	edx, 0x2000
	cmovb	rdx, r15
	mov	edi, dword ptr [rsp + 4]
	mov	rsi, r13
	call	safe_read
	mov	r14, rax
	test	r14, r14
	je	.label_254
	cmp	r14, -1
	je	.label_251
	test	bpl, 1
	je	.label_252
	movzx	eax, byte ptr [rip + write_header.first_file]
	test	al, al
	mov	edx, OFFSET FLAT:label_257
	mov	eax, OFFSET FLAT:label_258
	cmovne	rdx, rax
	xor	ebp, ebp
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_259
	xor	eax, eax
	mov	rcx, qword ptr [rsp + 8]
	call	__printf_chk
	mov	byte ptr [rip + write_header.first_file],  1
.label_252:
	mov	rdi, r13
	mov	rsi, r14
	call	xwrite_stdout
	add	rbx, r14
	cmp	r12, -1
	je	.label_250
	cmp	r12, -2
	je	.label_254
	sub	r15, r14
	jne	.label_250
	jmp	.label_254
.label_251:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	cmp	ebp, 0xb
	jne	.label_256
.label_254:
	mov	rax, rbx
	add	rsp, 0x2018
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_256:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_253
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 8]
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rbx
	call	error
	nop	word ptr cs:[rax + rax]
.label_260:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_255
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_255:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404044
	.globl sub_404044
	.type sub_404044, @function
sub_404044:

	nop	
	.section	.text
	.align	32
	#Procedure 0x404046

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
	jne	.label_261
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_261
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_260
.label_261:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
	.section	.text
	.align	32
	#Procedure 0x404080
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_262:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_262
	jmp	version_etc_arn
	.section	.text
	.align	32
	#Procedure 0x4040a1
	.globl sub_4040a1
	.type sub_4040a1, @function
sub_4040a1:

	nop	word ptr cs:[rax + rax]
.label_269:
	test	rcx, rcx
	jne	.label_265
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_265:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_264
.label_268:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_263
	test	rbx, rbx
	jne	.label_263
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_267:
	call	xalloc_die
.label_264:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x404106
	.globl sub_404106
	.type sub_404106, @function
sub_404106:

	nop	word ptr [rax + rax]
.label_263:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_266
	test	rax, rax
	je	.label_267
.label_266:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x404123
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_269
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_267
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_268
	.section	.text
	.align	32
	#Procedure 0x404150

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_270
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
.label_270:
	mov	ecx, 1
.label_271:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	32
	#Procedure 0x40419b
	.globl sub_40419b
	.type sub_40419b, @function
sub_40419b:

	nop	dword ptr [rax + rax]
.label_274:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_272
	test	rax, rax
	je	.label_273
.label_272:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4041b4
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_273
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_274
	test	rbx, rbx
	jne	.label_274
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_273:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4041e8
	.globl sub_4041e8
	.type sub_4041e8, @function
sub_4041e8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4041f0

	.globl wd_hasher
	.type wd_hasher, @function
wd_hasher:
	movsxd	rax, dword ptr [rdi + 0x44]
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4041fd
	.globl sub_4041fd
	.type sub_4041fd, @function
sub_4041fd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404200

	.globl posix2_version
	.type posix2_version, @function
posix2_version:
	push	rax
	mov	edi, OFFSET FLAT:label_275
	call	getenv
	mov	ecx, 0x31069
	test	rax, rax
	je	.label_276
	mov	ecx, 0x31069
	cmp	byte ptr [rax], 0
	je	.label_276
	lea	rsi, [rsp]
	mov	edx, 0xa
	mov	rdi, rax
	call	strtol
	mov	rcx, qword ptr [rsp]
	cmp	byte ptr [rcx], 0
	mov	ecx, 0x31069
	cmove	rcx, rax
.label_276:
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
	#Procedure 0x404260

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
	mov	rsi, qword ptr [r14 + 0x10]
	mov	rdi, r12
	call	qword ptr [r14 + 0x30]
	cmp	rax, qword ptr [r14 + 0x10]
	jae	.label_281
	mov	rbx, qword ptr [r14]
	shl	rax, 4
	mov	rsi, qword ptr [rbx + rax]
	xor	r15d, r15d
	test	rsi, rsi
	je	.label_278
	add	rbx, rax
	je	.label_278
	cmp	rsi, r12
	je	.label_280
	xor	r15d, r15d
	nop	
.label_279:
	mov	rdi, r12
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_277
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	je	.label_278
	mov	rsi, qword ptr [rbx]
	cmp	rsi, r12
	jne	.label_279
.label_280:
	mov	r15, r12
	jmp	.label_278
.label_281:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4042c6
	.globl sub_4042c6
	.type sub_4042c6, @function
sub_4042c6:

	nop	dword ptr [rax + rax]
.label_277:
	mov	r15, qword ptr [rbx]
.label_278:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x4042e0
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
	#Procedure 0x4042ef
	.globl sub_4042ef
	.type sub_4042ef, @function
sub_4042ef:

	nop	
.label_283:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_282
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	32
	#Procedure 0x404310
	.globl sub_404310
	.type sub_404310, @function
sub_404310:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40431f

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_283
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_285
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_287
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_285
	mov	esi, OFFSET FLAT:label_286
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_284
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_284:
	mov	rbx, r14
.label_285:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x4043a0
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
	#Procedure 0x4043d6
	.globl sub_4043d6
	.type sub_4043d6, @function
sub_4043d6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4043e0

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
	.align	32
	#Procedure 0x404403
	.globl sub_404403
	.type sub_404403, @function
sub_404403:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404410

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_288
	test	rbx, rbx
	jne	.label_288
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_288:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_290
	test	rax, rax
	je	.label_289
.label_290:
	pop	rbx
	ret	
.label_289:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x404440

	.globl recheck
	.type recheck, @function
recheck:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xa8
	mov	ebp, esi
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	cmp	byte ptr [rdi], 0x2d
	jne	.label_309
	lea	r15, [rbx + 0x36]
	lea	r13, [rbx + 0x3c]
	cmp	byte ptr [rdi + 1], 0
	mov	r14b, byte ptr [rbx + 0x36]
	mov	r12d, dword ptr [rbx + 0x3c]
	jne	.label_316
	xor	edx, edx
	mov	al, 1
	mov	dword ptr [rsp + 0xc], eax
	jmp	.label_318
.label_309:
	lea	r15, [rbx + 0x36]
	mov	r14b, byte ptr [rbx + 0x36]
	lea	r13, [rbx + 0x3c]
	mov	r12d, dword ptr [rbx + 0x3c]
.label_316:
	xor	esi, esi
	test	bpl, bpl
	sete	sil
	shl	esi, 0xb
	mov	dword ptr [rsp + 0xc], 0
	xor	eax, eax
	call	open_safer
	mov	edx, eax
.label_318:
	mov	rax, qword ptr [rbx + 0x38]
	cmp	eax, -1
	sete	cl
	shr	rax, 0x20
	sete	al
	xor	al, cl
	je	.label_292
	cmp	edx, -1
	sete	al
	and	al, byte ptr [rip + reopen_inaccessible_files]
	xor	al, 1
	mov	byte ptr [r15], al
	mov	al, byte ptr [rip + disable_inotify]
	test	al, al
	mov	dword ptr [rsp + 8], edx
	jne	.label_291
	mov	rsi, qword ptr [rbx]
	lea	rdx, [rsp + 0x10]
	mov	edi, 1
	call	__lxstat
	mov	edx, dword ptr [rsp + 8]
	test	eax, eax
	jne	.label_291
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x28]
	cmp	eax, 0xa000
	jne	.label_291
	mov	dword ptr [r13], 0xffffffff
	mov	byte ptr [rbx + 0x34], 1
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_297
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rsi, qword ptr [rbx]
	cmp	byte ptr [rsi], 0x2d
	jne	.label_304
	cmp	byte ptr [rsi + 1], 0
	jne	.label_304
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_182
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
.label_304:
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
	jmp	.label_295
.label_291:
	cmp	edx, -1
	je	.label_317
	lea	rdx, [rsp + 0x10]
	mov	edi, 1
	mov	esi, dword ptr [rsp + 8]
	call	__fxstat
	test	eax, eax
	js	.label_317
	movzx	eax, word ptr [rsp + 0x28]
	and	eax, 0xf000
	movsx	ecx, ax
	movzx	eax, ax
	cmp	ecx, 0xfff
	jg	.label_323
	cmp	eax, 0x8000
	je	.label_321
	cmp	eax, 0xc000
	je	.label_321
	jmp	.label_322
.label_317:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	dword ptr [r13], ebp
	cmp	byte ptr [r15], 0
	je	.label_328
	mov	ebp, dword ptr [rax]
	cmp	r12d, ebp
	je	.label_295
	mov	rdx, qword ptr [rbx]
	cmp	byte ptr [rdx], 0x2d
	jne	.label_335
	cmp	byte ptr [rdx + 1], 0
	jne	.label_335
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_182
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
.label_335:
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_296
	xor	eax, eax
	mov	esi, ebp
	call	error
	jmp	.label_295
.label_328:
	test	r14b, r14b
	je	.label_295
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_303
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rsi, qword ptr [rbx]
	cmp	byte ptr [rsi], 0x2d
	jne	.label_310
	cmp	byte ptr [rsi + 1], 0
	jne	.label_310
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_182
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
.label_310:
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, r14
	call	error
	jmp	.label_295
.label_323:
	cmp	eax, 0x1000
	je	.label_321
	cmp	eax, 0x2000
	jne	.label_322
.label_321:
	mov	rsi, qword ptr [rbx]
	cmp	byte ptr [rsi], 0x2d
	jne	.label_324
	cmp	byte ptr [rsi + 1], 0
	jne	.label_324
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_182
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
.label_324:
	mov	edi, dword ptr [rsp + 8]
	call	fremote
	mov	byte ptr [rbx + 0x35], al
	test	al, al
	je	.label_329
	mov	al, byte ptr [rip + disable_inotify]
	test	al, al
	je	.label_332
.label_329:
	mov	dword ptr [r13], 0
	or	r12d, 2
	cmp	r12d, 2
	jne	.label_334
	cmp	dword ptr [rbx + 0x38], -1
	je	.label_338
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rsp + 0x18]
	jne	.label_294
	mov	rax, qword ptr [rbx + 0x20]
	cmp	rax, qword ptr [rsp + 0x10]
	jne	.label_294
	mov	rsi, qword ptr [rbx]
	cmp	byte ptr [rsi], 0x2d
	jne	.label_299
	cmp	byte ptr [rsi + 1], 0
	jne	.label_299
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_182
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
.label_299:
	mov	edi, dword ptr [rsp + 8]
	call	close_fd
	jmp	.label_298
.label_322:
	mov	dword ptr [r13], 0xffffffff
	mov	byte ptr [r15], 0
	cmp	dword ptr [rip + follow_mode],  1
	sete	al
	and	al, byte ptr [rip + reopen_inaccessible_files]
	xor	al, 1
	mov	byte ptr [rbx + 0x34], al
	test	r14b, r14b
	jne	.label_311
	cmp	r12d, -1
	je	.label_295
.label_311:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_319
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rsi, qword ptr [rbx]
	cmp	byte ptr [rsi], 0x2d
	jne	.label_306
	cmp	byte ptr [rsi + 1], 0
	jne	.label_306
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_182
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
.label_306:
	mov	edi, 4
	call	quotearg_style
	mov	rbp, rax
	mov	r8d, OFFSET FLAT:label_257
	cmp	byte ptr [rbx + 0x34], 0
	je	.label_326
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_320
	mov	edx, 5
	call	dcgettext
	mov	r8, rax
.label_326:
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	mov	rcx, rbp
	call	error
	jmp	.label_295
.label_332:
	mov	dword ptr [r13], 0xffffffff
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_337
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rsi, qword ptr [rbx]
	cmp	byte ptr [rsi], 0x2d
	jne	.label_293
	cmp	byte ptr [rsi + 1], 0
	jne	.label_293
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_182
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
.label_293:
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
	mov	word ptr [rbx + 0x34], 0x101
.label_295:
	mov	rsi, qword ptr [rbx]
	cmp	byte ptr [rsi], 0x2d
	jne	.label_312
	cmp	byte ptr [rsi + 1], 0
	jne	.label_312
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_182
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
.label_312:
	mov	edi, dword ptr [rsp + 8]
	call	close_fd
	mov	ebp, dword ptr [rbx + 0x38]
	mov	rsi, qword ptr [rbx]
	cmp	byte ptr [rsi], 0x2d
	jne	.label_308
	cmp	byte ptr [rsi + 1], 0
	jne	.label_308
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_182
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
.label_308:
	mov	edi, ebp
	call	close_fd
	mov	dword ptr [rbx + 0x38], 0xffffffff
.label_298:
	add	rsp, 0xa8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_334:
	cmp	dword ptr [rbx + 0x38], -1
	jne	.label_327
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_330
	jmp	.label_331
.label_294:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_333
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	mov	rsi, qword ptr [rbx]
	cmp	byte ptr [rsi], 0x2d
	jne	.label_336
	cmp	byte ptr [rsi + 1], 0
	jne	.label_336
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_182
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
.label_336:
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r12
	call	error
	mov	r12d, dword ptr [rbx + 0x38]
	mov	rsi, qword ptr [rbx]
	cmp	byte ptr [rsi], 0x2d
	jne	.label_305
	cmp	byte ptr [rsi + 1], 0
	jne	.label_305
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_182
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
.label_305:
	mov	edi, r12d
	call	close_fd
	jmp	.label_313
.label_338:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_314
.label_331:
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	mov	rsi, qword ptr [rbx]
	cmp	byte ptr [rsi], 0x2d
	jne	.label_315
	cmp	byte ptr [rsi + 1], 0
	jne	.label_315
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_182
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
.label_315:
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r12
	call	error
.label_313:
	movzx	eax, bpl
	mov	ecx, dword ptr [rsp + 0xc]
	test	cl, cl
	mov	ecx, 0xffffffff
	cmove	ecx, eax
	mov	eax, dword ptr [rsp + 8]
	mov	dword ptr [rbx + 0x38], eax
	mov	qword ptr [rbx + 8], 0
	movups	xmm0, xmmword ptr [rsp + 0x68]
	movups	xmmword ptr [rbx + 0x10], xmm0
	movaps	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [rbx + 0x20], xmm0
	mov	eax, dword ptr [rsp + 0x28]
	mov	dword ptr [rbx + 0x30], eax
	mov	dword ptr [rbx + 0x40], ecx
	mov	qword ptr [rbx + 0x58], 0
	mov	byte ptr [rbx + 0x34], 0
	mov	rcx, qword ptr [rbx]
	cmp	byte ptr [rcx], 0x2d
	jne	.label_325
	cmp	byte ptr [rcx + 1], 0
	jne	.label_325
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_182
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
.label_325:
	xor	esi, esi
	xor	edx, edx
	mov	edi, dword ptr [rsp + 8]
	call	xlseek
	jmp	.label_298
.label_292:
	mov	edi, OFFSET FLAT:label_300
	mov	esi, OFFSET FLAT:label_301
	mov	edx, 0x3df
	mov	ecx, OFFSET FLAT:label_302
	call	__assert_fail
.label_327:
	mov	edi, OFFSET FLAT:label_307
	mov	esi, OFFSET FLAT:label_301
	mov	edx, 0x42c
	mov	ecx, OFFSET FLAT:label_302
	call	__assert_fail
	.section	.text
	.align	32
	#Procedure 0x404a53
	.globl sub_404a53
	.type sub_404a53, @function
sub_404a53:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404a60

	.globl open_safer
	.type open_safer, @function
open_safer:
	sub	rsp, 0xd8
	test	al, al
	je	.label_339
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_339:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x30], rdx
	xor	edx, edx
	test	sil, 0x40
	je	.label_341
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x10
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_342
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_340
.label_342:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_340:
	mov	edx, dword ptr [rax]
.label_341:
	xor	eax, eax
	call	open
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xd8
	ret	
	.section	.text
	.align	32
	#Procedure 0x404b24
	.globl sub_404b24
	.type sub_404b24, @function
sub_404b24:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404b30
	.globl hash_get_n_buckets_used
	.type hash_get_n_buckets_used, @function
hash_get_n_buckets_used:

	mov	rax, qword ptr [rdi + 0x18]
	ret	
	.section	.text
	.align	32
	#Procedure 0x404b35
	.globl sub_404b35
	.type sub_404b35, @function
sub_404b35:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404b40

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_343
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_343:
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
	#Procedure 0x404bc3
	.globl sub_404bc3
	.type sub_404bc3, @function
sub_404bc3:

	nop	word ptr cs:[rax + rax]
.label_348:
	mov	al, 1
	xorps	xmm1, xmm1
	ucomisd	xmm0, xmm1
	jne	.label_344
	jnp	.label_346
.label_344:
	cmp	dword ptr [r12], 0x22
	setne	al
	jmp	.label_346
.label_347:
	xor	eax, eax
.label_346:
	test	r15, r15
	je	.label_345
	mov	qword ptr [r15], rcx
.label_345:
	movsd	qword ptr [r14], xmm0
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x404c04

	.globl xstrtod
	.type xstrtod, @function
xstrtod:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x10
	mov	r13, rcx
	mov	r14, rdx
	mov	r15, rsi
	mov	rbx, rdi
	call	__errno_location
	mov	r12, rax
	mov	dword ptr [r12], 0
	lea	rsi, [rsp + 8]
	mov	rdi, rbx
	call	r13
	mov	rcx, qword ptr [rsp + 8]
	cmp	rcx, rbx
	je	.label_347
	test	r15, r15
	jne	.label_348
	cmp	byte ptr [rcx], 0
	je	.label_348
	xor	eax, eax
	jmp	.label_345
	.section	.text
	.align	32
	#Procedure 0x404c50
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x404c5e
	.globl sub_404c5e
	.type sub_404c5e, @function
sub_404c5e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x404c60

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
	js	.label_349
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_352
	cmp	r12d, 0x7fffffff
	je	.label_354
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
	jne	.label_350
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_350:
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
.label_352:
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
	jbe	.label_355
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_351
.label_355:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_353
	mov	rdi, r14
	call	free
.label_353:
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
.label_351:
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
.label_349:
	call	abort
.label_354:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x404e1d
	.globl sub_404e1d
	.type sub_404e1d, @function
sub_404e1d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404e20
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_356]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_357]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_358]
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
	#Procedure 0x404e74
	.globl sub_404e74
	.type sub_404e74, @function
sub_404e74:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404e80

	.globl hash_delete
	.type hash_delete, @function
hash_delete:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rsi
	mov	r15, rdi
	mov	rsi, qword ptr [r15 + 0x10]
	mov	rdi, r14
	call	qword ptr [r15 + 0x30]
	mov	rbx, rax
	cmp	rbx, qword ptr [r15 + 0x10]
	jae	.label_364
	mov	rbp, qword ptr [r15]
	shl	rbx, 4
	mov	rsi, qword ptr [rbp + rbx]
	xor	r12d, r12d
	test	rsi, rsi
	je	.label_359
	lea	r13, [rbp + rbx]
	cmp	rsi, r14
	je	.label_370
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	test	al, al
	je	.label_373
	mov	r14, qword ptr [r13]
.label_370:
	mov	rax, qword ptr [rbp + rbx + 8]
	test	rax, rax
	je	.label_365
	movups	xmm0, xmmword ptr [rax]
	movups	xmmword ptr [r13], xmm0
	mov	qword ptr [rax], 0
	mov	rcx, qword ptr [r15 + 0x48]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r15 + 0x48], rax
	jmp	.label_371
.label_373:
	mov	rax, qword ptr [rbp + rbx + 8]
	xor	r12d, r12d
	test	rax, rax
	je	.label_359
	lea	rbx, [rbp + rbx + 8]
	xor	r12d, r12d
	nop	word ptr [rax + rax]
.label_368:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_366
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	mov	rcx, qword ptr [rbx]
	test	al, al
	jne	.label_363
	mov	rax, qword ptr [rcx + 8]
	add	rcx, 8
	test	rax, rax
	mov	rbx, rcx
	jne	.label_368
	jmp	.label_359
.label_365:
	mov	qword ptr [r13], 0
	jmp	.label_371
.label_366:
	mov	rcx, rax
	jmp	.label_375
.label_363:
	mov	r14, qword ptr [rcx]
.label_375:
	mov	rax, qword ptr [rcx + 8]
	mov	qword ptr [rbx], rax
	mov	qword ptr [rcx], 0
	mov	rax, qword ptr [r15 + 0x48]
	mov	qword ptr [rcx + 8], rax
	mov	qword ptr [r15 + 0x48], rcx
.label_371:
	xor	r12d, r12d
	test	r14, r14
	je	.label_359
	dec	qword ptr [r15 + 0x20]
	cmp	qword ptr [r13], 0
	jne	.label_361
	mov	rax, qword ptr [r15 + 0x18]
	dec	rax
	mov	qword ptr [r15 + 0x18], rax
	mov	ecx, eax
	and	ecx, 1
	test	rax, rax
	js	.label_378
	cvtsi2ss	xmm1, rax
	jmp	.label_367
.label_378:
	shr	rax, 1
	or	rcx, rax
	cvtsi2ss	xmm1, rcx
	addss	xmm1, xmm1
.label_367:
	mov	rcx, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x28]
	movss	xmm2, dword ptr [rax]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_369
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rcx
	jmp	.label_374
.label_369:
	shr	rcx, 1
	or	rdx, rcx
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_374:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm3, xmm1
	jbe	.label_361
	mov	ecx, OFFSET FLAT:default_tuning
	cmp	rax, rcx
	je	.label_379
	movss	xmm3, dword ptr [rax + 8]
	ucomiss	xmm3, dword ptr [rip + label_70]
	jbe	.label_362
	movss	xmm4, dword ptr [rip + label_74]
	ucomiss	xmm4, xmm3
	jbe	.label_362
	xorps	xmm4, xmm4
	ucomiss	xmm2, xmm4
	jb	.label_362
	movss	xmm4, dword ptr [rax + 0xc]
	ucomiss	xmm4, dword ptr [rip + label_77]
	jbe	.label_362
	movss	xmm4, dword ptr [rip + label_70]
	addss	xmm4, xmm2
	ucomiss	xmm3, xmm4
	jbe	.label_362
	movss	xmm3, dword ptr [rax + 4]
	movss	xmm5, dword ptr [rip + label_75]
	ucomiss	xmm5, xmm3
	jb	.label_362
	ucomiss	xmm3, xmm4
	ja	.label_376
.label_362:
	mov	qword ptr [r15 + 40], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	xorps	xmm2, xmm2
	jmp	.label_376
.label_379:
	mov	eax, OFFSET FLAT:default_tuning
.label_376:
	mulss	xmm2, xmm0
	ucomiss	xmm2, xmm1
	jbe	.label_361
	mulss	xmm0, dword ptr [rax + 4]
	cmp	byte ptr [rax + 0x10], 0
	jne	.label_360
	mulss	xmm0, dword ptr [rax + 8]
.label_360:
	movss	xmm1, dword ptr [rip + label_54]
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
	jne	.label_361
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_372
	nop	word ptr cs:[rax + rax]
.label_377:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_377
.label_372:
	mov	qword ptr [r15 + 0x48], 0
.label_361:
	mov	r12, r14
.label_359:
	mov	rax, r12
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_364:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x405113
	.globl sub_405113
	.type sub_405113, @function
sub_405113:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405120
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_356]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_357]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_358]
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
	#Procedure 0x40518f
	.globl sub_40518f
	.type sub_40518f, @function
sub_40518f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x405190

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
	je	.label_380
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
.label_380:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4051fc
	.globl sub_4051fc
	.type sub_4051fc, @function
sub_4051fc:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405200

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
	je	.label_387
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 0x18], r14
	xor	ebp, ebp
	nop	dword ptr [rax + rax]
.label_381:
	mov	rdi, r15
	mov	rsi, r12
	mov	rdx, rbx
	call	strncmp
	test	eax, eax
	jne	.label_382
	mov	rdi, r15
	call	strlen
	cmp	rax, rbx
	je	.label_384
	cmp	qword ptr [rsp + 8], -1
	je	.label_386
	mov	rax, qword ptr [rsp + 0x18]
	test	rax, rax
	je	.label_385
	mov	rdi, qword ptr [rsp + 8]
	imul	rdi, r13
	add	rdi, rax
	mov	rsi, r14
	mov	rdx, r13
	call	memcmp
	test	eax, eax
	je	.label_382
.label_385:
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_382
.label_386:
	mov	qword ptr [rsp + 8], rbp
	nop	word ptr [rax + rax]
.label_382:
	mov	rax, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rax + rbp*8 + 8]
	inc	rbp
	add	r14, r13
	test	r15, r15
	jne	.label_381
	jmp	.label_383
.label_387:
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
.label_383:
	mov	rax, qword ptr [rsp + 0x10]
	test	al, 1
	mov	rbp, -2
	cmove	rbp, qword ptr [rsp + 8]
.label_384:
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
	.align	32
	#Procedure 0x4052fd
	.globl sub_4052fd
	.type sub_4052fd, @function
sub_4052fd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405300
	.globl hash_print_statistics
	.type hash_print_statistics, @function
hash_print_statistics:

	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r15, rsi
	mov	rcx, qword ptr [rdi + 0x20]
	mov	r12, qword ptr [rdi + 0x10]
	mov	r14, qword ptr [rdi + 0x18]
	mov	rax, qword ptr [rdi]
	mov	rdi, qword ptr [rdi + 8]
	xor	ebx, ebx
	cmp	rax, rdi
	jae	.label_388
	mov	rdx, rax
	not	rdx
	add	rdi, rdx
	shr	rdi, 4
	lea	rsi, [rdi + 1]
	mov	r8d, esi
	and	r8d, 1
	xor	ebx, ebx
	test	rdi, rdi
	je	.label_391
	sub	rsi, r8
	xor	ebx, ebx
	nop	dword ptr [rax]
.label_401:
	cmp	qword ptr [rax], 0
	je	.label_397
	xor	edi, edi
	mov	rdx, rax
	nop	dword ptr [rax + rax]
.label_400:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_400
	cmp	rdi, rbx
	cmova	rbx, rdi
.label_397:
	cmp	qword ptr [rax + 0x10], 0
	je	.label_398
	lea	rdx, [rax + 0x10]
	xor	edi, edi
.label_402:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_402
	cmp	rdi, rbx
	cmova	rbx, rdi
.label_398:
	add	rax, 0x20
	add	rsi, -2
	jne	.label_401
.label_391:
	test	r8, r8
	je	.label_388
	cmp	qword ptr [rax], 0
	je	.label_388
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_389:
	mov	rax, qword ptr [rax + 8]
	inc	rdx
	test	rax, rax
	jne	.label_389
	cmp	rdx, rbx
	cmova	rbx, rdx
.label_388:
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_390
	xor	eax, eax
	mov	rdi, r15
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_399
	xor	eax, eax
	mov	rdi, r15
	mov	rcx, r12
	call	__fprintf_chk
	movq	xmm1, r14
	movdqa	xmm2, xmmword ptr [rip + label_393]
	punpckldq	xmm1, xmm2
	movapd	xmm3, xmmword ptr [rip + label_394]
	subpd	xmm1, xmm3
	pshufd	xmm0, xmm1, 0x4e
	addpd	xmm0, xmm1
	mulsd	xmm0, qword ptr [rip + label_395]
	movq	xmm1, r12
	punpckldq	xmm1, xmm2
	subpd	xmm1, xmm3
	pshufd	xmm2, xmm1, 0x4e
	addpd	xmm2, xmm1
	divsd	xmm0, xmm2
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_396
	mov	al, 1
	mov	rdi, r15
	mov	rcx, r14
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_392
	xor	eax, eax
	mov	rdi, r15
	mov	rcx, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
	.section	.text
	.align	32
	#Procedure 0x40546f
	.globl sub_40546f
	.type sub_40546f, @function
sub_40546f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x405470

	.globl fremote
	.type fremote, @function
fremote:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x78
	mov	r14, rsi
	lea	rsi, [rsp]
	call	fstatfs
	test	eax, eax
	je	.label_421
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	bl, 1
	cmp	ebp, 0x26
	je	.label_423
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_425
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, r15
	call	error
	jmp	.label_423
.label_421:
	mov	cl, 2
	mov	rax, qword ptr [rsp]
	cmp	rax, 0x2fc12fc0
	jg	.label_431
	cmp	rax, 0xadfe
	jle	.label_432
	cmp	rax, 0x13111a7
	jg	.label_434
	cmp	rax, 0x1021993
	jg	.label_436
	cmp	rax, 0x11953
	jle	.label_438
	cmp	rax, 0x414a52
	jle	.label_439
	cmp	rax, 0x414a53
	je	.label_403
	cmp	rax, 0xc0ffee
	je	.label_403
	cmp	rax, 0xc36400
	je	.label_409
	jmp	.label_404
.label_431:
	cmp	rax, 0x65735542
	jle	.label_443
	mov	edx, 0x858458f5
	cmp	rax, rdx
	jle	.label_444
	mov	edx, 0xc97e8167
	cmp	rax, rdx
	jg	.label_445
	mov	edx, 0xaad7aae9
	cmp	rax, rdx
	jg	.label_447
	mov	edx, 0x958458f5
	cmp	rax, rdx
	jg	.label_449
	mov	edx, 0x858458f6
	cmp	rax, rdx
	je	.label_403
	mov	edx, 0x9123683e
	jmp	.label_410
.label_432:
	cmp	rax, 0x482a
	jg	.label_451
	cmp	rax, 0x2467
	jg	.label_453
	cmp	rax, 0x1372
	jle	.label_455
	lea	rdx, [rax - 0x1373]
	cmp	rdx, 0x1c
	ja	.label_457
	mov	esi, 0x10001401
	bt	rsi, rdx
	jb	.label_403
.label_457:
	cmp	rax, 0x1cd1
	je	.label_403
	jmp	.label_404
.label_443:
	cmp	rax, 0x541900ff
	jg	.label_460
	cmp	rax, 0x47504652
	jle	.label_461
	cmp	rax, 0x5346414e
	jg	.label_406
	cmp	rax, 0x52654972
	jg	.label_407
	cmp	rax, 0x47504653
	je	.label_409
	cmp	rax, 0x50495045
	je	.label_409
	jmp	.label_404
.label_444:
	cmp	rax, 0x73636672
	jle	.label_413
	cmp	rax, 0x7461636e
	jg	.label_415
	cmp	rax, 0x73727278
	jg	.label_417
	cmp	rax, 0x73636673
	je	.label_403
	cmp	rax, 0x73717368
	je	.label_403
	jmp	.label_404
.label_451:
	cmp	rax, 0x6968
	jle	.label_419
	cmp	rax, 0x965f
	jg	.label_422
	cmp	rax, 0x6969
	je	.label_409
	cmp	rax, 0x7275
	je	.label_403
	cmp	rax, 0x72b6
	je	.label_403
	jmp	.label_404
.label_460:
	cmp	rax, 0x6165676b
	jle	.label_428
	cmp	rax, 0x62656571
	jg	.label_430
	cmp	rax, 0x62646575
	jg	.label_414
	cmp	rax, 0x6165676c
	je	.label_403
	cmp	rax, 0x61756673
	je	.label_409
	jmp	.label_404
.label_434:
	cmp	rax, 0x15013345
	jg	.label_437
	cmp	rax, 0xbad1de9
	jle	.label_418
	cmp	rax, 0x11307853
	jg	.label_426
	cmp	rax, 0xbad1dea
	je	.label_403
	cmp	rax, 0xbd00bd0
	je	.label_409
	jmp	.label_404
.label_436:
	cmp	rax, 0x12fd16c
	jg	.label_442
	cmp	rax, 0x1021994
	je	.label_403
	cmp	rax, 0x1021997
	je	.label_403
	cmp	rax, 0x1161970
	je	.label_409
	jmp	.label_404
.label_445:
	mov	edx, 0xf97cff8b
	cmp	rax, rdx
	jg	.label_448
	mov	edx, 0xde5e81e3
	cmp	rax, rdx
	jg	.label_450
	mov	edx, 0xc97e8168
	cmp	rax, rdx
	je	.label_403
	mov	edx, 0xcafe4a11
	jmp	.label_410
.label_453:
	cmp	rax, 0x3fff
	jle	.label_452
	lea	rdx, [rax - 0x4000]
	cmp	rdx, 6
	ja	.label_454
	mov	esi, 0x51
	bt	rsi, rdx
	jb	.label_403
.label_454:
	cmp	rax, 0x4244
	je	.label_403
	jmp	.label_404
.label_461:
	cmp	rax, 0x42494e4c
	jle	.label_458
	cmp	rax, 0x453dcd27
	jg	.label_459
	cmp	rax, 0x42494e4d
	je	.label_403
	cmp	rax, 0x43415d53
	je	.label_403
	jmp	.label_404
.label_413:
	cmp	rax, 0x68191121
	jle	.label_408
	cmp	rax, 0x6e667363
	jg	.label_411
	cmp	rax, 0x68191122
	je	.label_403
	cmp	rax, 0x6b414653
	je	.label_409
	jmp	.label_404
.label_419:
	cmp	rax, 0x4d59
	jle	.label_416
	cmp	rax, 0x564b
	jg	.label_412
	cmp	rax, 0x4d5a
	je	.label_403
	cmp	rax, 0x517b
	je	.label_409
	jmp	.label_404
.label_428:
	cmp	rax, 0x58465341
	jle	.label_420
	cmp	rax, 0x5dca2df4
	jg	.label_424
	cmp	rax, 0x58465342
	je	.label_403
	cmp	rax, 0x5a3c69f0
	je	.label_403
	jmp	.label_404
.label_437:
	cmp	rax, 0x1badfacd
	jle	.label_427
	cmp	rax, 0x28cd3d44
	jg	.label_429
	cmp	rax, 0x1badface
	je	.label_403
	cmp	rax, 0x24051905
	je	.label_403
	jmp	.label_404
.label_438:
	cmp	rax, 0xef52
	jg	.label_435
	cmp	rax, 0xadff
	je	.label_403
	cmp	rax, 0xef51
	je	.label_403
	jmp	.label_404
.label_447:
	mov	edx, 0xbacbacbb
	cmp	rax, rdx
	jg	.label_440
	mov	edx, 0xaad7aaea
	cmp	rax, rdx
	je	.label_409
	mov	edx, 0xabba1974
	jmp	.label_410
.label_406:
	cmp	rax, 0x5346544d
	jg	.label_441
	cmp	rax, 0x5346414f
	je	.label_409
	cmp	rax, 0x53464846
	je	.label_403
	jmp	.label_404
.label_415:
	cmp	rax, 0x794c762f
	jg	.label_446
	cmp	rax, 0x7461636f
	je	.label_409
	cmp	rax, 0x74726163
	je	.label_403
	jmp	.label_404
.label_422:
	lea	rdx, [rax - 0x9fa0]
	cmp	rdx, 3
	jb	.label_403
	cmp	rax, 0x9660
	je	.label_403
	cmp	rax, 0xadf5
	je	.label_403
	jmp	.label_404
.label_430:
	cmp	rax, 0x6462671f
	jg	.label_456
	cmp	rax, 0x62656572
	je	.label_403
	cmp	rax, 0x63677270
	je	.label_403
	jmp	.label_404
.label_442:
	lea	rdx, [rax - 0x12ff7b4]
	cmp	rdx, 4
	jb	.label_403
	cmp	rax, 0x12fd16d
	je	.label_403
	jmp	.label_404
.label_448:
	mov	edx, 0xfe534d41
	cmp	rax, rdx
	jg	.label_405
	mov	edx, 0xf97cff8c
	cmp	rax, rdx
	je	.label_403
	mov	edx, 0xf995e849
	jmp	.label_410
.label_455:
	cmp	rax, 0x2f
	je	.label_403
	cmp	rax, 0x187
	je	.label_403
	cmp	rax, 0x7c0
	je	.label_403
	jmp	.label_404
.label_418:
	cmp	rax, 0x13111a8
	je	.label_409
	cmp	rax, 0x7655821
	je	.label_403
	cmp	rax, 0x9041934
	je	.label_403
	jmp	.label_404
.label_452:
	cmp	rax, 0x2468
	je	.label_403
	cmp	rax, 0x2478
	je	.label_403
	cmp	rax, 0x3434
	je	.label_403
	jmp	.label_404
.label_458:
	cmp	rax, 0x2fc12fc1
	je	.label_403
	cmp	rax, 0x3153464a
	je	.label_403
	cmp	rax, 0x42465331
	je	.label_403
	jmp	.label_404
.label_408:
	cmp	rax, 0x65735543
	je	.label_409
	cmp	rax, 0x65735546
	je	.label_409
	cmp	rax, 0x67596969
	je	.label_403
	jmp	.label_404
.label_416:
	cmp	rax, 0x482b
	je	.label_403
	cmp	rax, 0x4858
	je	.label_403
	cmp	rax, 0x4d44
	je	.label_403
	jmp	.label_404
.label_420:
	cmp	rax, 0x54190100
	je	.label_403
	cmp	rax, 0x565a4653
	je	.label_403
	cmp	rax, 0x58295829
	je	.label_403
	jmp	.label_404
.label_427:
	cmp	rax, 0x15013346
	je	.label_403
	cmp	rax, 0x19800202
	je	.label_403
	cmp	rax, 0x19830326
	je	.label_409
	jmp	.label_404
.label_439:
	cmp	rax, 0x11954
	je	.label_403
	cmp	rax, 0x27e0eb
	je	.label_403
	jmp	.label_404
.label_449:
	mov	edx, 0x958458f6
	cmp	rax, rdx
	je	.label_403
	mov	ecx, 0xa501fcf5
	jmp	.label_433
.label_407:
	cmp	rax, 0x52654973
	je	.label_403
	cmp	rax, 0x5346314d
	je	.label_403
	jmp	.label_404
.label_417:
	cmp	rax, 0x73727279
	je	.label_403
	cmp	rax, 0x73757245
	je	.label_409
	jmp	.label_404
.label_414:
	cmp	rax, 0x62646576
	je	.label_403
	cmp	rax, 0x62656570
	je	.label_403
	jmp	.label_404
.label_426:
	cmp	rax, 0x11307854
	je	.label_403
	cmp	rax, 0x13661366
	je	.label_403
	jmp	.label_404
.label_450:
	mov	edx, 0xde5e81e4
	cmp	rax, rdx
	je	.label_403
	mov	edx, 0xf2f52010
.label_410:
	cmp	rax, rdx
	je	.label_403
	jmp	.label_404
.label_459:
	cmp	rax, 0x453dcd28
	je	.label_403
	cmp	rax, 0x45584653
	je	.label_403
	jmp	.label_404
.label_411:
	cmp	rax, 0x6e667364
	je	.label_409
	cmp	rax, 0x6e736673
	je	.label_403
	jmp	.label_404
.label_412:
	cmp	rax, 0x564c
	je	.label_409
	cmp	rax, 0x5df5
	je	.label_403
	jmp	.label_404
.label_424:
	cmp	rax, 0x5dca2df5
	je	.label_403
	cmp	rax, 0x61636673
	je	.label_409
	jmp	.label_404
.label_429:
	cmp	rax, 0x28cd3d45
	je	.label_403
	cmp	rax, 0x2bad1dea
	je	.label_403
	jmp	.label_404
.label_435:
	cmp	rax, 0xef53
	je	.label_403
	cmp	rax, 0xf15f
	je	.label_403
	jmp	.label_404
.label_440:
	mov	ecx, 0xbacbacbc
	cmp	rax, rcx
	je	.label_409
	mov	ecx, 0xbeefdead
	jmp	.label_433
.label_441:
	cmp	rax, 0x5346544e
	je	.label_403
	cmp	rax, 0x534f434b
	je	.label_403
	jmp	.label_404
.label_446:
	cmp	rax, 0x794c7630
	je	.label_409
	cmp	rax, 0x7c7c6673
	je	.label_409
	jmp	.label_404
.label_456:
	cmp	rax, 0x64626720
	je	.label_403
	cmp	rax, 0x64646178
	je	.label_403
	jmp	.label_404
.label_405:
	mov	ecx, 0xfe534d42
	cmp	rax, rcx
	je	.label_409
	mov	ecx, 0xff534d42
.label_433:
	cmp	rax, rcx
	jne	.label_404
.label_409:
	mov	cl, 1
.label_403:
	and	cl, 7
	mov	bl, 3
	shr	bl, cl
	and	bl, 1
.label_423:
	mov	eax, ebx
	add	rsp, 0x78
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_404:
	xor	ecx, ecx
	jmp	.label_403
	.section	.text
	.align	32
	#Procedure 0x405d52
	.globl sub_405d52
	.type sub_405d52, @function
sub_405d52:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405d60
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
	#Procedure 0x405d73
	.globl sub_405d73
	.type sub_405d73, @function
sub_405d73:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405d80

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_356]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_357]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_358]
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
	#Procedure 0x405dd5
	.globl sub_405dd5
	.type sub_405dd5, @function
sub_405dd5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405de0

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x2168
	mov	r13, rsi
	mov	r14d, edi
	mov	qword ptr [rsp + 0x78], 0xa
	mov	rdi, qword ptr [r13]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_257
	call	setlocale
	mov	edi, OFFSET FLAT:label_691
	mov	esi, OFFSET FLAT:label_734
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_691
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	byte ptr [rip + have_read_stdin],  0
	mov	byte ptr [rip + count_lines],  1
	mov	byte ptr [rip + print_headers],  0
	mov	byte ptr [rip + from_start],  0
	mov	byte ptr [rip + forever],  0
	mov	byte ptr [rip + line_end],  1
	cmp	r14d, 2
	je	.label_738
	cmp	r14d, 3
	jne	.label_743
	mov	rax, qword ptr [r13 + 0x10]
	cmp	byte ptr [rax], 0x2d
	jne	.label_738
	mov	cl, byte ptr [rax + 1]
	test	cl, cl
	jne	.label_746
	jmp	.label_738
.label_743:
	lea	eax, [r14 - 3]
	cmp	eax, 1
	ja	.label_489
	mov	rax, qword ptr [r13 + 0x10]
	cmp	byte ptr [rax], 0x2d
	jne	.label_507
	mov	cl, byte ptr [rax + 1]
.label_746:
	cmp	cl, 0x2d
	jne	.label_507
	cmp	byte ptr [rax + 2], 0
	je	.label_738
	xor	ebx, ebx
	jmp	.label_558
.label_738:
	call	posix2_version
	mov	rcx, qword ptr [r13 + 8]
	lea	rdi, [rcx + 1]
	movsx	edx, byte ptr [rcx]
	cmp	edx, 0x2d
	je	.label_753
	cmp	edx, 0x2b
	jne	.label_489
	add	eax, 0xfffcf250
	mov	bl, 1
	cmp	eax, 0x2b8
	ja	.label_730
	xor	ebx, ebx
	jmp	.label_558
.label_489:
	xor	ebx, ebx
	jmp	.label_558
.label_753:
	cmp	eax, 0x30db0
	jge	.label_539
	xor	ebx, ebx
	jmp	.label_730
.label_507:
	xor	ebx, ebx
	jmp	.label_558
.label_539:
	xor	eax, eax
	cmp	byte ptr [rdi], 0x63
	sete	al
	xor	ebx, ebx
	cmp	byte ptr [rdi + rax], 0
	je	.label_558
.label_730:
	xor	eax, eax
	nop	dword ptr [rax + rax]
.label_766:
	movzx	edx, byte ptr [rcx + rax + 1]
	movsx	esi, dl
	lea	ebp, [rsi - 0x30]
	inc	rax
	cmp	ebp, 0xa
	jb	.label_766
	mov	r15b, 1
	mov	r8d, 0xa
	cmp	esi, 0x6c
	je	.label_768
	cmp	esi, 0x63
	je	.label_769
	cmp	esi, 0x62
	jne	.label_770
	mov	r8d, 0x1400
.label_769:
	xor	r15d, r15d
.label_768:
	lea	rsi, [rcx + rax + 1]
	mov	dl, byte ptr [rcx + rax + 1]
	jmp	.label_772
.label_770:
	add	rcx, rax
	mov	rsi, rcx
.label_772:
	lea	rcx, [rsi + 1]
	cmp	dl, 0x66
	sete	r12b
	cmovne	rcx, rsi
	cmp	byte ptr [rcx], 0
	je	.label_655
	xor	ebx, ebx
	jmp	.label_558
.label_655:
	cmp	rax, 1
	jne	.label_774
	mov	qword ptr [rsp + 0x78], r8
	jmp	.label_776
.label_774:
	lea	rcx, [rsp + 0x78]
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:label_777
	call	xstrtoumax
	test	eax, 0xfffffffd
	jne	.label_781
.label_776:
	mov	byte ptr [rip + from_start],  bl
	mov	byte ptr [rip + count_lines],  r15b
	mov	byte ptr [rip + forever],  r12b
	mov	bl, 1
.label_558:
	movzx	eax, bl
	sub	r14d, eax
	lea	r15, [r13 + rax*8]
	movsd	xmm0, qword ptr [rip + label_783]
	movsd	qword ptr [rsp + 0x98], xmm0
	xor	eax, eax
	jmp	.label_498
.label_789:
	mov	byte ptr [rip + reopen_inaccessible_files],  1
	mov	eax, r12d
	jmp	.label_498
.label_1097:
	mov	byte ptr [rip + forever],  1
	mov	dword ptr [rip + follow_mode],  1
	jmp	.label_789
	.section	.text
	.align	32
	#Procedure 0x405ff1
	.globl sub_405ff1
	.type sub_405ff1, @function
sub_405ff1:

	nop	word ptr cs:[rax + rax]
.label_498:
	mov	r12d, eax
	mov	edx, OFFSET FLAT:label_462
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	mov	edi, r14d
	mov	rsi, r15
	call	getopt_long
	mov	ebx, eax
	lea	ecx, [rbx + 0x83]
	cmp	ecx, 0x108
	ja	.label_470
	mov	eax, 2
	jmp	qword ptr [(rcx * 8) + label_474]
.label_1098:
	cmp	ebx, 0x6e
	sete	byte ptr [rip + count_lines]
	mov	rbp, qword ptr [rip + optarg]
	movzx	eax, byte ptr [rbp]
	cmp	al, 0x2d
	je	.label_475
	cmp	al, 0x2b
	jne	.label_481
	mov	byte ptr [rip + from_start],  1
	jmp	.label_481
.label_1099:
	mov	byte ptr [rip + forever],  1
	mov	rsi, qword ptr [rip + optarg]
	test	rsi, rsi
	je	.label_486
	mov	r9, qword ptr [rip + argmatch_die]
	mov	edi, OFFSET FLAT:label_492
	mov	edx, OFFSET FLAT:follow_mode_string
	mov	ecx, OFFSET FLAT:follow_mode_map
	mov	r8d, 4
	call	__xargmatch_internal
	mov	eax, dword ptr [(rax * 4) + follow_mode_map]
	mov	dword ptr [rip + follow_mode],  eax
	mov	eax, r12d
	jmp	.label_498
.label_1103:
	mov	rbx, qword ptr [rip + optarg]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_504
	mov	edx, 5
	call	dcgettext
	xor	esi, esi
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_257
	xor	r9d, r9d
	mov	rdi, rbx
	mov	r8, rax
	call	xdectoumax
	mov	qword ptr [rip + max_n_unchanged_stats_between_opens],  rax
	mov	eax, r12d
	jmp	.label_498
.label_1105:
	mov	byte ptr [rip + presume_input_pipe],  1
	mov	eax, r12d
	jmp	.label_498
.label_1100:
	mov	rdi, qword ptr [rip + optarg]
	xor	esi, esi
	mov	ecx, OFFSET FLAT:cl_strtod
	lea	rdx, [rsp + 0x160]
	call	xstrtod
	test	al, al
	je	.label_535
	movsd	xmm0, qword ptr [rsp + 0x160]
	movsd	qword ptr [rsp + 0x98], xmm0
	ucomisd	xmm0, qword ptr [label_534]
	jb	.label_535
	mov	eax, r12d
	jmp	.label_498
.label_1102:
	mov	byte ptr [rip + line_end],  0
	mov	eax, r12d
	jmp	.label_498
.label_1101:
	mov	eax, 1
	jmp	.label_498
.label_1104:
	mov	rbx, qword ptr [rip + optarg]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_551
	mov	edx, 5
	call	dcgettext
	xor	esi, esi
	mov	edx, 0x7fffffff
	mov	ecx, OFFSET FLAT:label_257
	xor	r9d, r9d
	mov	rdi, rbx
	mov	r8, rax
	call	xdectoumax
	mov	dword ptr [rip + pid],  eax
	mov	eax, r12d
	jmp	.label_498
.label_1106:
	mov	byte ptr [rip + disable_inotify],  1
	mov	eax, r12d
	jmp	.label_498
.label_486:
	mov	dword ptr [rip + follow_mode],  2
	mov	eax, r12d
	jmp	.label_498
.label_475:
	inc	rbp
	mov	qword ptr [rip + optarg],  rbp
.label_481:
	xor	edi, edi
	cmp	ebx, 0x6e
	jne	.label_562
	mov	esi, OFFSET FLAT:label_563
	jmp	.label_564
.label_562:
	mov	esi, OFFSET FLAT:label_566
.label_564:
	mov	edx, 5
	call	dcgettext
	xor	esi, esi
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_569
	xor	r9d, r9d
	mov	rdi, rbp
	mov	r8, rax
	call	xdectoumax
	mov	qword ptr [rsp + 0x78], rax
	mov	eax, r12d
	jmp	.label_498
.label_1095:
	cmp	byte ptr [rip + reopen_inaccessible_files],  1
	jne	.label_580
	cmp	byte ptr [rip + forever],  0
	je	.label_579
	cmp	dword ptr [rip + follow_mode],  2
	jne	.label_580
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_582
	jmp	.label_583
.label_579:
	mov	byte ptr [rip + reopen_inaccessible_files],  0
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_585
.label_583:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_580:
	mov	edi, dword ptr [rip + pid]
	test	edi, edi
	je	.label_592
	mov	al, byte ptr [rip + forever]
	test	al, al
	jne	.label_592
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_599
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	jmp	.label_600
.label_592:
	test	edi, edi
	je	.label_600
	xor	esi, esi
	call	kill
	test	eax, eax
	je	.label_600
	call	__errno_location
	cmp	dword ptr [rax], 0x26
	jne	.label_600
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_607
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	dword ptr [rip + pid],  0
.label_600:
	mov	r8b, byte ptr [rip + from_start]
	mov	r9, qword ptr [rsp + 0x78]
	test	r8b, r8b
	je	.label_613
	test	r9, r9
	je	.label_613
	dec	r9
	mov	qword ptr [rsp + 0x78], r9
.label_613:
	movsxd	rax, dword ptr [rip + optind]
	mov	r13d, OFFSET FLAT:main.dummy_stdin
	mov	ecx, 1
	cmp	r14d, eax
	jle	.label_619
	sub	r14d, eax
	lea	r13, [r15 + rax*8]
	je	.label_608
	movsxd	rcx, r14d
.label_619:
	mov	r10d, ecx
	and	r10d, 1
	xor	esi, esi
	cmp	rcx, 1
	mov	qword ptr [rsp + 0x20], rcx
	jne	.label_624
	xor	ecx, ecx
	jmp	.label_631
.label_624:
	mov	rbp, rcx
	sub	rbp, r10
	xor	esi, esi
	xor	edi, edi
	nop	word ptr cs:[rax + rax]
.label_639:
	mov	rax, qword ptr [r13 + rsi*8]
	movzx	edx, byte ptr [rax]
	mov	ecx, 0x2d
	sub	ecx, edx
	jne	.label_632
	movzx	ecx, byte ptr [rax + 1]
	neg	ecx
.label_632:
	mov	rdx, qword ptr [r13 + rsi*8 + 8]
	movzx	ebx, byte ptr [rdx]
	mov	eax, 0x2d
	sub	eax, ebx
	jne	.label_621
	movzx	eax, byte ptr [rdx + 1]
	neg	eax
.label_621:
	test	ecx, ecx
	mov	cl, 1
	mov	dl, 1
	je	.label_636
	mov	edx, edi
.label_636:
	test	eax, eax
	je	.label_638
	mov	cl, dl
.label_638:
	add	rsi, 2
	cmp	rbp, rsi
	mov	dil, cl
	jne	.label_639
.label_631:
	test	r10, r10
	je	.label_641
	mov	rdx, qword ptr [r13 + rsi*8]
	movzx	esi, byte ptr [rdx]
	mov	eax, 0x2d
	sub	eax, esi
	jne	.label_643
	movzx	eax, byte ptr [rdx + 1]
	neg	eax
.label_643:
	test	eax, eax
	mov	al, 1
	je	.label_645
	mov	eax, ecx
.label_645:
	mov	cl, al
.label_641:
	and	cl, 1
	mov	esi, dword ptr [rip + follow_mode]
	je	.label_647
	cmp	esi, 1
	je	.label_755
.label_647:
	mov	dl, byte ptr [rip + forever]
	test	cl, cl
	sete	al
	xor	ecx, ecx
	test	dl, dl
	je	.label_651
	test	al, al
	jne	.label_651
	cmp	qword ptr [rsp + 0x20], 1
	jne	.label_656
	mov	eax, dword ptr [rip + pid]
	test	eax, eax
	jne	.label_656
	cmp	esi, 2
	jne	.label_656
	lea	rdx, [rsp + 0x160]
	mov	edi, 1
	xor	esi, esi
	call	__fxstat
	test	eax, eax
	jne	.label_656
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x178]
	cmp	eax, 0x8000
	jne	.label_661
.label_656:
	xor	edi, edi
	call	isatty
	test	eax, eax
	je	.label_661
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_664
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_661:
	mov	r9, qword ptr [rsp + 0x78]
	mov	dl, byte ptr [rip + forever]
	xor	ecx, ecx
	mov	r8b, byte ptr [rip + from_start]
	jmp	.label_651
.label_608:
	mov	cl, 1
	mov	dl, byte ptr [rip + forever]
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
.label_651:
	test	r9, r9
	jne	.label_671
	xor	eax, eax
	or	r8b, dl
	je	.label_497
.label_671:
	mov	dword ptr [rsp + 0x74], ecx
	movabs	rax, 0x155555555555556
	mov	rcx, qword ptr [rsp + 0x20]
	cmp	rcx, rax
	jae	.label_672
	mov	rax, rcx
	shl	rax, 5
	lea	rdi, [rax + rax*2]
	call	xmalloc
	mov	r14, rax
	mov	rbp, r14
	mov	ebx, dword ptr [rsp + 0x74]
	test	bl, bl
	jne	.label_684
	mov	rax, qword ptr [rsp + 0x20]
	lea	rdx, [rax - 1]
	and	eax, 3
	xor	ecx, ecx
	cmp	rdx, 3
	jb	.label_688
	mov	rdx, qword ptr [rsp + 0x20]
	sub	rdx, rax
	xor	ecx, ecx
	mov	rsi, r14
	nop	word ptr cs:[rax + rax]
.label_696:
	mov	rdi, qword ptr [r13 + rcx*8]
	mov	qword ptr [rsi], rdi
	mov	rdi, qword ptr [r13 + rcx*8 + 8]
	mov	qword ptr [rsi + 0x60], rdi
	mov	rdi, qword ptr [r13 + rcx*8 + 0x10]
	mov	qword ptr [rsi + 0xc0], rdi
	mov	rdi, qword ptr [r13 + rcx*8 + 0x18]
	mov	qword ptr [rsi + 0x120], rdi
	add	rcx, 4
	add	rsi, 0x180
	cmp	rdx, rcx
	jne	.label_696
.label_688:
	test	rax, rax
	je	.label_684
	lea	rdx, [rcx + rcx*2]
	shl	rdx, 5
	add	rdx, rbp
	lea	rcx, [r13 + rcx*8]
	neg	rax
	nop	word ptr cs:[rax + rax]
.label_709:
	mov	rsi, qword ptr [rcx]
	mov	qword ptr [rdx], rsi
	add	rdx, 0x60
	add	rcx, 8
	inc	rax
	jne	.label_709
.label_684:
	cmp	r12d, 1
	je	.label_712
	test	r12d, r12d
	jne	.label_544
	cmp	qword ptr [rsp + 0x20], 2
	jb	.label_544
.label_712:
	mov	byte ptr [rip + print_headers],  1
.label_544:
	mov	al, 1
	test	bl, bl
	mov	r12, qword ptr [rsp + 0x20]
	mov	qword ptr [rsp + 0x38], rbp
	mov	qword ptr [rsp + 0x30], r14
	jne	.label_715
	mov	al, 1
	xor	r15d, r15d
	mov	qword ptr [rsp + 0x20], r12
	jmp	.label_719
.label_495:
	xor	ebp, ebp
.label_660:
	mov	rcx, qword ptr [rsp + 0x68]
	add	rax, rcx
	mov	r13, rax
.label_760:
	lea	rax, [rbp - 1]
	mov	qword ptr [rsp + 0x18], rax
	mov	r14, qword ptr [rsp + 0x50]
	sub	r14, rbp
	mov	qword ptr [rsp + 0x68], rcx
	sub	r14, rcx
	mov	qword ptr [rsp + 0x28], rbp
.label_745:
	test	rbp, rbp
	je	.label_728
	movzx	eax, byte ptr [rip + line_end]
	test	al, al
	mov	esi, 0
	mov	eax, 0xa
	cmovne	esi, eax
	lea	rbx, [rsp + 0x160]
	mov	rdi, rbx
	mov	rdx, rbp
	call	memrchr
	mov	ecx, 5
	test	rax, rax
	je	.label_625
	mov	rbp, rax
	sub	rbp, rbx
	xor	ecx, ecx
	mov	rdx, qword ptr [rsp + 0x10]
	test	rdx, rdx
	lea	rdx, [rdx - 1]
	mov	qword ptr [rsp + 0x10], rdx
	jne	.label_625
	mov	rsi, qword ptr [rsp + 0x18]
	sub	rsi, rbp
	je	.label_739
	inc	rax
	mov	rdi, rax
	call	xwrite_stdout
.label_739:
	xor	edi, edi
	mov	rsi, qword ptr [rsp + 0x58]
	mov	edx, dword ptr [rsp]
	mov	rcx, r14
	call	dump_remainder
	add	r13, rax
	mov	ecx, 1
.label_625:
	mov	eax, ecx
	and	al, 7
	je	.label_745
	cmp	al, 5
	jne	.label_763
.label_728:
	lea	rbp, [rsp + 0x160]
	mov	r14, qword ptr [rsp + 0x68]
	cmp	r14, qword ptr [rsp + 0x88]
	mov	edi, dword ptr [rsp]
	mov	rbx, qword ptr [rsp + 0x58]
	je	.label_767
	mov	qword ptr [rsp + 0x28], r13
	add	r14, -0x2000
	xor	edx, edx
	mov	rsi, r14
	mov	r13d, edi
	mov	rcx, rbx
	call	xlseek
	mov	edx, 0x2000
	mov	edi, r13d
	mov	rsi, rbp
	call	safe_read
	mov	rbp, rax
	cmp	rbp, -1
	je	.label_511
	mov	r13, rbp
	add	r13, r14
	mov	rcx, r14
	jmp	.label_528
.label_763:
	test	ecx, ecx
	mov	rcx, qword ptr [rsp + 0x68]
	mov	rbp, qword ptr [rsp + 0x28]
	jne	.label_642
.label_528:
	test	rbp, rbp
	jne	.label_760
	jmp	.label_642
.label_767:
	xor	edx, edx
	mov	rbp, qword ptr [rsp + 0x88]
	mov	rsi, rbp
	mov	r14d, edi
	mov	rcx, rbx
	call	xlseek
	xor	edi, edi
	mov	rsi, rbx
	mov	edx, r14d
	mov	rcx, qword ptr [rsp + 0x50]
	call	dump_remainder
	mov	r13, rax
	add	r13, rbp
	jmp	.label_642
.label_511:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_253
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbp
	call	error
	mov	r13, qword ptr [rsp + 0x28]
.label_575:
	xor	r15d, r15d
	jmp	.label_642
.label_719:
	mov	byte ptr [rsp + 0xf], al
	mov	rax, qword ptr [rsp + 0x78]
	mov	qword ptr [rsp + 0x10], rax
	lea	rbp, [r15 + r15*2]
	shl	rbp, 5
	mov	rdi, qword ptr [r14 + rbp]
	cmp	byte ptr [rdi], 0x2d
	jne	.label_778
	cmp	byte ptr [rdi + 1], 0
	je	.label_720
.label_778:
	mov	dword ptr [rsp + 0x80], 0
	xor	esi, esi
	xor	eax, eax
	call	open_safer
	mov	ecx, eax
.label_552:
	mov	rax, qword ptr [rsp + 0x38]
	lea	rax, [rax + rbp]
	mov	qword ptr [rsp + 0x48], rax
	mov	bl, byte ptr [rip + reopen_inaccessible_files]
	cmp	ecx, -1
	sete	al
	and	al, bl
	xor	al, 1
	cmp	ecx, -1
	mov	byte ptr [r14 + rbp + 0x36], al
	mov	qword ptr [rsp + 0x40], r15
	je	.label_784
	cmp	byte ptr [rip + print_headers],  1
	mov	dword ptr [rsp], ecx
	jne	.label_793
	mov	rax, qword ptr [rsp + 0x48]
	mov	rcx, qword ptr [rax]
	cmp	byte ptr [rcx], 0x2d
	jne	.label_468
	cmp	byte ptr [rcx + 1], 0
	jne	.label_468
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_182
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	nop	word ptr cs:[rax + rax]
.label_468:
	mov	al, byte ptr [rip + write_header.first_file]
	test	al, al
	mov	edx, OFFSET FLAT:label_257
	mov	eax, OFFSET FLAT:label_258
	cmovne	rdx, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_259
	xor	eax, eax
	call	__printf_chk
	mov	byte ptr [rip + write_header.first_file],  1
	mov	ecx, dword ptr [rsp]
.label_793:
	mov	rax, qword ptr [rsp + 0x48]
	mov	r14, qword ptr [rax]
	cmp	byte ptr [r14], 0x2d
	jne	.label_483
	cmp	byte ptr [r14 + 1], 0
	jne	.label_483
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_182
	mov	edx, 5
	call	dcgettext
	mov	ecx, dword ptr [rsp]
	mov	r14, rax
	nop	dword ptr [rax]
.label_483:
	cmp	byte ptr [rip + count_lines],  0
	mov	qword ptr [rsp + 0x60], rbp
	mov	edi, 1
	mov	esi, ecx
	lea	rdx, [rsp + 0xd0]
	je	.label_494
	call	__fxstat
	test	eax, eax
	jne	.label_501
	cmp	byte ptr [rip + from_start],  0
	je	.label_503
	mov	r13, r14
	cmp	qword ptr [rsp + 0x10], 0
	mov	r14d, 0
	je	.label_506
	xor	r14d, r14d
	jmp	.label_510
.label_784:
	cmp	byte ptr [rip + forever],  0
	je	.label_513
	mov	dword ptr [r14 + rbp + 0x38], 0xffffffff
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [r14 + rbp + 0x3c], ecx
	xor	bl, 1
	mov	byte ptr [r14 + rbp + 0x34], bl
	xorpd	xmm0, xmm0
	movupd	xmmword ptr [r14 + rbp + 0x20], xmm0
	jmp	.label_520
	.section	.text
	.align	32
	#Procedure 0x406917
	.globl sub_406917
	.type sub_406917, @function
sub_406917:

	nop	word ptr [rax + rax]
.label_494:
	call	__fxstat
	test	eax, eax
	je	.label_531
.label_501:
	call	__errno_location
	mov	r15d, dword ptr [rax]
	mov	rbx, r14
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_536
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, rbp
	call	error
	xor	r15d, r15d
	jmp	.label_550
.label_720:
	mov	byte ptr [rip + have_read_stdin],  1
	xor	ecx, ecx
	mov	al, 1
	mov	dword ptr [rsp + 0x80], eax
	jmp	.label_552
.label_513:
	call	__errno_location
.label_520:
	mov	r13d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_556
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rax, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rax]
	cmp	byte ptr [rsi], 0x2d
	jne	.label_557
	cmp	byte ptr [rsi + 1], 0
	jne	.label_557
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_182
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
.label_557:
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	r15d, r15d
	xor	edi, edi
	xor	eax, eax
	mov	esi, r13d
	mov	rdx, rbx
	call	error
	mov	r14, qword ptr [rsp + 0x30]
	mov	r12, qword ptr [rsp + 0x20]
	jmp	.label_567
.label_531:
	mov	cl, byte ptr [rip + presume_input_pipe]
	xor	cl, 1
	cmp	qword ptr [rsp + 0x10], 0
	setns	al
	and	al, cl
	cmp	byte ptr [rip + from_start],  0
	je	.label_570
	test	al, al
	je	.label_576
	mov	eax, dword ptr [rsp + 0xe8]
	mov	ecx, 0xf000
	and	eax, ecx
	cmp	eax, 0x8000
	jne	.label_577
	mov	edx, 1
	mov	edi, dword ptr [rsp]
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rcx, r14
	call	xlseek
	test	rax, rax
	jns	.label_587
.label_577:
	mov	edx, 1
	mov	edi, dword ptr [rsp]
	mov	rsi, qword ptr [rsp + 0x10]
	call	lseek
	cmp	rax, -1
	je	.label_576
.label_587:
	mov	rbx, qword ptr [rsp + 0x10]
	mov	rcx, -1
	mov	ebp, dword ptr [rsp]
	jmp	.label_594
	.section	.text
	.align	32
	#Procedure 0x406a86
	.globl sub_406a86
	.type sub_406a86, @function
sub_406a86:

	nop	word ptr cs:[rax + rax]
.label_617:
	mov	qword ptr [rsp + 0x10], rbp
.label_510:
	mov	edx, 0x2000
	mov	edi, dword ptr [rsp]
	lea	rsi, [rsp + 0x160]
	call	safe_read
	mov	r15b, 1
	test	rax, rax
	je	.label_550
	cmp	rax, -1
	mov	rbp, qword ptr [rsp + 0x10]
	je	.label_605
	lea	r15, [rsp + rax + 0x160]
	add	r14, rax
	mov	al, byte ptr [rip + line_end]
	test	al, al
	mov	ebx, 0
	mov	eax, 0xa
	cmovne	ebx, eax
	lea	rax, [rsp + 0x160]
	nop	dword ptr [rax]
.label_618:
	mov	rdx, r15
	sub	rdx, rax
	mov	rdi, rax
	mov	esi, ebx
	call	memchr
	test	rax, rax
	je	.label_617
	inc	rax
	dec	rbp
	jne	.label_618
	cmp	rax, r15
	jae	.label_506
	sub	r15, rax
	mov	rdi, rax
	mov	rsi, r15
	call	xwrite_stdout
.label_506:
	xor	edi, edi
	mov	rcx, -1
	mov	rsi, r13
	mov	edx, dword ptr [rsp]
	call	dump_remainder
	add	r14, rax
	jmp	.label_626
.label_503:
	mov	al, byte ptr [rip + presume_input_pipe]
	test	al, al
	mov	qword ptr [rsp + 0x58], r14
	jne	.label_628
	mov	eax, dword ptr [rsp + 0xe8]
	mov	ecx, 0xf000
	and	eax, ecx
	cmp	eax, 0x8000
	jne	.label_628
	xor	esi, esi
	mov	edx, 1
	mov	edi, dword ptr [rsp]
	call	lseek
	mov	rbp, rax
	cmp	rbp, -1
	je	.label_628
	xor	esi, esi
	mov	edx, 2
	mov	ebx, dword ptr [rsp]
	mov	edi, ebx
	call	lseek
	mov	r13, rax
	sub	rax, rbp
	jle	.label_637
	mov	r15b, 1
	test	r13, r13
	je	.label_640
	cmp	qword ptr [rsp + 0x10], 0
	je	.label_642
	mov	qword ptr [rsp + 0x88], rbp
	mov	rcx, rax
	sar	rcx, 0x3f
	shr	rcx, 0x33
	add	rcx, rax
	and	rcx, 0xffffffffffffe000
	sub	rax, rcx
	mov	ebx, 0x2000
	cmovne	rbx, rax
	mov	rsi, r13
	sub	rsi, rbx
	xor	edx, edx
	mov	ebp, dword ptr [rsp]
	mov	edi, ebp
	mov	qword ptr [rsp + 0x68], rsi
	mov	rcx, r14
	call	xlseek
	mov	edi, ebp
	lea	rsi, [rsp + 0x160]
	mov	rdx, rbx
	call	safe_read
	cmp	rax, -1
	je	.label_765
	test	rax, rax
	mov	qword ptr [rsp + 0x50], r13
	je	.label_495
	movsx	esi, byte ptr [rsp + rax + 0x15f]
	mov	cl, byte ptr [rip + line_end]
	test	cl, cl
	mov	ecx, 0
	mov	edx, 0xa
	cmovne	ecx, edx
	xor	edx, edx
	cmp	esi, ecx
	setne	dl
	sub	qword ptr [rsp + 0x10], rdx
	mov	rbp, rax
	jmp	.label_660
.label_576:
	mov	r13, r14
	mov	rcx, qword ptr [rsp + 0x10]
	test	rcx, rcx
	mov	r14d, 0
	je	.label_665
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_677:
	mov	rbx, rcx
	mov	edx, 0x2000
	mov	edi, dword ptr [rsp]
	lea	rsi, [rsp + 0x160]
	call	safe_read
	mov	r15b, 1
	test	rax, rax
	je	.label_550
	cmp	rax, -1
	je	.label_605
	add	r14, rax
	mov	rcx, rbx
	sub	rcx, rax
	jb	.label_674
	jne	.label_677
	jmp	.label_665
.label_570:
	mov	rbx, -1
	test	al, al
	mov	qword ptr [rsp + 0x58], r14
	je	.label_678
	movzx	eax, word ptr [rsp + 0xe8]
	or	eax, 0x2000
	and	eax, 0xf000
	cmp	eax, 0xa000
	jne	.label_682
	mov	r14, qword ptr [rsp + 0x100]
	jmp	.label_689
.label_678:
	mov	r14, -1
	jmp	.label_689
.label_674:
	sub	rax, rbx
	je	.label_665
	lea	rdi, [rsp + rbx + 0x160]
	mov	rsi, rax
	call	xwrite_stdout
.label_665:
	mov	rcx, -1
	mov	rbx, r14
	mov	ebp, dword ptr [rsp]
	mov	r14, r13
	jmp	.label_594
.label_682:
	mov	rbp, qword ptr [rsp + 0x10]
	mov	rsi, rbp
	neg	rsi
	mov	edx, 2
	mov	edi, dword ptr [rsp]
	call	lseek
	mov	rbx, rax
	lea	r14, [rbx + rbp]
	cmp	rbx, -1
	cmove	r14, rbx
.label_689:
	mov	rax, qword ptr [rsp + 0x108]
	movabs	rcx, 0x2000000000000001
	cmp	rax, rcx
	mov	ecx, 0x200
	cmovb	rcx, rax
	test	rax, rax
	mov	eax, 0x200
	cmovle	rcx, rax
	cmp	r14, rcx
	jle	.label_702
	cmp	rbx, -1
	jne	.label_509
	xor	esi, esi
	mov	edx, 1
	mov	edi, dword ptr [rsp]
	mov	rcx, qword ptr [rsp + 0x58]
	call	xlseek
	mov	rbx, rax
.label_509:
	mov	rax, r14
	sub	rax, rbx
	mov	ebp, dword ptr [rsp]
	jle	.label_714
	mov	r13, qword ptr [rsp + 0x10]
	cmp	rax, r13
	jbe	.label_716
	sub	r14, r13
	xor	edx, edx
	mov	edi, ebp
	mov	rsi, r14
	mov	r15, qword ptr [rsp + 0x58]
	mov	rcx, r15
	call	xlseek
	mov	ebp, dword ptr [rsp]
	mov	rbx, r14
	mov	r14, r15
	mov	rcx, r13
	jmp	.label_594
.label_702:
	mov	edi, 0x2010
	call	xmalloc
	mov	r15, rax
	xorpd	xmm0, xmm0
	movupd	xmmword ptr [r15 + 0x2000], xmm0
	mov	edi, 0x2010
	call	xmalloc
	xor	r13d, r13d
	xor	ecx, ecx
	mov	r14, r15
	jmp	.label_731
.label_605:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_253
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r13
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	jmp	.label_550
.label_637:
	xor	edx, edx
	mov	edi, ebx
	mov	rsi, rbp
	mov	rcx, r14
	call	xlseek
.label_628:
	mov	edi, 0x2018
	call	xmalloc
	mov	rbp, rax
	xorpd	xmm0, xmm0
	movupd	xmmword ptr [rbp + 0x2000], xmm0
	mov	qword ptr [rbp + 0x2010], 0
	mov	edi, 0x2018
	call	xmalloc
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x28], rcx
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x50], rbp
	jmp	.label_749
.label_716:
	mov	rcx, r13
	jmp	.label_750
.label_714:
	mov	rcx, qword ptr [rsp + 0x10]
.label_750:
	mov	r14, qword ptr [rsp + 0x58]
.label_594:
	xor	edi, edi
	mov	rsi, r14
	mov	edx, ebp
	call	dump_remainder
	mov	r14, rax
	add	r14, rbx
.label_626:
	mov	r15b, 1
	jmp	.label_550
.label_640:
	xor	r14d, r14d
	jmp	.label_550
.label_530:
	mov	rax, rdx
	mov	rdx, qword ptr [rdx + 0x2010]
	mov	qword ptr [rsp + 0x50], rdx
	nop	word ptr [rax + rax]
.label_749:
	mov	qword ptr [rsp + 0x18], rcx
	jmp	.label_758
	.section	.text
	.align	32
	#Procedure 0x406ee7
	.globl sub_406ee7
	.type sub_406ee7, @function
sub_406ee7:

	nop	word ptr [rax + rax]
.label_701:
	mov	edi, 0x2018
	call	xmalloc
.label_758:
	mov	rbx, rbp
	mov	rbp, rax
	lea	r14, [rbp + 0x2008]
	mov	edi, dword ptr [rsp]
	mov	qword ptr [rsp + 0x68], rbx
	jmp	.label_761
	.section	.text
	.align	32
	#Procedure 0x406f11
	.globl sub_406f11
	.type sub_406f11, @function
sub_406f11:

	nop	word ptr cs:[rax + rax]
.label_790:
	add	rdi, rbx
	mov	rsi, rbp
	mov	rdx, r15
	call	memcpy
	movdqu	xmm0, xmmword ptr [rbp + 0x2000]
	movdqu	xmm1, xmmword ptr [rbx + 0x2000]
	paddq	xmm1, xmm0
	movdqu	xmmword ptr [rbx + 0x2000], xmm1
	mov	edi, dword ptr [rsp]
.label_761:
	mov	edx, 0x2000
	mov	rsi, rbp
	call	safe_read
	mov	r15, rax
	lea	rax, [r15 + 1]
	cmp	rax, 2
	jb	.label_773
	mov	qword ptr [rbp + 0x2000], r15
	xorpd	xmm0, xmm0
	movupd	xmmword ptr [r14], xmm0
	mov	al, byte ptr [rip + line_end]
	test	al, al
	mov	r13d, 0
	mov	eax, 0xa
	cmovne	r13d, eax
	mov	rdi, rbp
	mov	esi, r13d
	mov	rdx, r15
	call	memchr
	test	rax, rax
	mov	r12d, 0
	je	.label_782
	lea	rbx, [rbp + r15]
	xor	r12d, r12d
	nop	word ptr cs:[rax + rax]
.label_788:
	inc	rax
	inc	r12
	mov	qword ptr [r14], r12
	mov	rdx, rbx
	sub	rdx, rax
	mov	rdi, rax
	mov	esi, r13d
	call	memchr
	test	rax, rax
	jne	.label_788
.label_782:
	add	qword ptr [rsp + 0x28], r15
	mov	rsi, qword ptr [rsp + 0x18]
	add	rsi, r12
	mov	rbx, qword ptr [rsp + 0x68]
	mov	rdi, qword ptr [rbx + 0x2000]
	mov	rax, r15
	add	rax, rdi
	cmp	rax, 0x1fff
	mov	qword ptr [rsp + 0x18], rsi
	jbe	.label_790
	mov	qword ptr [rbx + 0x2010], rbp
	mov	rcx, rsi
	mov	rdx, qword ptr [rsp + 0x50]
	sub	rcx, qword ptr [rdx + 0x2008]
	cmp	rcx, qword ptr [rsp + 0x10]
	jbe	.label_701
	jmp	.label_530
.label_773:
	mov	rdi, rbp
	call	free
	cmp	r15, -1
	je	.label_476
	cmp	qword ptr [rsp + 0x10], 0
	mov	r13b, 1
	mov	r12, qword ptr [rsp + 0x20]
	mov	r14, qword ptr [rsp + 0x28]
	je	.label_478
	mov	rax, qword ptr [rbx + 0x2000]
	test	rax, rax
	mov	rdi, qword ptr [rsp + 0x50]
	je	.label_578
	movsx	eax, byte ptr [rbx + rax - 1]
	mov	cl, byte ptr [rip + line_end]
	test	cl, cl
	mov	r15d, 0
	mov	ecx, 0xa
	cmovne	r15d, ecx
	cmp	eax, r15d
	jne	.label_487
	mov	rdx, qword ptr [rsp + 0x18]
	jmp	.label_673
.label_476:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_253
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x58]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	mov	r12, qword ptr [rsp + 0x20]
	jmp	.label_695
.label_487:
	inc	qword ptr [rbx + 0x2008]
	mov	rdx, qword ptr [rsp + 0x18]
	inc	rdx
.label_673:
	mov	rax, rdx
	sub	rax, qword ptr [rdi + 0x2008]
	mov	rcx, qword ptr [rsp + 0x10]
	cmp	rax, rcx
	mov	rbp, rdi
	jbe	.label_517
	mov	rbp, rdi
	nop	word ptr [rax + rax]
.label_527:
	mov	rdx, rax
	mov	rbp, qword ptr [rbp + 0x2010]
	sub	rax, qword ptr [rbp + 0x2008]
	cmp	rax, rcx
	ja	.label_527
.label_517:
	mov	r14, qword ptr [rbp + 0x2000]
	add	r14, rbp
	cmp	rdx, rcx
	mov	rax, rbp
	jbe	.label_532
	mov	rax, rbp
	je	.label_532
	sub	qword ptr [rsp + 0x10], rdx
	mov	rax, rbp
	nop	word ptr cs:[rax + rax]
.label_549:
	mov	rdx, r14
	sub	rdx, rax
	mov	rdi, rax
	mov	esi, r15d
	call	memchr
	test	rax, rax
	je	.label_548
	inc	rax
	inc	qword ptr [rsp + 0x10]
	jne	.label_549
.label_532:
	sub	r14, rax
	mov	rdi, rax
	mov	rsi, r14
	call	xwrite_stdout
	mov	rbx, qword ptr [rbp + 0x2010]
	jmp	.label_554
	.section	.text
	.align	32
	#Procedure 0x40718b
	.globl sub_40718b
	.type sub_40718b, @function
sub_40718b:

	nop	dword ptr [rax + rax]
.label_694:
	mov	rsi, qword ptr [rbx + 0x2000]
	mov	rdi, rbx
	call	xwrite_stdout
	mov	rbx, qword ptr [rbx + 0x2010]
.label_554:
	test	rbx, rbx
	jne	.label_694
.label_695:
	mov	r14, qword ptr [rsp + 0x28]
.label_478:
	mov	rdi, qword ptr [rsp + 0x50]
.label_578:
	test	rdi, rdi
	je	.label_559
	nop	word ptr [rax + rax]
.label_561:
	mov	rbx, qword ptr [rdi + 0x2010]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_561
.label_559:
	test	r13b, r13b
	setne	r15b
	jmp	.label_550
.label_765:
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_253
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, rbx
	call	error
	jmp	.label_575
.label_604:
	mov	rax, r14
	mov	r14, qword ptr [r14 + 0x2008]
.label_731:
	mov	r12, r15
	mov	r15, rax
	mov	rbp, rcx
	jmp	.label_609
	.section	.text
	.align	32
	#Procedure 0x407235
	.globl sub_407235
	.type sub_407235, @function
sub_407235:

	nop	word ptr cs:[rax + rax]
.label_597:
	add	rdi, r12
	mov	rsi, r15
	mov	rdx, rbx
	call	memcpy
	mov	rax, qword ptr [r15 + 0x2000]
	add	qword ptr [r12 + 0x2000], rax
.label_609:
	mov	edi, dword ptr [rsp]
	mov	edx, 0x2000
	mov	rsi, r15
	call	safe_read
	mov	rbx, rax
	lea	rax, [rbx + 1]
	cmp	rax, 2
	jb	.label_591
	add	r13, rbx
	mov	qword ptr [r15 + 0x2000], rbx
	mov	qword ptr [r15 + 0x2008], 0
	add	rbp, rbx
	mov	rdi, qword ptr [r12 + 0x2000]
	mov	rax, rbx
	add	rax, rdi
	cmp	rax, 0x1fff
	jbe	.label_597
	mov	qword ptr [r12 + 0x2008], r15
	mov	rcx, rbp
	sub	rcx, qword ptr [r14 + 0x2000]
	cmp	rcx, qword ptr [rsp + 0x10]
	ja	.label_604
	mov	edi, 0x2010
	call	xmalloc
	mov	r12, r15
	mov	r15, rax
	jmp	.label_609
.label_591:
	mov	rdi, r15
	call	free
	cmp	rbx, -1
	je	.label_610
	mov	rsi, qword ptr [r14 + 0x2000]
	mov	rax, rbp
	sub	rax, rsi
	mov	rcx, qword ptr [rsp + 0x10]
	cmp	rax, rcx
	mov	rbx, r14
	mov	r12, qword ptr [rsp + 0x20]
	jbe	.label_612
	nop	dword ptr [rax + rax]
.label_620:
	mov	rbp, rax
	mov	rbx, qword ptr [rbx + 0x2008]
	mov	rsi, qword ptr [rbx + 0x2000]
	sub	rax, rsi
	cmp	rax, rcx
	ja	.label_620
.label_612:
	sub	rbp, rcx
	mov	eax, 0
	cmovbe	rbp, rax
	lea	rdi, [rbx + rbp]
	sub	rsi, rbp
	call	xwrite_stdout
	mov	rbx, qword ptr [rbx + 0x2008]
	mov	bpl, 1
	jmp	.label_629
	.section	.text
	.align	32
	#Procedure 0x40734d
	.globl sub_40734d
	.type sub_40734d, @function
sub_40734d:

	nop	dword ptr [rax]
.label_633:
	mov	rsi, qword ptr [rbx + 0x2000]
	mov	rdi, rbx
	call	xwrite_stdout
	mov	rbx, qword ptr [rbx + 0x2008]
.label_629:
	test	rbx, rbx
	jne	.label_633
	jmp	.label_634
.label_610:
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_253
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x58]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, rbx
	call	error
	mov	r12, qword ptr [rsp + 0x20]
.label_634:
	test	r14, r14
	je	.label_590
	nop	word ptr cs:[rax + rax]
.label_646:
	mov	rbx, qword ptr [r14 + 0x2008]
	mov	rdi, r14
	call	free
	test	rbx, rbx
	mov	r14, rbx
	jne	.label_646
.label_590:
	test	bpl, bpl
	setne	r15b
.label_642:
	mov	r14, r13
	nop	word ptr cs:[rax + rax]
.label_550:
	cmp	byte ptr [rip + forever],  0
	je	.label_654
	mov	eax, r15d
	not	al
	movzx	eax, al
	shl	eax, 0x1f
	sar	eax, 0x1f
	mov	rdx, qword ptr [rsp + 0x60]
	mov	rcx, qword ptr [rsp + 0x38]
	lea	rbp, [rcx + rdx + 0x3c]
	mov	rcx, qword ptr [rsp + 0x30]
	mov	dword ptr [rcx + rdx + 0x3c], eax
	mov	edi, 1
	mov	esi, dword ptr [rsp]
	lea	rdx, [rsp + 0x160]
	call	__fxstat
	test	eax, eax
	js	.label_662
	mov	eax, dword ptr [rsp + 0x178]
	mov	ecx, eax
	and	ecx, 0xfffff000
	movsx	edx, cx
	movzx	ecx, cx
	cmp	edx, 0xfff
	jg	.label_663
	cmp	ecx, 0x8000
	je	.label_667
	cmp	ecx, 0xc000
	je	.label_667
	jmp	.label_669
	.section	.text
	.align	32
	#Procedure 0x40747e
	.globl sub_40747e
	.type sub_40747e, @function
sub_40747e:

	nop	
.label_654:
	mov	eax, dword ptr [rsp + 0x80]
	test	al, al
	jne	.label_670
	mov	edi, dword ptr [rsp]
	call	close
	test	eax, eax
	mov	r14, qword ptr [rsp + 0x30]
	je	.label_567
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_253
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rax, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rax]
	cmp	byte ptr [rsi], 0x2d
	jne	.label_676
	cmp	byte ptr [rsi + 1], 0
	jne	.label_676
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_182
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
.label_676:
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	r15d, r15d
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_670:
	mov	r14, qword ptr [rsp + 0x30]
	jmp	.label_567
.label_662:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp], ecx
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_253
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rax, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rax]
	cmp	byte ptr [rsi], 0x2d
	jne	.label_698
	cmp	byte ptr [rsi + 1], 0
	jne	.label_698
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_182
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
.label_698:
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	jmp	.label_707
.label_663:
	cmp	ecx, 0x1000
	je	.label_667
	cmp	ecx, 0x2000
	jne	.label_669
.label_667:
	test	r15b, r15b
	je	.label_707
	mov	ecx, dword ptr [rsp + 0x80]
	test	cl, cl
	mov	ecx, 1
	mov	edx, 0xffffffff
	cmovne	ecx, edx
	mov	rdi, r14
	mov	r14, qword ptr [rsp + 0x30]
	mov	rdx, qword ptr [rsp + 0x60]
	mov	esi, dword ptr [rsp]
	mov	dword ptr [r14 + rdx + 0x38], esi
	mov	qword ptr [r14 + rdx + 8], rdi
	movups	xmm0, xmmword ptr [rsp + 0x1b8]
	movups	xmmword ptr [r14 + rdx + 0x10], xmm0
	movapd	xmm0, xmmword ptr [rsp + 0x160]
	movupd	xmmword ptr [r14 + rdx + 0x20], xmm0
	mov	dword ptr [r14 + rdx + 0x30], eax
	mov	dword ptr [r14 + rdx + 0x40], ecx
	mov	qword ptr [r14 + rdx + 0x58], 0
	mov	byte ptr [r14 + rdx + 0x34], 0
	mov	rax, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rax]
	cmp	byte ptr [rsi], 0x2d
	jne	.label_713
	cmp	byte ptr [rsi + 1], 0
	jne	.label_713
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_182
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
.label_713:
	mov	edi, dword ptr [rsp]
	call	fremote
	mov	rcx, qword ptr [rsp + 0x60]
	mov	byte ptr [r14 + rcx + 0x35], al
	jmp	.label_567
.label_669:
	mov	rdx, qword ptr [rsp + 0x60]
	mov	rax, qword ptr [rsp + 0x38]
	lea	rbx, [rax + rdx + 0x36]
	mov	dword ptr [rbp], 0xffffffff
	mov	byte ptr [rbx], 0
	mov	al, byte ptr [rip + reopen_inaccessible_files]
	xor	al, 1
	mov	rcx, qword ptr [rsp + 0x30]
	mov	byte ptr [rcx + rdx + 0x34], al
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_737
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rax, qword ptr [rsp + 0x48]
	mov	rdx, qword ptr [rax]
	cmp	byte ptr [rdx], 0x2d
	jne	.label_744
	cmp	byte ptr [rdx + 1], 0
	jne	.label_744
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_182
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
.label_744:
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rbp, rax
	cmp	byte ptr [rbx - 2], 0
	mov	r8d, OFFSET FLAT:label_257
	je	.label_787
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_320
	mov	edx, 5
	call	dcgettext
	mov	r8, rax
.label_787:
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	mov	rcx, rbp
	call	error
	nop	dword ptr [rax + rax]
.label_707:
	mov	al, byte ptr [rip + reopen_inaccessible_files]
	xor	al, 1
	mov	r14, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x60]
	mov	byte ptr [r14 + rbx + 0x34], al
	mov	rax, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rax]
	cmp	byte ptr [rsi], 0x2d
	jne	.label_540
	cmp	byte ptr [rsi + 1], 0
	mov	edi, dword ptr [rsp]
	jne	.label_764
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_182
	mov	edx, 5
	call	dcgettext
	mov	edi, dword ptr [rsp]
	mov	rsi, rax
	jmp	.label_764
.label_540:
	mov	edi, dword ptr [rsp]
.label_764:
	call	close_fd
	mov	dword ptr [r14 + rbx + 0x38], 0xffffffff
	xor	r15d, r15d
.label_567:
	test	r15b, r15b
	setne	al
	mov	cl, byte ptr [rsp + 0xf]
	and	cl, al
	mov	eax, ecx
	mov	r15, qword ptr [rsp + 0x40]
	inc	r15
	cmp	r15, r12
	jb	.label_719
.label_715:
	mov	byte ptr [rsp + 0xf], al
	cmp	byte ptr [rip + forever],  0
	sete	al
	mov	ecx, dword ptr [rsp + 0x74]
	or	al, cl
	jne	.label_705
	mov	rax, qword ptr [rsp + 0x38]
	lea	rcx, [rax + 0x38]
	xor	eax, eax
	mov	edx, 0xf000
	mov	rsi, r12
	nop	word ptr cs:[rax + rax]
.label_786:
	mov	rdi, qword ptr [rcx - 0x38]
	cmp	byte ptr [rdi], 0x2d
	jne	.label_780
	cmp	byte ptr [rdi + 1], 0
	jne	.label_780
	cmp	byte ptr [rcx - 4], 0
	jne	.label_780
	cmp	dword ptr [rcx], 0
	js	.label_780
	mov	edi, dword ptr [rcx - 8]
	and	edi, edx
	cmp	edi, 0x1000
	jne	.label_780
	mov	dword ptr [rcx], 0xffffffff
	mov	byte ptr [rcx - 4], 1
	jmp	.label_740
	.section	.text
	.align	32
	#Procedure 0x4077c3
	.globl sub_4077c3
	.type sub_4077c3, @function
sub_4077c3:

	nop	word ptr cs:[rax + rax]
.label_780:
	inc	rax
.label_740:
	add	rcx, 0x60
	dec	rsi
	jne	.label_786
	test	rax, rax
	je	.label_705
	lea	rdx, [rsp + 0xd0]
	mov	edi, 1
	mov	esi, 1
	call	__fxstat
	test	eax, eax
	js	.label_791
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0xe8]
	cmp	eax, 0x1000
	sete	byte ptr [rip + monitor_output]
	mov	al, byte ptr [rip + disable_inotify]
	test	al, al
	jne	.label_466
	xor	eax, eax
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rcx, rsi
	nop	word ptr cs:[rax + rax]
.label_584:
	cmp	byte ptr [rcx + 0x34], 0
	jne	.label_477
	mov	rdx, qword ptr [rcx]
	cmp	byte ptr [rdx], 0x2d
	jne	.label_477
	cmp	byte ptr [rdx + 1], 0
	je	.label_479
	nop	word ptr cs:[rax + rax]
.label_477:
	inc	rax
	add	rcx, 0x60
	cmp	rax, r12
	jb	.label_584
	mov	rax, qword ptr [rsp + 0x38]
	lea	rax, [rax + 0x38]
	xor	ecx, ecx
	nop	word ptr [rax + rax]
.label_493:
	cmp	dword ptr [rax], 0
	js	.label_490
	cmp	byte ptr [rax - 3], 0
	jne	.label_479
.label_490:
	inc	rcx
	add	rax, 0x60
	cmp	rcx, r12
	jb	.label_493
	mov	rax, qword ptr [rsp + 0x38]
	lea	rax, [rax + 0x38]
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_505:
	cmp	dword ptr [rax], 0
	js	.label_500
	cmp	byte ptr [rax - 3], 0
	je	.label_502
.label_500:
	inc	rcx
	add	rax, 0x60
	cmp	rcx, r12
	jb	.label_505
.label_479:
	mov	byte ptr [rip + disable_inotify],  1
.label_466:
	mov	byte ptr [rip + disable_inotify],  1
	xor	eax, eax
	cmp	r12, 1
	jne	.label_508
	mov	ecx, dword ptr [rip + pid]
	test	ecx, ecx
	jne	.label_508
	cmp	dword ptr [rip + follow_mode],  2
	mov	r15, qword ptr [rsp + 0x30]
	jne	.label_516
	cmp	dword ptr [r15 + 0x38], -1
	je	.label_519
	mov	eax, 0xf000
	and	eax, dword ptr [r15 + 0x30]
	cmp	eax, 0x8000
	setne	al
	jmp	.label_516
.label_508:
	mov	r15, qword ptr [rsp + 0x30]
	jmp	.label_516
.label_519:
	xor	eax, eax
.label_516:
	lea	rcx, [r12 - 1]
	mov	qword ptr [rsp + 0x10], rcx
	movzx	r13d, al
	xor	eax, eax
	test	r13b, r13b
	sete	al
	shl	eax, 0xb
	mov	dword ptr [rsp + 0x40], eax
	add	qword ptr [rsp + 0x38], 0x38
	mov	dword ptr [rsp + 0x28], 0
	mov	dword ptr [rsp + 0x48], r13d
	nop	dword ptr [rax]
.label_704:
	xor	r14d, r14d
	mov	rbp, r15
	xor	eax, eax
	mov	qword ptr [rsp], rax
	jmp	.label_542
.label_622:
	mov	rax, qword ptr [rip + max_n_unchanged_stats_between_opens]
	mov	rcx, qword ptr [rbp + 0x58]
	lea	rdx, [rcx + 1]
	mov	qword ptr [rbp + 0x58], rdx
	cmp	rax, rcx
	ja	.label_547
	cmp	dword ptr [rip + follow_mode],  1
	jne	.label_547
	xor	esi, esi
	cmp	dword ptr [rbp + 0x40], 0
	setne	sil
	mov	rdi, rbp
	call	recheck
	mov	qword ptr [rbp + 0x58], 0
	jmp	.label_547
	.section	.text
	.align	32
	#Procedure 0x4079a6
	.globl sub_4079a6
	.type sub_4079a6, @function
sub_4079a6:

	nop	word ptr cs:[rax + rax]
.label_542:
	cmp	byte ptr [rbp + 0x34], 0
	jne	.label_547
	mov	ebx, dword ptr [rbp + 0x38]
	test	ebx, ebx
	js	.label_589
	mov	r15, qword ptr [rbp]
	cmp	byte ptr [r15], 0x2d
	jne	.label_560
	cmp	byte ptr [r15 + 1], 0
	jne	.label_560
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_182
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	nop	word ptr cs:[rax + rax]
.label_560:
	mov	eax, dword ptr [rbp + 0x30]
	mov	dword ptr [rsp + 0x18], eax
	cmp	dword ptr [rbp + 0x40], r13d
	mov	eax, r13d
	je	.label_568
	mov	esi, 3
	xor	eax, eax
	mov	edi, ebx
	call	rpl_fcntl
	test	eax, eax
	js	.label_572
	mov	edx, eax
	or	edx, dword ptr [rsp + 0x40]
	cmp	edx, eax
	je	.label_574
	mov	esi, 4
	xor	eax, eax
	mov	edi, ebx
	call	rpl_fcntl
	cmp	eax, -1
	je	.label_572
.label_574:
	mov	dword ptr [rbp + 0x40], r13d
	mov	eax, r13d
	jmp	.label_568
.label_589:
	mov	rdi, rbp
	mov	esi, r13d
	call	recheck
	jmp	.label_547
.label_572:
	mov	r12d, dword ptr [rbp + 0x30]
	and	r12d, 0xf000
	call	__errno_location
	mov	r13d, dword ptr [rax]
	cmp	r12d, 0x8000
	jne	.label_588
	cmp	r13d, 1
	jne	.label_588
	mov	eax, dword ptr [rbp + 0x40]
	mov	r12, qword ptr [rsp + 0x20]
	mov	r13d, dword ptr [rsp + 0x48]
.label_568:
	test	eax, eax
	jne	.label_598
	mov	edi, 1
	mov	esi, ebx
	lea	rdx, [rsp + 0x160]
	call	__fxstat
	test	eax, eax
	je	.label_602
	mov	dword ptr [rbp + 0x38], 0xffffffff
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp + 0x3c], ecx
	mov	r13d, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r15
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_296
	xor	eax, eax
	mov	esi, r13d
	mov	r13d, dword ptr [rsp + 0x48]
	call	error
	mov	edi, ebx
	call	close
	jmp	.label_547
.label_602:
	mov	ecx, dword ptr [rbp + 0x30]
	mov	eax, dword ptr [rsp + 0x178]
	cmp	ecx, eax
	jne	.label_611
	and	ecx, 0xf000
	cmp	ecx, 0x8000
	jne	.label_616
	mov	rcx, qword ptr [rbp + 8]
	cmp	rcx, qword ptr [rsp + 0x190]
	jne	.label_611
.label_616:
	mov	rcx, qword ptr [rbp + 0x10]
	cmp	rcx, qword ptr [rsp + 0x1b8]
	jne	.label_611
	mov	ecx, dword ptr [rbp + 0x18]
	cmp	ecx, dword ptr [rsp + 0x1c0]
	je	.label_622
.label_611:
	movupd	xmm0, xmmword ptr [rsp + 0x1b8]
	movupd	xmmword ptr [rbp + 0x10], xmm0
	mov	dword ptr [rbp + 0x30], eax
	mov	qword ptr [rbp + 0x58], 0
	mov	eax, dword ptr [rsp + 0x18]
	and	eax, 0xf000
	cmp	eax, 0x8000
	jne	.label_623
	mov	rax, qword ptr [rsp + 0x190]
	cmp	rax, qword ptr [rbp + 8]
	jge	.label_623
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_176
	mov	edx, 5
	call	dcgettext
	mov	r13, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r15
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r13
	mov	r13d, dword ptr [rsp + 0x48]
	call	error
	xor	esi, esi
	xor	edx, edx
	mov	edi, ebx
	mov	rcx, r15
	call	xlseek
	mov	qword ptr [rbp + 8], 0
.label_623:
	cmp	r14, qword ptr [rsp + 0x10]
	je	.label_598
	cmp	byte ptr [rip + print_headers],  1
	mov	qword ptr [rsp + 0x10], r14
	jne	.label_598
	movzx	eax, byte ptr [rip + write_header.first_file]
	test	al, al
	mov	edx, OFFSET FLAT:label_257
	mov	eax, OFFSET FLAT:label_258
	cmovne	rdx, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_259
	xor	eax, eax
	mov	rcx, r15
	call	__printf_chk
	mov	byte ptr [rip + write_header.first_file],  1
	mov	qword ptr [rsp + 0x10], r14
.label_598:
	mov	rcx, -2
	cmp	dword ptr [rbp + 0x40], 0
	jne	.label_467
	mov	eax, dword ptr [rsp + 0x18]
	and	eax, 0xf000
	mov	rcx, -1
	cmp	eax, 0x8000
	jne	.label_467
	cmp	byte ptr [rbp + 0x35], 0
	je	.label_467
	mov	rcx, qword ptr [rsp + 0x190]
	sub	rcx, qword ptr [rbp + 8]
.label_467:
	xor	edi, edi
	mov	rsi, r15
	mov	edx, ebx
	call	dump_remainder
	test	rax, rax
	setne	cl
	mov	rdx, qword ptr [rsp]
	and	dl, 1
	or	dl, cl
	mov	qword ptr [rsp], rdx
	add	qword ptr [rbp + 8], rax
	nop	word ptr [rax + rax]
.label_547:
	inc	r14
	add	rbp, 0x60
	cmp	r14, r12
	jb	.label_542
	mov	al, byte ptr [rip + reopen_inaccessible_files]
	cmp	al, 1
	mov	rcx, qword ptr [rsp + 0x38]
	mov	r15, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp]
	jne	.label_603
	cmp	dword ptr [rip + follow_mode],  1
	je	.label_485
.label_603:
	xor	al, 1
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_675:
	cmp	dword ptr [rcx], 0
	jns	.label_485
	cmp	byte ptr [rcx - 4], 0
	setne	bl
	or	bl, al
	cmp	bl, 1
	jne	.label_485
	inc	rdx
	add	rcx, 0x60
	cmp	rdx, r12
	jb	.label_675
	jmp	.label_679
	.section	.text
	.align	32
	#Procedure 0x407cc4
	.globl sub_407cc4
	.type sub_407cc4, @function
sub_407cc4:

	nop	word ptr cs:[rax + rax]
.label_485:
	and	bpl, 1
	sete	al
	test	r13d, r13d
	jne	.label_683
	test	al, al
	je	.label_686
.label_683:
	mov	rdi, qword ptr [rip + stdout]
	call	fflush_unlocked
	test	eax, eax
	jne	.label_666
.label_686:
	cmp	byte ptr [rip + monitor_output],  0
	je	.label_692
	xorpd	xmm0, xmm0
	movapd	xmmword ptr [rsp + 0xa0], xmm0
	xor	eax, eax
	mov	ecx, 0x10
	lea	rbx, [rsp + 0x160]
	mov	rdi, rbx
	cld	
	rep stosq	qword ptr [rdi], rax
	mov	edi, 1
	call	__fdelt_chk
	or	byte ptr [rsp + rax*8 + 0x160], 2
	mov	edi, 2
	xor	edx, edx
	xor	ecx, ecx
	mov	rsi, rbx
	lea	r8, [rsp + 0xa0]
	call	select
	cmp	eax, 1
	je	.label_703
.label_692:
	test	bpl, bpl
	jne	.label_704
	mov	eax, dword ptr [rsp + 0x28]
	test	al, 1
	jne	.label_705
	mov	edi, dword ptr [rip + pid]
	test	edi, edi
	je	.label_706
	mov	dword ptr [rsp + 0x28], 0
	xor	esi, esi
	call	kill
	test	eax, eax
	je	.label_711
	call	__errno_location
	cmp	dword ptr [rax], 1
	setne	al
	mov	dword ptr [rsp + 0x28], eax
	jne	.label_704
	jmp	.label_711
.label_706:
	mov	dword ptr [rsp + 0x28], 0
.label_711:
	movsd	xmm0, qword ptr [rsp + 0x98]
	call	xnanosleep
	test	eax, eax
	je	.label_704
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_721
	jmp	.label_465
.label_679:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_491
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_705:
	cmp	byte ptr [rip + have_read_stdin],  1
	jne	.label_733
	xor	edi, edi
	call	close
	test	eax, eax
	js	.label_732
.label_733:
	movzx	eax, byte ptr [rsp + 0xf]
	xor	eax, 1
.label_497:
	add	rsp, 0x2168
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_502:
	xor	ebp, ebp
	lea	r15, [rsp + 0x160]
	mov	r14d, 0xf000
	mov	rbx, rsi
	nop	word ptr cs:[rax + rax]
.label_742:
	mov	rsi, qword ptr [rbx]
	mov	edi, 1
	mov	rdx, r15
	call	__lxstat
	test	eax, eax
	jne	.label_741
	mov	eax, dword ptr [rsp + 0x178]
	and	eax, r14d
	cmp	eax, 0xa000
	je	.label_479
.label_741:
	inc	rbp
	add	rbx, 0x60
	cmp	rbp, r12
	jb	.label_742
	mov	rax, qword ptr [rsp + 0x38]
	lea	rax, [rax + 0x38]
	xor	ecx, ecx
.label_752:
	cmp	dword ptr [rax], 0
	js	.label_747
	movzx	edx, word ptr [rax - 8]
	and	edx, 0xf000
	cmp	edx, 0x1000
	je	.label_747
	movzx	edx, dx
	cmp	edx, 0x8000
	jne	.label_479
.label_747:
	inc	rcx
	add	rax, 0x60
	cmp	rcx, r12
	jb	.label_752
	cmp	dword ptr [rip + follow_mode],  2
	jne	.label_754
	mov	al, byte ptr [rsp + 0xf]
	xor	al, 1
	jne	.label_479
.label_754:
	mov	al, byte ptr [rip + disable_inotify]
	test	al, al
	jne	.label_466
	call	inotify_init
	mov	r15d, eax
	test	r15d, r15d
	js	.label_606
	mov	rdi, qword ptr [rip + stdout]
	call	fflush_unlocked
	test	eax, eax
	jne	.label_666
	mov	r14, qword ptr [rsp + 0x38]
	xor	esi, esi
	mov	edx, OFFSET FLAT:wd_hasher
	mov	ecx, OFFSET FLAT:wd_comparator
	xor	r8d, r8d
	mov	rdi, r12
	call	hash_initialize
	mov	qword ptr [rsp + 0x40], rax
	test	rax, rax
	mov	rdx, qword ptr [rsp + 0x30]
	je	.label_471
	cmp	dword ptr [rip + follow_mode],  1
	mov	eax, 0xc06
	mov	ecx, 2
	cmove	ecx, eax
	mov	dword ptr [rsp + 0x48], ecx
	mov	rbx, rdx
	xor	r12d, r12d
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	xor	eax, eax
	mov	qword ptr [rsp], rax
	xor	r13d, r13d
	mov	dword ptr [rsp + 0x18], r15d
.label_545:
	cmp	byte ptr [rbx + 0x34], 0
	jne	.label_469
	mov	rbp, qword ptr [rbx]
	mov	rdi, rbp
	call	strlen
	mov	rcx, qword ptr [rsp]
	cmp	rcx, rax
	cmovb	rcx, rax
	mov	qword ptr [rsp], rcx
	mov	dword ptr [rbx + 0x44], 0xffffffff
	cmp	dword ptr [rip + follow_mode],  1
	jne	.label_775
	mov	rdi, rbp
	call	dir_len
	mov	r15, rax
	movzx	r14d, byte ptr [rbp + r15]
	mov	rdi, rbp
	call	last_component
	sub	rax, rbp
	mov	qword ptr [rbx + 0x50], rax
	mov	byte ptr [rbp + r15], 0
	test	r15, r15
	mov	esi, OFFSET FLAT:label_537
	je	.label_538
	mov	rsi, qword ptr [rbx]
.label_538:
	mov	edx, 0x784
	mov	edi, dword ptr [rsp + 0x18]
	call	inotify_add_watch
	mov	dword ptr [rbx + 0x48], eax
	mov	rax, qword ptr [rbx]
	mov	byte ptr [rax + r15], r14b
	cmp	dword ptr [rbx + 0x48], 0
	js	.label_785
	mov	rbp, qword ptr [rbx]
	mov	r14, qword ptr [rsp + 0x38]
	mov	r15d, dword ptr [rsp + 0x18]
.label_775:
	mov	edi, r15d
	mov	rsi, rbp
	mov	edx, dword ptr [rsp + 0x48]
	call	inotify_add_watch
	mov	dword ptr [rbx + 0x44], eax
	test	eax, eax
	js	.label_463
	mov	rdi, qword ptr [rsp + 0x40]
	mov	rsi, rbx
	call	hash_insert
	mov	r12b, 1
	test	rax, rax
	mov	rdx, qword ptr [rsp + 0x30]
	jne	.label_469
	jmp	.label_471
.label_463:
	cmp	dword ptr [rbx + 0x38], -1
	je	.label_473
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
.label_473:
	call	__errno_location
	mov	rbp, rax
	mov	r15d, dword ptr [rbp]
	mov	eax, r15d
	or	eax, 0x10
	cmp	eax, 0x1c
	je	.label_717
	cmp	r15d, dword ptr [rbx + 0x3c]
	je	.label_480
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_571
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rsi, qword ptr [rbx]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, rbp
	call	error
.label_480:
	mov	rdx, qword ptr [rsp + 0x30]
	mov	r15d, dword ptr [rsp + 0x18]
.label_469:
	inc	r13
	add	rbx, 0x60
	cmp	r13, qword ptr [rsp + 0x20]
	jb	.label_545
	mov	eax, dword ptr [rip + follow_mode]
	mov	rcx, qword ptr [rsp + 0x10]
	test	cl, 1
	je	.label_650
	cmp	eax, 2
	jne	.label_650
	call	__errno_location
	mov	rbp, rax
	mov	r12, qword ptr [rsp + 0x20]
	jmp	.label_668
.label_650:
	test	r12b, 1
	jne	.label_648
	cmp	eax, 2
	je	.label_690
.label_648:
	mov	rcx, r14
	mov	r14, qword ptr [rsp + 0x20]
	lea	rax, [r14 + r14*2]
	shl	rax, 5
	lea	rax, [rcx + rax - 0x60]
	mov	qword ptr [rsp + 0xb0], rax
	xor	ebp, ebp
	lea	r15, [rsp + 0xb0]
	lea	r12, [rsp + 0x160]
	mov	rbx, rdx
.label_496:
	cmp	byte ptr [rbx + 0x34], 0
	jne	.label_525
	cmp	dword ptr [rip + follow_mode],  1
	jne	.label_529
	xor	esi, esi
	mov	rdi, rbx
	call	recheck
	jmp	.label_533
.label_529:
	cmp	dword ptr [rbx + 0x38], -1
	je	.label_533
	mov	rsi, qword ptr [rbx]
	mov	edi, 1
	mov	rdx, r12
	call	__xstat
	test	eax, eax
	jne	.label_533
	mov	rax, qword ptr [rbx + 0x20]
	cmp	rax, qword ptr [rsp + 0x160]
	jne	.label_543
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rsp + 0x168]
	jne	.label_543
.label_533:
	mov	rdi, rbx
	mov	rsi, r15
	call	check_fspec
.label_525:
	inc	rbp
	add	rbx, 0x60
	cmp	rbp, r14
	jb	.label_496
	mov	r14, qword ptr [rsp]
	mov	rdi, r14
	add	rdi, 0x11
	mov	qword ptr [rsp], rdi
	call	xmalloc
	mov	qword ptr [rsp + 0x68], rax
	mov	edx, dword ptr [rsp + 0x18]
	mov	eax, edx
	sar	eax, 0x1f
	shr	eax, 0x1a
	add	eax, edx
	and	eax, 0xc0
	mov	ecx, edx
	sub	ecx, eax
	mov	eax, 1
	shl	rax, cl
	mov	qword ptr [rsp + 0x80], rax
	movsxd	rax, edx
	mov	qword ptr [rsp + 0x58], rax
	test	edx, edx
	mov	eax, 1
	cmovg	eax, edx
	inc	eax
	mov	dword ptr [rsp + 0x74], eax
	movsd	xmm1, qword ptr [rsp + 0x98]
	cvttsd2si	rax, xmm1
	mov	qword ptr [rsp + 0xc0], rax
	cvtsi2sd	xmm0, rax
	subsd	xmm1, xmm0
	mulsd	xmm1, qword ptr [rip + label_614]
	cvttsd2si	rax, xmm1
	mov	qword ptr [rsp + 0xb8], rax
	mov	rax, qword ptr [rsp + 0x38]
	lea	rcx, [rax + 0x48]
	mov	qword ptr [rsp + 0xc8], rcx
	lea	rax, [rax + 0x50]
	mov	qword ptr [rsp + 0x50], rax
	mov	eax, 3
	mov	ecx, 0
	mov	qword ptr [rsp + 0x10], rcx
	xor	r15d, r15d
	mov	dword ptr [rsp + 0x28], 0
	jmp	.label_615
.label_785:
	call	__errno_location
	mov	rbp, rax
	mov	r12d, dword ptr [rbp]
	cmp	r12d, 0x1c
	jne	.label_586
.label_717:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_573
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	jmp	.label_595
.label_586:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_596
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	rsi, qword ptr [rbx]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r12d
	mov	rdx, r15
	call	error
.label_595:
	mov	r12, qword ptr [rsp + 0x20]
	mov	r15d, dword ptr [rsp + 0x18]
.label_668:
	mov	rdi, qword ptr [rsp + 0x40]
	call	hash_free
	mov	dword ptr [rbp], 0
	jmp	.label_606
.label_543:
	call	__errno_location
	mov	rbp, rax
	mov	r12d, dword ptr [rbp]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_482
	mov	edx, 5
	call	dcgettext
	mov	r13, rax
	mov	rsi, qword ptr [rbx]
	cmp	byte ptr [rsi], 0x2d
	jne	.label_518
	cmp	byte ptr [rsi + 1], 0
	jne	.label_518
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_182
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
.label_518:
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r12d
	mov	rdx, r13
	call	error
	mov	rdi, qword ptr [rsp + 0x40]
	call	hash_free
	mov	dword ptr [rbp], 0
.label_581:
	mov	r12, qword ptr [rsp + 0x20]
	jmp	.label_627
.label_1096:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_630
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	ecx, ebx
	call	error
.label_722:
	xor	esi, esi
	mov	rdi, r12
	call	recheck
	mov	rax, qword ptr [rsp + 0x60]
.label_615:
	mov	ebx, eax
	jmp	.label_635
.label_697:
	mov	rsi, qword ptr [rsp]
	add	rsi, rsi
	mov	rdi, qword ptr [rsp + 0x68]
	mov	qword ptr [rsp], rsi
	call	xrealloc
	mov	qword ptr [rsp + 0x68], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	xor	r15d, r15d
.label_635:
	mov	r13d, ebx
	mov	r12, qword ptr [rsp + 0x20]
	lea	rbx, [rsp + 0x160]
.label_725:
	cmp	dword ptr [rip + follow_mode],  1
	jne	.label_644
	mov	al, byte ptr [rip + reopen_inaccessible_files]
	test	al, al
	jne	.label_644
	mov	rdi, qword ptr [rsp + 0x40]
	call	hash_get_n_entries
	test	rax, rax
	je	.label_756
.label_644:
	mov	rbp, qword ptr [rsp + 0x10]
	cmp	rbp, r15
	ja	.label_649
.label_680:
	mov	edi, dword ptr [rip + pid]
	test	edi, edi
	je	.label_652
	mov	eax, dword ptr [rsp + 0x28]
	test	al, 1
	mov	ebp, dword ptr [rsp + 0x18]
	jne	.label_653
	mov	dword ptr [rsp + 0x28], 0
	xor	esi, esi
	call	kill
	test	eax, eax
	je	.label_657
	call	__errno_location
	cmp	dword ptr [rax], 1
	setne	al
	mov	dword ptr [rsp + 0x28], eax
	je	.label_657
	xorpd	xmm0, xmm0
	movapd	xmmword ptr [rsp + 0xa0], xmm0
	jmp	.label_659
.label_657:
	mov	rax, qword ptr [rsp + 0xc0]
	mov	qword ptr [rsp + 0xa0], rax
	mov	rax, qword ptr [rsp + 0xb8]
	mov	qword ptr [rsp + 0xa8], rax
	jmp	.label_659
.label_652:
	mov	ebp, dword ptr [rsp + 0x18]
.label_659:
	xor	eax, eax
	mov	ecx, 0x10
	mov	rdi, rbx
	cld	
	rep stosq	qword ptr [rdi], rax
	mov	rdi, qword ptr [rsp + 0x58]
	call	__fdelt_chk
	mov	rcx, qword ptr [rsp + 0x80]
	or	qword ptr [rsp + rax*8 + 0x160], rcx
	cmp	byte ptr [rip + monitor_output],  0
	je	.label_541
	mov	edi, 1
	call	__fdelt_chk
	or	byte ptr [rsp + rax*8 + 0x160], 2
.label_541:
	cmp	dword ptr [rip + pid],  0
	mov	r8d, 0
	lea	rax, [rsp + 0xa0]
	cmovne	r8, rax
	xor	edx, edx
	xor	ecx, ecx
	mov	edi, dword ptr [rsp + 0x74]
	mov	rsi, rbx
	call	select
	test	eax, eax
	je	.label_680
	cmp	eax, -1
	je	.label_681
	mov	edi, 1
	call	__fdelt_chk
	test	byte ptr [rsp + rax*8 + 0x160], 2
	jne	.label_687
	mov	edi, ebp
	mov	rsi, qword ptr [rsp + 0x68]
	mov	rdx, qword ptr [rsp]
	call	safe_read
	mov	rbp, rax
	test	rbp, rbp
	je	.label_727
	cmp	rbp, -1
	jne	.label_693
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_699
.label_727:
	lea	ebx, [r13 - 1]
	test	r13d, r13d
	jne	.label_697
	mov	r13d, ebx
.label_693:
	mov	rax, rbp
	inc	rax
	cmp	rax, 1
	mov	r15d, 0
	jbe	.label_699
.label_649:
	mov	rax, qword ptr [rsp + 0x68]
	lea	rdi, [rax + r15]
	mov	r14d, dword ptr [rax + r15 + 4]
	mov	eax, dword ptr [rax + r15 + 0xc]
	test	rax, rax
	jne	.label_700
	mov	ecx, r14d
	and	ecx, 0x400
	je	.label_700
	mov	ecx, dword ptr [rdi]
	mov	rdx, qword ptr [rsp + 0xc8]
	xor	esi, esi
.label_710:
	cmp	ecx, dword ptr [rdx]
	je	.label_708
	inc	rsi
	add	rdx, 0x60
	cmp	rsi, r12
	jb	.label_710
.label_700:
	mov	qword ptr [rsp + 0x10], rbp
	mov	qword ptr [rsp + 0x60], r13
	lea	r15, [r15 + rax + 0x10]
	test	eax, eax
	mov	qword ptr [rsp + 0x88], rdi
	je	.label_526
	lea	r12, [rdi + 0x10]
	mov	ebx, dword ptr [rdi]
	mov	r13, qword ptr [rsp + 0x50]
	xor	ebp, ebp
.label_724:
	cmp	dword ptr [r13 - 8], ebx
	jne	.label_718
	mov	rsi, qword ptr [r13 - 0x50]
	add	rsi, qword ptr [r13]
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_723
.label_718:
	inc	rbp
	add	r13, 0x60
	cmp	rbp, qword ptr [rsp + 0x20]
	jb	.label_724
.label_723:
	mov	r12, qword ptr [rsp + 0x20]
	cmp	rbp, r12
	lea	rbx, [rsp + 0x160]
	mov	r13, qword ptr [rsp + 0x60]
	je	.label_725
	mov	r13, qword ptr [rsp]
	lea	rbx, [rbp + rbp*2]
	shl	rbx, 5
	mov	rax, qword ptr [rsp + 0x38]
	lea	r12, [rax + rbx]
	mov	eax, r14d
	test	ah, 2
	jne	.label_729
	mov	rsi, qword ptr [r12]
	mov	edi, dword ptr [rsp + 0x18]
	mov	edx, dword ptr [rsp + 0x48]
	call	inotify_add_watch
	mov	ebp, eax
	test	ebp, ebp
	jns	.label_685
	call	__errno_location
	mov	qword ptr [rsp + 0x90], rax
	mov	eax, dword ptr [rax]
	mov	r14d, eax
	or	eax, 0x10
	xor	edi, edi
	cmp	eax, 0x1c
	je	.label_736
	mov	esi, OFFSET FLAT:label_571
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rsp + 0x90], rax
	mov	rsi, qword ptr [r12]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, qword ptr [rsp + 0x90]
	call	error
.label_685:
	mov	rax, qword ptr [rsp + 0x30]
	mov	esi, dword ptr [rax + rbx + 0x44]
	test	esi, esi
	js	.label_748
	cmp	ebp, esi
	je	.label_729
.label_748:
	mov	rax, qword ptr [rsp + 0x38]
	lea	rbx, [rax + rbx + 0x44]
	test	esi, esi
	js	.label_751
	mov	edi, dword ptr [rsp + 0x18]
	call	inotify_rm_watch
	mov	rdi, qword ptr [rsp + 0x40]
	mov	rsi, r12
	call	hash_delete
.label_751:
	mov	dword ptr [rbx], ebp
	cmp	ebp, -1
	mov	rax, qword ptr [rsp + 0x60]
	je	.label_615
	mov	rdi, qword ptr [rsp + 0x40]
	mov	rsi, r12
	call	hash_delete
	mov	rbp, rax
	test	rbp, rbp
	je	.label_757
	cmp	rbp, r12
	je	.label_757
	cmp	dword ptr [rip + follow_mode],  1
	jne	.label_759
	xor	esi, esi
	mov	rdi, rbp
	call	recheck
.label_759:
	mov	dword ptr [rbp + 0x44], 0xffffffff
	mov	ebx, dword ptr [rbp + 0x38]
	mov	rsi, qword ptr [rbp]
	cmp	byte ptr [rsi], 0x2d
	jne	.label_762
	cmp	byte ptr [rsi + 1], 0
	jne	.label_762
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_182
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
.label_762:
	mov	edi, ebx
	call	close_fd
.label_757:
	mov	rdi, qword ptr [rsp + 0x40]
	mov	rsi, r12
	call	hash_insert
	test	rax, rax
	je	.label_771
.label_729:
	cmp	dword ptr [rip + follow_mode],  1
	jne	.label_499
	xor	esi, esi
	mov	rdi, r12
	call	recheck
	jmp	.label_499
.label_526:
	mov	r13, qword ptr [rsp]
	mov	eax, dword ptr [rdi]
	mov	dword ptr [rsp + 0x1a4], eax
	mov	rdi, qword ptr [rsp + 0x40]
	lea	rsi, [rsp + 0x160]
	call	hash_lookup
	mov	r12, rax
.label_499:
	mov	qword ptr [rsp], r13
	test	r12, r12
	mov	rax, qword ptr [rsp + 0x60]
	je	.label_615
	mov	rax, qword ptr [rsp + 0x88]
	mov	eax, dword ptr [rax + 4]
	test	ax, 0xe04
	je	.label_779
	test	ah, 4
	je	.label_722
	mov	esi, dword ptr [r12 + 0x44]
	mov	edi, dword ptr [rsp + 0x18]
	call	inotify_rm_watch
	mov	rdi, qword ptr [rsp + 0x40]
	mov	rsi, r12
	call	hash_delete
	jmp	.label_722
.label_779:
	mov	rdi, r12
	lea	rsi, [rsp + 0xb0]
	call	check_fspec
	mov	rax, qword ptr [rsp + 0x60]
	jmp	.label_615
.label_708:
	mov	rdi, qword ptr [rsp + 0x40]
	call	hash_free
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_792
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	call	__errno_location
	mov	dword ptr [rax], 0
.label_627:
	mov	r15d, dword ptr [rsp + 0x18]
.label_606:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_472
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	mov	rax, qword ptr [rsp + 0x38]
	lea	rbx, [rax + 0x48]
	mov	rbp, r12
.label_488:
	mov	esi, dword ptr [rbx - 4]
	cmp	esi, -1
	je	.label_735
	mov	edi, r15d
	call	inotify_rm_watch
.label_735:
	mov	esi, dword ptr [rbx]
	cmp	esi, -1
	je	.label_484
	mov	edi, r15d
	call	inotify_rm_watch
.label_484:
	add	rbx, 0x60
	dec	rbp
	jne	.label_488
	jmp	.label_466
.label_756:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_491
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_690:
	mov	eax, 1
	jmp	.label_497
.label_588:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_658
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
	mov	esi, r13d
	mov	rdx, rbx
	call	error
.label_548:
	mov	edi, OFFSET FLAT:label_514
	mov	esi, OFFSET FLAT:label_301
	mov	edx, 0x2e0
	mov	ecx, OFFSET FLAT:label_515
	call	__assert_fail
.label_1093:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	sub	rsp, 8
	mov	esi, OFFSET FLAT:label_201
	mov	edx, OFFSET FLAT:label_194
	mov	r8d, OFFSET FLAT:label_521
	mov	r9d, OFFSET FLAT:label_522
	mov	eax, 0
	push	0
	push	OFFSET FLAT:label_523
	push	OFFSET FLAT:label_524
	call	version_etc
	add	rsp, 0x20
	xor	edi, edi
	call	exit
.label_1094:
	xor	edi, edi
	call	usage
.label_470:
	mov	edi, 1
	call	usage
.label_535:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_546
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + optarg]
	call	quote
	jmp	.label_553
.label_755:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_512
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	esi, OFFSET FLAT:label_555
	call	quotearg_style
.label_553:
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_703:
	call	die_pipe
.label_672:
	call	xalloc_die
.label_666:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_179
	jmp	.label_465
.label_732:
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_555
	xor	eax, eax
	call	error
.label_791:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_565
.label_465:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_736:
	mov	esi, OFFSET FLAT:label_573
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	rdi, qword ptr [rsp + 0x40]
	call	hash_free
	mov	rax, qword ptr [rsp + 0x90]
	mov	dword ptr [rax], 0
	jmp	.label_581
.label_781:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_726
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [r13 + 8]
	call	quote
	mov	rbp, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_593
	xor	eax, eax
	mov	esi, r14d
	mov	rcx, rbx
	mov	r8, rbp
	call	error
.label_471:
	call	xalloc_die
.label_681:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_601
	jmp	.label_465
.label_699:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_464
	jmp	.label_465
.label_653:
	xor	edi, edi
	call	exit
.label_687:
	call	die_pipe
.label_771:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x408aca
	.globl sub_408aca
	.type sub_408aca, @function
sub_408aca:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408ad0
	.globl hash_get_entries
	.type hash_get_entries, @function
hash_get_entries:

	mov	r9, qword ptr [rdi]
	mov	r8, qword ptr [rdi + 8]
	xor	eax, eax
	cmp	r9, r8
	jae	.label_794
	xor	eax, eax
.label_796:
	cmp	qword ptr [r9], 0
	je	.label_795
	test	r9, r9
	je	.label_795
	mov	r8, r9
	nop	
.label_797:
	cmp	rax, rdx
	jae	.label_794
	mov	rcx, qword ptr [r8]
	mov	qword ptr [rsi + rax*8], rcx
	inc	rax
	mov	r8, qword ptr [r8 + 8]
	test	r8, r8
	jne	.label_797
	mov	r8, qword ptr [rdi + 8]
.label_795:
	add	r9, 0x10
	cmp	r9, r8
	jb	.label_796
.label_794:
	ret	
	.section	.text
	.align	32
	#Procedure 0x408b16
	.globl sub_408b16
	.type sub_408b16, @function
sub_408b16:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408b20

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_801
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_798
	cmp	dword ptr [rbp], 0x20
	jne	.label_798
.label_801:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_800
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_798:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_179
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_799
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_296
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_800:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_799:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_593
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408be0

	.globl dtotimespec
	.type dtotimespec, @function
dtotimespec:
	movabs	rcx, 0x7fffffffffffffff
	xor	edx, edx
	ucomisd	xmm0, qword ptr [rip + label_802]
	jbe	.label_803
	mov	edx, 0x3b9ac9ff
	movsd	xmm1, qword ptr [rip + label_804]
	ucomisd	xmm1, xmm0
	jbe	.label_805
	cvttsd2si	rsi, xmm0
	xorps	xmm1, xmm1
	cvtsi2sd	xmm1, rsi
	subsd	xmm0, xmm1
	mulsd	xmm0, qword ptr [rip + label_806]
	cvttsd2si	rax, xmm0
	xorps	xmm1, xmm1
	cvtsi2sd	xmm1, rax
	xor	ecx, ecx
	ucomisd	xmm0, xmm1
	seta	cl
	add	rcx, rax
	movabs	rdx, 0x112e0be826d694b3
	mov	rax, rcx
	imul	rdx
	mov	rax, rdx
	shr	rdx, 0x3f
	sar	rax, 0x1a
	add	rax, rdx
	imul	rdi, rax, 0x3b9aca00
	mov	rdx, rcx
	sub	rdx, rdi
	add	rdx, 0x3b9aca00
	sub	rcx, rdi
	cmovns	rdx, rcx
	add	rax, rsi
	sar	rcx, 0x3f
	add	rcx, rax
.label_805:
	mov	rax, rcx
	ret	
.label_803:
	inc	rcx
	mov	rax, rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x408c8d
	.globl sub_408c8d
	.type sub_408c8d, @function
sub_408c8d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408c90
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
	je	.label_807
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
.label_807:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x408cf1
	.globl sub_408cf1
	.type sub_408cf1, @function
sub_408cf1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408d00

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
	mov	dword ptr [rsp + 4], edx
	mov	r12, rsi
	mov	rbp, rdi
	mov	r14, qword ptr [r12]
	mov	al, 1
	cmp	r14, qword ptr [r12 + 8]
	jae	.label_808
	nop	word ptr cs:[rax + rax]
.label_812:
	mov	r13, qword ptr [r14]
	test	r13, r13
	je	.label_818
	mov	r15, qword ptr [r14 + 8]
	test	r15, r15
	je	.label_821
	mov	rsi, qword ptr [rbp + 0x10]
	nop	dword ptr [rax]
.label_816:
	mov	rbx, qword ptr [r15]
	mov	rdi, rbx
	call	qword ptr [rbp + 0x30]
	mov	rsi, qword ptr [rbp + 0x10]
	cmp	rax, rsi
	jae	.label_813
	mov	rdx, qword ptr [rbp]
	mov	rcx, qword ptr [r15 + 8]
	shl	rax, 4
	cmp	qword ptr [rdx + rax], 0
	je	.label_815
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [r15 + 8], rdi
	mov	qword ptr [rdx + rax + 8], r15
	jmp	.label_820
	.section	.text
	.align	32
	#Procedure 0x408d89
	.globl sub_408d89
	.type sub_408d89, @function
sub_408d89:

	nop	dword ptr [rax]
.label_815:
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [rbp + 0x18]
	mov	qword ptr [r15], 0
	mov	rax, qword ptr [rbp + 0x48]
	mov	qword ptr [r15 + 8], rax
	mov	qword ptr [rbp + 0x48], r15
.label_820:
	test	rcx, rcx
	mov	r15, rcx
	jne	.label_816
	mov	r13, qword ptr [r14]
.label_821:
	mov	qword ptr [r14 + 8], 0
	mov	eax, dword ptr [rsp + 4]
	test	al, al
	jne	.label_818
	mov	rsi, qword ptr [rbp + 0x10]
	mov	rdi, r13
	call	qword ptr [rbp + 0x30]
	mov	rbx, rax
	cmp	rbx, qword ptr [rbp + 0x10]
	jae	.label_811
	mov	r15, qword ptr [rbp]
	shl	rbx, 4
	cmp	qword ptr [r15 + rbx], 0
	je	.label_814
	mov	rax, qword ptr [rbp + 0x48]
	test	rax, rax
	je	.label_817
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rbp + 0x48], rcx
	jmp	.label_819
.label_814:
	add	r15, rbx
	mov	qword ptr [r15], r13
	inc	qword ptr [rbp + 0x18]
	jmp	.label_809
.label_817:
	mov	edi, 0x10
	call	malloc
	test	rax, rax
	je	.label_810
.label_819:
	mov	qword ptr [rax], r13
	mov	rcx, qword ptr [r15 + rbx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r15 + rbx + 8], rax
.label_809:
	mov	qword ptr [r14], 0
	dec	qword ptr [r12 + 0x18]
.label_818:
	add	r14, 0x10
	cmp	r14, qword ptr [r12 + 8]
	jb	.label_812
	mov	al, 1
.label_808:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_810:
	xor	eax, eax
	jmp	.label_808
.label_813:
	call	abort
.label_811:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x408e67
	.globl sub_408e67
	.type sub_408e67, @function
sub_408e67:

	nop	word ptr [rax + rax]
.label_1155:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_835
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
	jmp	.label_824
.label_1158:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_836
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
.label_824:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x408f07
	.globl sub_408f07
	.type sub_408f07, @function
sub_408f07:

	nop	dword ptr [rax + rax]
.label_1159:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_825
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
	jmp	.label_824
	.section	.text
	.align	32
	#Procedure 0x408f5e

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
	je	.label_830
	mov	edx, OFFSET FLAT:label_822
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_838
.label_830:
	mov	edx, OFFSET FLAT:label_827
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_838:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_834
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
	mov	esi, OFFSET FLAT:label_828
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_837
	jmp	qword ptr [(r12 * 8) + label_839]
.label_837:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_823
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
	jmp	.label_824
.label_1156:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_826
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
	jmp	.label_824
.label_1157:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_831
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
	jmp	.label_824
.label_1154:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_833
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
	jmp	.label_824
.label_1153:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_832
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
.label_1150:
	add	rsp, 8
	jmp	.label_824
.label_1151:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_840
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
.label_1152:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_829
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
	.section	.text
	.align	32
	#Procedure 0x4091d0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_257
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_841
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4091f5
	.globl sub_4091f5
	.type sub_4091f5, @function
sub_4091f5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409200
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_356]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_357]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_358]
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
	#Procedure 0x40926e
	.globl sub_40926e
	.type sub_40926e, @function
sub_40926e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x409270
	.globl mdir_name
	.type mdir_name, @function
mdir_name:

	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rdi
	xor	r15d, r15d
	cmp	byte ptr [r14], 0x2f
	sete	r15b
	call	last_component
	inc	rax
	sub	rax, r14
	nop	word ptr cs:[rax + rax]
.label_845:
	mov	rbx, rax
	lea	r12, [rbx - 1]
	cmp	r15, r12
	jae	.label_842
	lea	rax, [rbx - 1]
	cmp	byte ptr [r14 + rbx - 2], 0x2f
	je	.label_845
.label_842:
	xor	edi, edi
	cmp	rbx, 1
	sete	dil
	add	rdi, rbx
	call	malloc
	mov	r15, rax
	xor	eax, eax
	test	r15, r15
	je	.label_844
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, r12
	call	memcpy
	cmp	rbx, 1
	jne	.label_843
	mov	byte ptr [r15], 0x2e
	mov	r12d, 1
.label_843:
	mov	byte ptr [r15 + r12], 0
	mov	rax, r15
.label_844:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x409306
	.globl sub_409306
	.type sub_409306, @function
sub_409306:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409310

	.globl close_fd
	.type close_fd, @function
close_fd:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	ebx, edi
	lea	eax, [rbx + 1]
	cmp	eax, 2
	jb	.label_846
	mov	edi, ebx
	call	close
	test	eax, eax
	je	.label_846
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_847
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, rbp
	mov	r8d, ebx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	error
.label_846:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409382
	.globl sub_409382
	.type sub_409382, @function
sub_409382:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409390
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
	je	.label_849
	test	r14, r14
	je	.label_848
.label_849:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_848:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4093c6
	.globl sub_4093c6
	.type sub_4093c6, @function
sub_4093c6:

	nop	word ptr cs:[rax + rax]
.label_850:
	push	rax
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4093d6
	.globl sub_4093d6
	.type sub_4093d6, @function
sub_4093d6:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4093db
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_850
	test	rdx, rdx
	je	.label_850
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
	.section	.text
	.align	32
	#Procedure 0x409400

	.globl hash_get_n_entries
	.type hash_get_n_entries, @function
hash_get_n_entries:
	mov	rax, qword ptr [rdi + 0x20]
	ret	
	.section	.text
	.align	32
	#Procedure 0x409405
	.globl sub_409405
	.type sub_409405, @function
sub_409405:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409410

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
	je	.label_854
	cmp	eax, 1
	je	.label_855
	cmp	eax, 3
	jne	.label_857
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_851
.label_855:
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	jmp	.label_851
.label_854:
	mov	rbx, qword ptr [rsp]
	cmp	rbx, r13
	jb	.label_856
	cmp	rbx, r15
	jbe	.label_852
.label_856:
	call	__errno_location
	cmp	rbx, 0x40000000
	jb	.label_853
	mov	dword ptr [rax], 0x4b
	jmp	.label_851
.label_857:
	call	__errno_location
	jmp	.label_851
.label_853:
	mov	dword ptr [rax], 0x22
.label_851:
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
	mov	edx, OFFSET FLAT:label_593
	xor	eax, eax
	mov	edi, ebx
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	rbx, qword ptr [rsp]
.label_852:
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
	.align	32
	#Procedure 0x4094db
	.globl sub_4094db
	.type sub_4094db, @function
sub_4094db:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4094e0

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
	je	.label_858
	cmp	r15, -2
	jb	.label_858
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_858
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_858:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x409536
	.globl sub_409536
	.type sub_409536, @function
sub_409536:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409540

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
	ja	.label_859
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
	jmp	.label_860
.label_859:
	mov	eax, ebx
.label_860:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409581
	.globl sub_409581
	.type sub_409581, @function
sub_409581:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409590

	.globl dup_safer
	.type dup_safer, @function
dup_safer:
	xor	esi, esi
	mov	edx, 3
	xor	eax, eax
	jmp	rpl_fcntl
	.section	.text
	.align	32
	#Procedure 0x40959e
	.globl sub_40959e
	.type sub_40959e, @function
sub_40959e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4095a0

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
	jns	.label_861
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
.label_861:
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
	#Procedure 0x409608
	.globl sub_409608
	.type sub_409608, @function
sub_409608:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409610
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
	#Procedure 0x409628
	.globl sub_409628
	.type sub_409628, @function
sub_409628:

	nop	dword ptr [rax + rax]
.label_862:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x409635
	.globl sub_409635
	.type sub_409635, @function
sub_409635:

	nop	
	.section	.text
	.align	32
	#Procedure 0x409637
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_356]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_357]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_358]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_862
	test	rdx, rdx
	je	.label_862
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
	#Procedure 0x4096a0
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
	#Procedure 0x4096b9
	.globl sub_4096b9
	.type sub_4096b9, @function
sub_4096b9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4096c0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_863
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_865
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_863
.label_865:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_863
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_864
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_864:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_863:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	.section	.text
	.align	32
	#Procedure 0x409734
	.globl sub_409734
	.type sub_409734, @function
sub_409734:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409740

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_866
	test	rax, rax
	je	.label_867
.label_866:
	pop	rbx
	ret	
.label_867:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40975a
	.globl sub_40975a
	.type sub_40975a, @function
sub_40975a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409760

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
.label_869:
	mov	rax, rcx
	cmp	r14, rax
	jae	.label_868
	lea	rcx, [rax - 1]
	cmp	byte ptr [rbx + rax - 1], 0x2f
	je	.label_869
.label_868:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x40979b
	.globl sub_40979b
	.type sub_40979b, @function
sub_40979b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4097a0

	.globl xwrite_stdout
	.type xwrite_stdout, @function
xwrite_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rsi
	test	rbx, rbx
	je	.label_870
	mov	rcx, qword ptr [rip + stdout]
	mov	esi, 1
	mov	rdx, rbx
	call	fwrite_unlocked
	cmp	rax, rbx
	jb	.label_872
.label_870:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_872:
	mov	rdi, qword ptr [rip + stdout]
	call	clearerr_unlocked
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_871
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	esi, OFFSET FLAT:label_565
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rbx
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409820
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
	mov	rax, qword ptr [r12 + 8]
	xor	ebx, ebx
	cmp	r13, rax
	jae	.label_873
	xor	ebx, ebx
.label_877:
	mov	rdi, qword ptr [r13]
	test	rdi, rdi
	je	.label_875
	test	r13, r13
	je	.label_875
	mov	rsi, r14
	call	r15
	test	al, al
	je	.label_873
	mov	rbp, r13
	nop	word ptr cs:[rax + rax]
.label_874:
	mov	rbp, qword ptr [rbp + 8]
	test	rbp, rbp
	je	.label_876
	inc	rbx
	mov	rdi, qword ptr [rbp]
	mov	rsi, r14
	call	r15
	test	al, al
	jne	.label_874
	jmp	.label_873
	.section	.text
	.align	32
	#Procedure 0x40988c
	.globl sub_40988c
	.type sub_40988c, @function
sub_40988c:

	nop	dword ptr [rax]
.label_876:
	mov	rax, qword ptr [r12 + 8]
	inc	rbx
.label_875:
	add	r13, 0x10
	cmp	r13, rax
	jb	.label_877
.label_873:
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
	.align	32
	#Procedure 0x4098b3
	.globl sub_4098b3
	.type sub_4098b3, @function
sub_4098b3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4098c0
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x4098ca
	.globl sub_4098ca
	.type sub_4098ca, @function
sub_4098ca:

	nop	word ptr [rax + rax]
.label_879:
	add	rsi, 0x13
	movabs	r8, 0x6666666666666667
	nop	dword ptr [rax]
.label_878:
	mov	rax, rcx
	imul	r8
	mov	r10, rdx
	shr	r10, 0x3f
	sar	rdx, 2
	lea	edi, [rdx + r10]
	add	edi, edi
	lea	r9d, [rdi + rdi*4]
	mov	edi, ecx
	sub	edi, r9d
	mov	eax, 0x30
	sub	eax, edi
	mov	byte ptr [rsi], al
	add	rdx, r10
	add	rcx, 9
	dec	rsi
	cmp	rcx, 0x12
	mov	rcx, rdx
	ja	.label_878
	mov	byte ptr [rsi], 0x2d
.label_880:
	mov	rax, rsi
	ret	
	.section	.text
	.align	32
	#Procedure 0x409928
	.globl sub_409928
	.type sub_409928, @function
sub_409928:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409935

	.globl offtostr
	.type offtostr, @function
offtostr:
	mov	rcx, rdi
	mov	byte ptr [rsi + 0x14], 0
	test	rcx, rcx
	js	.label_879
	add	rsi, 0x14
	movabs	r8, 0x6666666666666667
	nop	word ptr [rax + rax]
.label_881:
	mov	rax, rcx
	imul	r8
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 2
	lea	edi, [rdx + rax]
	add	edi, edi
	lea	r9d, [rdi + rdi*4]
	mov	edi, ecx
	sub	edi, r9d
	add	edi, 0x30
	mov	byte ptr [rsi - 1], dil
	dec	rsi
	add	rdx, rax
	add	rcx, 9
	cmp	rcx, 0x12
	mov	rcx, rdx
	ja	.label_881
	jmp	.label_880
	.section	.text
	.align	32
	#Procedure 0x409990
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
	#Procedure 0x40999f
	.globl sub_40999f
	.type sub_40999f, @function
sub_40999f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4099a0
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
	#Procedure 0x409a61
	.globl sub_409a61
	.type sub_409a61, @function
sub_409a61:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409a70

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_882
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_296
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x409aa0
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	mov	eax, dword ptr [rip + label_883]
	mov	dword ptr [rdi + 0x10], eax
	movups	xmm0, xmmword ptr [rip + default_tuning]
	movups	xmmword ptr [rdi], xmm0
	ret	
	.section	.text
	.align	32
	#Procedure 0x409ab4
	.globl sub_409ab4
	.type sub_409ab4, @function
sub_409ab4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409ac0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_884
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_885
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_887
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_194
	mov	ecx, OFFSET FLAT:label_195
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_886
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	32
	#Procedure 0x409b34
	.globl sub_409b34
	.type sub_409b34, @function
sub_409b34:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409b40

	.globl die_pipe
	.type die_pipe, @function
die_pipe:
	push	rax
	mov	edi, 0xd
	call	raise
	mov	edi, 1
	call	exit
	.section	.text
	.align	32
	#Procedure 0x409b55
	.globl sub_409b55
	.type sub_409b55, @function
sub_409b55:

	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409b60
	.globl hash_get_n_buckets
	.type hash_get_n_buckets, @function
hash_get_n_buckets:

	mov	rax, qword ptr [rdi + 0x10]
	ret	
	.section	.text
	.align	32
	#Procedure 0x409b65
	.globl sub_409b65
	.type sub_409b65, @function
sub_409b65:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409b70

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
	#Procedure 0x409b87
	.globl sub_409b87
	.type sub_409b87, @function
sub_409b87:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409b90
	.globl hash_string
	.type hash_string, @function
hash_string:

	mov	al, byte ptr [rdi]
	xor	edx, edx
	test	al, al
	je	.label_888
	inc	rdi
	xor	edx, edx
	nop	dword ptr [rax]
.label_889:
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
	jne	.label_889
.label_888:
	mov	rax, rdx
	ret	
	.section	.text
	.align	32
	#Procedure 0x409bc3
	.globl sub_409bc3
	.type sub_409bc3, @function
sub_409bc3:

	nop	word ptr cs:[rax + rax]
.label_891:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_890
	call	__errno_location
	mov	dword ptr [rax], 0
.label_890:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409beb

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
	jne	.label_891
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_890
	test	cl, cl
	jne	.label_890
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_890
	.section	.text
	.align	32
	#Procedure 0x409c30

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
	je	.label_892
	test	ecx, ecx
	cmove	rbx, qword ptr [rsp + 8]
	mov	rax, rbx
.label_892:
	add	rsp, 0x10
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x409c5c
	.globl sub_409c5c
	.type sub_409c5c, @function
sub_409c5c:

	nop	dword ptr [rax]
.label_897:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_893
	mov	eax, OFFSET FLAT:label_894
	jmp	.label_895
	.section	.text
	.align	32
	#Procedure 0x409c6f
	.globl sub_409c6f
	.type sub_409c6f, @function
sub_409c6f:

	nop	word ptr cs:[rax + rax]
.label_902:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_896
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_896
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_896
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_896
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_896
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_896
	cmp	byte ptr [rax + 7], 0
	je	.label_897
.label_896:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_898
	mov	eax, OFFSET FLAT:label_899
.label_895:
	cmove	rax, rcx
.label_903:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409cc2

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
	jne	.label_903
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_902
	cmp	ecx, 0x55
	jne	.label_896
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_896
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_896
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_896
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_896
	cmp	byte ptr [rax + 5], 0
	jne	.label_896
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_900
	mov	eax, OFFSET FLAT:label_901
	jmp	.label_895
	.section	.text
	.align	32
	#Procedure 0x409d30

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0xd0
	mov	ebx, edi
	test	al, al
	je	.label_916
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_916:
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
	ja	.label_918
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_923
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_907
	test	esi, esi
	jne	.label_918
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_919
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_920
.label_918:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_921
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_907
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_908
.label_923:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_912
.label_907:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_913
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_914
.label_913:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_914:
	mov	edx, dword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
.label_915:
	call	fcntl
.label_912:
	mov	ebp, eax
.label_906:
	mov	eax, ebp
	add	rsp, 0xd0
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_908:
	cmp	eax, 6
	jne	.label_921
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_924
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_911
.label_921:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_904
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_910
.label_919:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_920:
	mov	edx, dword ptr [rax]
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	jmp	.label_915
.label_924:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_911:
	mov	r14d, dword ptr [rax]
	cmp	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  0
	js	.label_917
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	jns	.label_922
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_922
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	js	.label_906
	mov	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  0xffffffff
	mov	al, 1
	jmp	.label_909
.label_922:
	mov	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  1
	jmp	.label_906
.label_904:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_910:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_912
.label_917:
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	cmp	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  -1
	sete	al
.label_909:
	test	al, al
	je	.label_906
	test	ebp, ebp
	js	.label_906
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebp
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_905
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebp
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_906
.label_905:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	mov	ebp, 0xffffffff
	jmp	.label_906
	.section	.text
	.align	32
	#Procedure 0x409fc1
	.globl sub_409fc1
	.type sub_409fc1, @function
sub_409fc1:

	nop	word ptr cs:[rax + rax]
.label_925:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x409fd5
	.globl sub_409fd5
	.type sub_409fd5, @function
sub_409fd5:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409fd9
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_356]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_357]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_358]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_925
	test	rsi, rsi
	je	.label_925
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
.label_926:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40a045
	.globl sub_40a045
	.type sub_40a045, @function
sub_40a045:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a04b
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_356]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_357]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_358]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_926
	test	rdx, rdx
	je	.label_926
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
	.align	32
	#Procedure 0x40a0b0
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
	je	.label_928
	test	r15, r15
	je	.label_927
.label_928:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_927:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40a0f2
	.globl sub_40a0f2
	.type sub_40a0f2, @function
sub_40a0f2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a100
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
	je	.label_929
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
.label_929:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40a168
	.globl sub_40a168
	.type sub_40a168, @function
sub_40a168:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a170
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a178
	.globl sub_40a178
	.type sub_40a178, @function
sub_40a178:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a180

	.globl raw_hasher
	.type raw_hasher, @function
raw_hasher:
	rol	rdi, 0x3d
	xor	edx, edx
	mov	rax, rdi
	div	rsi
	mov	rax, rdx
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a190
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a198
	.globl sub_40a198
	.type sub_40a198, @function
sub_40a198:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a1a0

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
	je	.label_930
	mov	esi, OFFSET FLAT:label_931
	jmp	.label_932
.label_930:
	mov	esi, OFFSET FLAT:label_933
.label_932:
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
.label_940:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_938
.label_937:
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r15
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	mov	r8, r14
	call	error
	mov	edi, 1
	call	exit
.label_939:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_941
	jmp	.label_937
.label_934:
	lea	rsi, [rsp]
	mov	rdi, rbx
	call	offtostr
	mov	r14, rax
	cmp	ebp, 2
	je	.label_939
	cmp	ebp, 1
	je	.label_940
	test	ebp, ebp
	jne	.label_935
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_936
	jmp	.label_937
.label_935:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40a29a
	.globl sub_40a29a
	.type sub_40a29a, @function
sub_40a29a:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a2a9

	.globl xlseek
	.type xlseek, @function
xlseek:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x18
	mov	r15, rcx
	mov	ebp, edx
	mov	rbx, rsi
	call	lseek
	test	rax, rax
	js	.label_934
	add	rsp, 0x18
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a2d0
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_356]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_357]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_358]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_942
	test	rsi, rsi
	je	.label_942
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_942:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40a340
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
	#Procedure 0x40a373
	.globl sub_40a373
	.type sub_40a373, @function
sub_40a373:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a380
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_943
	test	rax, rax
	je	.label_944
.label_943:
	pop	rbx
	ret	
.label_944:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40a39a
	.globl sub_40a39a
	.type sub_40a39a, @function
sub_40a39a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a3a0

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
	mov	qword ptr [rsp + 0xa8], rax
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
	mov	qword ptr [rsp + 0x68], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 0
	xor	r9d, r9d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xa0], rcx
.label_970:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_967
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [(rcx * 8) + label_955]
.label_1124:
	mov	byte ptr [rsp + 7], r10b
	mov	edi, OFFSET FLAT:label_979
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_899
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10b, byte ptr [rsp + 7]
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_1125:
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_993
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_993
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_1010:
	cmp	r14, r11
	jae	.label_1032
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_1032:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_1010
.label_993:
	mov	rbp, qword ptr [rsp + 0x70]
	mov	rdi, rbp
	mov	rbx, r11
	call	strlen
	mov	r11, rbx
	mov	qword ptr [rsp + 0x40], rax
	mov	edi, r15d
	mov	qword ptr [rsp + 0x48], rbp
	mov	r13b, 1
	mov	sil, r12b
	mov	r8, qword ptr [rsp + 0x30]
	mov	r10b, byte ptr [rsp + 7]
	mov	r9d, dword ptr [rsp + 0x50]
	jmp	.label_1015
.label_1117:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_1015
.label_1120:
	mov	al, 1
.label_1118:
	mov	r12b, 1
.label_1121:
	test	r12b, 1
	mov	cl, 1
	je	.label_1025
	mov	ecx, eax
.label_1025:
	mov	al, cl
.label_1119:
	test	r12b, 1
	jne	.label_1027
	test	r11, r11
	je	.label_956
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_956:
	mov	r14d, 1
	jmp	.label_1031
.label_1027:
	xor	r14d, r14d
.label_1031:
	mov	ecx, OFFSET FLAT:label_899
	mov	qword ptr [rsp + 0x48], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x40], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_1015
.label_1122:
	test	r12b, 1
	jne	.label_1042
	test	r11, r11
	je	.label_1044
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_1044:
	mov	r14d, 1
	jmp	.label_1048
.label_1123:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_898
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	sil, 1
	jmp	.label_1015
.label_1042:
	xor	r14d, r14d
.label_1048:
	mov	eax, OFFSET FLAT:label_898
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_1015:
	cmp	qword ptr [rsp + 0xf0], 0
	setne	r12b
	cmp	edi, 2
	setne	r15b
	sete	al
	mov	ecx, r13d
	and	cl, 1
	sete	byte ptr [rsp + 0x2a]
	mov	edx, r15d
	mov	byte ptr [rsp + 0x17], cl
	and	dl, cl
	cmp	qword ptr [rsp + 0x40], 0
	setne	cl
	mov	ebx, ecx
	mov	byte ptr [rsp + 0x2e], dl
	and	bl, dl
	mov	byte ptr [rsp + 0x2f], bl
	mov	edx, esi
	and	dl, 1
	sete	bl
	and	al, dl
	mov	byte ptr [rsp + 0x2b], al
	mov	byte ptr [rsp + 6], dl
	and	r12b, dl
	mov	byte ptr [rsp + 0x2d], r12b
	or	bl, r15b
	mov	byte ptr [rsp + 0x1f], bl
	mov	byte ptr [rsp + 0x2c], r13b
	mov	qword ptr [rsp + 0xb0], rsi
	and	r13b, sil
	and	r13b, cl
	mov	byte ptr [rsp + 0x29], r13b
	xor	esi, esi
	mov	qword ptr [rsp + 0x38], rdi
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r12, rdi
	mov	rdi, r8
	jmp	.label_945
	.section	.text
	.align	32
	#Procedure 0x40a68d
	.globl sub_40a68d
	.type sub_40a68d, @function
sub_40a68d:

	nop	dword ptr [rax]
.label_1011:
	inc	rsi
.label_945:
	cmp	rbp, -1
	je	.label_989
	cmp	rsi, rbp
	jne	.label_990
	jmp	.label_992
	.section	.text
	.align	32
	#Procedure 0x40a6a3
	.globl sub_40a6a3
	.type sub_40a6a3, @function
sub_40a6a3:

	nop	word ptr cs:[rax + rax]
.label_989:
	mov	rcx, -1
	cmp	byte ptr [rdi + rsi], 0
	je	.label_998
.label_990:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_1058
	mov	rax, qword ptr [rsp + 0x40]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_1002
	cmp	rbp, -1
	jne	.label_1002
	mov	r15d, r10d
	mov	rbp, r11
	mov	r13d, r9d
	mov	r12, r14
	mov	r14, rsi
	call	strlen
	mov	rsi, r14
	mov	r14, r12
	mov	r9d, r13d
	mov	r12, qword ptr [rsp + 0x38]
	mov	r10d, r15d
	mov	r11, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_1002:
	cmp	rbx, rbp
	jbe	.label_1016
.label_1058:
	xor	r8d, r8d
.label_1039:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_1017
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_1021]
.label_1185:
	test	rsi, rsi
	jne	.label_982
	jmp	.label_1024
	.section	.text
	.align	32
	#Procedure 0x40a745
	.globl sub_40a745
	.type sub_40a745, @function
sub_40a745:

	nop	word ptr cs:[rax + rax]
.label_1016:
	mov	qword ptr [rsp + 0x20], rbp
	mov	ebp, r9d
	mov	r15d, r10d
	mov	rbx, r11
	mov	r12, rsi
	lea	rdi, [rdi + rsi]
	mov	rsi, qword ptr [rsp + 0x48]
	mov	rdx, qword ptr [rsp + 0x40]
	call	memcmp
	test	eax, eax
	sete	r8b
	jne	.label_1035
	cmp	byte ptr [rsp + 6], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_1039
	jmp	.label_973
.label_1035:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_1039
.label_1189:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_1004
	test	rsi, rsi
	jne	.label_1057
	cmp	rbp, 1
	je	.label_1024
	xor	r13d, r13d
	jmp	.label_965
.label_1178:
	cmp	byte ptr [rsp + 0x17], 0
	je	.label_1064
	cmp	byte ptr [rsp + 6], 0
	jne	.label_1061
	cmp	r12d, 2
	jne	.label_949
	mov	eax, r9d
	and	al, 1
	jne	.label_949
	cmp	r14, r11
	jae	.label_952
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_952:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_958
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_958:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_1056
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_1056:
	add	r14, 3
	mov	r9b, 1
.label_949:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_971
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_971:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_974
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_974
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_974
	cmp	r14, r11
	jae	.label_1030
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_1030:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_950
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_950:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_965
.label_1179:
	mov	bl, 0x62
	jmp	.label_1005
.label_1180:
	mov	cl, 0x74
	jmp	.label_995
.label_1181:
	mov	bl, 0x76
	jmp	.label_1005
.label_1182:
	mov	bl, 0x66
	jmp	.label_1005
.label_1183:
	mov	cl, 0x72
	jmp	.label_995
.label_1186:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_1009
	cmp	byte ptr [rsp + 6], 0
	jne	.label_976
	test	r11, r11
	sete	al
	mov	rcx, qword ptr [rsp + 0x68]
	mov	rdx, rcx
	test	rdx, rdx
	setne	cl
	or	cl, al
	cmove	rdx, r11
	mov	qword ptr [rsp + 0x68], rdx
	mov	eax, 0
	cmove	r11, rax
	cmp	r14, r11
	jae	.label_1014
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_1014:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_1023
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_1023:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_1026
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_1026:
	add	r14, 3
	xor	r9d, r9d
.label_1009:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_965
.label_1187:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_1033
	cmp	r12d, 2
	jne	.label_982
	cmp	byte ptr [rsp + 6], 0
	je	.label_982
	jmp	.label_976
.label_1188:
	cmp	r12d, 2
	jne	.label_1043
	cmp	byte ptr [rsp + 6], 0
	jne	.label_976
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_966
.label_1017:
	mov	dword ptr [rsp + 0x54], r8d
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xa8], 1
	jne	.label_1052
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
.label_1006:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2a]
	mov	qword ptr [rsp + 0x60], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 7]
	mov	r12, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x50]
	ja	.label_948
	test	r8b, r8b
	je	.label_948
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x54]
	jmp	.label_965
.label_1004:
	test	rsi, rsi
	jne	.label_972
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_972
.label_1024:
	mov	dl, 1
.label_1184:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_976
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_965:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_983
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_985
	jmp	.label_988
	.section	.text
	.align	32
	#Procedure 0x40aa94
	.globl sub_40aa94
	.type sub_40aa94, @function
sub_40aa94:

	nop	word ptr cs:[rax + rax]
.label_983:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_988
.label_985:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_994
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_966
	jmp	.label_1008
	.section	.text
	.align	32
	#Procedure 0x40aadd
	.globl sub_40aadd
	.type sub_40aadd, @function
sub_40aadd:

	nop	dword ptr [rax]
.label_988:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_1008
	jmp	.label_966
.label_994:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_1008
.label_1064:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_1011
	xor	r15d, r15d
	jmp	.label_982
.label_1043:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x29], 0
	je	.label_995
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_966
.label_995:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_976
.label_1005:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x17], 0
	mov	r13d, 0
	je	.label_965
	nop	word ptr cs:[rax + rax]
.label_1008:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_1061
	cmp	r12d, 2
	jne	.label_1029
	mov	eax, r9d
	and	al, 1
	jne	.label_1029
	cmp	r14, r11
	jae	.label_980
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_980:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_1037
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_1037:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_962
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_962:
	add	r14, 3
	mov	r9b, 1
.label_1029:
	cmp	r14, r11
	jae	.label_1046
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_1046:
	inc	r14
	jmp	.label_1050
.label_1052:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_1053
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_1053:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x60], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x58], rsi
.label_975:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_997
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_960
	cmp	rbp, -2
	je	.label_964
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2b]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_1049
	mov	rax, qword ptr [rsp + 0x60]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_1013:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_978
	bt	rsi, rdx
	jb	.label_987
.label_978:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_1013
.label_1049:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_1007
	xor	r13d, r13d
.label_1007:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x58]
	je	.label_975
	jmp	.label_1006
.label_974:
	xor	r13d, r13d
	jmp	.label_965
.label_972:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_965
.label_1033:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_982
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_982
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_982
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_1020
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_1019
	cmp	byte ptr [rsp + 6], 0
	jne	.label_1047
	cmp	r14, r11
	jae	.label_991
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_991:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_1045
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_1045:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_1034
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_1034:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_1018
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x3f
.label_1018:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_965
.label_982:
	xor	eax, eax
.label_1057:
	xor	r13d, r13d
	jmp	.label_965
.label_948:
	add	qword ptr [rsp + 0x60], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_1051
	.section	.text
	.align	32
	#Procedure 0x40adc2
	.globl sub_40adc2
	.type sub_40adc2, @function
sub_40adc2:

	nop	word ptr cs:[rax + rax]
.label_1012:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_1051:
	test	r8b, r8b
	je	.label_1059
	mov	ecx, dword ptr [rsp + 0x54]
	test	cl, 1
	je	.label_1060
	cmp	r14, r11
	jae	.label_1062
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_1062:
	inc	r14
	mov	dword ptr [rsp + 0x54], 0
	jmp	.label_1060
	.section	.text
	.align	32
	#Procedure 0x40ae0c
	.globl sub_40ae0c
	.type sub_40ae0c, @function
sub_40ae0c:

	nop	dword ptr [rax]
.label_1059:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_973
	cmp	r12d, 2
	jne	.label_954
	mov	eax, r9d
	and	al, 1
	jne	.label_954
	cmp	r14, r11
	jae	.label_959
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_959:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_961
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_961:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_968
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_968:
	add	r14, 3
	mov	r9b, 1
.label_954:
	cmp	r14, r11
	jae	.label_969
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_969:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_999
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_999:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_986
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_986:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_1060:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x60], rdx
	jbe	.label_966
	test	r9b, 1
	je	.label_953
	mov	ebx, eax
	and	bl, 1
	jne	.label_953
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_1003
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_1003:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_1054
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_1054:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_953:
	cmp	r14, r11
	jae	.label_1012
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_1012
	.section	.text
	.align	32
	#Procedure 0x40af13
	.globl sub_40af13
	.type sub_40af13, @function
sub_40af13:

	nop	word ptr cs:[rax + rax]
.label_966:
	test	r9b, 1
	je	.label_1001
	and	al, 1
	jne	.label_1001
	cmp	r14, r11
	jae	.label_1022
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_1022:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_1028
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_1028:
	add	r14, 2
	xor	r9d, r9d
.label_1001:
	mov	ebx, r15d
.label_1050:
	cmp	r14, r11
	jae	.label_1036
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_1036:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_1011
.label_960:
	xor	r13d, r13d
.label_997:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_1006
.label_964:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbp, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	jbe	.label_1041
	mov	rsi, qword ptr [rsp + 0x58]
.label_946:
	mov	rax, qword ptr [rsp + 0x60]
	cmp	byte ptr [rax + r12], 0
	je	.label_957
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_946
	xor	r13d, r13d
	jmp	.label_1006
.label_1041:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_1006
.label_957:
	xor	r13d, r13d
	jmp	.label_1006
.label_1020:
	xor	r13d, r13d
	jmp	.label_965
.label_1019:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_965
	.section	.text
	.align	32
	#Procedure 0x40afe8
	.globl sub_40afe8
	.type sub_40afe8, @function
sub_40afe8:

	nop	dword ptr [rax + rax]
.label_992:
	mov	rcx, rsi
.label_998:
	cmp	r12d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 6], 0
	je	.label_1063
	or	al, dl
	je	.label_947
.label_1063:
	cmp	r12d, 2
	setne	al
	cmp	byte ptr [rsp + 6], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x2c]
	mov	rsi, qword ptr [rsp + 0xb0]
	je	.label_951
	or	al, dl
	jne	.label_951
	test	r10b, 1
	jne	.label_963
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_951
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	qword ptr [rsp + 0x20], rcx
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x68]
	je	.label_970
.label_951:
	mov	rdx, qword ptr [rsp + 0x48]
	test	rdx, rdx
	je	.label_977
	cmp	byte ptr [rsp + 6], 0
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_981
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_981
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_996:
	cmp	r14, r11
	jae	.label_1055
	mov	byte ptr [rcx + r14], al
.label_1055:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_996
	jmp	.label_981
.label_1061:
	mov	qword ptr [rsp + 0x20], rbp
.label_973:
	mov	rdx, rdi
	jmp	.label_1000
.label_976:
	mov	qword ptr [rsp + 0x20], rbp
.label_987:
	mov	rdx, rdi
	mov	eax, 2
.label_984:
	mov	qword ptr [rsp + 0x38], rax
.label_1000:
	mov	r9d, dword ptr [rsp + 0x18]
	cmp	byte ptr [rsp + 0x17], 0
	mov	r8d, 4
	mov	rax, qword ptr [rsp + 0x38]
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
.label_1038:
	mov	r14, rax
.label_1040:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_947:
	mov	rdx, rdi
	mov	qword ptr [rsp + 0x20], rcx
	jmp	.label_1000
.label_963:
	sub	rsp, 8
	mov	r8d, 5
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 0x70]
	mov	rdx, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x20]
	push	qword ptr [rsp + 0x78]
	push	qword ptr [rsp + 0x88]
	push	qword ptr [rsp + 0x108]
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	jmp	.label_1038
.label_977:
	mov	rcx, qword ptr [rsp + 8]
.label_981:
	cmp	r14, r11
	jae	.label_1040
	mov	byte ptr [rcx + r14], 0
	jmp	.label_1040
.label_1047:
	mov	qword ptr [rsp + 0x20], rbp
	mov	rdx, rdi
	mov	eax, 5
	jmp	.label_984
.label_967:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40b1a7
	.globl sub_40b1a7
	.type sub_40b1a7, @function
sub_40b1a7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b215
	.globl sub_40b215
	.type sub_40b215, @function
sub_40b215:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b222
	.globl sub_40b222
	.type sub_40b222, @function
sub_40b222:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b246
	.globl sub_40b246
	.type sub_40b246, @function
sub_40b246:

	nop	word ptr cs:[rax + rax]
