	.section	.text
	.align	16
	#Procedure 0x401979
	.globl sub_401979
	.type sub_401979, @function
sub_401979:

	hlt	
	.section	.text
	.align	16
	#Procedure 0x40197a
	.globl sub_40197a
	.type sub_40197a, @function
sub_40197a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4019b2
	.globl sub_4019b2
	.type sub_4019b2, @function
sub_4019b2:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4019fa
	.globl sub_4019fa
	.type sub_4019fa, @function
sub_4019fa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401a1c
	.globl sub_401a1c
	.type sub_401a1c, @function
sub_401a1c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401a2d
	.globl sub_401a2d
	.type sub_401a2d, @function
sub_401a2d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401a46
	.globl sub_401a46
	.type sub_401a46, @function
sub_401a46:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401a50

	.globl fts_compare_ino
	.type fts_compare_ino, @function
fts_compare_ino:
	mov	rax, qword ptr [rdi]
	mov	rax, qword ptr [rax + 0x80]
	mov	rcx, qword ptr [rsi]
	mov	rcx, qword ptr [rcx + 0x80]
	cmp	rcx, rax
	sbb	edx, edx
	and	edx, 1
	cmp	rax, rcx
	mov	eax, 0xffffffff
	cmovae	eax, edx
	ret	
	.section	.text
	.align	16
	#Procedure 0x401a78
	.globl sub_401a78
	.type sub_401a78, @function
sub_401a78:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401a80

	.globl rpl_fts_open
	.type rpl_fts_open, @function
rpl_fts_open:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	r13, rdx
	mov	r12d, esi
	mov	r14, rdi
	cmp	r12d, 0x1000
	jae	.label_9
	mov	eax, r12d
	and	eax, 0x204
	cmp	eax, 0x204
	je	.label_9
	test	r12b, 0x12
	je	.label_9
	mov	edi, 0x80
	call	malloc
	mov	rbx, rax
	xor	eax, eax
	test	rbx, rbx
	je	.label_28
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx + 0x70], xmm0
	movups	xmmword ptr [rbx + 0x60], xmm0
	movups	xmmword ptr [rbx + 0x50], xmm0
	movups	xmmword ptr [rbx + 0x40], xmm0
	movups	xmmword ptr [rbx + 0x30], xmm0
	movups	xmmword ptr [rbx + 0x20], xmm0
	movups	xmmword ptr [rbx + 0x10], xmm0
	movups	xmmword ptr [rbx], xmm0
	mov	qword ptr [rbx + 0x40], r13
	mov	eax, r12d
	and	eax, 0xfffffdfb
	or	eax, 4
	test	r12b, 2
	cmove	eax, r12d
	mov	dword ptr [rbx + 0x48], eax
	mov	dword ptr [rbx + 0x2c], 0xffffff9c
	mov	rdi, qword ptr [r14]
	mov	ebp, 1
	test	rdi, rdi
	je	.label_35
	mov	rax, r14
	mov	r14, rbx
	mov	r15, rax
	lea	rbx, [rax + 8]
	xor	ebp, ebp
	nop	dword ptr [rax + rax]
.label_31:
	call	strlen
	cmp	rax, rbp
	cmova	rbp, rax
	mov	rdi, qword ptr [rbx]
	add	rbx, 8
	test	rdi, rdi
	jne	.label_31
	inc	rbp
	mov	rbx, r14
	mov	r14, r15
.label_35:
	cmp	rbp, 0x1000
	mov	esi, 0x1000
	cmova	rsi, rbp
	add	rsi, 0x100
	mov	qword ptr [rbx + 0x30], rsi
	xor	edi, edi
	call	realloc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_12
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rbx + 0x20], rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	r15, qword ptr [r14]
	xor	r14d, r14d
	test	r15, r15
	je	.label_14
	mov	edi, 0x110
	call	malloc
	mov	r14, rax
	test	r14, r14
	je	.label_27
	mov	byte ptr [r14 + 0x108], 0
	mov	qword ptr [r14 + 0x60], 0
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [r14 + 0x50], rax
	mov	qword ptr [r14 + 0x38], rbp
	mov	dword ptr [r14 + 0x40], 0
	mov	qword ptr [r14 + 0x18], 0
	mov	word ptr [r14 + 0x72], 0
	mov	word ptr [r14 + 0x74], 3
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14 + 0x20], xmm0
	mov	qword ptr [r14 + 0x58], -1
	mov	qword ptr [r14 + 0x68], -1
.label_14:
	mov	byte ptr [rsp + 0xf], 1
	test	r13, r13
	je	.label_16
	mov	rax, qword ptr [rsp + 0x10]
	mov	al, byte ptr [rax + 0x49]
	and	al, 4
	shr	al, 2
	mov	byte ptr [rsp + 0xf], al
.label_16:
	xor	ebp, ebp
	test	r15, r15
	mov	qword ptr [rsp + 0x28], r14
	je	.label_25
	and	r12d, 0x800
	xor	ebp, ebp
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	xor	ebx, ebx
	mov	qword ptr [rsp + 0x20], r13
	nop	word ptr cs:[rax + rax]
.label_32:
	mov	qword ptr [rsp + 0x30], rbp
	mov	rdi, r15
	call	strlen
	mov	rbp, rax
	test	r12d, r12d
	jne	.label_15
	cmp	rbp, 3
	jb	.label_15
	cmp	byte ptr [r15 + rbp - 1], 0x2f
	jne	.label_15
	nop	word ptr cs:[rax + rax]
.label_19:
	cmp	byte ptr [r15 + rbp - 2], 0x2f
	jne	.label_15
	dec	rbp
	cmp	rbp, 1
	ja	.label_19
	nop	word ptr cs:[rax + rax]
.label_15:
	mov	r14d, r12d
	lea	rdi, [rbp + 0x110]
	and	rdi, 0xfffffffffffffff8
	call	malloc
	mov	r12, rax
	test	r12, r12
	je	.label_17
	mov	qword ptr [rsp + 0x40], rbx
	mov	r13, r12
	add	r13, 0x108
	mov	rdi, r13
	mov	rsi, r15
	mov	rdx, rbp
	call	memcpy
	mov	byte ptr [r12 + rbp + 0x108], 0
	mov	qword ptr [r12 + 0x60], rbp
	mov	rdi, qword ptr [rsp + 0x10]
	mov	qword ptr [r12 + 0x50], rdi
	mov	rax, qword ptr [rdi + 0x20]
	mov	qword ptr [r12 + 0x38], rax
	mov	dword ptr [r12 + 0x40], 0
	mov	qword ptr [r12 + 0x18], 0
	mov	word ptr [r12 + 0x72], 0
	mov	word ptr [r12 + 0x74], 3
	xorps	xmm0, xmm0
	movups	xmmword ptr [r12 + 0x20], xmm0
	mov	qword ptr [r12 + 0x58], 0
	mov	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [r12 + 8], rax
	mov	qword ptr [r12 + 0x30], r13
	mov	rbx, qword ptr [rsp + 0x30]
	test	rbx, rbx
	setne	al
	and	al, byte ptr [rsp + 0xf]
	cmp	al, 1
	jne	.label_18
	mov	word ptr [r12 + 0x70], 0xb
	mov	qword ptr [r12 + 0xa8], 2
	jmp	.label_13
	.section	.text
	.align	16
	#Procedure 0x401d79
	.globl sub_401d79
	.type sub_401d79, @function
sub_401d79:

	nop	dword ptr [rax]
.label_18:
	xor	edx, edx
	mov	rsi, r12
	call	fts_stat
	mov	word ptr [r12 + 0x70], ax
.label_13:
	mov	r13, qword ptr [rsp + 0x20]
	test	r13, r13
	je	.label_26
	mov	rbp, r12
	mov	qword ptr [r12 + 0x10], rbx
	mov	r12, qword ptr [rsp + 0x18]
	jmp	.label_11
.label_26:
	mov	qword ptr [r12 + 0x10], 0
	test	rbx, rbx
	mov	rbp, r12
	je	.label_11
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rax + 0x10], r12
	mov	rbp, rbx
.label_11:
	mov	rbx, qword ptr [rsp + 0x40]
	inc	rbx
	mov	rax, qword ptr [rsp + 0x38]
	mov	r15, qword ptr [rax + 8]
	add	rax, 8
	mov	qword ptr [rsp + 0x38], rax
	test	r15, r15
	mov	qword ptr [rsp + 0x18], r12
	mov	r12d, r14d
	jne	.label_32
	test	r13, r13
	je	.label_25
	cmp	rbx, 2
	jb	.label_25
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, rbp
	mov	rdx, rbx
	call	fts_sort
	mov	rbp, rax
.label_25:
	mov	edi, 0x110
	call	malloc
	test	rax, rax
	je	.label_20
	mov	byte ptr [rax + 0x108], 0
	mov	qword ptr [rax + 0x60], 0
	mov	rbx, qword ptr [rsp + 0x10]
	mov	qword ptr [rax + 0x50], rbx
	mov	rcx, qword ptr [rbx + 0x20]
	mov	qword ptr [rax + 0x38], rcx
	mov	dword ptr [rax + 0x40], 0
	mov	qword ptr [rax + 0x18], 0
	mov	word ptr [rax + 0x72], 0
	mov	word ptr [rax + 0x74], 3
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + 0x20], xmm0
	mov	qword ptr [rbx], rax
	mov	qword ptr [rax + 0x10], rbp
	mov	word ptr [rax + 0x70], 9
	mov	qword ptr [rax + 0x58], 1
	movzx	eax, word ptr [rbx + 0x48]
	test	ax, 0x102
	je	.label_33
	mov	edi, 0x1f
	xor	esi, esi
	mov	edx, OFFSET FLAT:AD_hash
	mov	ecx, OFFSET FLAT:AD_compare
	mov	r8d, OFFSET FLAT:free
	call	hash_initialize
	mov	qword ptr [rbx + 0x58], rax
	test	rax, rax
	jne	.label_24
	jmp	.label_23
.label_9:
	call	__errno_location
	mov	dword ptr [rax], 0x16
.label_30:
	xor	eax, eax
.label_28:
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_12:
	mov	rdi, qword ptr [rbx + 0x20]
	jmp	.label_34
.label_17:
	mov	rbp, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x10]
	jmp	.label_23
.label_27:
	mov	rbx, qword ptr [rsp + 0x10]
	jmp	.label_29
.label_20:
	mov	rbx, qword ptr [rsp + 0x10]
	mov	qword ptr [rbx], 0
.label_23:
	mov	r14, rbx
	test	rbp, rbp
	je	.label_39
	nop	dword ptr [rax + rax]
.label_21:
	mov	rbx, qword ptr [rbp + 0x10]
	mov	rdi, qword ptr [rbp + 0x18]
	test	rdi, rdi
	je	.label_10
	call	closedir
.label_10:
	mov	rdi, rbp
	call	free
	test	rbx, rbx
	mov	rbp, rbx
	jne	.label_21
.label_39:
	mov	rdi, qword ptr [rsp + 0x28]
	call	free
	mov	rbx, r14
	mov	rbp, qword ptr [rbx + 0x20]
.label_29:
	mov	rdi, rbp
.label_34:
	call	free
	mov	rdi, rbx
	call	free
	jmp	.label_30
.label_33:
	mov	edi, 0x20
	call	malloc
	mov	qword ptr [rbx + 0x58], rax
	test	rax, rax
	je	.label_23
	mov	rdi, rax
	call	cycle_check_init
.label_24:
	mov	eax, dword ptr [rbx + 0x48]
	test	ax, 0x204
	jne	.label_22
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_37
	mov	edi, OFFSET FLAT:label_36
	xor	eax, eax
	mov	esi, edx
	call	open_safer
	jmp	.label_38
.label_37:
	mov	edi, dword ptr [rbx + 0x2c]
	mov	esi, OFFSET FLAT:label_36
	xor	eax, eax
	call	openat_safer
.label_38:
	mov	dword ptr [rbx + 0x28], eax
	test	eax, eax
	jns	.label_22
	or	byte ptr [rbx + 0x48], 4
.label_22:
	mov	rdi, rbx
	add	rdi, 0x60
	mov	esi, 0xffffffff
	call	i_ring_init
	mov	rax, rbx
	jmp	.label_28
	.section	.text
	.align	16
	#Procedure 0x401fc2
	.globl sub_401fc2
	.type sub_401fc2, @function
sub_401fc2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401fd0
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_40
	call	rpl_calloc
	test	rax, rax
	je	.label_40
	pop	rcx
	ret	
.label_40:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x401ff6
	.globl sub_401ff6
	.type sub_401ff6, @function
sub_401ff6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402000

	.globl AD_hash
	.type AD_hash, @function
AD_hash:
	mov	rax, qword ptr [rdi + 8]
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40200d
	.globl sub_40200d
	.type sub_40200d, @function
sub_40200d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402010
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
	jae	.label_44
	xor	ebx, ebx
.label_43:
	mov	rdi, qword ptr [r13]
	test	rdi, rdi
	je	.label_45
	test	r13, r13
	je	.label_45
	mov	rsi, r14
	call	r15
	test	al, al
	je	.label_44
	mov	rbp, r13
	nop	word ptr cs:[rax + rax]
.label_42:
	mov	rbp, qword ptr [rbp + 8]
	test	rbp, rbp
	je	.label_41
	inc	rbx
	mov	rdi, qword ptr [rbp]
	mov	rsi, r14
	call	r15
	test	al, al
	jne	.label_42
	jmp	.label_44
	.section	.text
	.align	16
	#Procedure 0x40207c
	.globl sub_40207c
	.type sub_40207c, @function
sub_40207c:

	nop	dword ptr [rax]
.label_41:
	mov	rax, qword ptr [r12 + 8]
	inc	rbx
.label_45:
	add	r13, 0x10
	cmp	r13, rax
	jb	.label_43
.label_44:
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
	#Procedure 0x4020a3
	.globl sub_4020a3
	.type sub_4020a3, @function
sub_4020a3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4020b0

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
	je	.label_46
	cmp	r15, -2
	jb	.label_46
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_46
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_46:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x402106
	.globl sub_402106
	.type sub_402106, @function
sub_402106:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402110

	.globl fts_sort
	.type fts_sort, @function
fts_sort:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r14, rdx
	mov	rbx, rsi
	mov	r12, rdi
	mov	r15, qword ptr [r12 + 0x40]
	cmp	qword ptr [r12 + 0x38], r14
	jae	.label_49
	lea	rsi, [r14 + 0x28]
	mov	qword ptr [r12 + 0x38], rsi
	mov	rax, rsi
	shr	rax, 0x3d
	jne	.label_50
	lea	r13, [r12 + 0x10]
	mov	rdi, qword ptr [r13]
	shl	rsi, 3
	call	realloc
	mov	rdi, rax
	test	rdi, rdi
	je	.label_50
	mov	qword ptr [r13], rdi
	jmp	.label_53
.label_50:
	mov	rdi, qword ptr [r12 + 0x10]
	call	free
	mov	qword ptr [r12 + 0x10], 0
	mov	qword ptr [r12 + 0x38], 0
	jmp	.label_55
.label_49:
	mov	rdi, qword ptr [r12 + 0x10]
	add	r12, 0x10
	mov	r13, r12
.label_53:
	test	rbx, rbx
	je	.label_58
	nop	dword ptr [rax]
.label_52:
	mov	qword ptr [rdi], rbx
	add	rdi, 8
	mov	rbx, qword ptr [rbx + 0x10]
	test	rbx, rbx
	jne	.label_52
	mov	rdi, qword ptr [r13]
.label_58:
	mov	edx, 8
	mov	rsi, r14
	mov	rcx, r15
	call	qsort
	mov	r8, qword ptr [r13]
	mov	rbx, qword ptr [r8]
	cmp	r14, 1
	mov	rcx, rbx
	je	.label_47
	mov	rcx, qword ptr [r8 + 8]
	mov	qword ptr [rbx + 0x10], rcx
	mov	rcx, r14
	add	rcx, -2
	je	.label_48
	lea	rsi, [r8 + 8]
	lea	rdx, [r14 - 3]
	and	ecx, 3
	cmp	rdx, 3
	jae	.label_54
	mov	rdx, rsi
	jmp	.label_57
.label_54:
	lea	rdi, [rcx + 2]
	sub	rdi, r14
	nop	dword ptr [rax + rax]
.label_56:
	mov	rdx, qword ptr [rsi]
	mov	rax, qword ptr [rsi + 8]
	mov	qword ptr [rdx + 0x10], rax
	mov	rax, qword ptr [rsi + 8]
	mov	rdx, qword ptr [rsi + 0x10]
	mov	qword ptr [rax + 0x10], rdx
	mov	rax, qword ptr [rsi + 0x10]
	mov	rdx, qword ptr [rsi + 0x18]
	mov	qword ptr [rax + 0x10], rdx
	lea	rdx, [rsi + 0x20]
	mov	rax, qword ptr [rsi + 0x18]
	mov	rsi, qword ptr [rsi + 0x20]
	mov	qword ptr [rax + 0x10], rsi
	add	rdi, 4
	mov	rsi, rdx
	jne	.label_56
.label_57:
	test	rcx, rcx
	je	.label_48
	add	rdx, 8
	neg	rcx
	nop	dword ptr [rax + rax]
.label_51:
	mov	rax, qword ptr [rdx - 8]
	mov	rsi, qword ptr [rdx]
	mov	qword ptr [rax + 0x10], rsi
	add	rdx, 8
	inc	rcx
	jne	.label_51
.label_48:
	mov	rcx, qword ptr [r8 + r14*8 - 8]
.label_47:
	mov	qword ptr [rcx + 0x10], 0
.label_55:
	mov	rax, rbx
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x40228e
	.globl sub_40228e
	.type sub_40228e, @function
sub_40228e:

	nop	
.label_61:
	mov	rax, qword ptr [rsi + 8]
	test	rax, rax
	je	.label_59
	cmp	qword ptr [rax + 0x58], 0
	js	.label_59
	mov	rcx, qword ptr [rdi + 0x58]
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_60
	mov	rdx, qword ptr [rcx]
	cmp	rdx, qword ptr [rsi + 0x80]
	jne	.label_59
	mov	rdx, qword ptr [rcx + 8]
	cmp	rdx, qword ptr [rsi + 0x78]
	jne	.label_59
	mov	rdx, qword ptr [rax + 0x78]
	mov	qword ptr [rcx + 8], rdx
	mov	rax, qword ptr [rax + 0x80]
	mov	qword ptr [rcx], rax
.label_59:
	add	rsp, 0x18
	ret	
	.section	.text
	.align	16
	#Procedure 0x4022d8

	.globl leave_dir
	.type leave_dir, @function
leave_dir:
	sub	rsp, 0x18
	movzx	eax, word ptr [rdi + 0x48]
	test	ax, 0x102
	je	.label_61
	movups	xmm0, xmmword ptr [rsi + 0x78]
	movaps	xmmword ptr [rsp], xmm0
	mov	rdi, qword ptr [rdi + 0x58]
	lea	rsi, [rsp]
	call	hash_delete
	test	rax, rax
	je	.label_60
	mov	rdi, rax
	call	free
	add	rsp, 0x18
	ret	
.label_60:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402312
	.globl sub_402312
	.type sub_402312, @function
sub_402312:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402320
	.globl hash_get_n_buckets
	.type hash_get_n_buckets, @function
hash_get_n_buckets:

	mov	rax, qword ptr [rdi + 0x10]
	ret	
	.section	.text
	.align	16
	#Procedure 0x402325
	.globl sub_402325
	.type sub_402325, @function
sub_402325:

	nop	word ptr cs:[rax + rax]
.label_63:
	mov	edi, eax
	call	close
.label_62:
	mov	rdi, rbx
	call	i_ring_empty
	test	al, al
	jne	.label_64
	mov	rdi, rbx
	call	i_ring_pop
	test	eax, eax
	jns	.label_63
	jmp	.label_62
.label_68:
	mov	esi, dword ptr [rbx + 0x2c]
	lea	rdi, [rbx + 0x60]
	call	i_ring_push
	test	eax, eax
	js	.label_66
	mov	edi, eax
	call	close
.label_66:
	mov	dword ptr [rbx + 0x2c], 0xffffff9c
.label_65:
	xor	eax, eax
.label_67:
	movzx	ebp, al
	add	rbx, 0x60
	jmp	.label_62
	.section	.text
	.align	16
	#Procedure 0x40237a
	.globl sub_40237a
	.type sub_40237a, @function
sub_40237a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402380

	.globl restore_initial_cwd
	.type restore_initial_cwd, @function
restore_initial_cwd:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	eax, dword ptr [rbx + 0x48]
	test	al, 4
	jne	.label_65
	test	ah, 2
	jne	.label_68
	mov	edi, dword ptr [rbx + 0x28]
	call	fchdir
	test	eax, eax
	setne	al
	jmp	.label_67
.label_64:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4023aa
	.globl sub_4023aa
	.type sub_4023aa, @function
sub_4023aa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4023b0
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	mov	eax, dword ptr [rip + label_69]
	mov	dword ptr [rdi + 0x10], eax
	movups	xmm0, xmmword ptr [rip + default_tuning]
	movups	xmmword ptr [rdi], xmm0
	ret	
	.section	.text
	.align	16
	#Procedure 0x4023c4
	.globl sub_4023c4
	.type sub_4023c4, @function
sub_4023c4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4023d0

	.globl dev_type_hash
	.type dev_type_hash, @function
dev_type_hash:
	mov	rax, qword ptr [rdi]
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4023dc
	.globl sub_4023dc
	.type sub_4023dc, @function
sub_4023dc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4023e0

	.globl save_cwd
	.type save_cwd, @function
save_cwd:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	qword ptr [rbx + 8], 0
	xor	ebp, ebp
	mov	edi, OFFSET FLAT:label_36
	mov	esi, 0x80000
	xor	eax, eax
	call	open_safer
	mov	dword ptr [rbx], eax
	test	eax, eax
	jns	.label_70
	xor	edi, edi
	xor	esi, esi
	call	getcwd
	mov	qword ptr [rbx + 8], rax
	cmp	rax, 1
	sbb	ebp, ebp
.label_70:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	rbp
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

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_71
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_71:
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
	#Procedure 0x4024b3
	.globl sub_4024b3
	.type sub_4024b3, @function
sub_4024b3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4024c0

	.globl dev_type_compare
	.type dev_type_compare, @function
dev_type_compare:
	mov	rax, qword ptr [rdi]
	cmp	rax, qword ptr [rsi]
	sete	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x4024ca
	.globl sub_4024ca
	.type sub_4024ca, @function
sub_4024ca:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4024d0
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
	jae	.label_77
	mov	rdx, rax
	not	rdx
	add	rdi, rdx
	shr	rdi, 4
	lea	rsi, [rdi + 1]
	mov	r8d, esi
	and	r8d, 1
	xor	ebx, ebx
	test	rdi, rdi
	je	.label_80
	sub	rsi, r8
	xor	ebx, ebx
	nop	dword ptr [rax]
.label_76:
	cmp	qword ptr [rax], 0
	je	.label_72
	xor	edi, edi
	mov	rdx, rax
	nop	dword ptr [rax + rax]
.label_78:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_78
	cmp	rdi, rbx
	cmova	rbx, rdi
.label_72:
	cmp	qword ptr [rax + 0x10], 0
	je	.label_74
	lea	rdx, [rax + 0x10]
	xor	edi, edi
.label_81:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_81
	cmp	rdi, rbx
	cmova	rbx, rdi
.label_74:
	add	rax, 0x20
	add	rsi, -2
	jne	.label_76
.label_80:
	test	r8, r8
	je	.label_77
	cmp	qword ptr [rax], 0
	je	.label_77
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_73:
	mov	rax, qword ptr [rax + 8]
	inc	rdx
	test	rax, rax
	jne	.label_73
	cmp	rdx, rbx
	cmova	rbx, rdx
.label_77:
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_79
	xor	eax, eax
	mov	rdi, r15
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_75
	xor	eax, eax
	mov	rdi, r15
	mov	rcx, r12
	call	__fprintf_chk
	movq	xmm1, r14
	movdqa	xmm2, xmmword ptr [rip + label_83]
	punpckldq	xmm1, xmm2
	movapd	xmm3, xmmword ptr [rip + label_84]
	subpd	xmm1, xmm3
	pshufd	xmm0, xmm1, 0x4e
	addpd	xmm0, xmm1
	mulsd	xmm0, qword ptr [rip + label_85]
	movq	xmm1, r12
	punpckldq	xmm1, xmm2
	subpd	xmm1, xmm3
	pshufd	xmm2, xmm1, 0x4e
	addpd	xmm2, xmm1
	divsd	xmm0, xmm2
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_86
	mov	al, 1
	mov	rdi, r15
	mov	rcx, r14
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_82
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
	.align	16
	#Procedure 0x40263f
	.globl sub_40263f
	.type sub_40263f, @function
sub_40263f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402640
	.globl hash_get_entries
	.type hash_get_entries, @function
hash_get_entries:

	mov	r9, qword ptr [rdi]
	mov	r8, qword ptr [rdi + 8]
	xor	eax, eax
	cmp	r9, r8
	jae	.label_87
	xor	eax, eax
.label_89:
	cmp	qword ptr [r9], 0
	je	.label_88
	test	r9, r9
	je	.label_88
	mov	r8, r9
	nop	
.label_90:
	cmp	rax, rdx
	jae	.label_87
	mov	rcx, qword ptr [r8]
	mov	qword ptr [rsi + rax*8], rcx
	inc	rax
	mov	r8, qword ptr [r8 + 8]
	test	r8, r8
	jne	.label_90
	mov	r8, qword ptr [rdi + 8]
.label_88:
	add	r9, 0x10
	cmp	r9, r8
	jb	.label_89
.label_87:
	ret	
	.section	.text
	.align	16
	#Procedure 0x402686
	.globl sub_402686
	.type sub_402686, @function
sub_402686:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402690
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
	#Procedure 0x40269f
	.globl sub_40269f
	.type sub_40269f, @function
sub_40269f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4026a0

	.globl openat_proc_name
	.type openat_proc_name, @function
openat_proc_name:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x20
	mov	r14, rdx
	mov	r15d, esi
	mov	rbx, rdi
	cmp	byte ptr [r14], 0
	je	.label_91
	mov	ecx, dword ptr [rip + openat_proc_name.proc_status]
	test	ecx, ecx
	jne	.label_99
	mov	edi, OFFSET FLAT:label_94
	mov	esi, 0x10900
	xor	eax, eax
	call	open
	mov	ebp, eax
	test	ebp, ebp
	js	.label_98
	lea	r12, [rsp]
	mov	esi, 1
	mov	edx, 0x20
	mov	ecx, OFFSET FLAT:label_92
	xor	eax, eax
	mov	rdi, r12
	mov	r8d, ebp
	call	__sprintf_chk
	xor	esi, esi
	mov	rdi, r12
	call	access
	cmp	eax, 1
	sbb	eax, eax
	not	eax
	or	eax, 1
	mov	dword ptr [rip + openat_proc_name.proc_status],  eax
	mov	edi, ebp
	call	close
	mov	ecx, dword ptr [rip + openat_proc_name.proc_status]
.label_99:
	xor	eax, eax
	test	ecx, ecx
	js	.label_93
	mov	rdi, r14
	call	strlen
	add	rax, 0x1b
	cmp	rax, 0xfc1
	jb	.label_97
	mov	rdi, rax
	call	malloc
	mov	rbx, rax
	xor	eax, eax
	test	rbx, rbx
	je	.label_93
.label_97:
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_96
	xor	eax, eax
	mov	rdi, rbx
	mov	r8d, r15d
	call	__sprintf_chk
	movsxd	rdi, eax
	add	rdi, rbx
	mov	rsi, r14
	call	strcpy
	jmp	.label_95
.label_98:
	mov	dword ptr [rip + openat_proc_name.proc_status],  0xffffffff
	xor	eax, eax
	jmp	.label_93
	.section	.text
	.align	16
	#Procedure 0x402793
	.globl sub_402793
	.type sub_402793, @function
sub_402793:

	nop	word ptr cs:[rax + rax]
.label_91:
	mov	byte ptr [rbx], 0
.label_95:
	mov	rax, rbx
.label_93:
	add	rsp, 0x20
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_101:
	mov	edi, dword ptr [rbx]
	call	openat_restore_fail
	.section	.text
	.align	16
	#Procedure 0x4027b7
	.globl sub_4027b7
	.type sub_4027b7, @function
sub_4027b7:

	nop	dword ptr [rax + rax]
.label_102:
	mov	dword ptr [rbx], 0x5f
	lea	rdi, [rsp]
	call	restore_cwd
	test	eax, eax
	jne	.label_101
	lea	rdi, [rsp]
	call	free_cwd
	mov	dword ptr [rbx], 0x5f
	jmp	.label_100
.label_105:
	call	__errno_location
	mov	edi, dword ptr [rax]
	call	openat_save_fail
.label_103:
	mov	edi, ebx
	call	fchdir
	mov	ebp, eax
	call	__errno_location
	mov	rbx, rax
	test	ebp, ebp
	je	.label_102
	mov	ebp, dword ptr [rbx]
	lea	rdi, [rsp]
	call	free_cwd
	mov	dword ptr [rbx], ebp
	jmp	.label_100
.label_104:
	lea	r15, [rsp]
	mov	rdi, r15
	mov	esi, ebx
	mov	rdx, rax
	call	openat_proc_name
	mov	r14, rax
	test	r14, r14
	je	.label_106
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	cmp	r14, r15
	je	.label_106
	mov	rdi, r14
	call	free
.label_106:
	lea	rdi, [rsp]
	call	save_cwd
	test	eax, eax
	jne	.label_105
	test	ebx, ebx
	js	.label_103
	cmp	dword ptr [rsp], ebx
	jne	.label_103
	lea	rdi, [rsp]
	call	free_cwd
	call	__errno_location
	mov	dword ptr [rax], 9
	jmp	.label_100
	.section	.text
	.align	16
	#Procedure 0x402876

	.globl lgetfileconat
	.type lgetfileconat, @function
lgetfileconat:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0xfc8
	mov	rax, rsi
	mov	ebx, edi
	cmp	ebx, -0x64
	je	.label_107
	cmp	byte ptr [rax], 0x2f
	jne	.label_104
.label_107:
	call	__errno_location
	mov	dword ptr [rax], 0x5f
.label_100:
	mov	eax, 0xffffffff
	add	rsp, 0xfc8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4028b0
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_108]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_109]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_110]
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
	#Procedure 0x40291e
	.globl sub_40291e
	.type sub_40291e, @function
sub_40291e:

	nop	
.label_111:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402925
	.globl sub_402925
	.type sub_402925, @function
sub_402925:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402934
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
	je	.label_111
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
	#Procedure 0x402990
	.globl hash_get_n_buckets_used
	.type hash_get_n_buckets_used, @function
hash_get_n_buckets_used:

	mov	rax, qword ptr [rdi + 0x18]
	ret	
	.section	.text
	.align	16
	#Procedure 0x402995
	.globl sub_402995
	.type sub_402995, @function
sub_402995:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4029a0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_112
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_113
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4029c5
	.globl sub_4029c5
	.type sub_4029c5, @function
sub_4029c5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4029d0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_118
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_121
.label_118:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_121:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_120
	cmp	r10d, 0x29
	jae	.label_117
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_119
.label_117:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_119:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_120
	cmp	r10d, 0x29
	jae	.label_115
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_116
.label_115:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_116:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_120
	cmp	r10d, 0x29
	jae	.label_126
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_114
.label_126:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_114:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_120
	cmp	r10d, 0x29
	jae	.label_124
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_125
.label_124:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_125:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_120
	cmp	r10d, 0x29
	jae	.label_122
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_123
.label_122:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_123:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_120
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_120
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_120
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_120
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_120:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	16
	#Procedure 0x402bb2
	.globl sub_402bb2
	.type sub_402bb2, @function
sub_402bb2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402bc0

	.globl i_ring_empty
	.type i_ring_empty, @function
i_ring_empty:
	mov	al, byte ptr [rdi + 0x1c]
	ret	
	.section	.text
	.align	16
	#Procedure 0x402bc4
	.globl sub_402bc4
	.type sub_402bc4, @function
sub_402bc4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402bd0

	.globl rpl_fts_read
	.type rpl_fts_read, @function
rpl_fts_read:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rdi
	mov	r12, qword ptr [r14]
	xor	r15d, r15d
	test	r12, r12
	je	.label_145
	mov	eax, dword ptr [r14 + 0x48]
	xor	r15d, r15d
	test	ah, 0x20
	jne	.label_145
	movzx	ecx, word ptr [r12 + 0x74]
	mov	word ptr [r12 + 0x74], 3
	cmp	ecx, 1
	je	.label_183
	movzx	edx, cx
	cmp	edx, 2
	jne	.label_134
	mov	ecx, dword ptr [r12 + 0x70]
	mov	esi, ecx
	and	esi, 0xfffe
	cmp	esi, 0xc
	jne	.label_139
	mov	edx, 1
	mov	rdi, r14
	mov	rsi, r12
	call	fts_stat
	mov	word ptr [r12 + 0x70], ax
	movzx	eax, ax
	cmp	eax, 1
	jne	.label_156
	mov	eax, dword ptr [r14 + 0x48]
	test	al, 4
	jne	.label_149
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_152
	mov	edi, OFFSET FLAT:label_36
	xor	eax, eax
	mov	esi, edx
	call	open_safer
	jmp	.label_159
.label_183:
	xor	edx, edx
	mov	rdi, r14
	mov	rsi, r12
	call	fts_stat
	mov	word ptr [r12 + 0x70], ax
	mov	r15, r12
	jmp	.label_145
.label_134:
	lea	r13, [r12 + 0x70]
	mov	ecx, dword ptr [r12 + 0x70]
	jmp	.label_168
.label_139:
	lea	r13, [r12 + 0x70]
.label_168:
	movzx	esi, cx
	cmp	esi, 1
	jne	.label_150
	cmp	edx, 4
	je	.label_170
	test	al, 0x40
	je	.label_174
	mov	rdx, qword ptr [r12 + 0x78]
	cmp	rdx, qword ptr [r14 + 0x18]
	jne	.label_170
.label_174:
	mov	rbx, qword ptr [r14 + 8]
	test	rbx, rbx
	je	.label_177
	test	ah, 0x10
	jne	.label_179
	mov	rcx, qword ptr [r12 + 0x30]
	mov	edx, 0xffffffff
	mov	rdi, r14
	mov	rsi, r12
	call	fts_safe_changedir
	test	eax, eax
	je	.label_128
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r12 + 0x40], eax
	or	byte ptr [r12 + 0x72], 1
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_133
	.section	.text
	.align	16
	#Procedure 0x402d24
	.globl sub_402d24
	.type sub_402d24, @function
sub_402d24:

	nop	word ptr cs:[rax + rax]
.label_150:
	mov	r15, qword ptr [r12 + 0x10]
	test	r15, r15
	je	.label_143
	mov	qword ptr [r14], r15
	mov	rdi, r12
	call	free
	cmp	qword ptr [r15 + 0x58], 0
	je	.label_147
	movzx	eax, word ptr [r15 + 0x74]
	cmp	eax, 4
	mov	r12, r15
	je	.label_150
	movzx	eax, ax
	cmp	eax, 2
	jne	.label_140
	mov	edx, 1
	mov	rdi, r14
	mov	rsi, r15
	call	fts_stat
	mov	word ptr [r15 + 0x70], ax
	movzx	eax, ax
	cmp	eax, 1
	jne	.label_136
	mov	eax, dword ptr [r14 + 0x48]
	test	al, 4
	jne	.label_136
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_160
	mov	edi, OFFSET FLAT:label_36
	xor	eax, eax
	mov	esi, edx
	call	open_safer
	jmp	.label_158
.label_176:
	mov	rcx, qword ptr [rax + 8]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	qword ptr [rax + 0x30], rcx
	mov	rax, qword ptr [rax + 0x10]
.label_133:
	test	rax, rax
	jne	.label_176
	jmp	.label_128
.label_170:
	test	ecx, 0x20000
	je	.label_178
	mov	edi, dword ptr [r12 + 0x44]
	call	close
.label_178:
	mov	rbx, qword ptr [r14 + 8]
	test	rbx, rbx
	je	.label_164
	nop	dword ptr [rax]
.label_138:
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_127
	call	closedir
.label_127:
	mov	rdi, rbx
	call	free
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_138
	mov	qword ptr [r14 + 8], 0
.label_164:
	mov	word ptr [r12 + 0x70], 6
.label_148:
	mov	rdi, r14
	mov	rsi, r12
	call	leave_dir
	mov	r15, r12
	jmp	.label_145
.label_143:
	mov	r15, qword ptr [r12 + 8]
	cmp	qword ptr [r15 + 0x18], 0
	je	.label_146
	mov	qword ptr [r14], r15
	mov	rax, qword ptr [r15 + 0x48]
	mov	rcx, qword ptr [r14 + 0x20]
	mov	byte ptr [rcx + rax], 0
	mov	esi, 3
	mov	rdi, r14
	call	fts_build
	mov	r15, rax
	test	r15, r15
	je	.label_155
	mov	rdi, r12
	call	free
	jmp	.label_140
.label_156:
	mov	r15, r12
	jmp	.label_144
.label_147:
	mov	rdi, r14
	call	restore_initial_cwd
	test	eax, eax
	mov	eax, dword ptr [r14 + 0x48]
	je	.label_166
	or	eax, 0x2000
	mov	dword ptr [r14 + 0x48], eax
	xor	r15d, r15d
	jmp	.label_145
.label_149:
	mov	r15, r12
	jmp	.label_144
.label_166:
	test	ax, 0x102
	je	.label_171
	mov	rdi, qword ptr [r14 + 0x58]
	test	rdi, rdi
	je	.label_167
	call	hash_free
	jmp	.label_167
.label_179:
	and	eax, 0xffffefff
	mov	dword ptr [r14 + 0x48], eax
	nop	word ptr cs:[rax + rax]
.label_130:
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_181
	call	closedir
.label_181:
	mov	rdi, rbx
	call	free
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_130
	mov	qword ptr [r14 + 8], 0
.label_177:
	mov	esi, 3
	mov	rdi, r14
	call	fts_build
	mov	qword ptr [r14 + 8], rax
	test	rax, rax
	je	.label_141
.label_128:
	mov	r15, qword ptr [r14 + 8]
	mov	qword ptr [r14 + 8], 0
	jmp	.label_140
.label_141:
	xor	r15d, r15d
	test	byte ptr [r14 + 0x49], 0x20
	jne	.label_145
	cmp	dword ptr [r12 + 0x40], 0
	je	.label_148
	movzx	eax, word ptr [r13]
	cmp	eax, 4
	je	.label_148
	mov	word ptr [r13], 7
	jmp	.label_148
.label_152:
	mov	edi, dword ptr [r14 + 0x2c]
	mov	esi, OFFSET FLAT:label_36
	xor	eax, eax
	call	openat_safer
.label_159:
	mov	dword ptr [r12 + 0x44], eax
	test	eax, eax
	js	.label_161
	or	byte ptr [r12 + 0x72], 2
	mov	r15, r12
	jmp	.label_144
.label_155:
	xor	r15d, r15d
	test	byte ptr [r14 + 0x49], 0x20
	jne	.label_145
	mov	r15, qword ptr [r12 + 8]
.label_146:
	mov	qword ptr [r14], r15
	mov	rdi, r12
	call	free
	cmp	qword ptr [r15 + 0x58], -1
	je	.label_173
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 0xb
	je	.label_137
	mov	rax, qword ptr [r15 + 0x48]
	mov	rcx, qword ptr [r14 + 0x20]
	mov	byte ptr [rcx + rax], 0
	cmp	qword ptr [r15 + 0x58], 0
	je	.label_175
	movzx	eax, word ptr [r15 + 0x72]
	test	al, 2
	jne	.label_180
	test	al, 1
	jne	.label_142
	mov	rsi, qword ptr [r15 + 8]
	mov	edx, 0xffffffff
	mov	ecx, OFFSET FLAT:label_184
	mov	rdi, r14
	call	fts_safe_changedir
	jmp	.label_153
.label_173:
	mov	rdi, r15
	call	free
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	qword ptr [r14], 0
	xor	r15d, r15d
	jmp	.label_145
.label_161:
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r12 + 0x40], eax
	mov	word ptr [r12 + 0x70], 7
	mov	r15, r12
	jmp	.label_144
.label_171:
	mov	rdi, qword ptr [r14 + 0x58]
	call	free
.label_167:
	mov	rdx, qword ptr [r15 + 0x60]
	mov	qword ptr [r15 + 0x48], rdx
	mov	rdi, qword ptr [r14 + 0x20]
	lea	r12, [r15 + 0x108]
	inc	rdx
	mov	rsi, r12
	call	memmove
	mov	esi, 0x2f
	mov	rdi, r12
	call	strrchr
	mov	rbx, rax
	test	rbx, rbx
	je	.label_162
	cmp	rbx, r12
	jne	.label_163
	cmp	byte ptr [r15 + 0x109], 0
	je	.label_162
.label_163:
	inc	rbx
	mov	rdi, rbx
	call	strlen
	mov	r13, rax
	lea	rdx, [r13 + 1]
	mov	rdi, r12
	mov	rsi, rbx
	call	memmove
	mov	qword ptr [r15 + 0x60], r13
.label_162:
	mov	rax, qword ptr [r14 + 0x20]
	mov	qword ptr [r15 + 0x38], rax
	mov	qword ptr [r15 + 0x30], rax
	movzx	eax, word ptr [r14 + 0x48]
	test	ax, 0x102
	je	.label_165
	mov	edi, 0x1f
	xor	esi, esi
	mov	edx, OFFSET FLAT:AD_hash
	mov	ecx, OFFSET FLAT:AD_compare
	mov	r8d, OFFSET FLAT:free
	call	hash_initialize
	mov	qword ptr [r14 + 0x58], rax
	jmp	.label_144
.label_165:
	mov	edi, 0x20
	call	malloc
	mov	qword ptr [r14 + 0x58], rax
	test	rax, rax
	je	.label_144
	mov	rdi, rax
	call	cycle_check_init
	jmp	.label_144
.label_175:
	mov	rdi, r14
	call	restore_initial_cwd
.label_153:
	test	eax, eax
	je	.label_142
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	or	byte ptr [r14 + 0x49], 0x20
	jmp	.label_142
.label_180:
	mov	eax, dword ptr [r14 + 0x48]
	lea	rbx, [r15 + 0x44]
	test	al, 4
	jne	.label_157
	test	ah, 2
	mov	ebp, dword ptr [r15 + 0x44]
	jne	.label_151
	mov	edi, ebp
	call	fchdir
	test	eax, eax
	je	.label_157
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	or	byte ptr [r14 + 0x49], 0x20
	jmp	.label_157
.label_160:
	mov	edi, dword ptr [r14 + 0x2c]
	mov	esi, OFFSET FLAT:label_36
	xor	eax, eax
	call	openat_safer
.label_158:
	mov	dword ptr [r15 + 0x44], eax
	test	eax, eax
	js	.label_182
	or	byte ptr [r15 + 0x72], 2
	jmp	.label_136
.label_182:
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	mov	word ptr [r15 + 0x70], 7
.label_136:
	mov	word ptr [r15 + 0x74], 3
.label_140:
	mov	rax, qword ptr [r14 + 0x20]
	mov	rcx, qword ptr [r15 + 8]
	mov	rdx, qword ptr [rcx + 0x38]
	mov	rcx, qword ptr [rcx + 0x48]
	lea	rsi, [rcx - 1]
	cmp	byte ptr [rdx + rcx - 1], 0x2f
	cmovne	rsi, rcx
	lea	rdi, [rax + rsi + 1]
	mov	byte ptr [rax + rsi], 0x2f
	lea	rsi, [r15 + 0x108]
	mov	rdx, qword ptr [r15 + 0x60]
	inc	rdx
	call	memmove
.label_144:
	mov	qword ptr [r14], r15
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 0xb
	jne	.label_154
	mov	rax, qword ptr [r15 + 0xa8]
	cmp	rax, 1
	je	.label_132
	cmp	rax, 2
	jne	.label_137
	mov	rbx, qword ptr [r15 + 8]
	cmp	qword ptr [rbx + 0x68], 0
	jne	.label_135
	mov	eax, dword ptr [r14 + 0x48]
	and	eax, 0x18
	cmp	eax, 0x18
	jne	.label_135
	mov	esi, dword ptr [r14 + 0x2c]
	mov	rdi, rbx
	call	filesystem_type
	cmp	rax, 0x52654973
	je	.label_132
	cmp	rax, 0x58465342
	je	.label_132
.label_135:
	xor	edx, edx
	mov	rdi, r14
	mov	rsi, r15
	call	fts_stat
	mov	word ptr [r15 + 0x70], ax
	mov	ecx, 0xf000
	and	ecx, dword ptr [r15 + 0x90]
	cmp	ecx, 0x4000
	jne	.label_154
	cmp	qword ptr [r15 + 0x58], 0
	je	.label_132
	mov	rax, qword ptr [rbx + 0x68]
	lea	rcx, [rax + 1]
	cmp	rcx, 2
	jb	.label_132
	dec	rax
	mov	qword ptr [rbx + 0x68], rax
.label_132:
	mov	ax, word ptr [r15 + 0x70]
.label_154:
	movzx	eax, ax
	cmp	eax, 1
	jne	.label_145
	cmp	qword ptr [r15 + 0x58], 0
	jne	.label_169
	mov	rax, qword ptr [r15 + 0x78]
	mov	qword ptr [r14 + 0x18], rax
.label_169:
	mov	rdi, r14
	mov	rsi, r15
	call	enter_dir
	test	al, al
	jne	.label_145
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	r15d, r15d
	jmp	.label_145
.label_151:
	mov	esi, dword ptr [r14 + 0x2c]
	cmp	esi, ebp
	jne	.label_131
	cmp	esi, -0x64
	jne	.label_137
.label_131:
	lea	rdi, [r14 + 0x60]
	call	i_ring_push
	test	eax, eax
	js	.label_172
	mov	edi, eax
	call	close
.label_172:
	mov	dword ptr [r14 + 0x2c], ebp
.label_157:
	mov	edi, dword ptr [rbx]
	call	close
.label_142:
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 2
	je	.label_129
	mov	eax, dword ptr [r15 + 0x40]
	xor	ecx, ecx
	cmp	eax, 0
	setne	cl
	or	ecx, 6
	cmp	eax, 0
	mov	word ptr [r15 + 0x70], cx
	jne	.label_129
	mov	rdi, r14
	mov	rsi, r15
	call	leave_dir
.label_129:
	xor	eax, eax
	test	byte ptr [r14 + 0x49], 0x20
	cmovne	r15, rax
.label_145:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_137:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403353
	.globl sub_403353
	.type sub_403353, @function
sub_403353:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403360

	.globl free_cwd
	.type free_cwd, @function
free_cwd:
	push	rbx
	mov	rbx, rdi
	mov	edi, dword ptr [rbx]
	test	edi, edi
	js	.label_185
	call	close
.label_185:
	mov	rdi, qword ptr [rbx + 8]
	pop	rbx
	jmp	free
	.section	.text
	.align	16
	#Procedure 0x403379
	.globl sub_403379
	.type sub_403379, @function
sub_403379:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403380
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_186
	test	rdx, rdx
	je	.label_186
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_186:
	push	rax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4033ab
	.globl sub_4033ab
	.type sub_4033ab, @function
sub_4033ab:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4033b0
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
	#Procedure 0x4033e3
	.globl sub_4033e3
	.type sub_4033e3, @function
sub_4033e3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4033f0
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x4033fa
	.globl sub_4033fa
	.type sub_4033fa, @function
sub_4033fa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403400

	.globl opendirat
	.type opendirat, @function
opendirat:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rcx
	or	edx, 0x90900
	xor	ebx, ebx
	xor	eax, eax
	call	openat_safer
	mov	ebp, eax
	test	ebp, ebp
	js	.label_188
	mov	edi, ebp
	call	fdopendir
	mov	rbx, rax
	test	rbx, rbx
	je	.label_187
	mov	dword ptr [r14], ebp
	jmp	.label_188
.label_187:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	xor	ebx, ebx
.label_188:
	mov	rax, rbx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40344f
	.globl sub_40344f
	.type sub_40344f, @function
sub_40344f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403450
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x40345e
	.globl sub_40345e
	.type sub_40345e, @function
sub_40345e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403460

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
	js	.label_189
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_192
	cmp	r12d, 0x7fffffff
	je	.label_194
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
	jne	.label_190
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_190:
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
.label_192:
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
	jbe	.label_195
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_191
.label_195:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_193
	mov	rdi, r14
	call	free
.label_193:
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
.label_191:
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
.label_189:
	call	abort
.label_194:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40361d
	.globl sub_40361d
	.type sub_40361d, @function
sub_40361d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403620
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
	#Procedure 0x403633
	.globl sub_403633
	.type sub_403633, @function
sub_403633:

	nop	word ptr cs:[rax + rax]
.label_198:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_196
	test	rax, rax
	je	.label_197
.label_196:
	pop	rbx
	ret	
.label_197:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403659
	.globl sub_403659
	.type sub_403659, @function
sub_403659:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403661
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_197
	imul	rbx, rsi
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
	#Procedure 0x403690
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x403698
	.globl sub_403698
	.type sub_403698, @function
sub_403698:

	nop	dword ptr [rax + rax]
.label_214:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_199
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
	#Procedure 0x4036d8
	.globl sub_4036d8
	.type sub_4036d8, @function
sub_4036d8:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4036e7

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_214
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_218
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
	mov	esi, OFFSET FLAT:label_213
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_204
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_210
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_217
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_219
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_220
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_221
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_222
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_207
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
	mov	esi, OFFSET FLAT:label_201
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_202
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_208
	mov	ecx, OFFSET FLAT:label_205
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_209
	mov	esi, OFFSET FLAT:label_216
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_209
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_215
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_209:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_203
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_205
	mov	ecx, OFFSET FLAT:label_206
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_211
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_206
	mov	ecx, OFFSET FLAT:label_212
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
	.section	.text
	.align	16
	#Procedure 0x403950

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
	je	.label_225
	test	rbx, rbx
	mov	eax, OFFSET FLAT:default_tuning
	cmove	rbx, rax
	mov	qword ptr [r15 + 0x28], rbx
	cmp	rbx, rax
	je	.label_230
	movss	xmm0, dword ptr [rbx + 8]
	ucomiss	xmm0, dword ptr [rip + label_235]
	jbe	.label_224
	movss	xmm1, dword ptr [rip + label_238]
	ucomiss	xmm1, xmm0
	jbe	.label_224
	movss	xmm1, dword ptr [rbx + 0xc]
	ucomiss	xmm1, dword ptr [rip + label_229]
	jbe	.label_224
	movss	xmm1, dword ptr [rbx]
	xorps	xmm2, xmm2
	ucomiss	xmm1, xmm2
	jb	.label_224
	addss	xmm1, dword ptr [rip + label_235]
	ucomiss	xmm0, xmm1
	jbe	.label_224
	movss	xmm0, dword ptr [rbx + 4]
	movss	xmm2, dword ptr [rip + label_223]
	ucomiss	xmm2, xmm0
	jb	.label_224
	ucomiss	xmm0, xmm1
	jbe	.label_224
.label_230:
	cmp	byte ptr [rbx + 0x10], 0
	jne	.label_237
	mov	eax, r12d
	and	eax, 1
	test	r12, r12
	js	.label_234
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, r12
	jmp	.label_236
.label_234:
	shr	r12, 1
	or	rax, r12
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rax
	addss	xmm0, xmm0
.label_236:
	divss	xmm0, dword ptr [rbx + 8]
	movss	xmm1, dword ptr [rip + label_227]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	r12, xmm0
	ucomiss	xmm0, xmm1
	cmovae	r12, rcx
	ucomiss	xmm0, dword ptr [rip + label_228]
	jae	.label_224
.label_237:
	cmp	r12, 0xa
	mov	ebx, 0xa
	cmovae	rbx, r12
	or	rbx, 1
	jmp	.label_226
	.section	.text
	.align	16
	#Procedure 0x403a9e
	.globl sub_403a9e
	.type sub_403a9e, @function
sub_403a9e:

	nop	
.label_231:
	add	rbx, 2
.label_226:
	cmp	rbx, -1
	je	.label_224
	cmp	rbx, 0xa
	mov	ecx, 3
	jb	.label_233
	mov	esi, 0xc
	mov	edi, 9
	mov	ecx, 3
	nop	dword ptr [rax + rax]
.label_232:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_233
	lea	rdi, [rdi + rsi + 4]
	add	rcx, 2
	add	rsi, 8
	cmp	rdi, rbx
	jb	.label_232
.label_233:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_231
	mov	rax, rbx
	shr	rax, 0x3c
	jne	.label_224
	mov	qword ptr [r15 + 0x10], rbx
	test	rbx, rbx
	je	.label_224
	mov	esi, 0x10
	mov	rdi, rbx
	call	rpl_calloc
	mov	qword ptr [r15], rax
	test	rax, rax
	je	.label_224
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
	jmp	.label_225
.label_224:
	mov	rdi, r15
	call	free
	xor	eax, eax
.label_225:
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
	#Procedure 0x403b68
	.globl sub_403b68
	.type sub_403b68, @function
sub_403b68:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403b70

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
	je	.label_239
	test	r15, r15
	je	.label_240
.label_239:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_240:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403bac
	.globl sub_403bac
	.type sub_403bac, @function
sub_403bac:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403bb0

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
	#Procedure 0x403bc7
	.globl sub_403bc7
	.type sub_403bc7, @function
sub_403bc7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403bd0
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
	#Procedure 0x403be8
	.globl sub_403be8
	.type sub_403be8, @function
sub_403be8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403bf0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_241
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_242
	test	rax, rax
	je	.label_241
.label_242:
	pop	rbx
	ret	
.label_241:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403c25
	.globl sub_403c25
	.type sub_403c25, @function
sub_403c25:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403c30
	.globl hash_clear
	.type hash_clear, @function
hash_clear:

	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	mov	r14, qword ptr [r15]
	mov	rax, qword ptr [r15 + 8]
	jmp	.label_246
	.section	.text
	.align	16
	#Procedure 0x403c41
	.globl sub_403c41
	.type sub_403c41, @function
sub_403c41:

	nop	word ptr cs:[rax + rax]
.label_245:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x18], xmm0
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x403c5e
	.globl sub_403c5e
	.type sub_403c5e, @function
sub_403c5e:

	nop	word ptr [rax + rax]
.label_247:
	add	r14, 0x10
.label_246:
	cmp	r14, rax
	jae	.label_245
	cmp	qword ptr [r14], 0
	je	.label_247
	mov	rbx, qword ptr [r14 + 8]
	mov	rax, qword ptr [r15 + 0x40]
	test	rax, rax
	setne	cl
	test	rbx, rbx
	je	.label_248
	nop	word ptr cs:[rax + rax]
.label_243:
	test	cl, 1
	je	.label_249
	mov	rdi, qword ptr [rbx]
	call	rax
	mov	rax, qword ptr [r15 + 0x40]
.label_249:
	mov	qword ptr [rbx], 0
	mov	rdx, qword ptr [rbx + 8]
	mov	rcx, qword ptr [r15 + 0x48]
	mov	qword ptr [rbx + 8], rcx
	mov	qword ptr [r15 + 0x48], rbx
	test	rax, rax
	setne	cl
	test	rdx, rdx
	mov	rbx, rdx
	jne	.label_243
.label_248:
	test	cl, cl
	je	.label_244
	mov	rdi, qword ptr [r14]
	call	rax
.label_244:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	mov	rax, qword ptr [r15 + 8]
	jmp	.label_247
	.section	.text
	.align	16
	#Procedure 0x403ce0

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
	ja	.label_250
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
	jmp	.label_251
.label_250:
	mov	eax, ebx
.label_251:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403d21
	.globl sub_403d21
	.type sub_403d21, @function
sub_403d21:

	nop	word ptr cs:[rax + rax]
.label_254:
	mov	dword ptr [rbx], 0x5f
	lea	rdi, [rsp]
	call	restore_cwd
	test	eax, eax
	jne	.label_253
	lea	rdi, [rsp]
	call	free_cwd
	mov	dword ptr [rbx], 0x5f
	jmp	.label_252
.label_253:
	mov	edi, dword ptr [rbx]
	call	openat_restore_fail
	.section	.text
	.align	16
	#Procedure 0x403d5e
	.globl sub_403d5e
	.type sub_403d5e, @function
sub_403d5e:

	nop	dword ptr [rax + rax]
.label_255:
	mov	edi, ebx
	call	fchdir
	mov	ebp, eax
	call	__errno_location
	mov	rbx, rax
	test	ebp, ebp
	je	.label_254
	mov	ebp, dword ptr [rbx]
	lea	rdi, [rsp]
	call	free_cwd
	mov	dword ptr [rbx], ebp
	jmp	.label_252
.label_258:
	call	__errno_location
	mov	edi, dword ptr [rax]
	call	openat_save_fail
.label_257:
	lea	r15, [rsp]
	mov	rdi, r15
	mov	esi, ebx
	mov	rdx, rax
	call	openat_proc_name
	mov	r14, rax
	test	r14, r14
	je	.label_256
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	cmp	r14, r15
	je	.label_256
	mov	rdi, r14
	call	free
.label_256:
	lea	rdi, [rsp]
	call	save_cwd
	test	eax, eax
	jne	.label_258
	test	ebx, ebx
	js	.label_255
	cmp	dword ptr [rsp], ebx
	jne	.label_255
	lea	rdi, [rsp]
	call	free_cwd
	call	__errno_location
	mov	dword ptr [rax], 9
	jmp	.label_252
	.section	.text
	.align	16
	#Procedure 0x403df6

	.globl lsetfileconat
	.type lsetfileconat, @function
lsetfileconat:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0xfc8
	mov	rax, rsi
	mov	ebx, edi
	cmp	ebx, -0x64
	je	.label_259
	cmp	byte ptr [rax], 0x2f
	jne	.label_257
.label_259:
	call	__errno_location
	mov	dword ptr [rax], 0x5f
.label_252:
	mov	eax, 0xffffffff
	add	rsp, 0xfc8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403e30

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
	jae	.label_273
	mov	rbp, qword ptr [r15]
	shl	rbx, 4
	mov	rsi, qword ptr [rbp + rbx]
	xor	r12d, r12d
	test	rsi, rsi
	je	.label_268
	lea	r13, [rbp + rbx]
	cmp	rsi, r14
	je	.label_279
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	test	al, al
	je	.label_260
	mov	r14, qword ptr [r13]
.label_279:
	mov	rax, qword ptr [rbp + rbx + 8]
	test	rax, rax
	je	.label_263
	movups	xmm0, xmmword ptr [rax]
	movups	xmmword ptr [r13], xmm0
	mov	qword ptr [rax], 0
	mov	rcx, qword ptr [r15 + 0x48]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r15 + 0x48], rax
	jmp	.label_265
.label_260:
	mov	rax, qword ptr [rbp + rbx + 8]
	xor	r12d, r12d
	test	rax, rax
	je	.label_268
	lea	rbx, [rbp + rbx + 8]
	xor	r12d, r12d
	nop	word ptr [rax + rax]
.label_277:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_274
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	mov	rcx, qword ptr [rbx]
	test	al, al
	jne	.label_276
	mov	rax, qword ptr [rcx + 8]
	add	rcx, 8
	test	rax, rax
	mov	rbx, rcx
	jne	.label_277
	jmp	.label_268
.label_263:
	mov	qword ptr [r13], 0
	jmp	.label_265
.label_274:
	mov	rcx, rax
	jmp	.label_262
.label_276:
	mov	r14, qword ptr [rcx]
.label_262:
	mov	rax, qword ptr [rcx + 8]
	mov	qword ptr [rbx], rax
	mov	qword ptr [rcx], 0
	mov	rax, qword ptr [r15 + 0x48]
	mov	qword ptr [rcx + 8], rax
	mov	qword ptr [r15 + 0x48], rcx
.label_265:
	xor	r12d, r12d
	test	r14, r14
	je	.label_268
	dec	qword ptr [r15 + 0x20]
	cmp	qword ptr [r13], 0
	jne	.label_267
	mov	rax, qword ptr [r15 + 0x18]
	dec	rax
	mov	qword ptr [r15 + 0x18], rax
	mov	ecx, eax
	and	ecx, 1
	test	rax, rax
	js	.label_272
	cvtsi2ss	xmm1, rax
	jmp	.label_275
.label_272:
	shr	rax, 1
	or	rcx, rax
	cvtsi2ss	xmm1, rcx
	addss	xmm1, xmm1
.label_275:
	mov	rcx, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x28]
	movss	xmm2, dword ptr [rax]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_278
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rcx
	jmp	.label_261
.label_278:
	shr	rcx, 1
	or	rdx, rcx
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_261:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm3, xmm1
	jbe	.label_267
	mov	ecx, OFFSET FLAT:default_tuning
	cmp	rax, rcx
	je	.label_269
	movss	xmm3, dword ptr [rax + 8]
	ucomiss	xmm3, dword ptr [rip + label_235]
	jbe	.label_271
	movss	xmm4, dword ptr [rip + label_238]
	ucomiss	xmm4, xmm3
	jbe	.label_271
	xorps	xmm4, xmm4
	ucomiss	xmm2, xmm4
	jb	.label_271
	movss	xmm4, dword ptr [rax + 0xc]
	ucomiss	xmm4, dword ptr [rip + label_229]
	jbe	.label_271
	movss	xmm4, dword ptr [rip + label_235]
	addss	xmm4, xmm2
	ucomiss	xmm3, xmm4
	jbe	.label_271
	movss	xmm3, dword ptr [rax + 4]
	movss	xmm5, dword ptr [rip + label_223]
	ucomiss	xmm5, xmm3
	jb	.label_271
	ucomiss	xmm3, xmm4
	ja	.label_264
.label_271:
	mov	qword ptr [r15 + 40], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	xorps	xmm2, xmm2
	jmp	.label_264
.label_269:
	mov	eax, OFFSET FLAT:default_tuning
.label_264:
	mulss	xmm2, xmm0
	ucomiss	xmm2, xmm1
	jbe	.label_267
	mulss	xmm0, dword ptr [rax + 4]
	cmp	byte ptr [rax + 0x10], 0
	jne	.label_270
	mulss	xmm0, dword ptr [rax + 8]
.label_270:
	movss	xmm1, dword ptr [rip + label_227]
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
	jne	.label_267
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_280
	nop	word ptr cs:[rax + rax]
.label_266:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_266
.label_280:
	mov	qword ptr [r15 + 0x48], 0
.label_267:
	mov	r12, r14
.label_268:
	mov	rax, r12
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_273:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4040c3
	.globl sub_4040c3
	.type sub_4040c3, @function
sub_4040c3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4040d0

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
	je	.label_300
	mov	rsi, qword ptr [r13 + 0x10]
	mov	rdi, r14
	call	qword ptr [r13 + 0x30]
	mov	rbp, rax
	cmp	rbp, qword ptr [r13 + 0x10]
	jae	.label_300
	mov	rbx, qword ptr [r13]
	shl	rbp, 4
	lea	r12, [rbx + rbp]
	mov	rsi, qword ptr [rbx + rbp]
	test	rsi, rsi
	je	.label_282
	cmp	rsi, r14
	je	.label_289
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	test	al, al
	je	.label_307
	mov	rax, qword ptr [r12]
.label_288:
	test	rax, rax
	jne	.label_294
	jmp	.label_282
.label_289:
	mov	rax, r14
.label_294:
	xor	ebp, ebp
	test	r15, r15
	je	.label_283
	mov	qword ptr [r15], rax
	jmp	.label_283
.label_307:
	mov	rax, qword ptr [rbx + rbp + 8]
	test	rax, rax
	je	.label_282
	lea	rbp, [rbx + rbp + 8]
	nop	word ptr [rax + rax]
.label_311:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_306
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	mov	rbp, qword ptr [rbp]
	test	al, al
	jne	.label_309
	mov	rax, qword ptr [rbp + 8]
	add	rbp, 8
	test	rax, rax
	jne	.label_311
.label_282:
	mov	rcx, qword ptr [r13 + 0x10]
	mov	rax, qword ptr [r13 + 0x18]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_285
	cvtsi2ss	xmm1, rax
	jmp	.label_291
.label_285:
	shr	rax, 1
	or	rdx, rax
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_291:
	mov	rax, qword ptr [r13 + 0x28]
	movss	xmm2, dword ptr [rax + 8]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_295
	cvtsi2ss	xmm0, rcx
	jmp	.label_302
.label_295:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_302:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm1, xmm3
	jbe	.label_305
	mov	ecx, OFFSET FLAT:default_tuning
	cmp	rax, rcx
	je	.label_308
	ucomiss	xmm2, dword ptr [rip + label_235]
	jbe	.label_281
	movss	xmm3, dword ptr [rip + label_238]
	ucomiss	xmm3, xmm2
	jbe	.label_281
	movss	xmm3, dword ptr [rax + 0xc]
	ucomiss	xmm3, dword ptr [rip + label_229]
	jbe	.label_281
	movss	xmm3, dword ptr [rax]
	xorps	xmm4, xmm4
	ucomiss	xmm3, xmm4
	jb	.label_281
	addss	xmm3, dword ptr [rip + label_235]
	ucomiss	xmm2, xmm3
	jbe	.label_281
	movss	xmm4, dword ptr [rax + 4]
	movss	xmm5, dword ptr [rip + label_223]
	ucomiss	xmm5, xmm4
	jb	.label_281
	ucomiss	xmm4, xmm3
	ja	.label_301
.label_281:
	mov	qword ptr [r13 + 40], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	movss	xmm2, dword ptr [rip + label_310]
	jmp	.label_301
.label_308:
	mov	eax, OFFSET FLAT:default_tuning
.label_301:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm1, xmm3
	jbe	.label_305
	cmp	byte ptr [rax + 0x10], 0
	mulss	xmm0, dword ptr [rax + 0xc]
	jne	.label_284
	mulss	xmm0, xmm2
.label_284:
	mov	ebp, 0xffffffff
	ucomiss	xmm0, dword ptr [rip + label_228]
	jae	.label_283
	movss	xmm1, dword ptr [rip + label_227]
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
	je	.label_283
	mov	rsi, qword ptr [r13 + 0x10]
	mov	rdi, r14
	call	qword ptr [r13 + 0x30]
	mov	rbp, rax
	cmp	rbp, qword ptr [r13 + 0x10]
	jae	.label_300
	mov	rbx, qword ptr [r13]
	shl	rbp, 4
	lea	r12, [rbx + rbp]
	mov	rsi, qword ptr [rbx + rbp]
	test	rsi, rsi
	je	.label_305
	cmp	rsi, r14
	mov	rax, r14
	je	.label_287
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	test	al, al
	je	.label_286
	mov	rax, qword ptr [r12]
.label_287:
	test	rax, rax
	jne	.label_290
.label_305:
	cmp	qword ptr [r12], 0
	je	.label_292
	mov	rax, qword ptr [r13 + 0x48]
	test	rax, rax
	je	.label_293
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [r13 + 0x48], rcx
	jmp	.label_296
.label_292:
	mov	qword ptr [r12], r14
	movdqu	xmm0, xmmword ptr [r13 + 0x18]
	paddq	xmm0, xmmword ptr [rip + label_298]
	movdqu	xmmword ptr [r13 + 0x18], xmm0
	jmp	.label_299
.label_293:
	mov	edi, 0x10
	call	malloc
	mov	ebp, 0xffffffff
	test	rax, rax
	je	.label_283
.label_296:
	mov	qword ptr [rax], r14
	mov	rcx, qword ptr [r12 + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r12 + 8], rax
	inc	qword ptr [r13 + 0x20]
.label_299:
	mov	ebp, 1
.label_283:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_306:
	mov	rax, r14
	jmp	.label_288
.label_309:
	mov	rax, qword ptr [rbp]
	jmp	.label_288
.label_286:
	mov	rax, qword ptr [rbx + rbp + 8]
	test	rax, rax
	je	.label_305
	lea	rbp, [rbx + rbp + 8]
.label_304:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_297
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	mov	rbp, qword ptr [rbp]
	test	al, al
	jne	.label_303
	mov	rax, qword ptr [rbp + 8]
	add	rbp, 8
	test	rax, rax
	jne	.label_304
	jmp	.label_305
.label_297:
	mov	rax, r14
	jmp	.label_287
.label_303:
	mov	rax, qword ptr [rbp]
	jmp	.label_287
.label_300:
	call	abort
.label_290:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404401
	.globl sub_404401
	.type sub_404401, @function
sub_404401:

	nop	word ptr cs:[rax + rax]
.label_313:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	.section	.text
	.align	16
	#Procedure 0x40441c
	.globl sub_40441c
	.type sub_40441c, @function
sub_40441c:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404428

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_313
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_312
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_313
.label_312:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_313
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_314
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_314:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404490

	.globl getfileconat
	.type getfileconat, @function
getfileconat:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0xfc8
	mov	rax, rsi
	mov	ebx, edi
	cmp	ebx, -0x64
	je	.label_318
	cmp	byte ptr [rax], 0x2f
	jne	.label_321
.label_318:
	call	__errno_location
	mov	dword ptr [rax], 0x5f
.label_316:
	mov	eax, 0xffffffff
	add	rsp, 0xfc8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_321:
	lea	r15, [rsp]
	mov	rdi, r15
	mov	esi, ebx
	mov	rdx, rax
	call	openat_proc_name
	mov	r14, rax
	test	r14, r14
	je	.label_319
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	cmp	r14, r15
	je	.label_319
	mov	rdi, r14
	call	free
.label_319:
	lea	rdi, [rsp]
	call	save_cwd
	test	eax, eax
	jne	.label_315
	test	ebx, ebx
	js	.label_317
	cmp	dword ptr [rsp], ebx
	jne	.label_317
	lea	rdi, [rsp]
	call	free_cwd
	call	__errno_location
	mov	dword ptr [rax], 9
	jmp	.label_316
.label_317:
	mov	edi, ebx
	call	fchdir
	mov	ebp, eax
	call	__errno_location
	mov	rbx, rax
	test	ebp, ebp
	je	.label_322
	mov	ebp, dword ptr [rbx]
	lea	rdi, [rsp]
	call	free_cwd
	mov	dword ptr [rbx], ebp
	jmp	.label_316
.label_322:
	mov	dword ptr [rbx], 0x5f
	lea	rdi, [rsp]
	call	restore_cwd
	test	eax, eax
	jne	.label_320
	lea	rdi, [rsp]
	call	free_cwd
	mov	dword ptr [rbx], 0x5f
	jmp	.label_316
.label_315:
	call	__errno_location
	mov	edi, dword ptr [rax]
	call	openat_save_fail
.label_320:
	mov	edi, dword ptr [rbx]
	call	openat_restore_fail
	.section	.text
	.align	16
	#Procedure 0x404588
	.globl sub_404588
	.type sub_404588, @function
sub_404588:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404590

	.globl get_root_dev_ino
	.type get_root_dev_ino, @function
get_root_dev_ino:
	push	rbx
	sub	rsp, 0x90
	mov	rbx, rdi
	lea	rdx, [rsp]
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_323
	call	__lxstat
	mov	ecx, eax
	xor	eax, eax
	test	ecx, ecx
	jne	.label_324
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rbx], rax
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rbx + 8], rax
	mov	rax, rbx
.label_324:
	add	rsp, 0x90
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4045d2
	.globl sub_4045d2
	.type sub_4045d2, @function
sub_4045d2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4045e0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_325
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_327
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_329
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_327
	mov	esi, OFFSET FLAT:label_328
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_330
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_330:
	mov	rbx, r14
.label_327:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_325:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_326
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404681
	.globl sub_404681
	.type sub_404681, @function
sub_404681:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404690
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
	#Procedure 0x404705
	.globl sub_404705
	.type sub_404705, @function
sub_404705:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404710

	.globl openat_restore_fail
	.type openat_restore_fail, @function
openat_restore_fail:
	push	rbp
	push	rbx
	push	rax
	mov	ebx, edi
	mov	ebp, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_331
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	edi, ebp
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404742
	.globl sub_404742
	.type sub_404742, @function
sub_404742:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404750

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
	jae	.label_336
	nop	word ptr cs:[rax + rax]
.label_334:
	mov	r13, qword ptr [r14]
	test	r13, r13
	je	.label_332
	mov	r15, qword ptr [r14 + 8]
	test	r15, r15
	je	.label_335
	mov	rsi, qword ptr [rbp + 0x10]
	nop	dword ptr [rax]
.label_344:
	mov	rbx, qword ptr [r15]
	mov	rdi, rbx
	call	qword ptr [rbp + 0x30]
	mov	rsi, qword ptr [rbp + 0x10]
	cmp	rax, rsi
	jae	.label_340
	mov	rdx, qword ptr [rbp]
	mov	rcx, qword ptr [r15 + 8]
	shl	rax, 4
	cmp	qword ptr [rdx + rax], 0
	je	.label_342
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [r15 + 8], rdi
	mov	qword ptr [rdx + rax + 8], r15
	jmp	.label_343
	.section	.text
	.align	16
	#Procedure 0x4047d9
	.globl sub_4047d9
	.type sub_4047d9, @function
sub_4047d9:

	nop	dword ptr [rax]
.label_342:
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [rbp + 0x18]
	mov	qword ptr [r15], 0
	mov	rax, qword ptr [rbp + 0x48]
	mov	qword ptr [r15 + 8], rax
	mov	qword ptr [rbp + 0x48], r15
.label_343:
	test	rcx, rcx
	mov	r15, rcx
	jne	.label_344
	mov	r13, qword ptr [r14]
.label_335:
	mov	qword ptr [r14 + 8], 0
	mov	eax, dword ptr [rsp + 4]
	test	al, al
	jne	.label_332
	mov	rsi, qword ptr [rbp + 0x10]
	mov	rdi, r13
	call	qword ptr [rbp + 0x30]
	mov	rbx, rax
	cmp	rbx, qword ptr [rbp + 0x10]
	jae	.label_338
	mov	r15, qword ptr [rbp]
	shl	rbx, 4
	cmp	qword ptr [r15 + rbx], 0
	je	.label_341
	mov	rax, qword ptr [rbp + 0x48]
	test	rax, rax
	je	.label_345
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rbp + 0x48], rcx
	jmp	.label_333
.label_341:
	add	r15, rbx
	mov	qword ptr [r15], r13
	inc	qword ptr [rbp + 0x18]
	jmp	.label_337
.label_345:
	mov	edi, 0x10
	call	malloc
	test	rax, rax
	je	.label_339
.label_333:
	mov	qword ptr [rax], r13
	mov	rcx, qword ptr [r15 + rbx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r15 + rbx + 8], rax
.label_337:
	mov	qword ptr [r14], 0
	dec	qword ptr [r12 + 0x18]
.label_332:
	add	r14, 0x10
	cmp	r14, qword ptr [r12 + 8]
	jb	.label_334
	mov	al, 1
.label_336:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_339:
	xor	eax, eax
	jmp	.label_336
.label_340:
	call	abort
.label_338:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4048b7
	.globl sub_4048b7
	.type sub_4048b7, @function
sub_4048b7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4048c0
	.globl hash_get_first
	.type hash_get_first, @function
hash_get_first:

	xor	eax, eax
	cmp	qword ptr [rdi + 0x20], 0
	je	.label_346
	mov	rcx, qword ptr [rdi]
	mov	rdx, qword ptr [rdi + 8]
	jmp	.label_349
	.section	.text
	.align	16
	#Procedure 0x4048d2
	.globl sub_4048d2
	.type sub_4048d2, @function
sub_4048d2:

	nop	word ptr cs:[rax + rax]
.label_348:
	add	rcx, 0x10
.label_349:
	cmp	rcx, rdx
	jae	.label_347
	mov	rax, qword ptr [rcx]
	test	rax, rax
	je	.label_348
.label_346:
	ret	
.label_347:
	push	rax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4048f8
	.globl sub_4048f8
	.type sub_4048f8, @function
sub_4048f8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404900
	.globl rpl_fts_children
	.type rpl_fts_children, @function
rpl_fts_children:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r12d, esi
	mov	r13, rdi
	mov	eax, r12d
	or	eax, 0x1000
	cmp	eax, 0x1000
	jne	.label_350
	mov	r15, qword ptr [r13]
	call	__errno_location
	mov	r14, rax
	mov	dword ptr [r14], 0
	xor	eax, eax
	test	byte ptr [r13 + 0x49], 0x20
	jne	.label_353
	movzx	ecx, word ptr [r15 + 0x70]
	xor	eax, eax
	cmp	ecx, 1
	je	.label_355
	movzx	ecx, cx
	cmp	ecx, 9
	jne	.label_353
	mov	rax, qword ptr [r15 + 0x10]
	jmp	.label_353
.label_350:
	call	__errno_location
	mov	dword ptr [rax], 0x16
	xor	eax, eax
	jmp	.label_353
.label_355:
	mov	rbx, qword ptr [r13 + 8]
	test	rbx, rbx
	je	.label_364
	nop	dword ptr [rax]
.label_359:
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_363
	call	closedir
.label_363:
	mov	rdi, rbx
	call	free
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_359
.label_364:
	mov	ebx, 1
	cmp	r12d, 0x1000
	jne	.label_361
	or	byte ptr [r13 + 0x49], 0x10
	mov	ebx, 2
.label_361:
	cmp	qword ptr [r15 + 0x58], 0
	jne	.label_351
	mov	rax, qword ptr [r15 + 0x30]
	cmp	byte ptr [rax], 0x2f
	je	.label_351
	mov	eax, dword ptr [r13 + 0x48]
	test	al, 4
	jne	.label_351
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_357
	mov	edi, OFFSET FLAT:label_36
	xor	eax, eax
	mov	esi, edx
	call	open_safer
	jmp	.label_354
.label_351:
	mov	rdi, r13
	mov	esi, ebx
	call	fts_build
	mov	qword ptr [r13 + 8], rax
.label_353:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_357:
	mov	edi, dword ptr [r13 + 0x2c]
	mov	esi, OFFSET FLAT:label_36
	xor	eax, eax
	call	openat_safer
.label_354:
	mov	r15d, eax
	test	r15d, r15d
	js	.label_356
	mov	rdi, r13
	mov	esi, ebx
	call	fts_build
	mov	qword ptr [r13 + 8], rax
	test	byte ptr [r13 + 0x49], 2
	jne	.label_365
	mov	edi, r15d
	call	fchdir
	test	eax, eax
	je	.label_352
	mov	ebx, dword ptr [r14]
	mov	edi, r15d
	call	close
	mov	dword ptr [r14], ebx
	xor	eax, eax
	jmp	.label_353
.label_356:
	mov	qword ptr [r13 + 8], 0
	xor	eax, eax
	jmp	.label_353
.label_365:
	mov	esi, dword ptr [r13 + 0x2c]
	cmp	esi, r15d
	jne	.label_366
	cmp	esi, -0x64
	jne	.label_360
.label_366:
	lea	rdi, [r13 + 0x60]
	call	i_ring_push
	test	eax, eax
	js	.label_358
	mov	edi, eax
	call	close
.label_358:
	mov	dword ptr [r13 + 0x2c], r15d
	jmp	.label_362
.label_352:
	mov	edi, r15d
	call	close
.label_362:
	mov	rax, qword ptr [r13 + 8]
	jmp	.label_353
.label_360:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404aa7
	.globl sub_404aa7
	.type sub_404aa7, @function
sub_404aa7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404ab0

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x404ac1
	.globl sub_404ac1
	.type sub_404ac1, @function
sub_404ac1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404ad0
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
	#Procedure 0x404ae8
	.globl sub_404ae8
	.type sub_404ae8, @function
sub_404ae8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404af0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_373
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_370
	cmp	dword ptr [rbp], 0x20
	jne	.label_370
.label_373:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_369
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_371:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_372
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
.label_370:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_367
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_371
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_368
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_369:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	.section	.text
	.align	16
	#Procedure 0x404bb0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_374
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_376:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_376
.label_374:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_378
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_377], OFFSET FLAT:slot0
.label_378:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_375
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_375:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x404c41
	.globl sub_404c41
	.type sub_404c41, @function
sub_404c41:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404c50
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x404c5a
	.globl sub_404c5a
	.type sub_404c5a, @function
sub_404c5a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404c60

	.globl AD_compare
	.type AD_compare, @function
AD_compare:
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	jne	.label_379
	mov	rax, qword ptr [rdi]
	cmp	rax, qword ptr [rsi]
	sete	al
	ret	
.label_379:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x404c77
	.globl sub_404c77
	.type sub_404c77, @function
sub_404c77:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404c80

	.globl i_ring_push
	.type i_ring_push, @function
i_ring_push:
	movzx	ecx, byte ptr [rdi + 0x1c]
	xor	ecx, 1
	add	ecx, dword ptr [rdi + 0x14]
	mov	edx, ecx
	and	edx, 3
	mov	eax, dword ptr [rdi + rdx*4]
	mov	dword ptr [rdi + rdx*4], esi
	mov	dword ptr [rdi + 0x14], edx
	cmp	edx, dword ptr [rdi + 0x18]
	jne	.label_380
	mov	dl, byte ptr [rdi + 0x1c]
	xor	dl, 1
	movzx	edx, dl
	add	edx, ecx
	and	edx, 3
	mov	dword ptr [rdi + 0x18], edx
.label_380:
	mov	byte ptr [rdi + 0x1c], 0
	ret	
	.section	.text
	.align	16
	#Procedure 0x404cb3
	.globl sub_404cb3
	.type sub_404cb3, @function
sub_404cb3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404cc0

	.globl raw_comparator
	.type raw_comparator, @function
raw_comparator:
	cmp	rdi, rsi
	sete	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x404cc7
	.globl sub_404cc7
	.type sub_404cc7, @function
sub_404cc7:

	nop	word ptr [rax + rax]
.label_381:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x404cd3
	.globl sub_404cd3
	.type sub_404cd3, @function
sub_404cd3:

	nop	
	.section	.text
	.align	16
	#Procedure 0x404cd5

	.globl cycle_warning_required
	.type cycle_warning_required, @function
cycle_warning_required:
	mov	ecx, dword ptr [rdi + 0x48]
	and	ecx, 0x11
	mov	al, 1
	cmp	ecx, 0x10
	je	.label_382
	cmp	ecx, 0x11
	jne	.label_381
	cmp	qword ptr [rsi + 0x58], 0
	setne	al
.label_382:
	ret	
	.section	.text
	.align	16
	#Procedure 0x404cf0

	.globl restore_cwd
	.type restore_cwd, @function
restore_cwd:
	mov	eax, dword ptr [rdi]
	test	eax, eax
	js	.label_383
	mov	edi, eax
	jmp	fchdir
.label_383:
	mov	rdi, qword ptr [rdi + 8]
	jmp	chdir_long
	.section	.text
	.align	16
	#Procedure 0x404d06
	.globl sub_404d06
	.type sub_404d06, @function
sub_404d06:

	nop	word ptr cs:[rax + rax]
.label_384:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x404d15
	.globl sub_404d15
	.type sub_404d15, @function
sub_404d15:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404d1b

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_385
	test	rax, rax
	je	.label_384
.label_385:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x404d30
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_108]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_109]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_110]
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
	#Procedure 0x404d84
	.globl sub_404d84
	.type sub_404d84, @function
sub_404d84:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404d90

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
	jne	.label_387
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_386
	test	cl, cl
	jne	.label_386
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_386
.label_387:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_386
	call	__errno_location
	mov	dword ptr [rax], 0
.label_386:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_388:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404df5
	.globl sub_404df5
	.type sub_404df5, @function
sub_404df5:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404dfd

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
	je	.label_388
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
	#Procedure 0x404e60

	.globl cycle_check
	.type cycle_check, @function
cycle_check:
	cmp	dword ptr [rdi + 0x18], 0x95f616
	jne	.label_389
	mov	rcx, qword ptr [rdi + 0x10]
	test	rcx, rcx
	je	.label_390
	mov	rax, qword ptr [rsi + 8]
	cmp	rax, qword ptr [rdi]
	jne	.label_390
	mov	rdx, qword ptr [rsi]
	mov	al, 1
	cmp	rdx, qword ptr [rdi + 8]
	je	.label_391
.label_390:
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x10], rdx
	test	rdx, rcx
	jne	.label_392
	mov	al, 1
	test	rdx, rdx
	je	.label_391
	mov	rax, qword ptr [rsi]
	mov	qword ptr [rdi + 8], rax
	mov	rax, qword ptr [rsi + 8]
	mov	qword ptr [rdi], rax
.label_392:
	xor	eax, eax
.label_391:
	ret	
.label_389:
	push	rax
	mov	edi, OFFSET FLAT:label_393
	mov	esi, OFFSET FLAT:label_394
	mov	edx, 0x3c
	mov	ecx, OFFSET FLAT:label_395
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x404ec5
	.globl sub_404ec5
	.type sub_404ec5, @function
sub_404ec5:

	nop	word ptr cs:[rax + rax]
.label_396:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404ed5
	.globl sub_404ed5
	.type sub_404ed5, @function
sub_404ed5:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404edb
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_108]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_109]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_110]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_396
	test	rdx, rdx
	je	.label_396
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
	#Procedure 0x404f40

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_397
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_397
	test	byte ptr [rbx + 1], 1
	je	.label_397
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_397:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	16
	#Procedure 0x404f73
	.globl sub_404f73
	.type sub_404f73, @function
sub_404f73:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404f80

	.globl fts_safe_changedir
	.type fts_safe_changedir, @function
fts_safe_changedir:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	rbx, rcx
	mov	r13d, edx
	mov	r12, rsi
	mov	r15, rdi
	test	rbx, rbx
	je	.label_398
	movzx	edx, byte ptr [rbx]
	mov	ecx, 0x2e
	mov	eax, 0x2e
	sub	eax, edx
	jne	.label_407
	movzx	eax, byte ptr [rbx + 1]
	sub	ecx, eax
	mov	eax, ecx
	jne	.label_407
	movzx	eax, byte ptr [rbx + 2]
	neg	eax
.label_407:
	test	eax, eax
	sete	r14b
	jmp	.label_411
.label_398:
	xor	r14d, r14d
.label_411:
	mov	eax, dword ptr [r15 + 0x48]
	test	al, 4
	jne	.label_412
	test	r13d, r13d
	mov	qword ptr [rsp], r12
	jns	.label_413
	mov	ecx, r14d
	xor	cl, 1
	jne	.label_413
	and	eax, 0x200
	je	.label_413
	lea	rbp, [r15 + 0x60]
	mov	rdi, rbp
	call	i_ring_empty
	test	al, al
	jne	.label_413
	mov	rdi, rbp
	call	i_ring_pop
	xor	ecx, ecx
	test	eax, eax
	cmovns	rbx, rcx
	cmovns	r13d, eax
	mov	r14b, 1
.label_413:
	test	r13d, r13d
	mov	r12d, r13d
	jns	.label_404
	mov	eax, dword ptr [r15 + 0x48]
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_406
	xor	eax, eax
	mov	rdi, rbx
	mov	esi, edx
	call	open_safer
	jmp	.label_410
.label_412:
	xor	ebp, ebp
	test	r13d, r13d
	js	.label_405
	and	eax, 0x200
	je	.label_405
	mov	edi, r13d
	call	close
	jmp	.label_405
.label_406:
	mov	edi, dword ptr [r15 + 0x2c]
	xor	eax, eax
	mov	rsi, rbx
	call	openat_safer
.label_410:
	mov	r12d, eax
	mov	ebp, 0xffffffff
	test	r12d, r12d
	js	.label_405
.label_404:
	mov	eax, dword ptr [r15 + 0x48]
	test	al, 2
	jne	.label_400
	test	rbx, rbx
	je	.label_403
	cmp	byte ptr [rbx], 0x2e
	jne	.label_403
	cmp	byte ptr [rbx + 1], 0x2e
	jne	.label_403
	cmp	byte ptr [rbx + 2], 0
	jne	.label_403
.label_400:
	lea	rdx, [rsp + 8]
	mov	edi, 1
	mov	esi, r12d
	call	__fxstat
	test	eax, eax
	jne	.label_409
	mov	rcx, qword ptr [rsp]
	mov	rax, qword ptr [rcx + 0x78]
	cmp	rax, qword ptr [rsp + 8]
	jne	.label_408
	mov	rax, qword ptr [rcx + 0x80]
	cmp	rax, qword ptr [rsp + 0x10]
	jne	.label_408
	mov	eax, dword ptr [r15 + 0x48]
.label_403:
	test	ah, 2
	jne	.label_414
	mov	edi, r12d
	call	fchdir
	mov	ebp, eax
	jmp	.label_415
.label_414:
	mov	esi, dword ptr [r15 + 0x2c]
	cmp	esi, r12d
	jne	.label_416
	cmp	esi, -0x64
	jne	.label_402
.label_416:
	test	r14b, r14b
	je	.label_417
	test	al, 4
	jne	.label_399
	test	esi, esi
	js	.label_399
	mov	edi, esi
	jmp	.label_401
.label_408:
	call	__errno_location
	mov	dword ptr [rax], 2
.label_409:
	mov	ebp, 0xffffffff
.label_415:
	test	r13d, r13d
	jns	.label_405
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, r12d
	call	close
	mov	dword ptr [rbx], r14d
	jmp	.label_405
.label_417:
	lea	rdi, [r15 + 0x60]
	call	i_ring_push
	test	eax, eax
	js	.label_399
	mov	edi, eax
.label_401:
	call	close
.label_399:
	mov	dword ptr [r15 + 0x2c], r12d
	xor	ebp, ebp
.label_405:
	mov	eax, ebp
	add	rsp, 0x98
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_402:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405169
	.globl sub_405169
	.type sub_405169, @function
sub_405169:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405170

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
	#Procedure 0x405189
	.globl sub_405189
	.type sub_405189, @function
sub_405189:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405190

	.globl raw_hasher
	.type raw_hasher, @function
raw_hasher:
	rol	rdi, 0x3d
	xor	edx, edx
	mov	rax, rdi
	div	rsi
	mov	rax, rdx
	ret	
.label_421:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_418
	mov	eax, OFFSET FLAT:label_419
	jmp	.label_420
	.section	.text
	.align	16
	#Procedure 0x4051af
	.globl sub_4051af
	.type sub_4051af, @function
sub_4051af:

	nop	word ptr cs:[rax + rax]
.label_427:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_422
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_422
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_422
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_422
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_422
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_422
	cmp	byte ptr [rax + 7], 0
	je	.label_421
.label_422:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_423
	mov	eax, OFFSET FLAT:label_424
.label_420:
	cmove	rax, rcx
.label_428:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405202

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
	jne	.label_428
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_427
	cmp	ecx, 0x55
	jne	.label_422
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_422
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_422
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_422
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_422
	cmp	byte ptr [rax + 5], 0
	jne	.label_422
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_425
	mov	eax, OFFSET FLAT:label_426
	jmp	.label_420
	.section	.text
	.align	16
	#Procedure 0x405270

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0xd0
	mov	ebx, edi
	test	al, al
	je	.label_449
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_449:
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
	ja	.label_431
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_443
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_430
	test	esi, esi
	jne	.label_431
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_432
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_433
.label_431:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_434
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_430
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_442
.label_443:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_429
.label_430:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_446
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_447
.label_446:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_447:
	mov	edx, dword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
.label_448:
	call	fcntl
.label_429:
	mov	ebp, eax
.label_435:
	mov	eax, ebp
	add	rsp, 0xd0
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_442:
	cmp	eax, 6
	jne	.label_434
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_437
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_441
.label_434:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_440
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_445
.label_432:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_433:
	mov	edx, dword ptr [rax]
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	jmp	.label_448
.label_437:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_441:
	mov	r14d, dword ptr [rax]
	cmp	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  0
	js	.label_438
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	jns	.label_436
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_436
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	js	.label_435
	mov	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  0xffffffff
	mov	al, 1
	jmp	.label_444
.label_436:
	mov	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  1
	jmp	.label_435
.label_440:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_445:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_429
.label_438:
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	cmp	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  -1
	sete	al
.label_444:
	test	al, al
	je	.label_435
	test	ebp, ebp
	js	.label_435
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebp
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_439
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebp
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_435
.label_439:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	mov	ebp, 0xffffffff
	jmp	.label_435
	.section	.text
	.align	16
	#Procedure 0x405501
	.globl sub_405501
	.type sub_405501, @function
sub_405501:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405510

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_450
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_368
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405540

	.globl fts_build
	.type fts_build, @function
fts_build:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xa8
	mov	r14d, esi
	mov	r15, rdi
	mov	rbp, qword ptr [r15]
	mov	rbx, qword ptr [rbp + 0x18]
	test	rbx, rbx
	mov	qword ptr [rsp + 0x10], r15
	je	.label_500
	mov	rdi, rbx
	call	dirfd
	mov	dword ptr [rsp + 8], eax
	test	eax, eax
	js	.label_505
	mov	qword ptr [rsp + 0x68], rbx
	lea	rax, [r15 + 0x40]
	mov	qword ptr [rsp + 0x40], rax
	cmp	qword ptr [r15 + 0x40], 1
	sbb	rax, rax
	not	rax
	or	rax, 0x186a0
	mov	qword ptr [rsp + 0x70], rax
	lea	r12, [r15 + 0x48]
	mov	al, 1
	mov	dword ptr [rsp + 0xc], eax
	jmp	.label_509
.label_500:
	mov	eax, dword ptr [r15 + 0x48]
	mov	ecx, eax
	and	ecx, 0x204
	mov	edi, 0xffffff9c
	cmp	ecx, 0x200
	jne	.label_514
	mov	edi, dword ptr [r15 + 0x2c]
.label_514:
	mov	rsi, qword ptr [rbp + 0x30]
	xor	edx, edx
	test	al, 0x10
	je	.label_518
	test	al, 1
	je	.label_521
	cmp	qword ptr [rbp + 0x58], 0
	je	.label_518
.label_521:
	mov	edx, 0x20000
.label_518:
	lea	rcx, [rsp + 8]
	call	opendirat
	mov	qword ptr [rbp + 0x18], rax
	test	rax, rax
	je	.label_523
	mov	qword ptr [rsp + 0x68], rbx
	lea	r12, [r15 + 0x48]
	movzx	eax, word ptr [rbp + 0x70]
	cmp	eax, 0xb
	jne	.label_526
	xor	edx, edx
	mov	rdi, r15
	mov	rsi, rbp
	call	fts_stat
	mov	word ptr [rbp + 0x70], ax
	jmp	.label_455
.label_505:
	mov	rdi, qword ptr [rbp + 0x18]
	call	closedir
	mov	qword ptr [rbp + 0x18], 0
.label_523:
	xor	ebx, ebx
	cmp	r14d, 3
	jne	.label_458
	mov	word ptr [rbp + 0x70], 4
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rbp + 0x40], eax
	jmp	.label_463
.label_526:
	test	byte ptr [r12 + 1], 1
	je	.label_455
	mov	rdi, r15
	mov	rsi, rbp
	call	leave_dir
	xor	edx, edx
	mov	rdi, r15
	mov	rsi, rbp
	call	fts_stat
	mov	rdi, r15
	mov	rsi, rbp
	call	enter_dir
	test	al, al
	je	.label_472
.label_455:
	lea	rax, [r15 + 0x40]
	mov	qword ptr [rsp + 0x40], rax
	cmp	qword ptr [r15 + 0x40], 1
	sbb	rax, rax
	not	rax
	or	rax, 0x186a0
	mov	qword ptr [rsp + 0x70], rax
	cmp	r14d, 2
	je	.label_473
	mov	eax, dword ptr [r12]
	and	eax, 0x38
	cmp	eax, 0x18
	jne	.label_477
	cmp	qword ptr [rbp + 0x88], 2
	jne	.label_477
	mov	esi, dword ptr [rsp + 8]
	mov	rdi, rbp
	call	filesystem_type
	cmp	rax, 0x9f9f
	jle	.label_481
	cmp	rax, 0x9fa0
	je	.label_477
	mov	ecx, 0xff534d42
	cmp	rax, rcx
	je	.label_477
	cmp	rax, 0x5346414f
	je	.label_477
	jmp	.label_473
.label_472:
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_463
.label_481:
	test	rax, rax
	je	.label_477
	cmp	rax, 0x6969
	jne	.label_473
.label_477:
	mov	rax, rbp
	mov	r13d, r14d
	cmp	r14d, 3
	sete	bpl
	mov	r14b, 1
	jmp	.label_491
.label_473:
	mov	rax, rbp
	mov	r13d, r14d
	cmp	r14d, 3
	sete	bpl
	mov	r14d, 0
	jne	.label_494
.label_491:
	mov	r15, rax
	test	byte ptr [r12 + 1], 2
	mov	ebx, dword ptr [rsp + 8]
	je	.label_497
	mov	esi, 0x406
	mov	edx, 3
	xor	eax, eax
	mov	edi, ebx
	call	rpl_fcntl
	mov	ebx, eax
	mov	dword ptr [rsp + 8], ebx
.label_497:
	test	ebx, ebx
	js	.label_503
	xor	ecx, ecx
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, r15
	mov	edx, ebx
	call	fts_safe_changedir
	test	eax, eax
	je	.label_506
.label_503:
	and	bpl, r14b
	cmp	bpl, 1
	jne	.label_507
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
.label_507:
	or	byte ptr [r15 + 0x72], 1
	mov	rdi, qword ptr [r15 + 0x18]
	call	closedir
	mov	rbx, r15
	mov	qword ptr [r15 + 0x18], 0
	mov	eax, dword ptr [r12]
	test	ah, 2
	mov	r15, qword ptr [rsp + 0x10]
	mov	r14d, r13d
	je	.label_459
	mov	edi, dword ptr [rsp + 8]
	test	edi, edi
	js	.label_459
	call	close
.label_459:
	mov	rbp, rbx
	mov	qword ptr [rbp + 0x18], 0
	mov	dword ptr [rsp + 0xc], 0
	jmp	.label_509
.label_494:
	mov	dword ptr [rsp + 0xc], 0
	jmp	.label_520
.label_506:
	mov	al, 1
	mov	dword ptr [rsp + 0xc], eax
	mov	rax, r15
	mov	r15, qword ptr [rsp + 0x10]
.label_520:
	mov	r14d, r13d
	mov	rbp, rax
.label_509:
	mov	dword ptr [rsp + 0x54], r14d
	mov	rax, qword ptr [rbp + 0x38]
	mov	rcx, qword ptr [rbp + 0x48]
	lea	rdx, [rcx - 1]
	cmp	byte ptr [rax + rcx - 1], 0x2f
	cmovne	rdx, rcx
	xor	eax, eax
	mov	qword ptr [rsp + 0x48], rax
	test	byte ptr [r12], 4
	je	.label_525
	mov	rax, qword ptr [r15 + 0x20]
	lea	rcx, [rax + rdx + 1]
	mov	qword ptr [rsp + 0x48], rcx
	mov	byte ptr [rax + rdx], 0x2f
.label_525:
	lea	rax, [rdx + 1]
	mov	qword ptr [rsp + 0x58], rax
	mov	rcx, qword ptr [r15 + 0x30]
	sub	rcx, rax
	mov	qword ptr [rsp + 0x88], rcx
	mov	rax, qword ptr [rbp + 0x58]
	inc	rax
	mov	qword ptr [rsp + 0x98], rax
	add	rdx, 0x102
	mov	qword ptr [rsp + 0x90], rdx
	xor	eax, eax
	mov	qword ptr [rsp + 0x60], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x78], rax
	mov	dword ptr [rsp + 0x1c], 0
	xor	eax, eax
	xor	ebx, ebx
	xor	r14d, r14d
	mov	qword ptr [rsp + 0x38], rbp
	mov	qword ptr [rsp + 0x30], r12
.label_501:
	mov	qword ptr [rsp + 0x28], rbx
	mov	rbx, qword ptr [rbp + 0x18]
	test	rbx, rbx
	je	.label_487
	mov	qword ptr [rsp + 0xa0], rax
	mov	qword ptr [rsp + 0x20], r14
	nop	dword ptr [rax]
.label_457:
	call	__errno_location
	mov	r15, rax
	mov	dword ptr [r15], 0
	mov	rdi, rbx
	call	readdir
	mov	r14, rax
	test	r14, r14
	je	.label_482
	mov	r13, r14
	add	r13, 0x13
	test	byte ptr [r12], 0x20
	jne	.label_452
	cmp	byte ptr [r13], 0x2e
	jne	.label_452
	movzx	eax, byte ptr [r14 + 0x14]
	cmp	al, 0x2e
	je	.label_528
	test	al, al
	je	.label_486
	jmp	.label_452
	.section	.text
	.align	16
	#Procedure 0x4058f7
	.globl sub_4058f7
	.type sub_4058f7, @function
sub_4058f7:

	nop	word ptr [rax + rax]
.label_528:
	cmp	byte ptr [r14 + 0x15], 0
	jne	.label_452
.label_486:
	mov	rbx, qword ptr [rbp + 0x18]
	test	rbx, rbx
	jne	.label_457
	jmp	.label_468
	.section	.text
	.align	16
	#Procedure 0x405915
	.globl sub_405915
	.type sub_405915, @function
sub_405915:

	nop	word ptr cs:[rax + rax]
.label_452:
	mov	rdi, r13
	call	strlen
	mov	rbx, rax
	lea	rdi, [rbx + 0x110]
	and	rdi, 0xfffffffffffffff8
	call	malloc
	mov	r12, rax
	test	r12, r12
	je	.label_515
	mov	rdi, r12
	add	rdi, 0x108
	mov	qword ptr [rsp + 0x80], rdi
	mov	rsi, r13
	mov	rdx, rbx
	call	memcpy
	mov	byte ptr [r12 + rbx + 0x108], 0
	mov	qword ptr [r12 + 0x60], rbx
	mov	rbp, qword ptr [rsp + 0x10]
	mov	qword ptr [r12 + 0x50], rbp
	mov	r13, qword ptr [rbp + 0x20]
	mov	qword ptr [r12 + 0x38], r13
	mov	dword ptr [r12 + 0x40], 0
	mov	qword ptr [r12 + 0x18], 0
	mov	word ptr [r12 + 0x72], 0
	mov	word ptr [r12 + 0x74], 3
	xorps	xmm0, xmm0
	movups	xmmword ptr [r12 + 0x20], xmm0
	cmp	rbx, qword ptr [rsp + 0x88]
	jae	.label_504
	mov	rbp, qword ptr [rsp + 0x38]
	mov	rax, qword ptr [rsp + 0x58]
	jmp	.label_516
	.section	.text
	.align	16
	#Procedure 0x4059c9
	.globl sub_4059c9
	.type sub_4059c9, @function
sub_4059c9:

	nop	dword ptr [rax]
.label_504:
	mov	rax, qword ptr [rsp + 0x90]
	lea	rsi, [rax + rbx]
	add	rsi, qword ptr [rbp + 0x30]
	jb	.label_519
	mov	qword ptr [rbp + 0x30], rsi
	mov	rdi, r13
	call	realloc
	test	rax, rax
	je	.label_524
	mov	qword ptr [rbp + 0x20], rax
	cmp	r13, rax
	je	.label_527
	mov	rdx, qword ptr [rsp + 0x58]
	add	rax, rdx
	mov	rcx, qword ptr [rsp + 0x30]
	test	byte ptr [rcx], 4
	mov	rcx, qword ptr [rsp + 0x48]
	cmovne	rcx, rax
	mov	qword ptr [rsp + 0x48], rcx
	mov	al, 1
	mov	qword ptr [rsp + 0x78], rax
	mov	rbp, qword ptr [rsp + 0x38]
	jmp	.label_453
.label_527:
	mov	rbp, qword ptr [rsp + 0x38]
	mov	rdx, qword ptr [rsp + 0x58]
.label_453:
	mov	rax, qword ptr [rsp + 0x10]
	mov	rax, qword ptr [rax + 0x30]
	sub	rax, rdx
	mov	qword ptr [rsp + 0x88], rax
	mov	rax, rdx
.label_516:
	add	rbx, rax
	jb	.label_465
	mov	rax, qword ptr [rsp + 0x98]
	mov	qword ptr [r12 + 0x58], rax
	mov	r15, qword ptr [rsp + 0x10]
	mov	rax, qword ptr [r15]
	mov	qword ptr [r12 + 8], rax
	mov	qword ptr [r12 + 0x48], rbx
	mov	rax, qword ptr [r14]
	mov	qword ptr [r12 + 0x80], rax
	mov	rax, qword ptr [rsp + 0x30]
	test	byte ptr [rax], 4
	jne	.label_467
	mov	rax, qword ptr [rsp + 0x80]
	mov	qword ptr [r12 + 0x30], rax
	jmp	.label_475
	.section	.text
	.align	16
	#Procedure 0x405a9d
	.globl sub_405a9d
	.type sub_405a9d, @function
sub_405a9d:

	nop	dword ptr [rax]
.label_467:
	mov	rax, qword ptr [r12 + 0x38]
	mov	qword ptr [r12 + 0x30], rax
	mov	rdx, qword ptr [r12 + 0x60]
	inc	rdx
	mov	rdi, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x80]
	call	memmove
.label_475:
	mov	rbx, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rsp + 0x30]
	mov	edx, dword ptr [rax]
	mov	rax, qword ptr [rsp + 0x40]
	cmp	qword ptr [rax], 0
	je	.label_480
	mov	eax, edx
	and	eax, 0x400
	jne	.label_480
	xor	edx, edx
	mov	rdi, r15
	mov	rsi, r12
	call	fts_stat
	mov	word ptr [r12 + 0x70], ax
	mov	rsi, qword ptr [rsp + 0x20]
	jmp	.label_513
	.section	.text
	.align	16
	#Procedure 0x405afe
	.globl sub_405afe
	.type sub_405afe, @function
sub_405afe:

	nop	
.label_480:
	and	edx, 0x18
	movzx	ecx, byte ptr [r14 + 0x12]
	xor	eax, eax
	cmp	edx, 0x18
	mov	edx, 0
	jne	.label_485
	cmp	cl, 4
	setne	bl
	test	cl, cl
	setne	dl
	and	dl, bl
	mov	rbx, qword ptr [rsp + 0x28]
.label_485:
	mov	word ptr [r12 + 0x70], 0xb
	lea	esi, [rcx - 1]
	cmp	esi, 0xb
	mov	rsi, qword ptr [rsp + 0x20]
	ja	.label_496
	mov	eax, dword ptr [(rcx * 4) + label_489]
.label_496:
	mov	dword ptr [r12 + 0x90], eax
	cmp	dl, 1
	mov	eax, 1
	adc	rax, 0
	mov	qword ptr [r12 + 0xa8], rax
.label_513:
	mov	qword ptr [r12 + 0x10], 0
	test	rsi, rsi
	mov	rax, r12
	je	.label_460
	mov	rax, qword ptr [rsp + 0xa0]
	mov	qword ptr [rax + 0x10], r12
	mov	rax, rsi
.label_460:
	mov	r14, rax
	cmp	rbx, 0x2710
	jne	.label_466
	mov	rax, qword ptr [rsp + 0x40]
	cmp	qword ptr [rax], 0
	jne	.label_466
	mov	esi, dword ptr [rsp + 8]
	mov	rdi, rbp
	call	filesystem_type
	mov	dword ptr [rsp + 0x1c], 0
	cmp	rax, 0x6969
	je	.label_466
	cmp	rax, 0x1021994
	je	.label_466
	mov	ecx, 0xff534d42
	cmp	rax, rcx
	je	.label_466
	mov	al, 1
	mov	dword ptr [rsp + 0x1c], eax
	nop	dword ptr [rax]
.label_466:
	inc	rbx
	cmp	qword ptr [rsp + 0x70], rbx
	mov	rax, r12
	mov	r12, qword ptr [rsp + 0x30]
	ja	.label_501
	jmp	.label_454
.label_482:
	mov	eax, dword ptr [r15]
	test	eax, eax
	mov	rbx, qword ptr [rsp + 0x28]
	je	.label_522
	mov	dword ptr [rbp + 0x40], eax
	mov	rax, qword ptr [rsp + 0x68]
	or	rax, rbx
	mov	ax, 7
	mov	cx, 4
	cmovne	cx, ax
	mov	word ptr [rbp + 0x70], cx
.label_522:
	mov	rdi, qword ptr [rbp + 0x18]
	test	rdi, rdi
	mov	r15, qword ptr [rsp + 0x10]
	mov	r14, qword ptr [rsp + 0x20]
	je	.label_454
	call	closedir
	mov	qword ptr [rbp + 0x18], 0
	jmp	.label_454
.label_468:
	mov	r15, qword ptr [rsp + 0x10]
	mov	r14, qword ptr [rsp + 0x20]
.label_487:
	mov	rbx, qword ptr [rsp + 0x28]
.label_454:
	mov	rax, qword ptr [rsp + 0x78]
	test	al, 1
	je	.label_461
	mov	rcx, qword ptr [r15 + 8]
	mov	rax, qword ptr [r15 + 0x20]
	jmp	.label_464
	.section	.text
	.align	16
	#Procedure 0x405c57
	.globl sub_405c57
	.type sub_405c57, @function
sub_405c57:

	nop	word ptr [rax + rax]
.label_471:
	mov	qword ptr [rcx + 0x38], rax
	mov	rcx, qword ptr [rcx + 0x10]
.label_464:
	test	rcx, rcx
	je	.label_470
	mov	rdx, qword ptr [rcx + 0x30]
	lea	rsi, [rcx + 0x108]
	cmp	rdx, rsi
	je	.label_471
	sub	rdx, qword ptr [rcx + 0x38]
	add	rdx, rax
	mov	qword ptr [rcx + 0x30], rdx
	jmp	.label_471
.label_470:
	cmp	qword ptr [r14 + 0x58], 0
	js	.label_461
	mov	rcx, r14
	nop	word ptr cs:[rax + rax]
.label_483:
	mov	rdx, qword ptr [rcx + 0x30]
	lea	rsi, [rcx + 0x108]
	cmp	rdx, rsi
	je	.label_517
	sub	rdx, qword ptr [rcx + 0x38]
	add	rdx, rax
	mov	qword ptr [rcx + 0x30], rdx
.label_517:
	mov	qword ptr [rcx + 0x38], rax
	mov	rdx, qword ptr [rcx + 0x10]
	test	rdx, rdx
	jne	.label_478
	mov	rdx, qword ptr [rcx + 8]
.label_478:
	cmp	qword ptr [rdx + 0x58], 0
	mov	rcx, rdx
	jns	.label_483
.label_461:
	test	byte ptr [r12], 4
	je	.label_490
	mov	rax, qword ptr [rsp + 0x48]
	mov	rcx, rax
	lea	rax, [rcx - 1]
	mov	rdx, qword ptr [rsp + 0x58]
	cmp	rdx, qword ptr [r15 + 0x30]
	cmove	rcx, rax
	test	rbx, rbx
	cmove	rcx, rax
	mov	byte ptr [rcx], 0
.label_490:
	cmp	qword ptr [rsp + 0x68], 0
	mov	eax, dword ptr [rsp + 0xc]
	jne	.label_488
	test	al, al
	je	.label_488
	cmp	dword ptr [rsp + 0x54], 1
	je	.label_492
	test	rbx, rbx
	jne	.label_488
.label_492:
	cmp	qword ptr [rbp + 0x58], 0
	je	.label_495
	mov	rsi, qword ptr [rbp + 8]
	mov	edx, 0xffffffff
	mov	ecx, OFFSET FLAT:label_184
	mov	rdi, r15
	call	fts_safe_changedir
	jmp	.label_498
.label_495:
	mov	rdi, r15
	call	restore_initial_cwd
.label_498:
	test	eax, eax
	je	.label_488
	mov	word ptr [rbp + 0x70], 7
	or	byte ptr [r12 + 1], 0x20
	xor	ebx, ebx
	test	r14, r14
	je	.label_458
	xor	ebx, ebx
.label_508:
	mov	rbp, qword ptr [r14 + 0x10]
	mov	rdi, qword ptr [r14 + 0x18]
	test	rdi, rdi
	je	.label_462
	call	closedir
.label_462:
	mov	rdi, r14
	call	free
	test	rbp, rbp
	mov	r14, rbp
	jne	.label_508
	jmp	.label_458
.label_488:
	test	rbx, rbx
	je	.label_510
	mov	eax, dword ptr [rsp + 0x1c]
	test	al, 1
	jne	.label_511
	cmp	rbx, 2
	jb	.label_512
	mov	rax, qword ptr [rsp + 0x40]
	mov	rax, qword ptr [rax]
	test	rax, rax
	je	.label_512
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	fts_sort
	mov	rbx, rax
	jmp	.label_458
.label_510:
	cmp	dword ptr [rsp + 0x54], 3
	jne	.label_502
	movzx	eax, word ptr [rbp + 0x70]
	cmp	eax, 4
	je	.label_502
	movzx	eax, ax
	cmp	eax, 7
	je	.label_502
	mov	word ptr [rbp + 0x70], 6
.label_502:
	xor	ebx, ebx
	test	r14, r14
	je	.label_458
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_456:
	mov	rbp, qword ptr [r14 + 0x10]
	mov	rdi, qword ptr [r14 + 0x18]
	test	rdi, rdi
	je	.label_451
	call	closedir
.label_451:
	mov	rdi, r14
	call	free
	test	rbp, rbp
	mov	r14, rbp
	jne	.label_456
	jmp	.label_458
.label_511:
	mov	rbp, qword ptr [rsp + 0x40]
	mov	qword ptr [rbp], OFFSET FLAT:fts_compare_ino
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	fts_sort
	mov	rbx, rax
	mov	qword ptr [rbp], 0
	jmp	.label_458
.label_512:
	mov	rbx, r14
	jmp	.label_458
.label_465:
	mov	rdi, r12
	call	free
	mov	rax, qword ptr [rsp + 0x20]
	test	rax, rax
	mov	r14, qword ptr [rsp + 0x30]
	je	.label_469
	nop	word ptr cs:[rax + rax]
.label_476:
	mov	rbx, qword ptr [rax + 0x10]
	mov	r12, rax
	mov	rdi, qword ptr [rax + 0x18]
	test	rdi, rdi
	je	.label_474
	call	closedir
.label_474:
	mov	rdi, r12
	call	free
	test	rbx, rbx
	mov	rax, rbx
	jne	.label_476
.label_469:
	mov	rdi, qword ptr [rbp + 0x18]
	call	closedir
	mov	qword ptr [rbp + 0x18], 0
	mov	word ptr [rbp + 0x70], 7
	or	byte ptr [r14 + 1], 0x20
	mov	dword ptr [r15], 0x24
	jmp	.label_463
.label_519:
	mov	rdi, r13
	call	free
	mov	qword ptr [rbp + 0x20], 0
	mov	dword ptr [r15], 0x24
	jmp	.label_484
.label_524:
	mov	rdi, qword ptr [rbp + 0x20]
	call	free
	mov	qword ptr [rbp + 0x20], 0
.label_484:
	mov	qword ptr [rsp + 0x60], r12
	mov	rbp, qword ptr [rsp + 0x38]
.label_515:
	mov	r13, rbp
	mov	r14d, dword ptr [r15]
	mov	rdi, qword ptr [rsp + 0x60]
	call	free
	mov	rax, qword ptr [rsp + 0x20]
	test	rax, rax
	mov	r12, qword ptr [rsp + 0x30]
	je	.label_493
.label_499:
	mov	rbp, qword ptr [rax + 0x10]
	mov	rbx, rax
	mov	rdi, qword ptr [rax + 0x18]
	test	rdi, rdi
	je	.label_479
	call	closedir
.label_479:
	mov	rdi, rbx
	call	free
	test	rbp, rbp
	mov	rax, rbp
	jne	.label_499
.label_493:
	mov	rbx, r13
	mov	rdi, qword ptr [rbx + 0x18]
	call	closedir
	mov	qword ptr [rbx + 0x18], 0
	mov	word ptr [rbx + 0x70], 7
	or	byte ptr [r12 + 1], 0x20
	mov	dword ptr [r15], r14d
.label_463:
	xor	ebx, ebx
.label_458:
	mov	rax, rbx
	add	rsp, 0xa8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405f7f
	.globl sub_405f7f
	.type sub_405f7f, @function
sub_405f7f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x405f80

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
	je	.label_529
	test	ecx, ecx
	cmove	rbx, qword ptr [rsp + 8]
	mov	rax, rbx
.label_529:
	add	rsp, 0x10
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x405fac
	.globl sub_405fac
	.type sub_405fac, @function
sub_405fac:

	nop	dword ptr [rax]
.label_531:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_530
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_530:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405fe4
	.globl sub_405fe4
	.type sub_405fe4, @function
sub_405fe4:

	nop	
	.section	.text
	.align	16
	#Procedure 0x405fe6

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
	jne	.label_532
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_532
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_531
.label_532:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
	.section	.text
	.align	16
	#Procedure 0x406020

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
	je	.label_533
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
.label_533:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40608c
	.globl sub_40608c
	.type sub_40608c, @function
sub_40608c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406090

	.globl filesystem_type
	.type filesystem_type, @function
filesystem_type:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x78
	mov	r15d, esi
	mov	r13, rdi
	mov	rbx, qword ptr [r13 + 0x50]
	xor	eax, eax
	test	byte ptr [rbx + 0x49], 2
	je	.label_536
	mov	rbp, qword ptr [rbx + 0x50]
	test	rbp, rbp
	jne	.label_538
	xor	r12d, r12d
	mov	edi, 0xd
	xor	esi, esi
	mov	edx, OFFSET FLAT:dev_type_hash
	mov	ecx, OFFSET FLAT:dev_type_compare
	mov	r8d, OFFSET FLAT:free
	call	hash_initialize
	mov	rbp, rax
	mov	qword ptr [rbx + 0x50], rbp
	test	rbp, rbp
	mov	r14d, 0
	je	.label_539
.label_538:
	mov	rax, qword ptr [r13 + 0x78]
	mov	qword ptr [rsp], rax
	lea	rsi, [rsp]
	mov	rdi, rbp
	call	hash_lookup
	test	rax, rax
	je	.label_535
	mov	rax, qword ptr [rax + 8]
	jmp	.label_536
.label_535:
	mov	r12b, 1
	mov	r14, rbp
.label_539:
	xor	eax, eax
	test	r15d, r15d
	js	.label_536
	lea	rsi, [rsp]
	mov	edi, r15d
	call	fstatfs
	mov	ecx, eax
	xor	eax, eax
	test	ecx, ecx
	jne	.label_536
	test	r12b, r12b
	je	.label_537
	mov	edi, 0x10
	call	malloc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_537
	mov	rax, qword ptr [r13 + 0x78]
	mov	qword ptr [rbp], rax
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rbp + 8], rax
	mov	rdi, r14
	mov	rsi, rbp
	call	hash_insert
	test	rax, rax
	je	.label_534
	cmp	rax, rbp
	je	.label_537
	call	abort
.label_534:
	mov	rdi, rbp
	call	free
.label_537:
	mov	rax, qword ptr [rsp]
.label_536:
	add	rsp, 0x78
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40618a
	.globl sub_40618a
	.type sub_40618a, @function
sub_40618a:

	nop	word ptr [rax + rax]
.label_540:
	mov	word ptr [rsi + 0x74], dx
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x406197
	.globl sub_406197
	.type sub_406197, @function
sub_406197:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4061a5

	.globl rpl_fts_set
	.type rpl_fts_set, @function
rpl_fts_set:
	cmp	edx, 5
	jb	.label_540
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	eax, 1
	add	rsp, 8
	ret	
.label_543:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_541
	mov	qword ptr [rsi], rbx
.label_542:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_545
	test	rax, rax
	je	.label_541
.label_545:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4061e8
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_543
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_544
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_542
	call	free
	xor	eax, eax
	jmp	.label_545
.label_544:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40621f
	.globl sub_40621f
	.type sub_40621f, @function
sub_40621f:

	nop	word ptr cs:[rax + rax]
.label_541:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x406230

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
.label_644:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_610
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [(rcx * 8) + label_642]
.label_996:
	mov	byte ptr [rsp + 7], r10b
	mov	edi, OFFSET FLAT:label_618
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_424
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10b, byte ptr [rsp + 7]
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_997:
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_632
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_632
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_643:
	cmp	r14, r11
	jae	.label_640
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_640:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_643
.label_632:
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
	jmp	.label_547
.label_989:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_547
.label_992:
	mov	al, 1
.label_990:
	mov	r12b, 1
.label_993:
	test	r12b, 1
	mov	cl, 1
	je	.label_658
	mov	ecx, eax
.label_658:
	mov	al, cl
.label_991:
	test	r12b, 1
	jne	.label_660
	test	r11, r11
	je	.label_645
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_645:
	mov	r14d, 1
	jmp	.label_664
.label_660:
	xor	r14d, r14d
.label_664:
	mov	ecx, OFFSET FLAT:label_424
	mov	qword ptr [rsp + 0x48], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x40], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_547
.label_994:
	test	r12b, 1
	jne	.label_558
	test	r11, r11
	je	.label_562
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_562:
	mov	r14d, 1
	jmp	.label_567
.label_995:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_423
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	sil, 1
	jmp	.label_547
.label_558:
	xor	r14d, r14d
.label_567:
	mov	eax, OFFSET FLAT:label_423
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_547:
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
	jmp	.label_591
	.section	.text
	.align	16
	#Procedure 0x40651d
	.globl sub_40651d
	.type sub_40651d, @function
sub_40651d:

	nop	dword ptr [rax]
.label_646:
	inc	rsi
.label_591:
	cmp	rbp, -1
	je	.label_626
	cmp	rsi, rbp
	jne	.label_627
	jmp	.label_628
	.section	.text
	.align	16
	#Procedure 0x406533
	.globl sub_406533
	.type sub_406533, @function
sub_406533:

	nop	word ptr cs:[rax + rax]
.label_626:
	mov	rcx, -1
	cmp	byte ptr [rdi + rsi], 0
	je	.label_633
.label_627:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_661
	mov	rax, qword ptr [rsp + 0x40]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_636
	cmp	rbp, -1
	jne	.label_636
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
.label_636:
	cmp	rbx, rbp
	jbe	.label_649
.label_661:
	xor	r8d, r8d
.label_552:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_651
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_654]
.label_962:
	test	rsi, rsi
	jne	.label_551
	jmp	.label_582
	.section	.text
	.align	16
	#Procedure 0x4065d5
	.globl sub_4065d5
	.type sub_4065d5, @function
sub_4065d5:

	nop	word ptr cs:[rax + rax]
.label_649:
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
	jne	.label_548
	cmp	byte ptr [rsp + 6], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_552
	jmp	.label_566
.label_548:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_552
.label_966:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_577
	test	rsi, rsi
	jne	.label_580
	cmp	rbp, 1
	je	.label_582
	xor	r13d, r13d
	jmp	.label_560
.label_955:
	cmp	byte ptr [rsp + 0x17], 0
	je	.label_589
	cmp	byte ptr [rsp + 6], 0
	jne	.label_637
	cmp	r12d, 2
	jne	.label_595
	mov	eax, r9d
	and	al, 1
	jne	.label_595
	cmp	r14, r11
	jae	.label_599
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_599:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_602
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_602:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_601
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_601:
	add	r14, 3
	mov	r9b, 1
.label_595:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_613
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_613:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_616
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_616
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_616
	cmp	r14, r11
	jae	.label_624
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_624:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_612
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_612:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_560
.label_956:
	mov	bl, 0x62
	jmp	.label_635
.label_957:
	mov	cl, 0x74
	jmp	.label_553
.label_958:
	mov	bl, 0x76
	jmp	.label_635
.label_959:
	mov	bl, 0x66
	jmp	.label_635
.label_960:
	mov	cl, 0x72
	jmp	.label_553
.label_963:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_641
	cmp	byte ptr [rsp + 6], 0
	jne	.label_556
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
	jae	.label_648
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_648:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_657
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_657:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_659
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_659:
	add	r14, 3
	xor	r9d, r9d
.label_641:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_560
.label_964:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_665
	cmp	r12d, 2
	jne	.label_551
	cmp	byte ptr [rsp + 6], 0
	je	.label_551
	jmp	.label_556
.label_965:
	cmp	r12d, 2
	jne	.label_559
	cmp	byte ptr [rsp + 6], 0
	jne	.label_556
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_568
.label_651:
	mov	dword ptr [rsp + 0x54], r8d
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xa8], 1
	jne	.label_573
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
.label_574:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2a]
	mov	qword ptr [rsp + 0x60], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 7]
	mov	r12, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x50]
	ja	.label_594
	test	r8b, r8b
	je	.label_594
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x54]
	jmp	.label_560
.label_577:
	test	rsi, rsi
	jne	.label_615
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_615
.label_582:
	mov	dl, 1
.label_961:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_556
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_560:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_621
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_622
	jmp	.label_625
	.section	.text
	.align	16
	#Procedure 0x406924
	.globl sub_406924
	.type sub_406924, @function
sub_406924:

	nop	word ptr cs:[rax + rax]
.label_621:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_625
.label_622:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_630
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_568
	jmp	.label_597
	.section	.text
	.align	16
	#Procedure 0x40696d
	.globl sub_40696d
	.type sub_40696d, @function
sub_40696d:

	nop	dword ptr [rax]
.label_625:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_597
	jmp	.label_568
.label_630:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_597
.label_589:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_646
	xor	r15d, r15d
	jmp	.label_551
.label_559:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x29], 0
	je	.label_553
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_568
.label_553:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_556
.label_635:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x17], 0
	mov	r13d, 0
	je	.label_560
	nop	word ptr cs:[rax + rax]
.label_597:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_637
	cmp	r12d, 2
	jne	.label_662
	mov	eax, r9d
	and	al, 1
	jne	.label_662
	cmp	r14, r11
	jae	.label_579
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_579:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_549
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_549:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_639
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_639:
	add	r14, 3
	mov	r9b, 1
.label_662:
	cmp	r14, r11
	jae	.label_564
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_564:
	inc	r14
	jmp	.label_570
.label_573:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_575
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_575:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x60], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x58], rsi
.label_565:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_600
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_605
	cmp	rbp, -2
	je	.label_609
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2b]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_620
	mov	rax, qword ptr [rsp + 0x60]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_614:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_578
	bt	rsi, rdx
	jb	.label_623
.label_578:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_614
.label_620:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_563
	xor	r13d, r13d
.label_563:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x58]
	je	.label_565
	jmp	.label_574
.label_616:
	xor	r13d, r13d
	jmp	.label_560
.label_615:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_560
.label_665:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_551
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_551
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_551
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_653
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_586
	cmp	byte ptr [rsp + 6], 0
	jne	.label_583
	cmp	r14, r11
	jae	.label_656
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_656:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_650
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_650:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_546
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_546:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_585
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x3f
.label_585:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_560
.label_551:
	xor	eax, eax
.label_580:
	xor	r13d, r13d
	jmp	.label_560
.label_594:
	add	qword ptr [rsp + 0x60], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_571
	.section	.text
	.align	16
	#Procedure 0x406c52
	.globl sub_406c52
	.type sub_406c52, @function
sub_406c52:

	nop	word ptr cs:[rax + rax]
.label_647:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_571:
	test	r8b, r8b
	je	.label_663
	mov	ecx, dword ptr [rsp + 0x54]
	test	cl, 1
	je	.label_581
	cmp	r14, r11
	jae	.label_587
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_587:
	inc	r14
	mov	dword ptr [rsp + 0x54], 0
	jmp	.label_581
	.section	.text
	.align	16
	#Procedure 0x406c9c
	.globl sub_406c9c
	.type sub_406c9c, @function
sub_406c9c:

	nop	dword ptr [rax]
.label_663:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_566
	cmp	r12d, 2
	jne	.label_561
	mov	eax, r9d
	and	al, 1
	jne	.label_561
	cmp	r14, r11
	jae	.label_604
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_604:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_606
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_606:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_611
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_611:
	add	r14, 3
	mov	r9b, 1
.label_561:
	cmp	r14, r11
	jae	.label_652
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_652:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_619
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_619:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_598
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_598:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_581:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x60], rdx
	jbe	.label_568
	test	r9b, 1
	je	.label_572
	mov	ebx, eax
	and	bl, 1
	jne	.label_572
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_584
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_584:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_592
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_592:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_572:
	cmp	r14, r11
	jae	.label_647
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_647
	.section	.text
	.align	16
	#Procedure 0x406da3
	.globl sub_406da3
	.type sub_406da3, @function
sub_406da3:

	nop	word ptr cs:[rax + rax]
.label_568:
	test	r9b, 1
	je	.label_557
	and	al, 1
	jne	.label_557
	cmp	r14, r11
	jae	.label_655
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_655:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_603
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_603:
	add	r14, 2
	xor	r9d, r9d
.label_557:
	mov	ebx, r15d
.label_570:
	cmp	r14, r11
	jae	.label_576
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_576:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_646
.label_605:
	xor	r13d, r13d
.label_600:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_574
.label_609:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbp, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	jbe	.label_555
	mov	rsi, qword ptr [rsp + 0x58]
.label_569:
	mov	rax, qword ptr [rsp + 0x60]
	cmp	byte ptr [rax + r12], 0
	je	.label_638
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_569
	xor	r13d, r13d
	jmp	.label_574
.label_555:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_574
.label_638:
	xor	r13d, r13d
	jmp	.label_574
.label_653:
	xor	r13d, r13d
	jmp	.label_560
.label_586:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_560
	.section	.text
	.align	16
	#Procedure 0x406e78
	.globl sub_406e78
	.type sub_406e78, @function
sub_406e78:

	nop	dword ptr [rax + rax]
.label_628:
	mov	rcx, rsi
.label_633:
	cmp	r12d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 6], 0
	je	.label_588
	or	al, dl
	je	.label_593
.label_588:
	cmp	r12d, 2
	setne	al
	cmp	byte ptr [rsp + 6], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x2c]
	mov	rsi, qword ptr [rsp + 0xb0]
	je	.label_596
	or	al, dl
	jne	.label_596
	test	r10b, 1
	jne	.label_608
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_596
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	qword ptr [rsp + 0x20], rcx
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x68]
	je	.label_644
.label_596:
	mov	rdx, qword ptr [rsp + 0x48]
	test	rdx, rdx
	je	.label_617
	cmp	byte ptr [rsp + 6], 0
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_590
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_590
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_631:
	cmp	r14, r11
	jae	.label_629
	mov	byte ptr [rcx + r14], al
.label_629:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_631
	jmp	.label_590
.label_637:
	mov	qword ptr [rsp + 0x20], rbp
.label_566:
	mov	rdx, rdi
	jmp	.label_634
.label_556:
	mov	qword ptr [rsp + 0x20], rbp
.label_623:
	mov	rdx, rdi
	mov	eax, 2
.label_607:
	mov	qword ptr [rsp + 0x38], rax
.label_634:
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
.label_550:
	mov	r14, rax
.label_554:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_593:
	mov	rdx, rdi
	mov	qword ptr [rsp + 0x20], rcx
	jmp	.label_634
.label_608:
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
	jmp	.label_550
.label_617:
	mov	rcx, qword ptr [rsp + 8]
.label_590:
	cmp	r14, r11
	jae	.label_554
	mov	byte ptr [rcx + r14], 0
	jmp	.label_554
.label_583:
	mov	qword ptr [rsp + 0x20], rbp
	mov	rdx, rdi
	mov	eax, 5
	jmp	.label_607
.label_610:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x407037
	.globl sub_407037
	.type sub_407037, @function
sub_407037:

	nop	word ptr [rax + rax]
.label_666:
	push	rax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x407046
	.globl sub_407046
	.type sub_407046, @function
sub_407046:

	nop	
.label_667:
	add	ecx, 3
	and	ecx, 3
	mov	dword ptr [rdi + 0x14], ecx
	ret	
	.section	.text
	.align	16
	#Procedure 0x407051

	.globl i_ring_pop
	.type i_ring_pop, @function
i_ring_pop:
	cmp	byte ptr [rdi + 0x1c], 0
	jne	.label_666
	mov	ecx, dword ptr [rdi + 0x10]
	mov	edx, dword ptr [rdi + 0x14]
	mov	eax, dword ptr [rdi + rdx*4]
	mov	dword ptr [rdi + rdx*4], ecx
	mov	ecx, dword ptr [rdi + 0x14]
	cmp	ecx, dword ptr [rdi + 0x18]
	jne	.label_667
	mov	byte ptr [rdi + 0x1c], 1
	ret	
	.section	.text
	.align	16
	#Procedure 0x407070
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
	#Procedure 0x40707f
	.globl sub_40707f
	.type sub_40707f, @function
sub_40707f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x407080

	.globl i_ring_init
	.type i_ring_init, @function
i_ring_init:
	mov	byte ptr [rdi + 0x1c], 1
	mov	dword ptr [rdi + 0x14], 0
	mov	dword ptr [rdi + 0x18], 0
	movd	xmm0, esi
	pshufd	xmm0, xmm0, 0
	movdqu	xmmword ptr [rdi], xmm0
	mov	dword ptr [rdi + 0x10], esi
	ret	
	.section	.text
	.align	16
	#Procedure 0x4070a3
	.globl sub_4070a3
	.type sub_4070a3, @function
sub_4070a3:

	nop	word ptr cs:[rax + rax]
.label_668:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4070b5
	.globl sub_4070b5
	.type sub_4070b5, @function
sub_4070b5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4070c0

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
	je	.label_668
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
.label_672:
	add	r15, 0x10
.label_669:
	cmp	r15, rax
	jae	.label_671
	mov	rdi, qword ptr [r15]
	test	rdi, rdi
	je	.label_672
	test	r15, r15
	je	.label_672
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [r15 + 8]
	jmp	.label_677
	.section	.text
	.align	16
	#Procedure 0x407170

	.globl hash_free
	.type hash_free, @function
hash_free:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	cmp	qword ptr [r14 + 0x40], 0
	je	.label_671
	cmp	qword ptr [r14 + 0x20], 0
	je	.label_671
	mov	r15, qword ptr [r14]
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_669
	.section	.text
	.align	16
	#Procedure 0x40718f
	.globl sub_40718f
	.type sub_40718f, @function
sub_40718f:

	nop	
.label_674:
	mov	rdi, qword ptr [rbx]
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [rbx + 8]
.label_677:
	test	rbx, rbx
	jne	.label_674
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_672
.label_671:
	mov	r15, qword ptr [r14]
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_675
	.section	.text
	.align	16
	#Procedure 0x4071af
	.globl sub_4071af
	.type sub_4071af, @function
sub_4071af:

	nop	
.label_670:
	add	r15, 0x10
.label_675:
	cmp	r15, rax
	jae	.label_678
	mov	rdi, qword ptr [r15 + 8]
	test	rdi, rdi
	je	.label_670
	nop	word ptr cs:[rax + rax]
.label_673:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_673
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_670
.label_678:
	mov	rdi, qword ptr [r14 + 0x48]
	test	rdi, rdi
	je	.label_676
.label_679:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_679
.label_676:
	mov	rdi, qword ptr [r14]
	call	free
	mov	rdi, r14
	pop	rbx
	pop	r14
	pop	r15
	jmp	free
	.section	.text
	.align	16
	#Procedure 0x407216
	.globl sub_407216
	.type sub_407216, @function
sub_407216:

	nop	word ptr cs:[rax + rax]
.label_684:
	mov	r15, qword ptr [rbx]
.label_680:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x407232

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
	jae	.label_683
	mov	rbx, qword ptr [r14]
	shl	rax, 4
	mov	rsi, qword ptr [rbx + rax]
	xor	r15d, r15d
	test	rsi, rsi
	je	.label_680
	add	rbx, rax
	je	.label_680
	cmp	rsi, r12
	je	.label_682
	xor	r15d, r15d
	nop	
.label_681:
	mov	rdi, r12
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_684
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	je	.label_680
	mov	rsi, qword ptr [rbx]
	cmp	rsi, r12
	jne	.label_681
.label_682:
	mov	r15, r12
	jmp	.label_680
.label_683:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x407298
	.globl sub_407298
	.type sub_407298, @function
sub_407298:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4072a0

	.globl dup_safer
	.type dup_safer, @function
dup_safer:
	xor	esi, esi
	mov	edx, 3
	xor	eax, eax
	jmp	rpl_fcntl
	.section	.text
	.align	16
	#Procedure 0x4072ae
	.globl sub_4072ae
	.type sub_4072ae, @function
sub_4072ae:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4072b0

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
	mov	rbx, rsi
	mov	ebp, edi
	mov	rdi, qword ptr [rbx]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_112
	call	setlocale
	mov	edi, OFFSET FLAT:label_723
	mov	esi, OFFSET FLAT:label_724
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_723
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	r14d, 0x10
	mov	r15d, 0xffffffff
	xor	r12d, r12d
	xor	r13d, r13d
	xor	eax, eax
	jmp	.label_712
	.section	.text
	.align	16
	#Procedure 0x407313
	.globl sub_407313
	.type sub_407313, @function
sub_407313:

	nop	word ptr cs:[rax + rax]
.label_1096:
	mov	rax, qword ptr [rip + optarg]
.label_712:
	mov	qword ptr [rsp + 0x18], rax
	jmp	.label_696
.label_1088:
	mov	rax, qword ptr [rip + optarg]
	mov	qword ptr [rip + specified_range],  rax
	mov	r13b, 1
	nop	
.label_696:
	mov	edx, OFFSET FLAT:label_734
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	mov	edi, ebp
	mov	rsi, rbx
	call	getopt_long
	lea	ecx, [rax + 1]
	cmp	ecx, 0x84
	ja	.label_747
	jmp	qword ptr [(rcx * 8) + label_748]
.label_1083:
	mov	r14d, 0x11
	jmp	.label_696
.label_1085:
	mov	r14d, 0x10
	jmp	.label_696
.label_1087:
	xor	r15d, r15d
	jmp	.label_696
.label_1089:
	mov	rax, qword ptr [rip + optarg]
	mov	qword ptr [rip + specified_role],  rax
	mov	r13b, 1
	jmp	.label_696
.label_1090:
	mov	rax, qword ptr [rip + optarg]
	mov	qword ptr [rip + specified_type],  rax
	mov	r13b, 1
	jmp	.label_696
.label_1093:
	mov	r15d, 1
	jmp	.label_696
.label_1094:
	xor	r12d, r12d
	jmp	.label_696
.label_1084:
	mov	r14d, 2
	jmp	.label_696
.label_1086:
	mov	byte ptr [rip + recurse],  1
	jmp	.label_696
.label_1091:
	mov	rax, qword ptr [rip + optarg]
	mov	qword ptr [rip + specified_user],  rax
	mov	r13b, 1
	jmp	.label_696
.label_1092:
	mov	byte ptr [rip + verbose],  1
	jmp	.label_696
.label_1095:
	mov	r12b, 1
	jmp	.label_696
.label_1082:
	mov	al, byte ptr [rip + recurse]
	cmp	al, 1
	jne	.label_759
	cmp	r14d, 0x10
	jne	.label_710
	cmp	r15d, 1
	je	.label_686
	mov	byte ptr [rip + affect_symlink_referent],  0
	jmp	.label_689
.label_759:
	test	r15d, r15d
	setne	byte ptr [rip + affect_symlink_referent]
.label_689:
	mov	r14d, 0x10
	jmp	.label_692
.label_710:
	test	r15d, r15d
	je	.label_701
	mov	byte ptr [rip + affect_symlink_referent],  1
.label_692:
	mov	r15, qword ptr [rsp + 0x18]
	mov	ecx, dword ptr [rip + optind]
	mov	edx, ebp
	sub	edx, ecx
	cmp	r15, 1
	mov	esi, 1
	mov	edi, 1
	adc	edi, 0
	test	r13b, r13b
	cmovne	edi, esi
	cmp	edx, edi
	jl	.label_694
	test	r15, r15
	jne	.label_703
	test	r13b, r13b
	je	.label_707
	mov	qword ptr [rip + specified_context],  0
	test	r12b, r12b
	je	.label_708
	xor	al, 1
	jne	.label_708
	mov	edi, OFFSET FLAT:main.dev_ino_buf
	call	get_root_dev_ino
	mov	qword ptr [rip + root_dev_ino],  rax
	test	rax, rax
	je	.label_711
	mov	ecx, dword ptr [rip + optind]
	jmp	.label_714
.label_708:
	mov	qword ptr [rip + root_dev_ino],  0
.label_714:
	movsxd	rax, ecx
	lea	rdi, [rbx + rax*8]
	or	r14d, 8
	xor	edx, edx
	mov	esi, r14d
	call	xfts_open
	mov	qword ptr [rsp + 0x18], rax
	mov	rdi, rax
	call	rpl_fts_read
	mov	r13, rax
	mov	r15b, 1
	test	r13, r13
	je	.label_725
	mov	bl, 1
	jmp	.label_713
.label_730:
	mov	qword ptr [r13 + 0x20], 1
	mov	edx, 1
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, r13
	call	rpl_fts_set
	mov	r15b, 1
	jmp	.label_715
.label_704:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_733
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r12
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
	jmp	.label_742
.label_687:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_733
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r12
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
	jmp	.label_695
	.section	.text
	.align	16
	#Procedure 0x407581
	.globl sub_407581
	.type sub_407581, @function
sub_407581:

	nop	word ptr cs:[rax + rax]
.label_713:
	mov	rax, qword ptr [r13 + 0x30]
	mov	qword ptr [rsp + 0x30], rax
	mov	r12, qword ptr [r13 + 0x38]
	movzx	eax, word ptr [r13 + 0x70]
	mov	ecx, eax
	dec	ecx
	movzx	ecx, cx
	mov	r15b, 1
	cmp	ecx, 9
	ja	.label_751
	jmp	qword ptr [(rcx * 8) + label_754]
.label_1050:
	mov	r15b, 1
	cmp	byte ptr [rip + recurse],  1
	jne	.label_741
	mov	rax, qword ptr [rip + root_dev_ino]
	mov	r15b, 1
	test	rax, rax
	je	.label_715
	mov	rcx, qword ptr [r13 + 0x80]
	cmp	rcx, qword ptr [rax]
	jne	.label_715
	mov	rcx, qword ptr [r13 + 0x78]
	cmp	rcx, qword ptr [rax + 8]
	jne	.label_715
	mov	byte ptr [rsp + 0x17], bl
	cmp	byte ptr [r12], 0x2f
	jne	.label_761
	cmp	byte ptr [r12 + 1], 0
	je	.label_687
.label_761:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_691
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, r12
	call	quotearg_n_style
	mov	r15, rax
	mov	edi, 1
	mov	esi, 4
	mov	edx, OFFSET FLAT:label_323
	call	quotearg_n_style
	mov	rbp, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	mov	rcx, r15
	mov	r8, rbp
	call	error
.label_695:
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_702
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	edx, 4
	mov	rbx, qword ptr [rsp + 0x18]
	mov	rdi, rbx
	mov	rsi, r13
	call	rpl_fts_set
	mov	rdi, rbx
	call	rpl_fts_read
	movzx	ebx, byte ptr [rsp + 0x17]
	jmp	.label_715
.label_1052:
	mov	r14d, dword ptr [r13 + 0x40]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_717
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r12
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbp
	jmp	.label_722
.label_1055:
	cmp	qword ptr [r13 + 0x58], 0
	jne	.label_727
	cmp	qword ptr [r13 + 0x20], 0
	je	.label_730
.label_727:
	mov	ebp, dword ptr [r13 + 0x40]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_731
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	edi, 4
	mov	rsi, r12
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, r14
	jmp	.label_722
.label_1051:
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, r13
	call	cycle_warning_required
	mov	r15b, 1
	test	al, al
	je	.label_741
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_705
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r12
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
	jmp	.label_715
.label_1053:
	mov	r15b, 1
	movzx	eax, byte ptr [rip + recurse]
	test	al, al
	jne	.label_741
	jmp	.label_715
.label_1054:
	mov	ebp, dword ptr [r13 + 0x40]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r12
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_368
	xor	eax, eax
	mov	esi, ebp
.label_722:
	call	error
.label_741:
	mov	ax, word ptr [r13 + 0x70]
.label_751:
	movzx	eax, ax
	cmp	eax, 6
	jne	.label_757
	test	r15b, r15b
	je	.label_757
	mov	rax, qword ptr [rip + root_dev_ino]
	test	rax, rax
	je	.label_757
	mov	rcx, qword ptr [r13 + 0x80]
	cmp	rcx, qword ptr [rax]
	jne	.label_757
	mov	rcx, qword ptr [r13 + 0x78]
	cmp	rcx, qword ptr [rax + 8]
	jne	.label_757
	cmp	byte ptr [r12], 0x2f
	jne	.label_688
	cmp	byte ptr [r12 + 1], 0
	je	.label_704
.label_688:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_691
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, r12
	call	quotearg_n_style
	mov	r12, rax
	mov	edi, 1
	mov	esi, 4
	mov	edx, OFFSET FLAT:label_323
	call	quotearg_n_style
	mov	rbp, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	mov	rcx, r12
	mov	r8, rbp
	call	error
.label_742:
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_702
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	jmp	.label_709
	.section	.text
	.align	16
	#Procedure 0x407898
	.globl sub_407898
	.type sub_407898, @function
sub_407898:

	nop	dword ptr [rax + rax]
.label_757:
	test	r15b, r15b
	je	.label_709
	mov	byte ptr [rsp + 0x17], bl
	cmp	byte ptr [rip + verbose],  1
	jne	.label_716
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_719
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r12
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbp
	mov	rdx, rcx
	call	__printf_chk
.label_716:
	mov	rax, qword ptr [rsp + 0x18]
	mov	edi, dword ptr [rax + 0x2c]
	mov	qword ptr [rsp + 0x20], 0
	mov	rbp, qword ptr [rip + specified_context]
	movzx	eax, byte ptr [rip + affect_symlink_referent]
	test	rbp, rbp
	je	.label_728
	test	al, al
	mov	rbx, qword ptr [rsp + 0x30]
	mov	rsi, rbx
	mov	rdx, rbp
	je	.label_732
	call	setfileconat
	jmp	.label_735
.label_728:
	test	al, al
	mov	rbx, qword ptr [rsp + 0x30]
	mov	rsi, rbx
	lea	rdx, [rsp + 0x20]
	je	.label_736
	call	getfileconat
	jmp	.label_739
.label_732:
	call	lsetfileconat
.label_735:
	test	eax, eax
	je	.label_752
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rsp + 0x2c], eax
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_746
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, rbx
	call	quotearg_n_style
	mov	r12, rax
	mov	edi, 1
	mov	rsi, rbp
	call	quote_n
	mov	rbp, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, dword ptr [rsp + 0x2c]
	mov	rdx, r14
	mov	rcx, r12
	mov	r8, rbp
	call	error
	jmp	.label_752
.label_736:
	call	lgetfileconat
.label_739:
	test	eax, eax
	jns	.label_753
	call	__errno_location
	mov	ebp, dword ptr [rax]
	cmp	ebp, 0x3d
	jne	.label_755
.label_753:
	mov	rbp, qword ptr [rsp + 0x20]
	test	rbp, rbp
	je	.label_756
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_758
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rdi, rbp
	call	quote
	mov	rcx, rax
	xor	edi, edi
	mov	esi, 0x5f
	xor	eax, eax
	jmp	.label_699
.label_756:
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_685
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	jmp	.label_726
.label_755:
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_693
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
.label_699:
	mov	rdx, r14
.label_726:
	call	error
.label_752:
	movzx	ebx, byte ptr [rsp + 0x17]
.label_709:
	movzx	eax, byte ptr [rip + recurse]
	test	al, al
	jne	.label_706
	mov	edx, 4
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, r13
	call	rpl_fts_set
.label_706:
	test	r15b, r15b
	setne	r15b
.label_715:
	and	r15b, bl
	mov	rdi, qword ptr [rsp + 0x18]
	call	rpl_fts_read
	mov	r13, rax
	test	r13, r13
	mov	ebx, r15d
	jne	.label_713
.label_725:
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	test	ebp, ebp
	je	.label_718
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_720
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rcx
	call	error
.label_718:
	mov	rdi, qword ptr [rsp + 0x18]
	call	rpl_fts_close
	test	eax, eax
	je	.label_740
	mov	ebx, dword ptr [rbx]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_729
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_740:
	movzx	eax, r15b
	xor	eax, 1
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_747:
	cmp	eax, 0xffffff7d
	je	.label_737
	cmp	eax, 0xffffff7e
	jne	.label_738
	xor	edi, edi
	call	usage
.label_738:
	mov	edi, 1
	call	usage
.label_737:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	qword ptr [rsp], 0
	mov	esi, OFFSET FLAT:label_206
	mov	edx, OFFSET FLAT:label_208
	mov	r8d, OFFSET FLAT:label_744
	mov	r9d, OFFSET FLAT:label_745
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_694:
	xor	edi, edi
	cmp	ecx, ebp
	jge	.label_749
	mov	esi, OFFSET FLAT:label_750
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	movsxd	rax, ebp
	mov	rdi, qword ptr [rbx + rax*8 - 8]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	call	error
	mov	edi, 1
	call	usage
.label_703:
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_693
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r15
	call	quotearg_style
	jmp	.label_760
.label_707:
	movsxd	rax, ecx
	inc	ecx
	mov	dword ptr [rip + optind],  ecx
	mov	rax, qword ptr [rbx + rax*8]
	mov	qword ptr [rip + specified_context],  rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_690
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + specified_context]
	call	quote
.label_760:
	mov	rcx, rax
	mov	edi, 1
	mov	esi, 0x5f
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_711:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_700
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	esi, OFFSET FLAT:label_323
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_749:
	mov	esi, OFFSET FLAT:label_743
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
.label_686:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_697
	jmp	.label_698
.label_701:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_721
.label_698:
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
	#Procedure 0x407cf0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_762
	test	rbx, rbx
	jne	.label_762
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_762:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_764
	test	rax, rax
	je	.label_763
.label_764:
	pop	rbx
	ret	
.label_763:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x407d20

	.globl rpl_fts_close
	.type rpl_fts_close, @function
rpl_fts_close:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rdi
	mov	rdi, qword ptr [r14]
	test	rdi, rdi
	je	.label_770
	cmp	qword ptr [rdi + 0x58], 0
	js	.label_768
	nop	word ptr cs:[rax + rax]
.label_783:
	mov	rbx, qword ptr [rdi + 0x10]
	test	rbx, rbx
	jne	.label_776
	mov	rbx, qword ptr [rdi + 8]
.label_776:
	call	free
	cmp	qword ptr [rbx + 0x58], 0
	mov	rdi, rbx
	jns	.label_783
	jmp	.label_779
.label_768:
	mov	rbx, rdi
.label_779:
	mov	rdi, rbx
	call	free
.label_770:
	mov	rbx, qword ptr [r14 + 8]
	test	rbx, rbx
	je	.label_781
	nop	word ptr cs:[rax + rax]
.label_767:
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_765
	call	closedir
.label_765:
	mov	rdi, rbx
	call	free
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_767
.label_781:
	mov	rdi, qword ptr [r14 + 0x10]
	call	free
	mov	rdi, qword ptr [r14 + 0x20]
	call	free
	mov	eax, dword ptr [r14 + 0x48]
	test	ah, 2
	jne	.label_773
	xor	ebp, ebp
	test	al, 4
	jne	.label_774
	mov	edi, dword ptr [r14 + 0x28]
	call	fchdir
	xor	ebp, ebp
	test	eax, eax
	je	.label_778
	call	__errno_location
	mov	ebp, dword ptr [rax]
.label_778:
	mov	edi, dword ptr [r14 + 0x28]
	call	close
	test	ebp, ebp
	je	.label_780
	jmp	.label_774
.label_773:
	mov	edi, dword ptr [r14 + 0x2c]
	xor	ebp, ebp
	test	edi, edi
	js	.label_774
	call	close
.label_780:
	test	eax, eax
	je	.label_774
	call	__errno_location
	mov	ebp, dword ptr [rax]
.label_774:
	lea	rbx, [r14 + 0x60]
	jmp	.label_766
	.section	.text
	.align	16
	#Procedure 0x407e08
	.globl sub_407e08
	.type sub_407e08, @function
sub_407e08:

	nop	dword ptr [rax + rax]
.label_771:
	mov	edi, eax
	call	close
.label_766:
	mov	rdi, rbx
	call	i_ring_empty
	test	al, al
	jne	.label_769
	mov	rdi, rbx
	call	i_ring_pop
	test	eax, eax
	jns	.label_771
	jmp	.label_766
.label_769:
	mov	rdi, qword ptr [r14 + 0x50]
	test	rdi, rdi
	je	.label_772
	call	hash_free
.label_772:
	movzx	eax, word ptr [r14 + 0x48]
	test	ax, 0x102
	je	.label_775
	mov	rdi, qword ptr [r14 + 0x58]
	test	rdi, rdi
	je	.label_777
	call	hash_free
	jmp	.label_777
.label_775:
	mov	rdi, qword ptr [r14 + 0x58]
	call	free
.label_777:
	mov	rdi, r14
	call	free
	xor	eax, eax
	test	ebp, ebp
	je	.label_782
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_782:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407e82
	.globl sub_407e82
	.type sub_407e82, @function
sub_407e82:

	nop	word ptr cs:[rax + rax]
.label_784:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x407e95
	.globl sub_407e95
	.type sub_407e95, @function
sub_407e95:

	nop	
	.section	.text
	.align	16
	#Procedure 0x407e97
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_108]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_109]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_110]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_784
	test	rdx, rdx
	je	.label_784
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
	.align	16
	#Procedure 0x407f00
	.globl hash_string
	.type hash_string, @function
hash_string:

	mov	al, byte ptr [rdi]
	xor	edx, edx
	test	al, al
	je	.label_785
	inc	rdi
	xor	edx, edx
	nop	dword ptr [rax]
.label_786:
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
	jne	.label_786
.label_785:
	mov	rax, rdx
	ret	
	.section	.text
	.align	16
	#Procedure 0x407f33
	.globl sub_407f33
	.type sub_407f33, @function
sub_407f33:

	nop	word ptr cs:[rax + rax]
.label_787:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x407f45
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_108]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_109]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_110]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_787
	test	rsi, rsi
	je	.label_787
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	.section	.text
	.align	16
	#Procedure 0x407fb0

	.globl enter_dir
	.type enter_dir, @function
enter_dir:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbp, rdi
	movzx	eax, word ptr [rbp + 0x48]
	test	ax, 0x102
	je	.label_791
	mov	edi, 0x18
	call	malloc
	mov	rbx, rax
	test	rbx, rbx
	je	.label_788
	movups	xmm0, xmmword ptr [r14 + 0x78]
	movups	xmmword ptr [rbx], xmm0
	mov	qword ptr [rbx + 0x10], r14
	mov	rdi, qword ptr [rbp + 0x58]
	mov	rsi, rbx
	call	hash_insert
	mov	r15, rax
	mov	bpl, 1
	cmp	r15, rbx
	je	.label_790
	mov	rdi, rbx
	call	free
	test	r15, r15
	je	.label_788
	mov	rax, qword ptr [r15 + 0x10]
	mov	qword ptr [r14], rax
	jmp	.label_789
.label_788:
	xor	ebp, ebp
.label_790:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408021
	.globl sub_408021
	.type sub_408021, @function
sub_408021:

	nop	word ptr cs:[rax + rax]
.label_791:
	mov	rdi, qword ptr [rbp + 0x58]
	lea	rsi, [r14 + 0x78]
	call	cycle_check
	mov	bpl, 1
	test	al, al
	je	.label_790
	mov	qword ptr [r14], r14
.label_789:
	mov	word ptr [r14 + 0x70], 2
	jmp	.label_790
	.section	.text
	.align	16
	#Procedure 0x408050
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	.section	.text
	.align	16
	#Procedure 0x408058
	.globl sub_408058
	.type sub_408058, @function
sub_408058:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408060
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_792:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_792
	jmp	version_etc_arn
	.section	.text
	.align	16
	#Procedure 0x408081
	.globl sub_408081
	.type sub_408081, @function
sub_408081:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408090
	.globl hash_get_n_entries
	.type hash_get_n_entries, @function
hash_get_n_entries:

	mov	rax, qword ptr [rdi + 0x20]
	ret	
	.section	.text
	.align	16
	#Procedure 0x408095
	.globl sub_408095
	.type sub_408095, @function
sub_408095:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4080a0
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
	je	.label_794
	test	r14, r14
	je	.label_793
.label_794:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_793:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4080d6
	.globl sub_4080d6
	.type sub_4080d6, @function
sub_4080d6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4080e0
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
	je	.label_795
	mov	qword ptr [rax], rbx
.label_795:
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
	#Procedure 0x4081cc
	.globl sub_4081cc
	.type sub_4081cc, @function
sub_4081cc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4081d0
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
	je	.label_796
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
.label_796:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x408238
	.globl sub_408238
	.type sub_408238, @function
sub_408238:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408240
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
	#Procedure 0x408259
	.globl sub_408259
	.type sub_408259, @function
sub_408259:

	nop	dword ptr [rax]
.label_802:
	test	rdx, rdx
	je	.label_797
	mov	rax, qword ptr [rdx]
	jmp	.label_798
.label_797:
	mov	rdx, qword ptr [r14 + 8]
	lea	rcx, [rcx + rax + 0x10]
	nop	word ptr cs:[rax + rax]
.label_799:
	cmp	rcx, rdx
	mov	eax, 0
	jae	.label_798
	mov	rax, qword ptr [rcx]
	add	rcx, 0x10
	test	rax, rax
	je	.label_799
.label_798:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x40829e
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
	jae	.label_800
	mov	rcx, qword ptr [r14]
	shl	rax, 4
	lea	rdx, [rcx + rax]
	nop	word ptr cs:[rax + rax]
.label_801:
	cmp	qword ptr [rdx], rbx
	mov	rdx, qword ptr [rdx + 8]
	je	.label_802
	test	rdx, rdx
	jne	.label_801
	jmp	.label_797
.label_800:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4082e3
	.globl sub_4082e3
	.type sub_4082e3, @function
sub_4082e3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4082f0

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
	je	.label_814
	mov	edx, OFFSET FLAT:label_809
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_816
.label_814:
	mov	edx, OFFSET FLAT:label_817
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_816:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_821
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
	mov	esi, OFFSET FLAT:label_818
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_805
	jmp	qword ptr [(r12 * 8) + label_806]
.label_1039:
	add	rsp, 8
	jmp	.label_803
.label_805:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_813
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
	jmp	.label_803
.label_1040:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_819
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
.label_1041:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_804
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
.label_1042:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_811
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
.label_1043:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_807
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
	jmp	.label_803
.label_1044:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_810
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
	jmp	.label_803
.label_1045:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_808
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
	jmp	.label_803
.label_1046:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_812
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
	jmp	.label_803
.label_1048:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_815
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
	jmp	.label_803
.label_1047:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_820
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
.label_803:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x408648
	.globl sub_408648
	.type sub_408648, @function
sub_408648:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408650

	.globl chdir_long
	.type chdir_long, @function
chdir_long:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	rbp, rdi
	call	chdir
	mov	ebx, eax
	test	ebx, ebx
	je	.label_852
	call	__errno_location
	mov	r14, rax
	cmp	dword ptr [r14], 0x24
	jne	.label_832
	mov	rdi, rbp
	call	strlen
	mov	r15, rax
	test	r15, r15
	je	.label_824
	cmp	r15, 0x1000
	jb	.label_831
	add	r15, rbp
	mov	rbx, -1
	nop	word ptr [rax + rax]
.label_840:
	cmp	byte ptr [rbp + rbx + 1], 0x2f
	lea	rbx, [rbx + 1]
	je	.label_840
	mov	r12d, 0xffffff9c
	test	rbx, rbx
	je	.label_843
	cmp	rbx, 2
	jne	.label_845
	lea	rdi, [rbp + 3]
	mov	rdx, r15
	sub	rdx, rdi
	mov	esi, 0x2f
	call	memchr
	mov	rbx, rax
	test	rbx, rbx
	je	.label_835
	mov	byte ptr [rbx], 0
	mov	edi, 0xffffff9c
	mov	edx, 0x10900
	xor	eax, eax
	mov	rsi, rbp
	call	openat
	mov	r12d, eax
	test	r12d, r12d
	mov	byte ptr [rbx], 0x2f
	js	.label_828
	nop	word ptr cs:[rax + rax]
.label_834:
	cmp	byte ptr [rbx + 1], 0x2f
	lea	rbx, [rbx + 1]
	je	.label_834
	jmp	.label_837
.label_852:
	xor	ebx, ebx
	jmp	.label_832
.label_845:
	mov	edi, 0xffffff9c
	mov	esi, OFFSET FLAT:label_323
	mov	edx, 0x10900
	xor	eax, eax
	call	openat
	mov	r12d, eax
	test	r12d, r12d
	js	.label_828
	add	rbp, rbx
.label_843:
	mov	rbx, rbp
.label_837:
	cmp	byte ptr [rbx], 0x2f
	je	.label_850
	cmp	rbx, r15
	jbe	.label_855
	mov	edi, OFFSET FLAT:label_854
	mov	esi, OFFSET FLAT:label_826
	mov	edx, 0xa3
	mov	ecx, OFFSET FLAT:label_827
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x408786
	.globl sub_408786
	.type sub_408786, @function
sub_408786:

	nop	word ptr cs:[rax + rax]
.label_829:
	mov	esi, 0x2f
	mov	edx, 0x1000
	mov	rdi, rbx
	call	memrchr
	mov	rbp, rax
	test	rbp, rbp
	je	.label_835
	mov	byte ptr [rbp], 0
	mov	rax, rbp
	sub	rax, rbx
	cmp	rax, 0x1000
	jge	.label_839
	mov	edx, 0x10900
	xor	eax, eax
	mov	edi, r12d
	mov	rsi, rbx
	call	openat
	mov	ebx, eax
	test	ebx, ebx
	js	.label_849
	test	r12d, r12d
	js	.label_836
	mov	edi, r12d
	call	close
	test	eax, eax
	jne	.label_823
.label_836:
	mov	r12d, ebx
	mov	byte ptr [rbp], 0x2f
	mov	rbx, rbp
	nop	
.label_822:
	cmp	byte ptr [rbx + 1], 0x2f
	lea	rbx, [rbx + 1]
	je	.label_822
.label_855:
	mov	rax, r15
	sub	rax, rbx
	cmp	rax, 0x1000
	jge	.label_829
	cmp	rbx, r15
	jae	.label_833
	mov	edx, 0x10900
	xor	eax, eax
	mov	edi, r12d
	mov	rsi, rbx
	call	openat
	mov	ebx, eax
	test	ebx, ebx
	js	.label_844
	test	r12d, r12d
	js	.label_842
	mov	edi, r12d
	call	close
	test	eax, eax
	je	.label_842
	jmp	.label_823
.label_835:
	mov	dword ptr [r14], 0x24
	jmp	.label_848
.label_833:
	mov	ebx, r12d
.label_842:
	mov	edi, ebx
	call	fchdir
	test	eax, eax
	je	.label_851
	mov	r12d, ebx
	jmp	.label_844
.label_828:
	mov	ebx, dword ptr [r14]
	jmp	.label_838
.label_851:
	test	ebx, ebx
	js	.label_830
	mov	edi, ebx
	call	close
	test	eax, eax
	mov	ebx, 0
	je	.label_832
	jmp	.label_823
.label_849:
	mov	byte ptr [rbp], 0x2f
.label_844:
	mov	ebx, dword ptr [r14]
	test	r12d, r12d
	js	.label_838
	mov	edi, r12d
	call	close
	test	eax, eax
	jne	.label_823
.label_838:
	mov	dword ptr [r14], ebx
.label_848:
	mov	ebx, 0xffffffff
.label_832:
	mov	eax, ebx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_830:
	xor	ebx, ebx
	jmp	.label_832
.label_839:
	mov	edi, OFFSET FLAT:label_841
	mov	esi, OFFSET FLAT:label_826
	mov	edx, 0xb3
	mov	ecx, OFFSET FLAT:label_827
	call	__assert_fail
.label_823:
	mov	edi, OFFSET FLAT:label_846
	mov	esi, OFFSET FLAT:label_826
	mov	edx, 0x40
	mov	ecx, OFFSET FLAT:label_847
	call	__assert_fail
.label_824:
	mov	edi, OFFSET FLAT:label_853
	mov	esi, OFFSET FLAT:label_826
	mov	edx, 0x7e
	mov	ecx, OFFSET FLAT:label_827
	call	__assert_fail
.label_831:
	mov	edi, OFFSET FLAT:label_856
	mov	esi, OFFSET FLAT:label_826
	mov	edx, 0x7f
	mov	ecx, OFFSET FLAT:label_827
	call	__assert_fail
.label_850:
	mov	edi, OFFSET FLAT:label_825
	mov	esi, OFFSET FLAT:label_826
	mov	edx, 0xa2
	mov	ecx, OFFSET FLAT:label_827
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x40892f
	.globl sub_40892f
	.type sub_40892f, @function
sub_40892f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x408930
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_108]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_109]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_110]
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
	#Procedure 0x40899f
	.globl sub_40899f
	.type sub_40899f, @function
sub_40899f:

	nop	
.label_857:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4089a5
	.globl sub_4089a5
	.type sub_4089a5, @function
sub_4089a5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4089b3
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
	je	.label_858
	test	r15, r15
	je	.label_857
.label_858:
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
	#Procedure 0x4089f0
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
	#Procedure 0x408ab1
	.globl sub_408ab1
	.type sub_408ab1, @function
sub_408ab1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408ac0

	.globl cycle_check_init
	.type cycle_check_init, @function
cycle_check_init:
	mov	qword ptr [rdi + 0x10], 0
	mov	dword ptr [rdi + 0x18], 0x95f616
	ret	
	.section	.text
	.align	16
	#Procedure 0x408ad0

	.globl xfts_open
	.type xfts_open, @function
xfts_open:
	push	rax
	or	esi, 0x200
	call	rpl_fts_open
	test	rax, rax
	je	.label_860
	pop	rcx
	ret	
.label_860:
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_859
	mov	edi, OFFSET FLAT:label_861
	mov	esi, OFFSET FLAT:label_862
	mov	edx, 0x29
	mov	ecx, OFFSET FLAT:label_863
	call	__assert_fail
.label_859:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x408b0b
	.globl sub_408b0b
	.type sub_408b0b, @function
sub_408b0b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408b10
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_864
	test	rax, rax
	je	.label_865
.label_864:
	pop	rbx
	ret	
.label_865:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x408b2a
	.globl sub_408b2a
	.type sub_408b2a, @function
sub_408b2a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408b30
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_108]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_109]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_110]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_866
	test	rsi, rsi
	je	.label_866
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
.label_866:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x408b9c
	.globl sub_408b9c
	.type sub_408b9c, @function
sub_408b9c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408ba0

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
	jne	.label_878
	mov	ecx, esi
	and	ecx, 1
	test	rsi, rsi
	js	.label_883
	cvtsi2ss	xmm0, rsi
	jmp	.label_869
.label_883:
	shr	rsi, 1
	or	rcx, rsi
	cvtsi2ss	xmm0, rcx
	addss	xmm0, xmm0
.label_869:
	divss	xmm0, dword ptr [rax + 8]
	movss	xmm1, dword ptr [rip + label_227]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rsi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rsi, rcx
	ucomiss	xmm0, dword ptr [rip + label_228]
	jae	.label_871
.label_878:
	cmp	rsi, 0xa
	mov	ebx, 0xa
	cmovae	rbx, rsi
	or	rbx, 1
	jmp	.label_874
	.section	.text
	.align	16
	#Procedure 0x408c2b
	.globl sub_408c2b
	.type sub_408c2b, @function
sub_408c2b:

	nop	dword ptr [rax + rax]
.label_885:
	add	rbx, 2
.label_874:
	cmp	rbx, -1
	je	.label_871
	cmp	rbx, 0xa
	mov	ecx, 3
	jb	.label_867
	mov	esi, 0xc
	mov	edi, 9
	mov	ecx, 3
	nop	dword ptr [rax + rax]
.label_882:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_867
	lea	rdi, [rdi + rsi + 4]
	add	rcx, 2
	add	rsi, 8
	cmp	rdi, rbx
	jb	.label_882
.label_867:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_885
	lea	rax, [rbx - 1]
	movabs	rcx, 0xffffffffffffffe
	cmp	rax, rcx
	ja	.label_871
	mov	bpl, 1
	cmp	rbx, qword ptr [r14 + 0x10]
	je	.label_875
	mov	esi, 0x10
	mov	rdi, rbx
	call	rpl_calloc
	mov	qword ptr [rsp], rax
	test	rax, rax
	je	.label_871
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
	je	.label_872
	mov	rdi, qword ptr [r14]
	call	free
	movaps	xmm0, xmmword ptr [rsp]
	movups	xmmword ptr [r14], xmm0
	movaps	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [r14 + 0x10], xmm0
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [r14 + 0x48], rax
	jmp	.label_875
.label_872:
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [r14 + 0x48], rax
	mov	r12, qword ptr [rsp]
	mov	r15, qword ptr [rsp + 8]
	jmp	.label_884
	.section	.text
	.align	16
	#Procedure 0x408d4e
	.globl sub_408d4e
	.type sub_408d4e, @function
sub_408d4e:

	nop	
.label_876:
	add	r12, 0x10
.label_884:
	cmp	r12, r15
	jae	.label_873
	cmp	qword ptr [r12], 0
	je	.label_876
	mov	rbp, qword ptr [r12 + 8]
	test	rbp, rbp
	je	.label_879
	mov	rsi, qword ptr [r14 + 0x10]
	nop	word ptr cs:[rax + rax]
.label_877:
	mov	rbx, qword ptr [rbp]
	mov	rdi, rbx
	call	qword ptr [r14 + 0x30]
	mov	rsi, qword ptr [r14 + 0x10]
	cmp	rax, rsi
	jae	.label_870
	mov	rdx, qword ptr [r14]
	mov	rcx, qword ptr [rbp + 8]
	shl	rax, 4
	cmp	qword ptr [rdx + rax], 0
	je	.label_880
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [rbp + 8], rdi
	mov	qword ptr [rdx + rax + 8], rbp
	jmp	.label_881
	.section	.text
	.align	16
	#Procedure 0x408dba
	.globl sub_408dba
	.type sub_408dba, @function
sub_408dba:

	nop	word ptr [rax + rax]
.label_880:
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [r14 + 0x18]
	mov	qword ptr [rbp], 0
	mov	rax, qword ptr [r14 + 0x48]
	mov	qword ptr [rbp + 8], rax
	mov	qword ptr [r14 + 0x48], rbp
.label_881:
	test	rcx, rcx
	mov	rbp, rcx
	jne	.label_877
.label_879:
	mov	qword ptr [r12 + 8], 0
	jmp	.label_876
.label_873:
	lea	rsi, [rsp]
	xor	edx, edx
	mov	rdi, r14
	call	transfer_entries
	test	al, al
	je	.label_868
	mov	rdi, qword ptr [rsp]
	call	free
.label_871:
	xor	ebp, ebp
.label_875:
	mov	eax, ebp
	add	rsp, 0x50
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_870:
	call	abort
.label_868:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x408e2a
	.globl sub_408e2a
	.type sub_408e2a, @function
sub_408e2a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408e30

	.globl openat_safer
	.type openat_safer, @function
openat_safer:
	sub	rsp, 0xd8
	test	al, al
	je	.label_886
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_886:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	xor	ecx, ecx
	test	dl, 0x40
	je	.label_887
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x18
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_888
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_889
.label_888:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_889:
	mov	ecx, dword ptr [rax]
.label_887:
	xor	eax, eax
	call	openat
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xd8
	ret	
	.section	.text
	.align	16
	#Procedure 0x408eee
	.globl sub_408eee
	.type sub_408eee, @function
sub_408eee:

	nop	
.label_895:
	test	rcx, rcx
	jne	.label_894
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_894:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_892
.label_896:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_890
	test	rbx, rbx
	jne	.label_890
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_893:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x408f41
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_895
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_893
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_896
.label_892:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x408f73
	.globl sub_408f73
	.type sub_408f73, @function
sub_408f73:

	nop	word ptr [rax + rax]
.label_890:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_891
	test	rax, rax
	je	.label_893
.label_891:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x408f90

	.globl fts_stat
	.type fts_stat, @function
fts_stat:
	push	r15
	push	r14
	push	rbx
	mov	r15, rsi
	mov	r14, rdi
	mov	eax, dword ptr [r14 + 0x48]
	cmp	qword ptr [r15 + 0x58], 0
	jne	.label_901
	test	al, 1
	je	.label_901
	mov	dl, 1
.label_901:
	lea	rbx, [r15 + 0x78]
	test	dl, dl
	jne	.label_906
	and	eax, 2
	jne	.label_906
	mov	esi, dword ptr [r14 + 0x2c]
	mov	rdx, qword ptr [r15 + 0x30]
	mov	edi, 1
	mov	r8d, 0x100
	mov	rcx, rbx
	call	__fxstatat
	test	eax, eax
	je	.label_902
	call	__errno_location
	mov	eax, dword ptr [rax]
	jmp	.label_905
.label_906:
	mov	rsi, qword ptr [r15 + 0x30]
	mov	edi, 1
	mov	rdx, rbx
	call	__xstat
	test	eax, eax
	je	.label_902
	call	__errno_location
	mov	r14, rax
	mov	eax, dword ptr [r14]
	cmp	eax, 2
	jne	.label_905
	mov	rsi, qword ptr [r15 + 0x30]
	mov	edi, 1
	mov	rdx, rbx
	call	__lxstat
	test	eax, eax
	je	.label_903
	mov	eax, dword ptr [r14]
.label_905:
	mov	dword ptr [r15 + 0x40], eax
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx + 0x80], xmm0
	movups	xmmword ptr [rbx + 0x70], xmm0
	movups	xmmword ptr [rbx + 0x60], xmm0
	movups	xmmword ptr [rbx + 0x50], xmm0
	movups	xmmword ptr [rbx + 0x40], xmm0
	movups	xmmword ptr [rbx + 0x30], xmm0
	movups	xmmword ptr [rbx + 0x20], xmm0
	movups	xmmword ptr [rbx + 0x10], xmm0
	movups	xmmword ptr [rbx], xmm0
	mov	ax, 0xa
.label_897:
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_902:
	movzx	ecx, word ptr [r15 + 0x90]
	and	ecx, 0xf000
	cmp	ecx, 0x8000
	je	.label_904
	mov	ax, 0xc
	movzx	ecx, cx
	cmp	ecx, 0xa000
	je	.label_897
	cmp	ecx, 0x4000
	jne	.label_898
	mov	rax, qword ptr [r15 + 0x88]
	mov	rcx, -1
	cmp	rax, 2
	jb	.label_899
	cmp	qword ptr [r15 + 0x58], 0
	jle	.label_899
	mov	ecx, dword ptr [r14 + 0x48]
	shr	ecx, 4
	not	ecx
	and	ecx, 2
	sub	rax, rcx
	mov	rcx, rax
.label_899:
	mov	qword ptr [r15 + 0x68], rcx
	mov	ecx, dword ptr [r15 + 0x108]
	mov	ax, 1
	cmp	cl, 0x2e
	jne	.label_897
	mov	edx, ecx
	shr	edx, 8
	test	dl, dl
	je	.label_900
	cmp	dl, 0x2e
	jne	.label_897
	test	ecx, 0xff0000
	jne	.label_897
.label_900:
	cmp	qword ptr [r15 + 0x58], 0
	mov	cx, 1
	mov	ax, 5
	cmove	ax, cx
	jmp	.label_897
.label_904:
	mov	ax, 8
	jmp	.label_897
.label_898:
	mov	ax, 3
	jmp	.label_897
.label_903:
	mov	dword ptr [r14], 0
	mov	ax, 0xd
	jmp	.label_897
	.section	.text
	.align	16
	#Procedure 0x409125
	.globl sub_409125
	.type sub_409125, @function
sub_409125:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409130

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_908
	cmp	byte ptr [rax], 0x43
	jne	.label_910
	cmp	byte ptr [rax + 1], 0
	je	.label_907
.label_910:
	mov	esi, OFFSET FLAT:label_909
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_908
.label_907:
	xor	ebx, ebx
.label_908:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x409161
	.globl sub_409161
	.type sub_409161, @function
sub_409161:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409170

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_108]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_109]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_110]
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
	#Procedure 0x4091c5
	.globl sub_4091c5
	.type sub_4091c5, @function
sub_4091c5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4091d0

	.globl openat_save_fail
	.type openat_save_fail, @function
openat_save_fail:
	push	rbp
	push	rbx
	push	rax
	mov	ebx, edi
	mov	ebp, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_911
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	edi, ebp
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x409202
	.globl sub_409202
	.type sub_409202, @function
sub_409202:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409210
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_912
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_913
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_915
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_208
	mov	ecx, OFFSET FLAT:label_205
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_914
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x409284
	.globl sub_409284
	.type sub_409284, @function
sub_409284:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409290

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_916
	test	rsi, rsi
	mov	ecx, 1
	je	.label_917
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_917
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_916:
	mov	ecx, 1
.label_917:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	16
	#Procedure 0x4092db
	.globl sub_4092db
	.type sub_4092db, @function
sub_4092db:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4092e0
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
	#Procedure 0x409316
	.globl sub_409316
	.type sub_409316, @function
sub_409316:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409320

	.globl setfileconat
	.type setfileconat, @function
setfileconat:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0xfc8
	mov	rax, rsi
	mov	ebx, edi
	cmp	ebx, -0x64
	je	.label_923
	cmp	byte ptr [rax], 0x2f
	jne	.label_918
.label_923:
	call	__errno_location
	mov	dword ptr [rax], 0x5f
.label_920:
	mov	eax, 0xffffffff
	add	rsp, 0xfc8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_918:
	lea	r15, [rsp]
	mov	rdi, r15
	mov	esi, ebx
	mov	rdx, rax
	call	openat_proc_name
	mov	r14, rax
	test	r14, r14
	je	.label_924
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	cmp	r14, r15
	je	.label_924
	mov	rdi, r14
	call	free
.label_924:
	lea	rdi, [rsp]
	call	save_cwd
	test	eax, eax
	jne	.label_919
	test	ebx, ebx
	js	.label_921
	cmp	dword ptr [rsp], ebx
	jne	.label_921
	lea	rdi, [rsp]
	call	free_cwd
	call	__errno_location
	mov	dword ptr [rax], 9
	jmp	.label_920
.label_921:
	mov	edi, ebx
	call	fchdir
	mov	ebp, eax
	call	__errno_location
	mov	rbx, rax
	test	ebp, ebp
	je	.label_922
	mov	ebp, dword ptr [rbx]
	lea	rdi, [rsp]
	call	free_cwd
	mov	dword ptr [rbx], ebp
	jmp	.label_920
.label_922:
	mov	dword ptr [rbx], 0x5f
	lea	rdi, [rsp]
	call	restore_cwd
	test	eax, eax
	jne	.label_925
	lea	rdi, [rsp]
	call	free_cwd
	mov	dword ptr [rbx], 0x5f
	jmp	.label_920
.label_919:
	call	__errno_location
	mov	edi, dword ptr [rax]
	call	openat_save_fail
.label_925:
	mov	edi, dword ptr [rbx]
	call	openat_restore_fail
	.section	.text
	.align	16
	#Procedure 0x409418
	.globl sub_409418
	.type sub_409418, @function
sub_409418:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409420

	.globl open_safer
	.type open_safer, @function
open_safer:
	sub	rsp, 0xd8
	test	al, al
	je	.label_926
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_926:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x30], rdx
	xor	edx, edx
	test	sil, 0x40
	je	.label_928
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x10
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_929
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_927
.label_929:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_927:
	mov	edx, dword ptr [rax]
.label_928:
	xor	eax, eax
	call	open
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xd8
	ret	
	.section	.text
	.align	16
	#Procedure 0x4094e4
	.globl sub_4094e4
	.type sub_4094e4, @function
sub_4094e4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4094f0
	.globl hash_get_max_bucket_length
	.type hash_get_max_bucket_length, @function
hash_get_max_bucket_length:

	mov	rcx, qword ptr [rdi]
	mov	rdi, qword ptr [rdi + 8]
	xor	eax, eax
	cmp	rcx, rdi
	jae	.label_933
	mov	rax, rcx
	not	rax
	add	rdi, rax
	shr	rdi, 4
	lea	rsi, [rdi + 1]
	mov	r8d, esi
	and	r8d, 1
	xor	eax, eax
	test	rdi, rdi
	je	.label_931
	sub	rsi, r8
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_932:
	cmp	qword ptr [rcx], 0
	je	.label_934
	xor	edi, edi
	mov	rdx, rcx
	nop	dword ptr [rax + rax]
.label_930:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_930
	cmp	rdi, rax
	cmova	rax, rdi
.label_934:
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_937
	lea	rdx, [rcx + 0x10]
	xor	edi, edi
.label_935:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_935
	cmp	rdi, rax
	cmova	rax, rdi
.label_937:
	add	rcx, 0x20
	add	rsi, -2
	jne	.label_932
.label_931:
	test	r8, r8
	je	.label_933
	cmp	qword ptr [rcx], 0
	je	.label_933
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_936:
	mov	rcx, qword ptr [rcx + 8]
	inc	rdx
	test	rcx, rcx
	jne	.label_936
	cmp	rdx, rax
	cmova	rax, rdx
.label_933:
	ret	
	.section	.text
	.align	16
	#Procedure 0x4095a4
	.globl sub_4095a4
	.type sub_4095a4, @function
sub_4095a4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4095b0
	.globl hash_table_ok
	.type hash_table_ok, @function
hash_table_ok:

	mov	rax, qword ptr [rdi]
	mov	r9, qword ptr [rdi + 8]
	xor	r10d, r10d
	cmp	rax, r9
	mov	ecx, 0
	jae	.label_939
	mov	rcx, rax
	not	rcx
	add	r9, rcx
	shr	r9, 4
	lea	rsi, [r9 + 1]
	mov	r8d, esi
	and	r8d, 1
	xor	ecx, ecx
	test	r9, r9
	je	.label_940
	sub	rsi, r8
	xor	ecx, ecx
	xor	r10d, r10d
	nop	
.label_946:
	cmp	qword ptr [rax], 0
	je	.label_947
	mov	rdx, rax
	nop	dword ptr [rax]
.label_938:
	inc	rcx
	mov	rdx, qword ptr [rdx + 8]
	test	rdx, rdx
	jne	.label_938
	inc	r10
.label_947:
	cmp	qword ptr [rax + 0x10], 0
	je	.label_941
	lea	rdx, [rax + 0x10]
	nop	word ptr [rax + rax]
.label_944:
	inc	rcx
	mov	rdx, qword ptr [rdx + 8]
	test	rdx, rdx
	jne	.label_944
	inc	r10
.label_941:
	add	rax, 0x20
	add	rsi, -2
	jne	.label_946
	jmp	.label_948
.label_940:
	xor	r10d, r10d
.label_948:
	test	r8, r8
	je	.label_939
	cmp	qword ptr [rax], 0
	je	.label_939
	nop	dword ptr [rax]
.label_942:
	inc	rcx
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_942
	inc	r10
.label_939:
	cmp	r10, qword ptr [rdi + 0x18]
	jne	.label_943
	mov	al, 1
	cmp	rcx, qword ptr [rdi + 0x20]
	je	.label_945
.label_943:
	xor	eax, eax
.label_945:
	ret	
	.section	.text
	.align	16
	#Procedure 0x4096d5
	.globl sub_4096d5
	.type sub_4096d5, @function
sub_4096d5:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4096e2
	.globl sub_4096e2
	.type sub_4096e2, @function
sub_4096e2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409706
	.globl sub_409706
	.type sub_409706, @function
sub_409706:

	nop	word ptr cs:[rax + rax]
