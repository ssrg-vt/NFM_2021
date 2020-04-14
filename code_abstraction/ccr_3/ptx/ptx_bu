	.section	.text
	.align	32
	#Procedure 0x401ce9
	.globl sub_401ce9
	.type sub_401ce9, @function
sub_401ce9:

	hlt	
	.section	.text
	.align	32
	#Procedure 0x401cea
	.globl sub_401cea
	.type sub_401cea, @function
sub_401cea:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401d22
	.globl sub_401d22
	.type sub_401d22, @function
sub_401d22:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401d6a
	.globl sub_401d6a
	.type sub_401d6a, @function
sub_401d6a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401d8c
	.globl sub_401d8c
	.type sub_401d8c, @function
sub_401d8c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401d9d
	.globl sub_401d9d
	.type sub_401d9d, @function
sub_401d9d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401db6
	.globl sub_401db6
	.type sub_401db6, @function
sub_401db6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401dc0

	.globl parse_reg_exp
	.type parse_reg_exp, @function
parse_reg_exp:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r12, rdx
	mov	r15, qword ptr [rsi]
	mov	rax, qword ptr [r15 + 0xa8]
	mov	qword ptr [rsp + 0x20], rax
	mov	qword ptr [rsp], rdi
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 8], rcx
	mov	qword ptr [rsp + 0x18], r8
	mov	qword ptr [rsp + 0x10], r9
	call	parse_branch
	mov	rbx, rax
	xor	r13d, r13d
	test	rbx, rbx
	jne	.label_32
	mov	rax, qword ptr [rsp + 0x10]
	mov	eax, dword ptr [rax]
	test	eax, eax
	jne	.label_9
.label_32:
	cmp	byte ptr [r12 + 8], 0xa
	jne	.label_13
	mov	rax, qword ptr [rsp + 8]
	or	rax, 0x800000
	mov	qword ptr [rsp + 0x30], rax
	cmp	qword ptr [rsp + 0x18], 0
	jne	.label_15
	jmp	.label_16
.label_13:
	mov	r13, rbx
	jmp	.label_9
.label_11:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_24
	mov	rcx, qword ptr [r15 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r15 + 0x70], rax
	mov	dword ptr [r15 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_27
	.section	.text
	.align	32
	#Procedure 0x401e74
	.globl sub_401e74
	.type sub_401e74, @function
sub_401e74:

	nop	word ptr cs:[rax + rax]
.label_15:
	mov	rdi, r12
	mov	rbp, qword ptr [rsp]
	mov	rsi, rbp
	mov	rdx, qword ptr [rsp + 0x30]
	call	peek_token
	cdqe	
	add	qword ptr [rbp + 0x48], rax
	movzx	eax, byte ptr [r12 + 8]
	mov	ecx, eax
	or	cl, 8
	cmp	cl, 0xa
	mov	r14d, 0
	mov	r13, qword ptr [rsp + 0x10]
	je	.label_12
	cmp	eax, 9
	mov	r14d, 0
	je	.label_12
	mov	rbp, qword ptr [r15 + 0xa8]
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [r15 + 0xa8], rax
	mov	rdi, qword ptr [rsp]
	mov	rsi, qword ptr [rsp + 0x28]
	mov	rdx, r12
	mov	rcx, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x18]
	mov	r9, r13
	call	parse_branch
	mov	r14, rax
	test	r14, r14
	jne	.label_31
	mov	eax, dword ptr [r13]
	test	eax, eax
	jne	.label_18
.label_31:
	or	qword ptr [r15 + 0xa8], rbp
	nop	dword ptr [rax]
.label_12:
	mov	ecx, dword ptr [r15 + 0x80]
	cmp	ecx, 0xf
	je	.label_11
	mov	rax, qword ptr [r15 + 0x70]
.label_27:
	lea	edx, [rcx + 1]
	mov	dword ptr [r15 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r13, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rbx
	mov	qword ptr [rax + rcx + 0x18], r14
	mov	dword ptr [rax + rcx + 0x38], 0xa
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	test	rbx, rbx
	je	.label_17
	mov	qword ptr [rbx], r13
.label_17:
	test	r14, r14
	je	.label_30
	mov	qword ptr [r14], r13
.label_30:
	cmp	byte ptr [r12 + 8], 0xa
	mov	rbx, r13
	je	.label_15
	jmp	.label_9
.label_21:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_24
	mov	rcx, qword ptr [r15 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r15 + 0x70], rax
	mov	dword ptr [r15 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_19
	.section	.text
	.align	32
	#Procedure 0x401fba
	.globl sub_401fba
	.type sub_401fba, @function
sub_401fba:

	nop	word ptr [rax + rax]
.label_16:
	mov	rdi, r12
	mov	rbp, qword ptr [rsp]
	mov	rsi, rbp
	mov	rdx, qword ptr [rsp + 0x30]
	call	peek_token
	cdqe	
	add	qword ptr [rbp + 0x48], rax
	movzx	eax, byte ptr [r12 + 8]
	or	al, 8
	cmp	al, 0xa
	mov	ebp, 0
	mov	r13, qword ptr [rsp + 0x10]
	je	.label_25
	mov	r14, qword ptr [r15 + 0xa8]
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [r15 + 0xa8], rax
	xor	r8d, r8d
	mov	rdi, qword ptr [rsp]
	mov	rsi, qword ptr [rsp + 0x28]
	mov	rdx, r12
	mov	rcx, qword ptr [rsp + 8]
	mov	r9, r13
	call	parse_branch
	mov	rbp, rax
	test	rbp, rbp
	jne	.label_22
	mov	eax, dword ptr [r13]
	test	eax, eax
	jne	.label_18
.label_22:
	or	qword ptr [r15 + 0xa8], r14
.label_25:
	mov	ecx, dword ptr [r15 + 0x80]
	cmp	ecx, 0xf
	je	.label_21
	mov	rax, qword ptr [r15 + 0x70]
.label_19:
	lea	edx, [rcx + 1]
	mov	dword ptr [r15 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r13, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rbx
	mov	qword ptr [rax + rcx + 0x18], rbp
	mov	dword ptr [rax + rcx + 0x38], 0xa
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	test	rbx, rbx
	je	.label_26
	mov	qword ptr [rbx], r13
.label_26:
	test	rbp, rbp
	je	.label_14
	mov	qword ptr [rbp], r13
.label_14:
	cmp	byte ptr [r12 + 8], 0xa
	mov	rbx, r13
	je	.label_16
.label_9:
	mov	rax, r13
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_18:
	xor	r13d, r13d
	test	rbx, rbx
	je	.label_9
	mov	r14d, 0x400ff
	xor	r13d, r13d
.label_20:
	mov	rbp, rbx
	mov	rbx, qword ptr [rbp + 8]
	test	rbx, rbx
	jne	.label_20
	mov	rbx, qword ptr [rbp + 0x10]
	test	rbx, rbx
	jne	.label_20
.label_23:
	mov	eax, dword ptr [rbp + 0x30]
	and	eax, r14d
	cmp	eax, 3
	je	.label_29
	cmp	eax, 6
	jne	.label_10
	mov	rbx, qword ptr [rbp + 0x28]
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rdi, qword ptr [rbx + 8]
	call	free
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	mov	rdi, rbx
	jmp	.label_28
.label_29:
	mov	rdi, qword ptr [rbp + 0x28]
.label_28:
	call	free
.label_10:
	mov	rax, qword ptr [rbp]
	test	rax, rax
	je	.label_9
	mov	rbx, qword ptr [rax + 0x10]
	cmp	rbx, rbp
	mov	rbp, rax
	je	.label_23
	test	rbx, rbx
	mov	rbp, rax
	je	.label_23
	jmp	.label_20
.label_24:
	mov	dword ptr [r13], 0xc
	xor	r13d, r13d
	jmp	.label_9
	.section	.text
	.align	32
	#Procedure 0x402160

	.globl expand_bkref_cache
	.type expand_bkref_cache, @function
expand_bkref_cache:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x58
	mov	r15, rdx
	mov	r14, qword ptr [rdi + 0x98]
	mov	r9, qword ptr [rdi + 0xc8]
	xor	eax, eax
	test	r9, r9
	mov	r11d, 0
	jle	.label_55
	mov	r10, qword ptr [rdi + 0xd8]
	xor	r11d, r11d
	mov	rdx, r9
	nop	dword ptr [rax]
.label_42:
	lea	rbp, [rdx + r11]
	mov	rbx, rbp
	shr	rbx, 0x3f
	add	rbx, rbp
	sar	rbx, 1
	lea	rbp, [rbx + rbx*4]
	cmp	qword ptr [r10 + rbp*8 + 8], r15
	cmovge	rdx, rbx
	lea	rbp, [rbx + 1]
	cmovl	r11, rbp
	cmp	r11, rdx
	jl	.label_42
.label_55:
	cmp	r11, r9
	jge	.label_33
	cmp	r11, -1
	je	.label_33
	mov	qword ptr [rsp + 0x50], rcx
	mov	dword ptr [rsp + 0x44], r8d
	mov	rcx, qword ptr [rdi + 0xd8]
	lea	rdx, [r11 + r11*4]
	mov	qword ptr [rsp + 0x48], rdx
	cmp	qword ptr [rcx + rdx*8 + 8], r15
	jne	.label_33
	mov	dword ptr [rsp + 0xc], eax
	mov	qword ptr [rsp + 0x38], rsi
	mov	qword ptr [rsp + 0x30], rdi
	mov	qword ptr [rsp + 0x28], r14
	jmp	.label_34
.label_65:
	mov	rcx, qword ptr [rdi + 0xd8]
	nop	
.label_34:
	mov	rax, qword ptr [rsp + 0x48]
	lea	r13, [rcx + rax*8]
	nop	dword ptr [rax]
.label_63:
	mov	r9, qword ptr [rsi + 8]
	test	r9, r9
	jle	.label_36
	mov	rdx, qword ptr [r13]
	dec	r9
	mov	r8, qword ptr [rsi + 0x10]
	mov	eax, 0
	je	.label_49
	mov	rcx, r9
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_58:
	lea	rbp, [rax + rcx]
	shr	rbp, 1
	cmp	qword ptr [r8 + rbp*8], rdx
	lea	rbx, [rbp + 1]
	cmovl	rax, rbx
	cmovge	rcx, rbp
	cmp	rax, rcx
	jb	.label_58
.label_49:
	cmp	rax, -1
	je	.label_36
	cmp	qword ptr [r8 + rax*8], rdx
	jne	.label_36
	mov	r12, qword ptr [r13 + 0x18]
	add	r12, r15
	sub	r12, qword ptr [r13 + 0x10]
	cmp	r12, r15
	jne	.label_38
	test	r9, r9
	mov	rax, qword ptr [r14 + 0x28]
	lea	rdx, [rdx + rdx*2]
	mov	rdx, qword ptr [rax + rdx*8 + 0x10]
	mov	rbx, qword ptr [rdx]
	mov	edx, 0
	je	.label_43
	xor	edx, edx
.label_51:
	lea	rax, [rdx + r9]
	shr	rax, 1
	cmp	qword ptr [r8 + rax*8], rbx
	lea	rcx, [rax + 1]
	cmovl	rdx, rcx
	cmovge	r9, rax
	cmp	rdx, r9
	jb	.label_51
.label_43:
	cmp	rdx, -1
	je	.label_57
	mov	ecx, 4
	cmp	qword ptr [r8 + rdx*8], rbx
	je	.label_45
.label_57:
	movaps	xmm0, xmmword ptr [rip + label_37]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [rsp + 0x20], rax
	test	rax, rax
	je	.label_46
	mov	qword ptr [rax], rbx
	xor	r12d, r12d
.label_35:
	mov	dword ptr [rsp + 8], r12d
	mov	rdi, r14
	lea	rbx, [rsp + 0x10]
	mov	rsi, rbx
	mov	rdx, qword ptr [rsp + 0x50]
	mov	ecx, dword ptr [rsp + 0x44]
	call	check_arrival_expand_ecl
	mov	r14d, eax
	mov	rbp, qword ptr [rsp + 0x38]
	mov	rdi, rbp
	mov	rsi, rbx
	call	re_node_set_merge
	mov	ebx, eax
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	mov	rsi, rbp
	mov	eax, r14d
	or	eax, r12d
	mov	ecx, 2
	or	eax, ebx
	mov	rdi, qword ptr [rsp + 0x30]
	je	.label_45
	test	r14d, r14d
	cmovne	ebx, r14d
	test	r12d, r12d
	cmovne	ebx, r12d
	mov	dword ptr [rsp + 8], ebx
	mov	ecx, 1
	mov	dword ptr [rsp + 0xc], ebx
	jmp	.label_45
.label_38:
	mov	rax, qword ptr [r14 + 0x18]
	mov	r14, qword ptr [rax + rdx*8]
	mov	rax, qword ptr [rdi + 0xb8]
	mov	r9, qword ptr [rax + r12*8]
	test	r9, r9
	je	.label_39
	mov	r8, qword ptr [r9 + 0x10]
	test	r8, r8
	jle	.label_47
	mov	rcx, r8
	dec	rcx
	mov	rax, qword ptr [r9 + 0x18]
	mov	edx, 0
	je	.label_48
	xor	edx, edx
	nop	
.label_54:
	lea	rbp, [rdx + rcx]
	shr	rbp, 1
	cmp	qword ptr [rax + rbp*8], r14
	lea	rbx, [rbp + 1]
	cmovl	rdx, rbx
	cmovge	rcx, rbp
	cmp	rdx, rcx
	jb	.label_54
.label_48:
	cmp	rdx, -1
	je	.label_62
	mov	ecx, 4
	cmp	qword ptr [rax + rdx*8], r14
	je	.label_45
.label_62:
	mov	qword ptr [rsp + 0x18], r8
	test	r8, r8
	jle	.label_52
	mov	rbp, r9
	mov	qword ptr [rsp + 0x10], r8
	shl	r8, 3
	mov	rdi, r8
	mov	rbx, r8
	call	malloc
	mov	qword ptr [rsp + 0x20], rax
	test	rax, rax
	je	.label_40
	mov	rsi, qword ptr [rbp + 0x18]
	mov	rdi, rax
	mov	rdx, rbx
	call	memcpy
	jmp	.label_50
.label_39:
	movaps	xmm0, xmmword ptr [rip + label_37]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [rsp + 0x20], rax
	test	rax, rax
	je	.label_56
	mov	qword ptr [rax], r14
	mov	dword ptr [rsp + 8], 0
	jmp	.label_60
.label_47:
	mov	qword ptr [rsp + 0x18], r8
.label_52:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	qword ptr [rsp + 0x20], 0
.label_50:
	xor	ebx, ebx
.label_53:
	mov	dword ptr [rsp + 8], ebx
	lea	rdi, [rsp + 0x10]
	mov	rsi, r14
	call	re_node_set_insert
	test	ebx, ebx
	jne	.label_41
	xor	al, 1
	jne	.label_41
.label_60:
	lea	rdi, [rsp + 8]
	mov	r14, qword ptr [rsp + 0x28]
	mov	rsi, r14
	lea	rdx, [rsp + 0x10]
	call	re_acquire_state
	mov	rbx, qword ptr [rsp + 0x30]
	mov	rcx, qword ptr [rbx + 0xb8]
	mov	qword ptr [rcx + r12*8], rax
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	mov	rdi, rbx
	mov	rax, qword ptr [rdi + 0xb8]
	cmp	qword ptr [rax + r12*8], 0
	sete	dl
	mov	eax, dword ptr [rsp + 8]
	test	eax, eax
	setne	cl
	and	cl, dl
	jne	.label_64
	mov	eax, dword ptr [rsp + 0xc]
.label_64:
	movzx	ecx, cl
	mov	dword ptr [rsp + 0xc], eax
	mov	rsi, qword ptr [rsp + 0x38]
	jmp	.label_44
.label_46:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	r12d, 0xc
	jmp	.label_35
.label_41:
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	test	ebx, ebx
	mov	eax, 0xc
	cmove	ebx, eax
	mov	dword ptr [rsp + 8], ebx
	mov	ecx, 1
	mov	dword ptr [rsp + 0xc], ebx
	jmp	.label_59
.label_56:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	dword ptr [rsp + 8], 0xc
	mov	dword ptr [rsp + 0xc], 0xc
	mov	ecx, 1
.label_59:
	mov	rsi, qword ptr [rsp + 0x38]
	mov	rdi, qword ptr [rsp + 0x30]
.label_45:
	mov	r14, qword ptr [rsp + 0x28]
.label_44:
	test	ecx, ecx
	je	.label_36
	cmp	ecx, 4
	jne	.label_61
.label_36:
	xor	eax, eax
	cmp	byte ptr [r13 + 0x20], 0
	lea	r13, [r13 + 0x28]
	jne	.label_63
	jmp	.label_33
.label_40:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	ebx, 0xc
	jmp	.label_53
.label_61:
	cmp	ecx, 2
	je	.label_65
	mov	eax, dword ptr [rsp + 0xc]
.label_33:
	add	rsp, 0x58
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4025b1
	.globl sub_4025b1
	.type sub_4025b1, @function
sub_4025b1:

	nop	word ptr cs:[rax + rax]
.label_67:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_66
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_66:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4025f4
	.globl sub_4025f4
	.type sub_4025f4, @function
sub_4025f4:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4025f6

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
	jne	.label_68
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_68
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_67
.label_68:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
	.section	.text
	.align	32
	#Procedure 0x402630

	.globl mbuiter_multi_next
	.type mbuiter_multi_next, @function
mbuiter_multi_next:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	rbx, rdi
	cmp	byte ptr [rbx + 0xc], 0
	jne	.label_83
	cmp	byte ptr [rbx], 0
	mov	r15, qword ptr [rbx + 0x10]
	je	.label_70
	lea	r14, [rbx + 4]
.label_79:
	lea	r12, [rbx + 0x24]
	call	__ctype_get_mb_cur_max
	mov	rdi, r15
	mov	rsi, rax
	call	strnlen1
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, rax
	mov	rcx, r14
	call	rpl_mbrtowc
	mov	qword ptr [rbx + 0x18], rax
	cmp	rax, -2
	je	.label_84
	test	rax, rax
	je	.label_69
	cmp	rax, -1
	jne	.label_80
	mov	qword ptr [rbx + 0x18], 1
	mov	byte ptr [rbx + 0x20], 0
	jmp	.label_71
.label_70:
	movzx	eax, byte ptr [r15]
	mov	rcx, rax
	shr	rcx, 5
	mov	ecx, dword ptr [(rcx * 4) + is_basic_table]
	bt	ecx, eax
	jae	.label_73
	mov	qword ptr [rbx + 0x18], 1
	movsx	eax, byte ptr [r15]
	mov	dword ptr [rbx + 0x24], eax
	mov	byte ptr [rbx + 0x20], 1
	jmp	.label_71
.label_84:
	mov	rdi, qword ptr [rbx + 0x10]
	call	strlen
	mov	qword ptr [rbx + 0x18], rax
	mov	byte ptr [rbx + 0x20], 0
	jmp	.label_71
.label_69:
	mov	qword ptr [rbx + 0x18], 1
	mov	rax, qword ptr [rbx + 0x10]
	cmp	byte ptr [rax], 0
	jne	.label_72
	cmp	dword ptr [r12], 0
	jne	.label_81
.label_80:
	mov	byte ptr [rbx + 0x20], 1
	mov	rdi, r14
	call	mbsinit
	test	eax, eax
	je	.label_71
	mov	byte ptr [rbx], 0
.label_71:
	mov	byte ptr [rbx + 0xc], 1
.label_83:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_73:
	lea	r14, [rbx + 4]
	mov	rdi, r14
	call	mbsinit
	test	eax, eax
	je	.label_78
	mov	byte ptr [rbx], 1
	jmp	.label_79
.label_72:
	mov	edi, OFFSET FLAT:label_82
	mov	esi, OFFSET FLAT:label_75
	mov	edx, 0xb2
	mov	ecx, OFFSET FLAT:label_76
	call	__assert_fail
.label_81:
	mov	edi, OFFSET FLAT:label_77
	mov	esi, OFFSET FLAT:label_75
	mov	edx, 0xb3
	mov	ecx, OFFSET FLAT:label_76
	call	__assert_fail
.label_78:
	mov	edi, OFFSET FLAT:label_74
	mov	esi, OFFSET FLAT:label_75
	mov	edx, 0x96
	mov	ecx, OFFSET FLAT:label_76
	call	__assert_fail
	.section	.text
	.align	32
	#Procedure 0x402777
	.globl sub_402777
	.type sub_402777, @function
sub_402777:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402780
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
	je	.label_85
	add	rbx, 8
	nop	word ptr cs:[rax + rax]
.label_86:
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	mov	rax, r13
	je	.label_85
	mov	r13, qword ptr [rbx]
	add	rbx, 8
	add	r15, r14
	test	r13, r13
	mov	eax, 0
	jne	.label_86
.label_85:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x4027e3
	.globl sub_4027e3
	.type sub_4027e3, @function
sub_4027e3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4027f0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_87]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_88]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_89]
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
	#Procedure 0x402845
	.globl sub_402845
	.type sub_402845, @function
sub_402845:

	nop	word ptr cs:[rax + rax]
.label_90:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402855
	.globl sub_402855
	.type sub_402855, @function
sub_402855:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40285f
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
	je	.label_91
	test	r14, r14
	je	.label_90
.label_91:
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
	#Procedure 0x402890

	.globl parse_bracket_element
	.type parse_bracket_element, @function
parse_bracket_element:
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x10
	mov	r15, rdx
	mov	r14, rdi
	mov	r11, qword ptr [rsi + 0x48]
	cmp	dword ptr [rsi + 0x90], 1
	je	.label_108
	lea	rax, [r11 + 1]
	mov	rbx, qword ptr [rsi + 0x30]
	cmp	rax, rbx
	jge	.label_108
	mov	r10, qword ptr [rsi + 0x10]
	lea	rax, [r10 + r11*4]
	mov	edi, 1
	nop	word ptr cs:[rax + rax]
.label_101:
	cmp	dword ptr [rax + rdi*4], -1
	jne	.label_93
	lea	rdx, [r11 + rdi + 1]
	inc	rdi
	cmp	rdx, rbx
	jl	.label_101
.label_93:
	cmp	edi, 2
	jl	.label_108
	mov	dword ptr [r14], 1
	mov	eax, dword ptr [r10 + r11*4]
	mov	dword ptr [r14 + 8], eax
	movsxd	rax, edi
	add	rax, r11
	mov	qword ptr [rsi + 0x48], rax
	jmp	.label_110
.label_108:
	movsxd	rax, ecx
	add	r11, rax
	mov	qword ptr [rsi + 0x48], r11
	movzx	edi, byte ptr [r15 + 8]
	mov	eax, edi
	add	al, 0xea
	movzx	eax, al
	cmp	al, 8
	ja	.label_94
	jmp	qword ptr [(rax * 8) + label_109]
.label_3177:
	mov	eax, 7
	cmp	qword ptr [rsi + 0x68], r11
	jle	.label_97
	mov	r11b, byte ptr [r15]
	xor	ecx, ecx
	jmp	.label_2341
	nop	word ptr cs:[rax + rax]
.label_112:
	inc	rcx
	movzx	edi, byte ptr [r15 + 8]
.label_2341:
	cmp	dil, 0x1e
	jne	.label_102
	cmp	byte ptr [rsi + 0x8b], 0
	jne	.label_106
	mov	rbx, qword ptr [rsi + 0x48]
	lea	rdi, [rbx + 1]
	mov	qword ptr [rsi + 0x48], rdi
	mov	rdx, qword ptr [rsi + 8]
	mov	bl, byte ptr [rdx + rbx]
	jmp	.label_104
	nop	dword ptr [rax]
.label_102:
	mov	rdx, qword ptr [rsi + 0x48]
	lea	rdi, [rdx + 1]
	mov	qword ptr [rsi + 0x48], rdi
	mov	rbx, qword ptr [rsi + 8]
.label_103:
	mov	bl, byte ptr [rbx + rdx]
.label_104:
	cmp	qword ptr [rsi + 0x68], rdi
	jle	.label_97
	cmp	bl, r11b
	jne	.label_105
	mov	rdx, qword ptr [rsi + 8]
	cmp	byte ptr [rdx + rdi], 0x5d
	je	.label_107
.label_105:
	mov	rdx, qword ptr [r14 + 8]
	mov	byte ptr [rdx + rcx], bl
	cmp	rcx, 0x1e
	jle	.label_112
	jmp	.label_97
.label_106:
	cmp	byte ptr [rsi + 0x8c], 0
	je	.label_92
	mov	r9, qword ptr [rsi + 0x30]
	mov	r8, qword ptr [rsi + 0x48]
	cmp	r8, r9
	je	.label_98
	mov	rdx, qword ptr [rsi + 0x10]
	cmp	dword ptr [rdx + r8*4], -1
	je	.label_100
.label_98:
	mov	rdx, qword ptr [rsi]
	mov	rdi, qword ptr [rsi + 0x18]
	mov	rbx, qword ptr [rsi + 0x28]
	add	rbx, qword ptr [rdi + r8*8]
	mov	bl, byte ptr [rdx + rbx]
	test	bl, bl
	js	.label_100
	mov	edi, 1
	cmp	dword ptr [rsi + 0x90], 1
	je	.label_95
	lea	rdx, [r8 + 1]
	cmp	rdx, r9
	jge	.label_95
	lea	r10, [r8*4]
	add	r10, qword ptr [rsi + 0x10]
	mov	edi, 1
.label_96:
	cmp	dword ptr [r10 + rdi*4], -1
	jne	.label_95
	lea	rdx, [r8 + rdi + 1]
	inc	rdi
	cmp	rdx, r9
	jl	.label_96
.label_95:
	movsxd	rdi, edi
	add	rdi, r8
	mov	qword ptr [rsi + 0x48], rdi
	jmp	.label_104
.label_92:
	mov	rdx, qword ptr [rsi + 0x48]
	lea	rdi, [rdx + 1]
	add	rdx, qword ptr [rsi + 0x28]
	mov	qword ptr [rsi + 0x48], rdi
	mov	rbx, qword ptr [rsi]
	jmp	.label_103
.label_100:
	lea	rdi, [r8 + 1]
	mov	qword ptr [rsi + 0x48], rdi
	mov	rdx, qword ptr [rsi + 8]
	mov	bl, byte ptr [rdx + r8]
	jmp	.label_104
.label_107:
	inc	rdi
	mov	qword ptr [rsi + 0x48], rdi
	movsxd	rax, ecx
	mov	rcx, qword ptr [r14 + 8]
	mov	byte ptr [rcx + rax], 0
	mov	cl, byte ptr [r15 + 8]
	xor	eax, eax
	cmp	cl, 0x1e
	je	.label_111
	cmp	cl, 0x1c
	je	.label_99
	cmp	cl, 0x1a
	jne	.label_97
	mov	dword ptr [r14], 3
	jmp	.label_97
.label_111:
	mov	dword ptr [r14], 4
	jmp	.label_97
.label_99:
	mov	dword ptr [r14], 2
	jmp	.label_97
.label_3176:
	test	r9b, r9b
	jne	.label_94
	lea	rdi, [rsp]
	mov	rdx, r8
	call	peek_token_bracket
	mov	eax, 0xb
	cmp	byte ptr [rsp + 8], 0x15
	jne	.label_97
.label_94:
	mov	dword ptr [r14], 0
	mov	al, byte ptr [r15]
	mov	byte ptr [r14 + 8], al
.label_110:
	xor	eax, eax
.label_97:
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x402aea
	.globl sub_402aea
	.type sub_402aea, @function
sub_402aea:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402af0

	.globl rpl_re_compile_fastmap
	.type rpl_re_compile_fastmap, @function
rpl_re_compile_fastmap:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	mov	r15, qword ptr [r14]
	mov	rbx, qword ptr [r14 + 0x20]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx + 0xf0], xmm0
	movups	xmmword ptr [rbx + 0xe0], xmm0
	movups	xmmword ptr [rbx + 0xd0], xmm0
	movups	xmmword ptr [rbx + 0xc0], xmm0
	movups	xmmword ptr [rbx + 0xb0], xmm0
	movups	xmmword ptr [rbx + 0xa0], xmm0
	movups	xmmword ptr [rbx + 0x90], xmm0
	movups	xmmword ptr [rbx + 0x80], xmm0
	movups	xmmword ptr [rbx + 0x70], xmm0
	movups	xmmword ptr [rbx + 0x60], xmm0
	movups	xmmword ptr [rbx + 0x50], xmm0
	movups	xmmword ptr [rbx + 0x40], xmm0
	movups	xmmword ptr [rbx + 0x30], xmm0
	movups	xmmword ptr [rbx + 0x20], xmm0
	movups	xmmword ptr [rbx + 0x10], xmm0
	movups	xmmword ptr [rbx], xmm0
	mov	rsi, qword ptr [r15 + 0x48]
	mov	rdx, rbx
	call	re_compile_fastmap_iter
	mov	rax, qword ptr [r15 + 0x48]
	mov	rsi, qword ptr [r15 + 0x50]
	cmp	rax, rsi
	je	.label_114
	mov	rdi, r14
	mov	rdx, rbx
	call	re_compile_fastmap_iter
	mov	rax, qword ptr [r15 + 0x48]
.label_114:
	mov	rsi, qword ptr [r15 + 0x58]
	cmp	rax, rsi
	je	.label_113
	mov	rdi, r14
	mov	rdx, rbx
	call	re_compile_fastmap_iter
	mov	rax, qword ptr [r15 + 0x48]
.label_113:
	mov	rsi, qword ptr [r15 + 0x60]
	cmp	rax, rsi
	je	.label_115
	mov	rdi, r14
	mov	rdx, rbx
	call	re_compile_fastmap_iter
.label_115:
	or	byte ptr [r14 + 0x38], 8
	xor	eax, eax
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x402bba
	.globl sub_402bba
	.type sub_402bba, @function
sub_402bba:

	nop	word ptr [rax + rax]
.label_116:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x402bc5
	.globl sub_402bc5
	.type sub_402bc5, @function
sub_402bc5:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402bcd
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
	je	.label_116
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
.label_117:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x402c35
	.globl sub_402c35
	.type sub_402c35, @function
sub_402c35:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402c39
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_87]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_88]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_89]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_117
	test	rsi, rsi
	je	.label_117
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
	#Procedure 0x402ca0
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x402cae
	.globl sub_402cae
	.type sub_402cae, @function
sub_402cae:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402cb0

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
	js	.label_121
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_124
	cmp	r12d, 0x7fffffff
	je	.label_119
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
	jne	.label_122
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_122:
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
.label_124:
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
	jbe	.label_120
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_123
.label_120:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_118
	mov	rdi, r14
	call	free
.label_118:
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
.label_123:
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
.label_121:
	call	abort
.label_119:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402e6d
	.globl sub_402e6d
	.type sub_402e6d, @function
sub_402e6d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402e70
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	.section	.text
	.align	32
	#Procedure 0x402e78
	.globl sub_402e78
	.type sub_402e78, @function
sub_402e78:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402e80
	.globl mb_width_aux
	.type mb_width_aux, @function
mb_width_aux:

	push	rbx
	mov	ebx, edi
	call	wcwidth
	test	eax, eax
	jns	.label_125
	mov	edi, ebx
	call	iswcntrl
	mov	ecx, eax
	xor	eax, eax
	test	ecx, ecx
	sete	al
.label_125:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x402e9e
	.globl sub_402e9e
	.type sub_402e9e, @function
sub_402e9e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402ea0

	.globl mbiter_multi_next
	.type mbiter_multi_next, @function
mbiter_multi_next:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	rbx, rdi
	cmp	byte ptr [rbx + 0x14], 0
	jne	.label_135
	cmp	byte ptr [rbx + 8], 0
	je	.label_138
	lea	r13, [rbx + 0x18]
	mov	r15, qword ptr [rbx + 0x18]
	lea	r14, [rbx + 0xc]
.label_132:
	lea	r12, [rbx + 0x2c]
	mov	rdx, qword ptr [rbx]
	sub	rdx, r15
	mov	rdi, r12
	mov	rsi, r15
	mov	rcx, r14
	call	rpl_mbrtowc
	mov	qword ptr [rbx + 0x20], rax
	cmp	rax, -2
	je	.label_126
	test	rax, rax
	je	.label_136
	cmp	rax, -1
	jne	.label_137
	mov	qword ptr [rbx + 0x20], 1
	mov	byte ptr [rbx + 0x28], 0
	jmp	.label_134
.label_138:
	mov	r15, qword ptr [rbx + 0x18]
	movzx	eax, byte ptr [r15]
	mov	rcx, rax
	shr	rcx, 5
	mov	ecx, dword ptr [(rcx * 4) + is_basic_table]
	bt	ecx, eax
	jae	.label_127
	mov	qword ptr [rbx + 0x20], 1
	movsx	eax, byte ptr [r15]
	mov	dword ptr [rbx + 0x2c], eax
	mov	byte ptr [rbx + 0x28], 1
	jmp	.label_134
.label_126:
	mov	rax, qword ptr [rbx]
	sub	rax, qword ptr [r13]
	mov	qword ptr [rbx + 0x20], rax
	mov	byte ptr [rbx + 0x28], 0
	jmp	.label_134
.label_136:
	mov	qword ptr [rbx + 0x20], 1
	mov	rax, qword ptr [rbx + 0x18]
	cmp	byte ptr [rax], 0
	jne	.label_128
	cmp	dword ptr [r12], 0
	jne	.label_133
.label_137:
	mov	byte ptr [rbx + 0x28], 1
	mov	rdi, r14
	call	mbsinit
	test	eax, eax
	je	.label_134
	mov	byte ptr [rbx + 8], 0
.label_134:
	mov	byte ptr [rbx + 0x14], 1
.label_135:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
.label_127:
	lea	r14, [rbx + 0xc]
	mov	rdi, r14
	call	mbsinit
	test	eax, eax
	je	.label_129
	mov	byte ptr [rbx + 8], 1
	lea	r13, [rbx + 0x18]
	jmp	.label_132
.label_128:
	mov	edi, OFFSET FLAT:label_82
	mov	esi, OFFSET FLAT:label_130
	mov	edx, 0xa9
	mov	ecx, OFFSET FLAT:label_131
	call	__assert_fail
.label_133:
	mov	edi, OFFSET FLAT:label_77
	mov	esi, OFFSET FLAT:label_130
	mov	edx, 0xaa
	mov	ecx, OFFSET FLAT:label_131
	call	__assert_fail
.label_129:
	mov	edi, OFFSET FLAT:label_74
	mov	esi, OFFSET FLAT:label_130
	mov	edx, 0x8e
	mov	ecx, OFFSET FLAT:label_131
	call	__assert_fail
	.section	.text
	.align	32
	#Procedure 0x402fe6
	.globl sub_402fe6
	.type sub_402fe6, @function
sub_402fe6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402ff0

	.globl update_cur_sifted_state
	.type update_cur_sifted_state, @function
update_cur_sifted_state:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xb8
	mov	r11, rcx
	mov	r10, rdx
	mov	r14, rsi
	mov	rbx, rdi
	mov	r12, qword ptr [rbx + 0x98]
	mov	dword ptr [rsp + 4], 0
	mov	rax, qword ptr [rbx + 0xb8]
	mov	r13, qword ptr [rax + r10*8]
	lea	rax, [r13 + 8]
	test	r13, r13
	cmove	rax, r13
	mov	qword ptr [rsp + 0x30], rax
	cmp	qword ptr [r11 + 8], 0
	mov	qword ptr [rsp + 8], r10
	je	.label_182
	test	r13, r13
	je	.label_162
	mov	qword ptr [rsp + 0x28], r14
	mov	dword ptr [rsp + 0x50], 0
	lea	rdi, [rsp + 0x50]
	mov	qword ptr [rsp + 0x10], r12
	mov	rsi, r12
	mov	qword ptr [rsp + 0x20], r11
	mov	rdx, r11
	call	re_acquire_state
	mov	r14, rax
	mov	r12d, dword ptr [rsp + 0x50]
	test	r12d, r12d
	jne	.label_147
	mov	qword ptr [rsp + 0x18], rbx
	mov	r15, r14
	add	r15, 0x38
	cmp	qword ptr [r14 + 0x38], 0
	mov	rdx, qword ptr [rsp + 0x20]
	jne	.label_156
	mov	rdi, qword ptr [rdx + 8]
	mov	qword ptr [r14 + 0x38], rdi
	mov	qword ptr [r14 + 0x40], 0
	shl	rdi, 3
	call	malloc
	mov	qword ptr [r14 + 0x48], rax
	mov	r12d, 0xc
	test	rax, rax
	mov	ecx, 0xc
	je	.label_187
	xor	ecx, ecx
.label_187:
	test	rax, rax
	mov	dword ptr [rsp + 0x50], ecx
	je	.label_147
	mov	rdx, qword ptr [rsp + 0x20]
	cmp	qword ptr [rdx + 8], 0
	jle	.label_156
	xor	ebp, ebp
	nop	
.label_151:
	mov	rax, qword ptr [rsp + 0x10]
	mov	rax, qword ptr [rax + 0x38]
	mov	rcx, qword ptr [rdx + 0x10]
	mov	rcx, qword ptr [rcx + rbp*8]
	lea	rcx, [rcx + rcx*2]
	lea	rsi, [rax + rcx*8]
	mov	rdi, r15
	mov	rbx, rdx
	call	re_node_set_merge
	mov	dword ptr [rsp + 0x50], eax
	test	eax, eax
	jne	.label_147
	inc	rbp
	cmp	rbp, qword ptr [rbx + 8]
	mov	rdx, rbx
	jl	.label_151
.label_156:
	mov	rdi, rdx
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rdx, r15
	call	re_node_set_add_intersect
	mov	r12d, eax
	mov	dword ptr [rsp + 4], r12d
	test	r12d, r12d
	mov	r9, qword ptr [rsp + 8]
	mov	r14, qword ptr [rsp + 0x28]
	mov	rbx, qword ptr [rsp + 0x18]
	jne	.label_154
	mov	rax, qword ptr [r14 + 0x28]
	test	rax, rax
	mov	r11, qword ptr [rsp + 0x20]
	mov	r12, qword ptr [rsp + 0x10]
	je	.label_162
	mov	qword ptr [rsp + 0x48], r13
	jle	.label_185
	mov	rax, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [rax + 0xd8]
	mov	qword ptr [rsp + 0x38], rax
	xor	r13d, r13d
	mov	ebx, 0xfe
	nop	word ptr [rax + rax]
.label_146:
	mov	rax, qword ptr [r14 + 0x30]
	mov	rax, qword ptr [rax + r13*8]
	lea	rax, [rax + rax*4]
	mov	rcx, qword ptr [rsp + 0x38]
	cmp	qword ptr [rcx + rax*8 + 0x10], r9
	jge	.label_173
	mov	rcx, qword ptr [rsp + 0x38]
	cmp	qword ptr [rcx + rax*8 + 8], r9
	jl	.label_173
	mov	rsi, qword ptr [rsp + 0x38]
	mov	rdx, qword ptr [rsi + rax*8]
	mov	rcx, qword ptr [r12]
	shl	rdx, 4
	mov	r15, qword ptr [rcx + rdx]
	cmp	qword ptr [rsi + rax*8 + 0x18], r9
	mov	rax, qword ptr [r11 + 8]
	jne	.label_191
	test	rax, rax
	jle	.label_173
	mov	rdx, qword ptr [r11 + 0x10]
	mov	r14, -1
	mov	rsi, -1
	nop	dword ptr [rax + rax]
.label_163:
	mov	rbp, qword ptr [rdx]
	mov	rdi, rbp
	shl	rdi, 4
	movzx	ebx, byte ptr [rcx + rdi + 8]
	cmp	bl, 9
	je	.label_167
	cmp	bl, 8
	jne	.label_153
	cmp	r15, qword ptr [rcx + rdi]
	cmove	rsi, rbp
	jmp	.label_153
	.section	.text
	.align	32
	#Procedure 0x403233
	.globl sub_403233
	.type sub_403233, @function
sub_403233:

	nop	word ptr cs:[rax + rax]
.label_167:
	cmp	r15, qword ptr [rcx + rdi]
	cmove	r14, rbp
.label_153:
	add	rdx, 8
	dec	rax
	jne	.label_163
	test	rsi, rsi
	mov	ebx, 0xfe
	js	.label_165
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rdx, r11
	mov	rcx, qword ptr [rsp + 0x30]
	call	sub_epsilon_src_nodes
	mov	r11, qword ptr [rsp + 0x20]
	mov	r9, qword ptr [rsp + 8]
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_147
.label_165:
	test	r14, r14
	mov	r12, qword ptr [rsp + 0x10]
	js	.label_173
	mov	r8, qword ptr [r11 + 8]
	test	r8, r8
	jle	.label_173
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_179:
	mov	rcx, qword ptr [r11 + 0x10]
	mov	rsi, qword ptr [rcx + r15*8]
	mov	rdi, qword ptr [r12 + 0x38]
	lea	rcx, [rsi + rsi*2]
	mov	rdx, qword ptr [rdi + rcx*8 + 8]
	test	rdx, rdx
	jle	.label_158
	dec	rdx
	mov	rdi, qword ptr [rdi + rcx*8 + 0x10]
	mov	ebp, 0
	je	.label_190
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_192:
	lea	rbx, [rbp + rdx]
	shr	rbx, 1
	cmp	qword ptr [rdi + rbx*8], r14
	lea	rax, [rbx + 1]
	cmovl	rbp, rax
	cmovge	rdx, rbx
	cmp	rbp, rdx
	jb	.label_192
.label_190:
	cmp	rbp, -1
	mov	ebx, 0xfe
	je	.label_158
	cmp	qword ptr [rdi + rbp*8], r14
	je	.label_143
.label_158:
	mov	rdi, qword ptr [r12 + 0x30]
	mov	rdx, qword ptr [rdi + rcx*8 + 8]
	test	rdx, rdx
	jle	.label_164
	dec	rdx
	mov	rcx, qword ptr [rdi + rcx*8 + 0x10]
	mov	edi, 0
	je	.label_150
	xor	edi, edi
	nop	
.label_159:
	lea	rax, [rdi + rdx]
	shr	rax, 1
	cmp	qword ptr [rcx + rax*8], r14
	lea	rbp, [rax + 1]
	cmovl	rdi, rbp
	cmovge	rdx, rax
	cmp	rdi, rdx
	jb	.label_159
.label_150:
	cmp	rdi, -1
	je	.label_164
	cmp	qword ptr [rcx + rdi*8], r14
	je	.label_143
.label_164:
	mov	rdi, r12
	mov	rdx, r11
	mov	rcx, qword ptr [rsp + 0x30]
	call	sub_epsilon_src_nodes
	mov	r11, qword ptr [rsp + 0x20]
	mov	r9, qword ptr [rsp + 8]
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_147
	dec	r15
	mov	r8, qword ptr [r11 + 8]
	mov	r12, qword ptr [rsp + 0x10]
.label_143:
	inc	r15
	cmp	r15, r8
	jl	.label_179
	jmp	.label_173
.label_191:
	test	rax, rax
	jle	.label_173
	xor	ebp, ebp
	jmp	.label_181
	.section	.text
	.align	32
	#Procedure 0x4033a1
	.globl sub_4033a1
	.type sub_4033a1, @function
sub_4033a1:

	nop	word ptr cs:[rax + rax]
.label_141:
	mov	rcx, qword ptr [r12]
.label_181:
	mov	rdx, qword ptr [r11 + 0x10]
	mov	rsi, qword ptr [rdx + rbp*8]
	mov	rdx, rsi
	shl	rdx, 4
	mov	edi, dword ptr [rcx + rdx + 8]
	and	edi, ebx
	or	edi, 1
	cmp	edi, 9
	jne	.label_186
	cmp	r15, qword ptr [rcx + rdx]
	jne	.label_186
	mov	rdi, r12
	mov	rdx, r11
	mov	rcx, qword ptr [rsp + 0x30]
	call	sub_epsilon_src_nodes
	mov	r11, qword ptr [rsp + 0x20]
	mov	r9, qword ptr [rsp + 8]
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_147
	mov	rax, qword ptr [r11 + 8]
	mov	r12, qword ptr [rsp + 0x10]
.label_186:
	inc	rbp
	cmp	rbp, rax
	jl	.label_141
	nop	
.label_173:
	inc	r13
	mov	r14, qword ptr [rsp + 0x28]
	cmp	r13, qword ptr [r14 + 0x28]
	jl	.label_146
.label_185:
	mov	dword ptr [rsp + 4], 0
	mov	rbx, qword ptr [rsp + 0x18]
	mov	r13, qword ptr [rsp + 0x48]
.label_162:
	lea	rdi, [rsp + 4]
	mov	rsi, r12
	mov	rdx, r11
	call	re_acquire_state
	mov	r10, qword ptr [rsp + 8]
	mov	rcx, qword ptr [r14]
	mov	qword ptr [rcx + r10*8], rax
	mov	r12d, dword ptr [rsp + 4]
	test	r12d, r12d
	je	.label_160
	jmp	.label_154
.label_182:
	mov	rax, qword ptr [r14]
	mov	qword ptr [rax + r10*8], 0
.label_160:
	test	r13, r13
	je	.label_155
	mov	rax, qword ptr [rbx + 0xb8]
	mov	rax, qword ptr [rax + r10*8]
	test	byte ptr [rax + 0x68], 0x40
	je	.label_155
	mov	rbp, qword ptr [rbx + 0x98]
	mov	rax, qword ptr [rbx + 0xc8]
	xor	r13d, r13d
	test	rax, rax
	jle	.label_177
	mov	rcx, qword ptr [rbx + 0xd8]
	xor	r13d, r13d
	mov	rdx, rax
	nop	dword ptr [rax + rax]
.label_184:
	lea	rsi, [rdx + r13]
	mov	rdi, rsi
	shr	rdi, 0x3f
	add	rdi, rsi
	sar	rdi, 1
	lea	rsi, [rdi + rdi*4]
	cmp	qword ptr [rcx + rsi*8 + 8], r10
	cmovge	rdx, rdi
	lea	rsi, [rdi + 1]
	cmovl	r13, rsi
	cmp	r13, rdx
	jl	.label_184
.label_177:
	cmp	r13, rax
	jge	.label_144
	cmp	r13, -1
	je	.label_144
	mov	rax, qword ptr [rbx + 0xd8]
	lea	rcx, [r13 + r13*4]
	mov	qword ptr [rsp + 0x88], rcx
	cmp	qword ptr [rax + rcx*8 + 8], r10
	jne	.label_144
	mov	qword ptr [rsp + 0x50], 0
	mov	rax, qword ptr [rsp + 0x30]
	cmp	qword ptr [rax + 8], 0
	jle	.label_144
	mov	qword ptr [rsp + 0x10], rbp
	mov	qword ptr [rsp + 0x18], rbx
	lea	rax, [r14 + 0x20]
	mov	qword ptr [rsp + 0x98], rax
	xor	ecx, ecx
	shl	qword ptr [rsp + 0x88], 3
	mov	qword ptr [rsp + 0x28], r14
	nop	dword ptr [rax]
.label_140:
	mov	rax, qword ptr [rsp + 0x30]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rsp + 0x20], rcx
	mov	r15, qword ptr [rax + rcx*8]
	mov	r12, qword ptr [rsp + 0x10]
	mov	rax, qword ptr [r12]
	mov	rcx, r15
	shl	rcx, 4
	movzx	eax, byte ptr [rax + rcx + 8]
	cmp	r15, qword ptr [r14 + 0x10]
	jne	.label_194
	cmp	eax, 4
	jne	.label_170
	cmp	qword ptr [r14 + 0x18], r10
	jne	.label_176
	jmp	.label_170
	.section	.text
	.align	32
	#Procedure 0x403591
	.globl sub_403591
	.type sub_403591, @function
sub_403591:

	nop	word ptr cs:[rax + rax]
.label_194:
	cmp	eax, 4
	jne	.label_170
.label_176:
	mov	rax, qword ptr [rsp + 0x18]
	mov	rbp, qword ptr [rax + 0xd8]
	add	rbp, qword ptr [rsp + 0x88]
	mov	rbx, r13
.label_196:
	cmp	qword ptr [rbp], r15
	jne	.label_142
	mov	rax, qword ptr [rbp + 0x18]
	mov	rcx, qword ptr [rbp + 0x10]
	mov	r9, rax
	sub	r9, rcx
	add	r9, r10
	cmp	rax, rcx
	je	.label_189
	lea	rcx, [r15*8]
	add	rcx, qword ptr [r12 + 0x18]
	jmp	.label_193
.label_189:
	mov	rax, qword ptr [r12 + 0x28]
	lea	rcx, [r15 + r15*2]
	mov	rcx, qword ptr [rax + rcx*8 + 0x10]
.label_193:
	cmp	r9, qword ptr [r14 + 0x18]
	jg	.label_142
	mov	rax, qword ptr [r14]
	mov	rdx, qword ptr [rax + r9*8]
	test	rdx, rdx
	je	.label_142
	mov	rax, qword ptr [rdx + 0x10]
	test	rax, rax
	jle	.label_142
	mov	r8, qword ptr [rcx]
	dec	rax
	mov	rcx, qword ptr [rdx + 0x18]
	mov	edx, 0
	je	.label_152
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_171:
	lea	rsi, [rdx + rax]
	shr	rsi, 1
	cmp	qword ptr [rcx + rsi*8], r8
	lea	rdi, [rsi + 1]
	cmovl	rdx, rdi
	cmovge	rax, rsi
	cmp	rdx, rax
	jb	.label_171
.label_152:
	cmp	rdx, -1
	je	.label_142
	cmp	qword ptr [rcx + rdx*8], r8
	jne	.label_142
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, qword ptr [rsp + 0x98]
	mov	rdx, r15
	mov	rcx, r10
	call	check_dst_limits
	mov	r10, qword ptr [rsp + 8]
	test	al, al
	jne	.label_142
	cmp	qword ptr [rsp + 0x50], 0
	jne	.label_145
	mov	rax, qword ptr [r14 + 0x30]
	mov	qword ptr [rsp + 0x80], rax
	movups	xmm0, xmmword ptr [r14]
	movups	xmm1, xmmword ptr [r14 + 0x10]
	movups	xmm2, xmmword ptr [r14 + 0x20]
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm0
	mov	rbp, r14
	mov	r14, qword ptr [r14 + 0x28]
	mov	qword ptr [rsp + 0x78], r14
	test	r14, r14
	jle	.label_188
	mov	qword ptr [rsp + 0x70], r14
	shl	r14, 3
	mov	rdi, r14
	call	malloc
	mov	qword ptr [rsp + 0x80], rax
	test	rax, rax
	je	.label_178
	mov	rsi, qword ptr [rbp + 0x30]
	mov	rdi, rax
	mov	rdx, r14
	mov	r14, rbp
	call	memcpy
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_145
.label_188:
	lea	rax, [rsp + 0x70]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	mov	r14, rbp
.label_145:
	mov	qword ptr [rsp + 0x60], r15
	mov	qword ptr [rsp + 0x68], r10
	lea	rdi, [rsp + 0x70]
	mov	rsi, rbx
	call	re_node_set_insert
	mov	rcx, qword ptr [rsp + 8]
	mov	r12d, 0xc
	test	al, al
	je	.label_139
	mov	rax, qword ptr [rsp + 0x50]
	mov	qword ptr [rsp + 0x38], rax
	mov	rbp, qword ptr [rax + rcx*8]
	mov	rdi, qword ptr [rsp + 0x18]
	lea	rsi, [rsp + 0x50]
	call	sift_states_backward
	mov	r10, qword ptr [rsp + 8]
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_139
	mov	r14, qword ptr [r14 + 8]
	test	r14, r14
	mov	rax, qword ptr [rsp + 0x38]
	je	.label_174
	mov	qword ptr [rsp + 0x90], rbp
	test	r10, r10
	lea	rdi, [rsp + 0xa0]
	js	.label_175
	mov	rbp, -1
	mov	qword ptr [rsp + 0x48], r15
	nop	dword ptr [rax + rax]
.label_161:
	mov	rsi, qword ptr [r14 + rbp*8 + 8]
	mov	rdx, qword ptr [rax + rbp*8 + 8]
	test	rsi, rsi
	je	.label_168
	test	rdx, rdx
	je	.label_148
	add	rsi, 8
	add	rdx, 8
	mov	r15, rdi
	call	re_node_set_init_union
	mov	r12d, eax
	mov	dword ptr [rsp + 0x44], r12d
	test	r12d, r12d
	jne	.label_139
	lea	rdi, [rsp + 0x44]
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rdx, r15
	call	re_acquire_state
	mov	qword ptr [r14 + rbp*8 + 8], rax
	mov	rdi, qword ptr [rsp + 0xb0]
	call	free
	mov	r12d, dword ptr [rsp + 0x44]
	test	r12d, r12d
	mov	r10, qword ptr [rsp + 8]
	mov	rdi, r15
	mov	r15, qword ptr [rsp + 0x48]
	mov	rax, qword ptr [rsp + 0x38]
	je	.label_148
	jmp	.label_139
	.section	.text
	.align	32
	#Procedure 0x40383a
	.globl sub_40383a
	.type sub_40383a, @function
sub_40383a:

	nop	word ptr [rax + rax]
.label_168:
	mov	qword ptr [r14 + rbp*8 + 8], rdx
.label_148:
	inc	rbp
	cmp	rbp, r10
	jl	.label_161
.label_175:
	mov	rbp, qword ptr [rsp + 0x90]
.label_174:
	mov	qword ptr [rax + r10*8], rbp
	mov	rsi, qword ptr [rsp + 0x78]
	test	rsi, rsi
	mov	r14, qword ptr [rsp + 0x28]
	jle	.label_157
	mov	r12, rsi
	dec	r12
	mov	rcx, qword ptr [rsp + 0x80]
	mov	edx, 0
	je	.label_195
	mov	rdi, r12
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_180:
	lea	rbp, [rdx + rdi]
	shr	rbp, 1
	cmp	qword ptr [rcx + rbp*8], rbx
	lea	rax, [rbp + 1]
	cmovl	rdx, rax
	cmovge	rdi, rbp
	cmp	rdx, rdi
	jb	.label_180
.label_195:
	cmp	qword ptr [rcx + rdx*8], rbx
	mov	rdi, -1
	cmove	rdi, rdx
	test	rdi, rdi
	js	.label_157
	cmp	rsi, rdi
	jle	.label_157
	mov	qword ptr [rsp + 0x78], r12
	cmp	r12, rdi
	jle	.label_157
	lea	r14, [rdx + 1]
	cmp	r12, r14
	mov	r11, r14
	cmovge	r11, r12
	sub	r11, rdx
	cmp	r11, 4
	jae	.label_169
	mov	r14, qword ptr [rsp + 0x28]
	jmp	.label_166
.label_169:
	mov	r8, r11
	and	r8, 0xfffffffffffffffc
	mov	r9, r11
	and	r9, 0xfffffffffffffffc
	je	.label_197
	cmp	r12, r14
	cmovge	r14, r12
	sub	r14, rdx
	add	r14, -4
	shr	r14, 2
	lea	r10d, [r14 + 1]
	and	r10d, 1
	test	r14, r14
	mov	edi, 0
	je	.label_183
	lea	rbp, [rcx + rdx*8 + 0x38]
	lea	rsi, [r10 - 1]
	sub	rsi, r14
	xor	edi, edi
	nop	word ptr cs:[rax + rax]
.label_198:
	movups	xmm0, xmmword ptr [rbp + rdi*8 - 0x30]
	movups	xmm1, xmmword ptr [rbp + rdi*8 - 0x20]
	movups	xmmword ptr [rbp + rdi*8 - 0x38], xmm0
	movups	xmmword ptr [rbp + rdi*8 - 0x28], xmm1
	movups	xmm0, xmmword ptr [rbp + rdi*8 - 0x10]
	movups	xmm1, xmmword ptr [rbp + rdi*8]
	movups	xmmword ptr [rbp + rdi*8 - 0x18], xmm0
	movups	xmmword ptr [rbp + rdi*8 - 8], xmm1
	add	rdi, 8
	add	rsi, 2
	jne	.label_198
.label_183:
	test	r10, r10
	je	.label_172
	add	rdi, rdx
	movups	xmm0, xmmword ptr [rcx + rdi*8 + 8]
	movups	xmm1, xmmword ptr [rcx + rdi*8 + 0x18]
	movups	xmmword ptr [rcx + rdi*8], xmm0
	movups	xmmword ptr [rcx + rdi*8 + 0x10], xmm1
.label_172:
	cmp	r11, r9
	mov	r10, qword ptr [rsp + 8]
	mov	r14, qword ptr [rsp + 0x28]
	je	.label_157
	add	rdx, r8
	jmp	.label_166
.label_197:
	mov	r14, qword ptr [rsp + 0x28]
	nop	word ptr cs:[rax + rax]
.label_166:
	mov	rax, qword ptr [rcx + rdx*8 + 8]
	mov	qword ptr [rcx + rdx*8], rax
	inc	rdx
	cmp	rdx, r12
	jl	.label_166
.label_157:
	lea	rbp, [rbx + rbx*4]
	shl	rbp, 3
	mov	rax, qword ptr [rsp + 0x18]
	add	rbp, qword ptr [rax + 0xd8]
	mov	r12, qword ptr [rsp + 0x10]
	nop	word ptr [rax + rax]
.label_142:
	inc	rbx
	cmp	byte ptr [rbp + 0x20], 0
	lea	rbp, [rbp + 0x28]
	jne	.label_196
.label_170:
	mov	rcx, qword ptr [rsp + 0x20]
	inc	rcx
	xor	r12d, r12d
	mov	rax, qword ptr [rsp + 0x30]
	cmp	rcx, qword ptr [rax + 8]
	jl	.label_140
.label_139:
	cmp	qword ptr [rsp + 0x50], 0
	je	.label_149
	mov	rdi, qword ptr [rsp + 0x80]
	call	free
.label_149:
	mov	dword ptr [rsp + 4], r12d
	test	r12d, r12d
	je	.label_155
	jmp	.label_154
.label_144:
	mov	dword ptr [rsp + 4], 0
.label_155:
	xor	r12d, r12d
.label_154:
	mov	eax, r12d
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_147:
	mov	dword ptr [rsp + 4], r12d
	jmp	.label_154
.label_178:
	xorps	xmm0, xmm0
	lea	rax, [rsp + 0x70]
	movups	xmmword ptr [rax], xmm0
	mov	r12d, 0xc
	jmp	.label_139
	.section	.text
	.align	32
	#Procedure 0x403a76
	.globl sub_403a76
	.type sub_403a76, @function
sub_403a76:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403a80

	.globl mem_cd_iconv
	.type mem_cd_iconv, @function
mem_cd_iconv:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x1048
	mov	qword ptr [rsp + 0x28], r8
	mov	qword ptr [rsp + 0x40], rcx
	mov	rax, rdx
	mov	rbp, rsi
	mov	r14, rdi
	xor	ebx, ebx
	xor	esi, esi
	xor	edx, edx
	xor	ecx, ecx
	xor	r8d, r8d
	mov	qword ptr [rsp + 0x10], rax
	mov	rdi, rax
	call	iconv
	mov	qword ptr [rsp + 8], r14
	mov	qword ptr [rsp + 0x20], r14
	mov	qword ptr [rsp + 0x18], rbp
	mov	qword ptr [rsp + 0x38], rbp
	test	rbp, rbp
	je	.label_207
	xor	ebx, ebx
	lea	r12, [rsp + 0x48]
	lea	rbp, [rsp + 0x18]
	lea	r15, [rsp]
	lea	r13, [rsp + 0x30]
	nop	
.label_215:
	mov	qword ptr [rsp], r12
	mov	qword ptr [rsp + 0x30], 0x1000
	mov	rdi, qword ptr [rsp + 0x10]
	lea	rsi, [rsp + 0x20]
	mov	rdx, rbp
	mov	rcx, r15
	mov	r8, r13
	call	iconv
	cmp	rax, -1
	jne	.label_202
	call	__errno_location
	mov	eax, dword ptr [rax]
	cmp	eax, 7
	je	.label_202
	mov	r14d, 3
	cmp	eax, 0x16
	je	.label_204
	mov	r14d, 1
	jmp	.label_204
	.section	.text
	.align	32
	#Procedure 0x403b3a
	.globl sub_403b3a
	.type sub_403b3a, @function
sub_403b3a:

	nop	word ptr [rax + rax]
.label_202:
	sub	rbx, r12
	add	rbx, qword ptr [rsp]
	xor	r14d, r14d
.label_204:
	mov	eax, r14d
	and	al, 3
	jne	.label_213
	cmp	qword ptr [rsp + 0x18], 0
	jne	.label_215
	jmp	.label_207
.label_213:
	cmp	al, 3
	jne	.label_201
.label_207:
	lea	rbp, [rsp + 0x48]
	mov	qword ptr [rsp], rbp
	mov	qword ptr [rsp + 0x30], 0x1000
	xor	r14d, r14d
	lea	rcx, [rsp]
	lea	r8, [rsp + 0x30]
	xor	esi, esi
	xor	edx, edx
	mov	rdi, qword ptr [rsp + 0x10]
	call	iconv
	cmp	rax, -1
	je	.label_200
	sub	rbx, rbp
	add	rbx, qword ptr [rsp]
	jmp	.label_201
.label_200:
	mov	r14d, 1
.label_201:
	mov	ebp, 0xffffffff
	test	r14d, r14d
	jne	.label_209
	test	rbx, rbx
	je	.label_205
	mov	r12, qword ptr [rsp + 0x40]
	mov	r14, qword ptr [r12]
	test	r14, r14
	je	.label_206
	mov	rax, qword ptr [rsp + 0x28]
	cmp	qword ptr [rax], rbx
	jae	.label_211
.label_206:
	mov	rdi, rbx
	call	malloc
	mov	r14, rax
	test	r14, r14
	je	.label_216
.label_211:
	xor	esi, esi
	xor	edx, edx
	xor	ecx, ecx
	xor	r8d, r8d
	mov	rdi, qword ptr [rsp + 0x10]
	call	iconv
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rsp + 0x48], rax
	mov	rax, qword ptr [rsp + 0x38]
	mov	qword ptr [rsp + 0x20], rax
	mov	qword ptr [rsp + 8], r14
	mov	qword ptr [rsp + 0x18], r14
	mov	qword ptr [rsp], rbx
	test	rax, rax
	je	.label_219
	lea	r13, [rsp + 0x48]
	lea	rbp, [rsp + 0x20]
	lea	r15, [rsp + 0x18]
	lea	r14, [rsp]
.label_218:
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, r13
	mov	rdx, rbp
	mov	rcx, r15
	mov	r8, r14
	call	iconv
	cmp	rax, -1
	je	.label_212
	xor	eax, eax
	jmp	.label_214
.label_212:
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	setne	al
	add	al, 5
.label_214:
	and	al, 7
	jne	.label_217
	cmp	qword ptr [rsp + 0x20], 0
	jne	.label_218
	jmp	.label_219
.label_205:
	mov	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [rax], 0
	jmp	.label_220
.label_216:
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_209
.label_217:
	cmp	al, 5
	jne	.label_199
.label_219:
	lea	rcx, [rsp + 0x18]
	lea	r8, [rsp]
	xor	esi, esi
	xor	edx, edx
	mov	rdi, qword ptr [rsp + 0x10]
	call	iconv
	cmp	rax, -1
	je	.label_203
	cmp	qword ptr [rsp], 0
	mov	rax, qword ptr [rsp + 8]
	jne	.label_221
	mov	qword ptr [r12], rax
	mov	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [rax], rbx
.label_220:
	xor	ebp, ebp
	jmp	.label_209
.label_203:
	mov	rbp, qword ptr [rsp + 8]
	jmp	.label_210
.label_199:
	cmp	al, 6
	mov	rbp, qword ptr [rsp + 8]
	jne	.label_208
.label_210:
	cmp	rbp, qword ptr [r12]
	je	.label_208
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	rdi, rbp
	call	free
	mov	dword ptr [rbx], r14d
.label_208:
	mov	ebp, 0xffffffff
.label_209:
	mov	eax, ebp
	add	rsp, 0x1048
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_221:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403d0d
	.globl sub_403d0d
	.type sub_403d0d, @function
sub_403d0d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403d10

	.globl check_dst_limits_calc_pos
	.type check_dst_limits_calc_pos, @function
check_dst_limits_calc_pos:
	mov	r10, qword ptr [rdi + 0xd8]
	lea	rsi, [rsi + rsi*4]
	mov	r11, qword ptr [r10 + rsi*8 + 0x10]
	mov	eax, 0xffffffff
	cmp	r11, r8
	jg	.label_222
	mov	r10, qword ptr [r10 + rsi*8 + 0x18]
	mov	eax, 1
	cmp	r10, r8
	jl	.label_222
	push	rbx
	xor	ebx, ebx
	cmp	r11, r8
	sete	bl
	xor	esi, esi
	cmp	r10, r8
	sete	sil
	add	esi, esi
	xor	eax, eax
	or	esi, ebx
	pop	rbx
	je	.label_222
	mov	r8, r9
	jmp	check_dst_limits_calc_pos_1
.label_222:
	ret	
	.section	.text
	.align	32
	#Procedure 0x403d5a
	.globl sub_403d5a
	.type sub_403d5a, @function
sub_403d5a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403d60

	.globl check_dst_limits_calc_pos_1
	.type check_dst_limits_calc_pos_1, @function
check_dst_limits_calc_pos_1:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x68
	mov	r9, rcx
	mov	qword ptr [rsp + 0x10], rdx
	mov	dword ptr [rsp + 0xc], esi
	mov	qword ptr [rsp + 0x30], rdi
	mov	rdi, qword ptr [rdi + 0x98]
	mov	rax, qword ptr [rdi + 0x30]
	lea	rcx, [r9 + r9*2]
	cmp	qword ptr [rax + rcx*8 + 8], 0
	jle	.label_236
	lea	r10, [rax + rcx*8 + 8]
	mov	edx, 1
	mov	rcx, qword ptr [rsp + 0x10]
	shl	rdx, cl
	mov	eax, dword ptr [rsp + 0xc]
	mov	esi, eax
	shl	esi, 0x1f
	sar	esi, 0x1f
	mov	dword ptr [rsp + 0x1c], esi
	mov	qword ptr [rsp + 0x60], rdx
	xor	rdx, 0xffff
	mov	qword ptr [rsp + 0x58], rdx
	mov	edx, eax
	and	edx, 2
	mov	dword ptr [rsp + 0x18], edx
	shr	edx, 1
	cmp	rcx, 0x3f
	setg	cl
	mov	dword ptr [rsp + 0x2c], edx
	or	cl, dl
	mov	byte ptr [rsp + 0xb], cl
	and	eax, 1
	mov	dword ptr [rsp + 0x54], eax
	xor	r14d, r14d
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], rdi
	mov	qword ptr [rsp + 0x38], r10
	nop	word ptr [rax + rax]
.label_223:
	mov	rax, qword ptr [r10 + 8]
	mov	r15, qword ptr [rax + r14*8]
	mov	rax, qword ptr [rdi]
	mov	rsi, r15
	shl	rsi, 4
	lea	rdx, [rax + rsi]
	mov	al, byte ptr [rax + rsi + 8]
	cmp	al, 9
	je	.label_228
	cmp	al, 8
	je	.label_237
	cmp	al, 4
	jne	.label_225
	cmp	r8, -1
	je	.label_225
	lea	r13, [r8 + r8*4]
	shl	r13, 3
	mov	rax, qword ptr [rsp + 0x30]
	add	r13, qword ptr [rax + 0xd8]
	cmp	qword ptr [rsp + 0x10], 0x3f
	jg	.label_241
	mov	r12d, ecx
	nop	
.label_238:
	mov	ebp, 7
	cmp	qword ptr [r13], r15
	jne	.label_249
	movzx	eax, word ptr [r13 + 0x22]
	test	qword ptr [rsp + 0x60], rax
	je	.label_249
	mov	rax, qword ptr [rdi + 0x28]
	lea	rcx, [r15 + r15*2]
	mov	rax, qword ptr [rax + rcx*8 + 0x10]
	mov	rcx, qword ptr [rax]
	mov	ebp, 1
	cmp	rcx, r9
	jne	.label_227
	mov	ecx, dword ptr [rsp + 0x1c]
	jmp	.label_233
.label_227:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	esi, dword ptr [rsp + 0xc]
	mov	rdx, qword ptr [rsp + 0x10]
	mov	r8, qword ptr [rsp + 0x20]
	call	check_dst_limits_calc_pos_1
	mov	r10, qword ptr [rsp + 0x38]
	mov	rdi, qword ptr [rsp + 0x40]
	mov	r9, qword ptr [rsp + 0x48]
	mov	r8, qword ptr [rsp + 0x20]
	mov	ecx, 0xffffffff
	cmp	eax, -1
	je	.label_233
	test	eax, eax
	jne	.label_246
	cmp	dword ptr [rsp + 0x18], 0
	mov	ecx, r12d
	mov	eax, 0
	cmovne	ecx, eax
	cmp	byte ptr [rsp + 0xb], 0
	mov	ebp, dword ptr [rsp + 0x2c]
	jne	.label_233
.label_246:
	movzx	eax, word ptr [r13 + 0x22]
	mov	rcx, qword ptr [rsp + 0x58]
	and	ecx, eax
	mov	word ptr [r13 + 0x22], cx
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_249:
	mov	ecx, r12d
.label_233:
	mov	eax, ebp
	and	al, 7
	cmp	al, 7
	je	.label_232
	test	al, al
	jne	.label_234
.label_232:
	cmp	byte ptr [r13 + 0x20], 0
	lea	r13, [r13 + 0x28]
	mov	r12d, ecx
	jne	.label_238
	jmp	.label_225
	.section	.text
	.align	32
	#Procedure 0x403f4a
	.globl sub_403f4a
	.type sub_403f4a, @function
sub_403f4a:

	nop	word ptr [rax + rax]
.label_228:
	cmp	dword ptr [rsp + 0x18], 0
	je	.label_225
	xor	eax, eax
	jmp	.label_243
	.section	.text
	.align	32
	#Procedure 0x403f5f
	.globl sub_403f5f
	.type sub_403f5f, @function
sub_403f5f:

	nop	
.label_237:
	cmp	dword ptr [rsp + 0x54], 0
	je	.label_225
	mov	eax, 0xffffffff
.label_243:
	mov	rsi, qword ptr [rsp + 0x10]
	cmp	qword ptr [rdx], rsi
	jne	.label_225
	jmp	.label_248
.label_241:
	cmp	byte ptr [rsp + 0xb], 0
	je	.label_224
	mov	ebx, ecx
.label_235:
	mov	ebp, 7
	cmp	qword ptr [r13], r15
	jne	.label_245
	mov	rax, qword ptr [rdi + 0x28]
	lea	rcx, [r15 + r15*2]
	mov	rax, qword ptr [rax + rcx*8 + 0x10]
	mov	rcx, qword ptr [rax]
	mov	ebp, 1
	cmp	rcx, r9
	jne	.label_230
	mov	ecx, dword ptr [rsp + 0x1c]
	jmp	.label_240
	.section	.text
	.align	32
	#Procedure 0x403fbf
	.globl sub_403fbf
	.type sub_403fbf, @function
sub_403fbf:

	nop	
.label_230:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	esi, dword ptr [rsp + 0xc]
	mov	rdx, qword ptr [rsp + 0x10]
	mov	r8, qword ptr [rsp + 0x20]
	call	check_dst_limits_calc_pos_1
	mov	r10, qword ptr [rsp + 0x38]
	mov	rdi, qword ptr [rsp + 0x40]
	mov	r9, qword ptr [rsp + 0x48]
	mov	r8, qword ptr [rsp + 0x20]
	mov	ecx, 0xffffffff
	cmp	eax, -1
	je	.label_240
	test	eax, eax
	jne	.label_250
	cmp	dword ptr [rsp + 0x18], 0
	mov	eax, 0
	cmovne	ebx, eax
	mov	ecx, ebx
	mov	ebp, dword ptr [rsp + 0x2c]
	jmp	.label_240
.label_250:
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_245:
	mov	ecx, ebx
.label_240:
	mov	eax, ebp
	and	al, 7
	cmp	al, 7
	je	.label_231
	test	al, al
	jne	.label_234
.label_231:
	cmp	byte ptr [r13 + 0x20], 0
	lea	r13, [r13 + 0x28]
	mov	ebx, ecx
	jne	.label_235
	jmp	.label_225
.label_224:
	mov	ebx, ecx
	nop	word ptr [rax + rax]
.label_239:
	mov	ebp, 7
	cmp	qword ptr [r13], r15
	jne	.label_247
	mov	rax, qword ptr [rdi + 0x28]
	lea	rcx, [r15 + r15*2]
	mov	rax, qword ptr [rax + rcx*8 + 0x10]
	mov	rcx, qword ptr [rax]
	mov	ebp, 1
	cmp	rcx, r9
	jne	.label_226
	mov	ecx, dword ptr [rsp + 0x1c]
	jmp	.label_229
	.section	.text
	.align	32
	#Procedure 0x40407b
	.globl sub_40407b
	.type sub_40407b, @function
sub_40407b:

	nop	dword ptr [rax + rax]
.label_226:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	esi, dword ptr [rsp + 0xc]
	mov	rdx, qword ptr [rsp + 0x10]
	mov	r8, qword ptr [rsp + 0x20]
	call	check_dst_limits_calc_pos_1
	mov	r10, qword ptr [rsp + 0x38]
	mov	rdi, qword ptr [rsp + 0x40]
	mov	r9, qword ptr [rsp + 0x48]
	mov	r8, qword ptr [rsp + 0x20]
	mov	ecx, 0xffffffff
	cmp	eax, -1
	je	.label_229
	test	eax, eax
	jne	.label_244
	movzx	eax, word ptr [r13 + 0x22]
	mov	rcx, qword ptr [rsp + 0x58]
	and	ecx, eax
	mov	word ptr [r13 + 0x22], cx
.label_244:
	xor	ebp, ebp
.label_247:
	mov	ecx, ebx
.label_229:
	mov	eax, ebp
	and	al, 7
	cmp	al, 7
	je	.label_242
	test	al, al
	jne	.label_234
.label_242:
	cmp	byte ptr [r13 + 0x20], 0
	lea	r13, [r13 + 0x28]
	mov	ebx, ecx
	jne	.label_239
	jmp	.label_225
.label_234:
	test	ebp, ebp
	mov	eax, ecx
	jne	.label_248
	nop	word ptr cs:[rax + rax]
.label_225:
	inc	r14
	cmp	r14, qword ptr [r10]
	jl	.label_223
.label_236:
	mov	eax, dword ptr [rsp + 0xc]
	shr	eax, 1
	and	eax, 1
.label_248:
	add	rsp, 0x68
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404124
	.globl sub_404124
	.type sub_404124, @function
sub_404124:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404130

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_251
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_251:
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
	#Procedure 0x4041b3
	.globl sub_4041b3
	.type sub_4041b3, @function
sub_4041b3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4041c0
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
	je	.label_252
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
.label_252:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x404228
	.globl sub_404228
	.type sub_404228, @function
sub_404228:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404230

	.globl re_compile_fastmap_iter
	.type re_compile_fastmap_iter, @function
re_compile_fastmap_iter:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x138
	mov	r15, rdx
	mov	r13, rdi
	mov	rbx, qword ptr [r13]
	cmp	dword ptr [rbx + 0xb4], 1
	jne	.label_403
	mov	al, byte ptr [r13 + 0x1a]
	and	al, 0x40
	shr	al, 6
	mov	dword ptr [rsp + 0xc], eax
	jmp	.label_416
.label_403:
	mov	dword ptr [rsp + 0xc], 0
.label_416:
	cmp	qword ptr [rsi + 0x10], 0
	jle	.label_277
	xor	r14d, r14d
	mov	qword ptr [rsp + 0x20], r13
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 0x28], rsi
	nop	dword ptr [rax + rax]
.label_269:
	mov	rax, qword ptr [rsi + 0x18]
	mov	rbp, qword ptr [rax + r14*8]
	mov	rcx, qword ptr [rbx]
	mov	r12, rbp
	shl	r12, 4
	movzx	eax, byte ptr [rcx + r12 + 8]
	mov	edx, eax
	dec	dl
	movzx	edx, dl
	cmp	dl, 6
	ja	.label_314
	lea	rsi, [rcx + r12]
	jmp	qword ptr [(rdx * 8) + label_443]
.label_3301:
	movzx	ebx, byte ptr [rsi]
	mov	byte ptr [r15 + rbx], 1
	mov	eax, dword ptr [rsp + 0xc]
	test	al, al
	je	.label_449
	mov	eax, ebx
	sub	eax, -0x80
	cmp	eax, 0x17f
	ja	.label_450
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	ebx, dword ptr [rax + rbx*4]
.label_450:
	movsxd	rax, ebx
	mov	byte ptr [r15 + rax], 1
.label_449:
	test	byte ptr [r13 + 0x1a], 0x40
	mov	rbx, qword ptr [rsp + 0x10]
	je	.label_314
	cmp	dword ptr [rbx + 0xb4], 2
	jl	.label_314
	mov	rax, qword ptr [rbx]
	mov	al, byte ptr [rax + r12]
	mov	byte ptr [rsp + 0x30], al
	inc	rbp
	cmp	rbp, qword ptr [rbx + 0x10]
	lea	r13, [rsp + 0x31]
	mov	edx, 0x2000ff
	jae	.label_466
	add	r12, 0x18
	lea	r13, [rsp + 0x31]
	nop	word ptr cs:[rax + rax]
.label_525:
	mov	rax, qword ptr [rbx]
	mov	ecx, dword ptr [rax + r12]
	and	ecx, edx
	cmp	ecx, 0x200001
	jne	.label_466
	movzx	eax, byte ptr [rax + r12 - 8]
	mov	byte ptr [r13], al
	inc	r13
	inc	rbp
	add	r12, 0x10
	cmp	rbp, qword ptr [rbx + 0x10]
	jb	.label_525
.label_466:
	mov	r12, rbx
	mov	qword ptr [rsp], 0
	lea	rbp, [rsp + 0x30]
	sub	r13, rbp
	lea	rdi, [rsp + 0x1c]
	mov	rsi, rbp
	mov	rdx, r13
	lea	rbx, [rsp]
	mov	rcx, rbx
	call	rpl_mbrtowc
	cmp	rax, r13
	jne	.label_504
	mov	edi, dword ptr [rsp + 0x1c]
	call	towlower
	mov	rdi, rbp
	mov	esi, eax
	mov	rdx, rbx
	call	wcrtomb
	cmp	rax, -1
	je	.label_504
	movzx	eax, byte ptr [rsp + 0x30]
	mov	byte ptr [r15 + rax], 1
.label_504:
	mov	r13, qword ptr [rsp + 0x20]
	jmp	.label_518
	.section	.text
	.align	32
	#Procedure 0x4043ca
	.globl sub_4043ca
	.type sub_4043ca, @function
sub_4043ca:

	nop	word ptr [rax + rax]
.label_3303:
	mov	rax, qword ptr [rcx + r12]
	mov	rbp, qword ptr [rax]
	mov	eax, dword ptr [rsp + 0xc]
	test	al, al
	je	.label_522
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_537:
	bt	rbp, rbx
	jae	.label_526
	mov	byte ptr [r15 + rbx], 1
	mov	eax, ebx
	sub	eax, -0x80
	cmp	eax, 0x180
	jae	.label_527
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	eax, dword ptr [rax + rbx*4]
	jmp	.label_531
	.section	.text
	.align	32
	#Procedure 0x404414
	.globl sub_404414
	.type sub_404414, @function
sub_404414:

	nop	word ptr cs:[rax + rax]
.label_527:
	mov	eax, ebx
.label_531:
	cdqe	
	mov	byte ptr [r15 + rax], 1
.label_526:
	inc	rbx
	cmp	rbx, 0x40
	jne	.label_537
	mov	rbx, qword ptr [rsp + 0x10]
	mov	rax, qword ptr [rbx]
	mov	rax, qword ptr [rax + r12]
	mov	r13, qword ptr [rax + 8]
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_563:
	bt	r13, rbp
	jae	.label_546
	mov	byte ptr [r15 + rbp + 0x40], 1
	lea	eax, [rbp + 0xc0]
	cmp	eax, 0x180
	jae	.label_548
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	eax, dword ptr [rax + rbp*4 + 0x100]
	jmp	.label_552
	.section	.text
	.align	32
	#Procedure 0x40447a
	.globl sub_40447a
	.type sub_40447a, @function
sub_40447a:

	nop	word ptr [rax + rax]
.label_548:
	lea	rax, [rbp + 0x40]
.label_552:
	cdqe	
	mov	byte ptr [r15 + rax], 1
.label_546:
	inc	rbp
	cmp	rbp, 0x40
	jne	.label_563
	mov	rax, qword ptr [rbx]
	mov	rax, qword ptr [rax + r12]
	mov	r13, qword ptr [rax + 0x10]
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_587:
	bt	r13, rbp
	jae	.label_575
	mov	byte ptr [r15 + rbp + 0x80], 1
	lea	eax, [rbp + 0x100]
	cmp	eax, 0x180
	jae	.label_577
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	eax, dword ptr [rax + rbp*4 + 0x200]
	jmp	.label_583
	.section	.text
	.align	32
	#Procedure 0x4044dd
	.globl sub_4044dd
	.type sub_4044dd, @function
sub_4044dd:

	nop	dword ptr [rax]
.label_577:
	mov	rax, rbp
	sub	rax, -0x80
.label_583:
	cdqe	
	mov	byte ptr [r15 + rax], 1
.label_575:
	inc	rbp
	cmp	rbp, 0x40
	jne	.label_587
	mov	rax, qword ptr [rbx]
	mov	rax, qword ptr [rax + r12]
	mov	r12, qword ptr [rax + 0x18]
	xor	ebp, ebp
	mov	r13, qword ptr [rsp + 0x20]
	nop	dword ptr [rax]
.label_609:
	bt	r12, rbp
	jae	.label_592
	mov	byte ptr [r15 + rbp + 0xc0], 1
	lea	eax, [rbp + 0x140]
	cmp	eax, 0x180
	jae	.label_593
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	eax, dword ptr [rax + rbp*4 + 0x300]
	jmp	.label_596
	.section	.text
	.align	32
	#Procedure 0x40453d
	.globl sub_40453d
	.type sub_40453d, @function
sub_40453d:

	nop	dword ptr [rax]
.label_593:
	lea	rax, [rbp + 0xc0]
.label_596:
	cdqe	
	mov	byte ptr [r15 + rax], 1
.label_592:
	inc	rbp
	cmp	rbp, 0x40
	jne	.label_609
	jmp	.label_314
	.section	.text
	.align	32
	#Procedure 0x40455c
	.globl sub_40455c
	.type sub_40455c, @function
sub_40455c:

	nop	dword ptr [rax]
.label_3304:
	mov	r12, qword ptr [rsi]
	cmp	dword ptr [rbx + 0xb4], 1
	jle	.label_614
	cmp	qword ptr [r12 + 0x48], 0
	jne	.label_617
	test	byte ptr [r12 + 0x20], 1
	jne	.label_617
	cmp	qword ptr [r12 + 0x40], 0
	je	.label_614
.label_617:
	mov	r12, rbx
	mov	byte ptr [rsp], 0
	lea	rbp, [rsp + 0x30]
	lea	rbx, [rsp]
	nop	word ptr cs:[rax + rax]
.label_635:
	mov	qword ptr [rsp + 0x30], 0
	xor	edi, edi
	mov	edx, 1
	mov	rsi, rbx
	mov	rcx, rbp
	call	rpl_mbrtowc
	movzx	ecx, byte ptr [rsp]
	cmp	rax, -2
	jne	.label_632
	mov	byte ptr [r15 + rcx], 1
.label_632:
	inc	cl
	mov	byte ptr [rsp], cl
	jne	.label_635
.label_518:
	mov	rbx, r12
	jmp	.label_314
.label_614:
	cmp	qword ptr [r12 + 0x28], 0
	jle	.label_314
	mov	eax, dword ptr [rsp + 0xc]
	xor	ebp, ebp
	test	al, al
	je	.label_448
	nop	word ptr cs:[rax + rax]
.label_423:
	mov	qword ptr [rsp], 0
	mov	rax, qword ptr [r12]
	mov	esi, dword ptr [rax + rbp*4]
	lea	rdi, [rsp + 0x30]
	lea	rdx, [rsp]
	call	wcrtomb
	cmp	rax, -1
	je	.label_649
	movzx	ebx, byte ptr [rsp + 0x30]
	mov	byte ptr [r15 + rbx], 1
	mov	eax, ebx
	sub	eax, -0x80
	cmp	eax, 0x17f
	ja	.label_652
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	ebx, dword ptr [rax + rbx*4]
.label_652:
	movsxd	rax, ebx
	mov	byte ptr [r15 + rax], 1
	mov	rbx, qword ptr [rsp + 0x10]
.label_649:
	test	byte ptr [r13 + 0x1a], 0x40
	je	.label_665
	cmp	dword ptr [rbx + 0xb4], 2
	jl	.label_665
	mov	rax, qword ptr [r12]
	mov	edi, dword ptr [rax + rbp*4]
	call	towlower
	lea	rdi, [rsp + 0x30]
	mov	esi, eax
	lea	rdx, [rsp]
	call	wcrtomb
	cmp	rax, -1
	je	.label_665
	movzx	eax, byte ptr [rsp + 0x30]
	mov	byte ptr [r15 + rax], 1
	nop	dword ptr [rax]
.label_665:
	inc	rbp
	cmp	rbp, qword ptr [r12 + 0x28]
	jl	.label_423
	jmp	.label_314
	.section	.text
	.align	32
	#Procedure 0x4046a3
	.globl sub_4046a3
	.type sub_4046a3, @function
sub_4046a3:

	nop	word ptr cs:[rax + rax]
.label_448:
	mov	qword ptr [rsp], 0
	mov	rax, qword ptr [r12]
	mov	esi, dword ptr [rax + rbp*4]
	lea	rdi, [rsp + 0x30]
	lea	rdx, [rsp]
	call	wcrtomb
	cmp	rax, -1
	je	.label_685
	movzx	eax, byte ptr [rsp + 0x30]
	mov	byte ptr [r15 + rax], 1
.label_685:
	test	byte ptr [r13 + 0x1a], 0x40
	je	.label_356
	cmp	dword ptr [rbx + 0xb4], 2
	jl	.label_356
	mov	rax, qword ptr [r12]
	mov	edi, dword ptr [rax + rbp*4]
	call	towlower
	lea	rdi, [rsp + 0x30]
	mov	esi, eax
	lea	rdx, [rsp]
	call	wcrtomb
	cmp	rax, -1
	je	.label_356
	movzx	eax, byte ptr [rsp + 0x30]
	mov	byte ptr [r15 + rax], 1
	nop	dword ptr [rax]
.label_356:
	inc	rbp
	cmp	rbp, qword ptr [r12 + 0x28]
	jl	.label_448
	jmp	.label_314
.label_522:
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_705:
	bt	rbp, rax
	jae	.label_499
	mov	byte ptr [r15 + rax], 1
.label_499:
	lea	rcx, [rax + 1]
	bt	rbp, rcx
	jae	.label_702
	mov	byte ptr [r15 + rax + 1], 1
.label_702:
	inc	rcx
	cmp	rcx, 0x40
	mov	rax, rcx
	jne	.label_705
	mov	rax, qword ptr [rbx]
	mov	rax, qword ptr [rax + r12]
	mov	rax, qword ptr [rax + 8]
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_719:
	bt	rax, rcx
	jae	.label_713
	mov	byte ptr [r15 + rcx + 0x40], 1
.label_713:
	lea	edx, [rcx + 1]
	bt	rax, rdx
	jae	.label_715
	mov	byte ptr [r15 + rcx + 0x41], 1
.label_715:
	add	rcx, 2
	cmp	rcx, 0x40
	jne	.label_719
	mov	rax, qword ptr [rbx]
	mov	rax, qword ptr [rax + r12]
	mov	rax, qword ptr [rax + 0x10]
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_732:
	bt	rax, rcx
	jae	.label_726
	mov	byte ptr [r15 + rcx + 0x80], 1
.label_726:
	lea	edx, [rcx + 1]
	bt	rax, rdx
	jae	.label_728
	mov	byte ptr [r15 + rcx + 0x81], 1
.label_728:
	add	rcx, 2
	cmp	rcx, 0x40
	jne	.label_732
	mov	rax, qword ptr [rbx]
	mov	rax, qword ptr [rax + r12]
	mov	rax, qword ptr [rax + 0x18]
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_266:
	bt	rax, rcx
	jae	.label_412
	mov	byte ptr [r15 + rcx + 0xc0], 1
.label_412:
	lea	edx, [rcx + 1]
	bt	rax, rdx
	jae	.label_258
	mov	byte ptr [r15 + rcx + 0xc1], 1
.label_258:
	add	rcx, 2
	cmp	rcx, 0x40
	jne	.label_266
	nop	dword ptr [rax + rax]
.label_314:
	inc	r14
	mov	rsi, qword ptr [rsp + 0x28]
	cmp	r14, qword ptr [rsi + 0x10]
	jl	.label_269
	jmp	.label_277
.label_3302:
	movaps	xmm0, xmmword ptr [rip + label_278]
	movups	xmmword ptr [r15 + 0xf0], xmm0
	movups	xmmword ptr [r15 + 0xe0], xmm0
	movups	xmmword ptr [r15 + 0xd0], xmm0
	movups	xmmword ptr [r15 + 0xc0], xmm0
	movups	xmmword ptr [r15 + 0xb0], xmm0
	movups	xmmword ptr [r15 + 0xa0], xmm0
	movups	xmmword ptr [r15 + 0x90], xmm0
	movups	xmmword ptr [r15 + 0x80], xmm0
	movups	xmmword ptr [r15 + 0x70], xmm0
	movups	xmmword ptr [r15 + 0x60], xmm0
	movups	xmmword ptr [r15 + 0x50], xmm0
	movups	xmmword ptr [r15 + 0x40], xmm0
	movups	xmmword ptr [r15 + 0x30], xmm0
	movups	xmmword ptr [r15 + 0x20], xmm0
	movups	xmmword ptr [r15 + 0x10], xmm0
	movups	xmmword ptr [r15], xmm0
	cmp	eax, 2
	jne	.label_277
	or	byte ptr [r13 + 0x38], 1
.label_277:
	add	rsp, 0x138
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4048ce
	.globl sub_4048ce
	.type sub_4048ce, @function
sub_4048ce:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4048d0

	.globl re_node_set_init_union
	.type re_node_set_init_union, @function
re_node_set_init_union:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	rbx, rdx
	mov	r12, rsi
	mov	rbp, rdi
	test	r12, r12
	je	.label_746
	mov	r13, qword ptr [r12 + 8]
	test	rbx, rbx
	je	.label_744
	test	r13, r13
	jle	.label_744
	mov	rdi, qword ptr [rbx + 8]
	test	rdi, rdi
	jle	.label_744
	add	rdi, r13
	mov	qword ptr [rbp], rdi
	shl	rdi, 3
	call	malloc
	mov	qword ptr [rsp], rbp
	mov	qword ptr [rbp + 0x10], rax
	test	rax, rax
	mov	ecx, 0xc
	je	.label_750
	xor	edi, edi
	xor	esi, esi
	xor	ebp, ebp
.label_743:
	mov	r15, rdi
	mov	r14, rsi
	nop	word ptr cs:[rax + rax]
.label_752:
	cmp	r14, qword ptr [rbx + 8]
	jge	.label_742
	mov	rcx, qword ptr [r12 + 0x10]
	mov	rdx, qword ptr [rcx + rbp*8]
	mov	rcx, qword ptr [rbx + 0x10]
	mov	rcx, qword ptr [rcx + r14*8]
	cmp	rdx, rcx
	jle	.label_747
	inc	r14
	mov	qword ptr [rax + r15*8], rcx
	inc	r15
	mov	r13, qword ptr [r12 + 8]
	cmp	rbp, r13
	jl	.label_752
	jmp	.label_742
.label_747:
	mov	rdi, rbx
	sete	bl
	movzx	esi, bl
	mov	rbx, rdi
	add	rsi, r14
	inc	rbp
	lea	rdi, [r15 + 1]
	mov	qword ptr [rax + r15*8], rdx
	mov	r13, qword ptr [r12 + 8]
	cmp	rbp, r13
	jl	.label_743
	xor	esi, esi
	cmp	rdx, rcx
	sete	sil
	inc	r15
	add	r14, rsi
.label_742:
	sub	r13, rbp
	jle	.label_753
	lea	rdi, [rax + r15*8]
	mov	rax, qword ptr [r12 + 0x10]
	lea	rsi, [rax + rbp*8]
	shl	r13, 3
	mov	rdx, r13
	call	memcpy
	sub	r15, rbp
	add	r15, qword ptr [r12 + 8]
	jmp	.label_748
.label_744:
	test	r13, r13
	jle	.label_746
	mov	qword ptr [rbp + 8], r13
	mov	r15, qword ptr [r12 + 8]
	test	r15, r15
	jle	.label_751
	mov	qword ptr [rbp], r13
	shl	r13, 3
	mov	rdi, r13
	call	malloc
	mov	qword ptr [rbp + 0x10], rax
	test	rax, rax
	je	.label_749
	mov	rsi, qword ptr [r12 + 0x10]
	shl	r15, 3
	mov	rdi, rax
	mov	rdx, r15
	call	memcpy
	jmp	.label_745
.label_746:
	test	rbx, rbx
	je	.label_751
	mov	rdi, qword ptr [rbx + 8]
	test	rdi, rdi
	jle	.label_751
	mov	qword ptr [rbp + 8], rdi
	mov	r14, rbx
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	jle	.label_751
	mov	qword ptr [rbp], rdi
	shl	rdi, 3
	call	malloc
	mov	qword ptr [rbp + 0x10], rax
	test	rax, rax
	je	.label_749
	mov	rsi, qword ptr [r14 + 0x10]
	shl	rbx, 3
	mov	rdi, rax
	mov	rdx, rbx
	call	memcpy
	jmp	.label_745
.label_751:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbp], xmm0
	mov	qword ptr [rbp + 0x10], 0
	jmp	.label_745
.label_753:
	mov	rdx, qword ptr [rbx + 8]
	sub	rdx, r14
	jle	.label_748
	lea	rdi, [rax + r15*8]
	mov	rax, qword ptr [rbx + 0x10]
	lea	rsi, [rax + r14*8]
	shl	rdx, 3
	call	memcpy
	sub	r15, r14
	add	r15, qword ptr [rbx + 8]
.label_748:
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax + 8], r15
.label_745:
	xor	ecx, ecx
.label_750:
	mov	eax, ecx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_749:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbp], xmm0
	mov	ecx, 0xc
	jmp	.label_750
	.section	.text
	.align	32
	#Procedure 0x404ad5
	.globl sub_404ad5
	.type sub_404ad5, @function
sub_404ad5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404ae0
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_754
	test	rdx, rdx
	je	.label_754
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_754:
	push	rax
	call	abort
	.section	.text
	.align	32
	#Procedure 0x404b0b
	.globl sub_404b0b
	.type sub_404b0b, @function
sub_404b0b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404b10

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
	jne	.label_756
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_755
	test	cl, cl
	jne	.label_755
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_755
.label_756:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_755
	call	__errno_location
	mov	dword ptr [rax], 0
.label_755:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_761:
	test	rdx, rdx
	jle	.label_759
	mov	r10, qword ptr [rdi]
	mov	rsi, qword ptr [rsi]
	xor	edi, edi
	nop	word ptr cs:[rax + rax]
.label_760:
	movzx	eax, byte ptr [r10 + rdi]
	movzx	ecx, byte ptr [rsi + rdi]
	sub	eax, ecx
	jne	.label_757
	inc	rdi
	cmp	rdi, rdx
	jl	.label_760
.label_759:
	xor	ecx, ecx
	cmp	r8, r9
	setg	cl
	mov	eax, 0xffffffff
	cmovge	eax, ecx
.label_757:
	ret	
	.section	.text
	.align	32
	#Procedure 0x404bb1
	.globl sub_404bb1
	.type sub_404bb1, @function
sub_404bb1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404bbb

	.globl compare_words
	.type compare_words, @function
compare_words:
	mov	r8, qword ptr [rdi + 8]
	mov	r9, qword ptr [rsi + 8]
	cmp	r8, r9
	mov	rdx, r9
	cmovle	rdx, r8
	mov	al, byte ptr [rip + ignore_case]
	test	al, al
	je	.label_761
	test	rdx, rdx
	jle	.label_759
	mov	r10, qword ptr [rdi]
	mov	rsi, qword ptr [rsi]
	xor	ecx, ecx
	nop	dword ptr [rax]
.label_758:
	movzx	eax, byte ptr [r10 + rcx]
	movzx	eax, byte ptr [rax + folded_chars]
	movzx	edi, byte ptr [rsi + rcx]
	movzx	edi, byte ptr [rdi + folded_chars]
	sub	eax, edi
	jne	.label_757
	inc	rcx
	cmp	rcx, rdx
	jl	.label_758
	jmp	.label_759
.label_762:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x404c15
	.globl sub_404c15
	.type sub_404c15, @function
sub_404c15:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404c1b

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_763
	test	rax, rax
	je	.label_762
.label_763:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x404c30
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
	#Procedure 0x404c48
	.globl sub_404c48
	.type sub_404c48, @function
sub_404c48:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404c50

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
	je	.label_765
	test	rbx, rbx
	je	.label_765
	mov	rdi, rbx
	call	fileno
	mov	ebp, eax
	mov	edi, ebp
	mov	esi, ebp
	call	dup2
	test	eax, eax
	jns	.label_765
	call	__errno_location
	cmp	dword ptr [rax], 9
	jne	.label_765
	mov	edi, OFFSET FLAT:label_766
	mov	esi, 0x80000
	xor	eax, eax
	call	open
	mov	r12d, eax
	cmp	r12d, ebp
	je	.label_764
	mov	edi, r12d
	mov	esi, ebp
	call	dup2
	mov	ebp, eax
	mov	edi, r12d
	call	close
	test	ebp, ebp
	js	.label_765
.label_764:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	jmp	freopen
.label_765:
	mov	rax, rbx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404ce4
	.globl sub_404ce4
	.type sub_404ce4, @function
sub_404ce4:

	nop	word ptr cs:[rax + rax]
.label_795:
	mov	r11, qword ptr [r12 + 8]
	xor	r10d, r10d
	nop	word ptr cs:[rax + rax]
.label_770:
	test	r11, r11
	jle	.label_767
	mov	rbx, qword ptr [r8 + r10*8]
	mov	r9, r11
	dec	r9
	mov	rsi, qword ptr [r12 + 0x10]
	mov	ebp, 0
	je	.label_771
	mov	rax, r9
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_772:
	lea	rcx, [rbp + rax]
	shr	rcx, 1
	cmp	qword ptr [rsi + rcx*8], rbx
	lea	rdx, [rcx + 1]
	cmovl	rbp, rdx
	cmovge	rax, rcx
	cmp	rbp, rax
	jb	.label_772
.label_771:
	cmp	qword ptr [rsi + rbp*8], rbx
	mov	rax, -1
	cmove	rax, rbp
	test	rax, rax
	js	.label_767
	cmp	r11, rax
	jle	.label_767
	mov	qword ptr [r12 + 8], r9
	cmp	r9, rax
	mov	r11, r9
	jle	.label_767
	nop	word ptr cs:[rax + rax]
.label_768:
	mov	rax, qword ptr [rsi + rbp*8 + 8]
	mov	qword ptr [rsi + rbp*8], rax
	inc	rbp
	mov	r11, qword ptr [r12 + 8]
	cmp	rbp, r11
	jl	.label_768
	nop	word ptr cs:[rax + rax]
.label_767:
	inc	r10
	cmp	r10, qword ptr [r13]
	jl	.label_770
	jmp	.label_769
	.section	.text
	.align	32
	#Procedure 0x404db6

	.globl sub_epsilon_src_nodes
	.type sub_epsilon_src_nodes, @function
sub_epsilon_src_nodes:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	qword ptr [rsp + 0x30], rcx
	mov	r12, rdx
	mov	r15, rsi
	mov	rax, qword ptr [rdi + 0x38]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	qword ptr [rsp + 0x10], 0
	lea	rcx, [r15 + r15*2]
	mov	r9, qword ptr [rax + rcx*8 + 8]
	test	r9, r9
	jle	.label_786
	mov	qword ptr [rsp + 0x28], rax
	mov	qword ptr [rsp + 0x20], rcx
	lea	r13, [rax + rcx*8 + 8]
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_790:
	mov	r11, qword ptr [r13 + 8]
	mov	rax, qword ptr [r11 + r14*8]
	cmp	rax, r15
	je	.label_774
	mov	rdx, qword ptr [rdi]
	mov	rcx, rax
	shl	rcx, 4
	test	byte ptr [rdx + rcx + 8], 8
	je	.label_774
	mov	rbp, qword ptr [rdi + 0x28]
	lea	r8, [rax + rax*2]
	mov	rax, qword ptr [rbp + r8*8 + 0x10]
	mov	rsi, qword ptr [rax]
	mov	r10, -1
	cmp	qword ptr [rbp + r8*8 + 8], 2
	jl	.label_787
	mov	r10, qword ptr [rax + 8]
.label_787:
	test	r9, r9
	jle	.label_778
	mov	rax, r9
	dec	rax
	mov	ebp, 0
	je	.label_794
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_798:
	lea	rbx, [rbp + rax]
	shr	rbx, 1
	cmp	qword ptr [r11 + rbx*8], rsi
	lea	rcx, [rbx + 1]
	cmovl	rbp, rcx
	cmovge	rax, rbx
	cmp	rbp, rax
	jb	.label_798
.label_794:
	cmp	rbp, -1
	je	.label_778
	cmp	qword ptr [r11 + rbp*8], rsi
	je	.label_779
.label_778:
	mov	rbp, qword ptr [r12 + 8]
	test	rbp, rbp
	jle	.label_779
	dec	rbp
	mov	rbx, qword ptr [r12 + 0x10]
	mov	eax, 0
	je	.label_783
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_781:
	lea	rcx, [rax + rbp]
	shr	rcx, 1
	cmp	qword ptr [rbx + rcx*8], rsi
	lea	rdx, [rcx + 1]
	cmovl	rax, rdx
	cmovge	rbp, rcx
	cmp	rax, rbp
	jb	.label_781
.label_783:
	cmp	rax, -1
	je	.label_779
	cmp	qword ptr [rbx + rax*8], rsi
	je	.label_797
.label_779:
	test	r10, r10
	jle	.label_774
	test	r9, r9
	jle	.label_785
	mov	rax, r9
	dec	rax
	mov	esi, 0
	je	.label_773
	xor	esi, esi
	nop	dword ptr [rax]
.label_777:
	lea	rcx, [rsi + rax]
	shr	rcx, 1
	cmp	qword ptr [r11 + rcx*8], r10
	lea	rdx, [rcx + 1]
	cmovl	rsi, rdx
	cmovge	rax, rcx
	cmp	rsi, rax
	jb	.label_777
.label_773:
	cmp	rsi, -1
	je	.label_785
	cmp	qword ptr [r11 + rsi*8], r10
	je	.label_774
.label_785:
	mov	rsi, qword ptr [r12 + 8]
	test	rsi, rsi
	jle	.label_774
	dec	rsi
	mov	rbp, qword ptr [r12 + 0x10]
	mov	eax, 0
	je	.label_791
	xor	eax, eax
	nop	word ptr [rax + rax]
.label_796:
	lea	rcx, [rax + rsi]
	shr	rcx, 1
	cmp	qword ptr [rbp + rcx*8], r10
	lea	rdx, [rcx + 1]
	cmovl	rax, rdx
	cmovge	rsi, rcx
	cmp	rax, rsi
	jb	.label_796
.label_791:
	cmp	rax, -1
	je	.label_774
	cmp	qword ptr [rbp + rax*8], r10
	jne	.label_774
.label_797:
	mov	rbx, rdi
	mov	rax, qword ptr [rdi + 0x38]
	lea	rdx, [rax + r8*8]
	lea	rdi, [rsp]
	mov	rsi, qword ptr [rsp + 0x30]
	call	re_node_set_add_intersect
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_799
	mov	r9, qword ptr [r13]
	mov	rdi, rbx
	nop	word ptr cs:[rax + rax]
.label_774:
	inc	r14
	cmp	r14, r9
	jl	.label_790
	test	r9, r9
	mov	rax, qword ptr [rsp + 0x28]
	mov	rcx, qword ptr [rsp + 0x20]
	jle	.label_786
	mov	r9, qword ptr [rsp + 8]
	mov	rdi, qword ptr [rsp + 0x10]
	test	r9, r9
	mov	r8, qword ptr [rax + rcx*8 + 0x10]
	jle	.label_795
	dec	r9
	xor	r14d, r14d
	nop	dword ptr [rax]
.label_789:
	test	r9, r9
	mov	rsi, qword ptr [r8 + r14*8]
	mov	eax, 0
	je	.label_775
	mov	rcx, r9
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_782:
	lea	rbp, [rax + rcx]
	shr	rbp, 1
	cmp	qword ptr [rdi + rbp*8], rsi
	lea	rbx, [rbp + 1]
	cmovl	rax, rbx
	cmovge	rcx, rbp
	cmp	rax, rcx
	jb	.label_782
.label_775:
	cmp	rax, -1
	je	.label_776
	cmp	qword ptr [rdi + rax*8], rsi
	je	.label_780
.label_776:
	mov	r11, qword ptr [r12 + 8]
	test	r11, r11
	jle	.label_780
	mov	r10, r11
	dec	r10
	mov	rbp, qword ptr [r12 + 0x10]
	mov	eax, 0
	je	.label_793
	mov	rbx, r10
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_788:
	lea	rcx, [rax + rbx]
	shr	rcx, 1
	cmp	qword ptr [rbp + rcx*8], rsi
	lea	rdx, [rcx + 1]
	cmovl	rax, rdx
	cmovge	rbx, rcx
	cmp	rax, rbx
	jb	.label_788
.label_793:
	cmp	qword ptr [rbp + rax*8], rsi
	mov	rsi, -1
	cmove	rsi, rax
	test	rsi, rsi
	js	.label_780
	cmp	r11, rsi
	jle	.label_780
	mov	qword ptr [r12 + 8], r10
	cmp	r10, rsi
	jle	.label_780
	nop	word ptr cs:[rax + rax]
.label_792:
	mov	rcx, qword ptr [rbp + rax*8 + 8]
	mov	qword ptr [rbp + rax*8], rcx
	inc	rax
	cmp	rax, qword ptr [r12 + 8]
	jl	.label_792
	nop	word ptr cs:[rax + rax]
.label_780:
	inc	r14
	cmp	r14, qword ptr [r13]
	jl	.label_789
	jmp	.label_769
.label_786:
	mov	rdi, qword ptr [rsp + 0x10]
.label_769:
	call	free
	xor	ebp, ebp
.label_784:
	mov	eax, ebp
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_799:
	mov	rdi, qword ptr [rsp + 0x10]
	call	free
	jmp	.label_784
	.section	.text
	.align	32
	#Procedure 0x405131
	.globl sub_405131
	.type sub_405131, @function
sub_405131:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405140

	.globl c_strcasecmp
	.type c_strcasecmp, @function
c_strcasecmp:
	xor	eax, eax
	cmp	rdi, rsi
	je	.label_800
	nop	word ptr [rax + rax]
.label_803:
	movzx	ecx, byte ptr [rdi]
	lea	edx, [rcx - 0x41]
	lea	eax, [rcx + 0x20]
	cmp	edx, 0x1a
	cmovae	eax, ecx
	movzx	edx, byte ptr [rsi]
	lea	r8d, [rdx - 0x41]
	lea	ecx, [rdx + 0x20]
	cmp	r8d, 0x1a
	cmovae	ecx, edx
	and	eax, 0xff
	je	.label_801
	inc	rdi
	inc	rsi
	movzx	ecx, cl
	cmp	eax, ecx
	je	.label_803
	jmp	.label_802
.label_801:
	movzx	ecx, cl
	xor	eax, eax
.label_802:
	sub	eax, ecx
.label_800:
	ret	
	.section	.text
	.align	32
	#Procedure 0x40518e
	.globl sub_40518e
	.type sub_40518e, @function
sub_40518e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x405190
	.globl read_binary_file
	.type read_binary_file, @function
read_binary_file:

	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	esi, OFFSET FLAT:label_804
	call	fopen
	mov	rbx, rax
	xor	r15d, r15d
	test	rbx, rbx
	je	.label_805
	mov	rdi, rbx
	mov	rsi, r14
	call	fread_file
	mov	r15, rax
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	rpl_fclose
	test	eax, eax
	je	.label_805
	test	r15, r15
	je	.label_806
	mov	ebp, dword ptr [r14]
	mov	rdi, r15
	call	free
.label_806:
	mov	dword ptr [r14], ebp
	xor	r15d, r15d
.label_805:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4051f8
	.globl sub_4051f8
	.type sub_4051f8, @function
sub_4051f8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405200

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_807
	test	rsi, rsi
	mov	ecx, 1
	je	.label_808
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_808
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_807:
	mov	ecx, 1
.label_808:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	32
	#Procedure 0x40524b
	.globl sub_40524b
	.type sub_40524b, @function
sub_40524b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405250

	.globl str_cd_iconv
	.type str_cd_iconv, @function
str_cd_iconv:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r14, rsi
	mov	qword ptr [rsp + 0x20], rdi
	call	strlen
	mov	qword ptr [rsp + 0x18], rax
	mov	rbx, rax
	shl	rbx, 4
	cmp	rax, 0x10000000
	cmovae	rbx, rax
	lea	rbp, [rbx + 1]
	mov	rdi, rbp
	call	malloc
	mov	r12, rax
	test	r12, r12
	je	.label_812
	xor	esi, esi
	xor	edx, edx
	xor	ecx, ecx
	xor	r8d, r8d
	mov	rdi, r14
	call	iconv
	mov	qword ptr [rsp + 8], r12
	mov	qword ptr [rsp + 0x10], rbx
	lea	rsi, [rsp + 0x20]
	lea	rdx, [rsp + 0x18]
	lea	rcx, [rsp + 8]
	lea	r8, [rsp + 0x10]
	mov	rdi, r14
	call	iconv
	cmp	rax, -1
	je	.label_815
	mov	rbx, rbp
	mov	r13, r12
.label_821:
	lea	rcx, [rsp + 8]
	lea	r8, [rsp + 0x10]
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r14
	call	iconv
	cmp	rax, -1
	je	.label_819
	mov	rbp, rbx
	mov	r12, r13
.label_810:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 1]
	mov	qword ptr [rsp + 8], rcx
	mov	byte ptr [rax], 0
	mov	rsi, qword ptr [rsp + 8]
	sub	rsi, r12
	cmp	rsi, rbp
	jae	.label_809
	mov	rdi, r12
	call	realloc
	test	rax, rax
	cmovne	r12, rax
	jmp	.label_809
.label_812:
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_822
.label_815:
	call	__errno_location
	mov	r15, rax
.label_811:
	mov	eax, dword ptr [r15]
	cmp	eax, 7
	jne	.label_813
	lea	rbx, [rbp + rbp]
	cmp	rbx, rbp
	jbe	.label_817
	mov	rbp, qword ptr [rsp + 8]
	mov	rdi, r12
	mov	rsi, rbx
	call	realloc
	mov	r13, rax
	test	r13, r13
	je	.label_817
	sub	rbp, r12
	mov	rax, r13
	add	rax, rbp
	mov	qword ptr [rsp + 8], rax
	lea	rax, [rbx - 1]
	sub	rax, rbp
	mov	qword ptr [rsp + 0x10], rax
	mov	rdi, r14
	lea	rsi, [rsp + 0x20]
	lea	rdx, [rsp + 0x18]
	lea	rcx, [rsp + 8]
	lea	r8, [rsp + 0x10]
	call	iconv
	cmp	rax, -1
	mov	r12, r13
	mov	rbp, rbx
	je	.label_811
	jmp	.label_821
.label_819:
	call	__errno_location
	mov	r15, rax
	nop	word ptr cs:[rax + rax]
.label_820:
	cmp	dword ptr [r15], 7
	jne	.label_814
	lea	rbp, [rbx + rbx]
	cmp	rbp, rbx
	jbe	.label_816
	mov	rbx, qword ptr [rsp + 8]
	mov	rdi, r13
	mov	rsi, rbp
	call	realloc
	mov	r12, rax
	test	r12, r12
	je	.label_816
	sub	rbx, r13
	mov	rax, r12
	add	rax, rbx
	mov	qword ptr [rsp + 8], rax
	lea	rax, [rbp - 1]
	sub	rax, rbx
	mov	qword ptr [rsp + 0x10], rax
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r14
	lea	rcx, [rsp + 8]
	lea	r8, [rsp + 0x10]
	call	iconv
	cmp	rax, -1
	mov	r13, r12
	mov	rbx, rbp
	je	.label_820
	jmp	.label_810
.label_817:
	mov	dword ptr [r15], 0xc
	jmp	.label_818
.label_816:
	mov	dword ptr [r15], 0xc
.label_814:
	mov	r12, r13
.label_818:
	mov	ebx, dword ptr [r15]
	mov	rdi, r12
	call	free
	mov	dword ptr [r15], ebx
.label_822:
	xor	r12d, r12d
.label_809:
	mov	rax, r12
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_813:
	cmp	eax, 0x16
	mov	rbx, rbp
	mov	r13, r12
	je	.label_821
	jmp	.label_818
	.section	.text
	.align	32
	#Procedure 0x40548f
	.globl sub_40548f
	.type sub_40548f, @function
sub_40548f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x405490
	.globl xmem_cd_iconv
	.type xmem_cd_iconv, @function
xmem_cd_iconv:

	push	rbx
	call	mem_cd_iconv
	mov	ebx, eax
	test	ebx, ebx
	jns	.label_824
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	je	.label_823
.label_824:
	mov	eax, ebx
	pop	rbx
	ret	
.label_823:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4054af
	.globl sub_4054af
	.type sub_4054af, @function
sub_4054af:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4054b0
	.globl mb_copy
	.type mb_copy, @function
mb_copy:

	push	r15
	push	r14
	push	rbx
	mov	rbx, rsi
	mov	r14, rdi
	mov	rsi, qword ptr [rbx]
	lea	rax, [rbx + 0x18]
	cmp	rsi, rax
	jne	.label_825
	lea	r15, [r14 + 0x18]
	mov	rdx, qword ptr [rbx + 8]
	mov	rdi, r15
	call	memcpy
	mov	rsi, r15
.label_825:
	mov	qword ptr [r14], rsi
	mov	rax, qword ptr [rbx + 8]
	mov	qword ptr [r14 + 8], rax
	mov	rax, qword ptr [rbx + 0x10]
	test	al, al
	mov	byte ptr [r14 + 0x10], al
	je	.label_826
	shr	rax, 0x20
	mov	dword ptr [r14 + 0x14], eax
.label_826:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x4054ff
	.globl sub_4054ff
	.type sub_4054ff, @function
sub_4054ff:

	nop	
	.section	.text
	.align	32
	#Procedure 0x405500

	.globl rpl_re_match
	.type rpl_re_match, @function
rpl_re_match:
	push	rax
	mov	rax, r8
	mov	r8d, 0
	mov	r9, rdx
	push	1
	push	rax
	call	re_search_stub
	add	rsp, 0x10
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x40551b
	.globl sub_40551b
	.type sub_40551b, @function
sub_40551b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405520

	.globl str_iconv
	.type str_iconv, @function
str_iconv:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r15, rdx
	mov	r14, rsi
	mov	rbx, rdi
	cmp	byte ptr [rbx], 0
	je	.label_827
	mov	rdi, r14
	mov	rsi, r15
	call	c_strcasecmp
	test	eax, eax
	je	.label_827
	mov	rdi, r15
	mov	rsi, r14
	call	iconv_open
	mov	r15, rax
	xor	r14d, r14d
	cmp	r15, -1
	je	.label_829
	mov	rdi, rbx
	mov	rsi, r15
	call	str_cd_iconv
	mov	r14, rax
	test	r14, r14
	je	.label_830
	mov	rdi, r15
	call	iconv_close
	test	eax, eax
	jns	.label_829
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	mov	rdi, r14
	call	free
	jmp	.label_831
.label_827:
	mov	rdi, rbx
	call	__strdup
	mov	r14, rax
	test	r14, r14
	jne	.label_829
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_828
.label_830:
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	mov	rdi, r15
	call	iconv_close
.label_831:
	mov	dword ptr [rbx], ebp
.label_828:
	xor	r14d, r14d
.label_829:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_836:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_837
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
	#Procedure 0x405608
	.globl sub_405608
	.type sub_405608, @function
sub_405608:

	nop	
	.section	.text
	.align	32
	#Procedure 0x40560a

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_836
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_840
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	mov	rcx, rdx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_846
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_841
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_833
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_847
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_848
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_842
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_849
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_844
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_850
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_851
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_852
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_845
	mov	ecx, OFFSET FLAT:label_834
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_838
	mov	esi, OFFSET FLAT:label_853
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_838
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_832
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_838:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_854
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_834
	mov	ecx, OFFSET FLAT:label_835
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_839
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_835
	mov	ecx, OFFSET FLAT:label_843
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
	.section	.text
	.align	32
	#Procedure 0x405850

	.globl build_wcs_upper_buffer
	.type build_wcs_upper_buffer, @function
build_wcs_upper_buffer:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x78
	mov	r13, rdi
	mov	r15, qword ptr [r13 + 0x30]
	mov	rdx, qword ptr [r13 + 0x40]
	mov	rax, qword ptr [r13 + 0x58]
	cmp	rdx, rax
	cmovg	rdx, rax
	cmp	byte ptr [r13 + 0x8a], 0
	jne	.label_888
	cmp	qword ptr [r13 + 0x78], 0
	jne	.label_888
	cmp	byte ptr [r13 + 0x8c], 0
	je	.label_904
.label_888:
	mov	r12, qword ptr [r13 + 0x38]
	jmp	.label_901
.label_904:
	cmp	rdx, r15
	jle	.label_910
	lea	rax, [r13 + 0x78]
	mov	qword ptr [rsp + 0x20], rax
	lea	rax, [r13 + 0x20]
	mov	qword ptr [rsp + 8], rax
	jmp	.label_874
.label_909:
	lea	rax, [rbp + 1]
	cmp	rax, 2
	jb	.label_916
	cmp	rbp, -2
	jne	.label_900
	mov	rax, qword ptr [r13 + 0x40]
	cmp	rax, qword ptr [r13 + 0x58]
	jl	.label_900
.label_916:
	mov	rax, qword ptr [r13 + 0x28]
	add	rax, r15
	mov	rcx, qword ptr [r13]
	mov	rdx, qword ptr [r13 + 8]
	movzx	eax, byte ptr [rcx + rax]
	mov	byte ptr [rdx + r15], al
	mov	rcx, qword ptr [r13 + 0x10]
	mov	dword ptr [rcx + r15*4], eax
	inc	r15
	cmp	rbp, -1
	jne	.label_903
	mov	rax, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
	jmp	.label_903
	.section	.text
	.align	32
	#Procedure 0x40590e
	.globl sub_40590e
	.type sub_40590e, @function
sub_40590e:

	nop	
.label_874:
	mov	r14, rdx
	mov	rbp, qword ptr [r13]
	mov	rbx, qword ptr [r13 + 0x28]
	lea	rax, [rbx + r15]
	movzx	r12d, byte ptr [rbp + rax]
	test	r12b, r12b
	js	.label_861
	mov	rdi, qword ptr [rsp + 8]
	call	mbsinit
	test	eax, eax
	je	.label_861
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	movzx	eax, byte ptr [rax + r12*4]
	mov	rcx, qword ptr [r13 + 8]
	mov	byte ptr [rcx + r15], al
	mov	rax, qword ptr [r13 + 8]
	mov	rcx, qword ptr [r13 + 0x10]
	movzx	eax, byte ptr [rax + r15]
	mov	dword ptr [rcx + r15*4], eax
	inc	r15
.label_903:
	mov	rax, r15
	jmp	.label_857
	.section	.text
	.align	32
	#Procedure 0x405969
	.globl sub_405969
	.type sub_405969, @function
sub_405969:

	nop	dword ptr [rax]
.label_861:
	mov	rdx, r14
	sub	rdx, r15
	mov	rcx, qword ptr [rsp + 8]
	mov	rax, qword ptr [rcx]
	mov	qword ptr [rsp + 0x10], rax
	add	rbp, rbx
	add	rbp, r15
	lea	rdi, [rsp + 4]
	mov	rsi, rbp
	call	rpl_mbrtowc
	mov	rbp, rax
	lea	rax, [rbp - 1]
	cmp	rax, -4
	ja	.label_909
	mov	edi, dword ptr [rsp + 4]
	call	towupper
	mov	r12d, eax
	cmp	r12d, dword ptr [rsp + 4]
	lea	rbx, [rsp + 0x30]
	jne	.label_915
	mov	rdi, qword ptr [r13 + 8]
	add	rdi, r15
	mov	rsi, qword ptr [r13]
	add	rsi, qword ptr [r13 + 0x28]
	add	rsi, r15
	jmp	.label_917
	.section	.text
	.align	32
	#Procedure 0x4059d3
	.globl sub_4059d3
	.type sub_4059d3, @function
sub_4059d3:

	nop	word ptr cs:[rax + rax]
.label_915:
	mov	rdi, rbx
	mov	esi, r12d
	lea	rdx, [rsp + 0x10]
	call	wcrtomb
	cmp	rbp, rax
	jne	.label_922
	mov	rdi, qword ptr [r13 + 8]
	add	rdi, r15
	mov	rsi, rbx
.label_917:
	mov	rdx, rbp
	call	memcpy
	mov	rcx, qword ptr [r13 + 0x10]
	mov	dword ptr [rcx + r15*4], r12d
	lea	rbx, [rbp + r15]
	lea	rax, [r15 + 1]
	cmp	rax, rbx
	jge	.label_857
	lea	rdi, [rcx + r15*4 + 4]
	lea	rdx, [rbp*4 - 4]
	mov	esi, 0xff
	call	memset
	mov	rax, rbx
.label_857:
	mov	rdx, r14
	cmp	rdx, rax
	mov	r15, rax
	jg	.label_874
	jmp	.label_912
.label_922:
	mov	r12, r15
	mov	rdx, r14
	mov	rcx, qword ptr [rsp + 8]
	mov	rsi, qword ptr [rsp + 0x20]
	jmp	.label_884
.label_900:
	mov	rax, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
.label_910:
	mov	rax, r15
.label_912:
	mov	qword ptr [r13 + 0x30], rax
	mov	qword ptr [r13 + 0x38], rax
	jmp	.label_893
.label_901:
	cmp	r15, rdx
	jge	.label_899
	lea	rcx, [r13 + 0x20]
	lea	rsi, [r13 + 0x78]
.label_884:
	mov	qword ptr [rsp + 0x18], rdx
	sub	rdx, r15
	mov	rax, qword ptr [rcx]
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rsi]
	test	rax, rax
	mov	qword ptr [rsp + 0x20], r12
	mov	qword ptr [rsp + 8], rcx
	jne	.label_905
	mov	rbp, qword ptr [r13]
	add	rbp, qword ptr [r13 + 0x28]
	add	rbp, r12
.label_863:
	lea	rdi, [rsp + 4]
	mov	rsi, rbp
	call	rpl_mbrtowc
	mov	r14, rax
	lea	r12, [r14 - 1]
	cmp	r12, -4
	ja	.label_918
	mov	edi, dword ptr [rsp + 4]
	call	towupper
	mov	ebx, eax
	cmp	ebx, dword ptr [rsp + 4]
	je	.label_920
	lea	rdi, [rsp + 0x30]
	lea	rdx, [rsp + 0x10]
	mov	esi, ebx
	call	wcrtomb
	mov	rcx, rax
	sub	rax, r14
	jne	.label_923
	mov	rdi, qword ptr [r13 + 8]
	add	rdi, r15
	lea	rsi, [rsp + 0x30]
	jmp	.label_856
.label_905:
	lea	rbp, [rsp + 0x30]
	movsxd	r8, dword ptr [r13 + 0x90]
	test	r8, r8
	jle	.label_863
	xor	esi, esi
.label_871:
	cmp	rsi, rdx
	jge	.label_863
	mov	rdi, qword ptr [r13]
	add	rdi, qword ptr [r13 + 0x28]
	add	rdi, r12
	movzx	edi, byte ptr [rsi + rdi]
	movzx	ebx, byte ptr [rax + rdi]
	mov	byte ptr [rsp + rsi + 0x30], bl
	inc	rsi
	cmp	rsi, r8
	jl	.label_871
	jmp	.label_863
.label_918:
	lea	rax, [r14 + 1]
	cmp	rax, 2
	jb	.label_887
	cmp	r14, -2
	jne	.label_886
	mov	rax, qword ptr [r13 + 0x40]
	cmp	rax, qword ptr [r13 + 0x58]
	jl	.label_886
.label_887:
	mov	rax, qword ptr [r13 + 0x28]
	mov	r12, qword ptr [rsp + 0x20]
	add	rax, r12
	mov	rdx, qword ptr [r13]
	mov	rcx, qword ptr [r13 + 0x78]
	mov	al, byte ptr [rdx + rax]
	movzx	edx, al
	test	rcx, rcx
	jne	.label_895
.label_890:
	movzx	eax, al
	mov	rcx, qword ptr [r13 + 8]
	mov	byte ptr [rcx + r15], al
	cmp	byte ptr [r13 + 0x8c], 0
	jne	.label_889
.label_894:
	inc	r12
	mov	rcx, qword ptr [r13 + 0x10]
	mov	dword ptr [rcx + r15*4], eax
	inc	r15
	cmp	r14, -1
	jne	.label_873
	mov	rax, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
	jmp	.label_873
.label_923:
	cmp	rcx, -1
	je	.label_920
	lea	rbp, [rcx + r15]
	mov	rdi, qword ptr [r13 + 0x40]
	cmp	rbp, rdi
	jbe	.label_862
.label_886:
	mov	rax, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
	mov	r12, qword ptr [rsp + 0x20]
.label_899:
	mov	qword ptr [r13 + 0x30], r15
	mov	qword ptr [r13 + 0x38], r12
.label_893:
	xor	eax, eax
.label_872:
	add	rsp, 0x78
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_920:
	mov	rdi, qword ptr [r13 + 8]
	add	rdi, r15
	mov	rsi, rbp
.label_856:
	mov	rdx, r14
	call	memcpy
	cmp	byte ptr [r13 + 0x8c], 0
	mov	r12, qword ptr [rsp + 0x20]
	jne	.label_867
.label_855:
	add	r12, r14
	mov	rax, qword ptr [r13 + 0x10]
	mov	dword ptr [rax + r15*4], ebx
	lea	rbp, [r14 + r15]
	inc	r15
	cmp	r15, rbp
	jge	.label_873
	lea	rdi, [rax + r15*4]
	lea	rdx, [r14*4 - 4]
	mov	esi, 0xff
	call	memset
	jmp	.label_891
.label_873:
	mov	rbp, r15
.label_891:
	mov	rdx, qword ptr [rsp + 0x18]
	mov	r15, rbp
	jmp	.label_901
.label_867:
	mov	rax, qword ptr [r13 + 0x18]
	xor	esi, esi
	cmp	r14, 4
	jb	.label_902
	xor	esi, esi
	mov	rcx, r14
	and	rcx, 0xfffffffffffffffc
	je	.label_902
	movq	xmm0, r12
	pshufd	xmm0, xmm0, 0x44
	lea	rdi, [rcx - 4]
	shr	rdi, 2
	lea	edx, [rdi + 1]
	and	edx, 1
	mov	esi, 1
	test	rdi, rdi
	je	.label_907
	lea	rsi, [rdx - 1]
	sub	rsi, rdi
	mov	edi, 1
	movq	xmm1, rdi
	pslldq	xmm1, 8
	movdqa	xmm8, xmmword ptr [rip + label_866]
	movdqa	xmm3, xmmword ptr [rip + label_865]
	movdqa	xmm4, xmmword ptr [rip + label_876]
	movdqa	xmm5, xmmword ptr [rip + label_875]
.label_881:
	movdqa	xmm6, xmm1
	paddq	xmm6, xmm8
	movdqa	xmm7, xmm1
	paddq	xmm7, xmm0
	movdqa	xmm2, xmm7
	paddq	xmm2, xmm3
	movq	rdi, xmm1
	add	rdi, r15
	movdqu	xmmword ptr [rax + rdi*8], xmm7
	movdqu	xmmword ptr [rax + rdi*8 + 0x10], xmm2
	paddq	xmm1, xmm4
	paddq	xmm7, xmm5
	movq	rdi, xmm6
	paddq	xmm6, xmm0
	add	rdi, r15
	movdqu	xmmword ptr [rax + rdi*8], xmm6
	movdqu	xmmword ptr [rax + rdi*8 + 0x10], xmm7
	add	rsi, 2
	jne	.label_881
	jmp	.label_882
.label_862:
	mov	qword ptr [rsp + 0x18], rax
	mov	rax, qword ptr [r13 + 0x18]
	test	rax, rax
	mov	qword ptr [rsp + 0x28], rcx
	jne	.label_883
	shl	rdi, 3
	call	malloc
	mov	rcx, qword ptr [rsp + 0x28]
	mov	qword ptr [r13 + 0x18], rax
	test	rax, rax
	je	.label_896
.label_883:
	cmp	byte ptr [r13 + 0x8c], 0
	jne	.label_897
	test	r15, r15
	je	.label_860
	xor	edx, edx
	cmp	r15, 4
	jb	.label_859
	xor	edx, edx
	mov	r9, r15
	and	r9, 0xfffffffffffffffc
	je	.label_859
	lea	rsi, [r9 - 4]
	mov	rdi, rsi
	shr	rdi, 2
	lea	edx, [rdi + 1]
	and	edx, 3
	mov	r8d, 1
	cmp	rsi, 0xc
	jae	.label_913
	movq	xmm0, r8
	pslldq	xmm0, 8
	jmp	.label_919
.label_907:
	movq	xmm1, rsi
	pslldq	xmm1, 8
.label_882:
	test	rdx, rdx
	je	.label_921
	paddq	xmm0, xmm1
	movq	rdx, xmm1
	add	rdx, r15
	movdqu	xmmword ptr [rax + rdx*8], xmm0
	paddq	xmm0, xmmword ptr [rip + label_865]
	movdqu	xmmword ptr [rax + rdx*8 + 0x10], xmm0
.label_921:
	cmp	r14, rcx
	mov	rsi, rcx
	je	.label_855
.label_902:
	mov	rcx, r14
	sub	rcx, rsi
	lea	rdx, [rsi + r12]
	add	rsi, r15
	lea	rax, [rax + rsi*8]
.label_914:
	mov	qword ptr [rax], rdx
	inc	rdx
	add	rax, 8
	dec	rcx
	jne	.label_914
	jmp	.label_855
.label_896:
	mov	eax, 0xc
	jmp	.label_872
.label_913:
	lea	rsi, [rdx - 1]
	sub	rsi, rdi
	mov	edi, 1
	movq	xmm0, rdi
	pslldq	xmm0, 8
	movdqa	xmm8, xmmword ptr [rip + label_865]
	movdqa	xmm9, xmmword ptr [rip + label_866]
	movdqa	xmm10, xmmword ptr [rip + label_875]
	movdqa	xmm11, xmmword ptr [rip + label_876]
	movdqa	xmm5, xmmword ptr [rip + label_877]
	movdqa	xmm6, xmmword ptr [rip + label_878]
	movdqa	xmm7, xmmword ptr [rip + label_879]
	movdqa	xmm1, xmmword ptr [rip + label_880]
.label_908:
	movdqa	xmm2, xmm0
	paddq	xmm2, xmm8
	movdqa	xmm3, xmm0
	paddq	xmm3, xmm9
	movq	rdi, xmm0
	movdqu	xmmword ptr [rax + rdi*8], xmm0
	movdqu	xmmword ptr [rax + rdi*8 + 0x10], xmm2
	movdqa	xmm2, xmm0
	paddq	xmm2, xmm10
	movdqa	xmm4, xmm0
	paddq	xmm4, xmm11
	movq	rdi, xmm3
	movdqu	xmmword ptr [rax + rdi*8], xmm3
	movdqu	xmmword ptr [rax + rdi*8 + 0x10], xmm2
	movdqa	xmm2, xmm0
	paddq	xmm2, xmm5
	movdqa	xmm3, xmm0
	paddq	xmm3, xmm6
	movq	rdi, xmm4
	movdqu	xmmword ptr [rax + rdi*8], xmm4
	movdqu	xmmword ptr [rax + rdi*8 + 0x10], xmm2
	movdqa	xmm2, xmm0
	paddq	xmm2, xmm7
	paddq	xmm0, xmm1
	movq	rdi, xmm3
	movdqu	xmmword ptr [rax + rdi*8], xmm3
	movdqu	xmmword ptr [rax + rdi*8 + 0x10], xmm2
	add	rsi, 4
	jne	.label_908
.label_919:
	test	rdx, rdx
	je	.label_864
	neg	rdx
	movdqa	xmm1, xmmword ptr [rip + label_865]
	movdqa	xmm2, xmmword ptr [rip + label_866]
.label_885:
	movdqa	xmm3, xmm0
	movq	rsi, xmm0
	movdqu	xmmword ptr [rax + rsi*8], xmm0
	paddq	xmm0, xmm1
	paddq	xmm3, xmm2
	movdqu	xmmword ptr [rax + rsi*8 + 0x10], xmm0
	inc	rdx
	movdqa	xmm0, xmm3
	jne	.label_885
.label_864:
	cmp	r15, r9
	mov	rdx, r9
	je	.label_860
.label_859:
	mov	qword ptr [rax + rdx*8], rdx
	inc	rdx
	cmp	r15, rdx
	jne	.label_859
.label_860:
	mov	byte ptr [r13 + 0x8c], 1
.label_897:
	mov	rdi, qword ptr [r13 + 8]
	add	rdi, r15
	lea	rsi, [rsp + 0x30]
	mov	rdx, rcx
	call	memcpy
	mov	rdi, qword ptr [rsp + 0x28]
	mov	rcx, qword ptr [r13 + 0x10]
	mov	dword ptr [rcx + r15*4], ebx
	mov	rdx, qword ptr [r13 + 0x18]
	mov	rbx, qword ptr [rsp + 0x20]
	mov	qword ptr [rdx + r15*8], rbx
	cmp	rdi, 2
	jb	.label_906
	lea	r10, [rdi - 1]
	mov	eax, 1
	cmp	r10, 4
	jb	.label_911
	mov	rsi, r10
	and	rsi, 0xfffffffffffffffc
	mov	r8, r10
	and	r8, 0xfffffffffffffffc
	mov	eax, 1
	je	.label_911
	mov	rax, rsi
	or	rax, 1
	movq	xmm0, r14
	pshufd	xmm6, xmm0, 0x44
	movq	xmm1, r12
	pshufd	xmm11, xmm1, 0x44
	mov	r9, rbx
	movq	xmm2, rbx
	pshufd	xmm12, xmm2, 0x44
	movdqa	xmm7, xmmword ptr [rip + label_868]
	movdqa	xmm8, xmmword ptr [rip + label_865]
	movdqa	xmm9, xmmword ptr [rip + label_866]
	movdqa	xmm10, xmmword ptr [rip + label_869]
	pxor	xmm6, xmm10
	pshufd	xmm13, xmmword ptr [rip + label_870],  0xe8
	mov	rdi, r8
.label_892:
	movdqa	xmm4, xmm7
	paddq	xmm4, xmm8
	movdqa	xmm3, xmm7
	paddq	xmm3, xmm9
	movdqa	xmm5, xmm7
	pxor	xmm5, xmm10
	movdqa	xmm0, xmm6
	pcmpgtd	xmm0, xmm5
	pshufd	xmm2, xmm0, 0xa0
	pcmpeqd	xmm5, xmm6
	pshufd	xmm1, xmm5, 0xf5
	pand	xmm1, xmm2
	pshufd	xmm5, xmm0, 0xf5
	por	xmm5, xmm1
	movdqa	xmm0, xmm4
	pxor	xmm0, xmm10
	movdqa	xmm1, xmm6
	pcmpgtd	xmm1, xmm0
	pshufd	xmm2, xmm1, 0xa0
	pcmpeqd	xmm0, xmm6
	pshufd	xmm0, xmm0, 0xf5
	pand	xmm0, xmm2
	pshufd	xmm1, xmm1, 0xf5
	por	xmm1, xmm0
	movq	rbx, xmm7
	pand	xmm7, xmm5
	pandn	xmm5, xmm11
	por	xmm5, xmm7
	pand	xmm4, xmm1
	pandn	xmm1, xmm11
	por	xmm1, xmm4
	paddq	xmm5, xmm12
	paddq	xmm1, xmm12
	add	rbx, r15
	movdqu	xmmword ptr [rdx + rbx*8], xmm5
	movdqu	xmmword ptr [rdx + rbx*8 + 0x10], xmm1
	movq	qword ptr [rcx + rbx*4], xmm13
	movq	qword ptr [rcx + rbx*4 + 8], xmm13
	add	rdi, -4
	movdqa	xmm7, xmm3
	jne	.label_892
	cmp	r10, r8
	mov	rbx, r9
	mov	rdi, qword ptr [rsp + 0x28]
	je	.label_906
.label_911:
	lea	rcx, [rcx + r15*4]
	lea	rdx, [rdx + r15*8]
.label_898:
	cmp	rax, r14
	mov	rsi, r12
	cmovb	rsi, rax
	add	rsi, rbx
	mov	qword ptr [rdx + rax*8], rsi
	mov	dword ptr [rcx + rax*4], 0xffffffff
	inc	rax
	cmp	rdi, rax
	jne	.label_898
.label_906:
	mov	rax, qword ptr [r13 + 0x58]
	mov	rcx, qword ptr [rsp + 0x18]
	add	rax, rcx
	mov	qword ptr [r13 + 0x58], rax
	cmp	qword ptr [r13 + 0x60], rbx
	mov	r12, rbx
	jle	.label_858
	add	qword ptr [r13 + 0x68], rcx
.label_858:
	mov	rdx, qword ptr [r13 + 0x40]
	cmp	rdx, rax
	cmovg	rdx, rax
	add	r12, r14
	mov	r15, rbp
	jmp	.label_901
.label_895:
	mov	al, byte ptr [rcx + rdx]
	jmp	.label_890
.label_889:
	mov	rcx, qword ptr [r13 + 0x18]
	mov	qword ptr [rcx + r15*8], r12
	jmp	.label_894
	.section	.text
	.align	32
	#Procedure 0x406174
	.globl sub_406174
	.type sub_406174, @function
sub_406174:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406180

	.globl copy_unescaped_string
	.type copy_unescaped_string, @function
copy_unescaped_string:
	push	r15
	push	r14
	push	rbx
	mov	rbx, rdi
	call	strlen
	lea	rdi, [rax + 1]
	call	xmalloc
	mov	r14, rax
	mov	cl, byte ptr [rbx]
	test	cl, cl
	mov	r15, r14
	je	.label_929
	mov	r15, r14
	jmp	.label_926
.label_3254:
	call	__ctype_b_loc
	mov	rdi, qword ptr [rax]
	movzx	edx, byte ptr [rbx + 2]
	test	byte ptr [rdi + rdx*2 + 1], 0x10
	jne	.label_936
	add	rbx, 2
	mov	word ptr [r15], 0x785c
.label_930:
	add	r15, 2
	jmp	.label_940
.label_937:
	add	rbx, 2
	xor	ecx, ecx
	jmp	.label_943
.label_936:
	movsx	ecx, dl
	mov	eax, ecx
	add	al, 0x9f
	cmp	al, 5
	ja	.label_934
	add	ecx, -0x57
	jmp	.label_948
.label_941:
	add	rbx, 3
	jmp	.label_943
.label_934:
	add	dl, 0xbf
	cmp	dl, 5
	ja	.label_950
	add	ecx, -0x37
	jmp	.label_948
.label_946:
	add	rbx, 4
.label_943:
	mov	rax, rbx
	mov	byte ptr [r15], cl
	jmp	.label_924
.label_950:
	add	ecx, -0x30
.label_948:
	movzx	esi, byte ptr [rbx + 3]
	test	byte ptr [rdi + rsi*2 + 1], 0x10
	jne	.label_927
	add	rbx, 3
	jmp	.label_945
.label_927:
	movsx	edx, sil
	shl	ecx, 4
	mov	eax, edx
	add	al, 0x9f
	cmp	al, 6
	jae	.label_933
	add	edx, -0x57
	jmp	.label_935
.label_933:
	add	sil, 0xbf
	cmp	sil, 6
	jae	.label_949
	add	edx, -0x37
	jmp	.label_935
.label_949:
	add	edx, -0x30
.label_935:
	add	edx, ecx
	movzx	esi, byte ptr [rbx + 4]
	test	byte ptr [rdi + rsi*2 + 1], 0x10
	jne	.label_939
	add	rbx, 4
	mov	rax, rbx
	mov	ecx, edx
	mov	byte ptr [r15], cl
	jmp	.label_924
.label_939:
	movsx	ecx, sil
	shl	edx, 4
	mov	eax, ecx
	add	al, 0x9f
	cmp	al, 6
	jae	.label_947
	add	ecx, -0x57
	jmp	.label_925
.label_947:
	add	sil, 0xbf
	cmp	sil, 6
	jae	.label_944
	add	ecx, -0x37
	jmp	.label_925
.label_944:
	add	ecx, -0x30
.label_925:
	add	ecx, edx
	add	rbx, 5
.label_945:
	mov	rax, rbx
	mov	byte ptr [r15], cl
	jmp	.label_924
	.section	.text
	.align	32
	#Procedure 0x40629a
	.globl sub_40629a
	.type sub_40629a, @function
sub_40629a:

	nop	word ptr [rax + rax]
.label_926:
	lea	rax, [rbx + 1]
	cmp	cl, 0x5c
	jne	.label_932
	mov	cl, byte ptr [rax]
	movsx	edx, cl
	lea	esi, [rdx - 0x30]
	cmp	esi, 0x48
	ja	.label_951
	jmp	qword ptr [(rsi * 8) + label_938]
.label_3244:
	movsx	ecx, byte ptr [rbx + 2]
	mov	eax, ecx
	and	al, 0xf8
	cmp	al, 0x30
	jne	.label_937
	add	ecx, -0x30
	movsx	eax, byte ptr [rbx + 3]
	mov	edx, eax
	and	dl, 0xf8
	cmp	dl, 0x30
	jne	.label_941
	lea	ecx, [rax + rcx*8 - 0x30]
	movsx	eax, byte ptr [rbx + 4]
	mov	edx, eax
	and	dl, 0xf8
	cmp	dl, 0x30
	jne	.label_946
	lea	ecx, [rax + rcx*8 - 0x30]
	add	rbx, 5
	jmp	.label_943
	.section	.text
	.align	32
	#Procedure 0x406305
	.globl sub_406305
	.type sub_406305, @function
sub_406305:

	nop	word ptr cs:[rax + rax]
.label_932:
	mov	byte ptr [r15], cl
.label_924:
	inc	r15
	jmp	.label_928
.label_951:
	test	edx, edx
	je	.label_928
.label_3245:
	mov	byte ptr [r15], 0x5c
	mov	al, byte ptr [rbx + 1]
	add	rbx, 2
	mov	byte ptr [r15 + 1], al
	jmp	.label_930
.label_3246:
	mov	byte ptr [r15], 7
	jmp	.label_931
.label_3249:
	mov	byte ptr [r15], 0xc
	jmp	.label_931
.label_3247:
	mov	byte ptr [r15], 8
	jmp	.label_931
.label_3248:
	test	cl, cl
	je	.label_928
	inc	rbx
	mov	rax, rbx
	nop	dword ptr [rax]
.label_942:
	cmp	byte ptr [rax + 1], 0
	lea	rax, [rax + 1]
	jne	.label_942
	jmp	.label_928
.label_3250:
	mov	byte ptr [r15], 0xa
	jmp	.label_931
.label_3251:
	mov	byte ptr [r15], 0xd
	jmp	.label_931
.label_3252:
	mov	byte ptr [r15], 9
	jmp	.label_931
.label_3253:
	mov	byte ptr [r15], 0xb
	nop	word ptr cs:[rax + rax]
.label_931:
	inc	r15
	add	rbx, 2
.label_940:
	mov	rax, rbx
.label_928:
	mov	cl, byte ptr [rax]
	test	cl, cl
	mov	rbx, rax
	jne	.label_926
.label_929:
	mov	byte ptr [r15], 0
	mov	rax, r14
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x4063a4
	.globl sub_4063a4
	.type sub_4063a4, @function
sub_4063a4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4063b0

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
	mov	esi, OFFSET FLAT:label_956
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stderr]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbx, qword ptr [rbp]
	test	rbx, rbx
	je	.label_953
	xor	r13d, r13d
	xor	r15d, r15d
	mov	qword ptr [rsp], rbp
	nop	dword ptr [rax + rax]
.label_955:
	test	r15, r15
	je	.label_952
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	je	.label_957
.label_952:
	mov	r13, qword ptr [rip + stderr]
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_954
	xor	eax, eax
	mov	rdi, r13
	call	__fprintf_chk
	mov	r13, r12
	jmp	.label_959
	.section	.text
	.align	32
	#Procedure 0x406442
	.globl sub_406442
	.type sub_406442, @function
sub_406442:

	nop	word ptr cs:[rax + rax]
.label_958:
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
	#Procedure 0x406468
	.globl sub_406468
	.type sub_406468, @function
sub_406468:

	nop	word ptr cs:[rax + rax]
.label_957:
	mov	rbp, qword ptr [rip + stderr]
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_960
	xor	eax, eax
	mov	rdi, rbp
	mov	rbp, qword ptr [rsp]
	call	__fprintf_chk
.label_959:
	mov	rbx, qword ptr [rbp + r15*8 + 8]
	inc	r15
	add	r12, r14
	test	rbx, rbx
	jne	.label_955
.label_953:
	mov	rdi, qword ptr [rip + stderr]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_958
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
	.section	.text
	.align	32
	#Procedure 0x4064e0

	.globl sift_states_backward
	.type sift_states_backward, @function
sift_states_backward:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x58
	mov	r14, rsi
	mov	r13, rdi
	mov	r15, qword ptr [r14 + 0x18]
	mov	rbx, qword ptr [r14 + 0x10]
	movaps	xmm0, xmmword ptr [rip + label_37]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [rsp + 0x30], rax
	test	rax, rax
	je	.label_964
	mov	qword ptr [rax], rbx
	lea	rcx, [rsp + 0x20]
	mov	rdi, r13
	mov	rsi, r14
	mov	rdx, r15
	call	update_cur_sifted_state
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_969
	lea	rax, [r14 + 0x20]
	mov	qword ptr [rsp + 0x38], rax
	mov	dword ptr [rsp + 0x14], 0
	nop	word ptr cs:[rax + rax]
.label_977:
	mov	rdx, r15
	test	rdx, rdx
	jle	.label_973
	mov	rdi, qword ptr [r14]
	mov	ecx, dword ptr [rsp + 0x14]
	inc	ecx
	cmp	qword ptr [rdi + rdx*8], 0
	mov	eax, 0
	cmovne	ecx, eax
	cmp	ecx, dword ptr [r13 + 0xe0]
	jg	.label_975
	mov	dword ptr [rsp + 0x14], ecx
	mov	qword ptr [rsp + 0x28], 0
	lea	r15, [rdx - 1]
	mov	rax, qword ptr [r13 + 0xb8]
	mov	qword ptr [rsp + 0x40], rdx
	mov	rax, qword ptr [rax + rdx*8 - 8]
	test	rax, rax
	je	.label_971
	cmp	qword ptr [rax + 0x28], 0
	jle	.label_971
	mov	rcx, qword ptr [r13 + 0x98]
	mov	qword ptr [rsp + 0x18], rcx
	xor	ebx, ebx
	mov	qword ptr [rsp + 0x50], rax
	nop	dword ptr [rax + rax]
.label_974:
	mov	rax, qword ptr [rax + 0x30]
	mov	r12, qword ptr [rax + rbx*8]
	mov	rax, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [rax]
	mov	rcx, r12
	mov	qword ptr [rsp + 8], rcx
	shl	r12, 4
	test	byte ptr [rax + r12 + 0xa], 0x10
	je	.label_972
	mov	rax, r14
	mov	r14, r15
	mov	r15, rax
	mov	rdx, r13
	mov	rax, qword ptr [rax + 0x18]
	mov	qword ptr [rsp + 0x48], rax
	mov	rbp, qword ptr [rdx + 0x98]
	mov	rdi, rbp
	mov	rsi, qword ptr [rsp + 8]
	mov	rcx, r14
	call	check_node_accept_bytes
	test	eax, eax
	jle	.label_968
	movsxd	rcx, eax
	mov	rsi, r14
	add	rcx, r14
	cmp	rcx, qword ptr [rsp + 0x48]
	jle	.label_970
	mov	r14, r15
	mov	r15, rsi
	jmp	.label_966
.label_968:
	mov	rcx, r15
	mov	r15, r14
	mov	r14, rcx
	jne	.label_966
	jmp	.label_972
.label_970:
	mov	r14, r15
	mov	rdx, qword ptr [r14]
	mov	rdx, qword ptr [rdx + rcx*8]
	test	rdx, rdx
	mov	r15, rsi
	je	.label_972
	mov	rsi, qword ptr [rdx + 0x10]
	test	rsi, rsi
	jle	.label_972
	mov	rcx, qword ptr [rbp + 0x18]
	mov	rdi, qword ptr [rsp + 8]
	mov	r8, qword ptr [rcx + rdi*8]
	dec	rsi
	mov	rdx, qword ptr [rdx + 0x18]
	mov	edi, 0
	je	.label_979
	xor	edi, edi
	nop	dword ptr [rax]
.label_978:
	lea	rbp, [rdi + rsi]
	shr	rbp, 1
	cmp	qword ptr [rdx + rbp*8], r8
	lea	rcx, [rbp + 1]
	cmovl	rdi, rcx
	cmovge	rsi, rbp
	cmp	rdi, rsi
	jb	.label_978
.label_979:
	test	eax, eax
	je	.label_972
	cmp	rdi, -1
	je	.label_972
	cmp	qword ptr [rdx + rdi*8], r8
	je	.label_966
.label_972:
	mov	rax, qword ptr [rsp + 0x18]
	add	r12, qword ptr [rax]
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r15
	call	check_node_accept
	test	al, al
	je	.label_962
	mov	rax, qword ptr [r14]
	mov	rcx, qword ptr [rsp + 0x40]
	mov	rdx, qword ptr [rax + rcx*8]
	test	rdx, rdx
	je	.label_962
	mov	rax, qword ptr [rdx + 0x10]
	test	rax, rax
	jle	.label_962
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rsi, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rcx + rsi*8]
	dec	rax
	mov	rdx, qword ptr [rdx + 0x18]
	mov	esi, 0
	je	.label_963
	xor	esi, esi
	nop	word ptr cs:[rax + rax]
.label_961:
	lea	rdi, [rsi + rax]
	shr	rdi, 1
	cmp	qword ptr [rdx + rdi*8], rcx
	lea	rbp, [rdi + 1]
	cmovl	rsi, rbp
	cmovge	rax, rdi
	cmp	rsi, rax
	jb	.label_961
.label_963:
	cmp	rsi, -1
	je	.label_962
	mov	eax, 1
	cmp	qword ptr [rdx + rsi*8], rcx
	jne	.label_962
	nop	dword ptr [rax]
.label_966:
	cmp	qword ptr [r14 + 0x28], 0
	je	.label_976
	movsxd	rcx, eax
	add	rcx, r15
	mov	rax, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [rax + 0x18]
	mov	r8, qword ptr [rsp + 8]
	mov	rdx, qword ptr [rax + r8*8]
	mov	rdi, r13
	mov	rsi, qword ptr [rsp + 0x38]
	mov	r9, r15
	call	check_dst_limits
	mov	ecx, 4
	test	al, al
	jne	.label_965
.label_976:
	lea	rdi, [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 8]
	call	re_node_set_insert
	movzx	ecx, al
	xor	ecx, 1
.label_965:
	or	cl, 4
	mov	ebp, 0xc
	and	cl, 7
	cmp	cl, 4
	jne	.label_969
.label_962:
	inc	rbx
	mov	rax, qword ptr [rsp + 0x50]
	cmp	rbx, qword ptr [rax + 0x28]
	jl	.label_974
.label_971:
	mov	rdi, r13
	mov	rsi, r14
	mov	rdx, r15
	lea	rcx, [rsp + 0x20]
	call	update_cur_sifted_state
	mov	ebp, eax
	test	ebp, ebp
	je	.label_977
	jmp	.label_969
.label_973:
	xor	ebp, ebp
	jmp	.label_969
.label_975:
	shl	rdx, 3
	xor	ebp, ebp
	xor	esi, esi
	call	memset
.label_969:
	mov	rdi, qword ptr [rsp + 0x30]
	call	free
.label_967:
	mov	eax, ebp
	add	rsp, 0x58
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_964:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	ebp, 0xc
	jmp	.label_967
	.section	.text
	.align	32
	#Procedure 0x406839
	.globl sub_406839
	.type sub_406839, @function
sub_406839:

	nop	dword ptr [rax]
.label_985:
	mov	edi, 0x3c8
	call	malloc
	xor	r12d, r12d
	test	rax, rax
	je	.label_980
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_981
	.section	.text
	.align	32
	#Procedure 0x406870

	.globl lower_subexp
	.type lower_subexp, @function
lower_subexp:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rcx
	mov	rbx, rsi
	mov	rbp, rdi
	mov	r12, qword ptr [r14 + 8]
	test	dl, 0x10
	je	.label_988
	test	r12, r12
	je	.label_988
	mov	rax, qword ptr [r14 + 0x28]
	cmp	rax, 0x3f
	jg	.label_984
	mov	rcx, qword ptr [rbx + 0xa0]
	bt	rcx, rax
	jae	.label_984
.label_988:
	mov	r13d, dword ptr [rbx + 0x80]
	cmp	r13d, 0xf
	mov	qword ptr [rsp], rbp
	je	.label_994
	mov	rax, qword ptr [rbx + 0x70]
.label_992:
	lea	ecx, [r13 + 1]
	mov	dword ptr [rbx + 0x80], ecx
	movsxd	rcx, r13d
	shl	rcx, 6
	lea	r13, [rax + rcx + 8]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	dword ptr [rax + rcx + 0x38], 8
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	r15d, dword ptr [rbx + 0x80]
	cmp	r15d, 0xf
	je	.label_987
	mov	rax, qword ptr [rbx + 0x70]
.label_993:
	lea	ecx, [r15 + 1]
	mov	dword ptr [rbx + 0x80], ecx
	movsxd	rcx, r15d
	shl	rcx, 6
	lea	r15, [rax + rcx + 8]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	dword ptr [rax + rcx + 0x38], 9
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
.label_990:
	test	r12, r12
	mov	rbp, r15
	je	.label_986
	mov	ebp, dword ptr [rbx + 0x80]
	cmp	ebp, 0xf
	je	.label_991
	mov	rax, qword ptr [rbx + 0x70]
.label_989:
	lea	ecx, [rbp + 1]
	mov	dword ptr [rbx + 0x80], ecx
	movsxd	rcx, ebp
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], r12
	mov	qword ptr [rax + rcx + 0x18], r15
	mov	dword ptr [rax + rcx + 0x38], 0x10
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [r12], rbp
	test	r15, r15
	je	.label_986
	mov	qword ptr [r15], rbp
.label_986:
	mov	r12d, dword ptr [rbx + 0x80]
	cmp	r12d, 0xf
	je	.label_985
	mov	rax, qword ptr [rbx + 0x70]
.label_981:
	lea	ecx, [r12 + 1]
	mov	dword ptr [rbx + 0x80], ecx
	movsxd	rcx, r12d
	shl	rcx, 6
	lea	r12, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], r13
	mov	qword ptr [rax + rcx + 0x18], rbp
	mov	dword ptr [rax + rcx + 0x38], 0x10
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	test	r13, r13
	je	.label_983
	mov	qword ptr [r13], r12
.label_983:
	test	rbp, rbp
	je	.label_980
	mov	qword ptr [rbp], r12
.label_980:
	test	r15, r15
	je	.label_982
	test	r13, r13
	je	.label_982
	test	rbp, rbp
	je	.label_982
	test	r12, r12
	je	.label_982
	mov	rax, qword ptr [r14 + 0x28]
	mov	qword ptr [r15 + 0x28], rax
	mov	qword ptr [r13 + 0x28], rax
	mov	eax, 0x80000
	and	eax, dword ptr [r14 + 0x30]
	mov	ecx, 0xfff7ffff
	mov	edx, dword ptr [r15 + 0x30]
	and	edx, ecx
	or	edx, eax
	mov	dword ptr [r15 + 0x30], edx
	and	ecx, dword ptr [r13 + 0x30]
	or	ecx, eax
	mov	dword ptr [r13 + 0x30], ecx
.label_984:
	mov	rax, r12
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_994:
	mov	edi, 0x3c8
	call	malloc
	xor	r13d, r13d
	test	rax, rax
	je	.label_987
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_992
.label_982:
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 0xc
	xor	r12d, r12d
	jmp	.label_984
.label_987:
	mov	edi, 0x3c8
	call	malloc
	xor	r15d, r15d
	test	rax, rax
	je	.label_990
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_993
.label_991:
	mov	edi, 0x3c8
	call	malloc
	xor	ebp, ebp
	test	rax, rax
	je	.label_986
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_989
	.section	.text
	.align	32
	#Procedure 0x406b2e
	.globl sub_406b2e
	.type sub_406b2e, @function
sub_406b2e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x406b30
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
	je	.label_995
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
.label_995:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x406b91
	.globl sub_406b91
	.type sub_406b91, @function
sub_406b91:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406ba0

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
	je	.label_1008
	mov	edx, OFFSET FLAT:label_999
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_1005
.label_1008:
	mov	edx, OFFSET FLAT:label_1006
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_1005:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1010
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
	mov	esi, OFFSET FLAT:label_1007
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_1011
	jmp	qword ptr [(r12 * 8) + label_1012]
.label_3089:
	add	rsp, 8
	jmp	.label_998
.label_1011:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1002
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
	jmp	.label_998
.label_3090:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_997
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
.label_3091:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1003
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
.label_3092:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1000
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
.label_3093:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1014
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
	jmp	.label_998
.label_3094:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1013
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
	jmp	.label_998
.label_3095:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_996
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
	jmp	.label_998
.label_3096:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1001
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
	jmp	.label_998
.label_3098:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1004
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
	jmp	.label_998
.label_3097:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1009
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
.label_998:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x406ef8
	.globl sub_406ef8
	.type sub_406ef8, @function
sub_406ef8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406f00

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
	jns	.label_1018
	cmp	rax, -1
	mov	qword ptr [rsp + 0x10], rbx
	mov	rbx, r14
	je	.label_1019
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1015
	jmp	.label_1016
.label_1019:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1017
.label_1016:
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
.label_1018:
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
	#Procedure 0x406fc3
	.globl sub_406fc3
	.type sub_406fc3, @function
sub_406fc3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406fd0

	.globl link_nfa_nodes
	.type link_nfa_nodes, @function
link_nfa_nodes:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	rcx, qword ptr [rsi + 0x38]
	mov	edx, dword ptr [rsi + 0x30]
	mov	eax, edx
	add	al, 0xfe
	movzx	ebx, al
	cmp	bl, 0xe
	ja	.label_1024
	xor	eax, eax
	jmp	qword ptr [(rbx * 8) + label_1031]
.label_3181:
	mov	r14, qword ptr [rdi + 0x28]
	lea	rbx, [rcx + rcx*2]
	mov	rax, qword ptr [rsi + 0x20]
	mov	r15, qword ptr [rax + 0x38]
	movaps	xmm0, xmmword ptr [rip + label_37]
	movups	xmmword ptr [r14 + rbx*8], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [r14 + rbx*8 + 0x10], rax
	test	rax, rax
	je	.label_1028
	mov	qword ptr [rax], r15
	jmp	.label_1022
.label_3182:
	or	byte ptr [rdi + 0xb0], 1
	mov	rax, qword ptr [rsi + 8]
	mov	rdx, qword ptr [rsi + 0x10]
	add	rsi, 0x20
	test	rax, rax
	lea	rax, [rax + 0x18]
	cmove	rax, rsi
	mov	rax, qword ptr [rax]
	mov	r14, qword ptr [rax + 0x38]
	test	rdx, rdx
	lea	rax, [rdx + 0x18]
	cmove	rax, rsi
	test	r14, r14
	js	.label_1032
	mov	rax, qword ptr [rax]
	mov	r15, qword ptr [rax + 0x38]
	test	r15, r15
	js	.label_1030
	mov	r12, qword ptr [rdi + 0x28]
	lea	rbx, [rcx + rcx*2]
	mov	qword ptr [r12 + rbx*8], 2
	mov	edi, 0x10
	call	malloc
	mov	rcx, rax
	mov	qword ptr [r12 + rbx*8 + 0x10], rcx
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_1026
	lea	rax, [r12 + rbx*8 + 8]
	cmp	r14, r15
	jne	.label_1023
	mov	qword ptr [rax], 1
	mov	qword ptr [rcx], r14
	jmp	.label_1022
.label_3179:
	cmp	qword ptr [rsi + 0x20], 0
	mov	eax, 0
	je	.label_1026
	mov	edi, OFFSET FLAT:label_2348
	mov	esi, OFFSET FLAT:label_607
	mov	edx, 0x59f
	mov	ecx, OFFSET FLAT:label_1021
	call	__assert_fail
.label_3180:
	mov	rax, qword ptr [rsi + 0x20]
	mov	rbx, qword ptr [rax + 0x38]
	mov	rax, qword ptr [rdi + 0x18]
	mov	qword ptr [rax + rcx*8], rbx
	cmp	byte ptr [rsi + 0x30], 4
	jne	.label_1022
	mov	r14, qword ptr [rdi + 0x28]
	lea	r15, [rcx + rcx*2]
	movaps	xmm0, xmmword ptr [rip + label_37]
	movups	xmmword ptr [r14 + r15*8], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [r14 + r15*8 + 0x10], rax
	test	rax, rax
	je	.label_2339
	mov	qword ptr [rax], rbx
	jmp	.label_1022
.label_1024:
	test	dl, 8
	jne	.label_1033
	mov	rax, qword ptr [rsi + 0x20]
	mov	rax, qword ptr [rax + 0x38]
	mov	rdx, qword ptr [rdi + 0x18]
	mov	qword ptr [rdx + rcx*8], rax
	jmp	.label_1022
.label_1023:
	mov	qword ptr [rax], 2
	jge	.label_1025
	mov	qword ptr [rcx], r14
	mov	qword ptr [rcx + 8], r15
	jmp	.label_1022
.label_1025:
	mov	qword ptr [rcx], r15
	mov	qword ptr [rcx + 8], r14
.label_1022:
	xor	eax, eax
.label_1026:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_1028:
	lea	rax, [r14 + rbx*8]
.label_2337:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	mov	eax, 0xc
	jmp	.label_1026
.label_2339:
	lea	rax, [r14 + r15*8]
	jmp	.label_2337
.label_1032:
	mov	edi, OFFSET FLAT:label_1027
	mov	esi, OFFSET FLAT:label_607
	mov	edx, 0x5af
	mov	ecx, OFFSET FLAT:label_1021
	call	__assert_fail
.label_1030:
	mov	edi, OFFSET FLAT:label_1029
	mov	esi, OFFSET FLAT:label_607
	mov	edx, 0x5b0
	mov	ecx, OFFSET FLAT:label_1021
	call	__assert_fail
.label_1033:
	mov	edi, OFFSET FLAT:label_1020
	mov	esi, OFFSET FLAT:label_607
	mov	edx, 0x5c2
	mov	ecx, OFFSET FLAT:label_1021
	call	__assert_fail
	.section	.text
	.align	32
	#Procedure 0x4071da
	.globl sub_4071da
	.type sub_4071da, @function
sub_4071da:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4071e0
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
	#Procedure 0x407216
	.globl sub_407216
	.type sub_407216, @function
sub_407216:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407220
	.globl proper_name
	.type proper_name, @function
proper_name:

	push	r15
	push	r14
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	mov	edx, 5
	mov	rsi, rbx
	call	dcgettext
	mov	r14, rax
	cmp	r14, rbx
	je	.label_1036
	mov	rdi, r14
	mov	rsi, rbx
	call	mbsstr_trimmed_wordbounded
	test	al, al
	je	.label_1035
	mov	rbx, r14
	jmp	.label_1036
.label_1035:
	mov	rdi, r14
	call	strlen
	mov	r15, rax
	mov	rdi, rbx
	call	strlen
	lea	rdi, [r15 + rax + 4]
	call	xmalloc
	mov	r15, rax
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_1034
	xor	eax, eax
	mov	rdi, r15
	mov	r8, r14
	mov	r9, rbx
	call	__sprintf_chk
	mov	rbx, r15
.label_1036:
	mov	rax, rbx
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x4072a0

	.globl re_acquire_state
	.type re_acquire_state, @function
re_acquire_state:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r12, rdx
	mov	r14, rdi
	mov	r8, qword ptr [r12 + 8]
	test	r8, r8
	je	.label_1053
	mov	r15, r8
	jle	.label_1052
	mov	rcx, qword ptr [r12 + 0x10]
	xor	eax, eax
	cmp	r8, 4
	mov	r15, r8
	jb	.label_1057
	xor	eax, eax
	mov	rdx, r8
	and	rdx, 0xfffffffffffffffc
	mov	r15, r8
	je	.label_1057
	movq	xmm0, r8
	lea	rbp, [rdx - 4]
	mov	rbx, rbp
	shr	rbx, 2
	lea	eax, [rbx + 1]
	and	eax, 3
	xor	edi, edi
	cmp	rbp, 0xc
	jae	.label_1047
	pxor	xmm1, xmm1
	jmp	.label_1038
.label_1047:
	lea	rbp, [rax - 1]
	sub	rbp, rbx
	pxor	xmm1, xmm1
	xor	edi, edi
	nop	word ptr cs:[rax + rax]
.label_1045:
	movdqu	xmm2, xmmword ptr [rcx + rdi*8]
	movdqu	xmm3, xmmword ptr [rcx + rdi*8 + 0x10]
	paddq	xmm2, xmm0
	paddq	xmm3, xmm1
	movdqu	xmm0, xmmword ptr [rcx + rdi*8 + 0x20]
	movdqu	xmm1, xmmword ptr [rcx + rdi*8 + 0x30]
	movdqu	xmm4, xmmword ptr [rcx + rdi*8 + 0x40]
	movdqu	xmm5, xmmword ptr [rcx + rdi*8 + 0x50]
	paddq	xmm4, xmm0
	paddq	xmm4, xmm2
	paddq	xmm5, xmm1
	paddq	xmm5, xmm3
	movdqu	xmm0, xmmword ptr [rcx + rdi*8 + 0x60]
	movdqu	xmm1, xmmword ptr [rcx + rdi*8 + 0x70]
	paddq	xmm0, xmm4
	paddq	xmm1, xmm5
	add	rdi, 0x10
	add	rbp, 4
	jne	.label_1045
.label_1038:
	test	rax, rax
	je	.label_1050
	lea	rdi, [rcx + rdi*8 + 0x10]
	neg	rax
	nop	word ptr cs:[rax + rax]
.label_1063:
	movdqu	xmm2, xmmword ptr [rdi - 0x10]
	movdqu	xmm3, xmmword ptr [rdi]
	paddq	xmm0, xmm2
	paddq	xmm1, xmm3
	add	rdi, 0x20
	inc	rax
	jne	.label_1063
.label_1050:
	paddq	xmm0, xmm1
	pshufd	xmm1, xmm0, 0x4e
	paddq	xmm1, xmm0
	movq	r15, xmm1
	cmp	r8, rdx
	mov	rax, rdx
	je	.label_1052
.label_1057:
	mov	rdx, r8
	sub	rdx, rax
	lea	rcx, [rcx + rax*8]
	nop	
.label_1061:
	add	r15, qword ptr [rcx]
	add	rcx, 8
	dec	rdx
	jne	.label_1061
.label_1052:
	mov	rdx, qword ptr [rsi + 0x40]
	mov	rcx, qword ptr [rsi + 0x88]
	and	rcx, r15
	lea	rax, [rcx + rcx*2]
	mov	rcx, qword ptr [rdx + rax*8]
	test	rcx, rcx
	jle	.label_1040
	test	r12, r12
	je	.label_1054
	mov	rdx, qword ptr [rdx + rax*8 + 0x10]
	xor	ebx, ebx
	nop	word ptr [rax + rax]
.label_1065:
	mov	r13, qword ptr [rdx + rbx*8]
	cmp	r15, qword ptr [r13]
	jne	.label_1044
	cmp	qword ptr [r13 + 0x10], r8
	jne	.label_1044
	mov	rdi, r8
	nop	word ptr cs:[rax + rax]
.label_1056:
	test	rdi, rdi
	jle	.label_1039
	mov	rbp, qword ptr [r13 + 0x18]
	mov	rbp, qword ptr [rbp + rdi*8 - 8]
	mov	rax, qword ptr [r12 + 0x10]
	cmp	rbp, qword ptr [rax + rdi*8 - 8]
	lea	rdi, [rdi - 1]
	je	.label_1056
	nop	word ptr cs:[rax + rax]
.label_1044:
	inc	rbx
	cmp	rbx, rcx
	jl	.label_1065
	jmp	.label_1040
.label_1054:
	lea	rdx, [rcx - 1]
	mov	eax, ecx
	and	eax, 7
	cmp	rdx, 7
	jb	.label_1067
	mov	rdx, rax
	sub	rdx, rcx
	nop	
.label_1062:
	add	rdx, 8
	jne	.label_1062
.label_1067:
	test	rax, rax
	je	.label_1040
	neg	rax
	nop	
.label_1049:
	inc	rax
	jne	.label_1049
.label_1040:
	mov	qword ptr [rsp + 8], rsi
	mov	edi, 0x70
	mov	esi, 1
	call	rpl_calloc
	mov	r13, rax
	test	r13, r13
	je	.label_1051
	mov	rbx, r13
	add	rbx, 8
	mov	rdi, qword ptr [r12 + 8]
	mov	qword ptr [r13 + 0x10], rdi
	mov	rbp, qword ptr [r12 + 8]
	test	rbp, rbp
	mov	qword ptr [rsp + 0x10], r14
	jle	.label_1055
	mov	qword ptr [r13 + 8], rdi
	shl	rdi, 3
	call	malloc
	mov	qword ptr [r13 + 0x18], rax
	test	rax, rax
	je	.label_1066
	lea	r14, [r12 + 0x10]
	mov	rsi, qword ptr [r12 + 0x10]
	shl	rbp, 3
	mov	rdi, rax
	mov	rdx, rbp
	call	memcpy
	mov	qword ptr [r13 + 0x50], rbx
	mov	rdi, qword ptr [rsp + 8]
	jmp	.label_1041
.label_1055:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rbx], xmm0
	mov	qword ptr [rbx + 0x10], 0
	cmp	qword ptr [r12 + 8], 0
	mov	qword ptr [r13 + 0x50], rbx
	mov	rdi, qword ptr [rsp + 8]
	jle	.label_1046
	lea	r14, [r12 + 0x10]
.label_1041:
	xor	eax, eax
	nop	
.label_1037:
	mov	r8, qword ptr [rdi]
	mov	rdx, qword ptr [r14]
	mov	rsi, qword ptr [rdx + rax*8]
	shl	rsi, 4
	mov	ecx, dword ptr [r8 + rsi + 8]
	mov	edx, ecx
	and	edx, 0x3ffff
	cmp	edx, 1
	je	.label_1048
	mov	ebp, ecx
	shr	ebp, 0x14
	movzx	ebx, byte ptr [r13 + 0x68]
	mov	edx, ebx
	shr	dl, 5
	movzx	edx, dl
	or	edx, ebp
	shl	dl, 5
	and	dl, 0x20
	and	bl, 0xdf
	or	bl, dl
	mov	byte ptr [r13 + 0x68], bl
	cmp	cl, 0xc
	je	.label_1059
	cmp	cl, 4
	je	.label_1042
	cmp	cl, 2
	jne	.label_1043
	or	bl, 0x10
	jmp	.label_1058
.label_1042:
	or	bl, 0x40
	jmp	.label_1058
.label_1043:
	lea	rcx, [r8 + rsi + 8]
	test	dword ptr [rcx], 0x3ff00
	je	.label_1048
.label_1059:
	or	bl, 0x80
.label_1058:
	mov	byte ptr [r13 + 0x68], bl
.label_1048:
	inc	rax
	cmp	rax, qword ptr [r12 + 8]
	jl	.label_1037
.label_1046:
	mov	rsi, r13
	mov	rdx, r15
	call	register_state
	test	eax, eax
	jne	.label_1060
.label_1039:
	mov	rax, r13
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1053:
	mov	dword ptr [r14], 0
	jmp	.label_1064
.label_1060:
	mov	rdi, r13
	call	free_state
	mov	r14, qword ptr [rsp + 0x10]
	jmp	.label_1051
.label_1066:
	mov	rdi, r13
	call	free
.label_1051:
	mov	dword ptr [r14], 0xc
.label_1064:
	xor	r13d, r13d
	jmp	.label_1039
	.section	.text
	.align	32
	#Procedure 0x407617
	.globl sub_407617
	.type sub_407617, @function
sub_407617:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407620

	.globl fread_file
	.type fread_file, @function
fread_file:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	rbx, rsi
	mov	r15, rdi
	call	fileno
	lea	rdx, [rsp + 8]
	mov	edi, 1
	mov	esi, eax
	call	__fxstat
	mov	ebp, 0x2000
	test	eax, eax
	js	.label_1068
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x20]
	mov	ebp, 0x2000
	cmp	eax, 0x8000
	jne	.label_1068
	mov	rdi, r15
	call	ftello
	mov	ebp, 0x2000
	test	rax, rax
	js	.label_1068
	mov	rcx, qword ptr [rsp + 0x38]
	mov	ebp, 0x2000
	sub	rcx, rax
	jle	.label_1068
	cmp	rcx, -1
	je	.label_1070
	inc	rcx
	mov	rbp, rcx
.label_1068:
	mov	rdi, rbp
	call	malloc
	xor	r12d, r12d
	test	rax, rax
	je	.label_1071
	mov	qword ptr [rsp], rbx
	xor	r14d, r14d
	mov	r13, -1
	nop	
.label_1069:
	mov	r12, rax
	mov	rbx, rbp
	sub	rbx, r14
	lea	rdi, [r12 + r14]
	mov	esi, 1
	mov	rdx, rbx
	mov	rcx, r15
	call	fread
	add	r14, rax
	cmp	rax, rbx
	jne	.label_1074
	cmp	rbp, -1
	je	.label_1075
	mov	rbx, rbp
	shr	rbx, 1
	mov	rax, rbx
	not	rax
	add	rbx, rbp
	cmp	rbp, rax
	cmovae	rbx, r13
	mov	rdi, r12
	mov	rsi, rbx
	call	realloc
	test	rax, rax
	mov	rbp, rbx
	jne	.label_1069
	call	__errno_location
	mov	r13, rax
	mov	ebx, dword ptr [r13]
	jmp	.label_1072
.label_1074:
	call	__errno_location
	mov	r13, rax
	mov	ebx, dword ptr [r13]
	mov	rdi, r15
	call	ferror
	test	eax, eax
	jne	.label_1072
	dec	rbp
	cmp	r14, rbp
	jae	.label_1076
	lea	rsi, [r14 + 1]
	mov	rdi, r12
	call	realloc
	test	rax, rax
	cmovne	r12, rax
.label_1076:
	mov	rax, qword ptr [rsp]
	mov	byte ptr [r12 + r14], 0
	mov	qword ptr [rax], r14
	jmp	.label_1071
.label_1075:
	mov	ebx, 0xc
	call	__errno_location
	mov	r13, rax
.label_1072:
	mov	rdi, r12
	call	free
	mov	dword ptr [r13], ebx
.label_1073:
	xor	r12d, r12d
.label_1071:
	mov	rax, r12
	add	rsp, 0x98
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1070:
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_1073
	.section	.text
	.align	32
	#Procedure 0x4077a1
	.globl sub_4077a1
	.type sub_4077a1, @function
sub_4077a1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4077b0
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x4077ba
	.globl sub_4077ba
	.type sub_4077ba, @function
sub_4077ba:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4077c0

	.globl check_arrival
	.type check_arrival, @function
check_arrival:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	rbx, rdx
	mov	rbp, rsi
	mov	rax, qword ptr [rdi + 0x98]
	mov	dword ptr [rsp + 4], 0
	mov	qword ptr [rsp + 0x58], rax
	mov	rax, qword ptr [rax]
	shl	rdx, 4
	mov	rax, qword ptr [rax + rdx]
	mov	qword ptr [rsp + 0x40], rax
	mov	r12, qword ptr [rbp + 8]
	mov	qword ptr [rsp + 0x28], rdi
	movsxd	rax, dword ptr [rdi + 0xe0]
	lea	rdi, [rax + r9]
	cmp	r12, rdi
	mov	qword ptr [rsp + 0x50], r9
	mov	qword ptr [rsp + 0x90], r8
	mov	qword ptr [rsp + 0x48], rbx
	jle	.label_1104
	mov	r14, qword ptr [rbp + 0x10]
.label_1100:
	mov	r13, qword ptr [rbp]
	test	r13, r13
	cmove	r13, rcx
	mov	rdi, qword ptr [rsp + 0x28]
	mov	r15, qword ptr [rdi + 0x48]
	mov	rax, qword ptr [rdi + 0xb8]
	mov	qword ptr [rsp + 0x78], rax
	mov	qword ptr [rdi + 0xb8], r14
	mov	qword ptr [rdi + 0x48], r13
	lea	rsi, [r13 - 1]
	mov	edx, dword ptr [rdi + 0xa0]
	mov	rbx, rcx
	call	re_string_context_at
	cmp	r13, rbx
	mov	r12, qword ptr [rsp + 0x58]
	mov	qword ptr [rsp + 0x88], rbp
	mov	qword ptr [rsp + 0x80], r15
	mov	qword ptr [rsp + 8], r13
	jne	.label_1093
	mov	dword ptr [rsp + 0x38], eax
	movaps	xmm0, xmmword ptr [rip + label_37]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [rsp + 0x20], rax
	test	rax, rax
	je	.label_1098
	mov	rcx, qword ptr [rsp + 0x48]
	mov	qword ptr [rax], rcx
	mov	dword ptr [rsp + 4], 0
	lea	rsi, [rsp + 0x10]
	mov	rdi, r12
	mov	r13, qword ptr [rsp + 0x40]
	mov	rdx, r13
	mov	ebx, dword ptr [rsp + 0xd0]
	mov	ecx, ebx
	call	check_arrival_expand_ecl
	mov	ebp, eax
	mov	dword ptr [rsp + 4], ebp
	test	ebp, ebp
	jne	.label_1088
	mov	rbp, qword ptr [rsp + 0x18]
	mov	r14, qword ptr [rsp + 0x28]
	jmp	.label_1109
.label_1093:
	mov	rdx, qword ptr [r14 + r13*8]
	test	rdx, rdx
	je	.label_1110
	mov	dword ptr [rsp + 0x38], eax
	mov	al, byte ptr [rdx + 0x68]
	test	al, 0x40
	jne	.label_1078
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	qword ptr [rsp + 0x20], 0
	xor	ebp, ebp
	mov	r14, qword ptr [rsp + 0x28]
	mov	r13, qword ptr [rsp + 0x40]
	jmp	.label_1080
.label_1110:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	qword ptr [rsp + 0x20], 0
	xor	edx, edx
	mov	r14, qword ptr [rsp + 0x28]
	mov	r13, qword ptr [rsp + 0x40]
	mov	ebx, dword ptr [rsp + 0xd0]
	jmp	.label_1083
.label_1078:
	mov	rbp, qword ptr [rdx + 0x10]
	mov	qword ptr [rsp + 0x18], rbp
	test	rbp, rbp
	mov	r13, qword ptr [rsp + 0x40]
	jle	.label_1091
	mov	qword ptr [rsp + 0x48], rdx
	mov	qword ptr [rsp + 0x10], rbp
	lea	r15, [rbp*8]
	mov	rdi, r15
	call	malloc
	mov	qword ptr [rsp + 0x20], rax
	test	rax, rax
	mov	r14, qword ptr [rsp + 0x28]
	mov	ebx, dword ptr [rsp + 0xd0]
	je	.label_1098
	mov	r12, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [r12 + 0x18]
	mov	rdi, rax
	mov	rdx, r15
	call	memcpy
	mov	rdx, r12
	mov	al, byte ptr [rdx + 0x68]
	mov	dword ptr [rsp + 4], 0
	mov	r12, qword ptr [rsp + 0x58]
	jmp	.label_1103
.label_1091:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	qword ptr [rsp + 0x20], 0
	xor	ebp, ebp
	mov	dword ptr [rsp + 4], 0
	mov	r14, qword ptr [rsp + 0x28]
.label_1080:
	mov	ebx, dword ptr [rsp + 0xd0]
.label_1103:
	test	al, 0x40
	je	.label_1083
.label_1109:
	test	rbp, rbp
	je	.label_1111
	lea	rsi, [rsp + 0x10]
	mov	rdi, r14
	mov	rdx, qword ptr [rsp + 8]
	mov	rcx, r13
	mov	r8d, ebx
	call	expand_bkref_cache
	mov	ebp, eax
	mov	dword ptr [rsp + 4], ebp
	test	ebp, ebp
	jne	.label_1088
.label_1111:
	lea	rdi, [rsp + 4]
	lea	rdx, [rsp + 0x10]
	mov	rsi, r12
	mov	ecx, dword ptr [rsp + 0x38]
	call	re_acquire_state_context
	mov	rdx, rax
	test	rdx, rdx
	jne	.label_1090
	mov	eax, dword ptr [rsp + 4]
	test	eax, eax
	jne	.label_1086
.label_1090:
	mov	rax, qword ptr [r14 + 0xb8]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rax + rcx*8], rdx
.label_1083:
	mov	rax, qword ptr [rsp + 8]
	cmp	rax, qword ptr [rsp + 0x50]
	jge	.label_1092
	xor	esi, esi
	nop	
.label_1113:
	movsxd	rax, dword ptr [r14 + 0xe0]
	cmp	rsi, rax
	jg	.label_1094
	mov	qword ptr [rsp + 0x38], rsi
	mov	qword ptr [rsp + 0x18], 0
	mov	rax, qword ptr [r14 + 0xb8]
	mov	rcx, qword ptr [rsp + 8]
	mov	rsi, qword ptr [rax + rcx*8 + 8]
	test	rsi, rsi
	je	.label_1097
	add	rsi, 8
	lea	rdi, [rsp + 0x10]
	mov	rbp, rdx
	call	re_node_set_merge
	mov	rdx, rbp
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	jne	.label_1086
.label_1097:
	test	rdx, rdx
	je	.label_1105
	mov	r13, qword ptr [r14 + 0x98]
	mov	dword ptr [rsp + 0x34], 0
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm0
	mov	qword ptr [rsp + 0x70], 0
	cmp	qword ptr [rdx + 0x28], 0
	mov	edi, 0
	jle	.label_1106
	xor	ebx, ebx
	mov	qword ptr [rsp + 0x48], rdx
	nop	word ptr cs:[rax + rax]
.label_1096:
	mov	rax, qword ptr [rdx + 0x30]
	mov	r15, qword ptr [rax + rbx*8]
	mov	rsi, qword ptr [r13]
	mov	rbp, r15
	shl	rbp, 4
	test	byte ptr [rsi + rbp + 0xa], 0x10
	je	.label_1079
	mov	rdi, r13
	mov	rsi, r15
	mov	rdx, r14
	mov	r12, qword ptr [rsp + 8]
	mov	rcx, r12
	call	check_node_accept_bytes
	cmp	eax, 2
	jl	.label_1087
	mov	rcx, qword ptr [r13 + 0x18]
	mov	rdx, qword ptr [rcx + r15*8]
	mov	rcx, r14
	movsxd	r14, eax
	add	r14, r12
	mov	rax, qword ptr [rcx + 0xb8]
	mov	rsi, qword ptr [rax + r14*8]
	mov	qword ptr [rsp + 0x68], 0
	test	rsi, rsi
	lea	rax, [rsp + 0x60]
	mov	rcx, rax
	je	.label_1107
	add	rsi, 8
	mov	r12, rcx
	mov	rdi, r12
	mov	rbp, rdx
	call	re_node_set_merge
	mov	rdx, rbp
	mov	rcx, r12
	mov	r12d, eax
	mov	dword ptr [rsp + 0x34], r12d
	test	r12d, r12d
	jne	.label_1099
.label_1107:
	mov	rbp, rcx
	mov	rdi, rbp
	mov	rsi, rdx
	call	re_node_set_insert
	test	al, al
	mov	rdx, rbp
	je	.label_1084
	lea	rdi, [rsp + 0x34]
	mov	rsi, r13
	call	re_acquire_state
	mov	rdx, qword ptr [rsp + 0x28]
	mov	rcx, qword ptr [rdx + 0xb8]
	mov	qword ptr [rcx + r14*8], rax
	mov	rax, qword ptr [rdx + 0xb8]
	cmp	qword ptr [rax + r14*8], 0
	mov	r14, rdx
	jne	.label_1077
	mov	r12d, dword ptr [rsp + 0x34]
	test	r12d, r12d
	je	.label_1077
	jmp	.label_1099
	.section	.text
	.align	32
	#Procedure 0x407bfe
	.globl sub_407bfe
	.type sub_407bfe, @function
sub_407bfe:

	nop	
.label_1087:
	test	eax, eax
	jne	.label_1077
	mov	rsi, qword ptr [r13]
	nop	dword ptr [rax + rax]
.label_1079:
	add	rsi, rbp
	mov	rdi, r14
	mov	rdx, qword ptr [rsp + 8]
	call	check_node_accept
	test	al, al
	je	.label_1082
.label_1077:
	mov	rax, qword ptr [r13 + 0x18]
	mov	rsi, qword ptr [rax + r15*8]
	lea	rdi, [rsp + 0x10]
	call	re_node_set_insert
	test	al, al
	je	.label_1084
.label_1082:
	inc	rbx
	mov	rdx, qword ptr [rsp + 0x48]
	cmp	rbx, qword ptr [rdx + 0x28]
	jl	.label_1096
	mov	rdi, qword ptr [rsp + 0x70]
	mov	r12, qword ptr [rsp + 0x58]
.label_1106:
	call	free
	mov	dword ptr [rsp + 4], 0
	mov	r13, qword ptr [rsp + 0x40]
	mov	ebx, dword ptr [rsp + 0xd0]
.label_1105:
	mov	rax, qword ptr [rsp + 8]
	lea	rbp, [rax + 1]
	cmp	qword ptr [rsp + 0x18], 0
	lea	r15, [rsp + 0x10]
	je	.label_1095
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r13
	mov	ecx, ebx
	call	check_arrival_expand_ecl
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	jne	.label_1086
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, rbp
	mov	rcx, r13
	mov	r8d, ebx
	call	expand_bkref_cache
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	jne	.label_1086
.label_1095:
	mov	edx, dword ptr [r14 + 0xa0]
	mov	rdi, r14
	mov	rsi, qword ptr [rsp + 8]
	call	re_string_context_at
	lea	rdi, [rsp + 4]
	mov	rsi, r12
	mov	rdx, r15
	mov	ecx, eax
	call	re_acquire_state_context
	mov	rdx, rax
	test	rdx, rdx
	jne	.label_1108
	mov	eax, dword ptr [rsp + 4]
	test	eax, eax
	jne	.label_1086
.label_1108:
	mov	rsi, qword ptr [rsp + 0x38]
	inc	rsi
	test	rdx, rdx
	mov	rax, qword ptr [r14 + 0xb8]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rax + rcx*8 + 8], rdx
	mov	eax, 0
	cmovne	rsi, rax
	cmp	rbp, qword ptr [rsp + 0x50]
	mov	rax, rbp
	mov	qword ptr [rsp + 8], rax
	jl	.label_1113
	jmp	.label_1085
.label_1092:
	mov	rbp, rax
	jmp	.label_1085
.label_1094:
	mov	rbp, qword ptr [rsp + 8]
.label_1085:
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	mov	rax, qword ptr [r14 + 0xb8]
	mov	rcx, qword ptr [rsp + 0x50]
	mov	rax, qword ptr [rax + rcx*8]
	lea	rcx, [rax + 8]
	test	rax, rax
	cmove	rcx, rax
	mov	rax, qword ptr [rsp + 0x88]
	mov	qword ptr [rax], rbp
	mov	rax, qword ptr [rsp + 0x78]
	mov	qword ptr [r14 + 0xb8], rax
	mov	rax, qword ptr [rsp + 0x80]
	mov	qword ptr [r14 + 0x48], rax
	mov	rbx, qword ptr [rsp + 0x90]
	je	.label_1089
	mov	rax, qword ptr [rcx + 8]
	test	rax, rax
	jle	.label_1089
	xor	ebp, ebp
	dec	rax
	mov	rcx, qword ptr [rcx + 0x10]
	mov	edx, 0
	je	.label_1101
	xor	edx, edx
.label_1102:
	lea	rsi, [rdx + rax]
	shr	rsi, 1
	cmp	qword ptr [rcx + rsi*8], rbx
	lea	rdi, [rsi + 1]
	cmovl	rdx, rdi
	cmovge	rax, rsi
	cmp	rdx, rax
	jb	.label_1102
.label_1101:
	cmp	rdx, -1
	je	.label_1089
	cmp	qword ptr [rcx + rdx*8], rbx
	je	.label_1081
.label_1089:
	mov	ebp, 1
.label_1081:
	mov	eax, ebp
	add	rsp, 0x98
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1084:
	mov	rdi, qword ptr [rsp + 0x70]
	call	free
	mov	r12d, 0xc
	jmp	.label_1112
.label_1099:
	mov	rdi, qword ptr [rsp + 0x70]
	call	free
.label_1112:
	mov	dword ptr [rsp + 4], r12d
.label_1086:
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	mov	ebp, dword ptr [rsp + 4]
	jmp	.label_1081
.label_1104:
	mov	r13, rbp
	movabs	rdx, 0x7fffffffffffffff
	sub	rdx, r12
	mov	ebp, 0xc
	cmp	rdx, rdi
	jle	.label_1081
	mov	qword ptr [rsp + 8], rcx
	mov	rcx, qword ptr [rsp + 0x50]
	lea	r15, [rax + rcx + 1]
	lea	rcx, [r15 + r12]
	mov	rax, rcx
	shr	rax, 0x3d
	jne	.label_1081
	mov	rdi, qword ptr [r13 + 0x10]
	mov	qword ptr [rsp + 0x38], rcx
	lea	rsi, [rcx*8]
	call	realloc
	mov	r14, rax
	test	r14, r14
	je	.label_1081
	mov	qword ptr [r13 + 0x10], r14
	mov	rax, qword ptr [rsp + 0x38]
	mov	qword ptr [r13 + 8], rax
	lea	rdi, [r14 + r12*8]
	shl	r15, 3
	xor	esi, esi
	mov	rdx, r15
	call	memset
	mov	rbp, r13
	mov	rcx, qword ptr [rsp + 8]
	jmp	.label_1100
.label_1088:
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	jmp	.label_1081
.label_1098:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	dword ptr [rsp + 4], 0xc
	mov	ebp, 0xc
	jmp	.label_1081
	.section	.text
	.align	32
	#Procedure 0x407ecf
	.globl sub_407ecf
	.type sub_407ecf, @function
sub_407ecf:

	nop	
	.section	.text
	.align	32
	#Procedure 0x407ed0

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x68
	mov	rbx, rsi
	mov	ebp, edi
	mov	rdi, qword ptr [rbx]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_694
	call	setlocale
	mov	edi, OFFSET FLAT:label_1410
	mov	esi, OFFSET FLAT:label_1411
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_1410
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	xor	r15d, r15d
	lea	r14, [rsp + 0x50]
	jmp	.label_1123
.label_3278:
	mov	rdi, qword ptr [rip + optarg]
	call	copy_unescaped_string
	mov	qword ptr [rip + word_regex],  rax
	cmp	byte ptr [rax], 0
	cmove	rax, r15
	mov	qword ptr [rip + word_regex],  rax
	nop	dword ptr [rax + rax]
.label_1123:
	mov	edx, OFFSET FLAT:label_1468
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	mov	edi, ebp
	mov	rsi, rbx
	call	getopt_long
	lea	ecx, [rax + 1]
	cmp	ecx, 0x78
	ja	.label_1451
	jmp	qword ptr [(rcx * 8) + label_1181]
.label_3269:
	mov	rsi, qword ptr [rip + optarg]
	mov	r9, qword ptr [rip + argmatch_die]
	mov	edi, OFFSET FLAT:label_1460
	mov	edx, OFFSET FLAT:format_args
	mov	ecx, OFFSET FLAT:format_vals
	mov	r8d, 4
	call	__xargmatch_internal
	mov	eax, dword ptr [(rax * 4) + format_vals]
	mov	dword ptr [rip + output_format],  eax
	jmp	.label_1123
.label_3270:
	mov	byte ptr [rip + auto_reference],  1
	jmp	.label_1123
.label_3275:
	mov	byte ptr [rip + right_reference],  1
	jmp	.label_1123
.label_3279:
	mov	rax, qword ptr [rip + optarg]
	mov	qword ptr [rip + break_file],  rax
	jmp	.label_1123
.label_3280:
	mov	byte ptr [rip + ignore_case],  1
	jmp	.label_1123
.label_3282:
	mov	rax, qword ptr [rip + optarg]
	mov	qword ptr [rip + ignore_file],  rax
	jmp	.label_1123
.label_3283:
	mov	rax, qword ptr [rip + optarg]
	mov	qword ptr [rip + only_file],  rax
	jmp	.label_1123
.label_3271:
	mov	rdi, qword ptr [rip + optarg]
	call	copy_unescaped_string
	mov	qword ptr [rip + truncation_string],  rax
	jmp	.label_1123
.label_3272:
	mov	byte ptr [rip + gnu_extensions],  1
	jmp	.label_1123
.label_3273:
	mov	rax, qword ptr [rip + optarg]
	mov	qword ptr [rip + macro_name],  rax
	jmp	.label_1123
.label_3274:
	mov	dword ptr [rip + output_format],  2
	jmp	.label_1123
.label_3276:
	mov	rdi, qword ptr [rip + optarg]
	call	copy_unescaped_string
	mov	qword ptr [rip + context_regex],  rax
	jmp	.label_1123
.label_3277:
	mov	dword ptr [rip + output_format],  3
	jmp	.label_1123
.label_3281:
	mov	rdi, qword ptr [rip + optarg]
	xor	esi, esi
	xor	edx, edx
	xor	r8d, r8d
	mov	rcx, r14
	call	xstrtoimax
	test	eax, eax
	jne	.label_1167
	mov	rax, qword ptr [rsp + 0x50]
	test	rax, rax
	jle	.label_1167
	mov	qword ptr [rip + gap_size],  rax
	jmp	.label_1123
.label_3284:
	mov	byte ptr [rip + input_reference],  1
	jmp	.label_1123
.label_3285:
	mov	rdi, qword ptr [rip + optarg]
	xor	esi, esi
	xor	edx, edx
	xor	r8d, r8d
	mov	rcx, r14
	call	xstrtoimax
	test	eax, eax
	jne	.label_1193
	mov	rax, qword ptr [rsp + 0x50]
	test	rax, rax
	jle	.label_1193
	mov	qword ptr [rip + line_width],  rax
	jmp	.label_1123
.label_3268:
	mov	eax, dword ptr [rip + optind]
	cmp	eax, ebp
	jne	.label_1208
	mov	edi, 8
	call	xmalloc
	mov	qword ptr [rip + input_file_name],  rax
	mov	edi, 8
	call	xmalloc
	mov	qword ptr [rip + file_line_count],  rax
	mov	edi, 0x10
	call	xmalloc
	mov	qword ptr [rip + text_buffers],  rax
	mov	dword ptr [rip + number_input_files],  1
	mov	rax, qword ptr [rip + input_file_name]
	mov	qword ptr [rax], 0
	jmp	.label_1236
.label_1208:
	mov	cl, byte ptr [rip + gnu_extensions]
	test	cl, cl
	je	.label_1238
	mov	dword ptr [rip + number_input_files],  1
	mov	edi, 8
	call	xmalloc
	mov	qword ptr [rip + input_file_name],  rax
	mov	edi, 8
	call	xmalloc
	mov	qword ptr [rip + file_line_count],  rax
	mov	edi, 0x10
	call	xmalloc
	mov	qword ptr [rip + text_buffers],  rax
	movsxd	rax, dword ptr [rip + optind]
	mov	rcx, qword ptr [rbx + rax*8]
	mov	dl, byte ptr [rcx]
	test	dl, dl
	je	.label_1281
	cmp	dl, 0x2d
	jne	.label_1318
	cmp	byte ptr [rcx + 1], 0
	je	.label_1281
.label_1318:
	mov	rdx, qword ptr [rip + input_file_name]
	mov	qword ptr [rdx], rcx
	jmp	.label_1297
.label_1238:
	sub	ebp, eax
	mov	dword ptr [rip + number_input_files],  ebp
	js	.label_1304
	movsxd	rdi, ebp
	shl	rdi, 3
	call	xmalloc
	mov	qword ptr [rip + input_file_name],  rax
	movsxd	rdi, dword ptr [rip + number_input_files]
	test	rdi, rdi
	js	.label_1304
	shl	rdi, 3
	call	xmalloc
	mov	qword ptr [rip + file_line_count],  rax
	movsxd	rdi, dword ptr [rip + number_input_files]
	test	rdi, rdi
	js	.label_1304
	shl	rdi, 4
	call	xmalloc
	mov	qword ptr [rip + text_buffers],  rax
	movsxd	rax, dword ptr [rip + number_input_files]
	test	rax, rax
	jle	.label_1236
	mov	rcx, qword ptr [rip + input_file_name]
	movsxd	rsi, dword ptr [rip + optind]
	lea	edx, [rsi + 1]
	lea	rsi, [rbx + rsi*8]
	xor	edi, edi
	nop	dword ptr [rax]
.label_1357:
	mov	rbp, qword ptr [rsi + rdi*8]
	movzx	ebx, byte ptr [rbp]
	test	bl, bl
	je	.label_1344
	cmp	bl, 0x2d
	jne	.label_1348
	cmp	byte ptr [rbp + 1], 0
	je	.label_1344
.label_1348:
	mov	qword ptr [rcx + rdi*8], rbp
	jmp	.label_1353
	.section	.text
	.align	32
	#Procedure 0x40826d
	.globl sub_40826d
	.type sub_40826d, @function
sub_40826d:

	nop	dword ptr [rax]
.label_1344:
	mov	qword ptr [rcx + rdi*8], 0
.label_1353:
	lea	ebp, [rdx + rdi]
	mov	dword ptr [rip + optind],  ebp
	inc	rdi
	cmp	rdi, rax
	jl	.label_1357
	jmp	.label_1236
.label_1281:
	mov	rcx, qword ptr [rip + input_file_name]
	mov	qword ptr [rcx], 0
.label_1297:
	lea	ecx, [rax + 1]
	mov	dword ptr [rip + optind],  ecx
	cmp	ecx, ebp
	jge	.label_1367
	mov	rdi, qword ptr [rbx + rax*8 + 8]
	mov	rdx, qword ptr [rip + stdout]
	mov	esi, OFFSET FLAT:label_1370
	call	freopen_safer
	test	rax, rax
	je	.label_1377
	mov	ecx, dword ptr [rip + optind]
	inc	ecx
	mov	dword ptr [rip + optind],  ecx
.label_1367:
	cmp	ecx, ebp
	jl	.label_1398
.label_1236:
	cmp	dword ptr [rip + output_format],  0
	jne	.label_1400
	movzx	eax, byte ptr [rip + gnu_extensions]
	inc	eax
	mov	dword ptr [rip + output_format],  eax
.label_1400:
	cmp	byte ptr [rip + ignore_case],  1
	jne	.label_1172
	xor	ebx, ebx
	call	__ctype_toupper_loc
	nop	word ptr cs:[rax + rax]
.label_1422:
	mov	rcx, qword ptr [rax]
	movzx	ecx, byte ptr [rcx + rbx*4]
	mov	byte ptr [rbx + folded_chars],  cl
	mov	rcx, qword ptr [rax]
	movzx	ecx, byte ptr [rcx + rbx*4 + 4]
	mov	byte ptr [rbx + label_1419],  cl
	mov	rcx, qword ptr [rax]
	movzx	ecx, byte ptr [rcx + rbx*4 + 8]
	mov	byte ptr [rbx + label_1420],  cl
	mov	rcx, qword ptr [rax]
	movzx	ecx, byte ptr [rcx + rbx*4 + 0xc]
	mov	byte ptr [rbx + label_1421],  cl
	add	rbx, 4
	cmp	rbx, 0x100
	jne	.label_1422
.label_1172:
	mov	rax, qword ptr [rip + context_regex]
	test	rax, rax
	je	.label_1445
	cmp	byte ptr [rax], 0
	jne	.label_1449
	mov	qword ptr [rip + context_regex],  0
	jmp	.label_1450
.label_1445:
	mov	al, byte ptr [rip + gnu_extensions]
	test	al, al
	jne	.label_1457
	mov	al, byte ptr [rip + input_reference]
	test	al, al
	je	.label_1461
.label_1457:
	mov	qword ptr [rip + context_regex], OFFSET FLAT:label_1465
	jmp	.label_1449
.label_1461:
	mov	qword ptr [rip + context_regex], OFFSET FLAT:label_1470
.label_1449:
	mov	edi, OFFSET FLAT:context_regex
	call	compile_regex
.label_1450:
	cmp	qword ptr [rip + word_regex],  0
	je	.label_1474
	mov	edi, OFFSET FLAT:word_regex
	call	compile_regex
	mov	rdi, qword ptr [rip + break_file]
	test	rdi, rdi
	jne	.label_1354
	jmp	.label_1373
.label_1474:
	mov	rdi, qword ptr [rip + break_file]
	test	rdi, rdi
	je	.label_1480
.label_1354:
	lea	rsi, [rsp + 0x50]
	call	swallow_file_in_memory
	movdqa	xmm0, xmmword ptr [rip + label_278]
	movdqa	xmmword ptr [rip + label_1383],  xmm0
	movdqa	xmmword ptr [rip + label_1384],  xmm0
	movdqa	xmmword ptr [rip + label_1385],  xmm0
	movdqa	xmmword ptr [rip + label_1386],  xmm0
	movdqa	xmmword ptr [rip + label_1387],  xmm0
	movdqa	xmmword ptr [rip + label_1388],  xmm0
	movdqa	xmmword ptr [rip + label_1389],  xmm0
	movdqa	xmmword ptr [rip + label_1390],  xmm0
	movdqa	xmmword ptr [rip + label_1391],  xmm0
	movdqa	xmmword ptr [rip + label_1392],  xmm0
	movdqa	xmmword ptr [rip + label_1393],  xmm0
	movdqa	xmmword ptr [rip + label_1394],  xmm0
	movdqa	xmmword ptr [rip + label_1395],  xmm0
	movdqa	xmmword ptr [rip + label_1178],  xmm0
	movdqa	xmmword ptr [rip + label_1396],  xmm0
	movdqa	xmmword ptr [rip + word_fastmap],  xmm0
	mov	rdi, qword ptr [rsp + 0x50]
	mov	rax, qword ptr [rsp + 0x58]
	cmp	rdi, rax
	jae	.label_1454
	mov	rcx, rdi
	nop	word ptr cs:[rax + rax]
.label_1170:
	movzx	edx, byte ptr [rcx]
	mov	byte ptr [rdx + word_fastmap],  0
	inc	rcx
	cmp	rax, rcx
	jne	.label_1170
.label_1454:
	cmp	byte ptr [rip + gnu_extensions],  1
	jne	.label_1175
	mov	byte ptr [rip + label_1178],  0
	mov	word ptr [rip + label_1179],  0
.label_1175:
	call	free
.label_1373:
	mov	rdi, qword ptr [rip + ignore_file]
	test	rdi, rdi
	je	.label_1164
	mov	esi, OFFSET FLAT:ignore_table
	call	digest_word_file
	cmp	qword ptr [rip + label_1169],  0
	jne	.label_1164
	mov	qword ptr [rip + ignore_file],  0
.label_1164:
	mov	rdi, qword ptr [rip + only_file]
	test	rdi, rdi
	je	.label_1202
	mov	esi, OFFSET FLAT:only_table
	call	digest_word_file
	cmp	qword ptr [rip + label_1216],  0
	jne	.label_1202
	mov	qword ptr [rip + only_file],  0
.label_1202:
	mov	qword ptr [rip + number_of_occurs.0],  0
	mov	qword ptr [rip + total_line_count],  0
	mov	qword ptr [rip + maximum_word_length],  0
	mov	qword ptr [rip + reference_max_width],  0
	cmp	dword ptr [rip + number_input_files],  0
	jle	.label_1224
	xor	r13d, r13d
	nop	word ptr cs:[rax + rax]
.label_1349:
	mov	rbp, r13
	shl	rbp, 4
	mov	rsi, qword ptr [rip + text_buffers]
	add	rsi, rbp
	mov	rax, qword ptr [rip + input_file_name]
	mov	rdi, qword ptr [rax + r13*8]
	call	swallow_file_in_memory
	mov	r14, qword ptr [rip + text_buffers]
	mov	rax, qword ptr [r14 + rbp]
	mov	rbx, qword ptr [r14 + rbp + 8]
	cmp	byte ptr [rip + input_reference],  1
	mov	r12, rax
	mov	ecx, 0
	mov	qword ptr [rsp + 0x38], rcx
	jne	.label_1257
	cmp	rax, rbx
	mov	r15, rax
	mov	rdx, rax
	jae	.label_1292
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rdx, r15
	nop	dword ptr [rax]
.label_1306:
	movzx	ecx, byte ptr [rdx]
	test	byte ptr [rax + rcx*2 + 1], 0x20
	jne	.label_1292
	inc	rdx
	cmp	rdx, rbx
	jb	.label_1306
.label_1292:
	mov	rax, rdx
	sub	rax, r15
	mov	qword ptr [rsp + 0x38], rax
	mov	r12, rdx
	cmp	rdx, rbx
	jae	.label_1310
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	nop	dword ptr [rax]
.label_1322:
	movzx	ecx, byte ptr [r12]
	test	byte ptr [rax + rcx*2 + 1], 0x20
	je	.label_1310
	inc	r12
	cmp	r12, rbx
	jb	.label_1322
.label_1310:
	mov	rax, r15
.label_1257:
	cmp	rax, rbx
	jae	.label_1325
	lea	rcx, [r14 + rbp + 8]
	mov	qword ptr [rsp + 0x20], rcx
	mov	rbp, rax
	nop	dword ptr [rax]
.label_1340:
	mov	r15, rax
	cmp	qword ptr [rip + context_regex],  0
	je	.label_1331
	mov	rdx, rbx
	sub	rdx, r15
	mov	edi, OFFSET FLAT:label_1336
	xor	ecx, ecx
	mov	r9d, OFFSET FLAT:context_regs
	mov	rsi, r15
	mov	r8, rdx
	call	rpl_re_search
	cmp	rax, -1
	je	.label_1331
	test	rax, rax
	je	.label_1345
	cmp	rax, -2
	je	.label_1347
	mov	rax, qword ptr [rip + label_1351]
	mov	rbx, qword ptr [rax]
	add	rbx, r15
.label_1331:
	mov	qword ptr [rsp], rbp
	mov	qword ptr [rsp + 0x40], rbx
	nop	word ptr [rax + rax]
.label_1365:
	mov	r14, rbx
	cmp	r14, r15
	jbe	.label_1360
	lea	rbx, [r14 - 1]
	movzx	ebp, byte ptr [r14 - 1]
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	test	byte ptr [rax + rbp*2 + 1], 0x20
	jne	.label_1365
.label_1360:
	mov	qword ptr [rsp + 0x10], r15
	mov	rbp, r12
	jmp	.label_1152
.label_1153:
	mov	qword ptr [r9], rbx
	mov	qword ptr [r8 + rdi + 8], r12
	mov	qword ptr [rsp + 0x10], rax
	sub	rax, rbx
	mov	qword ptr [r8 + rdi + 0x10], rax
	mov	rax, r14
	sub	rax, rbx
	mov	qword ptr [r8 + rdi + 0x18], rax
	mov	dword ptr [r8 + rdi + 0x28], r13d
	inc	rsi
	mov	qword ptr [rip + number_of_occurs.0],  rsi
	nop	dword ptr [rax]
.label_1152:
	mov	rbx, r15
	jmp	.label_1401
	.section	.text
	.align	32
	#Procedure 0x4086e5
	.globl sub_4086e5
	.type sub_4086e5, @function
sub_4086e5:

	nop	word ptr cs:[rax + rax]
.label_1455:
	inc	rbx
.label_1401:
	cmp	qword ptr [rip + word_regex],  0
	je	.label_1407
	mov	rdx, r14
	sub	rdx, rbx
	mov	edi, OFFSET FLAT:label_1256
	xor	ecx, ecx
	mov	r9d, OFFSET FLAT:word_regs
	mov	rsi, rbx
	mov	r8, rdx
	call	rpl_re_search
	cmp	rax, -1
	je	.label_1424
	cmp	rax, -2
	je	.label_1427
	mov	rax, qword ptr [rip + label_1431]
	mov	rax, qword ptr [rax]
	add	rax, rbx
	mov	rcx, qword ptr [rip + label_1432]
	mov	r15, rbx
	add	r15, qword ptr [rcx]
	mov	rbx, rax
	jmp	.label_1433
	.section	.text
	.align	32
	#Procedure 0x40874e
	.globl sub_40874e
	.type sub_40874e, @function
sub_40874e:

	nop	
.label_1446:
	inc	rbx
.label_1407:
	cmp	rbx, r14
	jae	.label_1444
	movzx	eax, byte ptr [rbx]
	cmp	byte ptr [rax + word_fastmap],  0
	je	.label_1446
.label_1444:
	cmp	rbx, r14
	je	.label_1424
	jae	.label_1455
	mov	r15, rbx
	nop	word ptr cs:[rax + rax]
.label_1469:
	movzx	eax, byte ptr [r15]
	cmp	byte ptr [rax + word_fastmap],  0
	je	.label_1433
	inc	r15
	cmp	r15, r14
	jb	.label_1469
	nop	word ptr cs:[rax + rax]
.label_1433:
	mov	r12, r15
	sub	r12, rbx
	je	.label_1455
	cmp	r12, qword ptr [rip + maximum_word_length]
	jle	.label_1475
	mov	qword ptr [rip + maximum_word_length],  r12
.label_1475:
	cmp	byte ptr [rip + input_reference],  1
	jne	.label_1478
	cmp	rbp, rbx
	jae	.label_1141
	mov	rdx, rbp
	mov	qword ptr [rsp + 0x18], r13
.label_1135:
	mov	r13, rdx
	nop	dword ptr [rax]
.label_1489:
	cmp	byte ptr [r13], 0xa
	je	.label_1486
	inc	r13
	cmp	r13, rbx
	jb	.label_1489
	jmp	.label_1492
	.section	.text
	.align	32
	#Procedure 0x4087f1
	.globl sub_4087f1
	.type sub_4087f1, @function
sub_4087f1:

	nop	word ptr cs:[rax + rax]
.label_1486:
	inc	qword ptr [rip + total_line_count]
	lea	rdx, [r13 + 1]
	mov	rax, qword ptr [rsp + 0x20]
	mov	rbp, qword ptr [rax]
	cmp	rdx, rbp
	mov	qword ptr [rsp], rdx
	jae	.label_1114
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rdx, qword ptr [rsp]
	nop	dword ptr [rax + rax]
.label_1133:
	movzx	ecx, byte ptr [rdx]
	test	byte ptr [rax + rcx*2 + 1], 0x20
	jne	.label_1114
	inc	rdx
	cmp	rdx, rbp
	jb	.label_1133
.label_1114:
	mov	rax, rdx
	sub	rax, qword ptr [rsp]
	mov	qword ptr [rsp + 0x38], rax
	cmp	rdx, rbx
	jb	.label_1135
	inc	r13
	mov	qword ptr [rsp], r13
	mov	r13, qword ptr [rsp + 0x18]
	mov	rbp, rdx
	jmp	.label_1141
.label_1492:
	mov	rax, r13
	mov	r13, qword ptr [rsp + 0x18]
	mov	rbp, rax
.label_1141:
	cmp	rbp, rbx
	ja	.label_1152
.label_1478:
	mov	qword ptr [rsp + 8], rbp
	cmp	qword ptr [rip + ignore_file],  0
	je	.label_1158
	mov	rcx, qword ptr [rip + label_1169]
	test	rcx, rcx
	jle	.label_1158
	mov	r8, qword ptr [rip + ignore_table]
	mov	al, byte ptr [rip + ignore_case]
	xor	r10d, r10d
	test	al, al
	je	.label_1315
.label_1240:
	mov	r9, rcx
	dec	r9
	nop	dword ptr [rax]
.label_1234:
	lea	rax, [r10 + r9]
	mov	rcx, rax
	shr	rcx, 0x3f
	add	rcx, rax
	sar	rcx, 1
	mov	rdx, rcx
	shl	rdx, 4
	mov	r11, qword ptr [r8 + rdx + 8]
	cmp	r12, r11
	mov	rdi, r11
	cmovle	rdi, r12
	test	rdi, rdi
	jle	.label_1381
	mov	rsi, qword ptr [r8 + rdx]
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_1225:
	movzx	eax, byte ptr [rbx + rdx]
	movzx	eax, byte ptr [rax + folded_chars]
	movzx	ebp, byte ptr [rsi + rdx]
	movzx	ebp, byte ptr [rbp + folded_chars]
	sub	eax, ebp
	jne	.label_1215
	inc	rdx
	cmp	rdx, rdi
	jl	.label_1225
.label_1381:
	cmp	r12, r11
	jl	.label_1228
	jg	.label_1229
	jmp	.label_1230
	.section	.text
	.align	32
	#Procedure 0x40892e
	.globl sub_40892e
	.type sub_40892e, @function
sub_40892e:

	nop	
.label_1215:
	test	eax, eax
	js	.label_1228
.label_1229:
	cmp	rcx, r9
	lea	r10, [rcx + 1]
	jl	.label_1234
	jmp	.label_1158
	.section	.text
	.align	32
	#Procedure 0x408942
	.globl sub_408942
	.type sub_408942, @function
sub_408942:

	nop	word ptr cs:[rax + rax]
.label_1228:
	cmp	r10, rcx
	jl	.label_1240
	jmp	.label_1158
	.section	.text
	.align	32
	#Procedure 0x40895e
	.globl sub_40895e
	.type sub_40895e, @function
sub_40895e:

	nop	
.label_1315:
	mov	r9, rcx
	dec	r9
	nop	word ptr cs:[rax + rax]
.label_1311:
	lea	rax, [r10 + r9]
	mov	rcx, rax
	shr	rcx, 0x3f
	add	rcx, rax
	sar	rcx, 1
	mov	rdx, rcx
	shl	rdx, 4
	mov	r11, qword ptr [r8 + rdx + 8]
	cmp	r12, r11
	mov	rax, r11
	cmovle	rax, r12
	test	rax, rax
	jle	.label_1252
	mov	rsi, qword ptr [r8 + rdx]
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_1299:
	movzx	edi, byte ptr [rbx + rdx]
	movzx	ebp, byte ptr [rsi + rdx]
	sub	edi, ebp
	jne	.label_1294
	inc	rdx
	cmp	rdx, rax
	jl	.label_1299
.label_1252:
	cmp	r12, r11
	jl	.label_1303
	jg	.label_1305
	jmp	.label_1307
.label_1294:
	test	edi, edi
	js	.label_1303
.label_1305:
	cmp	rcx, r9
	lea	r10, [rcx + 1]
	jl	.label_1311
	jmp	.label_1158
	.section	.text
	.align	32
	#Procedure 0x4089df
	.globl sub_4089df
	.type sub_4089df, @function
sub_4089df:

	nop	
.label_1303:
	cmp	r10, rcx
	jl	.label_1315
.label_1158:
	cmp	qword ptr [rip + only_file],  0
	je	.label_1317
	mov	rcx, qword ptr [rip + label_1216]
	test	rcx, rcx
	mov	rbp, qword ptr [rsp + 8]
	jle	.label_1152
	mov	r8, qword ptr [rip + only_table]
	mov	al, byte ptr [rip + ignore_case]
	xor	r10d, r10d
	test	al, al
	je	.label_1134
.label_1379:
	mov	r9, rcx
	dec	r9
	nop	word ptr [rax + rax]
.label_1369:
	lea	rax, [r10 + r9]
	mov	rcx, rax
	shr	rcx, 0x3f
	add	rcx, rax
	sar	rcx, 1
	mov	rdx, rcx
	shl	rdx, 4
	mov	r11, qword ptr [r8 + rdx + 8]
	cmp	r12, r11
	mov	rdi, r11
	cmovle	rdi, r12
	test	rdi, rdi
	jle	.label_1338
	mov	rsi, qword ptr [r8 + rdx]
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_1362:
	movzx	eax, byte ptr [rbx + rdx]
	movzx	eax, byte ptr [rax + folded_chars]
	movzx	ebp, byte ptr [rsi + rdx]
	movzx	ebp, byte ptr [rbp + folded_chars]
	sub	eax, ebp
	jne	.label_1355
	inc	rdx
	cmp	rdx, rdi
	jl	.label_1362
.label_1338:
	cmp	r12, r11
	jl	.label_1363
	jg	.label_1366
	jmp	.label_1317
	.section	.text
	.align	32
	#Procedure 0x408a9e
	.globl sub_408a9e
	.type sub_408a9e, @function
sub_408a9e:

	nop	
.label_1355:
	test	eax, eax
	js	.label_1363
.label_1366:
	cmp	rcx, r9
	lea	r10, [rcx + 1]
	jl	.label_1369
	jmp	.label_1371
	.section	.text
	.align	32
	#Procedure 0x408ab2
	.globl sub_408ab2
	.type sub_408ab2, @function
sub_408ab2:

	nop	word ptr cs:[rax + rax]
.label_1363:
	cmp	r10, rcx
	jl	.label_1379
	mov	rbp, qword ptr [rsp + 8]
	jmp	.label_1152
	.section	.text
	.align	32
	#Procedure 0x408ad3
	.globl sub_408ad3
	.type sub_408ad3, @function
sub_408ad3:

	nop	word ptr cs:[rax + rax]
.label_1134:
	mov	r9, rcx
	dec	r9
	nop	word ptr cs:[rax + rax]
.label_1494:
	lea	rax, [r10 + r9]
	mov	rcx, rax
	shr	rcx, 0x3f
	add	rcx, rax
	sar	rcx, 1
	mov	rdx, rcx
	shl	rdx, 4
	mov	r11, qword ptr [r8 + rdx + 8]
	cmp	r12, r11
	mov	rax, r11
	cmovle	rax, r12
	test	rax, rax
	jle	.label_1287
	mov	rsi, qword ptr [r8 + rdx]
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_1245:
	movzx	edi, byte ptr [rbx + rdx]
	movzx	ebp, byte ptr [rsi + rdx]
	sub	edi, ebp
	jne	.label_1434
	inc	rdx
	cmp	rdx, rax
	jl	.label_1245
.label_1287:
	cmp	r12, r11
	jl	.label_1438
	jg	.label_1440
	jmp	.label_1317
	.section	.text
	.align	32
	#Procedure 0x408b4d
	.globl sub_408b4d
	.type sub_408b4d, @function
sub_408b4d:

	nop	dword ptr [rax]
.label_1434:
	test	edi, edi
	js	.label_1438
.label_1440:
	cmp	rcx, r9
	lea	r10, [rcx + 1]
	jl	.label_1494
	jmp	.label_1448
	.section	.text
	.align	32
	#Procedure 0x408b5f
	.globl sub_408b5f
	.type sub_408b5f, @function
sub_408b5f:

	nop	
.label_1438:
	cmp	r10, rcx
	jl	.label_1134
	mov	rbp, qword ptr [rsp + 8]
	jmp	.label_1152
.label_1317:
	mov	rsi, qword ptr [rip + number_of_occurs.0]
	cmp	rsi, qword ptr [rip + occurs_alloc]
	jne	.label_1484
	mov	rdi, qword ptr [rip + occurs_table.0]
	test	rdi, rdi
	mov	rbp, qword ptr [rsp + 0x38]
	je	.label_1463
	movabs	rax, 0x1c71c71c71c71c7
	cmp	rsi, rax
	jae	.label_1471
	mov	rax, rsi
	shr	rax, 1
	lea	rsi, [rsi + rax + 1]
	jmp	.label_1473
.label_1371:
	mov	rbp, qword ptr [rsp + 8]
	jmp	.label_1152
.label_1448:
	mov	rbp, qword ptr [rsp + 8]
	jmp	.label_1152
.label_1484:
	mov	r8, qword ptr [rip + occurs_table.0]
	mov	rbp, qword ptr [rsp + 0x38]
	jmp	.label_1479
.label_1230:
	mov	rbp, qword ptr [rsp + 8]
	jmp	.label_1152
.label_1307:
	mov	rbp, qword ptr [rsp + 8]
	jmp	.label_1152
.label_1463:
	test	rsi, rsi
	mov	eax, 2
	cmove	rsi, rax
	movabs	rax, 0x2aaaaaaaaaaaaab
	cmp	rsi, rax
	jae	.label_1490
.label_1473:
	mov	qword ptr [rip + occurs_alloc],  rsi
	shl	rsi, 4
	lea	rsi, [rsi + rsi*2]
	call	xrealloc
	mov	r8, rax
	mov	qword ptr [rip + occurs_table.0],  r8
	mov	rsi, qword ptr [rip + number_of_occurs.0]
.label_1479:
	lea	rdi, [rsi + rsi*2]
	shl	rdi, 4
	lea	r9, [r8 + rdi]
	cmp	byte ptr [rip + auto_reference],  1
	jne	.label_1129
	mov	qword ptr [rsp + 0x18], r13
	mov	rdx, qword ptr [rsp + 8]
	cmp	rdx, rbx
	jae	.label_1136
.label_1209:
	mov	r13, rdx
	nop	dword ptr [rax]
.label_1147:
	cmp	byte ptr [r13], 0xa
	je	.label_1145
	inc	r13
	cmp	r13, rbx
	jb	.label_1147
	jmp	.label_1150
	.section	.text
	.align	32
	#Procedure 0x408c74
	.globl sub_408c74
	.type sub_408c74, @function
sub_408c74:

	nop	word ptr cs:[rax + rax]
.label_1145:
	inc	qword ptr [rip + total_line_count]
	lea	rdx, [r13 + 1]
	mov	rax, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rax]
	cmp	rdx, rax
	mov	qword ptr [rsp], rdx
	jae	.label_1259
	mov	qword ptr [rsp + 0x30], rsi
	mov	qword ptr [rsp + 8], r8
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x48], r9
	mov	rbp, rax
	call	__ctype_b_loc
	mov	r9, qword ptr [rsp + 0x48]
	mov	rdi, qword ptr [rsp + 0x28]
	mov	r8, qword ptr [rsp + 8]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rax, qword ptr [rax]
	mov	rdx, qword ptr [rsp]
	nop	word ptr cs:[rax + rax]
.label_1201:
	movzx	ecx, byte ptr [rdx]
	test	byte ptr [rax + rcx*2 + 1], 0x20
	jne	.label_1259
	inc	rdx
	cmp	rdx, rbp
	jb	.label_1201
.label_1259:
	cmp	rdx, rbx
	jb	.label_1209
	inc	r13
	mov	qword ptr [rsp], r13
	jmp	.label_1136
.label_1129:
	cmp	byte ptr [rip + input_reference],  1
	jne	.label_1217
	mov	rax, qword ptr [rsp]
	sub	rax, rbx
	mov	qword ptr [r8 + rdi + 0x20], rax
	mov	al, 1
	cmp	rbp, qword ptr [rip + reference_max_width]
	mov	rcx, rbp
	mov	rbp, qword ptr [rsp + 8]
	jle	.label_1220
	mov	qword ptr [rip + reference_max_width],  rcx
	jmp	.label_1220
.label_1217:
	mov	rbp, qword ptr [rsp + 8]
	mov	rax, qword ptr [rsp + 0x10]
	jmp	.label_1153
.label_1150:
	mov	rdx, r13
.label_1136:
	mov	rax, qword ptr [rip + total_line_count]
	mov	qword ptr [r8 + rdi + 0x20], rax
	mov	al, byte ptr [rip + input_reference]
	mov	r13, qword ptr [rsp + 0x18]
	mov	rbp, rdx
.label_1220:
	test	al, 1
	je	.label_1243
	mov	rax, qword ptr [rsp + 0x10]
	cmp	qword ptr [rsp], rax
	jne	.label_1153
	mov	qword ptr [rsp + 8], rbp
	mov	qword ptr [rsp + 0x18], r13
	cmp	rax, r14
	mov	r13, rax
	mov	qword ptr [rsp + 0x30], rsi
	mov	qword ptr [rsp + 0x28], rdi
	jae	.label_1210
	mov	rbp, r8
	mov	r13, r9
	call	__ctype_b_loc
	mov	r9, r13
	mov	rdi, qword ptr [rsp + 0x28]
	mov	r8, rbp
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rax, qword ptr [rax]
	mov	r13, qword ptr [rsp + 0x10]
	nop	word ptr [rax + rax]
.label_1214:
	movzx	ecx, byte ptr [r13]
	test	byte ptr [rax + rcx*2 + 1], 0x20
	jne	.label_1210
	inc	r13
	cmp	r13, r14
	jb	.label_1214
.label_1210:
	cmp	r13, r14
	jae	.label_1324
	mov	rbp, r8
	mov	qword ptr [rsp + 0x48], r9
	call	__ctype_b_loc
	mov	r9, qword ptr [rsp + 0x48]
	mov	rdi, qword ptr [rsp + 0x28]
	mov	r8, rbp
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rax, qword ptr [rax]
	nop	dword ptr [rax + rax]
.label_1137:
	movzx	ecx, byte ptr [r13]
	test	byte ptr [rax + rcx*2 + 1], 0x20
	je	.label_1324
	inc	r13
	cmp	r13, r14
	jb	.label_1137
.label_1324:
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rsp], rax
	mov	rax, r13
	mov	r13, qword ptr [rsp + 0x18]
	mov	rbp, qword ptr [rsp + 8]
	jmp	.label_1153
.label_1243:
	mov	rax, qword ptr [rsp + 0x10]
	jmp	.label_1153
	.section	.text
	.align	32
	#Procedure 0x408e39
	.globl sub_408e39
	.type sub_408e39, @function
sub_408e39:

	nop	dword ptr [rax]
.label_1424:
	mov	r12, rbp
	mov	rax, qword ptr [rsp + 0x20]
	mov	rbx, qword ptr [rax]
	mov	rax, qword ptr [rsp + 0x40]
	cmp	rax, rbx
	mov	rbp, qword ptr [rsp]
	jb	.label_1340
.label_1325:
	mov	rax, qword ptr [rip + total_line_count]
	inc	rax
	mov	qword ptr [rip + total_line_count],  rax
	mov	rcx, qword ptr [rip + file_line_count]
	mov	qword ptr [rcx + r13*8], rax
	inc	r13
	movsxd	rax, dword ptr [rip + number_input_files]
	cmp	r13, rax
	jl	.label_1349
	mov	rsi, qword ptr [rip + number_of_occurs.0]
	test	rsi, rsi
	je	.label_1224
	mov	rdi, qword ptr [rip + occurs_table.0]
	mov	edx, 0x30
	mov	ecx, OFFSET FLAT:compare_occurs
	call	qsort
.label_1224:
	cmp	byte ptr [rip + auto_reference],  1
	jne	.label_1372
	mov	qword ptr [rip + reference_max_width],  0
	xor	edi, edi
	cmp	dword ptr [rip + number_input_files],  0
	je	.label_1376
	lea	r14, [rsp + 0x50]
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_1437:
	mov	rax, qword ptr [rip + file_line_count]
	mov	r8, qword ptr [rax + rbp*8]
	inc	r8
	test	rbp, rbp
	je	.label_1378
	sub	r8, qword ptr [rax + rbp*8 - 8]
.label_1378:
	mov	esi, 1
	mov	edx, 0x15
	mov	ecx, OFFSET FLAT:label_1409
	xor	eax, eax
	mov	rdi, r14
	call	__sprintf_chk
	movsxd	rbx, eax
	mov	rax, qword ptr [rip + input_file_name]
	mov	rdi, qword ptr [rax + rbp*8]
	test	rdi, rdi
	je	.label_1423
	call	strlen
	add	rbx, rax
.label_1423:
	mov	rdi, qword ptr [rip + reference_max_width]
	cmp	rbx, rdi
	jle	.label_1428
	mov	qword ptr [rip + reference_max_width],  rbx
	mov	rdi, rbx
.label_1428:
	inc	rbp
	movsxd	rax, dword ptr [rip + number_input_files]
	cmp	rbp, rax
	jb	.label_1437
.label_1376:
	lea	rax, [rdi + 1]
	mov	qword ptr [rip + reference_max_width],  rax
	add	rdi, 2
	call	xmalloc
	mov	qword ptr [rip + reference],  rax
	mov	al, byte ptr [rip + auto_reference]
	test	al, al
	jne	.label_1144
.label_1372:
	cmp	byte ptr [rip + input_reference],  1
	jne	.label_1459
.label_1144:
	mov	al, byte ptr [rip + right_reference]
	test	al, al
	je	.label_1462
.label_1459:
	mov	rax, qword ptr [rip + line_width]
	jmp	.label_1467
.label_1462:
	mov	rcx, qword ptr [rip + gap_size]
	mov	rax, qword ptr [rip + line_width]
	add	rcx, qword ptr [rip + reference_max_width]
	sub	rax, rcx
	mov	qword ptr [rip + line_width],  rax
.label_1467:
	test	rax, rax
	jns	.label_1333
	mov	qword ptr [rip + line_width],  0
	xor	eax, eax
.label_1333:
	mov	rbx, rax
	shr	rbx, 0x3f
	add	rbx, rax
	sar	rbx, 1
	mov	qword ptr [rip + half_line_width],  rbx
	mov	rbp, rbx
	sub	rbp, qword ptr [rip + gap_size]
	mov	qword ptr [rip + before_max_width],  rbp
	mov	qword ptr [rip + keyafter_max_width],  rbx
	mov	rdi, qword ptr [rip + truncation_string]
	test	rdi, rdi
	je	.label_1364
	cmp	byte ptr [rdi], 0
	je	.label_1364
	call	strlen
	mov	qword ptr [rip + truncation_string_length],  rax
	jmp	.label_1117
.label_1364:
	mov	qword ptr [rip + truncation_string],  0
	mov	rax, qword ptr [rip + truncation_string_length]
.label_1117:
	mov	cl, byte ptr [rip + gnu_extensions]
	add	rax, rax
	test	cl, cl
	je	.label_1187
	or	rax, 1
	jmp	.label_1128
.label_1187:
	xor	ecx, ecx
	sub	rbp, rax
	cmovns	rcx, rbp
	mov	qword ptr [rip + before_max_width],  rcx
.label_1128:
	sub	rbx, rax
	mov	qword ptr [rip + keyafter_max_width],  rbx
	call	__ctype_b_loc
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rax]
	lea	rcx, [rax + 0x1fe]
	mov	edx, OFFSET FLAT:edited_flag
	cmp	rcx, rdx
	jb	.label_1140
	mov	ecx, OFFSET FLAT:label_1148
	cmp	rax, rcx
	ja	.label_1140
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_1163:
	movzx	edx, word ptr [rax + rcx*2]
	shr	edx, 0xd
	and	dl, 1
	mov	byte ptr [rcx + edited_flag],  dl
	movzx	edx, word ptr [rax + rcx*2 + 2]
	shr	edx, 0xd
	and	dl, 1
	mov	byte ptr [rcx + label_1160],  dl
	movzx	edx, word ptr [rax + rcx*2 + 4]
	shr	edx, 0xd
	and	dl, 1
	mov	byte ptr [rcx + label_1161],  dl
	movzx	edx, word ptr [rax + rcx*2 + 6]
	shr	edx, 0xd
	and	dl, 1
	mov	byte ptr [rcx + label_1162],  dl
	add	rcx, 4
	cmp	rcx, 0x100
	jne	.label_1163
	jmp	.label_1194
.label_1140:
	xor	ecx, ecx
	movdqa	xmm0, xmmword ptr [rip + label_1195]
	pand	xmm0, xmmword ptr [rip + label_1196]
	nop	word ptr [rax + rax]
.label_1207:
	movdqu	xmm1, xmmword ptr [rax + rcx*2]
	movdqu	xmm2, xmmword ptr [rax + rcx*2 + 0x10]
	psrlw	xmm1, 0xd
	psrlw	xmm2, 0xd
	pand	xmm1, xmm0
	packuswb	xmm1, xmm1
	movq	qword ptr [rcx + edited_flag],  xmm1
	pand	xmm2, xmm0
	packuswb	xmm2, xmm2
	movq	qword ptr [rcx + label_1204],  xmm2
	movdqu	xmm1, xmmword ptr [rax + rcx*2 + 0x20]
	movdqu	xmm2, xmmword ptr [rax + rcx*2 + 0x30]
	psrlw	xmm1, 0xd
	psrlw	xmm2, 0xd
	pand	xmm1, xmm0
	packuswb	xmm1, xmm1
	movq	qword ptr [rcx + label_1205],  xmm1
	pand	xmm2, xmm0
	packuswb	xmm2, xmm2
	movq	qword ptr [rcx + label_1206],  xmm2
	add	rcx, 0x20
	cmp	rcx, 0x100
	jne	.label_1207
.label_1194:
	mov	byte ptr [rip + label_1246],  1
	mov	eax, dword ptr [rip + output_format]
	cmp	eax, 2
	je	.label_1247
	cmp	eax, 3
	jne	.label_1255
	mov	byte ptr [rip + label_1260],  1
	mov	byte ptr [rip + label_1261],  1
	mov	byte ptr [rip + label_1262],  1
	mov	byte ptr [rip + label_1263],  1
	mov	dword ptr [rip + label_1264],  0x1010101
	movdqu	xmm2, xmmword ptr [rip + label_1265]
	pxor	xmm0, xmm0
	pcmpeqb	xmm2, xmm0
	movdqa	xmm1, xmmword ptr [rip + label_278]
	pandn	xmm2, xmm1
	movdqa	xmmword ptr [rip + label_1266],  xmm2
	movdqu	xmm2, xmmword ptr [rip + label_1267]
	pcmpeqb	xmm2, xmm0
	pandn	xmm2, xmm1
	movdqa	xmmword ptr [rip + label_1268],  xmm2
	movdqu	xmm2, xmmword ptr [rip + label_1269]
	pcmpeqb	xmm2, xmm0
	pandn	xmm2, xmm1
	movdqa	xmmword ptr [rip + label_1270],  xmm2
	movdqu	xmm2, xmmword ptr [rip + label_1271]
	pcmpeqb	xmm2, xmm0
	pandn	xmm2, xmm1
	movdqa	xmmword ptr [rip + label_1272],  xmm2
	movdqu	xmm2, xmmword ptr [rip + label_1273]
	pcmpeqb	xmm2, xmm0
	pandn	xmm2, xmm1
	movdqa	xmmword ptr [rip + label_1274],  xmm2
	movdqu	xmm2, xmmword ptr [rip + label_1275]
	pcmpeqb	xmm2, xmm0
	pandn	xmm2, xmm1
	movdqa	xmmword ptr [rip + label_1276],  xmm2
	movdqu	xmm2, xmmword ptr [rip + label_1277]
	pcmpeqb	xmm2, xmm0
	pandn	xmm2, xmm1
	movdqa	xmmword ptr [rip + label_1278],  xmm2
	movdqu	xmm2, xmmword ptr [rip + label_1279]
	pcmpeqb	xmm2, xmm0
	pandn	xmm2, xmm1
	movdqa	xmmword ptr [rip + label_1280],  xmm2
	jmp	.label_1255
.label_1247:
	mov	byte ptr [rip + label_1359],  1
.label_1255:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rip + tail],  xmm0
	mov	byte ptr [rip + tail_truncation],  0
	movdqu	xmmword ptr [rip + head],  xmm0
	mov	byte ptr [rip + head_truncation],  0
	cmp	qword ptr [rip + number_of_occurs.0],  0
	jle	.label_1361
	mov	r14, qword ptr [rip + occurs_table.0]
	xor	r12d, r12d
	jmp	.label_1239
.label_1480:
	mov	al, byte ptr [rip + gnu_extensions]
	test	al, al
	je	.label_1380
	movdqa	xmm0, xmmword ptr [rip + label_278]
	movdqa	xmmword ptr [rip + label_1383],  xmm0
	movdqa	xmmword ptr [rip + label_1384],  xmm0
	movdqa	xmmword ptr [rip + label_1385],  xmm0
	movdqa	xmmword ptr [rip + label_1386],  xmm0
	movdqa	xmmword ptr [rip + label_1387],  xmm0
	movdqa	xmmword ptr [rip + label_1388],  xmm0
	movdqa	xmmword ptr [rip + label_1389],  xmm0
	movdqa	xmmword ptr [rip + label_1390],  xmm0
	movdqa	xmmword ptr [rip + label_1391],  xmm0
	movdqa	xmmword ptr [rip + label_1392],  xmm0
	movdqa	xmmword ptr [rip + label_1393],  xmm0
	movdqa	xmmword ptr [rip + label_1394],  xmm0
	movdqa	xmmword ptr [rip + label_1395],  xmm0
	movdqa	xmmword ptr [rip + label_1178],  xmm0
	movdqa	xmmword ptr [rip + label_1396],  xmm0
	movdqa	xmmword ptr [rip + word_fastmap],  xmm0
	mov	byte ptr [rip + label_1178],  0
	mov	word ptr [rip + label_1179],  0
	jmp	.label_1373
.label_1380:
	xor	ebx, ebx
	call	__ctype_b_loc
	nop	word ptr cs:[rax + rax]
.label_1291:
	mov	rcx, qword ptr [rax]
	movzx	ecx, word ptr [rcx + rbx*2]
	shr	ecx, 0xa
	and	cl, 1
	mov	byte ptr [rbx + word_fastmap],  cl
	mov	rcx, qword ptr [rax]
	movzx	ecx, word ptr [rcx + rbx*2 + 2]
	shr	ecx, 0xa
	and	cl, 1
	mov	byte ptr [rbx + label_1288],  cl
	mov	rcx, qword ptr [rax]
	movzx	ecx, word ptr [rcx + rbx*2 + 4]
	shr	ecx, 0xa
	and	cl, 1
	mov	byte ptr [rbx + label_1289],  cl
	mov	rcx, qword ptr [rax]
	movzx	ecx, word ptr [rcx + rbx*2 + 6]
	shr	ecx, 0xa
	and	cl, 1
	mov	byte ptr [rbx + label_1290],  cl
	add	rbx, 4
	cmp	rbx, 0x100
	jne	.label_1291
	jmp	.label_1373
.label_1323:
	mov	esi, 0x20
	call	__overflow
	jmp	.label_1491
	.section	.text
	.align	32
	#Procedure 0x4093ed
	.globl sub_4093ed
	.type sub_4093ed, @function
sub_4093ed:

	nop	dword ptr [rax]
.label_1120:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_1323
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x20
.label_1491:
	dec	rbx
	cmp	rbx, 1
	jg	.label_1120
	jmp	.label_1159
.label_1350:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_1127
.label_1258:
	mov	esi, 0x7b
	call	__overflow
	jmp	.label_1233
.label_1180:
	mov	esi, 0x7d
	call	__overflow
	jmp	.label_1283
.label_1458:
	mov	esi, 0x22
	call	__overflow
	jmp	.label_1139
.label_1412:
	mov	esi, 0x22
	call	__overflow
	jmp	.label_1341
.label_1132:
	mov	esi, 0x22
	call	__overflow
	jmp	.label_1368
.label_1405:
	mov	esi, 0x22
	call	__overflow
	jmp	.label_1402
.label_1343:
	mov	esi, 0x7b
	call	__overflow
	jmp	.label_1168
.label_1415:
	mov	esi, 0x7d
	call	__overflow
	jmp	.label_1115
.label_1232:
	mov	esi, 0x22
	call	__overflow
	jmp	.label_1115
.label_1436:
	mov	esi, 0x3a
	call	__overflow
	jmp	.label_1183
	.section	.text
	.align	32
	#Procedure 0x4094bf
	.globl sub_4094bf
	.type sub_4094bf, @function
sub_4094bf:

	nop	
.label_1239:
	mov	qword ptr [rsp + 0x40], r12
	mov	r8, qword ptr [r14]
	mov	qword ptr [rip + keyafter],  r8
	mov	rcx, qword ptr [r14 + 8]
	lea	rbx, [r8 + rcx]
	mov	qword ptr [rip + label_1118],  rbx
	mov	rax, qword ptr [r14 + 0x10]
	add	rax, r8
	mov	qword ptr [rsp + 0x10], rax
	mov	rdx, qword ptr [r14 + 0x18]
	lea	r15, [r8 + rdx]
	movsxd	rsi, dword ptr [r14 + 0x28]
	mov	rdi, qword ptr [rip + text_buffers]
	shl	rsi, 4
	mov	r13, qword ptr [rdi + rsi]
	mov	r12, qword ptr [rdi + rsi + 8]
	cmp	rcx, rdx
	jl	.label_1186
	jmp	.label_1221
	.section	.text
	.align	32
	#Procedure 0x409514
	.globl sub_409514
	.type sub_409514, @function
sub_409514:

	nop	word ptr cs:[rax + rax]
.label_1251:
	movzx	ecx, byte ptr [rbx]
	cmp	byte ptr [rcx + word_fastmap],  0
	je	.label_1227
	cmp	rbx, r15
	jae	.label_1231
	inc	rbx
	mov	rcx, rbx
	nop	dword ptr [rax + rax]
.label_1237:
	mov	rbx, rcx
	cmp	rbx, r15
	jae	.label_1231
	movzx	edx, byte ptr [rbx]
	lea	rcx, [rbx + 1]
	cmp	byte ptr [rdx + word_fastmap],  0
	jne	.label_1237
	jmp	.label_1231
.label_1227:
	inc	rbx
	jmp	.label_1231
	.section	.text
	.align	32
	#Procedure 0x40955f
	.globl sub_40955f
	.type sub_40955f, @function
sub_40955f:

	nop	
.label_1186:
	mov	rcx, qword ptr [rip + keyafter_max_width]
	add	rcx, r8
	cmp	rbx, rcx
	ja	.label_1221
	mov	qword ptr [rip + label_1118],  rbx
	cmp	qword ptr [rip + word_regex],  0
	je	.label_1251
	mov	rdx, r15
	sub	rdx, rbx
	mov	edi, OFFSET FLAT:label_1256
	xor	ecx, ecx
	xor	r8d, r8d
	mov	rsi, rbx
	call	rpl_re_match
	cmp	rax, -2
	je	.label_1218
	cmp	rax, -1
	mov	ecx, 1
	cmove	rax, rcx
	add	rbx, rax
	mov	r8, qword ptr [rip + keyafter]
.label_1231:
	cmp	rbx, r15
	jb	.label_1186
.label_1221:
	mov	rcx, qword ptr [rip + keyafter_max_width]
	add	rcx, r8
	cmp	rbx, rcx
	jbe	.label_1300
	mov	rbx, qword ptr [rip + label_1118]
	jmp	.label_1309
	.section	.text
	.align	32
	#Procedure 0x4095d6
	.globl sub_4095d6
	.type sub_4095d6, @function
sub_4095d6:

	nop	word ptr cs:[rax + rax]
.label_1300:
	mov	qword ptr [rip + label_1118],  rbx
.label_1309:
	cmp	rbx, r15
	sbb	cl, cl
	cmp	qword ptr [rip + truncation_string],  0
	setne	dl
	and	dl, cl
	mov	byte ptr [rip + keyafter_truncation],  dl
	cmp	rbx, r8
	jbe	.label_1146
	mov	rax, qword ptr [rsp]
	mov	rcx, qword ptr [rax]
	dec	rbx
	nop	
.label_1329:
	movzx	edx, byte ptr [rbx]
	test	byte ptr [rcx + rdx*2 + 1], 0x20
	je	.label_1146
	mov	qword ptr [rip + label_1118],  rbx
	cmp	rbx, r8
	lea	rbx, [rbx - 1]
	ja	.label_1329
.label_1146:
	mov	rbx, qword ptr [r14 + 0x10]
	mov	rcx, rbx
	neg	rcx
	mov	rdx, qword ptr [rip + maximum_word_length]
	add	rdx, qword ptr [rip + half_line_width]
	cmp	rdx, rcx
	jge	.label_1334
	mov	rbx, r8
	sub	rbx, rdx
	cmp	qword ptr [rip + word_regex],  0
	je	.label_1342
	mov	edi, OFFSET FLAT:label_1256
	xor	ecx, ecx
	xor	r8d, r8d
	mov	rsi, rbx
	call	rpl_re_match
	cmp	rax, -2
	je	.label_1218
	cmp	rax, -1
	mov	ecx, 1
	cmovne	rcx, rax
	add	rbx, rcx
	mov	r8, qword ptr [rip + keyafter]
	jmp	.label_1241
.label_1334:
	add	rbx, r8
.label_1241:
	mov	qword ptr [rip + before],  rbx
	mov	qword ptr [rip + label_1254],  r8
	cmp	r8, rbx
	mov	qword ptr [rsp + 0x20], r14
	jbe	.label_1321
	mov	rax, qword ptr [rsp]
	mov	rsi, qword ptr [rax]
	lea	rdx, [r8 - 1]
	nop	word ptr cs:[rax + rax]
.label_1382:
	mov	rcx, rdx
	movzx	edx, byte ptr [rcx]
	test	byte ptr [rsi + rdx*2 + 1], 0x20
	je	.label_1435
	mov	qword ptr [rip + label_1254],  rcx
	lea	rdx, [rcx - 1]
	cmp	rcx, rbx
	mov	r8, rcx
	ja	.label_1382
	inc	rdx
	mov	r8, rcx
	jmp	.label_1406
	.section	.text
	.align	32
	#Procedure 0x4096e8
	.globl sub_4096e8
	.type sub_4096e8, @function
sub_4096e8:

	nop	dword ptr [rax + rax]
.label_1321:
	mov	rdx, r8
	jmp	.label_1406
	.section	.text
	.align	32
	#Procedure 0x4096f5
	.globl sub_4096f5
	.type sub_4096f5, @function
sub_4096f5:

	nop	word ptr cs:[rax + rax]
.label_1435:
	inc	rcx
	mov	rdx, rcx
.label_1406:
	mov	r14, qword ptr [rip + before_max_width]
	lea	rcx, [rbx + r14]
	cmp	rcx, rdx
	jae	.label_1414
	mov	rcx, rbx
	mov	rsi, rbx
.label_1481:
	cmp	qword ptr [rip + word_regex],  0
	je	.label_1425
	sub	rdx, rsi
	mov	edi, OFFSET FLAT:label_1256
	xor	ecx, ecx
	xor	r8d, r8d
	call	rpl_re_match
	cmp	rax, -2
	je	.label_1218
	cmp	rax, -1
	mov	ecx, 1
	cmovne	rcx, rax
	add	rcx, qword ptr [rip + before]
	mov	qword ptr [rip + before],  rcx
	mov	r14, qword ptr [rip + before_max_width]
	mov	r8, qword ptr [rip + label_1254]
	mov	rdx, r8
	mov	rsi, rcx
	jmp	.label_1439
	.section	.text
	.align	32
	#Procedure 0x409777
	.globl sub_409777
	.type sub_409777, @function
sub_409777:

	nop	word ptr [rax + rax]
.label_1425:
	movzx	edi, byte ptr [rsi]
	cmp	byte ptr [rdi + word_fastmap],  0
	je	.label_1302
	cmp	rsi, rdx
	jae	.label_1439
	inc	rsi
	mov	rcx, rsi
	nop	word ptr [rax + rax]
.label_1476:
	mov	rsi, rcx
	mov	qword ptr [rip + before],  rsi
	cmp	rsi, rdx
	jae	.label_1301
	movzx	edi, byte ptr [rsi]
	lea	rcx, [rsi + 1]
	cmp	byte ptr [rdi + word_fastmap],  0
	jne	.label_1476
	dec	rcx
	jmp	.label_1439
.label_1302:
	inc	rsi
	mov	qword ptr [rip + before],  rsi
.label_1301:
	mov	rcx, rsi
.label_1439:
	lea	rdi, [rsi + r14]
	cmp	rdi, rdx
	jb	.label_1481
	jmp	.label_1485
.label_1414:
	mov	rcx, rbx
	mov	rsi, rbx
.label_1485:
	cmp	qword ptr [rip + truncation_string],  0
	je	.label_1488
	mov	rdi, rsi
	nop	word ptr cs:[rax + rax]
.label_1130:
	mov	rdx, rdi
	cmp	rdx, r13
	jbe	.label_1189
	lea	rdi, [rdx - 1]
	movzx	ebp, byte ptr [rdx - 1]
	mov	rax, qword ptr [rsp]
	mov	rax, qword ptr [rax]
	test	byte ptr [rax + rbp*2 + 1], 0x20
	jne	.label_1130
.label_1189:
	cmp	qword ptr [rsp + 0x10], rdx
	setb	dl
	jmp	.label_1125
	.section	.text
	.align	32
	#Procedure 0x409828
	.globl sub_409828
	.type sub_409828, @function
sub_409828:

	nop	dword ptr [rax + rax]
.label_1488:
	xor	edx, edx
.label_1125:
	mov	byte ptr [rip + before_truncation],  dl
	cmp	rsi, r12
	jae	.label_1131
	mov	rax, qword ptr [rsp]
	mov	rdx, qword ptr [rax]
	nop	word ptr cs:[rax + rax]
.label_1192:
	movzx	eax, byte ptr [rsi]
	test	byte ptr [rdx + rax*2 + 1], 0x20
	je	.label_1131
	inc	rsi
	mov	qword ptr [rip + before],  rsi
	cmp	rsi, r12
	mov	rcx, rsi
	jb	.label_1192
.label_1131:
	sub	r14, r8
	add	r14, rcx
	sub	r14, qword ptr [rip + gap_size]
	test	r14, r14
	jle	.label_1149
	mov	rax, qword ptr [rip + label_1118]
	mov	qword ptr [rip + tail],  rax
	cmp	rax, r12
	jae	.label_1165
	mov	rcx, qword ptr [rsp]
	mov	rcx, qword ptr [rcx]
	nop	dword ptr [rax]
.label_1177:
	movzx	edx, byte ptr [rax]
	test	byte ptr [rcx + rdx*2 + 1], 0x20
	je	.label_1165
	inc	rax
	mov	qword ptr [rip + tail],  rax
	cmp	rax, r12
	jb	.label_1177
.label_1165:
	mov	qword ptr [rip + label_1222],  rax
	mov	rbp, rax
	cmp	rax, r15
	jb	.label_1244
	jmp	.label_1191
	.section	.text
	.align	32
	#Procedure 0x4098cd
	.globl sub_4098cd
	.type sub_4098cd, @function
sub_4098cd:

	nop	dword ptr [rax]
.label_1223:
	movzx	ecx, byte ptr [rbp]
	cmp	byte ptr [rcx + word_fastmap],  0
	je	.label_1199
	cmp	rbp, r15
	jae	.label_1198
	inc	rbp
	mov	rcx, rbp
	nop	dword ptr [rax + rax]
.label_1211:
	mov	rbp, rcx
	cmp	rbp, r15
	jae	.label_1198
	movzx	edx, byte ptr [rbp]
	lea	rcx, [rbp + 1]
	cmp	byte ptr [rdx + word_fastmap],  0
	jne	.label_1211
	jmp	.label_1198
.label_1199:
	inc	rbp
	jmp	.label_1198
.label_1244:
	mov	qword ptr [rip + label_1222],  rbp
	cmp	qword ptr [rip + word_regex],  0
	je	.label_1223
	mov	rdx, r15
	sub	rdx, rbp
	mov	edi, OFFSET FLAT:label_1256
	xor	ecx, ecx
	xor	r8d, r8d
	mov	rsi, rbp
	call	rpl_re_match
	cmp	rax, -2
	je	.label_1218
	cmp	rax, -1
	mov	ecx, 1
	cmovne	rcx, rax
	add	rbp, rcx
	mov	rax, qword ptr [rip + tail]
.label_1198:
	lea	rcx, [rax + r14]
	cmp	rbp, r15
	jae	.label_1242
	cmp	rbp, rcx
	jb	.label_1244
.label_1242:
	cmp	rbp, rcx
	jae	.label_1151
.label_1191:
	mov	r14, qword ptr [rsp + 0x20]
	mov	qword ptr [rip + label_1222],  rbp
	jmp	.label_1249
	.section	.text
	.align	32
	#Procedure 0x40997b
	.globl sub_40997b
	.type sub_40997b, @function
sub_40997b:

	nop	dword ptr [rax + rax]
.label_1149:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rip + tail],  xmm0
	mov	byte ptr [rip + tail_truncation],  0
	mov	r14, qword ptr [rsp + 0x20]
	jmp	.label_1156
.label_1342:
	movzx	ecx, byte ptr [rbx]
	cmp	byte ptr [rcx + word_fastmap],  0
	je	.label_1286
	neg	rdx
	jns	.label_1241
	lea	rcx, [r8 + rdx + 1]
	nop	dword ptr [rax + rax]
.label_1308:
	mov	rbx, rcx
	cmp	rbx, r8
	jae	.label_1241
	movzx	edx, byte ptr [rbx]
	lea	rcx, [rbx + 1]
	cmp	byte ptr [rdx + word_fastmap],  0
	jne	.label_1308
	jmp	.label_1241
.label_1151:
	mov	rbp, qword ptr [rip + label_1222]
	mov	r14, qword ptr [rsp + 0x20]
.label_1249:
	cmp	rbp, rax
	jbe	.label_1319
	mov	byte ptr [rip + keyafter_truncation],  0
	cmp	rbp, r15
	sbb	dl, dl
	cmp	qword ptr [rip + truncation_string],  0
	setne	cl
	and	cl, dl
	jmp	.label_1320
	.section	.text
	.align	32
	#Procedure 0x409a0d
	.globl sub_409a0d
	.type sub_409a0d, @function
sub_409a0d:

	nop	dword ptr [rax]
.label_1319:
	xor	ecx, ecx
.label_1320:
	mov	byte ptr [rip + tail_truncation],  cl
	cmp	rbp, rax
	jbe	.label_1156
	mov	rcx, qword ptr [rsp]
	mov	rcx, qword ptr [rcx]
	dec	rbp
	nop	word ptr [rax + rax]
.label_1339:
	movzx	edx, byte ptr [rbp]
	test	byte ptr [rcx + rdx*2 + 1], 0x20
	je	.label_1156
	mov	qword ptr [rip + label_1222],  rbp
	cmp	rbp, rax
	lea	rbp, [rbp - 1]
	ja	.label_1339
	nop	dword ptr [rax + rax]
.label_1156:
	mov	rbp, qword ptr [rip + keyafter_max_width]
	sub	rbp, qword ptr [rip + label_1118]
	add	rbp, qword ptr [rip + keyafter]
	sub	rbp, qword ptr [rip + gap_size]
	test	rbp, rbp
	jle	.label_1316
	mov	rdx, qword ptr [rip + before]
	mov	qword ptr [rip + label_1124],  rdx
	cmp	rdx, r13
	jbe	.label_1356
	mov	rax, qword ptr [rsp]
	mov	rax, qword ptr [rax]
	dec	rdx
	nop	word ptr cs:[rax + rax]
.label_1190:
	movzx	ecx, byte ptr [rdx]
	test	byte ptr [rax + rcx*2 + 1], 0x20
	je	.label_1472
	mov	qword ptr [rip + label_1124],  rdx
	cmp	rdx, r13
	lea	rdx, [rdx - 1]
	ja	.label_1190
.label_1472:
	inc	rdx
.label_1356:
	mov	qword ptr [rip + head],  rbx
	lea	rax, [rbx + rbp]
	cmp	rax, rdx
	mov	r12, qword ptr [rsp + 0x40]
	jb	.label_1143
	jmp	.label_1397
	.section	.text
	.align	32
	#Procedure 0x409ad7
	.globl sub_409ad7
	.type sub_409ad7, @function
sub_409ad7:

	nop	word ptr [rax + rax]
.label_1426:
	movzx	eax, byte ptr [rbx]
	cmp	byte ptr [rax + word_fastmap],  0
	je	.label_1477
	cmp	rbx, rdx
	jae	.label_1313
	inc	rbx
	mov	rax, rbx
	nop	dword ptr [rax + rax]
.label_1418:
	mov	rbx, rax
	mov	qword ptr [rip + head],  rbx
	cmp	rbx, rdx
	jae	.label_1313
	movzx	ecx, byte ptr [rbx]
	lea	rax, [rbx + 1]
	cmp	byte ptr [rcx + word_fastmap],  0
	jne	.label_1418
	jmp	.label_1313
.label_1477:
	inc	rbx
	mov	qword ptr [rip + head],  rbx
	jmp	.label_1313
	.section	.text
	.align	32
	#Procedure 0x409b2d
	.globl sub_409b2d
	.type sub_409b2d, @function
sub_409b2d:

	nop	dword ptr [rax]
.label_1143:
	cmp	qword ptr [rip + word_regex],  0
	je	.label_1426
	sub	rdx, rbx
	mov	edi, OFFSET FLAT:label_1256
	xor	ecx, ecx
	xor	r8d, r8d
	mov	rsi, rbx
	call	rpl_re_match
	cmp	rax, -2
	je	.label_1441
	cmp	rax, -1
	mov	ebx, 1
	cmovne	rbx, rax
	add	rbx, qword ptr [rip + head]
	mov	qword ptr [rip + head],  rbx
	mov	rdx, qword ptr [rip + label_1124]
.label_1313:
	lea	rax, [rbx + rbp]
	cmp	rax, rdx
	jb	.label_1143
.label_1397:
	cmp	rdx, rbx
	jbe	.label_1464
	mov	byte ptr [rip + before_truncation],  0
	cmp	qword ptr [rsp + 0x10], rbx
	sbb	cl, cl
	cmp	qword ptr [rip + truncation_string],  0
	setne	al
	and	al, cl
	jmp	.label_1235
	.section	.text
	.align	32
	#Procedure 0x409ba6
	.globl sub_409ba6
	.type sub_409ba6, @function
sub_409ba6:

	nop	word ptr cs:[rax + rax]
.label_1316:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rip + head],  xmm0
	mov	byte ptr [rip + head_truncation],  0
	mov	r12, qword ptr [rsp + 0x40]
	jmp	.label_1188
	.section	.text
	.align	32
	#Procedure 0x409bca
	.globl sub_409bca
	.type sub_409bca, @function
sub_409bca:

	nop	word ptr [rax + rax]
.label_1464:
	xor	eax, eax
.label_1235:
	mov	byte ptr [rip + head_truncation],  al
	cmp	rbx, rdx
	jae	.label_1188
	mov	rax, qword ptr [rsp]
	mov	rax, qword ptr [rax]
	nop	word ptr cs:[rax + rax]
.label_1495:
	movzx	ecx, byte ptr [rbx]
	test	byte ptr [rax + rcx*2 + 1], 0x20
	je	.label_1188
	inc	rbx
	mov	qword ptr [rip + head],  rbx
	cmp	rbx, rdx
	jb	.label_1495
	nop	dword ptr [rax]
.label_1188:
	cmp	byte ptr [rip + auto_reference],  1
	jne	.label_1122
	movsxd	rax, dword ptr [r14 + 0x28]
	mov	rcx, qword ptr [rip + input_file_name]
	mov	rsi, qword ptr [rcx + rax*8]
	test	rsi, rsi
	mov	ecx, OFFSET FLAT:label_694
	cmove	rsi, rcx
	mov	rbx, qword ptr [r14 + 0x20]
	inc	rbx
	test	rax, rax
	jle	.label_1482
	mov	rcx, qword ptr [rip + file_line_count]
	sub	rbx, qword ptr [rcx + rax*8 - 8]
.label_1482:
	mov	rdi, qword ptr [rip + reference]
	call	stpcpy
	mov	rbp, rax
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_1142
	xor	eax, eax
	mov	rdi, rbp
	mov	r8, rbx
	call	__sprintf_chk
	cdqe	
	add	rax, rbp
	mov	qword ptr [rip + label_1154],  rax
	jmp	.label_1155
	.section	.text
	.align	32
	#Procedure 0x409c87
	.globl sub_409c87
	.type sub_409c87, @function
sub_409c87:

	nop	word ptr [rax + rax]
.label_1122:
	cmp	byte ptr [rip + input_reference],  1
	jne	.label_1155
	mov	rax, qword ptr [rip + keyafter]
	add	rax, qword ptr [r14 + 0x20]
	mov	qword ptr [rip + reference],  rax
	mov	qword ptr [rip + label_1154],  rax
	cmp	rax, r15
	jae	.label_1155
	mov	rcx, qword ptr [rsp]
	mov	rcx, qword ptr [rcx]
	nop	
.label_1185:
	movzx	edx, byte ptr [rax]
	test	byte ptr [rcx + rdx*2 + 1], 0x20
	jne	.label_1155
	inc	rax
	mov	qword ptr [rip + label_1154],  rax
	cmp	rax, r15
	jb	.label_1185
	nop	dword ptr [rax]
.label_1155:
	mov	eax, dword ptr [rip + output_format]
	cmp	eax, 2
	jb	.label_1429
	je	.label_1203
	cmp	eax, 3
	jne	.label_1127
	mov	rdx, qword ptr [rip + macro_name]
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_1213
	xor	eax, eax
	call	__printf_chk
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_1258
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x7b
.label_1233:
	mov	rdi, qword ptr [rip + tail]
	mov	rsi, qword ptr [rip + label_1222]
	call	print_field
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:label_1176
	call	fputs_unlocked
	mov	rdi, qword ptr [rip + before]
	mov	rsi, qword ptr [rip + label_1254]
	call	print_field
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:label_1176
	call	fputs_unlocked
	mov	rbp, qword ptr [rip + keyafter]
	mov	r15, qword ptr [rip + label_1118]
	cmp	qword ptr [rip + word_regex],  0
	je	.label_1296
	mov	rdx, r15
	sub	rdx, rbp
	mov	edi, OFFSET FLAT:label_1256
	xor	ecx, ecx
	xor	r8d, r8d
	mov	rsi, rbp
	call	rpl_re_match
	cmp	rax, -2
	je	.label_1441
	cmp	rax, -1
	mov	ebx, 1
	cmovne	rbx, rax
	add	rbx, rbp
.label_1293:
	mov	rdi, rbp
	mov	rsi, rbx
	call	print_field
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:label_1176
	call	fputs_unlocked
	mov	rdi, rbx
	mov	rsi, r15
	call	print_field
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:label_1176
	call	fputs_unlocked
	mov	rdi, qword ptr [rip + head]
	mov	rsi, qword ptr [rip + label_1124]
	call	print_field
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_1180
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x7d
.label_1283:
	mov	al, byte ptr [rip + auto_reference]
	test	al, al
	jne	.label_1184
	cmp	byte ptr [rip + input_reference],  1
	jne	.label_1115
.label_1184:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_1343
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x7b
.label_1168:
	mov	rdi, qword ptr [rip + reference]
	mov	rsi, qword ptr [rip + label_1154]
	call	print_field
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_1415
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x7d
	jmp	.label_1115
	.section	.text
	.align	32
	#Procedure 0x409ea6
	.globl sub_409ea6
	.type sub_409ea6, @function
sub_409ea6:

	nop	word ptr cs:[rax + rax]
.label_1429:
	mov	al, byte ptr [rip + right_reference]
	test	al, al
	jne	.label_1138
	mov	bl, byte ptr [rip + auto_reference]
	mov	rdi, qword ptr [rip + reference]
	mov	rsi, qword ptr [rip + label_1154]
	call	print_field
	cmp	bl, 1
	jne	.label_1399
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_1436
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x3a
.label_1183:
	mov	rax, qword ptr [rip + gap_size]
	add	rax, qword ptr [rip + reference_max_width]
	mov	rbx, qword ptr [rip + reference]
	sub	rbx, qword ptr [rip + label_1154]
	add	rbx, rax
	cmp	rbx, 2
	jge	.label_1337
	jmp	.label_1138
.label_1203:
	mov	rdx, qword ptr [rip + macro_name]
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_1430
	xor	eax, eax
	call	__printf_chk
	mov	rdi, qword ptr [rip + tail]
	mov	rsi, qword ptr [rip + label_1222]
	call	print_field
	cmp	byte ptr [rip + tail_truncation],  0
	je	.label_1250
	mov	rdi, qword ptr [rip + truncation_string]
	mov	rsi, qword ptr [rip + stdout]
	call	fputs_unlocked
.label_1250:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_1458
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x22
.label_1139:
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:label_1171
	call	fputs_unlocked
	cmp	byte ptr [rip + before_truncation],  0
	je	.label_1157
	mov	rdi, qword ptr [rip + truncation_string]
	mov	rsi, qword ptr [rip + stdout]
	call	fputs_unlocked
.label_1157:
	mov	rdi, qword ptr [rip + before]
	mov	rsi, qword ptr [rip + label_1254]
	call	print_field
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_1412
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x22
.label_1341:
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:label_1171
	call	fputs_unlocked
	mov	rdi, qword ptr [rip + keyafter]
	mov	rsi, qword ptr [rip + label_1118]
	call	print_field
	cmp	byte ptr [rip + keyafter_truncation],  0
	je	.label_1493
	mov	rdi, qword ptr [rip + truncation_string]
	mov	rsi, qword ptr [rip + stdout]
	call	fputs_unlocked
.label_1493:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_1132
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x22
.label_1368:
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:label_1171
	call	fputs_unlocked
	cmp	byte ptr [rip + head_truncation],  0
	je	.label_1352
	mov	rdi, qword ptr [rip + truncation_string]
	mov	rsi, qword ptr [rip + stdout]
	call	fputs_unlocked
.label_1352:
	mov	rdi, qword ptr [rip + head]
	mov	rsi, qword ptr [rip + label_1124]
	call	print_field
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_1405
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x22
.label_1402:
	mov	al, byte ptr [rip + auto_reference]
	test	al, al
	jne	.label_1182
	cmp	byte ptr [rip + input_reference],  1
	jne	.label_1115
.label_1182:
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:label_1171
	call	fputs_unlocked
	mov	rdi, qword ptr [rip + reference]
	mov	rsi, qword ptr [rip + label_1154]
	call	print_field
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_1232
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x22
	jmp	.label_1115
.label_1399:
	mov	rax, qword ptr [rip + reference_max_width]
	mov	rdx, qword ptr [rip + gap_size]
	lea	rdi, [rdx + rax]
	mov	rcx, qword ptr [rip + label_1154]
	mov	rbp, qword ptr [rip + reference]
	mov	rsi, rbp
	sub	rsi, rcx
	add	rsi, rdi
	test	rsi, rsi
	jle	.label_1138
	add	rbp, rdx
	lea	rbx, [rax + rbp + 1]
	sub	rbx, rcx
	jmp	.label_1197
.label_1296:
	movzx	eax, byte ptr [rbp]
	cmp	byte ptr [rax + word_fastmap],  0
	je	.label_1200
	cmp	rbp, r15
	mov	rbx, rbp
	jae	.label_1293
	lea	rax, [rbp + 1]
	nop	word ptr cs:[rax + rax]
.label_1282:
	mov	rbx, rax
	cmp	rbx, r15
	jae	.label_1293
	movzx	ecx, byte ptr [rbx]
	lea	rax, [rbx + 1]
	cmp	byte ptr [rcx + word_fastmap],  0
	jne	.label_1282
	jmp	.label_1293
.label_1286:
	inc	rbx
	jmp	.label_1241
.label_1200:
	lea	rbx, [rbp + 1]
	jmp	.label_1293
.label_1121:
	mov	esi, 0x20
	call	__overflow
	jmp	.label_1226
	.section	.text
	.align	32
	#Procedure 0x40a1be
	.globl sub_40a1be
	.type sub_40a1be, @function
sub_40a1be:

	nop	
.label_1197:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_1121
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x20
.label_1226:
	dec	rbx
	cmp	rbx, 1
	jg	.label_1197
	jmp	.label_1138
.label_1285:
	mov	esi, 0x20
	call	__overflow
	jmp	.label_1328
	.section	.text
	.align	32
	#Procedure 0x40a1f3
	.globl sub_40a1f3
	.type sub_40a1f3, @function
sub_40a1f3:

	nop	word ptr cs:[rax + rax]
.label_1337:
	dec	rbx
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_1285
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x20
.label_1328:
	cmp	rbx, 1
	jg	.label_1337
	nop	word ptr cs:[rax + rax]
.label_1138:
	mov	rdi, qword ptr [rip + tail]
	mov	rsi, qword ptr [rip + label_1222]
	cmp	rdi, rsi
	jae	.label_1375
	call	print_field
	cmp	byte ptr [rip + tail_truncation],  0
	je	.label_1295
	mov	rdi, qword ptr [rip + truncation_string]
	mov	rsi, qword ptr [rip + stdout]
	call	fputs_unlocked
	mov	cl, byte ptr [rip + tail_truncation]
	jmp	.label_1346
.label_1375:
	mov	rbp, qword ptr [rip + half_line_width]
	mov	rcx, qword ptr [rip + gap_size]
	mov	rax, qword ptr [rip + label_1254]
	mov	rsi, qword ptr [rip + before]
	xor	edi, edi
	sub	rdi, qword ptr [rip + truncation_string_length]
	cmp	byte ptr [rip + before_truncation],  0
	mov	edx, 0
	cmove	rdi, rdx
	mov	rdx, rbp
	sub	rdx, rcx
	sub	rdx, rax
	add	rdx, rsi
	add	rdx, rdi
	test	rdx, rdx
	jle	.label_1173
	add	rdi, rbp
	lea	rbx, [rsi + rdi + 1]
	sub	rbx, rcx
	sub	rbx, rax
	jmp	.label_1314
.label_1295:
	xor	ecx, ecx
.label_1346:
	mov	rdx, qword ptr [rip + half_line_width]
	mov	r9, qword ptr [rip + gap_size]
	mov	r8, qword ptr [rip + label_1254]
	mov	rsi, qword ptr [rip + before]
	xor	ebx, ebx
	sub	rbx, qword ptr [rip + truncation_string_length]
	cmp	byte ptr [rip + before_truncation],  0
	mov	ebp, 0
	cmovne	rbp, rbx
	mov	rdi, qword ptr [rip + label_1222]
	mov	rax, qword ptr [rip + tail]
	test	cl, cl
	mov	ecx, 0
	cmove	rbx, rcx
	mov	rcx, rdx
	sub	rcx, r9
	sub	rcx, r8
	add	rcx, rsi
	add	rcx, rbp
	sub	rcx, rdi
	add	rcx, rbx
	add	rcx, rax
	test	rcx, rcx
	jle	.label_1173
	add	rbp, rbx
	add	rbp, rdx
	add	rbp, rsi
	lea	rbx, [rax + rbp + 1]
	sub	rbx, r9
	sub	rbx, r8
	sub	rbx, rdi
	jmp	.label_1253
.label_1456:
	mov	esi, 0x20
	call	__overflow
	jmp	.label_1335
	.section	.text
	.align	32
	#Procedure 0x40a362
	.globl sub_40a362
	.type sub_40a362, @function
sub_40a362:

	nop	word ptr cs:[rax + rax]
.label_1314:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_1456
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x20
.label_1335:
	dec	rbx
	cmp	rbx, 1
	jg	.label_1314
	jmp	.label_1173
.label_1332:
	mov	esi, 0x20
	call	__overflow
	jmp	.label_1452
	.section	.text
	.align	32
	#Procedure 0x40a3a3
	.globl sub_40a3a3
	.type sub_40a3a3, @function
sub_40a3a3:

	nop	word ptr cs:[rax + rax]
.label_1253:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_1332
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x20
.label_1452:
	dec	rbx
	cmp	rbx, 1
	jg	.label_1253
.label_1173:
	cmp	byte ptr [rip + before_truncation],  0
	je	.label_1483
	mov	rdi, qword ptr [rip + truncation_string]
	mov	rsi, qword ptr [rip + stdout]
	call	fputs_unlocked
.label_1483:
	mov	rdi, qword ptr [rip + before]
	mov	rsi, qword ptr [rip + label_1254]
	call	print_field
	mov	rbx, qword ptr [rip + gap_size]
	test	rbx, rbx
	jle	.label_1116
	inc	rbx
	jmp	.label_1358
.label_1327:
	mov	esi, 0x20
	call	__overflow
	jmp	.label_1126
	.section	.text
	.align	32
	#Procedure 0x40a421
	.globl sub_40a421
	.type sub_40a421, @function
sub_40a421:

	nop	word ptr cs:[rax + rax]
.label_1358:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_1327
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x20
.label_1126:
	dec	rbx
	cmp	rbx, 1
	jg	.label_1358
.label_1116:
	mov	rdi, qword ptr [rip + keyafter]
	mov	rsi, qword ptr [rip + label_1118]
	call	print_field
	cmp	byte ptr [rip + keyafter_truncation],  0
	je	.label_1403
	mov	rdi, qword ptr [rip + truncation_string]
	mov	rsi, qword ptr [rip + stdout]
	call	fputs_unlocked
.label_1403:
	mov	rcx, qword ptr [rip + head]
	mov	rsi, qword ptr [rip + label_1124]
	mov	rdi, rcx
	sub	rdi, rsi
	jae	.label_1166
	mov	r9, qword ptr [rip + half_line_width]
	mov	r8, qword ptr [rip + label_1118]
	xor	edx, edx
	sub	rdx, qword ptr [rip + truncation_string_length]
	cmp	byte ptr [rip + keyafter_truncation],  0
	mov	r10, qword ptr [rip + keyafter]
	mov	ebx, 0
	cmovne	rbx, rdx
	mov	al, byte ptr [rip + head_truncation]
	test	al, al
	mov	ebp, 0
	cmove	rdx, rbp
	add	rdi, r9
	sub	rdi, r8
	add	rdi, r10
	add	rdi, rbx
	add	rdi, rdx
	test	rdi, rdi
	jle	.label_1174
	add	rbx, rdx
	add	rbx, rcx
	add	rbx, r9
	lea	rbx, [r10 + rbx + 1]
	sub	rbx, rsi
	sub	rbx, r8
	jmp	.label_1248
.label_1166:
	mov	al, byte ptr [rip + auto_reference]
	test	al, al
	jne	.label_1219
	cmp	byte ptr [rip + input_reference],  1
	jne	.label_1159
.label_1219:
	cmp	byte ptr [rip + right_reference],  1
	jne	.label_1159
	mov	rcx, qword ptr [rip + half_line_width]
	mov	rax, qword ptr [rip + label_1118]
	mov	rdx, qword ptr [rip + keyafter]
	xor	esi, esi
	sub	rsi, qword ptr [rip + truncation_string_length]
	cmp	byte ptr [rip + keyafter_truncation],  0
	mov	edi, 0
	cmove	rsi, rdi
	mov	rdi, rcx
	sub	rdi, rax
	add	rdi, rdx
	add	rdi, rsi
	test	rdi, rdi
	jle	.label_1159
	add	rsi, rcx
	lea	rbx, [rdx + rsi + 1]
	sub	rbx, rax
	jmp	.label_1120
.label_1284:
	mov	esi, 0x20
	call	__overflow
	jmp	.label_1413
	.section	.text
	.align	32
	#Procedure 0x40a589
	.globl sub_40a589
	.type sub_40a589, @function
sub_40a589:

	nop	dword ptr [rax]
.label_1248:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_1284
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x20
.label_1413:
	dec	rbx
	cmp	rbx, 1
	jg	.label_1248
	mov	al, byte ptr [rip + head_truncation]
.label_1174:
	test	al, al
	je	.label_1298
	mov	rdi, qword ptr [rip + truncation_string]
	mov	rsi, qword ptr [rip + stdout]
	call	fputs_unlocked
.label_1298:
	mov	rdi, qword ptr [rip + head]
	mov	rsi, qword ptr [rip + label_1124]
	call	print_field
.label_1159:
	mov	al, byte ptr [rip + auto_reference]
	test	al, al
	jne	.label_1326
	cmp	byte ptr [rip + input_reference],  1
	jne	.label_1115
.label_1326:
	cmp	byte ptr [rip + right_reference],  1
	jne	.label_1115
	mov	rbx, qword ptr [rip + gap_size]
	test	rbx, rbx
	jle	.label_1119
	inc	rbx
	jmp	.label_1312
.label_1212:
	mov	esi, 0x20
	call	__overflow
	jmp	.label_1330
	.section	.text
	.align	32
	#Procedure 0x40a61e
	.globl sub_40a61e
	.type sub_40a61e, @function
sub_40a61e:

	nop	
.label_1312:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_1212
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x20
.label_1330:
	dec	rbx
	cmp	rbx, 1
	jg	.label_1312
.label_1119:
	mov	rdi, qword ptr [rip + reference]
	mov	rsi, qword ptr [rip + label_1154]
	call	print_field
	nop	dword ptr [rax + rax]
.label_1115:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_1350
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
.label_1127:
	add	r14, 0x30
	inc	r12
	cmp	r12, qword ptr [rip + number_of_occurs.0]
	jl	.label_1239
.label_1361:
	xor	eax, eax
	add	rsp, 0x68
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1427:
	call	matcher_error
.label_1218:
	call	matcher_error
.label_1441:
	call	matcher_error
.label_1345:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1374
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + context_regex]
.label_1453:
	call	quote
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_1347:
	call	matcher_error
.label_1451:
	cmp	eax, 0xffffff7d
	je	.label_1404
	cmp	eax, 0xffffff7e
	jne	.label_1408
	xor	edi, edi
	call	usage
.label_1408:
	mov	edi, 1
	call	usage
.label_1404:
	mov	r14, qword ptr [rip + stdout]
	mov	rbp, qword ptr [rip + Version]
	mov	edi, OFFSET FLAT:label_1416
	mov	esi, OFFSET FLAT:label_1417
	call	proper_name_utf8
	mov	rbx, rax
	mov	esi, OFFSET FLAT:label_835
	mov	edx, OFFSET FLAT:label_845
	xor	r9d, r9d
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbp
	mov	r8, rbx
	call	version_etc
	xor	edi, edi
	call	exit
.label_1167:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1442
	jmp	.label_1443
.label_1193:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1447
.label_1443:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + optarg]
	jmp	.label_1453
.label_1304:
	call	xalloc_die
.label_1471:
	call	xalloc_die
.label_1490:
	call	xalloc_die
.label_1398:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1466
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	movsxd	rax, dword ptr [rip + optind]
	mov	rdi, qword ptr [rbx + rax*8]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
	mov	edi, 1
	call	usage
.label_1377:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	movsxd	rax, dword ptr [rip + optind]
	mov	rdx, qword ptr [rbx + rax*8]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_1487
	xor	eax, eax
	mov	esi, ebp
	call	error
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a800
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_87]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_88]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_89]
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
	#Procedure 0x40a86f
	.globl sub_40a86f
	.type sub_40a86f, @function
sub_40a86f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x40a870
	.globl is_basic
	.type is_basic, @function
is_basic:

	mov	eax, edi
	shr	eax, 3
	and	eax, 0x1c
	mov	eax, dword ptr [rax + is_basic_table]
	bt	eax, edi
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a885
	.globl sub_40a885
	.type sub_40a885, @function
sub_40a885:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a890
	.globl rpl_re_search_2
	.type rpl_re_search_2, @function
rpl_re_search_2:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	rbx, r8
	mov	r15, rcx
	mov	r14, rdx
	mov	r13, rsi
	mov	rbp, qword ptr [rsp + 0x60]
	mov	rax, rbx
	or	rax, r14
	or	rax, rbp
	js	.label_1499
	movabs	rax, 0x7fffffffffffffff
	test	rbx, rbx
	js	.label_1501
	sub	rax, rbx
	cmp	rax, r14
	jl	.label_1499
	lea	rdx, [rbx + r14]
	xor	r12d, r12d
	test	rbx, rbx
	jle	.label_1498
	xor	r12d, r12d
	test	r14, r14
	jle	.label_1496
	mov	qword ptr [rsp + 8], rdi
	mov	qword ptr [rsp], rdx
	mov	rdi, rdx
	mov	qword ptr [rsp + 0x10], r9
	call	malloc
	mov	r12, rax
	test	r12, r12
	je	.label_1499
	mov	rdi, r12
	mov	rsi, r13
	mov	rdx, r14
	call	memcpy
	mov	rdi, r12
	add	rdi, r14
	mov	rsi, r15
	mov	rdx, rbx
	call	memcpy
	mov	rdi, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x10]
	mov	r13, r12
	mov	rdx, qword ptr [rsp]
	jmp	.label_1498
.label_1501:
	inc	rax
	sub	rax, rbx
	cmp	rax, r14
	jle	.label_1500
.label_1499:
	mov	rax, -2
	jmp	.label_1497
.label_1500:
	add	rbx, r14
	xor	r12d, r12d
	mov	rdx, rbx
	jmp	.label_1498
.label_1496:
	mov	r13, r15
.label_1498:
	mov	r8, qword ptr [rsp + 0x50]
	mov	rsi, r13
	mov	rcx, r9
	mov	r9, rbp
	push	0
	push	qword ptr [rsp + 0x60]
	call	re_search_stub
	add	rsp, 0x10
	mov	rbx, rax
	mov	rdi, r12
	call	free
	mov	rax, rbx
.label_1497:
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
	#Procedure 0x40a995
	.globl sub_40a995
	.type sub_40a995, @function
sub_40a995:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a9a0

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
	je	.label_1502
	test	r15, r15
	je	.label_1503
.label_1502:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_1503:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40a9dc
	.globl sub_40a9dc
	.type sub_40a9dc, @function
sub_40a9dc:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40a9e0

	.globl check_arrival_expand_ecl
	.type check_arrival_expand_ecl, @function
check_arrival_expand_ecl:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r15d, ecx
	mov	r13, rdx
	mov	r14, rsi
	mov	qword ptr [rsp + 8], rdi
	mov	r12, qword ptr [r14 + 8]
	mov	qword ptr [rsp + 0x10], r12
	mov	qword ptr [rsp + 0x18], 0
	lea	rdi, [r12*8]
	call	malloc
	mov	qword ptr [rsp + 0x20], rax
	mov	ebx, 0xc
	test	rax, rax
	je	.label_1512
	test	r12, r12
	jle	.label_1511
	xor	r12d, r12d
	jmp	.label_1510
	.section	.text
	.align	32
	#Procedure 0x40aa3c
	.globl sub_40aa3c
	.type sub_40aa3c, @function
sub_40aa3c:

	nop	dword ptr [rax]
.label_1510:
	mov	rax, qword ptr [r14 + 0x10]
	mov	rdx, qword ptr [rax + r12*8]
	mov	rax, qword ptr [rsp + 8]
	mov	r8, qword ptr [rax + 0x30]
	lea	r9, [rdx + rdx*2]
	mov	r10, qword ptr [r8 + r9*8 + 8]
	test	r10, r10
	jle	.label_1504
	mov	rdi, qword ptr [r8 + r9*8 + 0x10]
	mov	rax, qword ptr [rsp + 8]
	mov	rbx, qword ptr [rax]
	xor	eax, eax
	nop	
.label_1509:
	mov	rbp, qword ptr [rdi + rax*8]
	mov	rcx, rbp
	shl	rcx, 4
	movzx	esi, byte ptr [rbx + rcx + 8]
	cmp	esi, r15d
	jne	.label_1508
	cmp	qword ptr [rbx + rcx], r13
	je	.label_1506
.label_1508:
	inc	rax
	cmp	rax, r10
	jl	.label_1509
.label_1504:
	lea	rsi, [r8 + r9*8]
	lea	rdi, [rsp + 0x10]
	call	re_node_set_merge
.label_1505:
	mov	ebx, eax
	test	ebx, ebx
	jne	.label_1507
	inc	r12
	cmp	r12, qword ptr [r14 + 8]
	jl	.label_1510
.label_1511:
	mov	rdi, qword ptr [r14 + 0x10]
	call	free
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [r14 + 0x10], rax
	movups	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [r14], xmm0
	xor	ebx, ebx
.label_1512:
	mov	eax, ebx
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1506:
	cmp	rbp, -1
	je	.label_1504
	mov	rdi, qword ptr [rsp + 8]
	lea	rsi, [rsp + 0x10]
	mov	rcx, r13
	mov	r8d, r15d
	call	check_arrival_expand_ecl_sub
	jmp	.label_1505
	.section	.text
	.align	32
	#Procedure 0x40aafb
	.globl sub_40aafb
	.type sub_40aafb, @function
sub_40aafb:

	nop	dword ptr [rax]
.label_1507:
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	jmp	.label_1512
	.section	.text
	.align	32
	#Procedure 0x40ab0a
	.globl sub_40ab0a
	.type sub_40ab0a, @function
sub_40ab0a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ab10

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_694
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_1513
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ab35
	.globl sub_40ab35
	.type sub_40ab35, @function
sub_40ab35:

	nop	word ptr cs:[rax + rax]
.label_1518:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_1514
	mov	eax, OFFSET FLAT:label_1515
	jmp	.label_1516
	.section	.text
	.align	32
	#Procedure 0x40ab4f
	.globl sub_40ab4f
	.type sub_40ab4f, @function
sub_40ab4f:

	nop	word ptr cs:[rax + rax]
.label_1523:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_1517
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_1517
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_1517
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_1517
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_1517
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_1517
	cmp	byte ptr [rax + 7], 0
	je	.label_1518
.label_1517:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_1519
	mov	eax, OFFSET FLAT:label_1520
.label_1516:
	cmove	rax, rcx
.label_1524:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40aba2

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
	jne	.label_1524
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_1523
	cmp	ecx, 0x55
	jne	.label_1517
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_1517
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_1517
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_1517
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_1517
	cmp	byte ptr [rax + 5], 0
	jne	.label_1517
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_1521
	mov	eax, OFFSET FLAT:label_1522
	jmp	.label_1516
	.section	.text
	.align	32
	#Procedure 0x40ac10

	.globl re_search_stub
	.type re_search_stub, @function
re_search_stub:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	rbx, rcx
	test	rbx, rbx
	mov	rbp, -1
	js	.label_1540
	mov	qword ptr [rsp + 0x20], rsi
	mov	qword ptr [rsp + 0x18], r9
	cmp	rbx, rdx
	jg	.label_1540
	xor	r12d, r12d
	add	r8, rbx
	js	.label_1546
	mov	r12, r8
.label_1546:
	mov	rsi, qword ptr [rsp + 0x60]
	cmp	r8, rdx
	cmovg	r12, rdx
	movzx	r13d, byte ptr [rdi + 0x38]
	cmp	r12, rbx
	mov	eax, r13d
	mov	qword ptr [rsp + 8], rdi
	mov	qword ptr [rsp + 0x10], rdx
	jle	.label_1526
	test	r13b, 8
	mov	eax, r13d
	jne	.label_1526
	mov	rbp, qword ptr [rdi + 0x20]
	test	rbp, rbp
	mov	eax, r13d
	je	.label_1526
	mov	r14, rbx
	mov	rbx, qword ptr [rdi]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbp + 0xf0], xmm0
	movups	xmmword ptr [rbp + 0xe0], xmm0
	movups	xmmword ptr [rbp + 0xd0], xmm0
	movups	xmmword ptr [rbp + 0xc0], xmm0
	movups	xmmword ptr [rbp + 0xb0], xmm0
	movups	xmmword ptr [rbp + 0xa0], xmm0
	movups	xmmword ptr [rbp + 0x90], xmm0
	movups	xmmword ptr [rbp + 0x80], xmm0
	movups	xmmword ptr [rbp + 0x70], xmm0
	movups	xmmword ptr [rbp + 0x60], xmm0
	movups	xmmword ptr [rbp + 0x50], xmm0
	movups	xmmword ptr [rbp + 0x40], xmm0
	movups	xmmword ptr [rbp + 0x30], xmm0
	movups	xmmword ptr [rbp + 0x20], xmm0
	movups	xmmword ptr [rbp + 0x10], xmm0
	movups	xmmword ptr [rbp], xmm0
	mov	rsi, qword ptr [rbx + 0x48]
	mov	rdx, rbp
	mov	r15, rdi
	call	re_compile_fastmap_iter
	mov	rax, qword ptr [rbx + 0x48]
	mov	rsi, qword ptr [rbx + 0x50]
	cmp	rax, rsi
	je	.label_1532
	mov	rdi, r15
	mov	rdx, rbp
	call	re_compile_fastmap_iter
	mov	rax, qword ptr [rbx + 0x48]
.label_1532:
	mov	rsi, qword ptr [rbx + 0x58]
	cmp	rax, rsi
	je	.label_1543
	mov	rdi, qword ptr [rsp + 8]
	mov	rdx, rbp
	call	re_compile_fastmap_iter
	mov	rax, qword ptr [rbx + 0x48]
.label_1543:
	mov	rsi, qword ptr [rbx + 0x60]
	cmp	rax, rsi
	mov	rdi, qword ptr [rsp + 8]
	je	.label_1542
	mov	rdx, rbp
	call	re_compile_fastmap_iter
	mov	rdi, qword ptr [rsp + 8]
.label_1542:
	mov	al, byte ptr [rdi + 0x38]
	or	al, 8
	mov	byte ptr [rdi + 0x38], al
	mov	rbx, r14
	mov	rsi, qword ptr [rsp + 0x60]
.label_1526:
	xor	r14d, r14d
	test	rsi, rsi
	mov	r15d, 1
	je	.label_1533
	mov	ecx, eax
	and	cl, 0x10
	jne	.label_1533
	and	al, 6
	cmp	al, 4
	jne	.label_1555
	mov	rax, qword ptr [rsi]
	mov	r15, qword ptr [rdi + 0x30]
	cmp	rax, r15
	ja	.label_1561
	xor	r14d, r14d
	test	rax, rax
	jle	.label_1529
	mov	r14, rsi
.label_1529:
	mov	r15d, 1
	test	rax, rax
	jle	.label_1533
	mov	r15, rax
	jmp	.label_1533
.label_1555:
	mov	r15, qword ptr [rdi + 0x30]
.label_1561:
	inc	r15
	mov	r14, rsi
.label_1533:
	mov	rdi, r15
	shl	rdi, 4
	call	malloc
	mov	rdi, qword ptr [rsp + 8]
	mov	rbp, -2
	test	rax, rax
	mov	rdx, qword ptr [rsp + 0x10]
	je	.label_1540
	mov	ecx, r13d
	shr	cl, 5
	and	cl, 1
	and	r13d, 0x40
	movzx	ecx, cl
	shr	r13d, 5
	or	r13d, ecx
	sub	rsp, 8
	mov	rsi, qword ptr [rsp + 0x28]
	mov	rcx, rbx
	mov	r8, r12
	mov	r9, qword ptr [rsp + 0x20]
	push	r13
	mov	r12, rax
	push	rax
	push	r15
	call	re_search_internal
	add	rsp, 0x20
	test	eax, eax
	je	.label_1528
	xor	ebp, ebp
	cmp	eax, 1
	sete	bpl
	or	rbp, 0xfffffffffffffffe
	mov	rdi, r12
.label_1525:
	call	free
.label_1540:
	mov	rax, rbp
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1528:
	test	r14, r14
	mov	rdi, r12
	je	.label_1550
	mov	qword ptr [rsp + 0x10], rbx
	mov	r8, qword ptr [rsp + 8]
	mov	al, byte ptr [r8 + 0x38]
	shr	al, 1
	and	al, 3
	cmp	al, 2
	je	.label_1547
	lea	rbx, [r15 + 1]
	cmp	al, 1
	je	.label_1538
	test	al, al
	jne	.label_1554
	lea	r13, [rbx*8]
	mov	rdi, r13
	call	malloc
	mov	qword ptr [r14 + 8], rax
	xor	ebp, ebp
	mov	qword ptr [rsp + 0x18], rax
	test	rax, rax
	je	.label_1551
	mov	rdi, r13
	call	malloc
	mov	qword ptr [r14 + 0x10], rax
	test	rax, rax
	je	.label_1534
	mov	qword ptr [r14], rbx
	mov	r13d, 1
.label_1545:
	mov	r8, qword ptr [rsp + 8]
	mov	rdi, r12
	jmp	.label_1539
.label_1547:
	mov	rbx, qword ptr [r14]
	mov	r13d, 2
	cmp	rbx, r15
	jae	.label_1539
	mov	edi, OFFSET FLAT:label_1535
	mov	esi, OFFSET FLAT:label_334
	mov	edx, 0x1fb
	mov	ecx, OFFSET FLAT:label_1536
	call	__assert_fail
.label_1538:
	mov	rax, qword ptr [r14]
	mov	r13d, 1
	cmp	rbx, rax
	ja	.label_1552
	mov	rbx, rax
.label_1539:
	test	r15, r15
	jle	.label_1541
	mov	rcx, qword ptr [r14 + 8]
	mov	rax, qword ptr [r14 + 0x10]
	mov	r9d, r15d
	and	r9d, 1
	xor	edx, edx
	cmp	r15, 1
	je	.label_1559
	mov	rsi, r15
	sub	rsi, r9
	mov	rbp, rdi
	add	rbp, 0x18
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_1560:
	mov	rbx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + rdx*8], rbx
	mov	rbx, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + rdx*8], rbx
	mov	rbx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + rdx*8 + 8], rbx
	mov	rbx, qword ptr [rbp]
	mov	qword ptr [rax + rdx*8 + 8], rbx
	add	rdx, 2
	add	rbp, 0x20
	cmp	rsi, rdx
	jne	.label_1560
.label_1559:
	test	r9, r9
	je	.label_1553
	mov	rsi, rdx
	shl	rsi, 4
	mov	rbp, qword ptr [rdi + rsi]
	mov	qword ptr [rcx + rdx*8], rbp
	mov	rcx, qword ptr [rdi + rsi + 8]
	mov	qword ptr [rax + rdx*8], rcx
.label_1553:
	mov	rbx, qword ptr [r14]
	jmp	.label_1556
.label_1541:
	xor	r15d, r15d
.label_1556:
	cmp	r15, rbx
	jae	.label_1527
	mov	rax, qword ptr [r14 + 8]
	mov	rcx, qword ptr [r14 + 0x10]
	mov	rbx, qword ptr [rsp + 0x10]
	nop	word ptr cs:[rax + rax]
.label_1537:
	mov	qword ptr [rcx + r15*8], -1
	mov	qword ptr [rax + r15*8], -1
	inc	r15
	cmp	r15, qword ptr [r14]
	jb	.label_1537
	mov	ebp, r13d
	jmp	.label_1549
.label_1527:
	mov	ebp, r13d
	mov	rbx, qword ptr [rsp + 0x10]
.label_1549:
	mov	al, byte ptr [r8 + 0x38]
	add	bpl, bpl
	and	al, 0xf9
	mov	ecx, ebp
	and	cl, 6
	or	cl, al
	and	bpl, 6
	mov	byte ptr [r8 + 0x38], cl
	mov	rbp, -2
	je	.label_1525
.label_1550:
	mov	al, byte ptr [rsp + 0x68]
	mov	rbp, qword ptr [rdi]
	test	al, al
	je	.label_1525
	cmp	rbp, rbx
	jne	.label_1558
	mov	rbp, qword ptr [rdi + 8]
	sub	rbp, rbx
	jmp	.label_1525
.label_1552:
	mov	rdi, qword ptr [r14 + 8]
	lea	rsi, [rbx*8]
	mov	qword ptr [rsp + 0x18], rsi
	call	realloc
	xor	ebp, ebp
	mov	qword ptr [rsp + 0x20], rax
	test	rax, rax
	je	.label_1551
	mov	rdi, qword ptr [r14 + 0x10]
	mov	rsi, qword ptr [rsp + 0x18]
	call	realloc
	test	rax, rax
	je	.label_1544
	mov	rcx, qword ptr [rsp + 0x20]
	mov	qword ptr [r14 + 8], rcx
	mov	qword ptr [r14 + 0x10], rax
	mov	qword ptr [r14], rbx
	jmp	.label_1545
.label_1534:
	mov	rdi, qword ptr [rsp + 0x18]
.label_1548:
	call	free
.label_1551:
	mov	rbx, qword ptr [rsp + 0x10]
	mov	r8, qword ptr [rsp + 8]
	mov	rdi, r12
	jmp	.label_1549
.label_1554:
	mov	edi, OFFSET FLAT:label_1557
	mov	esi, OFFSET FLAT:label_334
	mov	edx, 0x1f9
	mov	ecx, OFFSET FLAT:label_1536
	call	__assert_fail
.label_1558:
	mov	edi, OFFSET FLAT:label_1530
	mov	esi, OFFSET FLAT:label_334
	mov	edx, 0x1be
	mov	ecx, OFFSET FLAT:label_1531
	call	__assert_fail
.label_1544:
	mov	rdi, qword ptr [rsp + 0x20]
	jmp	.label_1548
	.section	.text
	.align	32
	#Procedure 0x40b0ad
	.globl sub_40b0ad
	.type sub_40b0ad, @function
sub_40b0ad:

	nop	dword ptr [rax]
.label_1566:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_1562
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40b0d0
	.globl sub_40b0d0
	.type sub_40b0d0, @function
sub_40b0d0:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b0df

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_1566
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_1564
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_1567
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_1564
	mov	esi, OFFSET FLAT:label_1565
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_1563
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_1563:
	mov	rbx, r14
.label_1564:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b160
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
	#Procedure 0x40b179
	.globl sub_40b179
	.type sub_40b179, @function
sub_40b179:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40b180

	.globl check_arrival_expand_ecl_sub
	.type check_arrival_expand_ecl_sub, @function
check_arrival_expand_ecl_sub:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r15d, r8d
	mov	r14, rcx
	mov	rbp, rdx
	mov	rbx, rsi
	mov	r12, rdi
	jmp	.label_1568
	.section	.text
	.align	32
	#Procedure 0x40b199
	.globl sub_40b199
	.type sub_40b199, @function
sub_40b199:

	nop	dword ptr [rax]
.label_1569:
	mov	rax, qword ptr [rax + rbp*8 + 0x10]
	mov	rbp, qword ptr [rax]
.label_1568:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	jle	.label_1574
	dec	rax
	mov	rcx, qword ptr [rbx + 0x10]
	mov	edx, 0
	je	.label_1576
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_1573:
	lea	rsi, [rdx + rax]
	shr	rsi, 1
	cmp	qword ptr [rcx + rsi*8], rbp
	lea	rdi, [rsi + 1]
	cmovl	rdx, rdi
	cmovge	rax, rsi
	cmp	rdx, rax
	jb	.label_1573
.label_1576:
	cmp	rdx, -1
	je	.label_1574
	cmp	qword ptr [rcx + rdx*8], rbp
	je	.label_1571
.label_1574:
	mov	rax, qword ptr [r12]
	mov	rcx, rbp
	shl	rcx, 4
	movzx	edx, byte ptr [rax + rcx + 8]
	cmp	edx, r15d
	jne	.label_1577
	cmp	qword ptr [rax + rcx], r14
	je	.label_1572
.label_1577:
	mov	rdi, rbx
	mov	rsi, rbp
	call	re_node_set_insert
	mov	ecx, eax
	mov	eax, 0xc
	test	cl, cl
	je	.label_1570
	mov	rax, qword ptr [r12 + 0x28]
	lea	rbp, [rbp + rbp*2]
	mov	rcx, qword ptr [rax + rbp*8 + 8]
	cmp	rcx, 2
	je	.label_1575
	test	rcx, rcx
	jne	.label_1569
	jmp	.label_1571
	.section	.text
	.align	32
	#Procedure 0x40b24d
	.globl sub_40b24d
	.type sub_40b24d, @function
sub_40b24d:

	nop	dword ptr [rax]
.label_1575:
	mov	rax, qword ptr [rax + rbp*8 + 0x10]
	mov	rdx, qword ptr [rax + 8]
	mov	rdi, r12
	mov	rsi, rbx
	mov	rcx, r14
	mov	r8d, r15d
	call	check_arrival_expand_ecl_sub
	test	eax, eax
	jne	.label_1570
	mov	rax, qword ptr [r12 + 0x28]
	jmp	.label_1569
.label_1572:
	cmp	r15d, 9
	jne	.label_1571
	mov	rdi, rbx
	mov	rsi, rbp
	call	re_node_set_insert
	mov	ecx, eax
	mov	eax, 0xc
	test	cl, cl
	je	.label_1570
.label_1571:
	xor	eax, eax
.label_1570:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b29f
	.globl sub_40b29f
	.type sub_40b29f, @function
sub_40b29f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x40b2a0

	.globl knuth_morris_pratt_multibyte
	.type knuth_morris_pratt_multibyte, @function
knuth_morris_pratt_multibyte:
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xa8
	mov	r12, rdx
	mov	r14, rsi
	mov	r15, rdi
	mov	rdi, r14
	call	mbslen
	mov	rbx, rax
	movabs	rax, 0x249249249249249
	cmp	rbx, rax
	jbe	.label_1599
	xor	eax, eax
	jmp	.label_1601
.label_1599:
	mov	qword ptr [rbp - 0xc8], r15
	imul	rdi, rbx, 0x38
	cmp	rdi, 0xfa0
	ja	.label_1608
	mov	rax, rsp
	add	rdi, 0x2e
	and	rdi, 0xfffffffffffffff0
	mov	rcx, rax
	sub	rcx, rdi
	mov	rsp, rcx
	neg	rdi
	lea	r15, [rax + rdi + 0x1f]
	and	r15, 0xffffffffffffffe0
	jmp	.label_1613
.label_1608:
	call	mmalloca
	mov	r15, rax
.label_1613:
	test	r15, r15
	je	.label_1589
	mov	qword ptr [rbp - 0x80], r12
	mov	qword ptr [rbp - 0x30], rbx
	lea	rbx, [rbx + rbx*2]
	shl	rbx, 4
	mov	qword ptr [rbp - 0x68], r14
	mov	byte ptr [rbp - 0x78], 0
	mov	qword ptr [rbp - 0x74], 0
	mov	byte ptr [rbp - 0x6c], 0
	lea	rdi, [rbp - 0x78]
	call	mbuiter_multi_next
	mov	rax, qword ptr [rbp - 0x58]
	test	al, al
	je	.label_1604
	shr	rax, 0x20
	je	.label_1606
.label_1604:
	lea	r13, [rbp - 0x50]
	lea	r14, [r15 + 0x18]
	lea	r12, [rbp - 0x78]
	nop	dword ptr [rax]
.label_1597:
	mov	rax, qword ptr [rbp - 0x68]
	cmp	rax, r13
	jne	.label_1611
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rdi, r14
	mov	rsi, r13
	call	memcpy
	mov	rax, r14
.label_1611:
	mov	qword ptr [r14 - 0x18], rax
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [r14 - 0x10], rax
	mov	rax, qword ptr [rbp - 0x58]
	test	al, al
	mov	byte ptr [r14 - 8], al
	je	.label_1581
	shr	rax, 0x20
	mov	dword ptr [r14 - 4], eax
.label_1581:
	mov	rax, qword ptr [rbp - 0x60]
	add	qword ptr [rbp - 0x68], rax
	mov	byte ptr [rbp - 0x6c], 0
	mov	rdi, r12
	call	mbuiter_multi_next
	mov	rax, qword ptr [rbp - 0x58]
	add	r14, 0x30
	test	al, al
	je	.label_1597
	shr	rax, 0x20
	jne	.label_1597
.label_1606:
	lea	rsi, [r15 + rbx]
	mov	qword ptr [r15 + rbx + 8], 1
	cmp	qword ptr [rbp - 0x30], 3
	mov	qword ptr [rbp - 0x38], rsi
	jb	.label_1603
	mov	r14d, 2
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_1612:
	lea	rax, [r14 + r14*2]
	shl	rax, 4
	lea	r12, [r15 + rax - 0x30]
	cmp	byte ptr [r15 + rax - 0x20], 0
	je	.label_1578
	lea	r13, [r15 + rax - 0x1c]
	jmp	.label_1586
	.section	.text
	.align	32
	#Procedure 0x40b41c
	.globl sub_40b41c
	.type sub_40b41c, @function
sub_40b41c:

	nop	dword ptr [rax]
.label_1594:
	sub	rbx, qword ptr [rsi + rbx*8]
.label_1586:
	lea	rax, [rbx + rbx*2]
	shl	rax, 4
	cmp	byte ptr [r15 + rax + 0x10], 0
	je	.label_1605
	mov	ecx, dword ptr [r13]
	cmp	ecx, dword ptr [r15 + rax + 0x14]
	jne	.label_1595
	jmp	.label_1585
	.section	.text
	.align	32
	#Procedure 0x40b444
	.globl sub_40b444
	.type sub_40b444, @function
sub_40b444:

	nop	word ptr cs:[rax + rax]
.label_1605:
	mov	rdx, qword ptr [r12 + 8]
	cmp	rdx, qword ptr [r15 + rax + 8]
	jne	.label_1595
	mov	rdi, qword ptr [r12]
	mov	rsi, qword ptr [r15 + rax]
	call	memcmp
	mov	rsi, qword ptr [rbp - 0x38]
	test	eax, eax
	je	.label_1585
	nop	word ptr cs:[rax + rax]
.label_1595:
	test	rbx, rbx
	jne	.label_1594
	jmp	.label_1580
	.section	.text
	.align	32
	#Procedure 0x40b487
	.globl sub_40b487
	.type sub_40b487, @function
sub_40b487:

	nop	word ptr [rax + rax]
.label_1578:
	mov	r13, qword ptr [r12 + 8]
	jmp	.label_1584
	.section	.text
	.align	32
	#Procedure 0x40b497
	.globl sub_40b497
	.type sub_40b497, @function
sub_40b497:

	nop	word ptr [rax + rax]
.label_1598:
	sub	rbx, qword ptr [rsi + rbx*8]
.label_1584:
	lea	rax, [rbx + rbx*2]
	shl	rax, 4
	cmp	r13, qword ptr [r15 + rax + 8]
	jne	.label_1592
	mov	rdi, qword ptr [r12]
	mov	rsi, qword ptr [r15 + rax]
	mov	rdx, r13
	call	memcmp
	mov	rsi, qword ptr [rbp - 0x38]
	test	eax, eax
	je	.label_1585
.label_1592:
	test	rbx, rbx
	jne	.label_1598
.label_1580:
	mov	qword ptr [rsi + r14*8], r14
	xor	ebx, ebx
	mov	rcx, qword ptr [rbp - 0x30]
	jmp	.label_1609
	.section	.text
	.align	32
	#Procedure 0x40b4dc
	.globl sub_40b4dc
	.type sub_40b4dc, @function
sub_40b4dc:

	nop	dword ptr [rax]
.label_1585:
	mov	rcx, qword ptr [rbp - 0x30]
	inc	rbx
	mov	rax, r14
	sub	rax, rbx
	mov	qword ptr [rsi + r14*8], rax
.label_1609:
	inc	r14
	cmp	r14, rcx
	jne	.label_1612
.label_1603:
	mov	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0xc8]
	mov	qword ptr [rbp - 0x68], rax
	mov	byte ptr [rbp - 0x78], 0
	mov	qword ptr [rbp - 0x74], 0
	mov	byte ptr [rbp - 0x6c], 0
	mov	qword ptr [rbp - 0xb0], rax
	mov	byte ptr [rbp - 0xc0], 0
	mov	qword ptr [rbp - 0xbc], 0
	mov	byte ptr [rbp - 0xb4], 0
	lea	rdi, [rbp - 0xc0]
	call	mbuiter_multi_next
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rax, rcx
	shr	rax, 0x20
	test	cl, cl
	setne	cl
	je	.label_1602
	test	eax, eax
	je	.label_1600
.label_1602:
	xor	r13d, r13d
	lea	r12, [rbp - 0x78]
	nop	word ptr cs:[rax + rax]
.label_1593:
	lea	rdx, [r13 + r13*2]
	shl	rdx, 4
	cmp	byte ptr [r15 + rdx + 0x10], 0
	je	.label_1579
	xor	cl, 1
	test	cl, 1
	jne	.label_1579
	cmp	dword ptr [r15 + rdx + 0x14], eax
	jne	.label_1588
	mov	rbx, qword ptr [rbp - 0xb0]
	mov	r14, qword ptr [rbp - 0xa8]
	jmp	.label_1582
	.section	.text
	.align	32
	#Procedure 0x40b5b3
	.globl sub_40b5b3
	.type sub_40b5b3, @function
sub_40b5b3:

	nop	word ptr cs:[rax + rax]
.label_1579:
	mov	r14, qword ptr [r15 + rdx + 8]
	cmp	r14, qword ptr [rbp - 0xa8]
	jne	.label_1588
	mov	rdi, qword ptr [r15 + rdx]
	mov	rbx, qword ptr [rbp - 0xb0]
	mov	rsi, rbx
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	je	.label_1582
.label_1588:
	test	r13, r13
	je	.label_1610
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbx, qword ptr [rax + r13*8]
	sub	r13, rbx
	test	rbx, rbx
	je	.label_1583
	nop	word ptr cs:[rax + rax]
.label_1607:
	mov	rdi, r12
	call	mbuiter_multi_next
	mov	rax, qword ptr [rbp - 0x58]
	test	al, al
	je	.label_1587
	shr	rax, 0x20
	je	.label_1591
.label_1587:
	mov	rax, qword ptr [rbp - 0x60]
	add	qword ptr [rbp - 0x68], rax
	mov	byte ptr [rbp - 0x6c], 0
	dec	rbx
	jne	.label_1607
	jmp	.label_1583
	.section	.text
	.align	32
	#Procedure 0x40b63d
	.globl sub_40b63d
	.type sub_40b63d, @function
sub_40b63d:

	nop	dword ptr [rax]
.label_1582:
	inc	r13
	add	rbx, r14
	mov	qword ptr [rbp - 0xb0], rbx
	mov	byte ptr [rbp - 0xb4], 0
	cmp	r13, qword ptr [rbp - 0x30]
	jne	.label_1583
	jmp	.label_1590
	.section	.text
	.align	32
	#Procedure 0x40b65c
	.globl sub_40b65c
	.type sub_40b65c, @function
sub_40b65c:

	nop	dword ptr [rax]
.label_1610:
	mov	rdi, r12
	call	mbuiter_multi_next
	mov	rax, qword ptr [rbp - 0x58]
	test	al, al
	je	.label_1596
	shr	rax, 0x20
	je	.label_1591
.label_1596:
	mov	rax, qword ptr [rbp - 0x60]
	add	qword ptr [rbp - 0x68], rax
	mov	byte ptr [rbp - 0x6c], 0
	mov	rax, qword ptr [rbp - 0xa8]
	add	qword ptr [rbp - 0xb0], rax
	mov	byte ptr [rbp - 0xb4], 0
	xor	r13d, r13d
.label_1583:
	lea	rdi, [rbp - 0xc0]
	call	mbuiter_multi_next
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rax, rcx
	shr	rax, 0x20
	test	cl, cl
	setne	cl
	je	.label_1593
	test	eax, eax
	jne	.label_1593
	jmp	.label_1600
.label_1589:
	xor	eax, eax
	jmp	.label_1601
.label_1590:
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	qword ptr [rcx], rax
.label_1600:
	mov	rdi, r15
	call	freea
	mov	al, 1
.label_1601:
	lea	rsp, [rbp - 0x28]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1591:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40b6f6
	.globl sub_40b6f6
	.type sub_40b6f6, @function
sub_40b6f6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b700

	.globl re_search_internal
	.type re_search_internal, @function
re_search_internal:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x228
	mov	r14, r9
	mov	rbp, rcx
	mov	r11, qword ptr [rsp + 0x260]
	mov	r10, qword ptr [rdi]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x150], xmm0
	movaps	xmmword ptr [rsp + 0x140], xmm0
	movaps	xmmword ptr [rsp + 0x130], xmm0
	movaps	xmmword ptr [rsp + 0x120], xmm0
	movaps	xmmword ptr [rsp + 0x110], xmm0
	movaps	xmmword ptr [rsp + 0x100], xmm0
	movaps	xmmword ptr [rsp + 0xf0], xmm0
	movaps	xmmword ptr [rsp + 0xe0], xmm0
	movaps	xmmword ptr [rsp + 0xd0], xmm0
	movaps	xmmword ptr [rsp + 0xc0], xmm0
	movaps	xmmword ptr [rsp + 0xb0], xmm0
	movaps	xmmword ptr [rsp + 0xa0], xmm0
	movaps	xmmword ptr [rsp + 0x90], xmm0
	movaps	xmmword ptr [rsp + 0x80], xmm0
	movaps	xmmword ptr [rsp + 0x70], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm0
	mov	qword ptr [rsp + 0xf8], r10
	mov	rax, qword ptr [rdi + 0x20]
	xor	r13d, r13d
	test	rax, rax
	je	.label_1614
	mov	cl, byte ptr [rdi + 0x38]
	and	cl, 9
	xor	ebx, ebx
	cmp	cl, 8
	cmovne	rax, rbx
	cmp	rbp, r8
	cmove	rax, rbx
	mov	r13, rax
.label_1614:
	mov	rax, qword ptr [rdi + 0x30]
	lea	r15, [r11 - 1]
	mov	rcx, r15
	sub	rcx, rax
	xor	r12d, r12d
	cmp	rax, r11
	cmovb	r12, rcx
	mov	ebx, 1
	cmp	qword ptr [rdi + 0x10], 0
	je	.label_381
	mov	rax, qword ptr [r10 + 0x48]
	test	rax, rax
	je	.label_381
	mov	rcx, qword ptr [r10 + 0x50]
	test	rcx, rcx
	je	.label_381
	mov	r9, qword ptr [r10 + 0x58]
	test	r9, r9
	je	.label_381
	mov	qword ptr [rsp + 0x50], rsi
	mov	rsi, r14
	cmp	qword ptr [r10 + 0x60], 0
	je	.label_381
	mov	r14, qword ptr [rdi + 0x28]
	mov	qword ptr [rsp + 0x160], r14
	cmp	qword ptr [rax + 0x10], 0
	je	.label_1618
	mov	qword ptr [rsp + 8], r8
	mov	r14, rsi
	jmp	.label_1623
.label_1618:
	cmp	qword ptr [rcx + 0x10], 0
	mov	r14, rsi
	jne	.label_1624
	cmp	qword ptr [r9 + 0x10], 0
	je	.label_1625
	cmp	byte ptr [rdi + 0x38], 0
	js	.label_1624
.label_1625:
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	test	rbp, rbp
	je	.label_1627
	test	r8, r8
	mov	ebp, 0
	jne	.label_381
	jmp	.label_1623
.label_1624:
	mov	qword ptr [rsp + 8], r8
.label_1623:
	mov	qword ptr [rsp + 0x48], r13
	mov	qword ptr [rsp + 0x190], r15
	mov	qword ptr [rsp + 0x188], r12
	sub	r11, r12
	mov	qword ptr [rsp + 0x38], r11
	mov	byte ptr [rsp + 3], 1
	jne	.label_1616
	cmp	qword ptr [r10 + 0x98], 0
	setne	byte ptr [rsp + 3]
.label_1616:
	mov	r15, qword ptr [r10 + 0x10]
	inc	r15
	mov	qword ptr [rsp + 0x58], rdi
	mov	rcx, qword ptr [rdi + 0x18]
	movsxd	rax, dword ptr [r10 + 0xb4]
	cmp	rax, r15
	cmovge	r15, rax
	mov	rbx, rdx
	lea	rdi, [rbx + 1]
	cmp	rdi, r15
	cmovle	r15, rdi
	mov	rdx, qword ptr [rsp + 0x50]
	mov	qword ptr [rsp + 0x60], rdx
	mov	qword ptr [rsp + 0xb8], rbx
	mov	qword ptr [rsp + 0xb0], rbx
	mov	rsi, qword ptr [rsp + 0x160]
	mov	qword ptr [rsp + 0xd8], rsi
	shr	rcx, 0x16
	and	cl, 1
	mov	byte ptr [rsp + 0xe8], cl
	test	rsi, rsi
	mov	rsi, rbx
	setne	r12b
	or	r12b, cl
	mov	byte ptr [rsp + 0xeb], r12b
	mov	dword ptr [rsp + 0xf0], eax
	mov	cl, byte ptr [r10 + 0xb0]
	mov	edx, ecx
	shr	dl, 2
	and	dl, 1
	shr	cl, 3
	and	cl, 1
	cmp	rax, 2
	mov	byte ptr [rsp + 0xe9], dl
	mov	byte ptr [rsp + 0xea], cl
	mov	qword ptr [rsp + 0xc8], rsi
	mov	qword ptr [rsp + 0x170], rsi
	mov	qword ptr [rsp + 0xc0], rsi
	mov	qword ptr [rsp + 0x28], r10
	jl	.label_1620
	movabs	rax, 0x1ffffffffffffffe
	inc	rax
	mov	ebx, 0xc
	cmp	r15, rax
	ja	.label_293
	lea	rsi, [r15*4]
	xor	edi, edi
	call	realloc
	test	rax, rax
	je	.label_293
	mov	qword ptr [rsp + 0x70], rax
	mov	r10, qword ptr [rsp + 0x28]
.label_1620:
	mov	al, 1
	test	r12b, r12b
	je	.label_1621
	xor	edi, edi
	mov	rsi, r15
	call	realloc
	mov	ebx, 0xc
	test	rax, rax
	je	.label_293
	mov	qword ptr [rsp + 0x68], rax
	xor	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
.label_1621:
	mov	qword ptr [rsp + 0xa0], r15
	lea	rcx, [r10 + 0xb8]
	mov	qword ptr [rsp + 0xe0], rcx
	mov	rcx, qword ptr [r10 + 0xb0]
	mov	edx, ecx
	shr	dl, 4
	and	dl, 1
	mov	byte ptr [rsp + 0xee], dl
	xor	edx, edx
	test	al, al
	je	.label_1628
	shr	rcx, 0x20
	mov	rax, qword ptr [rsp + 0x50]
	mov	qword ptr [rsp + 0x68], rax
	xor	edx, edx
	cmp	ecx, 1
	cmovle	rdx, qword ptr [rsp + 0x170]
.label_1628:
	mov	qword ptr [rsp + 0x90], rdx
	mov	qword ptr [rsp + 0x98], rdx
	mov	qword ptr [rsp + 0xc8], r14
	mov	qword ptr [rsp + 0xc0], r14
	mov	rax, qword ptr [rsp + 0x58]
	mov	al, byte ptr [rax + 0x38]
	shr	al, 7
	mov	byte ptr [rsp + 0xed], al
	mov	r14, qword ptr [r10 + 0x98]
	lea	r13, [r14 + r14]
	mov	eax, dword ptr [rsp + 0x270]
	mov	dword ptr [rsp + 0x100], eax
	mov	qword ptr [rsp + 0x108], -1
	test	r14, r14
	jle	.label_1619
	mov	ebx, 0xc
	movabs	rax, 0x666666666666666
	cmp	r13, rax
	ja	.label_293
	shl	r14, 4
	lea	rdi, [r14 + r14*4]
	call	malloc
	mov	r12, rax
	mov	qword ptr [rsp + 0x138], r12
	mov	rdi, r14
	call	malloc
	mov	qword ptr [rsp + 0x158], rax
	test	r12, r12
	je	.label_293
	test	rax, rax
	je	.label_293
.label_1619:
	mov	qword ptr [rsp + 0x130], r13
	mov	dword ptr [rsp + 0x140], 1
	mov	qword ptr [rsp + 0x150], r13
	cmp	qword ptr [rsp + 0x38], 1
	ja	.label_1615
	mov	rax, qword ptr [rsp + 0x28]
	test	byte ptr [rax + 0xb0], 2
	jne	.label_1615
	mov	qword ptr [rsp + 0x118], 0
	jmp	.label_1617
.label_1615:
	mov	ebx, 0xc
	movabs	rax, 0x1ffffffffffffffe
	cmp	r15, rax
	ja	.label_293
	lea	rdi, [r15*8 + 8]
	call	malloc
	mov	qword ptr [rsp + 0x118], rax
	test	rax, rax
	je	.label_293
.label_1617:
	mov	qword ptr [rsp + 0x20], rbp
	mov	eax, dword ptr [rsp + 0x270]
	lea	eax, [rax + rax]
	and	eax, 2
	xor	eax, 6
	mov	dword ptr [rsp + 0xd0], eax
	mov	rdi, qword ptr [rsp + 8]
	cmp	rdi, rbp
	mov	r14, rbp
	cmovle	r14, rdi
	mov	r12, rdi
	cmovl	r12, rbp
	mov	rax, qword ptr [rsp + 0x28]
	mov	eax, dword ptr [rax + 0xb4]
	mov	dword ptr [rsp + 0x17c], eax
	mov	ecx, 8
	cmp	qword ptr [rsp + 0x48], 0
	je	.label_1626
	cmp	dword ptr [rsp + 0x17c], 1
	mov	rsi, qword ptr [rsp + 0x160]
	je	.label_1629
	mov	ecx, 0x400000
	xor	eax, eax
	test	rsi, rsi
	jne	.label_1622
	mov	rdx, qword ptr [rsp + 0x58]
	and	rcx, qword ptr [rdx + 0x18]
	jne	.label_1622
.label_1629:
	mov	eax, 4
.label_1622:
	xor	ecx, ecx
	test	rsi, rsi
	setne	cl
	xor	edx, edx
	cmp	rbp, rdi
	setle	dl
	lea	ecx, [rcx + rdx*2]
	or	ecx, eax
.label_1626:
	lea	r15, [rsp + 0x98]
	cmp	rdi, rbp
	mov	eax, 1
	mov	rdx, -1
	cmovge	rdx, rax
	mov	qword ptr [rsp + 0x1f0], rdx
	xor	edx, edx
	cmp	rbp, rdi
	setle	byte ptr [rsp + 2]
	lea	rsi, [rsp + 0x20]
	mov	eax, 0
	mov	qword ptr [rsp + 0x1e8], rax
	cmovg	rsi, rdx
	mov	qword ptr [rsp + 0x210], rsi
	add	ecx, -4
	mov	qword ptr [rsp + 0x218], rcx
	mov	qword ptr [rsp + 0x40], r12
	mov	qword ptr [rsp + 0x198], r14
	jmp	.label_646
.label_1627:
	xor	ebp, ebp
	jmp	.label_1623
.label_433:
	mov	rdi, r14
	call	free
	mov	rdi, r13
	call	free
	test	ebx, ebx
	mov	r12, qword ptr [rsp + 0x40]
	mov	r15, qword ptr [rsp + 0x38]
	je	.label_431
	cmp	ebx, 1
	lea	r15, [rsp + 0x98]
	mov	r14, qword ptr [rsp + 0x198]
	je	.label_463
	jmp	.label_293
.label_427:
	test	al, al
	js	.label_509
	cmp	byte ptr [rsp + 3], 0
	mov	rdx, rbx
	mov	ecx, 1
	jne	.label_568
	mov	rbp, rbx
	jmp	.label_477
.label_421:
	mov	rax, qword ptr [r14 + 0x10]
	test	rax, rax
	jle	.label_578
	mov	r15, qword ptr [rsp + 0xf8]
	xor	ebx, ebx
	jmp	.label_581
.label_509:
	lea	rdi, [rsp + 0x60]
	mov	rsi, r14
	mov	rdx, rbx
	call	check_halt_state_context
	cmp	rax, 1
	sbb	rdx, rdx
	xor	ecx, ecx
	test	rax, rax
	sete	al
	setne	cl
	or	al, byte ptr [rsp + 3]
	je	.label_585
	or	rdx, rbx
	jmp	.label_568
.label_585:
	mov	rbp, rbx
	jmp	.label_477
.label_667:
	mov	r12, qword ptr [rsp + 0x168]
	jmp	.label_420
.label_618:
	mov	rdi, qword ptr [rsp + 0x158]
	mov	rsi, r12
	shl	rsi, 4
	call	realloc
	test	rax, rax
	je	.label_340
	add	r12, r12
	mov	qword ptr [rsp + 0x158], rax
	mov	qword ptr [rsp + 0x150], r12
	jmp	.label_598
.label_581:
	mov	rcx, qword ptr [r14 + 0x18]
	mov	r13, qword ptr [rcx + rbx*8]
	mov	rcx, qword ptr [r15]
	mov	rdx, r13
	shl	rdx, 4
	cmp	byte ptr [rcx + rdx + 8], 8
	jne	.label_604
	mov	rcx, qword ptr [rcx + rdx]
	cmp	rcx, 0x3f
	jg	.label_604
	mov	rdx, qword ptr [r15 + 0xa0]
	bt	rdx, rcx
	jae	.label_604
	mov	r12, qword ptr [rsp + 0x148]
	cmp	r12, qword ptr [rsp + 0x150]
	je	.label_618
.label_598:
	mov	edi, 1
	mov	esi, 0x30
	call	rpl_calloc
	mov	rcx, qword ptr [rsp + 0x148]
	mov	rdx, qword ptr [rsp + 0x158]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rsp + 0x158]
	mov	rax, qword ptr [rax + rcx*8]
	test	rax, rax
	je	.label_340
	mov	qword ptr [rax + 8], r13
	inc	rcx
	mov	qword ptr [rsp + 0x148], rcx
	mov	qword ptr [rax], 0
	mov	rax, qword ptr [r14 + 0x10]
	mov	r12, qword ptr [rsp + 0x40]
.label_604:
	inc	rbx
	cmp	rbx, rax
	jl	.label_581
.label_578:
	mov	dword ptr [rsp + 4], 0
	test	byte ptr [r14 + 0x68], 0x40
	je	.label_643
	lea	rsi, [r14 + 8]
	lea	rdi, [rsp + 0x60]
	call	transit_state_bkref
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	jne	.label_648
.label_643:
	mov	dword ptr [rsp + 8], 0
	lea	r15, [rsp + 0x98]
	jmp	.label_413
.label_340:
	mov	ebp, 0xc
	jmp	.label_653
.label_648:
	movsxd	rbp, eax
	lea	r15, [rsp + 0x98]
	jmp	.label_477
	.section	.text
	.align	32
	#Procedure 0x40be3f
	.globl sub_40be3f
	.type sub_40be3f, @function
sub_40be3f:

	nop	
.label_646:
	mov	rax, qword ptr [rsp + 0x218]
	cmp	eax, 4
	ja	.label_660
	jmp	qword ptr [(rax * 8) + label_639]
.label_3310:
	cmp	rbp, r14
	jl	.label_386
	mov	rdi, qword ptr [rsp + 0x160]
	test	rdi, rdi
	je	.label_663
	mov	rcx, qword ptr [rsp + 0x170]
	mov	rdx, qword ptr [rsp + 0x50]
	mov	rsi, qword ptr [rsp + 0x48]
	nop	word ptr cs:[rax + rax]
.label_679:
	cmp	rbp, rcx
	mov	eax, 0
	jge	.label_674
	movzx	eax, byte ptr [rdx + rbp]
.label_674:
	movzx	eax, byte ptr [rdi + rax]
	cmp	byte ptr [rsi + rax], 0
	jne	.label_386
	lea	rax, [rbp - 1]
	mov	qword ptr [rsp + 0x20], rax
	cmp	rbp, r14
	mov	rbp, rax
	jg	.label_679
	jmp	.label_289
.label_3312:
	cmp	rbp, r12
	jge	.label_683
	mov	rcx, qword ptr [rsp + 0x50]
	mov	rdx, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x160]
	nop	dword ptr [rax]
.label_687:
	movzx	eax, byte ptr [rcx + rbp]
	movzx	eax, byte ptr [rsi + rax]
	cmp	byte ptr [rdx + rax], 0
	jne	.label_683
	inc	rbp
	mov	qword ptr [rsp + 0x20], rbp
	cmp	rbp, r12
	jl	.label_687
	jmp	.label_683
.label_3311:
	cmp	rbp, r12
	mov	rcx, qword ptr [rsp + 0x50]
	mov	rdx, qword ptr [rsp + 0x48]
	jge	.label_683
	nop	dword ptr [rax]
.label_692:
	movzx	eax, byte ptr [rcx + rbp]
	cmp	byte ptr [rdx + rax], 0
	jne	.label_683
	inc	rbp
	mov	qword ptr [rsp + 0x20], rbp
	cmp	rbp, r12
	jl	.label_692
	nop	word ptr [rax + rax]
.label_683:
	cmp	rbp, r12
	jne	.label_268
	xor	eax, eax
	cmp	r12, qword ptr [rsp + 0x170]
	mov	rcx, qword ptr [rsp + 0x50]
	jge	.label_699
	movzx	eax, byte ptr [rcx + r12]
.label_699:
	mov	rcx, qword ptr [rsp + 0x160]
	test	rcx, rcx
	je	.label_703
	movzx	eax, byte ptr [rcx + rax]
.label_703:
	mov	rcx, qword ptr [rsp + 0x48]
	mov	ebx, 1
	cmp	byte ptr [rcx + rax], 0
	mov	rbp, r12
	jne	.label_268
	jmp	.label_293
.label_660:
	mov	rax, qword ptr [rsp + 0x88]
	jmp	.label_647
	.section	.text
	.align	32
	#Procedure 0x40bf86
	.globl sub_40bf86
	.type sub_40bf86, @function
sub_40bf86:

	nop	word ptr cs:[rax + rax]
.label_264:
	add	rbp, qword ptr [rsp + 0x1f0]
	mov	qword ptr [rsp + 0x20], rbp
	cmp	rbp, r14
	mov	ebx, 1
	jl	.label_293
	cmp	rbp, r12
	jle	.label_647
	jmp	.label_293
.label_736:
	lea	rdi, [rsp + 0x60]
	mov	rsi, rbp
	mov	edx, dword ptr [rsp + 0x270]
	call	re_string_reconstruct
	mov	ebx, eax
	test	ebx, ebx
	jne	.label_293
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rsp + 0x88]
	mov	rcx, rbp
	sub	rcx, rax
	jmp	.label_729
	.section	.text
	.align	32
	#Procedure 0x40bfe8
	.globl sub_40bfe8
	.type sub_40bfe8, @function
sub_40bfe8:

	nop	dword ptr [rax + rax]
.label_647:
	mov	rcx, rbp
	sub	rcx, rax
	cmp	rcx, qword ptr [rsp + 0x98]
	jae	.label_736
.label_729:
	cmp	rbp, qword ptr [rsp + 0x170]
	mov	edx, 0
	mov	rsi, qword ptr [rsp + 0x48]
	jge	.label_253
	mov	rdx, qword ptr [rsp + 0x68]
	movzx	edx, byte ptr [rdx + rcx]
.label_253:
	cmp	byte ptr [rsi + rdx], 0
	je	.label_264
	jmp	.label_268
.label_663:
	mov	rcx, qword ptr [rsp + 0x170]
	mov	rdx, qword ptr [rsp + 0x50]
	mov	rsi, qword ptr [rsp + 0x48]
	nop	dword ptr [rax + rax]
.label_282:
	cmp	rbp, rcx
	mov	eax, 0
	jge	.label_275
	movzx	eax, byte ptr [rdx + rbp]
.label_275:
	cmp	byte ptr [rsi + rax], 0
	jne	.label_386
	lea	rax, [rbp - 1]
	mov	qword ptr [rsp + 0x20], rax
	cmp	rbp, r14
	mov	rbp, rax
	jg	.label_282
	jmp	.label_289
	.section	.text
	.align	32
	#Procedure 0x40c067
	.globl sub_40c067
	.type sub_40c067, @function
sub_40c067:

	nop	word ptr [rax + rax]
.label_386:
	mov	rax, rbp
.label_289:
	mov	ebx, 1
	cmp	rax, r14
	mov	rbp, rax
	jl	.label_293
.label_268:
	lea	rdi, [rsp + 0x60]
	mov	rsi, rbp
	mov	edx, dword ptr [rsp + 0x270]
	call	re_string_reconstruct
	mov	ebx, eax
	test	ebx, ebx
	jne	.label_293
	cmp	dword ptr [rsp + 0x17c], 1
	je	.label_309
	mov	rax, qword ptr [rsp + 0x90]
	test	rax, rax
	je	.label_309
	mov	rax, qword ptr [rsp + 0x70]
	cmp	dword ptr [rax], -1
	je	.label_312
.label_309:
	mov	dword ptr [rsp + 0x140], 0
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x88], xmm0
	mov	r13, qword ptr [rsp + 0xf8]
	mov	rbx, qword ptr [rsp + 0xa8]
	mov	dword ptr [rsp + 4], 0
	mov	r14, qword ptr [r13 + 0x48]
	cmp	byte ptr [r14 + 0x68], 0
	jns	.label_318
	test	rbx, rbx
	jle	.label_329
	lea	rax, [rbx - 1]
	cmp	qword ptr [rsp + 0xb8], rax
	je	.label_336
	cmp	dword ptr [rsp + 0xf0], 2
	jl	.label_343
	mov	rax, qword ptr [rsp + 0x70]
	mov	rcx, rbx
	nop	word ptr cs:[rax + rax]
.label_349:
	mov	ebp, dword ptr [rax + rcx*4 - 4]
	cmp	ebp, -1
	jne	.label_348
	dec	rcx
	jg	.label_349
	mov	ecx, dword ptr [rsp + 0xd0]
	jmp	.label_351
.label_343:
	mov	rcx, qword ptr [rsp + 0x68]
	mov	rdx, qword ptr [rsp + 0xe0]
	movzx	eax, byte ptr [rcx + rax]
	mov	ecx, eax
	shr	cl, 6
	movzx	ecx, cl
	mov	rcx, qword ptr [rdx + rcx*8]
	bt	rcx, rax
	jb	.label_355
	cmp	al, 0xa
	je	.label_367
	jmp	.label_318
.label_348:
	cmp	byte ptr [rsp + 0xee], 0
	jne	.label_369
.label_402:
	cmp	ebp, 0xa
	jne	.label_318
.label_367:
	xor	ecx, ecx
	cmp	byte ptr [rsp + 0xed], 0
	setne	cl
	add	ecx, ecx
.label_351:
	test	cl, 1
	jne	.label_355
	mov	rbp, rbx
	test	ecx, ecx
	je	.label_377
	mov	eax, ecx
	and	eax, 4
	sete	sil
	mov	edx, ecx
	and	edx, 2
	mov	bl, byte ptr [rsp + 2]
	je	.label_380
	test	sil, sil
	jne	.label_380
	mov	r14, qword ptr [r13 + 0x60]
	jmp	.label_385
	.section	.text
	.align	32
	#Procedure 0x40c1d9
	.globl sub_40c1d9
	.type sub_40c1d9, @function
sub_40c1d9:

	nop	dword ptr [rax]
.label_318:
	mov	rbp, rbx
	jmp	.label_377
.label_380:
	test	edx, edx
	jne	.label_389
	test	eax, eax
	je	.label_385
	mov	rdx, qword ptr [r14 + 0x50]
	lea	rdi, [rsp + 4]
	mov	rsi, r13
	call	re_acquire_state_context
	mov	r14, rax
	jmp	.label_385
.label_389:
	mov	r14, qword ptr [r13 + 0x58]
	jmp	.label_385
.label_329:
	mov	ecx, dword ptr [rsp + 0xd0]
	jmp	.label_351
.label_336:
	mov	ecx, dword ptr [rsp + 0x100]
	and	ecx, 2
	xor	ecx, 0xa
	jmp	.label_351
.label_369:
	mov	edi, ebp
	call	iswalnum
	cmp	ebp, 0x5f
	je	.label_355
	test	eax, eax
	je	.label_402
.label_355:
	mov	rbp, rbx
	mov	r14, qword ptr [r13 + 0x50]
.label_377:
	mov	bl, byte ptr [rsp + 2]
.label_385:
	test	r14, r14
	je	.label_410
	mov	rax, qword ptr [rsp + 0x118]
	test	rax, rax
	mov	cl, bl
	mov	dword ptr [rsp + 8], ecx
	je	.label_413
	mov	qword ptr [rax + rbp*8], r14
	cmp	qword ptr [r13 + 0x98], 0
	mov	al, bl
	mov	dword ptr [rsp + 8], eax
	jne	.label_421
.label_413:
	mov	al, byte ptr [r14 + 0x68]
	mov	rdx, -1
	test	al, 0x10
	mov	ecx, 0
	mov	rbx, rbp
	jne	.label_427
.label_568:
	mov	rbp, qword ptr [rsp + 0xa8]
	mov	rax, qword ptr [rsp + 0x210]
.label_441:
	mov	qword ptr [rsp + 0x220], rax
	mov	qword ptr [rsp + 0x168], rdx
	mov	qword ptr [rsp + 0x180], rbx
	cmp	qword ptr [rsp + 0xc8], rbp
	jle	.label_440
	test	rcx, rcx
	sete	bl
	or	bl, byte ptr [rsp + 3]
	mov	r13, r14
	jmp	.label_307
.label_337:
	add	ebp, 2
	lea	rdi, [rsp + 0x60]
	mov	esi, ebp
	call	extend_buffers
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	jne	.label_455
	jmp	.label_327
.label_341:
	cmp	qword ptr [r13 + 0x10], 0
	jle	.label_461
	mov	r8, qword ptr [rsp + 0xf8]
	xor	r14d, r14d
	mov	qword ptr [rsp + 0x18], r8
	jmp	.label_284
.label_725:
	mov	rax, qword ptr [rsp + 0xa8]
	test	rax, rax
	jle	.label_432
	lea	rdx, [rax - 1]
	mov	ecx, 0xa
	cmp	qword ptr [rsp + 0xb8], rdx
	je	.label_317
	cmp	dword ptr [rsp + 0xf0], 2
	jl	.label_481
	mov	rcx, qword ptr [rsp + 0x70]
.label_534:
	mov	r14d, dword ptr [rcx + rax*4 - 4]
	cmp	r14d, -1
	jne	.label_523
	dec	rax
	jg	.label_534
	mov	ecx, dword ptr [rsp + 0xd0]
	jmp	.label_317
.label_415:
	cmp	r13, r14
	je	.label_541
	mov	dword ptr [rsp + 8], 0
.label_541:
	mov	rax, qword ptr [rsp + 0x180]
	cmove	rax, r12
	mov	qword ptr [rsp + 0x180], rax
	jmp	.label_631
.label_481:
	mov	rax, qword ptr [rsp + 0x68]
	mov	rcx, qword ptr [rsp + 0xe0]
	movzx	eax, byte ptr [rax + rdx]
	mov	edx, eax
	shr	dl, 6
	movzx	edx, dl
	mov	rdx, qword ptr [rcx + rdx*8]
	mov	ecx, 1
	bt	rdx, rax
	jb	.label_317
	xor	ecx, ecx
	cmp	al, 0xa
	je	.label_515
	jmp	.label_317
.label_523:
	cmp	byte ptr [rsp + 0xee], 0
	jne	.label_517
.label_554:
	xor	ecx, ecx
	cmp	r14d, 0xa
	jne	.label_317
.label_515:
	xor	ecx, ecx
	cmp	byte ptr [rsp + 0xed], 0
	setne	cl
	add	ecx, ecx
.label_317:
	and	ecx, 1
	shl	rcx, 8
	or	rcx, rbp
	mov	r14, qword ptr [rsi + rcx*8]
	jmp	.label_298
.label_706:
	mov	ecx, dword ptr [rsp + 0xd0]
	jmp	.label_414
.label_708:
	mov	ecx, dword ptr [rsp + 0x100]
	and	ecx, 2
	xor	ecx, 0xa
	jmp	.label_414
.label_689:
	mov	edi, ebp
	call	iswalnum
	cmp	ebp, 0x5f
	mov	ecx, 1
	je	.label_535
	test	eax, eax
	lea	r15, [rsp + 0x98]
	je	.label_532
	jmp	.label_414
.label_535:
	lea	r15, [rsp + 0x98]
	jmp	.label_414
.label_284:
	mov	rax, qword ptr [r13 + 0x18]
	mov	rsi, qword ptr [rax + r14*8]
	mov	rax, qword ptr [r8]
	mov	rcx, rsi
	shl	rcx, 4
	mov	eax, dword ptr [rax + rcx + 8]
	test	eax, 0x100000
	je	.label_272
	mov	edi, eax
	shr	edi, 8
	test	di, 0x3ff
	mov	rcx, qword ptr [rsp + 0xa8]
	je	.label_407
	test	rcx, rcx
	mov	dword ptr [rsp + 0x10], eax
	js	.label_558
	cmp	qword ptr [rsp + 0xb8], rcx
	je	.label_564
	cmp	dword ptr [rsp + 0xf0], 2
	jl	.label_505
	mov	rax, qword ptr [rsp + 0x70]
	lea	rdx, [rcx + 1]
.label_542:
	mov	ebp, dword ptr [rax + rdx*4 - 4]
	cmp	ebp, -1
	jne	.label_573
	dec	rdx
	test	rdx, rdx
	jg	.label_542
	mov	r9d, dword ptr [rsp + 0xd0]
	jmp	.label_555
.label_505:
	mov	rax, qword ptr [rsp + 0x68]
	mov	rbp, qword ptr [rsp + 0xe0]
	movzx	eax, byte ptr [rax + rcx]
	mov	edx, eax
	shr	dl, 6
	movzx	edx, dl
	mov	rdx, qword ptr [rbp + rdx*8]
	xor	r9d, r9d
	bt	rdx, rax
	jae	.label_627
	mov	r9d, 1
	xor	edx, edx
	jmp	.label_588
.label_573:
	cmp	byte ptr [rsp + 0xee], 0
	jne	.label_641
.label_354:
	xor	r9d, r9d
	cmp	ebp, 0xa
	je	.label_590
	jmp	.label_555
.label_627:
	cmp	al, 0xa
	jne	.label_555
.label_590:
	xor	r9d, r9d
	cmp	byte ptr [rsp + 0xed], 0
	setne	r9b
	add	r9d, r9d
.label_555:
	mov	eax, r9d
	and	eax, 1
	sete	dl
	test	dil, 4
	je	.label_588
	test	eax, eax
	mov	eax, dword ptr [rsp + 0x10]
	je	.label_272
	jmp	.label_400
.label_558:
	mov	r9d, dword ptr [rsp + 0xd0]
	jmp	.label_555
.label_564:
	mov	r9d, dword ptr [rsp + 0x100]
	and	r9d, 2
	xor	r9d, 0xa
	jmp	.label_555
.label_641:
	mov	dword ptr [rsp + 0x178], edi
	mov	qword ptr [rsp + 0x1e0], rcx
	mov	qword ptr [rsp + 0x30], rsi
	mov	edi, ebp
	call	iswalnum
	xor	edx, edx
	cmp	ebp, 0x5f
	mov	r9d, 1
	je	.label_316
	test	eax, eax
	lea	r15, [rsp + 0x98]
	mov	r8, qword ptr [rsp + 0x18]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rcx, qword ptr [rsp + 0x1e0]
	mov	edi, dword ptr [rsp + 0x178]
	mov	eax, dword ptr [rsp + 0x10]
	je	.label_354
	jmp	.label_400
.label_316:
	lea	r15, [rsp + 0x98]
	mov	r8, qword ptr [rsp + 0x18]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rcx, qword ptr [rsp + 0x1e0]
	mov	edi, dword ptr [rsp + 0x178]
.label_588:
	mov	eax, dword ptr [rsp + 0x10]
.label_400:
	test	ah, 8
	je	.label_484
	test	dl, dl
	je	.label_272
.label_484:
	test	ah, 0x20
	je	.label_644
	mov	eax, r9d
	and	eax, 2
	je	.label_272
.label_644:
	test	dil, dil
	jns	.label_407
	and	r9d, 8
	je	.label_272
.label_407:
	mov	qword ptr [rsp + 0x30], rsi
	mov	rdi, qword ptr [rsp + 0x18]
	lea	rdx, [rsp + 0x60]
	call	check_node_accept_bytes
	mov	rsi, qword ptr [rsp + 0x30]
	mov	r8, qword ptr [rsp + 0x18]
	test	eax, eax
	je	.label_272
	movsxd	rbp, eax
	add	rbp, qword ptr [rsp + 0xa8]
	mov	ecx, dword ptr [rsp + 0x140]
	cmp	ecx, eax
	cmovl	ecx, eax
	mov	dword ptr [rsp + 0x140], ecx
	mov	rdi, qword ptr [rsp + 0x120]
	mov	rcx, qword ptr [rsp + 0xa0]
	mov	rax, qword ptr [rsp + 0xb8]
	cmp	rcx, rbp
	mov	qword ptr [rsp + 0x10], rbp
	jg	.label_657
	cmp	rcx, rax
	jl	.label_669
.label_657:
	mov	rcx, qword ptr [rsp + 0x90]
	cmp	rcx, rbp
	jg	.label_299
	cmp	rcx, rax
	jge	.label_299
.label_669:
	lea	esi, [rbp + 1]
	mov	rbp, rdi
	lea	rdi, [rsp + 0x60]
	call	extend_buffers
	mov	rdi, rbp
	mov	rbp, qword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	r8, qword ptr [rsp + 0x18]
	test	eax, eax
	jne	.label_675
.label_299:
	mov	rdx, rbp
	sub	rdx, rdi
	jle	.label_716
	mov	rax, qword ptr [rsp + 0x118]
	lea	rdi, [rax + rdi*8 + 8]
	shl	rdx, 3
	xor	esi, esi
	call	memset
	mov	rbp, qword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	r8, qword ptr [rsp + 0x18]
	mov	qword ptr [rsp + 0x120], rbp
.label_716:
	mov	dword ptr [rsp + 0x1f8], 0
	mov	rax, qword ptr [r8 + 0x18]
	mov	rax, qword ptr [rax + rsi*8]
	lea	rdx, [rax + rax*2]
	shl	rdx, 3
	add	rdx, qword ptr [r8 + 0x30]
	mov	rax, qword ptr [rsp + 0x118]
	mov	rax, qword ptr [rax + rbp*8]
	test	rax, rax
	mov	qword ptr [rsp + 0x30], rax
	je	.label_661
	mov	rsi, qword ptr [rax + 0x50]
	lea	rdi, [rsp + 0x1a0]
	call	re_node_set_init_union
	mov	rbp, qword ptr [rsp + 0x10]
	mov	dword ptr [rsp + 0x1f8], eax
	test	eax, eax
	je	.label_697
	jmp	.label_281
.label_661:
	mov	rax, qword ptr [rdx + 0x10]
	mov	qword ptr [rsp + 0x1b0], rax
	movups	xmm0, xmmword ptr [rdx]
	movaps	xmmword ptr [rsp + 0x1a0], xmm0
.label_697:
	test	rbp, rbp
	jle	.label_706
	lea	rax, [rbp - 1]
	cmp	qword ptr [rsp + 0xb8], rax
	je	.label_708
	cmp	dword ptr [rsp + 0xf0], 2
	jl	.label_673
	mov	rax, qword ptr [rsp + 0x70]
	mov	rcx, rbp
.label_620:
	mov	ebp, dword ptr [rax + rcx*4 - 4]
	cmp	ebp, -1
	jne	.label_310
	dec	rcx
	jg	.label_620
	mov	ecx, dword ptr [rsp + 0xd0]
	jmp	.label_414
.label_673:
	mov	rcx, qword ptr [rsp + 0x68]
	mov	rdx, qword ptr [rsp + 0xe0]
	movzx	eax, byte ptr [rcx + rax]
	mov	ecx, eax
	shr	cl, 6
	movzx	ecx, cl
	mov	rdx, qword ptr [rdx + rcx*8]
	mov	ecx, 1
	bt	rdx, rax
	jb	.label_414
	xor	ecx, ecx
	cmp	al, 0xa
	je	.label_295
	jmp	.label_414
.label_310:
	cmp	byte ptr [rsp + 0xee], 0
	jne	.label_689
.label_532:
	xor	ecx, ecx
	cmp	ebp, 0xa
	jne	.label_414
.label_295:
	xor	ecx, ecx
	cmp	byte ptr [rsp + 0xed], 0
	setne	cl
	add	ecx, ecx
.label_414:
	lea	rdi, [rsp + 0x1f8]
	mov	rsi, qword ptr [rsp + 0x18]
	lea	rdx, [rsp + 0x1a0]
	call	re_acquire_state_context
	cmp	qword ptr [rsp + 0x30], 0
	mov	rcx, qword ptr [rsp + 0x118]
	mov	rdx, qword ptr [rsp + 0x10]
	mov	qword ptr [rcx + rdx*8], rax
	je	.label_260
	mov	rdi, qword ptr [rsp + 0x1b0]
	call	free
	mov	rdx, qword ptr [rsp + 0x10]
.label_260:
	mov	rax, qword ptr [rsp + 0x118]
	cmp	qword ptr [rax + rdx*8], 0
	mov	r8, qword ptr [rsp + 0x18]
	jne	.label_272
	mov	eax, dword ptr [rsp + 0x1f8]
	test	eax, eax
	jne	.label_281
.label_272:
	inc	r14
	cmp	r14, qword ptr [r13 + 0x10]
	jl	.label_284
.label_461:
	mov	dword ptr [rsp + 4], 0
	jmp	.label_290
.label_675:
	mov	dword ptr [rsp + 0x1f8], eax
.label_281:
	mov	dword ptr [rsp + 4], eax
.label_361:
	xor	r14d, r14d
	jmp	.label_298
.label_432:
	mov	ecx, dword ptr [rsp + 0xd0]
	jmp	.label_317
.label_517:
	mov	qword ptr [rsp + 0x18], rsi
	mov	edi, r14d
	call	iswalnum
	cmp	r14d, 0x5f
	mov	ecx, 1
	je	.label_308
	test	eax, eax
	lea	r15, [rsp + 0x98]
	mov	rsi, qword ptr [rsp + 0x18]
	je	.label_554
	jmp	.label_317
.label_308:
	lea	r15, [rsp + 0x98]
	mov	rsi, qword ptr [rsp + 0x18]
	jmp	.label_317
	.section	.text
	.align	32
	#Procedure 0x40c8d8
	.globl sub_40c8d8
	.type sub_40c8d8, @function
sub_40c8d8:

	nop	dword ptr [rax + rax]
.label_307:
	lea	r12, [rbp + 1]
	mov	rcx, qword ptr [rsp + 0xa0]
	mov	rax, qword ptr [rsp + 0xb8]
	cmp	r12, rcx
	jl	.label_303
	cmp	rcx, rax
	jl	.label_337
.label_303:
	mov	rcx, qword ptr [rsp + 0x90]
	cmp	r12, rcx
	jl	.label_327
	cmp	rcx, rax
	jl	.label_337
.label_327:
	test	byte ptr [r13 + 0x68], 0x20
	jne	.label_341
.label_290:
	mov	rax, qword ptr [rsp + 0xa8]
	lea	rcx, [rax + 1]
	mov	qword ptr [rsp + 0xa8], rcx
	mov	rcx, qword ptr [rsp + 0x68]
	movzx	ebp, byte ptr [rcx + rax]
.label_279:
	mov	rax, qword ptr [r13 + 0x58]
	test	rax, rax
	jne	.label_482
	mov	rsi, qword ptr [r13 + 0x60]
	test	rsi, rsi
	jne	.label_725
	mov	rdi, qword ptr [rsp + 0xf8]
	mov	rsi, r13
	call	build_trtable
	test	al, al
	jne	.label_279
	mov	dword ptr [rsp + 4], 0xc
	jmp	.label_361
	.section	.text
	.align	32
	#Procedure 0x40c977
	.globl sub_40c977
	.type sub_40c977, @function
sub_40c977:

	nop	word ptr [rax + rax]
.label_482:
	mov	r14, qword ptr [rax + rbp*8]
.label_298:
	cmp	qword ptr [rsp + 0x118], 0
	je	.label_342
	lea	rdi, [rsp + 4]
	lea	rsi, [rsp + 0x60]
	mov	rdx, r14
	call	merge_state_with_log
	mov	r14, rax
.label_342:
	test	r14, r14
	jne	.label_642
	cmp	dword ptr [rsp + 4], 0
	jne	.label_330
	mov	rax, qword ptr [rsp + 0x118]
	test	rax, rax
	setne	cl
	and	cl, bl
	cmp	cl, 1
	je	.label_379
	jmp	.label_394
	.section	.text
	.align	32
	#Procedure 0x40c9d2
	.globl sub_40c9d2
	.type sub_40c9d2, @function
sub_40c9d2:

	nop	word ptr cs:[rax + rax]
.label_605:
	mov	rax, qword ptr [rsp + 0x118]
.label_379:
	mov	rdx, qword ptr [rsp + 0xa8]
	mov	rcx, qword ptr [rsp + 0x120]
	nop	dword ptr [rax + rax]
.label_492:
	cmp	rdx, rcx
	jge	.label_394
	lea	rsi, [rdx + 1]
	mov	qword ptr [rsp + 0xa8], rsi
	cmp	qword ptr [rax + rdx*8 + 8], 0
	mov	rdx, rsi
	je	.label_492
	xor	edx, edx
	lea	rdi, [rsp + 4]
	lea	rsi, [rsp + 0x60]
	call	merge_state_with_log
	mov	r14, rax
	test	r14, r14
	jne	.label_262
	mov	eax, dword ptr [rsp + 4]
	test	eax, eax
	je	.label_605
.label_262:
	test	r14, r14
	je	.label_394
	nop	word ptr [rax + rax]
.label_642:
	mov	eax, dword ptr [rsp + 8]
	test	al, 1
	jne	.label_415
.label_631:
	mov	r12, qword ptr [rsp + 0x40]
	mov	al, byte ptr [r14 + 0x68]
	test	al, 0x10
	jne	.label_654
	mov	rbp, qword ptr [rsp + 0xa8]
	jmp	.label_424
	.section	.text
	.align	32
	#Procedure 0x40ca73
	.globl sub_40ca73
	.type sub_40ca73, @function
sub_40ca73:

	nop	word ptr cs:[rax + rax]
.label_654:
	mov	rbp, qword ptr [rsp + 0xa8]
	test	al, al
	jns	.label_429
	lea	rdi, [rsp + 0x60]
	mov	rsi, r14
	mov	rdx, rbp
	call	check_halt_state_context
	test	rax, rax
	jne	.label_429
.label_424:
	cmp	qword ptr [rsp + 0xc8], rbp
	mov	r13, r14
	jg	.label_307
	jmp	.label_440
.label_429:
	cmp	byte ptr [rsp + 3], 0
	mov	rdx, rbp
	mov	ecx, 1
	mov	eax, 0
	mov	rbx, qword ptr [rsp + 0x180]
	jne	.label_441
	jmp	.label_477
	.section	.text
	.align	32
	#Procedure 0x40cad6
	.globl sub_40cad6
	.type sub_40cad6, @function
sub_40cad6:

	nop	word ptr cs:[rax + rax]
.label_394:
	mov	r12, qword ptr [rsp + 0x40]
.label_440:
	mov	rcx, qword ptr [rsp + 0x220]
	test	rcx, rcx
	je	.label_357
	mov	rax, qword ptr [rsp + 0x180]
	add	qword ptr [rcx], rax
.label_357:
	mov	rbp, qword ptr [rsp + 0x168]
.label_477:
	cmp	rbp, -1
	mov	r14, qword ptr [rsp + 0x198]
	je	.label_463
	mov	ebx, 0xc
	cmp	rbp, -2
	je	.label_293
.label_653:
	mov	r15, qword ptr [rsp + 0x38]
	cmp	r15, 1
	seta	al
	mov	qword ptr [rsp + 0x108], rbp
	mov	rcx, qword ptr [rsp + 0x58]
	test	byte ptr [rcx + 0x38], 0x10
	sete	r14b
	and	r14b, al
	je	.label_454
	mov	rax, qword ptr [rsp + 0x118]
	mov	rsi, qword ptr [rax + rbp*8]
	lea	rdi, [rsp + 0x60]
	mov	rdx, rbp
	call	check_halt_state_context
	mov	qword ptr [rsp + 0x110], rax
	mov	rbx, qword ptr [rsp + 0x28]
	jmp	.label_493
.label_454:
	mov	rbx, qword ptr [rsp + 0x28]
	cmp	qword ptr [rbx + 0x98], 0
	je	.label_431
	mov	rax, qword ptr [rsp + 0x118]
	mov	rsi, qword ptr [rax + rbp*8]
	lea	rdi, [rsp + 0x60]
	mov	rdx, rbp
	call	check_halt_state_context
	mov	qword ptr [rsp + 0x110], rax
	test	r14b, 1
	je	.label_508
.label_493:
	test	byte ptr [rbx + 0xb0], 1
	jne	.label_513
.label_508:
	cmp	qword ptr [rbx + 0x98], 0
	je	.label_431
.label_513:
	movabs	rax, 0x1ffffffffffffffe
	cmp	rbp, rax
	ja	.label_330
	mov	r15, qword ptr [rsp + 0xf8]
	mov	r12, qword ptr [rsp + 0x110]
	lea	rbx, [rbp*8 + 8]
	mov	rdi, rbx
	call	malloc
	mov	r14, rax
	test	r14, r14
	mov	r13d, 0
	je	.label_528
	cmp	qword ptr [r15 + 0x98], 0
	je	.label_530
	mov	qword ptr [rsp + 8], r15
	mov	rdi, rbx
	call	malloc
	mov	r13, rax
	test	r13, r13
	je	.label_411
	xor	esi, esi
	mov	rdi, r13
	mov	rdx, rbx
	call	memset
	mov	qword ptr [rsp + 0x1a0], r14
	mov	qword ptr [rsp + 0x1a8], r13
	mov	qword ptr [rsp + 0x1b0], r12
	mov	qword ptr [rsp + 0x1b8], rbp
	lea	rax, [rsp + 0x1c0]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	lea	rdi, [rsp + 0x60]
	jmp	.label_597
.label_530:
	mov	qword ptr [rsp + 0x1a0], r14
	mov	qword ptr [rsp + 0x1a8], 0
	mov	qword ptr [rsp + 0x1b0], r12
	mov	qword ptr [rsp + 0x1b8], rbp
	lea	rax, [rsp + 0x1c0]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	lea	rdi, [rsp + 0x60]
	lea	rsi, [rsp + 0x1a0]
	call	sift_states_backward
	mov	ebx, eax
	test	ebx, ebx
	mov	r13d, 0
	jne	.label_433
	cmp	qword ptr [r14], 0
	mov	r13d, 0
	je	.label_321
	jmp	.label_586
.label_731:
	lea	rbx, [rsp + 0x60]
	mov	rdi, rbx
	mov	rdx, rbp
	call	check_halt_state_context
	mov	r12, rax
	lea	rdx, [rbp*8 + 8]
	xor	esi, esi
	mov	rdi, r13
	call	memset
	mov	qword ptr [rsp + 0x1a0], r14
	mov	qword ptr [rsp + 0x1a8], r13
	mov	qword ptr [rsp + 0x1b0], r12
	mov	qword ptr [rsp + 0x1b8], rbp
	lea	rax, [rsp + 0x1c0]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	mov	rdi, rbx
.label_597:
	lea	rsi, [rsp + 0x1a0]
	call	sift_states_backward
	mov	ebx, eax
	test	ebx, ebx
	jne	.label_433
	mov	rsi, qword ptr [r14]
	test	rsi, rsi
	jne	.label_301
	cmp	qword ptr [r13], 0
	mov	esi, 0
	jne	.label_301
	test	rbp, rbp
	jle	.label_321
	mov	rax, qword ptr [rsp + 0x118]
	mov	rcx, rbp
	nop	dword ptr [rax]
.label_629:
	lea	rbp, [rcx - 1]
	mov	rsi, qword ptr [rax + rcx*8 - 8]
	test	rsi, rsi
	je	.label_625
	test	byte ptr [rsi + 0x68], 0x10
	jne	.label_731
.label_625:
	cmp	rcx, 2
	mov	rcx, rbp
	jge	.label_629
.label_321:
	mov	rdi, r14
	call	free
	mov	rdi, r13
	call	free
	lea	r15, [rsp + 0x98]
	mov	r14, qword ptr [rsp + 0x198]
	mov	r12, qword ptr [rsp + 0x40]
.label_463:
	lea	rdi, [rsp + 0x60]
	call	match_ctx_clean
.label_312:
	mov	rbp, qword ptr [rsp + 0x20]
	add	rbp, qword ptr [rsp + 0x1f0]
	mov	qword ptr [rsp + 0x20], rbp
	cmp	rbp, r14
	mov	ebx, 1
	jl	.label_293
	cmp	r12, rbp
	jge	.label_646
	jmp	.label_293
.label_301:
	test	rbp, rbp
	js	.label_547
	xor	r15d, r15d
	mov	qword ptr [rsp + 0x168], r12
	jmp	.label_595
	.section	.text
	.align	32
	#Procedure 0x40ce24
	.globl sub_40ce24
	.type sub_40ce24, @function
sub_40ce24:

	nop	word ptr cs:[rax + rax]
.label_677:
	mov	rsi, qword ptr [r14 + r15*8 + 8]
	inc	r15
.label_595:
	mov	rdx, qword ptr [r13 + r15*8]
	test	rsi, rsi
	je	.label_280
	test	rdx, rdx
	je	.label_490
	add	rsi, 8
	add	rdx, 8
	lea	r12, [rsp + 0x1f8]
	mov	rdi, r12
	call	re_node_set_init_union
	mov	ebx, eax
	mov	dword ptr [rsp + 4], ebx
	test	ebx, ebx
	jne	.label_667
	lea	rdi, [rsp + 4]
	mov	rsi, qword ptr [rsp + 8]
	mov	rdx, r12
	call	re_acquire_state
	mov	qword ptr [r14 + r15*8], rax
	mov	rdi, qword ptr [rsp + 0x208]
	call	free
	mov	ebx, dword ptr [rsp + 4]
	test	ebx, ebx
	mov	r12, qword ptr [rsp + 0x168]
	je	.label_490
	jmp	.label_420
.label_280:
	mov	qword ptr [r14 + r15*8], rdx
.label_490:
	cmp	r15, rbp
	jl	.label_677
.label_547:
	xor	ebx, ebx
.label_420:
	mov	rdi, r13
	call	free
	test	ebx, ebx
	mov	r13d, 0
	jne	.label_433
.label_586:
	mov	rdi, qword ptr [rsp + 0x118]
	call	free
	mov	qword ptr [rsp + 0x118], r14
	mov	qword ptr [rsp + 0x110], r12
	mov	qword ptr [rsp + 0x108], rbp
	mov	r15, qword ptr [rsp + 0x38]
.label_431:
	test	r15, r15
	je	.label_372
	cmp	r15, 1
	je	.label_688
	mov	rax, qword ptr [rsp + 0x268]
	lea	rdi, [rax + 0x10]
	cmp	r15, 2
	mov	edx, 2
	cmova	rdx, r15
	shl	rdx, 4
	add	rdx, -0x10
	mov	esi, 0xff
	call	memset
.label_688:
	mov	rax, qword ptr [rsp + 0x268]
	mov	rcx, rax
	mov	qword ptr [rcx], 0
	mov	rax, qword ptr [rsp + 0x108]
	mov	qword ptr [rcx + 8], rax
	cmp	r15, 2
	jb	.label_695
	mov	rax, qword ptr [rsp + 0x58]
	mov	al, byte ptr [rax + 0x38]
	and	al, 0x10
	jne	.label_695
	mov	rax, qword ptr [rsp + 0x28]
	test	byte ptr [rax + 0xb0], 1
	jne	.label_704
	xor	eax, eax
	jmp	.label_543
.label_372:
	xor	ebx, ebx
	jmp	.label_293
.label_704:
	cmp	qword ptr [rax + 0x98], 0
	setg	al
.label_543:
	mov	rdx, qword ptr [rsp + 0x38]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	rdi, qword ptr [rcx]
	movzx	r8d, al
	lea	rsi, [rsp + 0x60]
	mov	rcx, qword ptr [rsp + 0x268]
	call	set_regs
	mov	ebx, eax
	test	ebx, ebx
	jne	.label_293
.label_695:
	cmp	byte ptr [rsp + 0xec], 0
	jne	.label_516
	mov	rax, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rsp + 0x38]
	mov	edx, r15d
	and	edx, 1
	xor	ecx, ecx
	mov	rbx, qword ptr [rsp + 0x188]
	cmp	qword ptr [rsp + 0x190], rbx
	mov	r14, qword ptr [rsp + 0x28]
	je	.label_723
	mov	rsi, r15
	sub	rsi, rdx
	mov	rcx, qword ptr [rsp + 0x268]
	lea	rdi, [rcx + 0x18]
	xor	ecx, ecx
	nop	
.label_263:
	mov	rbp, qword ptr [rdi - 0x18]
	cmp	rbp, -1
	je	.label_571
	add	rbp, rax
	mov	qword ptr [rdi - 0x18], rbp
	add	qword ptr [rdi - 0x10], rax
.label_571:
	mov	rbp, qword ptr [rdi - 8]
	cmp	rbp, -1
	je	.label_265
	add	rbp, rax
	mov	qword ptr [rdi - 8], rbp
	add	qword ptr [rdi], rax
.label_265:
	add	rcx, 2
	add	rdi, 0x20
	cmp	rsi, rcx
	jne	.label_263
.label_723:
	test	rdx, rdx
	je	.label_267
	shl	rcx, 4
	mov	rdx, qword ptr [rsp + 0x268]
	mov	rdx, qword ptr [rdx + rcx]
	cmp	rdx, -1
	je	.label_267
	mov	rsi, qword ptr [rsp + 0x268]
	mov	rdi, rsi
	lea	rsi, [rdi + rcx]
	add	rdx, rax
	mov	qword ptr [rsi], rdx
	add	qword ptr [rdi + rcx + 8], rax
.label_267:
	test	rbx, rbx
	jle	.label_401
	mov	rdi, r15
	shl	rdi, 4
	add	rdi, qword ptr [rsp + 0x268]
	mov	rdx, rbx
	shl	rdx, 4
	mov	esi, 0xff
	call	memset
.label_401:
	mov	rax, qword ptr [r14 + 0xe0]
	test	rax, rax
	je	.label_462
	cmp	r15, 2
	mov	ebx, 0
	jb	.label_293
	mov	rcx, qword ptr [rsp + 0x188]
	sub	qword ptr [rsp + 0x190], rcx
	mov	rcx, qword ptr [rsp + 0x268]
	lea	rcx, [rcx + 0x18]
	xor	edx, edx
	nop	dword ptr [rax]
.label_324:
	mov	rsi, qword ptr [rax + rdx*8]
	cmp	rdx, rsi
	je	.label_315
	shl	rsi, 4
	mov	rdi, qword ptr [rsp + 0x268]
	mov	rsi, qword ptr [rdi + rsi + 0x10]
	mov	qword ptr [rcx - 8], rsi
	mov	rsi, qword ptr [rax + rdx*8]
	shl	rsi, 4
	mov	rsi, qword ptr [rdi + rsi + 0x18]
	mov	qword ptr [rcx], rsi
.label_315:
	inc	rdx
	add	rcx, 0x10
	xor	ebx, ebx
	cmp	qword ptr [rsp + 0x190], rdx
	jne	.label_324
	jmp	.label_293
.label_462:
	xor	ebx, ebx
	jmp	.label_293
.label_455:
	cmp	eax, 0xc
	je	.label_330
	mov	edi, OFFSET FLAT:label_333
	mov	esi, OFFSET FLAT:label_334
	mov	edx, 0x46c
	mov	ecx, OFFSET FLAT:label_335
	call	__assert_fail
.label_410:
	cmp	dword ptr [rsp + 4], 0xc
	je	.label_330
	mov	edi, OFFSET FLAT:label_333
	mov	esi, OFFSET FLAT:label_334
	mov	edx, 0x435
	mov	ecx, OFFSET FLAT:label_335
	call	__assert_fail
.label_411:
	mov	qword ptr [rsp + 0x1e8], r14
.label_528:
	mov	rdi, qword ptr [rsp + 0x1e8]
	call	free
	mov	rdi, r13
	call	free
.label_330:
	mov	ebx, 0xc
.label_293:
	mov	rdi, qword ptr [rsp + 0x118]
	call	free
	mov	rax, qword ptr [rsp + 0x28]
	cmp	qword ptr [rax + 0x98], 0
	je	.label_363
	lea	rdi, [rsp + 0x60]
	call	match_ctx_clean
	mov	rdi, qword ptr [rsp + 0x158]
	call	free
	mov	rdi, qword ptr [rsp + 0x138]
	call	free
.label_363:
	mov	rdi, qword ptr [rsp + 0x70]
	call	free
	mov	rdi, qword ptr [rsp + 0x78]
	call	free
	cmp	byte ptr [rsp + 0xeb], 0
	je	.label_381
	mov	rdi, qword ptr [rsp + 0x68]
	call	free
.label_381:
	mov	eax, ebx
	add	rsp, 0x228
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_516:
	mov	r8, qword ptr [rsp + 0x78]
	mov	rcx, qword ptr [rsp + 0x268]
	lea	rcx, [rcx + 8]
	mov	r15, qword ptr [rsp + 0x38]
	mov	rdx, r15
	mov	r14, qword ptr [rsp + 0x28]
	mov	rbx, qword ptr [rsp + 0x188]
.label_418:
	mov	rsi, qword ptr [rcx - 8]
	cmp	rsi, -1
	je	.label_510
	mov	rdi, qword ptr [rsp + 0x90]
	cmp	rsi, rdi
	lea	rsi, [r8 + rsi*8]
	lea	rbp, [rsp + 0x98]
	mov	rax, rbp
	cmove	rsi, rax
	mov	rsi, qword ptr [rsi]
	mov	qword ptr [rcx - 8], rsi
	mov	rbp, qword ptr [rcx]
	cmp	rbp, rdi
	lea	rdi, [r8 + rbp*8]
	cmove	rdi, rax
	mov	rbp, qword ptr [rsp + 0x20]
	add	rsi, rbp
	add	rbp, qword ptr [rdi]
	mov	qword ptr [rcx - 8], rsi
	mov	qword ptr [rcx], rbp
.label_510:
	add	rcx, 0x10
	dec	rdx
	jne	.label_418
	jmp	.label_267
	.section	.text
	.align	32
	#Procedure 0x40d266
	.globl sub_40d266
	.type sub_40d266, @function
sub_40d266:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d270

	.globl re_string_reconstruct
	.type re_string_reconstruct, @function
re_string_reconstruct:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r15d, edx
	mov	r12, rsi
	mov	rbx, rdi
	lea	r13, [rbx + 0x28]
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, r12
	jle	.label_1657
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_1671
	mov	qword ptr [rbx + 0x20], 0
.label_1671:
	mov	rax, qword ptr [rbx + 0x50]
	mov	qword ptr [rbx + 0x58], rax
	mov	rax, qword ptr [rbx + 0x60]
	mov	qword ptr [rbx + 0x68], rax
	mov	byte ptr [rbx + 0x8c], 0
	lea	eax, [r15 + r15]
	and	eax, 2
	xor	eax, 6
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r13], xmm0
	mov	qword ptr [r13 + 0x10], 0
	mov	dword ptr [rbx + 0x70], eax
	xor	eax, eax
	cmp	byte ptr [rbx + 0x8b], 0
	mov	r14, r12
	jne	.label_1676
	mov	rax, qword ptr [rbx]
	mov	qword ptr [rbx + 8], rax
	xor	eax, eax
	mov	r14, r12
.label_1676:
	test	r14, r14
	je	.label_1654
	mov	rbp, qword ptr [rbx + 0x38]
	cmp	r14, rbp
	jge	.label_1690
	cmp	byte ptr [rbx + 0x8c], 0
	jne	.label_1631
	lea	rsi, [r14 - 1]
	mov	rdi, rbx
	mov	edx, r15d
	call	re_string_context_at
	mov	dword ptr [rbx + 0x70], eax
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_1639
	mov	rdi, qword ptr [rbx + 0x10]
	mov	rdx, qword ptr [rbx + 0x30]
	lea	rsi, [rdi + r14*4]
	sub	rdx, r14
	shl	rdx, 2
	call	memmove
.label_1639:
	cmp	byte ptr [rbx + 0x8b], 0
	jne	.label_1680
.label_1689:
	sub	qword ptr [rbx + 0x30], r14
	sub	qword ptr [rbx + 0x38], r14
.label_1637:
	cmp	byte ptr [rbx + 0x8b], 0
	jne	.label_1654
	add	qword ptr [rbx + 8], r14
.label_1654:
	mov	qword ptr [rbx + 0x28], r12
	mov	rdx, qword ptr [rbx + 0x58]
	sub	rdx, r14
	mov	qword ptr [rbx + 0x58], rdx
	sub	qword ptr [rbx + 0x68], r14
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_1656
	cmp	byte ptr [rbx + 0x88], 0
	je	.label_1664
	mov	rdi, rbx
	call	build_wcs_upper_buffer
	test	eax, eax
	jne	.label_1672
	jmp	.label_1663
.label_1656:
	cmp	byte ptr [rbx + 0x8b], 0
	jne	.label_1674
	mov	qword ptr [rbx + 0x30], rdx
	jmp	.label_1663
.label_1664:
	mov	rdi, rbx
	call	build_wcs_buffer
.label_1663:
	mov	qword ptr [rbx + 0x48], 0
	xor	eax, eax
.label_1672:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1657:
	mov	r14, r12
	sub	r14, rax
	jmp	.label_1676
.label_1690:
	mov	rcx, qword ptr [rbx + 0x30]
	mov	qword ptr [rsp + 0x20], rcx
	movzx	r8d, word ptr [rbx + 0x8c]
	test	r8b, r8b
	jne	.label_1643
.label_1682:
	mov	qword ptr [rbx + 0x30], 0
	movsxd	rdi, dword ptr [rbx + 0x90]
	cmp	rdi, 2
	jl	.label_1691
	cmp	byte ptr [rbx + 0x89], 0
	je	.label_1633
	mov	r10, qword ptr [rbx]
	lea	rdx, [r10 + rax]
	mov	rsi, r14
	sub	rsi, rdi
	add	rsi, rdx
	cmp	rsi, r10
	cmovb	rsi, r10
	lea	r8, [rdx + r14]
	add	r10, r14
.label_1648:
	lea	rdi, [r10 + rax - 1]
	cmp	rdi, rsi
	jb	.label_1633
	movzx	ecx, byte ptr [rax + r10 - 1]
	and	cl, 0xc0
	dec	r10
	cmp	cl, 0x80
	je	.label_1648
	mov	qword ptr [rsp], r8
	add	rdx, qword ptr [rbx + 0x58]
	lea	rbp, [r10 + rax]
	sub	rdx, rbp
	mov	rdi, qword ptr [rbx + 0x78]
	test	rdi, rdi
	mov	rsi, rbp
	jne	.label_1651
.label_1647:
	mov	qword ptr [rsp + 8], 0
	lea	rdi, [rsp + 0x14]
	lea	rcx, [rsp + 8]
	call	rpl_mbrtowc
	mov	rdx, qword ptr [rsp]
	sub	rdx, rbp
	mov	esi, 0xffffffff
	mov	rcx, rax
	sub	rcx, rdx
	jb	.label_1668
	cmp	rax, -3
	ja	.label_1668
	mov	qword ptr [rbx + 0x20], 0
	mov	qword ptr [rbx + 0x30], rcx
	mov	esi, dword ptr [rsp + 0x14]
.label_1668:
	mov	edx, esi
	cmp	edx, -1
	jne	.label_1679
	mov	rax, qword ptr [rbx + 0x28]
	mov	rbp, qword ptr [rbx + 0x38]
.label_1633:
	add	rbp, rax
	mov	rax, rbp
	sub	rax, r12
	jge	.label_1686
	lea	rax, [rbx + 0x20]
	mov	qword ptr [rsp], rax
	jmp	.label_1653
.label_1631:
	mov	r8, qword ptr [rbx + 0x18]
	mov	rdx, qword ptr [rbx + 0x30]
	xor	ecx, ecx
	mov	qword ptr [rsp], rdx
.label_1636:
	lea	rsi, [rcx + rdx]
	mov	rax, rsi
	shr	rax, 0x3f
	add	rax, rsi
	sar	rax, 1
	mov	rsi, qword ptr [r8 + rax*8]
	cmp	rsi, r14
	mov	rdi, rax
	jg	.label_1692
	jge	.label_1635
	lea	rcx, [rax + 1]
	mov	rdi, rdx
.label_1692:
	cmp	rcx, rdi
	mov	rdx, rdi
	jl	.label_1636
.label_1635:
	xor	ecx, ecx
	cmp	rsi, r14
	setl	cl
	lea	rbp, [rcx + rax]
	lea	rsi, [rcx + rax - 1]
	mov	rdi, rbx
	mov	edx, r15d
	mov	r15, r8
	call	re_string_context_at
	mov	rsi, r15
	mov	dword ptr [rbx + 0x70], eax
	mov	rdi, qword ptr [rsp]
	mov	rdx, rdi
	sub	rdx, r14
	jle	.label_1652
	cmp	rbp, r14
	jne	.label_1652
	cmp	qword ptr [rsi + r14*8], r14
	jne	.label_1652
	mov	rdi, qword ptr [rbx + 0x10]
	lea	rsi, [rdi + r14*4]
	shl	rdx, 2
	call	memmove
	mov	rdi, qword ptr [rbx + 8]
	mov	rdx, qword ptr [rbx + 0x30]
	sub	rdx, r14
	lea	rsi, [rdi + r14]
	call	memmove
	movdqu	xmm0, xmmword ptr [rbx + 0x30]
	movq	xmm1, r14
	pshufd	xmm1, xmm1, 0x44
	psubq	xmm0, xmm1
	movdqu	xmmword ptr [rbx + 0x30], xmm0
	movq	rax, xmm0
	test	rax, rax
	jle	.label_1637
	mov	rax, qword ptr [rbx + 0x18]
	lea	rcx, [rax + r14*8]
	xor	edx, edx
.label_1683:
	mov	rsi, qword ptr [rcx + rdx*8]
	sub	rsi, r14
	mov	qword ptr [rax + rdx*8], rsi
	inc	rdx
	cmp	rdx, qword ptr [rbx + 0x30]
	jl	.label_1683
	jmp	.label_1637
.label_1680:
	mov	rdi, qword ptr [rbx + 8]
	mov	rdx, qword ptr [rbx + 0x30]
	sub	rdx, r14
	lea	rsi, [rdi + r14]
	call	memmove
	jmp	.label_1689
.label_1652:
	mov	rax, r14
	sub	rax, r12
	mov	rcx, qword ptr [rbx + 0x50]
	add	rcx, rax
	mov	qword ptr [rbx + 0x58], rcx
	add	rax, qword ptr [rbx + 0x60]
	mov	qword ptr [rbx + 0x68], rax
	mov	byte ptr [rbx + 0x8c], 0
.label_1685:
	mov	rax, rbp
	test	rax, rax
	jle	.label_1665
	lea	rbp, [rax - 1]
	cmp	qword ptr [rsi + rax*8 - 8], r14
	je	.label_1685
.label_1665:
	cmp	rax, rdi
	jge	.label_1640
	mov	rcx, qword ptr [rbx + 0x10]
.label_1650:
	cmp	dword ptr [rcx + rax*4], -1
	jne	.label_1640
	inc	rax
	cmp	rax, rdi
	jl	.label_1650
.label_1640:
	cmp	rax, rdi
	jne	.label_1644
	mov	qword ptr [rbx + 0x30], 0
	xor	eax, eax
	mov	qword ptr [rbx + 0x38], rax
	jmp	.label_1637
.label_1674:
	cmp	byte ptr [rbx + 0x88], 0
	je	.label_1641
	mov	r15, qword ptr [rbx + 0x30]
	mov	r14, qword ptr [rbx + 0x40]
	cmp	r14, rdx
	cmovg	r14, rdx
	cmp	r15, r14
	jl	.label_1655
	jmp	.label_1661
.label_1678:
	mov	r12, qword ptr [r13]
.label_1655:
	inc	r15
	add	r12, qword ptr [rbx]
	movzx	eax, byte ptr [r15 + r12 - 1]
	movzx	ecx, al
	mov	rdx, qword ptr [rbx + 0x78]
	test	rdx, rdx
	jne	.label_1666
.label_1684:
	movzx	ebp, al
	mov	eax, ebp
	sub	eax, -0x80
	cmp	eax, 0x17f
	ja	.label_1673
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	mov	ebp, dword ptr [rax + rbp*4]
.label_1673:
	mov	rax, qword ptr [rbx + 8]
	mov	byte ptr [rax + r15 - 1], bpl
	cmp	r15, r14
	jl	.label_1678
	jmp	.label_1681
.label_1666:
	movzx	eax, byte ptr [rdx + rcx]
	jmp	.label_1684
.label_1691:
	add	rax, r14
	mov	rdx, qword ptr [rbx]
	mov	cl, byte ptr [rdx + rax - 1]
	movzx	edx, cl
	mov	qword ptr [rbx + 0x38], 0
	mov	rsi, qword ptr [rbx + 0x78]
	test	rsi, rsi
	je	.label_1687
	mov	cl, byte ptr [rsi + rdx]
.label_1687:
	mov	rdx, qword ptr [rbx + 0x80]
	mov	eax, ecx
	shr	al, 6
	movzx	eax, al
	mov	rax, qword ptr [rdx + rax*8]
	mov	edx, 1
	movzx	esi, cl
	bt	rax, rsi
	jb	.label_1634
	xor	edx, edx
	cmp	cl, 0xa
	jne	.label_1634
	movzx	eax, r8w
	xor	edx, edx
	cmp	eax, 0xff
	seta	dl
	add	edx, edx
.label_1634:
	mov	dword ptr [rbx + 0x70], edx
	jmp	.label_1637
.label_1644:
	mov	rbp, qword ptr [rsi + rax*8]
	sub	rbp, r14
	mov	qword ptr [rbx + 0x30], rbp
	xor	eax, eax
	test	rbp, rbp
	je	.label_1638
	jle	.label_1646
	mov	rdi, qword ptr [rbx + 0x10]
	lea	rdx, [rbp*4]
	mov	esi, 0xff
	call	memset
.label_1646:
	mov	rdi, qword ptr [rbx + 8]
	mov	esi, 0xff
	mov	rdx, rbp
	call	memset
	mov	rax, qword ptr [rbx + 0x30]
.label_1638:
	mov	qword ptr [rbx + 0x38], rax
	jmp	.label_1637
.label_1686:
	mov	rbp, rax
	mov	qword ptr [rbx + 0x30], rax
	jmp	.label_1659
.label_1641:
	mov	rsi, qword ptr [rbx + 0x78]
	test	rsi, rsi
	je	.label_1663
	mov	rax, qword ptr [rbx + 0x30]
	mov	rcx, qword ptr [rbx + 0x40]
	cmp	rcx, rdx
	cmovg	rcx, rdx
	cmp	rax, rcx
	jge	.label_1669
	add	r12, rax
	mov	rdx, qword ptr [rbx]
	mov	rdi, qword ptr [rbx + 8]
	movzx	edx, byte ptr [rdx + r12]
	mov	dl, byte ptr [rsi + rdx]
	jmp	.label_1675
.label_1688:
	mov	rdx, qword ptr [rbx + 0x78]
	mov	rsi, qword ptr [rbx]
	mov	rdi, qword ptr [rbx + 8]
	add	rsi, qword ptr [rbx + 0x28]
	movzx	esi, byte ptr [rax + rsi]
	movzx	edx, byte ptr [rdx + rsi]
.label_1675:
	mov	byte ptr [rdi + rax], dl
	inc	rax
	cmp	rax, rcx
	jl	.label_1688
	mov	rax, rcx
.label_1669:
	mov	qword ptr [rbx + 0x30], rax
	mov	qword ptr [rbx + 0x38], rax
	jmp	.label_1663
.label_1681:
	mov	r15, r14
.label_1661:
	mov	qword ptr [rbx + 0x30], r15
	mov	qword ptr [rbx + 0x38], r15
	jmp	.label_1663
.label_1649:
	mov	rcx, qword ptr [rsp + 0x28]
	xor	edx, edx
	cmp	qword ptr [rsp + 0x30], 0
	je	.label_1632
	test	rax, rax
	je	.label_1632
	mov	rax, qword ptr [rbx]
	movzx	edx, byte ptr [rax + rbp]
.label_1632:
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax], rcx
	mov	eax, 1
	jmp	.label_1670
.label_1653:
	mov	rax, qword ptr [rbx + 0x20]
	mov	qword ptr [rsp + 0x28], rax
	mov	rdx, qword ptr [rbx + 0x50]
	sub	rdx, rbp
	mov	rsi, qword ptr [rbx]
	add	rsi, rbp
	lea	rdi, [rsp + 8]
	mov	qword ptr [rsp + 0x30], rdx
	mov	rcx, qword ptr [rsp]
	call	rpl_mbrtowc
	lea	rcx, [rax - 1]
	cmp	rcx, -3
	jae	.label_1649
	mov	edx, dword ptr [rsp + 8]
.label_1670:
	add	rbp, rax
	mov	rax, rbp
	sub	rax, r12
	jl	.label_1653
	mov	rbp, rax
	mov	qword ptr [rbx + 0x30], rax
	cmp	edx, -1
	je	.label_1659
.label_1679:
	cmp	byte ptr [rbx + 0x8e], 0
	jne	.label_1658
.label_1642:
	xor	ecx, ecx
	cmp	edx, 0xa
	jne	.label_1645
	xor	ecx, ecx
	cmp	byte ptr [rbx + 0x8d], 0
	setne	cl
	add	ecx, ecx
.label_1645:
	mov	dword ptr [rbx + 0x70], ecx
	mov	rbp, qword ptr [rbx + 0x30]
	jmp	.label_1660
.label_1659:
	mov	rsi, qword ptr [rsp + 0x20]
	dec	rsi
	mov	rdi, rbx
	mov	edx, r15d
	call	re_string_context_at
	mov	dword ptr [rbx + 0x70], eax
.label_1660:
	test	rbp, rbp
	jne	.label_1677
.label_1630:
	mov	rax, qword ptr [rbx + 0x30]
	mov	qword ptr [rbx + 0x38], rax
	jmp	.label_1637
.label_1643:
	mov	rdx, r14
	sub	rdx, r12
	mov	rsi, qword ptr [rbx + 0x50]
	add	rsi, rdx
	mov	qword ptr [rbx + 0x58], rsi
	add	rdx, qword ptr [rbx + 0x60]
	mov	qword ptr [rbx + 0x68], rdx
	mov	byte ptr [rbx + 0x8c], 0
	jmp	.label_1682
.label_1677:
	jle	.label_1667
	mov	rdi, qword ptr [rbx + 0x10]
	lea	rdx, [rbp*4]
	mov	esi, 0xff
	call	memset
.label_1667:
	cmp	byte ptr [rbx + 0x8b], 0
	mov	rdx, rbp
	je	.label_1630
	mov	rdi, qword ptr [rbx + 8]
	mov	esi, 0xff
	call	memset
	jmp	.label_1630
.label_1658:
	mov	ebp, edx
	mov	edi, ebp
	call	iswalnum
	mov	edx, ebp
	cmp	ebp, 0x5f
	mov	ecx, 1
	je	.label_1645
	test	eax, eax
	je	.label_1642
	jmp	.label_1645
.label_1651:
	lea	rsi, [rsp + 0x1a]
	cmp	rdx, 7
	mov	r8d, 6
	cmovl	r8, rdx
	cmp	rdx, 6
	mov	ecx, 6
	cmovl	ecx, edx
	test	ecx, ecx
	jle	.label_1647
	movsxd	r8, r8d
	lea	r9, [rsp + r8 + 0x19]
	add	rax, r8
	lea	r10, [r10 + rax - 1]
	xor	ecx, ecx
.label_1662:
	movzx	eax, byte ptr [r10 + rcx]
	movzx	eax, byte ptr [rdi + rax]
	mov	byte ptr [r9 + rcx], al
	lea	rax, [r8 + rcx - 1]
	dec	rcx
	inc	rax
	cmp	rax, 1
	jg	.label_1662
	jmp	.label_1647
	.section	.text
	.align	32
	#Procedure 0x40d9a3
	.globl sub_40d9a3
	.type sub_40d9a3, @function
sub_40d9a3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d9b0
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
	#Procedure 0x40da71
	.globl sub_40da71
	.type sub_40da71, @function
sub_40da71:

	nop	word ptr cs:[rax + rax]
.label_1693:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40da85
	.globl sub_40da85
	.type sub_40da85, @function
sub_40da85:

	nop	
	.section	.text
	.align	32
	#Procedure 0x40da87
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_87]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_88]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_89]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_1693
	test	rdx, rdx
	je	.label_1693
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
	#Procedure 0x40daf0
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
	je	.label_1694
	mov	esi, OFFSET FLAT:label_1015
	jmp	.label_1695
.label_1694:
	mov	esi, OFFSET FLAT:label_1017
.label_1695:
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
	#Procedure 0x40db60

	.globl xstr_iconv
	.type xstr_iconv, @function
xstr_iconv:
	push	rbx
	call	str_iconv
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_1697
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	je	.label_1696
.label_1697:
	mov	rax, rbx
	pop	rbx
	ret	
.label_1696:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40db82
	.globl sub_40db82
	.type sub_40db82, @function
sub_40db82:

	nop	word ptr cs:[rax + rax]
.label_1701:
	call	xalloc_die
.label_1702:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_1701
	mov	qword ptr [rsi], rbx
.label_1700:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_1699
	test	rax, rax
	je	.label_1701
.label_1699:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x40dbbd
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_1702
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_1698
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_1700
	call	free
	xor	eax, eax
	jmp	.label_1699
.label_1698:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40dbf4
	.globl sub_40dbf4
	.type sub_40dbf4, @function
sub_40dbf4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40dc00

	.globl set_regs
	.type set_regs, @function
set_regs:
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x88
	mov	r15, rcx
	mov	rbx, rdx
	mov	r12, rsi
	mov	rax, qword ptr [rip + label_1703]
	mov	qword ptr [rbp - 0xa0], rax
	movups	xmm0, xmmword ptr [rip + label_1704]
	movaps	xmmword ptr [rbp - 0xb0], xmm0
	xor	r13d, r13d
	test	r8b, r8b
	je	.label_1705
	mov	r14, rdi
	mov	edi, 0x60
	call	malloc
	mov	qword ptr [rbp - 0xa0], rax
	mov	ecx, 0xc
	test	rax, rax
	je	.label_1717
	lea	r13, [rbp - 0xb0]
	mov	rdi, r14
.label_1705:
	mov	qword ptr [rbp - 0x98], rdi
	mov	r14, qword ptr [rdi + 0x90]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rbp - 0x70], xmm0
	mov	qword ptr [rbp - 0x60], 0
	mov	rdx, rbx
	shl	rdx, 4
	cmp	rdx, 0xfbf
	mov	qword ptr [rbp - 0x50], rdx
	ja	.label_1724
	mov	rdi, rsp
	lea	rax, [rdx + 0xf]
	and	rax, 0xfffffffffffffff0
	sub	rdi, rax
	mov	rsp, rdi
	mov	dword ptr [rbp - 0x34], 0
	jmp	.label_1736
.label_1724:
	mov	rdi, rdx
	call	malloc
	mov	rdi, rax
	test	rdi, rdi
	je	.label_1742
	mov	al, 1
	mov	dword ptr [rbp - 0x34], eax
	mov	rdx, qword ptr [rbp - 0x50]
.label_1736:
	mov	qword ptr [rbp - 0x48], rdi
	mov	rsi, r15
	call	memcpy
	mov	r8, qword ptr [r15]
	xor	edi, edi
	cmp	r8, qword ptr [r15 + 8]
	jg	.label_1744
	lea	rax, [r15 + 8]
	mov	qword ptr [rbp - 0x88], rax
	mov	qword ptr [rbp - 0x90], rbx
	mov	qword ptr [rbp - 0x58], r12
	mov	qword ptr [rbp - 0x40], r15
	jmp	.label_1728
.label_1742:
	mov	ecx, 0xc
	test	r13, r13
	je	.label_1717
	cmp	qword ptr [r13], 0
	jle	.label_1707
	xor	ebx, ebx
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_1759:
	mov	rax, qword ptr [r13 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x28]
	call	free
	mov	rax, qword ptr [r13 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	inc	r15
	add	rbx, 0x30
	cmp	r15, qword ptr [r13]
	jl	.label_1759
.label_1707:
	mov	rdi, qword ptr [r13 + 0x10]
	call	free
	mov	ecx, 0xc
	jmp	.label_1717
.label_1761:
	mov	r12, rax
	jmp	.label_1746
	.section	.text
	.align	32
	#Procedure 0x40dd74
	.globl sub_40dd74
	.type sub_40dd74, @function
sub_40dd74:

	nop	word ptr cs:[rax + rax]
.label_1728:
	mov	rax, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rax]
	mov	rdx, r14
	shl	rdx, 4
	lea	rax, [rcx + rdx]
	mov	ecx, dword ptr [rcx + rdx + 8]
	cmp	cl, 9
	je	.label_1765
	cmp	cl, 8
	jne	.label_1710
	mov	rax, qword ptr [rax]
	inc	rax
	cmp	rax, rbx
	jge	.label_1710
	shl	rax, 4
	mov	qword ptr [r15 + rax], r8
	mov	qword ptr [r15 + rax + 8], -1
	jmp	.label_1710
	.section	.text
	.align	32
	#Procedure 0x40ddc9
	.globl sub_40ddc9
	.type sub_40ddc9, @function
sub_40ddc9:

	nop	dword ptr [rax]
.label_1765:
	mov	rax, qword ptr [rax]
	inc	rax
	cmp	rax, rbx
	jge	.label_1710
	shl	rax, 4
	cmp	qword ptr [r15 + rax], r8
	jge	.label_1760
	mov	qword ptr [r15 + rax + 8], r8
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, r15
	jmp	.label_1762
.label_1760:
	test	ecx, 0x80000
	je	.label_1771
	mov	rcx, qword ptr [rbp - 0x48]
	cmp	qword ptr [rcx + rax], -1
	je	.label_1771
	mov	rdi, r15
	mov	rsi, qword ptr [rbp - 0x48]
.label_1762:
	mov	rdx, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x30], r8
	call	memcpy
	mov	r8, qword ptr [rbp - 0x30]
	jmp	.label_1710
.label_1771:
	mov	qword ptr [r15 + rax + 8], r8
	nop	word ptr cs:[rax + rax]
.label_1710:
	cmp	r8, qword ptr [r15 + 8]
	jne	.label_1714
	cmp	r14, qword ptr [r12 + 0xb0]
	jne	.label_1714
	test	r13, r13
	je	.label_1716
	test	rbx, rbx
	mov	eax, 0
	je	.label_1721
	mov	rcx, qword ptr [rbp - 0x88]
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_1730:
	cmp	qword ptr [rcx - 8], 0
	js	.label_1726
	cmp	qword ptr [rcx], -1
	je	.label_1721
.label_1726:
	inc	rax
	add	rcx, 0x10
	cmp	rax, rbx
	jb	.label_1730
.label_1721:
	cmp	rax, rbx
	je	.label_1733
	mov	rcx, qword ptr [r13]
	lea	rax, [rcx - 1]
	mov	qword ptr [r13], rax
	test	rcx, rcx
	jle	.label_1708
	mov	rcx, qword ptr [r13 + 0x10]
	shl	rax, 4
	lea	rbx, [rax + rax*2]
	mov	r14, qword ptr [rcx + rbx]
	mov	rsi, qword ptr [rcx + rbx + 0x10]
	mov	rdi, r15
	mov	rdx, qword ptr [rbp - 0x50]
	call	memcpy
	mov	rdi, qword ptr [rbp - 0x60]
	call	free
	mov	rax, qword ptr [r13 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	mov	r8, r14
	mov	rax, qword ptr [r13 + 0x10]
	mov	rcx, qword ptr [rax + rbx + 0x28]
	mov	qword ptr [rbp - 0x60], rcx
	movups	xmm0, xmmword ptr [rax + rbx + 0x18]
	movaps	xmmword ptr [rbp - 0x70], xmm0
	mov	r14, qword ptr [rax + rbx + 8]
.label_1714:
	mov	r15, qword ptr [r12 + 0x98]
	mov	rax, qword ptr [r15]
	mov	rbx, r14
	shl	rbx, 4
	mov	ecx, dword ptr [rax + rbx + 8]
	test	cl, 8
	mov	qword ptr [rbp - 0x30], r8
	jne	.label_1747
	test	ecx, 0x100000
	jne	.label_1750
	movzx	ecx, cl
	cmp	ecx, 4
	jne	.label_1741
	mov	rax, qword ptr [rax + rbx]
	shl	rax, 4
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdi, qword ptr [rcx + rax + 0x10]
	mov	rax, qword ptr [rcx + rax + 0x18]
	mov	rdx, rax
	sub	rdx, rdi
	test	r13, r13
	je	.label_1753
	cmp	rax, -1
	mov	rcx, qword ptr [rbp - 0x30]
	je	.label_1727
	cmp	rdi, -1
	je	.label_1727
	test	rdx, rdx
	je	.label_1757
	mov	rax, qword ptr [rbp - 0x58]
	mov	rax, qword ptr [rax + 0x30]
	sub	rax, rcx
	cmp	rax, rdx
	jl	.label_1727
	mov	rax, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rax + 8]
	add	rdi, rsi
	add	rsi, rcx
	mov	rbx, rdx
	call	memcmp
	mov	rdx, rbx
	mov	rcx, qword ptr [rbp - 0x30]
	test	eax, eax
	jne	.label_1727
	mov	rax, qword ptr [r15 + 0x18]
	mov	r12, qword ptr [rax + r14*8]
	add	rdx, rcx
	jmp	.label_1769
	.section	.text
	.align	32
	#Procedure 0x40dfc7
	.globl sub_40dfc7
	.type sub_40dfc7, @function
sub_40dfc7:

	nop	word ptr [rax + rax]
.label_1747:
	mov	rax, qword ptr [r12 + 0xb8]
	mov	r12, qword ptr [rax + r8*8]
	mov	rbx, qword ptr [r15 + 0x28]
	lea	rdi, [rbp - 0x70]
	mov	rsi, r14
	call	re_node_set_insert
	test	al, al
	je	.label_1737
	lea	rax, [r14 + r14*2]
	mov	r10, qword ptr [rbx + rax*8 + 8]
	test	r10, r10
	jle	.label_1712
	mov	r9, qword ptr [r12 + 0x10]
	test	r9, r9
	jle	.label_1712
	mov	r8, qword ptr [rbx + rax*8 + 0x10]
	dec	r9
	mov	rsi, qword ptr [r12 + 0x18]
	je	.label_1709
	mov	r11, -1
	xor	r14d, r14d
	mov	r15, qword ptr [rbp - 0x40]
	nop	word ptr cs:[rax + rax]
.label_1734:
	mov	rbx, qword ptr [r8 + r14*8]
	mov	rdx, r9
	xor	eax, eax
	nop	dword ptr [rax]
.label_1720:
	mov	rdi, rax
	lea	rcx, [rdi + rdx]
	shr	rcx, 1
	cmp	qword ptr [rsi + rcx*8], rbx
	lea	rax, [rcx + 1]
	cmovge	rax, rdi
	cmovge	rdx, rcx
	cmp	rax, rdx
	jb	.label_1720
	cmp	rax, -1
	je	.label_1725
	cmp	qword ptr [rsi + rax*8], rbx
	jne	.label_1725
	cmp	r11, -1
	mov	r12, r11
	mov	r11, rbx
	jne	.label_1729
.label_1725:
	inc	r14
	cmp	r14, r10
	jl	.label_1734
	mov	r12, r11
	jmp	.label_1722
	.section	.text
	.align	32
	#Procedure 0x40e09b
	.globl sub_40e09b
	.type sub_40e09b, @function
sub_40e09b:

	nop	dword ptr [rax + rax]
.label_1750:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, r12
	mov	rcx, r8
	call	check_node_accept_bytes
	movsxd	rdx, eax
.label_1711:
	test	rdx, rdx
	jne	.label_1740
	jmp	.label_1741
.label_1709:
	mov	rbx, qword ptr [rsi]
	mov	r12, -1
	xor	ecx, ecx
	mov	r15, qword ptr [rbp - 0x40]
	nop	word ptr cs:[rax + rax]
.label_1748:
	cmp	rbx, qword ptr [r8 + rcx*8]
	jne	.label_1745
	cmp	r12, -1
	mov	rax, rbx
	je	.label_1763
	jmp	.label_1729
	.section	.text
	.align	32
	#Procedure 0x40e0f1
	.globl sub_40e0f1
	.type sub_40e0f1, @function
sub_40e0f1:

	nop	word ptr cs:[rax + rax]
.label_1745:
	mov	rax, r12
.label_1763:
	inc	rcx
	cmp	rcx, r10
	mov	r12, rax
	jl	.label_1748
	mov	r12, rax
	jmp	.label_1722
.label_1729:
	mov	r9, qword ptr [rbp - 0x68]
	test	r9, r9
	jle	.label_1732
	mov	rcx, r9
	dec	rcx
	mov	rax, qword ptr [rbp - 0x60]
	mov	edx, 0
	mov	r8, qword ptr [rbp - 0x30]
	je	.label_1751
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_1755:
	lea	rsi, [rdx + rcx]
	shr	rsi, 1
	cmp	qword ptr [rax + rsi*8], r12
	lea	rdi, [rsi + 1]
	cmovl	rdx, rdi
	cmovge	rcx, rsi
	cmp	rdx, rcx
	jb	.label_1755
.label_1751:
	cmp	rdx, -1
	setne	cl
	cmp	qword ptr [rax + rdx*8], r12
	sete	dl
	and	dl, cl
	mov	rax, r12
	cmovne	rax, rbx
	test	dl, dl
	jne	.label_1761
	test	r13, r13
	jne	.label_1764
	mov	r12, rax
	jmp	.label_1746
.label_1753:
	test	rdx, rdx
	mov	rcx, qword ptr [rbp - 0x30]
	je	.label_1757
	mov	rax, qword ptr [r15 + 0x18]
	mov	r12, qword ptr [rax + r14*8]
	add	rdx, rcx
	jmp	.label_1723
.label_1757:
	lea	rdi, [rbp - 0x70]
	mov	rsi, r14
	mov	r12, rdx
	call	re_node_set_insert
	mov	rdx, r12
	test	al, al
	je	.label_1737
	mov	rax, qword ptr [rbp - 0x58]
	mov	rax, qword ptr [rax + 0xb8]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rax + rcx*8]
	mov	rax, qword ptr [rcx + 0x10]
	test	rax, rax
	jle	.label_1741
	mov	rdi, qword ptr [r15 + 0x28]
	lea	rsi, [r14 + r14*2]
	mov	rsi, qword ptr [rdi + rsi*8 + 0x10]
	mov	r12, qword ptr [rsi]
	dec	rax
	mov	r8, qword ptr [rcx + 0x18]
	mov	ecx, 0
	je	.label_1770
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_1743:
	lea	rsi, [rcx + rax]
	shr	rsi, 1
	cmp	qword ptr [r8 + rsi*8], r12
	lea	rdi, [rsi + 1]
	cmovl	rcx, rdi
	cmovge	rax, rsi
	cmp	rcx, rax
	jb	.label_1743
.label_1770:
	cmp	rcx, -1
	je	.label_1711
	cmp	qword ptr [r8 + rcx*8], r12
	je	.label_1713
	jmp	.label_1711
	.section	.text
	.align	32
	#Procedure 0x40e235
	.globl sub_40e235
	.type sub_40e235, @function
sub_40e235:

	nop	word ptr cs:[rax + rax]
.label_1741:
	add	rbx, qword ptr [r15]
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsi, rbx
	mov	rdx, qword ptr [rbp - 0x30]
	call	check_node_accept
	test	al, al
	mov	edx, 1
	je	.label_1712
.label_1740:
	add	rdx, qword ptr [rbp - 0x30]
	test	r13, r13
	mov	rax, qword ptr [r15 + 0x18]
	mov	r12, qword ptr [rax + r14*8]
	je	.label_1723
.label_1769:
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rdx, qword ptr [rax + 0xa8]
	jg	.label_1727
	mov	rax, qword ptr [rbp - 0x58]
	mov	rax, qword ptr [rax + 0xb8]
	mov	rcx, qword ptr [rax + rdx*8]
	test	rcx, rcx
	je	.label_1727
	mov	rax, qword ptr [rcx + 0x10]
	test	rax, rax
	jle	.label_1727
	dec	rax
	mov	rcx, qword ptr [rcx + 0x18]
	mov	ebx, 0
	je	.label_1738
	xor	ebx, ebx
	nop	word ptr [rax + rax]
.label_1731:
	lea	rsi, [rbx + rax]
	shr	rsi, 1
	cmp	qword ptr [rcx + rsi*8], r12
	lea	rdi, [rsi + 1]
	cmovl	rbx, rdi
	cmovge	rax, rsi
	cmp	rbx, rax
	jb	.label_1731
.label_1738:
	cmp	rbx, -1
	je	.label_1712
	cmp	qword ptr [rcx + rbx*8], r12
	jne	.label_1712
.label_1723:
	mov	qword ptr [rbp - 0x68], 0
	mov	r8, rdx
	mov	r15, qword ptr [rbp - 0x40]
	jmp	.label_1746
.label_1732:
	test	r13, r13
	mov	r8, qword ptr [rbp - 0x30]
	je	.label_1746
.label_1764:
	mov	qword ptr [rbp - 0x80], r9
	mov	r14, qword ptr [r13]
	lea	rax, [r14 + 1]
	mov	qword ptr [r13], rax
	cmp	rax, qword ptr [r13 + 8]
	jne	.label_1749
	mov	rdi, qword ptr [r13 + 0x10]
	shl	rax, 5
	lea	rsi, [rax + rax*2]
	call	realloc
	mov	r15, rax
	test	r15, r15
	je	.label_1737
	shl	qword ptr [r13 + 8], 1
	mov	qword ptr [r13 + 0x10], r15
	mov	r8, qword ptr [rbp - 0x30]
	jmp	.label_1756
.label_1749:
	mov	r15, qword ptr [r13 + 0x10]
.label_1756:
	lea	r14, [r14 + r14*2]
	shl	r14, 4
	mov	qword ptr [r15 + r14], r8
	mov	qword ptr [r15 + r14 + 8], rbx
	mov	rdi, qword ptr [rbp - 0x50]
	call	malloc
	mov	qword ptr [r15 + r14 + 0x10], rax
	test	rax, rax
	je	.label_1737
	mov	rdi, rax
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x50]
	call	memcpy
	lea	rax, [r15 + r14 + 0x18]
	mov	rbx, qword ptr [rbp - 0x80]
	mov	qword ptr [r15 + r14 + 0x20], rbx
	test	rbx, rbx
	jle	.label_1767
	mov	qword ptr [rbp - 0x78], rax
	mov	qword ptr [rax], rbx
	shl	rbx, 3
	mov	rdi, rbx
	call	malloc
	mov	qword ptr [r15 + r14 + 0x28], rax
	test	rax, rax
	je	.label_1715
	mov	rsi, qword ptr [rbp - 0x60]
	mov	rdi, rax
	mov	rdx, rbx
	call	memcpy
	jmp	.label_1713
.label_1767:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
.label_1713:
	mov	r15, qword ptr [rbp - 0x40]
.label_1722:
	mov	r8, qword ptr [rbp - 0x30]
.label_1746:
	test	r12, r12
	jns	.label_1772
	cmp	r12, -2
	je	.label_1737
	nop	dword ptr [rax]
.label_1712:
	test	r13, r13
	je	.label_1706
.label_1727:
	mov	rcx, qword ptr [r13]
	lea	rax, [rcx - 1]
	mov	qword ptr [r13], rax
	test	rcx, rcx
	jle	.label_1708
	mov	rcx, qword ptr [r13 + 0x10]
	shl	rax, 4
	lea	rbx, [rax + rax*2]
	mov	r14, qword ptr [rcx + rbx]
	mov	rsi, qword ptr [rcx + rbx + 0x10]
	mov	r15, qword ptr [rbp - 0x40]
	mov	rdi, r15
	mov	rdx, qword ptr [rbp - 0x50]
	call	memcpy
	mov	rdi, qword ptr [rbp - 0x60]
	call	free
	mov	rax, qword ptr [r13 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	mov	r8, r14
	mov	rax, qword ptr [r13 + 0x10]
	mov	rcx, qword ptr [rax + rbx + 0x28]
	mov	qword ptr [rbp - 0x60], rcx
	movups	xmm0, xmmword ptr [rax + rbx + 0x18]
	movaps	xmmword ptr [rbp - 0x70], xmm0
	mov	r12, qword ptr [rax + rbx + 8]
.label_1772:
	cmp	r8, qword ptr [r15 + 8]
	mov	r14, r12
	mov	rbx, qword ptr [rbp - 0x90]
	mov	r12, qword ptr [rbp - 0x58]
	jle	.label_1728
	mov	rdi, qword ptr [rbp - 0x60]
.label_1744:
	call	free
	mov	eax, dword ptr [rbp - 0x34]
	test	al, al
	je	.label_1735
	mov	rdi, qword ptr [rbp - 0x48]
	call	free
.label_1735:
	xor	ecx, ecx
	test	r13, r13
	je	.label_1717
	cmp	qword ptr [r13], 0
	jle	.label_1739
	xor	ebx, ebx
	xor	r15d, r15d
	nop	dword ptr [rax]
.label_1752:
	mov	rax, qword ptr [r13 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x28]
	call	free
	mov	rax, qword ptr [r13 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	inc	r15
	add	rbx, 0x30
	cmp	r15, qword ptr [r13]
	jl	.label_1752
.label_1739:
	mov	rdi, qword ptr [r13 + 0x10]
.label_1754:
	call	free
	xor	ecx, ecx
.label_1717:
	mov	eax, ecx
	lea	rsp, [rbp - 0x28]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1706:
	mov	rdi, qword ptr [rbp - 0x60]
	call	free
	mov	ecx, 1
	mov	eax, dword ptr [rbp - 0x34]
	test	al, al
	je	.label_1717
	mov	rdi, qword ptr [rbp - 0x48]
	call	free
	mov	ecx, 1
	jmp	.label_1717
.label_1716:
	mov	rdi, qword ptr [rbp - 0x60]
	call	free
	xor	ecx, ecx
	mov	eax, dword ptr [rbp - 0x34]
	test	al, al
	je	.label_1717
	mov	rdi, qword ptr [rbp - 0x48]
	jmp	.label_1754
.label_1733:
	mov	rdi, qword ptr [rbp - 0x60]
	call	free
	mov	eax, dword ptr [rbp - 0x34]
	test	al, al
	je	.label_1758
	mov	rdi, qword ptr [rbp - 0x48]
	call	free
.label_1758:
	cmp	qword ptr [r13], 0
	jle	.label_1739
	xor	ebx, ebx
	xor	r14d, r14d
	nop	word ptr [rax + rax]
.label_1766:
	mov	rax, qword ptr [r13 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x28]
	call	free
	mov	rax, qword ptr [r13 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	inc	r14
	add	rbx, 0x30
	cmp	r14, qword ptr [r13]
	jl	.label_1766
	jmp	.label_1739
.label_1715:
	xorps	xmm0, xmm0
	mov	rax, qword ptr [rbp - 0x78]
	movups	xmmword ptr [rax], xmm0
.label_1737:
	mov	rdi, qword ptr [rbp - 0x60]
	call	free
	mov	eax, dword ptr [rbp - 0x34]
	test	al, al
	je	.label_1768
	mov	rdi, qword ptr [rbp - 0x48]
	call	free
.label_1768:
	mov	ecx, 0xc
	test	r13, r13
	je	.label_1717
	cmp	qword ptr [r13], 0
	jle	.label_1707
	xor	ebx, ebx
	xor	r15d, r15d
.label_1773:
	mov	rax, qword ptr [r13 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x28]
	call	free
	mov	rax, qword ptr [r13 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	inc	r15
	add	rbx, 0x30
	cmp	r15, qword ptr [r13]
	jl	.label_1773
	jmp	.label_1707
.label_1708:
	mov	edi, OFFSET FLAT:label_1718
	mov	esi, OFFSET FLAT:label_334
	mov	edx, 0x555
	mov	ecx, OFFSET FLAT:label_1719
	call	__assert_fail
	.section	.text
	.align	32
	#Procedure 0x40e626
	.globl sub_40e626
	.type sub_40e626, @function
sub_40e626:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e630

	.globl mbsstr
	.type mbsstr, @function
mbsstr:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x168
	mov	rbp, rsi
	mov	qword ptr [rsp], rdi
	call	__ctype_get_mb_cur_max
	cmp	rax, 2
	mov	qword ptr [rsp + 8], rbp
	jb	.label_1786
	mov	qword ptr [rsp + 0xf8], rbp
	mov	byte ptr [rsp + 0xe8], 0
	mov	qword ptr [rsp + 0xec], 0
	mov	byte ptr [rsp + 0xf4], 0
	lea	rdi, [rsp + 0xe8]
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x108]
	test	al, al
	je	.label_1794
	shr	rax, 0x20
	jne	.label_1794
	mov	rax, qword ptr [rsp]
	jmp	.label_1775
.label_1786:
	mov	r12b, byte ptr [rbp]
	test	r12b, r12b
	mov	rdi, rbp
	je	.label_1800
	mov	rbp, qword ptr [rsp]
	mov	r15b, byte ptr [rbp]
	xor	eax, eax
	test	r15b, r15b
	je	.label_1775
	mov	r9b, 1
	xor	r8d, r8d
	mov	r10, rdi
	xor	r13d, r13d
	xor	r14d, r14d
.label_1806:
	cmp	r14, 0xa
	jb	.label_1783
	mov	eax, r9d
	and	al, 1
	je	.label_1783
	lea	rax, [r14 + r14*4]
	cmp	r13, rax
	jb	.label_1783
	test	r10, r10
	je	.label_1774
	mov	byte ptr [rsp], r12b
	mov	rsi, r13
	sub	rsi, r8
	mov	rbx, rbp
	mov	rdi, r10
	mov	rbp, r9
	mov	r12, r10
	call	strnlen
	mov	r10, r12
	mov	r9, rbp
	mov	r12b, byte ptr [rsp]
	mov	rdi, qword ptr [rsp + 8]
	mov	rbp, rbx
	cmp	byte ptr [r10 + rax], 0
	mov	r8, r13
	je	.label_1774
	add	r10, rax
	mov	r8, r13
	jne	.label_1783
.label_1774:
	mov	qword ptr [rsp], r13
	mov	r13, r8
	mov	rbx, rbp
	mov	rbp, rdi
	call	strlen
	mov	rdi, rbx
	mov	rsi, rbp
	mov	rdx, rax
	lea	rcx, [rsp + 0xe8]
	call	knuth_morris_pratt
	test	al, al
	jne	.label_1789
	mov	r15b, byte ptr [rbx]
	xor	r9d, r9d
	xor	r10d, r10d
	mov	rbp, rbx
	mov	rdi, qword ptr [rsp + 8]
	mov	r8, r13
	mov	r13, qword ptr [rsp]
.label_1783:
	cmp	r15b, r12b
	jne	.label_1795
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_1802:
	movzx	edx, byte ptr [rdi + rcx]
	test	dl, dl
	je	.label_1798
	movzx	ebx, byte ptr [rbp + rcx]
	test	bl, bl
	mov	eax, 0
	je	.label_1775
	inc	rcx
	cmp	bl, dl
	je	.label_1802
	add	r13, rcx
	jmp	.label_1803
	.section	.text
	.align	32
	#Procedure 0x40e7ca
	.globl sub_40e7ca
	.type sub_40e7ca, @function
sub_40e7ca:

	nop	word ptr [rax + rax]
.label_1795:
	inc	r13
.label_1803:
	inc	r14
	mov	r15b, byte ptr [rbp + 1]
	inc	rbp
	test	r15b, r15b
	mov	eax, 0
	jne	.label_1806
	jmp	.label_1775
.label_1794:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rsp + 0x138], rax
	mov	byte ptr [rsp + 0x128], 0
	mov	qword ptr [rsp + 0x12c], 0
	mov	byte ptr [rsp + 0x134], 0
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rsp + 0x70], rax
	mov	byte ptr [rsp + 0x60], 0
	mov	qword ptr [rsp + 0x64], 0
	mov	byte ptr [rsp + 0x6c], 0
	lea	rdi, [rsp + 0x60]
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x80]
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x18], rcx
	test	al, al
	je	.label_1784
	shr	rax, 0x20
	je	.label_1788
.label_1784:
	mov	al, 1
	mov	dword ptr [rsp + 0x14], eax
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	lea	r12, [rsp + 0x60]
	lea	rbx, [rsp + 0x128]
	xor	ebp, ebp
	xor	r14d, r14d
	xor	r13d, r13d
.label_1791:
	mov	r15, r14
	cmp	r13, 0xa
	jb	.label_1792
	mov	eax, dword ptr [rsp + 0x14]
	and	al, 1
	je	.label_1792
	lea	rax, [r13 + r13*4]
	cmp	r15, rax
	jb	.label_1792
	cmp	r15, rbp
	je	.label_1799
	sub	rbp, r15
	nop	dword ptr [rax]
.label_1804:
	mov	rdi, rbx
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x148]
	test	al, al
	je	.label_1801
	shr	rax, 0x20
	je	.label_1799
.label_1801:
	mov	rax, qword ptr [rsp + 0x140]
	add	qword ptr [rsp + 0x138], rax
	mov	byte ptr [rsp + 0x134], 0
	inc	rbp
	jne	.label_1804
.label_1799:
	mov	rdi, rbx
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x148]
	test	al, al
	je	.label_1797
	shr	rax, 0x20
	mov	rbp, r15
	mov	rax, qword ptr [rsp]
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_1792
	mov	rdi, rax
	mov	rsi, rcx
	lea	rdx, [rsp + 0xa0]
	call	knuth_morris_pratt_multibyte
	test	al, al
	jne	.label_1779
	mov	dword ptr [rsp + 0x14], 0
.label_1797:
	mov	rbp, r15
.label_1792:
	lea	r14, [r15 + 1]
	mov	rax, qword ptr [rsp + 0x80]
	test	al, al
	je	.label_1781
	mov	rcx, qword ptr [rsp + 0x108]
	test	cl, cl
	je	.label_1781
	shr	rcx, 0x20
	shr	rax, 0x20
	cmp	eax, ecx
	je	.label_1787
	jmp	.label_1777
.label_1781:
	mov	rdx, qword ptr [rsp + 0x78]
	cmp	rdx, qword ptr [rsp + 0x100]
	jne	.label_1777
	mov	rdi, qword ptr [rsp + 0x70]
	mov	rsi, qword ptr [rsp + 0xf8]
	call	memcmp
	test	eax, eax
	jne	.label_1777
.label_1787:
	mov	qword ptr [rsp + 0xe0], r13
	movups	xmm0, xmmword ptr [rsp + 0x60]
	movups	xmm1, xmmword ptr [rsp + 0x70]
	movups	xmm2, xmmword ptr [rsp + 0x80]
	movups	xmm3, xmmword ptr [rsp + 0x90]
	movaps	xmmword ptr [rsp + 0xd0], xmm3
	movaps	xmmword ptr [rsp + 0xc0], xmm2
	movaps	xmmword ptr [rsp + 0xb0], xmm1
	movaps	xmmword ptr [rsp + 0xa0], xmm0
	mov	rax, qword ptr [rsp + 0xb8]
	add	qword ptr [rsp + 0xb0], rax
	mov	byte ptr [rsp + 0xac], 0
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rsp + 0x30], rax
	mov	byte ptr [rsp + 0x20], 0
	mov	qword ptr [rsp + 0x24], 0
	mov	byte ptr [rsp + 0x2c], 0
	lea	rdi, [rsp + 0x20]
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x40]
	test	al, al
	je	.label_1776
	shr	rax, 0x20
	je	.label_1778
.label_1776:
	mov	rax, qword ptr [rsp + 0x38]
	add	qword ptr [rsp + 0x30], rax
	mov	byte ptr [rsp + 0x2c], 0
	lea	rdi, [rsp + 0x20]
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x40]
	test	al, al
	je	.label_1782
	shr	rax, 0x20
	je	.label_1785
.label_1782:
	add	r15, 2
	mov	r14, r15
	nop	word ptr cs:[rax + rax]
.label_1780:
	lea	rdi, [rsp + 0xa0]
	call	mbuiter_multi_next
	mov	rcx, qword ptr [rsp + 0xc0]
	mov	rax, rcx
	shr	rax, 0x20
	test	cl, cl
	je	.label_1790
	test	eax, eax
	je	.label_1788
.label_1790:
	test	cl, cl
	sete	dl
	mov	rcx, qword ptr [rsp + 0x40]
	test	cl, cl
	je	.label_1793
	test	dl, dl
	jne	.label_1793
	shr	rcx, 0x20
	cmp	eax, ecx
	jne	.label_1796
	mov	r15, qword ptr [rsp + 0xb0]
	mov	rax, qword ptr [rsp + 0xb8]
	mov	r12, qword ptr [rsp + 0x30]
	mov	r13, qword ptr [rsp + 0x38]
	jmp	.label_1807
	.section	.text
	.align	32
	#Procedure 0x40eac2
	.globl sub_40eac2
	.type sub_40eac2, @function
sub_40eac2:

	nop	word ptr cs:[rax + rax]
.label_1793:
	mov	r13, qword ptr [rsp + 0xb8]
	cmp	r13, qword ptr [rsp + 0x38]
	jne	.label_1796
	mov	r15, qword ptr [rsp + 0xb0]
	mov	r12, qword ptr [rsp + 0x30]
	mov	rdi, r15
	mov	rsi, r12
	mov	rdx, r13
	call	memcmp
	test	eax, eax
	mov	rax, r13
	jne	.label_1796
.label_1807:
	add	r15, rax
	mov	qword ptr [rsp + 0xb0], r15
	mov	byte ptr [rsp + 0xac], 0
	add	r12, r13
	mov	qword ptr [rsp + 0x30], r12
	mov	byte ptr [rsp + 0x2c], 0
	lea	rdi, [rsp + 0x20]
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x40]
	inc	r14
	test	al, al
	je	.label_1780
	shr	rax, 0x20
	jne	.label_1780
	jmp	.label_1785
.label_1796:
	lea	r12, [rsp + 0x60]
	mov	r13, qword ptr [rsp + 0xe0]
	nop	word ptr cs:[rax + rax]
.label_1777:
	inc	r13
	mov	rax, qword ptr [rsp + 0x78]
	add	qword ptr [rsp + 0x70], rax
	mov	byte ptr [rsp + 0x6c], 0
	mov	rdi, r12
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x80]
	test	al, al
	je	.label_1791
	shr	rax, 0x20
	jne	.label_1791
	jmp	.label_1788
.label_1800:
	mov	rax, qword ptr [rsp]
	jmp	.label_1775
.label_1798:
	mov	rax, rbp
	jmp	.label_1775
.label_1785:
	mov	rax, qword ptr [rsp + 0x70]
.label_1805:
	mov	qword ptr [rsp + 0x18], rax
.label_1788:
	mov	rax, qword ptr [rsp + 0x18]
.label_1775:
	add	rsp, 0x168
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1789:
	mov	rax, qword ptr [rsp + 0xe8]
	jmp	.label_1775
.label_1779:
	mov	rax, qword ptr [rsp + 0xa0]
	jmp	.label_1805
.label_1778:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40ebdb
	.globl sub_40ebdb
	.type sub_40ebdb, @function
sub_40ebdb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ebe0

	.globl get_subexp_sub
	.type get_subexp_sub, @function
get_subexp_sub:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r14, r8
	mov	rbx, rcx
	mov	r12, rdx
	mov	r15, rsi
	mov	r13, rdi
	lea	rsi, [r12 + 0x10]
	mov	rdx, qword ptr [r12]
	mov	rcx, qword ptr [r12 + 8]
	mov	dword ptr [rsp], 8
	mov	r8, rbx
	mov	r9, r14
	call	check_arrival
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_1812
	mov	qword ptr [rsp + 0x20], r15
	mov	rsi, qword ptr [r15]
	mov	rdi, qword ptr [r12 + 8]
	mov	r15, qword ptr [r13 + 0xc8]
	mov	rax, qword ptr [r13 + 0xd0]
	cmp	r15, rax
	jl	.label_1815
	mov	qword ptr [rsp + 0x10], rsi
	mov	qword ptr [rsp + 0x18], rdi
	mov	rdi, qword ptr [r13 + 0xd8]
	shl	rax, 4
	lea	rsi, [rax + rax*4]
	call	realloc
	test	rax, rax
	je	.label_1813
	mov	qword ptr [r13 + 0xd8], rax
	mov	r15, qword ptr [r13 + 0xc8]
	mov	rbp, qword ptr [r13 + 0xd0]
	lea	rcx, [r15 + r15*4]
	lea	rdi, [rax + rcx*8]
	lea	rax, [rbp*8]
	lea	rdx, [rax + rax*4]
	xor	esi, esi
	call	memset
	add	rbp, rbp
	mov	qword ptr [r13 + 0xd0], rbp
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, qword ptr [rsp + 0x10]
.label_1815:
	test	r15, r15
	jle	.label_1816
	lea	rcx, [r15 - 1]
	mov	rax, qword ptr [r13 + 0xd8]
	lea	rcx, [rcx + rcx*4]
	cmp	qword ptr [rax + rcx*8 + 8], r14
	jne	.label_1810
	mov	byte ptr [rax + rcx*8 + 0x20], 1
	jmp	.label_1810
.label_1816:
	mov	rax, qword ptr [r13 + 0xd8]
.label_1810:
	lea	rcx, [r15 + r15*4]
	mov	qword ptr [rax + rcx*8], rbx
	mov	qword ptr [rax + rcx*8 + 8], r14
	mov	qword ptr [rax + rcx*8 + 0x10], rsi
	mov	qword ptr [rax + rcx*8 + 0x18], rdi
	xor	edx, edx
	sub	rdi, rsi
	mov	si, 0xffff
	cmovne	si, dx
	mov	word ptr [rax + rcx*8 + 0x22], si
	inc	r15
	mov	qword ptr [r13 + 0xc8], r15
	mov	byte ptr [rax + rcx*8 + 0x20], 0
	movsxd	rax, dword ptr [r13 + 0xe0]
	cmp	rax, rdi
	jge	.label_1811
	mov	dword ptr [r13 + 0xe0], edi
.label_1811:
	add	r14, qword ptr [r12 + 8]
	mov	rax, qword ptr [rsp + 0x20]
	sub	r14, qword ptr [rax]
	mov	rax, qword ptr [r13 + 0x40]
	mov	r15, qword ptr [r13 + 0xc0]
	cmp	rax, r14
	jg	.label_1814
	cmp	rax, qword ptr [r13 + 0x58]
	jl	.label_1808
.label_1814:
	mov	rax, qword ptr [r13 + 0x30]
	cmp	rax, r14
	jg	.label_1809
	cmp	rax, qword ptr [r13 + 0x58]
	jge	.label_1809
.label_1808:
	lea	esi, [r14 + 1]
	mov	rdi, r13
	call	extend_buffers
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_1812
.label_1809:
	xor	ebp, ebp
	mov	rdx, r14
	sub	rdx, r15
	jle	.label_1812
	mov	rax, qword ptr [r13 + 0xb8]
	lea	rdi, [rax + r15*8 + 8]
	shl	rdx, 3
	xor	ebp, ebp
	xor	esi, esi
	call	memset
	mov	qword ptr [r13 + 0xc0], r14
.label_1812:
	mov	eax, ebp
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1813:
	mov	rdi, qword ptr [r13 + 0xd8]
	call	free
	mov	ebp, 0xc
	jmp	.label_1812
	.section	.text
	.align	32
	#Procedure 0x40edb8
	.globl sub_40edb8
	.type sub_40edb8, @function
sub_40edb8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40edc0
	.globl rpl_re_set_registers
	.type rpl_re_set_registers, @function
rpl_re_set_registers:

	mov	al, byte ptr [rdi + 0x38]
	and	al, 0xf9
	mov	r9d, eax
	or	r9b, 2
	test	rdx, rdx
	je	.label_1817
	mov	eax, r9d
.label_1817:
	cmove	r8, rdx
	cmove	rcx, rdx
	mov	byte ptr [rdi + 0x38], al
	mov	qword ptr [rsi], rdx
	mov	qword ptr [rsi + 0x10], r8
	mov	qword ptr [rsi + 8], rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x40edeb
	.globl sub_40edeb
	.type sub_40edeb, @function
sub_40edeb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40edf0

	.globl re_dfa_add_node
	.type re_dfa_add_node, @function
re_dfa_add_node:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r14, rdx
	mov	r12, rsi
	mov	rbx, rdi
	mov	r13, qword ptr [rbx + 8]
	mov	rax, qword ptr [rbx + 0x10]
	cmp	rax, r13
	jae	.label_1822
.label_1823:
	mov	rcx, qword ptr [rbx]
	shl	rax, 4
	mov	qword ptr [rcx + rax], r12
	mov	qword ptr [rcx + rax + 8], r14
	mov	rax, qword ptr [rbx]
	mov	rcx, qword ptr [rbx + 0x10]
	shl	rcx, 4
	and	dword ptr [rax + rcx + 8], 0xfffc00ff
	movzx	eax, r14b
	cmp	eax, 5
	jne	.label_1820
	mov	cl, 1
	cmp	dword ptr [rbx + 0xb4], 1
	jg	.label_1818
.label_1820:
	cmp	eax, 6
	sete	cl
.label_1818:
	movzx	eax, cl
	mov	rcx, qword ptr [rbx]
	mov	rdx, qword ptr [rbx + 0x10]
	shl	rdx, 4
	shl	eax, 0x14
	mov	esi, 0xffefffff
	and	esi, dword ptr [rcx + rdx + 8]
	or	esi, eax
	mov	dword ptr [rcx + rdx + 8], esi
	mov	rax, qword ptr [rbx + 0x10]
	mov	rcx, qword ptr [rbx + 0x18]
	mov	qword ptr [rcx + rax*8], -1
	mov	rax, qword ptr [rbx + 0x10]
	mov	rcx, qword ptr [rbx + 0x28]
	lea	rax, [rax + rax*2]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rcx + rax*8], xmm0
	mov	qword ptr [rcx + rax*8 + 0x10], 0
	mov	rax, qword ptr [rbx + 0x10]
	mov	rcx, qword ptr [rbx + 0x30]
	lea	rax, [rax + rax*2]
	movups	xmmword ptr [rcx + rax*8], xmm0
	mov	qword ptr [rcx + rax*8 + 0x10], 0
	mov	r15, qword ptr [rbx + 0x10]
	lea	rax, [r15 + 1]
	mov	qword ptr [rbx + 0x10], rax
.label_1819:
	mov	rax, r15
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1822:
	lea	rcx, [r13 + r13]
	mov	r15, -1
	movabs	rax, 0xaaaaaaaaaaaaaaa
	cmp	rcx, rax
	ja	.label_1819
	mov	qword ptr [rsp + 0x10], rcx
	mov	rdi, qword ptr [rbx]
	mov	rsi, r13
	shl	rsi, 5
	call	realloc
	test	rax, rax
	je	.label_1819
	mov	qword ptr [rbx], rax
	mov	rdi, qword ptr [rbx + 0x18]
	shl	r13, 4
	mov	rsi, r13
	call	realloc
	mov	qword ptr [rsp + 8], rax
	mov	rdi, qword ptr [rbx + 0x20]
	mov	rsi, r13
	call	realloc
	mov	qword ptr [rsp], rax
	mov	rdi, qword ptr [rbx + 0x28]
	lea	rbp, [r13 + r13*2]
	mov	rsi, rbp
	call	realloc
	mov	r13, rax
	mov	rdi, qword ptr [rbx + 0x30]
	mov	rsi, rbp
	call	realloc
	mov	rbp, rax
	mov	rax, qword ptr [rsp]
	mov	rdi, qword ptr [rsp + 8]
	test	rdi, rdi
	je	.label_1821
	test	rax, rax
	je	.label_1821
	test	r13, r13
	je	.label_1821
	test	rbp, rbp
	je	.label_1821
	mov	qword ptr [rbx + 0x18], rdi
	mov	qword ptr [rbx + 0x20], rax
	mov	qword ptr [rbx + 0x28], r13
	mov	qword ptr [rbx + 0x30], rbp
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rbx + 8], rax
	mov	rax, qword ptr [rbx + 0x10]
	jmp	.label_1823
.label_1821:
	mov	rbx, rax
	call	free
	mov	rdi, rbx
	call	free
	mov	rdi, r13
	call	free
	mov	rdi, rbp
	call	free
	jmp	.label_1819
	.section	.text
	.align	32
	#Procedure 0x40efbb
	.globl sub_40efbb
	.type sub_40efbb, @function
sub_40efbb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40efc0

	.globl free_dfa_content
	.type free_dfa_content, @function
free_dfa_content:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rdi
	mov	rax, qword ptr [r14]
	test	rax, rax
	je	.label_1835
	cmp	qword ptr [r14 + 0x10], 0
	je	.label_1835
	xor	ebx, ebx
	mov	r12d, 8
	mov	ebp, 0x400ff
	jmp	.label_1838
	.section	.text
	.align	32
	#Procedure 0x40efec
	.globl sub_40efec
	.type sub_40efec, @function
sub_40efec:

	nop	dword ptr [rax]
.label_1833:
	add	r12, 0x10
	mov	rax, qword ptr [r14]
.label_1838:
	mov	ecx, dword ptr [rax + r12]
	and	ecx, ebp
	cmp	ecx, 3
	je	.label_1840
	cmp	ecx, 6
	jne	.label_1825
	mov	r15, qword ptr [rax + r12 - 8]
	mov	rdi, qword ptr [r15]
	call	free
	mov	rdi, qword ptr [r15 + 8]
	call	free
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
	mov	rdi, qword ptr [r15 + 0x18]
	call	free
	mov	rdi, r15
	jmp	.label_1831
	.section	.text
	.align	32
	#Procedure 0x40f034
	.globl sub_40f034
	.type sub_40f034, @function
sub_40f034:

	nop	word ptr cs:[rax + rax]
.label_1840:
	mov	rdi, qword ptr [rax + r12 - 8]
.label_1831:
	call	free
.label_1825:
	inc	rbx
	cmp	rbx, qword ptr [r14 + 0x10]
	jb	.label_1833
.label_1835:
	mov	rdi, qword ptr [r14 + 0x18]
	call	free
	cmp	qword ptr [r14 + 0x10], 0
	je	.label_1837
	lea	r12, [r14 + 0x30]
	lea	r15, [r14 + 0x38]
	lea	r13, [r14 + 0x28]
	xor	ebp, ebp
	mov	ebx, 0x10
	nop	word ptr cs:[rax + rax]
.label_1832:
	mov	rax, qword ptr [r12]
	test	rax, rax
	je	.label_1824
	mov	rdi, qword ptr [rax + rbx]
	call	free
.label_1824:
	mov	rax, qword ptr [r15]
	test	rax, rax
	je	.label_1828
	mov	rdi, qword ptr [rax + rbx]
	call	free
.label_1828:
	mov	rax, qword ptr [r13]
	test	rax, rax
	je	.label_1829
	mov	rdi, qword ptr [rax + rbx]
	call	free
.label_1829:
	inc	rbp
	add	rbx, 0x18
	cmp	rbp, qword ptr [r14 + 0x10]
	jb	.label_1832
	jmp	.label_1836
.label_1837:
	lea	r13, [r14 + 0x28]
	lea	r12, [r14 + 0x30]
	lea	r15, [r14 + 0x38]
.label_1836:
	mov	rdi, qword ptr [r13]
	call	free
	mov	rdi, qword ptr [r12]
	call	free
	mov	rdi, qword ptr [r15]
	call	free
	mov	rdi, qword ptr [r14]
	call	free
	mov	rdi, qword ptr [r14 + 0x40]
	test	rdi, rdi
	je	.label_1830
	xor	r15d, r15d
	jmp	.label_1841
.label_1834:
	mov	rdi, qword ptr [r14 + 0x40]
.label_1841:
	lea	rax, [r15 + r15*2]
	lea	r12, [rdi + rax*8 + 0x10]
	cmp	qword ptr [rdi + rax*8], 0
	jle	.label_1826
	lea	rbx, [rdi + rax*8]
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_1827:
	mov	rax, qword ptr [r12]
	mov	rdi, qword ptr [rax + rbp*8]
	call	free_state
	inc	rbp
	cmp	rbp, qword ptr [rbx]
	jl	.label_1827
.label_1826:
	mov	rdi, qword ptr [r12]
	call	free
	inc	r15
	cmp	r15, qword ptr [r14 + 0x88]
	jbe	.label_1834
	mov	rdi, qword ptr [r14 + 0x40]
.label_1830:
	call	free
	mov	rdi, qword ptr [r14 + 0x78]
	mov	eax, OFFSET FLAT:utf8_sb_map
	cmp	rdi, rax
	je	.label_1839
	call	free
.label_1839:
	mov	rdi, qword ptr [r14 + 0xe0]
	call	free
	mov	rdi, r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	free
	.section	.text
	.align	32
	#Procedure 0x40f188
	.globl sub_40f188
	.type sub_40f188, @function
sub_40f188:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f190

	.globl duplicate_node_closure
	.type duplicate_node_closure, @function
duplicate_node_closure:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r13d, r8d
	mov	qword ptr [rsp + 0x20], rcx
	mov	rbp, rdx
	mov	r14, rsi
	mov	r12, rdi
.label_1846:
	mov	eax, r13d
	shl	eax, 8
	and	eax, 0x3ff00
	mov	dword ptr [rsp + 0xc], eax
	mov	r15, r14
	mov	dword ptr [rsp + 0x1c], r13d
	nop	word ptr cs:[rax + rax]
.label_1843:
	mov	rax, qword ptr [r12]
	mov	rdx, r15
	shl	rdx, 4
	cmp	byte ptr [rax + rdx + 8], 4
	jne	.label_1854
	mov	rcx, qword ptr [r12 + 0x18]
	mov	rdx, qword ptr [r12 + 0x28]
	mov	r13, qword ptr [rcx + r15*8]
	lea	r14, [rbp + rbp*2]
	mov	qword ptr [rdx + r14*8 + 8], 0
	mov	rbx, r13
	shl	rbx, 4
	mov	rsi, qword ptr [rax + rbx]
	mov	rdx, qword ptr [rax + rbx + 8]
	mov	rdi, r12
	call	re_dfa_add_node
	mov	rdi, rbp
	mov	rbp, rax
	mov	dword ptr [rsp + 8], 0xc
	cmp	rbp, -1
	je	.label_1842
	mov	rax, qword ptr [r12]
	mov	rcx, rbp
	shl	rcx, 4
	mov	edx, dword ptr [rax + rcx + 8]
	mov	esi, 0xfffc00ff
	and	edx, esi
	or	edx, dword ptr [rsp + 0xc]
	mov	dword ptr [rax + rcx + 8], edx
	mov	rax, qword ptr [r12]
	mov	edx, dword ptr [rax + rbx + 8]
	mov	esi, 0x3ff00
	and	edx, esi
	or	dword ptr [rax + rcx + 8], edx
	mov	rax, qword ptr [r12]
	or	dword ptr [rax + rcx + 8], 0x40000
	mov	rax, qword ptr [r12 + 0x20]
	mov	qword ptr [rax + rbp*8], r13
	mov	rax, qword ptr [r12 + 0x18]
	mov	rcx, qword ptr [rax + r15*8]
	mov	qword ptr [rax + rdi*8], rcx
	mov	rax, qword ptr [r12 + 0x28]
	lea	rdi, [rax + r14*8]
	mov	rsi, rbp
	call	re_node_set_insert
	test	al, al
	mov	r15, r13
	mov	r13d, dword ptr [rsp + 0x1c]
	jne	.label_1843
	jmp	.label_1842
	.section	.text
	.align	32
	#Procedure 0x40f2ab
	.globl sub_40f2ab
	.type sub_40f2ab, @function
sub_40f2ab:

	nop	dword ptr [rax + rax]
.label_1854:
	mov	r8, qword ptr [r12 + 0x28]
	lea	rcx, [r15 + r15*2]
	mov	rsi, qword ptr [r8 + rcx*8 + 8]
	test	rsi, rsi
	je	.label_1847
	mov	rdi, qword ptr [r8 + rcx*8 + 0x10]
	mov	r14, qword ptr [rdi]
	lea	rdi, [rbp + rbp*2]
	mov	qword ptr [rsp + 0x10], rdi
	mov	qword ptr [r8 + rdi*8 + 8], 0
	cmp	rsi, 1
	je	.label_1851
	mov	rdi, qword ptr [r12 + 0x10]
	lea	rsi, [rdi - 1]
	test	rsi, rsi
	jle	.label_1844
	mov	rdx, rsi
	shl	rdx, 4
	mov	ebx, dword ptr [rax + rdx + 8]
	mov	edx, ebx
	and	edx, 0x40000
	je	.label_1844
	mov	rdx, qword ptr [r12 + 0x20]
	shl	rdi, 4
	lea	rdi, [rax + rdi - 0x18]
	nop	word ptr cs:[rax + rax]
.label_1853:
	cmp	qword ptr [rdx + rsi*8], r14
	jne	.label_1849
	shr	ebx, 8
	and	ebx, 0x3ff
	cmp	ebx, r13d
	je	.label_1848
.label_1849:
	dec	rsi
	test	rsi, rsi
	jle	.label_1844
	mov	ebx, dword ptr [rdi]
	mov	ebp, ebx
	and	ebp, 0x40000
	add	rdi, -0x10
	test	ebp, ebp
	jne	.label_1853
	jmp	.label_1844
.label_1848:
	cmp	rsi, -1
	je	.label_1844
	mov	r15, rcx
	mov	rax, qword ptr [rsp + 0x10]
	lea	rdi, [r8 + rax*8]
	call	re_node_set_insert
	mov	dword ptr [rsp + 8], 0xc
	test	al, al
	jne	.label_1855
	jmp	.label_1842
	.section	.text
	.align	32
	#Procedure 0x40f38c
	.globl sub_40f38c
	.type sub_40f38c, @function
sub_40f38c:

	nop	dword ptr [rax]
.label_1844:
	mov	r15, rcx
	mov	rbx, r14
	shl	rbx, 4
	mov	rsi, qword ptr [rax + rbx]
	mov	rdx, qword ptr [rax + rbx + 8]
	mov	rdi, r12
	call	re_dfa_add_node
	mov	rbp, rax
	mov	dword ptr [rsp + 8], 0xc
	cmp	rbp, -1
	je	.label_1842
	mov	rax, qword ptr [r12]
	mov	rcx, rbp
	shl	rcx, 4
	mov	edx, dword ptr [rax + rcx + 8]
	mov	esi, 0xfffc00ff
	and	edx, esi
	or	edx, dword ptr [rsp + 0xc]
	mov	dword ptr [rax + rcx + 8], edx
	mov	rax, qword ptr [r12]
	mov	edx, dword ptr [rax + rbx + 8]
	mov	esi, 0x3ff00
	and	edx, esi
	or	dword ptr [rax + rcx + 8], edx
	mov	rax, qword ptr [r12]
	or	dword ptr [rax + rcx + 8], 0x40000
	mov	rax, qword ptr [r12 + 0x20]
	mov	qword ptr [rax + rbp*8], r14
	mov	rax, qword ptr [r12 + 0x28]
	mov	rcx, qword ptr [rsp + 0x10]
	lea	rdi, [rax + rcx*8]
	mov	rsi, rbp
	call	re_node_set_insert
	test	al, al
	je	.label_1842
	mov	rdi, r12
	mov	rsi, r14
	mov	rdx, rbp
	mov	rcx, qword ptr [rsp + 0x20]
	mov	r8d, r13d
	call	duplicate_node_closure
	mov	dword ptr [rsp + 8], eax
	test	eax, eax
	jne	.label_1842
.label_1855:
	mov	rax, qword ptr [r12]
	mov	rcx, qword ptr [r12 + 0x28]
	mov	rcx, qword ptr [rcx + r15*8 + 0x10]
	mov	r15, qword ptr [rcx + 8]
	mov	rbx, r15
	shl	rbx, 4
	mov	rsi, qword ptr [rax + rbx]
	mov	rdx, qword ptr [rax + rbx + 8]
	mov	rdi, r12
	call	re_dfa_add_node
	mov	rbp, rax
	mov	dword ptr [rsp + 8], 0xc
	cmp	rbp, -1
	je	.label_1842
	mov	rax, qword ptr [r12]
	mov	rcx, rbp
	shl	rcx, 4
	mov	edx, dword ptr [rax + rcx + 8]
	mov	esi, 0xfffc00ff
	and	edx, esi
	or	edx, dword ptr [rsp + 0xc]
	mov	dword ptr [rax + rcx + 8], edx
	mov	rax, qword ptr [r12]
	mov	edx, dword ptr [rax + rbx + 8]
	mov	esi, 0x3ff00
	and	edx, esi
	or	dword ptr [rax + rcx + 8], edx
	mov	rax, qword ptr [r12]
	or	dword ptr [rax + rcx + 8], 0x40000
	mov	rax, qword ptr [r12 + 0x20]
	mov	qword ptr [rax + rbp*8], r15
	mov	rax, qword ptr [r12 + 0x28]
	mov	rcx, qword ptr [rsp + 0x10]
	lea	rdi, [rax + rcx*8]
	mov	rsi, rbp
	call	re_node_set_insert
	test	al, al
	jne	.label_1843
	jmp	.label_1842
	.section	.text
	.align	32
	#Procedure 0x40f4ee
	.globl sub_40f4ee
	.type sub_40f4ee, @function
sub_40f4ee:

	nop	
.label_1851:
	cmp	r15, qword ptr [rsp + 0x20]
	jne	.label_1845
	cmp	rbp, r15
	jne	.label_1852
.label_1845:
	lea	rcx, [rax + rdx + 8]
	mov	ebp, dword ptr [rcx]
	mov	rbx, r14
	shl	rbx, 4
	mov	rsi, qword ptr [rax + rbx]
	mov	rdx, qword ptr [rax + rbx + 8]
	mov	rdi, r12
	call	re_dfa_add_node
	mov	r15, rax
	mov	dword ptr [rsp + 8], 0xc
	cmp	r15, -1
	je	.label_1842
	shr	ebp, 8
	and	ebp, 0x3ff
	or	r13d, ebp
	mov	rax, qword ptr [r12]
	mov	rcx, r15
	shl	rcx, 4
	mov	edx, r13d
	shl	edx, 8
	and	edx, 0x3ff00
	mov	esi, dword ptr [rax + rcx + 8]
	mov	edi, 0xfffc00ff
	and	esi, edi
	or	esi, edx
	mov	dword ptr [rax + rcx + 8], esi
	mov	rax, qword ptr [r12]
	mov	edx, dword ptr [rax + rbx + 8]
	mov	esi, 0x3ff00
	and	edx, esi
	or	dword ptr [rax + rcx + 8], edx
	mov	rax, qword ptr [r12]
	or	dword ptr [rax + rcx + 8], 0x40000
	mov	rax, qword ptr [r12 + 0x20]
	mov	qword ptr [rax + r15*8], r14
	mov	rax, qword ptr [r12 + 0x28]
	mov	rcx, qword ptr [rsp + 0x10]
	lea	rdi, [rax + rcx*8]
	mov	rsi, r15
	call	re_node_set_insert
	test	al, al
	mov	rbp, r15
	jne	.label_1846
	jmp	.label_1842
.label_1852:
	mov	rax, qword ptr [rsp + 0x10]
	lea	rdi, [r8 + rax*8]
	mov	rsi, r14
	call	re_node_set_insert
	mov	dword ptr [rsp + 8], 0xc
	test	al, al
	jne	.label_1850
	jmp	.label_1842
	.section	.text
	.align	32
	#Procedure 0x40f5d2
	.globl sub_40f5d2
	.type sub_40f5d2, @function
sub_40f5d2:

	nop	word ptr [rax + rax]
.label_1847:
	mov	rax, qword ptr [r12 + 0x18]
	mov	rcx, qword ptr [rax + r15*8]
	mov	qword ptr [rax + rbp*8], rcx
.label_1850:
	mov	dword ptr [rsp + 8], 0
.label_1842:
	mov	eax, dword ptr [rsp + 8]
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
	#Procedure 0x40f600
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
	#Procedure 0x40f60f
	.globl sub_40f60f
	.type sub_40f60f, @function
sub_40f60f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x40f610
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_1856
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_1858:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_1858
.label_1856:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_1859
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_1860], OFFSET FLAT:slot0
.label_1859:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_1857
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_1857:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f6a1
	.globl sub_40f6a1
	.type sub_40f6a1, @function
sub_40f6a1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f6b0

	.globl rpl_re_search
	.type rpl_re_search, @function
rpl_re_search:
	push	rax
	mov	rax, r9
	mov	r9, rdx
	push	0
	push	rax
	call	re_search_stub
	add	rsp, 0x10
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f6c5
	.globl sub_40f6c5
	.type sub_40f6c5, @function
sub_40f6c5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f6d0
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
	#Procedure 0x40f6df
	.globl sub_40f6df
	.type sub_40f6df, @function
sub_40f6df:

	nop	
.label_1863:
	mov	rdi, rbx
	add	rsp, 0x48
	pop	rbx
	pop	r14
	jmp	strlen
	.section	.text
	.align	32
	#Procedure 0x40f6ef
	.globl sub_40f6ef
	.type sub_40f6ef, @function
sub_40f6ef:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f6fc

	.globl mbslen
	.type mbslen, @function
mbslen:
	push	r14
	push	rbx
	sub	rsp, 0x48
	mov	rbx, rdi
	call	__ctype_get_mb_cur_max
	cmp	rax, 2
	jb	.label_1863
	mov	qword ptr [rsp + 0x18], rbx
	mov	byte ptr [rsp + 8], 0
	mov	qword ptr [rsp + 0xc], 0
	mov	byte ptr [rsp + 0x14], 0
	lea	rdi, [rsp + 8]
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x28]
	xor	ebx, ebx
	test	al, al
	je	.label_1861
	shr	rax, 0x20
	je	.label_1864
.label_1861:
	xor	ebx, ebx
	lea	r14, [rsp + 8]
	nop	
.label_1862:
	inc	rbx
	mov	rax, qword ptr [rsp + 0x20]
	add	qword ptr [rsp + 0x18], rax
	mov	byte ptr [rsp + 0x14], 0
	mov	rdi, r14
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x28]
	test	al, al
	je	.label_1862
	shr	rax, 0x20
	jne	.label_1862
.label_1864:
	mov	rax, rbx
	add	rsp, 0x48
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f780

	.globl re_node_set_merge
	.type re_node_set_merge, @function
re_node_set_merge:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rsi
	mov	r15, rdi
	test	r14, r14
	je	.label_1865
	mov	rax, qword ptr [r14 + 8]
	test	rax, rax
	je	.label_1865
	mov	rbx, qword ptr [r15]
	mov	rcx, qword ptr [r15 + 8]
	lea	rdx, [rcx + rax*2]
	cmp	rbx, rdx
	jge	.label_1872
	add	rbx, rax
	mov	rdi, qword ptr [r15 + 0x10]
	mov	rsi, rbx
	shl	rsi, 4
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_1867
	add	rbx, rbx
	mov	qword ptr [r15 + 0x10], rcx
	mov	qword ptr [r15], rbx
	mov	rcx, qword ptr [r15 + 8]
	mov	rax, qword ptr [r14 + 8]
.label_1872:
	test	rcx, rcx
	je	.label_1873
	lea	r12, [rcx + rax*2]
	dec	rax
	dec	rcx
	mov	rdx, rax
	or	rdx, rcx
	js	.label_1875
	mov	rdx, qword ptr [r15 + 0x10]
	mov	rsi, qword ptr [r14 + 0x10]
	jmp	.label_1866
.label_1871:
	dec	rax
.label_1877:
	dec	rcx
	jmp	.label_1870
	.section	.text
	.align	32
	#Procedure 0x40f817
	.globl sub_40f817
	.type sub_40f817, @function
sub_40f817:

	nop	word ptr [rax + rax]
.label_1866:
	mov	rdi, qword ptr [rsi + rax*8]
	cmp	qword ptr [rdx + rcx*8], rdi
	je	.label_1871
	jge	.label_1877
	dec	rax
	mov	qword ptr [rdx + r12*8 - 8], rdi
	dec	r12
.label_1870:
	mov	rdi, rax
	or	rdi, rcx
	jns	.label_1866
.label_1875:
	test	rax, rax
	js	.label_1878
	lea	rcx, [rax + 1]
	sub	r12, rcx
	lea	rdi, [r12*8]
	add	rdi, qword ptr [r15 + 0x10]
	mov	rsi, qword ptr [r14 + 0x10]
	lea	rdx, [rax*8 + 8]
	call	memcpy
.label_1878:
	mov	r9, qword ptr [r15 + 8]
	mov	rax, qword ptr [r14 + 8]
	lea	rcx, [r9 + rax*2 - 1]
	mov	rsi, rcx
	sub	rsi, r12
	inc	rsi
	je	.label_1865
	lea	rax, [rsi + r9]
	mov	qword ptr [r15 + 8], rax
	mov	rdi, qword ptr [r15 + 0x10]
.label_1869:
	lea	r8, [r9 - 1]
	lea	rdx, [rsi*8]
	nop	dword ptr [rax + rax]
.label_1874:
	mov	rax, qword ptr [rdi + rcx*8]
	mov	rbx, qword ptr [rdi + r9*8 - 8]
	cmp	rax, rbx
	jle	.label_1868
	dec	rcx
	lea	rbx, [rdi + rdx]
	add	rdx, -8
	dec	rsi
	mov	qword ptr [rbx + r9*8 - 8], rax
	jne	.label_1874
	jmp	.label_1865
	.section	.text
	.align	32
	#Procedure 0x40f8c5
	.globl sub_40f8c5
	.type sub_40f8c5, @function
sub_40f8c5:

	nop	word ptr cs:[rax + rax]
.label_1868:
	lea	rax, [rdi + rdx]
	mov	qword ptr [rax + r9*8 - 8], rbx
	cmp	r9, 1
	mov	r9, r8
	jg	.label_1869
	lea	rsi, [rdi + r12*8]
.label_1876:
	call	memcpy
.label_1865:
	xor	eax, eax
.label_1867:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_1873:
	mov	qword ptr [r15 + 8], rax
	mov	rdi, qword ptr [r15 + 0x10]
	mov	rdx, qword ptr [r14 + 8]
	mov	rsi, qword ptr [r14 + 0x10]
	shl	rdx, 3
	jmp	.label_1876
	.section	.text
	.align	32
	#Procedure 0x40f90f
	.globl sub_40f90f
	.type sub_40f90f, @function
sub_40f90f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x40f910

	.globl merge_state_with_log
	.type merge_state_with_log, @function
merge_state_with_log:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	rbx, rdx
	mov	r13, rsi
	mov	r15, rdi
	mov	r14, qword ptr [r13 + 0x48]
	mov	r12, qword ptr [r13 + 0x98]
	mov	rax, qword ptr [r13 + 0xb8]
	cmp	r14, qword ptr [r13 + 0xc0]
	jle	.label_1881
	mov	qword ptr [rax + r14*8], rbx
	mov	qword ptr [r13 + 0xc0], r14
	jmp	.label_1879
.label_1881:
	mov	rcx, qword ptr [rax + r14*8]
	test	rcx, rcx
	je	.label_1884
	mov	rdx, qword ptr [rcx + 0x50]
	test	rbx, rbx
	je	.label_1882
	mov	rbx, qword ptr [rbx + 0x50]
	lea	rdi, [rsp]
	mov	rsi, rbx
	call	re_node_set_init_union
	mov	dword ptr [r15], eax
	test	eax, eax
	jne	.label_1885
	mov	rsi, qword ptr [r13 + 0x48]
	test	rbx, rbx
	sete	bpl
	jmp	.label_1886
.label_1884:
	mov	qword ptr [rax + r14*8], rbx
	jmp	.label_1879
.label_1882:
	mov	rax, qword ptr [rdx + 0x10]
	mov	qword ptr [rsp + 0x10], rax
	movups	xmm0, xmmword ptr [rdx]
	movaps	xmmword ptr [rsp], xmm0
	mov	bpl, 1
	mov	rsi, r14
.label_1886:
	dec	rsi
	mov	edx, dword ptr [r13 + 0xa0]
	mov	rdi, r13
	call	re_string_context_at
	lea	rdx, [rsp]
	mov	rdi, r15
	mov	rsi, r12
	mov	ecx, eax
	call	re_acquire_state_context
	mov	rbx, rax
	mov	rax, qword ptr [r13 + 0xb8]
	mov	qword ptr [rax + r14*8], rbx
	test	bpl, bpl
	jne	.label_1879
	mov	rdi, qword ptr [rsp + 0x10]
	call	free
.label_1879:
	test	rbx, rbx
	je	.label_1883
	mov	rax, qword ptr [r12 + 0x98]
	test	rax, rax
	je	.label_1883
	lea	r12, [rbx + 8]
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r14
	call	check_subexp_matching_top
	mov	ecx, eax
	mov	dword ptr [r15], ecx
	xor	eax, eax
	test	ecx, ecx
	jne	.label_1880
	test	byte ptr [rbx + 0x68], 0x40
	mov	rax, rbx
	je	.label_1880
	mov	rdi, r13
	mov	rsi, r12
	call	transit_state_bkref
	mov	ecx, eax
	mov	dword ptr [r15], ecx
	xor	eax, eax
	test	ecx, ecx
	jne	.label_1880
	mov	rax, qword ptr [r13 + 0xb8]
	mov	rax, qword ptr [rax + r14*8]
	jmp	.label_1880
.label_1883:
	mov	rax, rbx
.label_1880:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1885:
	xor	eax, eax
	jmp	.label_1880
	.section	.text
	.align	32
	#Procedure 0x40fa59
	.globl sub_40fa59
	.type sub_40fa59, @function
sub_40fa59:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40fa60

	.globl calc_eclosure_iter
	.type calc_eclosure_iter, @function
calc_eclosure_iter:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	dword ptr [rsp + 4], ecx
	mov	r12, rdx
	mov	rbp, rsi
	mov	rbx, rdi
	mov	r15, qword ptr [rbp + 0x28]
	lea	r14, [r12 + r12*2]
	mov	rax, qword ptr [r15 + r14*8 + 8]
	lea	rcx, [rax + 1]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 0x18], 0
	lea	rdi, [rax*8 + 8]
	call	malloc
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rcx
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_1888
	mov	qword ptr [rsp + 8], rbx
	mov	rax, qword ptr [rbp + 0x30]
	mov	qword ptr [rax + r14*8 + 8], -1
	mov	rcx, qword ptr [rbp]
	mov	rbx, r12
	shl	rbx, 4
	mov	eax, dword ptr [rcx + rbx + 8]
	mov	r8d, eax
	shr	r8d, 8
	and	r8d, 0x3ff
	je	.label_1894
	lea	rdx, [r15 + r14*8 + 8]
	cmp	qword ptr [rdx], 0
	je	.label_1894
	mov	rdx, qword ptr [r15 + r14*8 + 0x10]
	mov	rdx, qword ptr [rdx]
	shl	rdx, 4
	test	byte ptr [rcx + rdx + 0xa], 4
	jne	.label_1894
	mov	rdi, rbp
	mov	rsi, r12
	mov	rdx, r12
	mov	rcx, r12
	call	duplicate_node_closure
	test	eax, eax
	jne	.label_1888
	mov	rax, qword ptr [rbp]
	mov	eax, dword ptr [rax + rbx + 8]
.label_1894:
	test	al, 8
	mov	qword ptr [rsp + 0x28], r12
	je	.label_1893
	mov	rax, qword ptr [rbp + 0x28]
	cmp	qword ptr [rax + r14*8 + 8], 0
	jle	.label_1893
	xor	r15d, r15d
	lea	rbx, [rsp + 0x30]
	xor	r12d, r12d
	nop	word ptr cs:[rax + rax]
.label_1890:
	mov	rax, qword ptr [rax + r14*8 + 0x10]
	mov	rdx, qword ptr [rax + r12*8]
	mov	rax, qword ptr [rbp + 0x30]
	lea	r13, [rdx + rdx*2]
	mov	rcx, qword ptr [rax + r13*8 + 8]
	cmp	rcx, -1
	je	.label_1887
	test	rcx, rcx
	jne	.label_1896
	xor	ecx, ecx
	mov	rdi, rbx
	mov	rsi, rbp
	call	calc_eclosure_iter
	test	eax, eax
	je	.label_1892
	jmp	.label_1888
	.section	.text
	.align	32
	#Procedure 0x40fb97
	.globl sub_40fb97
	.type sub_40fb97, @function
sub_40fb97:

	nop	word ptr [rax + rax]
.label_1896:
	mov	rcx, qword ptr [rax + r13*8 + 0x10]
	mov	qword ptr [rsp + 0x40], rcx
	movups	xmm0, xmmword ptr [rax + r13*8]
	movaps	xmmword ptr [rsp + 0x30], xmm0
.label_1892:
	lea	rdi, [rsp + 0x10]
	mov	rsi, rbx
	call	re_node_set_merge
	test	eax, eax
	jne	.label_1888
	mov	rax, qword ptr [rbp + 0x30]
	cmp	qword ptr [rax + r13*8 + 8], 0
	jne	.label_1889
	mov	rdi, qword ptr [rsp + 0x40]
	call	free
.label_1887:
	mov	r15b, 1
.label_1889:
	inc	r12
	mov	rax, qword ptr [rbp + 0x28]
	cmp	r12, qword ptr [rax + r14*8 + 8]
	jl	.label_1890
	jmp	.label_1895
.label_1891:
	mov	rcx, qword ptr [rsp + 0x20]
	mov	qword ptr [rax + r14*8 + 0x10], rcx
	movups	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [rax + r14*8], xmm0
.label_1897:
	mov	rcx, qword ptr [rsp + 8]
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [rcx + 0x10], rax
	movups	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [rcx], xmm0
	xor	eax, eax
.label_1888:
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40fc31
	.globl sub_40fc31
	.type sub_40fc31, @function
sub_40fc31:

	nop	dword ptr [rax]
.label_1893:
	xor	r15d, r15d
.label_1895:
	lea	rdi, [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 0x28]
	call	re_node_set_insert
	test	al, al
	mov	eax, 0xc
	je	.label_1888
	test	r15b, 1
	mov	rax, qword ptr [rbp + 0x30]
	je	.label_1891
	mov	ecx, dword ptr [rsp + 4]
	test	cl, cl
	jne	.label_1891
	mov	qword ptr [rax + r14*8 + 8], 0
	jmp	.label_1897
	.section	.text
	.align	32
	#Procedure 0x40fc70

	.globl compare_occurs
	.type compare_occurs, @function
compare_occurs:
	push	rbx
	mov	r8, qword ptr [rdi + 8]
	mov	r9, qword ptr [rsi + 8]
	cmp	r8, r9
	mov	rdx, r9
	cmovle	rdx, r8
	mov	al, byte ptr [rip + ignore_case]
	test	al, al
	je	.label_1901
	test	rdx, rdx
	jle	.label_1899
	mov	r10, qword ptr [rdi]
	mov	r11, qword ptr [rsi]
	xor	ecx, ecx
	nop	word ptr [rax + rax]
.label_1902:
	movzx	eax, byte ptr [r10 + rcx]
	movzx	eax, byte ptr [rax + folded_chars]
	movzx	ebx, byte ptr [r11 + rcx]
	movzx	ebx, byte ptr [rbx + folded_chars]
	sub	eax, ebx
	jne	.label_1898
	inc	rcx
	cmp	rcx, rdx
	jl	.label_1902
	jmp	.label_1899
.label_1901:
	test	rdx, rdx
	jle	.label_1899
	mov	r10, qword ptr [rdi]
	mov	r11, qword ptr [rsi]
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_1900:
	movzx	eax, byte ptr [r10 + rcx]
	movzx	ebx, byte ptr [r11 + rcx]
	sub	eax, ebx
	jne	.label_1898
	inc	rcx
	cmp	rcx, rdx
	jl	.label_1900
.label_1899:
	mov	eax, 0xffffffff
	cmp	r8, r9
	jl	.label_1898
	mov	eax, 1
	jg	.label_1898
	mov	rcx, qword ptr [rdi]
	mov	rdx, qword ptr [rsi]
	cmp	rcx, rdx
	mov	eax, 0xffffffff
	jb	.label_1898
	cmp	rdx, rcx
	sbb	eax, eax
	and	eax, 1
.label_1898:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x40fd21
	.globl sub_40fd21
	.type sub_40fd21, @function
sub_40fd21:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40fd30

	.globl knuth_morris_pratt
	.type knuth_morris_pratt, @function
knuth_morris_pratt:
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r14, rcx
	mov	r12, rdx
	mov	rbx, rsi
	mov	r15, rdi
	mov	rax, r12
	shr	rax, 0x3c
	je	.label_1912
	xor	eax, eax
	jmp	.label_1905
.label_1912:
	lea	rdi, [r12*8]
	cmp	rdi, 0xfa0
	ja	.label_1911
	mov	rax, rsp
	add	rdi, 0x2e
	and	rdi, 0xfffffffffffffff0
	mov	rcx, rax
	sub	rcx, rdi
	mov	rsp, rcx
	neg	rdi
	lea	rdi, [rax + rdi + 0x1f]
	and	rdi, 0xffffffffffffffe0
	jmp	.label_1913
.label_1911:
	call	mmalloca
	mov	rdi, rax
.label_1913:
	test	rdi, rdi
	je	.label_1909
	mov	qword ptr [rdi + 8], 1
	cmp	r12, 3
	jb	.label_1907
	mov	eax, 2
	xor	ecx, ecx
	nop	dword ptr [rax]
.label_1914:
	mov	dl, byte ptr [rbx + rax - 1]
	jmp	.label_1910
	.section	.text
	.align	32
	#Procedure 0x40fdb6
	.globl sub_40fdb6
	.type sub_40fdb6, @function
sub_40fdb6:

	nop	word ptr cs:[rax + rax]
.label_1906:
	sub	rcx, qword ptr [rdi + rcx*8]
.label_1910:
	cmp	dl, byte ptr [rbx + rcx]
	je	.label_1904
	test	rcx, rcx
	jne	.label_1906
	mov	qword ptr [rdi + rax*8], rax
	xor	ecx, ecx
	jmp	.label_1908
	.section	.text
	.align	32
	#Procedure 0x40fdd6
	.globl sub_40fdd6
	.type sub_40fdd6, @function
sub_40fdd6:

	nop	word ptr cs:[rax + rax]
.label_1904:
	inc	rcx
	mov	rdx, rax
	sub	rdx, rcx
	mov	qword ptr [rdi + rax*8], rdx
.label_1908:
	inc	rax
	cmp	rax, r12
	jne	.label_1914
.label_1907:
	mov	qword ptr [r14], 0
	neg	r12
	xor	r8d, r8d
	mov	r9, r15
	jmp	.label_1916
.label_1909:
	xor	eax, eax
	jmp	.label_1905
.label_1903:
	add	r9, rdx
	lea	rax, [rdi + r8*8]
	mov	rax, qword ptr [rax + rdx*8]
	add	r15, rax
	sub	r8, rax
	add	r8, rdx
.label_1916:
	lea	rsi, [r12 + r8]
	lea	rcx, [rbx + r8]
	xor	edx, edx
	nop	dword ptr [rax]
.label_1919:
	movzx	eax, byte ptr [r9 + rdx]
	test	al, al
	je	.label_1915
	cmp	byte ptr [rcx + rdx], al
	jne	.label_1918
	inc	rdx
	mov	rax, rsi
	add	rax, rdx
	jne	.label_1919
	jmp	.label_1917
.label_1918:
	mov	rax, r8
	add	rax, rdx
	jne	.label_1903
	inc	r15
	lea	r9, [r9 + rdx + 1]
	xor	r8d, r8d
	jmp	.label_1916
.label_1917:
	mov	qword ptr [r14], r15
.label_1915:
	call	freea
	mov	al, 1
.label_1905:
	lea	rsp, [rbp - 0x20]
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40fe77
	.globl sub_40fe77
	.type sub_40fe77, @function
sub_40fe77:

	nop	word ptr [rax + rax]
.label_1920:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbx
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_1487
	xor	eax, eax
	mov	esi, ebp
	call	error
	nop	word ptr cs:[rax + rax]
.label_1924:
	mov	rdi, qword ptr [rip + stdin]
	lea	rsi, [rsp + 8]
	call	fread_file
	mov	qword ptr [r14], rax
	mov	ebx, OFFSET FLAT:label_1921
.label_1922:
	test	rax, rax
	je	.label_1920
	add	rax, qword ptr [rsp + 8]
	mov	qword ptr [r14 + 8], rax
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40feeb

	.globl swallow_file_in_memory
	.type swallow_file_in_memory, @function
swallow_file_in_memory:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x10
	mov	r14, rsi
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_1924
	mov	al, byte ptr [rbx]
	test	al, al
	je	.label_1924
	cmp	al, 0x2d
	jne	.label_1923
	cmp	byte ptr [rbx + 1], 0
	je	.label_1924
.label_1923:
	lea	rsi, [rsp + 8]
	mov	rdi, rbx
	call	read_file
	mov	qword ptr [r14], rax
	jmp	.label_1922
	.section	.text
	.align	32
	#Procedure 0x40ff20

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_1935
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_1937
.label_1935:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_1937:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_1926
	cmp	r10d, 0x29
	jae	.label_1934
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_1936
.label_1934:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_1936:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_1926
	cmp	r10d, 0x29
	jae	.label_1932
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_1933
.label_1932:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_1933:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_1926
	cmp	r10d, 0x29
	jae	.label_1930
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_1931
.label_1930:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_1931:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
.label_3126:
	je	.label_1926
	cmp	r10d, 0x29
	jae	.label_1928
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_1929
.label_1928:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_1929:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_1926
	cmp	r10d, 0x29
	jae	.label_1925
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_1927
.label_1925:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_1927:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_1926
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_1926
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_1926
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_1926
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_1926:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	32
	#Procedure 0x410102
	.globl sub_410102
	.type sub_410102, @function
sub_410102:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410110

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
	jmp	.label_1942
	.section	.text
	.align	32
	#Procedure 0x4101bf
	.globl sub_4101bf
	.type sub_4101bf, @function
sub_4101bf:

	nop	
.label_1939:
	cmp	r8d, 2
	setne	al
	cmp	byte ptr [rsp + 0xf], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa8]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x34]
	mov	rsi, qword ptr [rsp + 0xc0]
	je	.label_1946
	or	al, dl
	jne	.label_1946
	test	dil, 1
	jne	.label_2062
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_1946
	test	rbp, rbp
	mov	r15d, r8d
	mov	al, bl
	mov	qword ptr [rsp + 0x48], rcx
	mov	r12d, esi
	mov	r13, qword ptr [rsp + 0x68]
	je	.label_1942
	jmp	.label_1946
.label_3337:
	mov	r8d, 5
	test	r12b, 1
	jne	.label_1948
	test	rbp, rbp
	je	.label_1953
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax], 0x22
.label_1953:
	mov	r14d, 1
	jmp	.label_1955
.label_3338:
	mov	r13b, 1
	mov	r8d, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_1519
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	sil, 1
	jmp	.label_1956
.label_1948:
	xor	r14d, r14d
.label_1955:
	mov	eax, OFFSET FLAT:label_1519
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	r13b, 1
	jmp	.label_1991
	.section	.text
	.align	32
	#Procedure 0x41028f
	.globl sub_41028f
	.type sub_41028f, @function
sub_41028f:

	nop	
.label_1942:
	mov	rbp, r13
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_1980
	mov	r8d, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	jmp	qword ptr [(rcx * 8) + label_1986]
.label_3339:
	mov	r14d, edi
	mov	edi, OFFSET FLAT:label_1994
	mov	esi, r15d
	mov	ebx, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x80], rax
	mov	edi, OFFSET FLAT:label_1520
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebx
	mov	edi, r14d
	mov	qword ptr [rsp + 0x78], rax
.label_3340:
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x80]
	jne	.label_2007
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_2007
	xor	r14d, r14d
	nop	
.label_2017:
	cmp	r14, rbp
	jae	.label_1996
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], al
.label_1996:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_2017
.label_2007:
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
	jmp	.label_1956
.label_3332:
	xor	r8d, r8d
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_1956
.label_3335:
	mov	al, 1
.label_3333:
	mov	r12b, 1
.label_3336:
	test	r12b, 1
	mov	cl, 1
	je	.label_2037
	mov	ecx, eax
.label_2037:
	mov	al, cl
.label_3334:
	mov	r8d, 2
	test	r12b, 1
	jne	.label_2039
	test	rbp, rbp
	je	.label_2045
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx], 0x27
.label_2045:
	mov	r14d, 1
	jmp	.label_2060
.label_2039:
	xor	r14d, r14d
.label_2060:
	mov	ecx, OFFSET FLAT:label_1520
	mov	qword ptr [rsp + 0x58], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x50], rcx
	mov	r13d, eax
.label_1991:
	mov	sil, r12b
.label_1956:
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
	jmp	.label_2052
	.section	.text
	.align	32
	#Procedure 0x410451
	.globl sub_410451
	.type sub_410451, @function
sub_410451:

	nop	word ptr cs:[rax + rax]
.label_1949:
	inc	r12
.label_2052:
	cmp	r11, -1
	je	.label_1965
	cmp	r12, r11
	jne	.label_1968
	jmp	.label_1970
	.section	.text
	.align	32
	#Procedure 0x410473
	.globl sub_410473
	.type sub_410473, @function
sub_410473:

	nop	word ptr cs:[rax + rax]
.label_1965:
	mov	rcx, -1
	cmp	byte ptr [r10 + r12], 0
	je	.label_1975
.label_1968:
	cmp	byte ptr [rsp + 0x37], 0
	je	.label_1981
	mov	rax, qword ptr [rsp + 0x50]
	lea	rbx, [r12 + rax]
	cmp	rax, 2
	jb	.label_1984
	cmp	r11, -1
	jne	.label_1984
	mov	r15d, edi
	mov	rdi, r10
	mov	r13d, r9d
	call	strlen
	mov	r9d, r13d
	mov	r8, qword ptr [rsp + 0x38]
	mov	edi, r15d
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_1984:
	cmp	rbx, r11
	jbe	.label_1999
.label_1981:
	xor	esi, esi
.label_2019:
	movzx	r15d, byte ptr [r10 + r12]
	cmp	r15, 0x7e
	ja	.label_2000
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_2003]
.label_3218:
	test	r12, r12
	jne	.label_1952
	jmp	.label_2008
	.section	.text
	.align	32
	#Procedure 0x410506
	.globl sub_410506
	.type sub_410506, @function
sub_410506:

	nop	word ptr cs:[rax + rax]
.label_1999:
	mov	r13d, r9d
	mov	r15d, edi
	mov	rbx, r11
	lea	rdi, [r10 + r12]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	rdx, qword ptr [rsp + 0x50]
	call	memcmp
	test	eax, eax
	sete	sil
	jne	.label_2016
	cmp	byte ptr [rsp + 0xf], 0
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	je	.label_2019
	jmp	.label_1947
.label_2016:
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	jmp	.label_2019
.label_3222:
	xor	eax, eax
	cmp	r11, -1
	je	.label_2031
	test	r12, r12
	jne	.label_2035
	cmp	r11, 1
	je	.label_2008
	xor	r13d, r13d
	jmp	.label_1945
.label_3211:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_2041
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_1947
	cmp	r8d, 2
	jne	.label_2046
	mov	eax, r9d
	and	al, 1
	jne	.label_2046
	cmp	r14, rbp
	jae	.label_2048
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_2048:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_2049
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_2049:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_2054
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_2054:
	add	r14, 3
	mov	r9b, 1
.label_2046:
	mov	rcx, r14
	cmp	rcx, rbp
	jae	.label_2059
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + rcx], 0x5c
.label_2059:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r8d, 2
	je	.label_1938
	lea	rdx, [r12 + 1]
	cmp	rdx, r11
	jae	.label_1938
	mov	dl, byte ptr [r10 + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_1938
	cmp	r14, rbp
	jae	.label_1993
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x30
.label_1993:
	lea	rdx, [rcx + 2]
	cmp	rdx, rbp
	jae	.label_2036
	mov	ebx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rdx], 0x30
	mov	esi, ebx
.label_2036:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_1945
.label_3212:
	mov	bl, 0x62
	jmp	.label_1966
.label_3213:
	mov	cl, 0x74
	jmp	.label_1957
.label_3214:
	mov	bl, 0x76
	jmp	.label_1966
.label_3215:
	mov	bl, 0x66
	jmp	.label_1966
.label_3216:
	mov	cl, 0x72
	jmp	.label_1957
.label_3219:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa8], rax
	cmp	r8d, 2
	jne	.label_1978
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_1961
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
	jae	.label_1987
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_1987:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_2001
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x5c
.label_2001:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_2006
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_2006:
	add	r14, 3
	xor	r9d, r9d
.label_1978:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_1945
.label_3220:
	mov	r15b, 0x3f
	cmp	r8d, 5
	je	.label_2010
	cmp	r8d, 2
	jne	.label_1952
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_1952
	jmp	.label_1961
.label_3221:
	cmp	r8d, 2
	jne	.label_2021
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_1961
	mov	r15b, 0x5c
	xor	eax, eax
	jmp	.label_2027
.label_2000:
	cmp	qword ptr [rsp + 0xb8], 1
	mov	qword ptr [rsp + 0xa0], rbp
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	mov	dword ptr [rsp + 0x94], esi
	jne	.label_2028
	mov	qword ptr [rsp + 0x48], r11
	call	__ctype_b_loc
	mov	r10, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	ebx, 1
	jmp	.label_2023
.label_2031:
	test	r12, r12
	jne	.label_2047
	mov	cl, byte ptr [r10 + 1]
	test	cl, cl
	jne	.label_2047
.label_2008:
	mov	dl, 1
.label_3217:
	cmp	byte ptr [rsp + 0x27], 0
	je	.label_1961
	xor	eax, eax
	mov	r13b, dl
.label_1945:
	cmp	byte ptr [rsp + 0x36], 0
	je	.label_2053
	cmp	qword ptr [rsp + 0x100], 0
	jne	.label_2055
	jmp	.label_2056
	.section	.text
	.align	32
	#Procedure 0x4107e4
	.globl sub_4107e4
	.type sub_4107e4, @function
sub_4107e4:

	nop	word ptr cs:[rax + rax]
.label_2053:
	cmp	byte ptr [rsp + 0x35], 0
	je	.label_2056
.label_2055:
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	ebx, esi
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_1960
	mov	rcx, qword ptr [rsp + 0x100]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_1943
	.section	.text
	.align	32
	#Procedure 0x41081d
	.globl sub_41081d
	.type sub_41081d, @function
sub_41081d:

	nop	dword ptr [rax]
.label_2056:
	test	sil, sil
.label_1943:
	mov	ebx, r15d
	je	.label_1973
	jmp	.label_1951
.label_1960:
	mov	ebx, r15d
	jmp	.label_1951
.label_2041:
	cmp	dword ptr [rsp + 0x9c], 0
	jne	.label_1949
	xor	r15d, r15d
	jmp	.label_1952
.label_2021:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x32], 0
	je	.label_1957
	xor	eax, eax
	mov	r15b, 0x5c
.label_2027:
	xor	r13d, r13d
	jmp	.label_1973
.label_1957:
	cmp	byte ptr [rsp + 0x27], 0
	mov	ebx, ecx
	je	.label_1961
.label_1966:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1f], 0
	mov	r13d, 0
	je	.label_1945
	nop	
.label_1951:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_1947
	cmp	r8d, 2
	jne	.label_1979
	mov	eax, r9d
	and	al, 1
	jne	.label_1979
	cmp	r14, rbp
	jae	.label_1983
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_1983:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_1988
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_1988:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_1992
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_1992:
	add	r14, 3
	mov	r9b, 1
.label_1979:
	cmp	r14, rbp
	jae	.label_2005
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_2005:
	inc	r14
	jmp	.label_2025
.label_2028:
	mov	qword ptr [rsp + 0x70], 0
	cmp	r11, -1
	jne	.label_2004
	mov	rdi, r10
	call	strlen
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_2004:
	cmp	byte ptr [rsp + 0x31], 0
	mov	qword ptr [rsp + 0x48], r11
	mov	qword ptr [rsp + 0x88], r12
	je	.label_2024
	lea	rax, [r10 + r12]
	mov	qword ptr [rsp + 0xb0], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbp, [rsp + 0x70]
.label_2009:
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
	je	.label_2022
	cmp	rbx, -1
	mov	r10, qword ptr [rsp + 0x28]
	movabs	rsi, 0x20000002b
	je	.label_2033
	test	rbx, rbx
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_1985
	cmp	rbx, 2
	mov	rbp, qword ptr [rsp + 0xa0]
	jb	.label_2043
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax]
.label_2030:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_1967
	bt	rsi, rdx
	jb	.label_1961
.label_1967:
	inc	rcx
	cmp	rcx, rbx
	jb	.label_2030
.label_2043:
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	jne	.label_2057
	xor	r13d, r13d
.label_2057:
	lea	rbp, [rsp + 0x70]
	mov	r12, qword ptr [rsp + 0x40]
	add	r12, rbx
	mov	rdi, rbp
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_2009
	jmp	.label_1944
.label_1938:
	xor	r13d, r13d
	jmp	.label_1945
.label_2047:
	mov	r11, -1
	xor	r13d, r13d
	jmp	.label_1945
.label_2010:
	cmp	dword ptr [rsp + 0x98], 0
	je	.label_1952
	lea	rcx, [r12 + 2]
	cmp	rcx, r11
	jae	.label_1952
	cmp	byte ptr [r10 + r12 + 1], 0x3f
	jne	.label_1952
	movsx	edx, byte ptr [r10 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_1963
	mov	ebx, esi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_1971
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_1974
	cmp	r14, rbp
	jae	.label_1976
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x3f
.label_1976:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_1982
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_1982:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_2058
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_2058:
	lea	rax, [r14 + 3]
	cmp	rax, rbp
	jae	.label_1941
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x3f
.label_1941:
	add	r14, 4
	xor	eax, eax
	mov	r12, rcx
	mov	r15b, dl
.label_1971:
	xor	r13d, r13d
	mov	esi, ebx
	jmp	.label_1945
.label_1952:
	xor	eax, eax
.label_2035:
	xor	r13d, r13d
	jmp	.label_1945
.label_2024:
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbx, [rsp + 0x70]
	nop	word ptr cs:[rax + rax]
.label_2029:
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
	je	.label_2011
	cmp	rbp, -1
	je	.label_2020
	cmp	rbp, -2
	je	.label_2022
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	mov	r12, qword ptr [rsp + 0x40]
	jne	.label_2026
	xor	r13d, r13d
.label_2026:
	add	r12, rbp
	lea	rbx, [rsp + 0x70]
	mov	rdi, rbx
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_2029
	jmp	.label_1944
.label_2022:
	mov	r10, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x40]
	lea	rax, [rsi + r12]
	mov	rdx, qword ptr [rsp + 0x48]
	cmp	rax, rdx
	jae	.label_1998
	lea	rax, [r10 + r12]
.label_1959:
	cmp	byte ptr [rax + rsi], 0
	je	.label_1998
	lea	rcx, [r12 + rsi + 1]
	inc	rsi
	cmp	rcx, rdx
	jb	.label_1959
.label_1998:
	mov	qword ptr [rsp + 0x40], rsi
.label_2033:
	xor	r13d, r13d
	jmp	.label_1985
.label_2020:
	xor	r13d, r13d
.label_2011:
	mov	r10, qword ptr [rsp + 0x28]
.label_1985:
	mov	r12, qword ptr [rsp + 0x40]
.label_1944:
	mov	rbx, r12
	mov	r12, qword ptr [rsp + 0x88]
.label_2023:
	and	r13b, 1
	mov	eax, r13d
	or	al, byte ptr [rsp + 0x33]
	cmp	rbx, 1
	mov	rbp, qword ptr [rsp + 0xa0]
	mov	dil, byte ptr [rsp + 0x1e]
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x60]
	mov	esi, dword ptr [rsp + 0x94]
	ja	.label_2051
	test	al, al
	je	.label_2051
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_1945
.label_2051:
	mov	byte ptr [rsp + 0x40], al
	add	rbx, r12
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_1940
	.section	.text
	.align	32
	#Procedure 0x410c17
	.globl sub_410c17
	.type sub_410c17, @function
sub_410c17:

	nop	word ptr [rax + rax]
.label_2034:
	inc	r14
	mov	r15b, byte ptr [r10 + r12 + 1]
	mov	r12, rdx
.label_1940:
	cmp	byte ptr [rsp + 0x40], 0
	je	.label_1950
	test	sil, 1
	je	.label_1958
	cmp	r14, rbp
	jae	.label_1954
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x5c
.label_1954:
	inc	r14
	xor	esi, esi
	jmp	.label_1958
	.section	.text
	.align	32
	#Procedure 0x410c55
	.globl sub_410c55
	.type sub_410c55, @function
sub_410c55:

	nop	word ptr cs:[rax + rax]
.label_1950:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_1947
	cmp	r8d, 2
	jne	.label_1969
	mov	eax, r9d
	and	al, 1
	jne	.label_1969
	cmp	r14, rbp
	jae	.label_1972
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_1972:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_2015
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x24
.label_2015:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_1962
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x27
.label_1962:
	add	r14, 3
	mov	r9b, 1
.label_1969:
	cmp	r14, rbp
	jae	.label_1990
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_1990:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_1977
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_1977:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_2002
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_2002:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_1958:
	lea	rdx, [r12 + 1]
	cmp	rbx, rdx
	jbe	.label_1973
	test	r9b, 1
	je	.label_2012
	mov	rcx, rbx
	mov	ebx, eax
	and	bl, 1
	jne	.label_2061
	mov	r8, r12
	mov	r12d, esi
	cmp	r14, rbp
	jae	.label_2014
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], 0x27
.label_2014:
	lea	rsi, [r14 + 1]
	cmp	rsi, rbp
	jae	.label_2032
	mov	rbx, qword ptr [rsp + 0x10]
	mov	byte ptr [rbx + rsi], 0x27
.label_2032:
	add	r14, 2
	xor	r9d, r9d
	mov	esi, r12d
	mov	rbx, rcx
	mov	r12, r8
	mov	r8, qword ptr [rsp + 0x38]
	jmp	.label_2012
	.section	.text
	.align	32
	#Procedure 0x410d66
	.globl sub_410d66
	.type sub_410d66, @function
sub_410d66:

	nop	word ptr cs:[rax + rax]
.label_2061:
	mov	rbx, rcx
.label_2012:
	cmp	r14, rbp
	jae	.label_2034
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], r15b
	mov	esi, ecx
	jmp	.label_2034
	.section	.text
	.align	32
	#Procedure 0x410d8e
	.globl sub_410d8e
	.type sub_410d8e, @function
sub_410d8e:

	nop	
.label_1973:
	test	r9b, 1
	je	.label_2040
	and	al, 1
	jne	.label_2040
	cmp	r14, rbp
	jae	.label_2044
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_2044:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_2038
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_2038:
	add	r14, 2
	xor	r9d, r9d
.label_2040:
	mov	ebx, r15d
.label_2025:
	cmp	r14, rbp
	jae	.label_2050
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], bl
.label_2050:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, dil
	mov	edi, r13d
	jmp	.label_1949
.label_1963:
	xor	r13d, r13d
	jmp	.label_1945
	.section	.text
	.align	32
	#Procedure 0x410df1
	.globl sub_410df1
	.type sub_410df1, @function
sub_410df1:

	nop	word ptr cs:[rax + rax]
.label_1970:
	mov	rcx, r12
.label_1975:
	cmp	r8d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_1939
	or	al, dl
	jne	.label_1939
	mov	r11, rcx
	jmp	.label_1947
.label_1961:
	mov	eax, 2
.label_2018:
	mov	qword ptr [rsp + 0x38], rax
.label_1947:
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
.label_1964:
	mov	r14, rax
.label_2013:
	mov	rax, r14
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1946:
	mov	rdx, qword ptr [rsp + 0x58]
	test	rdx, rdx
	je	.label_2042
	cmp	byte ptr [rsp + 0xf], 0
	mov	rcx, qword ptr [rsp + 0x10]
	jne	.label_1989
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_1989
	inc	rdx
	nop	dword ptr [rax + rax]
.label_1997:
	cmp	r14, rbp
	jae	.label_1995
	mov	byte ptr [rcx + r14], al
.label_1995:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_1997
	jmp	.label_1989
.label_2062:
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
	jmp	.label_1964
.label_2042:
	mov	rcx, qword ptr [rsp + 0x10]
.label_1989:
	cmp	r14, rbp
	jae	.label_2013
	mov	byte ptr [rcx + r14], 0
	jmp	.label_2013
.label_1974:
	mov	eax, 5
	jmp	.label_2018
.label_1980:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x410f40

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_2063
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_2065
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_2063
.label_2065:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_2063
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_2064
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_2064:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_2063:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	.section	.text
	.align	32
	#Procedure 0x410fb4
	.globl sub_410fb4
	.type sub_410fb4, @function
sub_410fb4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410fc0

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x410fd1
	.globl sub_410fd1
	.type sub_410fd1, @function
sub_410fd1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410fe0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_2066
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_1487
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x411010

	.globl extend_buffers
	.type extend_buffers, @function
extend_buffers:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r15, rdi
	mov	rbp, qword ptr [r15 + 0x40]
	mov	r14d, 0xc
	movabs	rax, 0xffffffffffffffe
	cmp	rbp, rax
	ja	.label_2069
	movsxd	rax, esi
	mov	rcx, qword ptr [r15 + 0x58]
	add	rbp, rbp
	cmp	rcx, rbp
	cmovle	rbp, rcx
	cmp	rax, rbp
	cmovge	rbp, rax
	cmp	dword ptr [r15 + 0x90], 2
	jl	.label_2067
	mov	rax, rbp
	shr	rax, 0x3d
	jne	.label_2069
	mov	rdi, qword ptr [r15 + 0x10]
	lea	rsi, [rbp*4]
	call	realloc
	test	rax, rax
	je	.label_2069
	mov	qword ptr [r15 + 0x10], rax
	mov	rdi, qword ptr [r15 + 0x18]
	test	rdi, rdi
	je	.label_2067
	lea	rsi, [rbp*8]
	call	realloc
	test	rax, rax
	je	.label_2069
	mov	qword ptr [r15 + 0x18], rax
.label_2067:
	cmp	byte ptr [r15 + 0x8b], 0
	je	.label_2073
	mov	rdi, qword ptr [r15 + 8]
	mov	rsi, rbp
	call	realloc
	test	rax, rax
	je	.label_2069
	mov	qword ptr [r15 + 8], rax
.label_2073:
	mov	qword ptr [r15 + 0x40], rbp
	mov	rdi, qword ptr [r15 + 0xb8]
	test	rdi, rdi
	je	.label_2075
	lea	rsi, [rbp*8 + 8]
	call	realloc
	test	rax, rax
	je	.label_2069
	mov	qword ptr [r15 + 0xb8], rax
.label_2075:
	cmp	byte ptr [r15 + 0x88], 0
	mov	eax, dword ptr [r15 + 0x90]
	je	.label_2080
	cmp	eax, 2
	jl	.label_2068
	mov	rdi, r15
	call	build_wcs_upper_buffer
	mov	r14d, eax
	test	r14d, r14d
	je	.label_2071
	jmp	.label_2069
.label_2080:
	cmp	eax, 2
	jl	.label_2072
	mov	rdi, r15
	call	build_wcs_buffer
	jmp	.label_2071
.label_2068:
	mov	rbp, qword ptr [r15 + 0x30]
	mov	r14, qword ptr [r15 + 0x40]
	mov	rax, qword ptr [r15 + 0x58]
	cmp	r14, rax
	cmovg	r14, rax
	cmp	rbp, r14
	jl	.label_2070
	jmp	.label_2076
.label_2072:
	mov	rdx, qword ptr [r15 + 0x78]
	test	rdx, rdx
	je	.label_2071
	mov	rax, qword ptr [r15 + 0x30]
	mov	rcx, qword ptr [r15 + 0x40]
	mov	rsi, qword ptr [r15 + 0x58]
	cmp	rcx, rsi
	cmovg	rcx, rsi
	cmp	rax, rcx
	jge	.label_2079
	mov	rsi, qword ptr [r15 + 0x28]
	add	rsi, rax
	mov	rdi, qword ptr [r15]
	mov	rbp, qword ptr [r15 + 8]
	movzx	esi, byte ptr [rdi + rsi]
	mov	dl, byte ptr [rdx + rsi]
	mov	byte ptr [rbp + rax], dl
	jmp	.label_2082
	.section	.text
	.align	32
	#Procedure 0x411199
	.globl sub_411199
	.type sub_411199, @function
sub_411199:

	nop	dword ptr [rax]
.label_2074:
	mov	rdx, qword ptr [r15 + 0x78]
	mov	rsi, qword ptr [r15]
	mov	rdi, qword ptr [r15 + 8]
	add	rsi, qword ptr [r15 + 0x28]
	movzx	esi, byte ptr [rax + rsi]
	movzx	edx, byte ptr [rdx + rsi]
	mov	byte ptr [rdi + rax], dl
.label_2082:
	inc	rax
	cmp	rax, rcx
	jl	.label_2074
	mov	rax, rcx
.label_2079:
	mov	qword ptr [r15 + 0x30], rax
	mov	qword ptr [r15 + 0x38], rax
	jmp	.label_2071
.label_2078:
	movzx	ecx, byte ptr [rax + rdx]
	jmp	.label_2077
	.section	.text
	.align	32
	#Procedure 0x4111d5
	.globl sub_4111d5
	.type sub_4111d5, @function
sub_4111d5:

	nop	word ptr cs:[rax + rax]
.label_2070:
	mov	rcx, qword ptr [r15]
	mov	rax, qword ptr [r15 + 0x78]
	add	rcx, qword ptr [r15 + 0x28]
	movzx	ecx, byte ptr [rbp + rcx]
	movzx	edx, cl
	test	rax, rax
	jne	.label_2078
.label_2077:
	movzx	ebx, cl
	mov	eax, ebx
	sub	eax, -0x80
	cmp	eax, 0x17f
	ja	.label_2081
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	mov	ebx, dword ptr [rax + rbx*4]
.label_2081:
	mov	rax, qword ptr [r15 + 8]
	mov	byte ptr [rax + rbp], bl
	inc	rbp
	cmp	rbp, r14
	jl	.label_2070
	mov	rbp, r14
.label_2076:
	mov	qword ptr [r15 + 0x30], rbp
	mov	qword ptr [r15 + 0x38], rbp
.label_2071:
	xor	r14d, r14d
.label_2069:
	mov	eax, r14d
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41123d
	.globl sub_41123d
	.type sub_41123d, @function
sub_41123d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x411240

	.globl read_file
	.type read_file, @function
read_file:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	esi, OFFSET FLAT:label_2083
	call	fopen
	mov	rbx, rax
	xor	r15d, r15d
	test	rbx, rbx
	je	.label_2084
	mov	rdi, rbx
	mov	rsi, r14
	call	fread_file
	mov	r15, rax
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	rpl_fclose
	test	eax, eax
	je	.label_2084
	test	r15, r15
	je	.label_2085
	mov	ebp, dword ptr [r14]
	mov	rdi, r15
	call	free
.label_2085:
	mov	dword ptr [r14], ebp
	xor	r15d, r15d
.label_2084:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4112a8
	.globl sub_4112a8
	.type sub_4112a8, @function
sub_4112a8:

	nop	dword ptr [rax + rax]
.label_2091:
	mov	rax, qword ptr [r13 + 0x28]
	add	rax, rbx
	mov	rcx, qword ptr [r13]
	movzx	ecx, byte ptr [rcx + rax]
	mov	dword ptr [rsp + 0xc], ecx
	mov	rax, qword ptr [r13 + 0x78]
	test	rax, rax
	jne	.label_2095
.label_2093:
	mov	qword ptr [r14], rbp
	mov	eax, 1
.label_2092:
	mov	rdx, qword ptr [r13 + 0x10]
	mov	dword ptr [rdx + rbx*4], ecx
	lea	rbp, [rax + rbx]
	lea	rcx, [rbx + 1]
	cmp	rcx, rbp
	jge	.label_2089
	lea	rdi, [rdx + rbx*4 + 4]
	lea	rdx, [rax*4 - 4]
	mov	esi, 0xff
	call	memset
	mov	rcx, rbp
.label_2089:
	cmp	r12, rcx
	mov	rbx, rcx
	jg	.label_2086
	jmp	.label_2088
.label_2090:
	lea	rsi, [rsp + 0x10]
	jmp	.label_2087
	.section	.text
	.align	32
	#Procedure 0x41131a
	.globl sub_41131a
	.type sub_41131a, @function
sub_41131a:

	nop	
.label_2094:
	mov	ecx, dword ptr [rsp + 0xc]
	jmp	.label_2092
.label_2096:
	cmp	dword ptr [r13 + 0x90], 0
	lea	rsi, [rsp + 0x10]
	jle	.label_2087
	xor	eax, eax
.label_2097:
	cmp	rax, rdx
	jge	.label_2090
	mov	rcx, qword ptr [r13]
	mov	rsi, qword ptr [r13 + 0x78]
	add	rcx, qword ptr [r13 + 0x28]
	add	rcx, rbx
	movzx	ecx, byte ptr [rax + rcx]
	movzx	ecx, byte ptr [rsi + rcx]
	mov	rsi, qword ptr [r13 + 8]
	add	rsi, rbx
	mov	byte ptr [rax + rsi], cl
	mov	byte ptr [rsp + rax + 0x10], cl
	inc	rax
	movsxd	rcx, dword ptr [r13 + 0x90]
	cmp	rax, rcx
	jl	.label_2097
	lea	rsi, [rsp + 0x10]
	jmp	.label_2087
.label_2086:
	mov	rdx, r12
	sub	rdx, rbx
	mov	rbp, qword ptr [r13 + 0x20]
	cmp	qword ptr [r13 + 0x78], 0
	jne	.label_2096
	mov	rsi, qword ptr [r13]
	add	rsi, qword ptr [r13 + 0x28]
	add	rsi, rbx
.label_2087:
	mov	rdi, r15
	mov	rcx, r14
	call	rpl_mbrtowc
	lea	rcx, [rax + 1]
	cmp	rcx, 2
	jb	.label_2091
	cmp	rax, -2
	jne	.label_2094
	mov	rax, qword ptr [r13 + 0x40]
	cmp	rax, qword ptr [r13 + 0x58]
	jge	.label_2091
	mov	qword ptr [r14], rbp
.label_2098:
	mov	rcx, rbx
.label_2088:
	mov	qword ptr [r13 + 0x30], rcx
	mov	qword ptr [r13 + 0x38], rcx
	add	rsp, 0x58
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4113dd
	.globl sub_4113dd
	.type sub_4113dd, @function
sub_4113dd:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4113e3

	.globl build_wcs_buffer
	.type build_wcs_buffer, @function
build_wcs_buffer:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x58
	mov	r13, rdi
	mov	rbx, qword ptr [r13 + 0x30]
	mov	r12, qword ptr [r13 + 0x40]
	mov	rax, qword ptr [r13 + 0x58]
	cmp	r12, rax
	cmovg	r12, rax
	cmp	r12, rbx
	jle	.label_2098
	lea	r14, [r13 + 0x20]
	lea	r15, [rsp + 0xc]
	jmp	.label_2086
	.section	.text
	.align	32
	#Procedure 0x41141e
	.globl sub_41141e
	.type sub_41141e, @function
sub_41141e:

	nop	dword ptr [rax + rax]
.label_2095:
	movzx	ecx, byte ptr [rax + rcx]
	mov	dword ptr [rsp + 0xc], ecx
	jmp	.label_2093
	.section	.text
	.align	32
	#Procedure 0x411430

	.globl trim2
	.type trim2, @function
trim2:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x50
	mov	r14d, esi
	call	__strdup
	mov	r12, rax
	test	r12, r12
	je	.label_2107
	call	__ctype_get_mb_cur_max
	cmp	rax, 2
	jb	.label_2110
	test	r14d, r14d
	je	.label_2105
	mov	qword ptr [rsp + 0x20], r12
	mov	rdi, r12
	call	strlen
	lea	rcx, [r12 + rax]
	mov	qword ptr [rsp + 8], rcx
	mov	byte ptr [rsp + 0x10], 0
	mov	qword ptr [rsp + 0x14], 0
	mov	byte ptr [rsp + 0x1c], 0
	test	rax, rax
	mov	rbp, r12
	jle	.label_2114
	lea	rbp, [rsp + 8]
	nop	
.label_2115:
	mov	rdi, rbp
	call	mbiter_multi_next
	mov	rdi, qword ptr [rsp + 0x30]
	test	dil, dil
	je	.label_2103
	shr	rdi, 0x20
	call	iswspace
	test	eax, eax
	je	.label_2103
	mov	rax, qword ptr [rsp + 0x20]
	add	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [rsp + 0x20], rax
	mov	byte ptr [rsp + 0x1c], 0
	cmp	rax, qword ptr [rsp + 8]
	jb	.label_2115
.label_2103:
	mov	rbp, qword ptr [rsp + 0x20]
.label_2114:
	mov	rdi, rbp
	call	strlen
	lea	rdx, [rax + 1]
	mov	rdi, r12
	mov	rsi, rbp
	call	memmove
	cmp	r14d, 1
	je	.label_2101
.label_2105:
	mov	qword ptr [rsp + 0x20], r12
	mov	rdi, r12
	call	strlen
	mov	rcx, r12
	add	rcx, rax
	mov	qword ptr [rsp + 8], rcx
	mov	byte ptr [rsp + 0x10], 0
	mov	qword ptr [rsp + 0x14], 0
	mov	byte ptr [rsp + 0x1c], 0
	test	rax, rax
	jle	.label_2101
	xor	ebp, ebp
	lea	r14, [rsp + 8]
	nop	dword ptr [rax + rax]
.label_2100:
	mov	rdi, r14
	call	mbiter_multi_next
	cmp	ebp, 1
	je	.label_2108
	test	ebp, ebp
	jne	.label_2109
	mov	rdi, qword ptr [rsp + 0x30]
	mov	ebp, 1
	test	dil, dil
	je	.label_2099
	shr	rdi, 0x20
	call	iswspace
	test	eax, eax
	je	.label_2113
	xor	ebp, ebp
	jmp	.label_2099
	.section	.text
	.align	32
	#Procedure 0x411578
	.globl sub_411578
	.type sub_411578, @function
sub_411578:

	nop	dword ptr [rax + rax]
.label_2108:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	ebp, 1
	test	dil, dil
	je	.label_2099
	shr	rdi, 0x20
	call	iswspace
	test	eax, eax
	je	.label_2099
	mov	rdi, qword ptr [rsp + 0x30]
	test	dil, dil
	je	.label_2102
	shr	rdi, 0x20
	call	iswspace
	test	eax, eax
	je	.label_2102
	mov	ebp, 2
	mov	r15, qword ptr [rsp + 0x20]
	jmp	.label_2099
	.section	.text
	.align	32
	#Procedure 0x4115bf
	.globl sub_4115bf
	.type sub_4115bf, @function
sub_4115bf:

	nop	
.label_2109:
	mov	rdi, qword ptr [rsp + 0x30]
	test	dil, dil
	je	.label_2102
	shr	rdi, 0x20
	call	iswspace
	mov	ebp, 2
	test	eax, eax
	jne	.label_2099
	jmp	.label_2102
.label_2113:
	mov	rdi, qword ptr [rsp + 0x30]
	test	dil, dil
	je	.label_2099
	shr	rdi, 0x20
	call	iswspace
	test	eax, eax
	je	.label_2099
	nop	word ptr cs:[rax + rax]
.label_2102:
	mov	ebp, 1
.label_2099:
	mov	rax, qword ptr [rsp + 0x20]
	add	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [rsp + 0x20], rax
	mov	byte ptr [rsp + 0x1c], 0
	cmp	rax, qword ptr [rsp + 8]
	jb	.label_2100
	cmp	ebp, 2
	jne	.label_2101
	mov	byte ptr [r15], 0
	jmp	.label_2101
.label_2110:
	test	r14d, r14d
	je	.label_2104
	mov	bl, byte ptr [r12]
	test	bl, bl
	mov	rbp, r12
	je	.label_2111
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rbp, r12
	nop	word ptr cs:[rax + rax]
.label_2112:
	movzx	ecx, bl
	test	byte ptr [rax + rcx*2 + 1], 0x20
	je	.label_2111
	movzx	ebx, byte ptr [rbp + 1]
	inc	rbp
	test	bl, bl
	jne	.label_2112
.label_2111:
	mov	rdi, rbp
	call	strlen
	lea	rdx, [rax + 1]
	mov	rdi, r12
	mov	rsi, rbp
	call	memmove
	cmp	r14d, 1
	je	.label_2101
.label_2104:
	mov	rdi, r12
	call	strlen
	lea	rbp, [r12 + rax - 1]
	cmp	rbp, r12
	jb	.label_2101
	call	__ctype_b_loc
	nop	dword ptr [rax]
.label_2106:
	movzx	ecx, byte ptr [rbp]
	mov	rdx, qword ptr [rax]
	test	byte ptr [rdx + rcx*2 + 1], 0x20
	je	.label_2101
	mov	byte ptr [rbp], 0
	dec	rbp
	cmp	rbp, r12
	jae	.label_2106
.label_2101:
	mov	rax, r12
	add	rsp, 0x50
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2107:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4116df
	.globl sub_4116df
	.type sub_4116df, @function
sub_4116df:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4116e0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_2116:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_2116
	jmp	version_etc_arn
	.section	.text
	.align	32
	#Procedure 0x411701
	.globl sub_411701
	.type sub_411701, @function
sub_411701:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411710

	.globl build_charclass
	.type build_charclass, @function
build_charclass:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r12, r8
	mov	r13, rcx
	mov	rbx, rdx
	mov	r15, rsi
	mov	r14, rdi
	test	r9d, 0x400000
	je	.label_2164
	mov	esi, OFFSET FLAT:label_2123
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_2180
	mov	esi, OFFSET FLAT:label_2171
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	jne	.label_2164
.label_2180:
	mov	r12d, OFFSET FLAT:label_2166
.label_2164:
	mov	rbp, qword ptr [r13]
	cmp	rbp, qword ptr [rbx + 0x48]
	je	.label_2173
.label_2138:
	mov	rdi, r12
	call	wctype
	mov	rcx, qword ptr [rbx + 0x48]
	lea	rdx, [rcx + 1]
	mov	qword ptr [rbx + 0x48], rdx
	mov	rdx, qword ptr [rbx + 0x18]
	mov	qword ptr [rdx + rcx*8], rax
	mov	esi, OFFSET FLAT:label_404
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_2193
	mov	esi, OFFSET FLAT:label_2184
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_2134
	mov	esi, OFFSET FLAT:label_2171
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_2188
	mov	esi, OFFSET FLAT:label_693
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_2191
	mov	esi, OFFSET FLAT:label_2166
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_2196
	mov	esi, OFFSET FLAT:label_2198
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_2201
	mov	esi, OFFSET FLAT:label_2118
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_2122
	mov	esi, OFFSET FLAT:label_2123
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_2125
	mov	esi, OFFSET FLAT:label_2128
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_2130
	mov	esi, OFFSET FLAT:label_2132
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_2133
	mov	esi, OFFSET FLAT:label_2135
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_2137
	mov	esi, OFFSET FLAT:label_2139
	mov	rdi, r12
	call	strcmp
	mov	ecx, eax
	mov	eax, 4
	test	ecx, ecx
	jne	.label_2120
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_2144
	xor	ecx, ecx
.label_2152:
	test	byte ptr [rdx + rcx*2 + 1], 0x10
	je	.label_2147
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_2147:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_2152
	jmp	.label_2120
.label_2193:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_2156
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_2165:
	test	byte ptr [rdx + rcx*2], 8
	je	.label_2158
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_2158:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_2165
	jmp	.label_2120
.label_2134:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_2161
	xor	ecx, ecx
	nop	word ptr [rax + rax]
.label_2176:
	test	byte ptr [rdx + rcx*2], 2
	je	.label_2169
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_2169:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_2176
	jmp	.label_2120
.label_2188:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_2179
	xor	ecx, ecx
	nop	word ptr [rax + rax]
.label_2186:
	test	byte ptr [rdx + rcx*2 + 1], 2
	je	.label_2181
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_2181:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_2186
	jmp	.label_2120
.label_2191:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_2190
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_2119:
	test	byte ptr [rdx + rcx*2 + 1], 0x20
	je	.label_2195
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_2195:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_2119
	jmp	.label_2120
.label_2196:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_2124
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_2202:
	test	byte ptr [rdx + rcx*2 + 1], 4
	je	.label_2129
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_2129:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_2202
	jmp	.label_2120
.label_2201:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_2140
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_2149:
	test	byte ptr [rdx + rcx*2 + 1], 8
	je	.label_2143
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_2143:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_2149
	jmp	.label_2120
.label_2122:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_2151
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_2159:
	test	byte ptr [rdx + rcx*2 + 1], 0x40
	je	.label_2155
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_2155:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_2159
	jmp	.label_2120
.label_2125:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_2162
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_2172:
	test	byte ptr [rdx + rcx*2 + 1], 1
	je	.label_2167
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_2167:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_2172
	jmp	.label_2120
.label_2130:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_2174
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_2183:
	test	byte ptr [rdx + rcx*2], 1
	je	.label_2177
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_2177:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_2183
	jmp	.label_2120
.label_2133:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_2185
	xor	ecx, ecx
.label_2194:
	cmp	word ptr [rdx + rcx*2], 0
	jns	.label_2187
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_2187:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_2194
	jmp	.label_2120
.label_2137:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_2199
	xor	ecx, ecx
.label_2126:
	test	byte ptr [rdx + rcx*2], 4
	je	.label_2117
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_2117:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_2126
.label_2120:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2173:
	lea	rax, [rbp + rbp]
	mov	rdi, qword ptr [rbx + 0x18]
	lea	rsi, [rax*8 + 8]
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_2120
	lea	rax, [rbp + rbp + 1]
	mov	qword ptr [rbx + 0x18], rcx
	mov	qword ptr [r13], rax
	jmp	.label_2138
.label_2156:
	xor	esi, esi
.label_2146:
	test	byte ptr [rdx + rsi*2], 8
	je	.label_2142
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_2142:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_2146
	jmp	.label_2120
.label_2161:
	xor	esi, esi
.label_2154:
	test	byte ptr [rdx + rsi*2], 2
	je	.label_2150
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_2150:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_2154
	jmp	.label_2120
.label_2179:
	xor	esi, esi
.label_2160:
	test	byte ptr [rdx + rsi*2 + 1], 2
	je	.label_2157
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_2157:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_2160
	jmp	.label_2120
.label_2190:
	xor	esi, esi
.label_2168:
	test	byte ptr [rdx + rsi*2 + 1], 0x20
	je	.label_2163
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_2163:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_2168
	jmp	.label_2120
.label_2124:
	xor	esi, esi
.label_2175:
	test	byte ptr [rdx + rsi*2 + 1], 4
	je	.label_2170
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_2170:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_2175
	jmp	.label_2120
.label_2140:
	xor	esi, esi
.label_2182:
	test	byte ptr [rdx + rsi*2 + 1], 8
	je	.label_2178
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_2178:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_2182
	jmp	.label_2120
.label_2151:
	xor	esi, esi
.label_2189:
	test	byte ptr [rdx + rsi*2 + 1], 0x40
	je	.label_2197
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_2197:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_2189
	jmp	.label_2120
.label_2162:
	xor	esi, esi
.label_2200:
	test	byte ptr [rdx + rsi*2 + 1], 1
	je	.label_2192
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_2192:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_2200
	jmp	.label_2120
.label_2174:
	xor	esi, esi
.label_2127:
	test	byte ptr [rdx + rsi*2], 1
	je	.label_2121
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_2121:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_2127
	jmp	.label_2120
.label_2185:
	xor	esi, esi
.label_2136:
	cmp	word ptr [rdx + rsi*2], 0
	jns	.label_2131
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_2131:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_2136
	jmp	.label_2120
.label_2199:
	xor	esi, esi
.label_2145:
	test	byte ptr [rdx + rsi*2], 4
	je	.label_2141
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_2141:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_2145
	jmp	.label_2120
.label_2144:
	xor	esi, esi
.label_2153:
	test	byte ptr [rdx + rsi*2 + 1], 0x10
	je	.label_2148
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_2148:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_2153
	jmp	.label_2120
	.section	.text
	.align	32
	#Procedure 0x411ed5
	.globl sub_411ed5
	.type sub_411ed5, @function
sub_411ed5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411ee0
	.globl rpl_re_match_2
	.type rpl_re_match_2, @function
rpl_re_match_2:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	rbx, r8
	mov	r15, rcx
	mov	r14, rdx
	mov	r13, rsi
	mov	rbp, qword ptr [rsp + 0x58]
	mov	rax, rbx
	or	rax, r14
	or	rax, rbp
	js	.label_2203
	movabs	rax, 0x7fffffffffffffff
	test	rbx, rbx
	js	.label_2206
	sub	rax, rbx
	cmp	rax, r14
	jl	.label_2203
	lea	rdx, [rbx + r14]
	xor	r12d, r12d
	test	rbx, rbx
	jle	.label_2204
	xor	r12d, r12d
	test	r14, r14
	jle	.label_2207
	mov	qword ptr [rsp + 8], rdi
	mov	qword ptr [rsp], rdx
	mov	rdi, rdx
	mov	qword ptr [rsp + 0x10], r9
	call	malloc
	mov	r12, rax
	test	r12, r12
	je	.label_2203
	mov	rdi, r12
	mov	rsi, r13
	mov	rdx, r14
	call	memcpy
	mov	rdi, r12
	add	rdi, r14
	mov	rsi, r15
	mov	rdx, rbx
	call	memcpy
	mov	rdi, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x10]
	mov	r13, r12
	mov	rdx, qword ptr [rsp]
	jmp	.label_2204
.label_2206:
	inc	rax
	sub	rax, rbx
	cmp	rax, r14
	jle	.label_2205
.label_2203:
	mov	rax, -2
	jmp	.label_2208
.label_2207:
	mov	r13, r15
.label_2204:
	mov	r8d, 0
	mov	rsi, r13
	mov	rcx, r9
	mov	r9, rbp
	push	1
	push	qword ptr [rsp + 0x58]
	call	re_search_stub
	add	rsp, 0x10
	mov	rbx, rax
	mov	rdi, r12
	call	free
	mov	rax, rbx
.label_2208:
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
	#Procedure 0x411fdb
	.globl sub_411fdb
	.type sub_411fdb, @function
sub_411fdb:

	nop	word ptr cs:[rax + rax]
.label_2205:
	add	rbx, r14
	xor	r12d, r12d
	mov	rdx, rbx
	jmp	.label_2204
	.section	.text
	.align	32
	#Procedure 0x411ff0

	.globl re_string_context_at
	.type re_string_context_at, @function
re_string_context_at:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rsi, rsi
	js	.label_2213
	cmp	qword ptr [rbx + 0x58], rsi
	je	.label_2217
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_2212
	mov	rax, qword ptr [rbx + 0x10]
	inc	rsi
	nop	dword ptr [rax]
.label_2214:
	mov	ebp, dword ptr [rax + rsi*4 - 4]
	cmp	ebp, -1
	jne	.label_2209
	dec	rsi
	test	rsi, rsi
	jg	.label_2214
	mov	edx, dword ptr [rbx + 0x70]
	jmp	.label_2210
.label_2212:
	mov	rax, qword ptr [rbx + 8]
	mov	rcx, qword ptr [rbx + 0x80]
	movzx	eax, byte ptr [rax + rsi]
	mov	edx, eax
	shr	dl, 6
	movzx	edx, dl
	mov	rcx, qword ptr [rcx + rdx*8]
	mov	edx, 1
	bt	rcx, rax
	jb	.label_2210
	xor	edx, edx
	cmp	al, 0xa
	je	.label_2216
	jmp	.label_2210
.label_2209:
	cmp	byte ptr [rbx + 0x8e], 0
	jne	.label_2211
.label_2215:
	xor	edx, edx
	cmp	ebp, 0xa
	jne	.label_2210
.label_2216:
	xor	edx, edx
	cmp	byte ptr [rbx + 0x8d], 0
	setne	dl
	add	edx, edx
.label_2210:
	mov	eax, edx
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_2213:
	mov	edx, dword ptr [rbx + 0x70]
	jmp	.label_2210
.label_2217:
	and	edx, 2
	xor	edx, 0xa
	jmp	.label_2210
.label_2211:
	mov	edi, ebp
	call	iswalnum
	cmp	ebp, 0x5f
	mov	edx, 1
	je	.label_2210
	test	eax, eax
	je	.label_2215
	jmp	.label_2210
	.section	.text
	.align	32
	#Procedure 0x4120af
	.globl sub_4120af
	.type sub_4120af, @function
sub_4120af:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4120b0

	.globl xstrtoimax
	.type xstrtoimax, @function
xstrtoimax:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r14, r8
	mov	qword ptr [rsp], rcx
	mov	ebp, edx
	mov	rbx, rdi
	cmp	ebp, 0x25
	jae	.label_2260
	test	rsi, rsi
	lea	r12, [rsp + 0x10]
	cmovne	r12, rsi
	call	__errno_location
	mov	r15, rax
	mov	dword ptr [r15], 0
	xor	r13d, r13d
	xor	ecx, ecx
	mov	rdi, rbx
	mov	rsi, r12
	mov	edx, ebp
	call	__strtol_internal
	mov	rbp, rax
	mov	qword ptr [rsp + 8], r12
	mov	r12, qword ptr [r12]
	cmp	r12, rbx
	je	.label_2218
	mov	eax, dword ptr [r15]
	test	eax, eax
	je	.label_2224
	mov	r13d, 4
	cmp	eax, 0x22
	jne	.label_2221
	mov	r13d, 1
.label_2224:
	test	r14, r14
	je	.label_2230
	mov	r15d, r13d
	jmp	.label_2234
.label_2218:
	mov	r13d, 4
	test	r14, r14
	je	.label_2221
	movsx	esi, byte ptr [rbx]
	test	esi, esi
	je	.label_2221
	mov	rdi, r14
	call	strchr
	xor	r15d, r15d
	mov	ebp, 1
	test	rax, rax
	je	.label_2221
.label_2234:
	movsx	r13d, byte ptr [r12]
	test	r13d, r13d
	je	.label_2243
	mov	rdi, r14
	mov	esi, r13d
	call	strchr
	test	rax, rax
	je	.label_2227
	mov	ebx, 1
	mov	r10d, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_2249
	movabs	rcx, 0x814400308945
	bt	rcx, rax
	jae	.label_2249
	mov	esi, 0x30
	mov	rdi, r14
	call	strchr
	mov	ebx, 1
	mov	r10d, 0x400
	test	rax, rax
	je	.label_2249
	movsx	eax, byte ptr [r12 + 1]
	mov	ebx, 1
	mov	r10d, 0x400
	cmp	eax, 0x42
	je	.label_2265
	cmp	eax, 0x44
	je	.label_2265
	cmp	eax, 0x69
	jne	.label_2249
	xor	eax, eax
	cmp	byte ptr [r12 + 2], 0x42
	sete	al
	lea	rbx, [rax + rax + 1]
	mov	r10d, 0x400
	jmp	.label_2249
.label_2230:
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax], rbp
	jmp	.label_2221
.label_2265:
	mov	ebx, 2
	mov	r10d, 0x3e8
.label_2249:
	add	r13d, -0x42
	cmp	r13d, 0x35
	ja	.label_2227
	movabs	r9, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	r8, rbp
	jmp	qword ptr [(r13 * 8) + label_2231]
.label_3257:
	lea	r8, [r9 + 1]
	mov	rax, r8
	cqo	
	idiv	r10
	mov	r11, rax
	cmp	rbp, r11
	mov	r14d, 1
	mov	rsi, r8
	mov	ecx, 1
	jl	.label_2238
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbp
	imul	rsi, r10
	xor	ecx, ecx
	cmp	rax, rbp
	setl	cl
	cmovl	rsi, r9
.label_2238:
	cmp	rsi, r11
	mov	rdi, r8
	jl	.label_2247
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rdi, rsi
	imul	rdi, r10
	xor	r14d, r14d
	cmp	rax, rsi
	setl	r14b
	cmovl	rdi, r9
.label_2247:
	or	r14d, ecx
	cmp	rdi, r11
	mov	ecx, 1
	jl	.label_2256
	xor	edx, edx
	mov	rax, r9
	div	r10
	imul	r10, rdi
	xor	ecx, ecx
	cmp	rax, rdi
	setl	cl
	cmovl	r10, r9
	mov	r8, r10
.label_2256:
	or	ecx, r14d
	jmp	.label_2219
.label_2227:
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax], rbp
	or	r15d, 2
	jmp	.label_2222
.label_3258:
	lea	r8, [r9 + 1]
	mov	rax, r8
	cqo	
	idiv	r10
	cmp	rbp, rax
	mov	ecx, 1
	jl	.label_2219
	xor	edx, edx
	mov	rax, r9
	div	r10
	imul	r10, rbp
	xor	ecx, ecx
	cmp	rax, rbp
	setl	cl
	cmovl	r10, r9
	mov	r8, r10
	jmp	.label_2219
.label_3259:
	lea	r8, [r9 + 1]
	mov	rax, r8
	cqo	
	idiv	r10
	mov	rdi, rax
	cmp	rbp, rdi
	mov	ecx, 1
	mov	rsi, r8
	mov	r11d, 1
	jl	.label_2228
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbp
	imul	rsi, r10
	xor	r11d, r11d
	cmp	rax, rbp
	setl	r11b
	cmovl	rsi, r9
.label_2228:
	cmp	rsi, rdi
	jl	.label_2241
	xor	edx, edx
	mov	rax, r9
	div	r10
	imul	r10, rsi
	xor	ecx, ecx
	cmp	rax, rsi
	setl	cl
	cmovl	r10, r9
	mov	r8, r10
.label_2241:
	or	ecx, r11d
	jmp	.label_2219
.label_3261:
	lea	r8, [r9 + 1]
	mov	rax, r8
	cqo	
	idiv	r10
	mov	r11, rax
	cmp	rbp, r11
	mov	r14d, 1
	mov	rdi, r8
	mov	ecx, 1
	jl	.label_2248
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rdi, rbp
	imul	rdi, r10
	xor	ecx, ecx
	cmp	rax, rbp
	setl	cl
	cmovl	rdi, r9
.label_2248:
	mov	rbp, rbx
	cmp	rdi, r11
	mov	rsi, r8
	jl	.label_2262
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rdi
	imul	rsi, r10
	xor	r14d, r14d
	cmp	rax, rdi
	setl	r14b
	cmovl	rsi, r9
.label_2262:
	or	r14d, ecx
	cmp	rsi, r11
	mov	ecx, 1
	mov	rbx, r8
	mov	edi, 1
	jl	.label_2269
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rbx, rsi
	imul	rbx, r10
	xor	edi, edi
	cmp	rax, rsi
	setl	dil
	cmovl	rbx, r9
.label_2269:
	or	edi, r14d
	cmp	rbx, r11
	jl	.label_2226
	xor	edx, edx
	mov	rax, r9
	div	r10
	imul	r10, rbx
	xor	ecx, ecx
	cmp	rax, rbx
	setl	cl
	cmovl	r10, r9
	mov	r8, r10
.label_2226:
	or	ecx, edi
	mov	rbx, rbp
	jmp	.label_2219
.label_3255:
	movabs	rax, 0xffe0000000000000
	cmp	rbp, rax
	jl	.label_2225
	mov	r8, rbp
	shl	r8, 0xa
	movabs	rax, 0x1fffffffffffff
	jmp	.label_2229
.label_3256:
	mov	r13, rbx
	lea	r8, [r9 + 1]
	mov	rax, r8
	cqo	
	idiv	r10
	mov	r11, rax
	cmp	rbp, r11
	mov	ebx, 1
	mov	rsi, r8
	mov	edi, 1
	jl	.label_2245
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbp
	imul	rsi, r10
	xor	edi, edi
	cmp	rax, rbp
	setl	dil
	cmovl	rsi, r9
.label_2245:
	cmp	rsi, r11
	mov	rcx, r8
	jl	.label_2235
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rcx, rsi
	imul	rcx, r10
	xor	ebx, ebx
	cmp	rax, rsi
	setl	bl
	cmovl	rcx, r9
.label_2235:
	or	ebx, edi
	cmp	rcx, r11
	mov	r14d, 1
	mov	rsi, r8
	mov	ebp, 1
	jl	.label_2266
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rcx
	imul	rsi, r10
	xor	ebp, ebp
	cmp	rax, rcx
	setl	bpl
	cmovl	rsi, r9
.label_2266:
	or	ebp, ebx
	cmp	rsi, r11
	mov	rdi, r8
	jl	.label_2220
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rdi, rsi
	imul	rdi, r10
	xor	r14d, r14d
	cmp	rax, rsi
	setl	r14b
	cmovl	rdi, r9
.label_2220:
	or	r14d, ebp
	cmp	rdi, r11
	mov	ecx, 1
	mov	rsi, r8
	mov	ebx, 1
	jl	.label_2232
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rdi
	imul	rsi, r10
	xor	ebx, ebx
	cmp	rax, rdi
	setl	bl
	cmovl	rsi, r9
.label_2232:
	or	ebx, r14d
	cmp	rsi, r11
	jl	.label_2240
	xor	edx, edx
	mov	rax, r9
	div	r10
	imul	r10, rsi
	xor	ecx, ecx
	cmp	rax, rsi
	setl	cl
	cmovl	r10, r9
	mov	r8, r10
.label_2240:
	or	ecx, ebx
	mov	rbx, r13
	jmp	.label_2219
.label_3260:
	mov	r13, rbx
	lea	r8, [r9 + 1]
	mov	rax, r8
	cqo	
	idiv	r10
	mov	r11, rax
	cmp	rbp, r11
	mov	ebx, 1
	mov	rsi, r8
	mov	edi, 1
	jl	.label_2251
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbp
	imul	rsi, r10
	xor	edi, edi
	cmp	rax, rbp
	setl	dil
	cmovl	rsi, r9
.label_2251:
	cmp	rsi, r11
	mov	rcx, r8
	jl	.label_2264
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rcx, rsi
	imul	rcx, r10
	xor	ebx, ebx
	cmp	rax, rsi
	setl	bl
	cmovl	rcx, r9
.label_2264:
	or	ebx, edi
	cmp	rcx, r11
	mov	r14d, 1
	mov	rsi, r8
	mov	ebp, 1
	jl	.label_2270
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rcx
	imul	rsi, r10
	xor	ebp, ebp
	cmp	rax, rcx
	setl	bpl
	cmovl	rsi, r9
.label_2270:
	or	ebp, ebx
	cmp	rsi, r11
	mov	rdi, r8
	jl	.label_2271
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rdi, rsi
	imul	rdi, r10
	xor	r14d, r14d
	cmp	rax, rsi
	setl	r14b
	cmovl	rdi, r9
.label_2271:
	or	r14d, ebp
	cmp	rdi, r11
	mov	ecx, 1
	mov	rbx, r13
	jl	.label_2239
	xor	edx, edx
	mov	rax, r9
	div	r10
	imul	r10, rdi
	xor	ecx, ecx
	cmp	rax, rdi
	setl	cl
	cmovl	r10, r9
	mov	r8, r10
.label_2239:
	or	ecx, r14d
	jmp	.label_2219
.label_3262:
	mov	r13, rbx
	lea	r8, [r9 + 1]
	mov	rax, r8
	cqo	
	idiv	r10
	mov	r11, rax
	cmp	rbp, r11
	mov	edi, 1
	mov	rbx, r8
	mov	ecx, 1
	jl	.label_2246
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rbx, rbp
	imul	rbx, r10
	xor	ecx, ecx
	cmp	rax, rbp
	setl	cl
	cmovl	rbx, r9
.label_2246:
	cmp	rbx, r11
	mov	rsi, r8
	jl	.label_2261
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbx
	imul	rsi, r10
	xor	edi, edi
	cmp	rax, rbx
	setl	dil
	cmovl	rsi, r9
.label_2261:
	or	edi, ecx
	cmp	rsi, r11
	mov	r14d, 1
	mov	rbx, r8
	mov	ecx, 1
	jl	.label_2268
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rbx, rsi
	imul	rbx, r10
	xor	ecx, ecx
	cmp	rax, rsi
	setl	cl
	cmovl	rbx, r9
.label_2268:
	or	ecx, edi
	cmp	rbx, r11
	mov	rsi, r8
	jl	.label_2223
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbx
	imul	rsi, r10
	xor	r14d, r14d
	cmp	rax, rbx
	setl	r14b
	cmovl	rsi, r9
.label_2223:
	or	r14d, ecx
	cmp	rsi, r11
	mov	ebp, 1
	mov	rdi, r8
	mov	ecx, 1
	jl	.label_2233
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rdi, rsi
	imul	rdi, r10
	xor	ecx, ecx
	cmp	rax, rsi
	setl	cl
	cmovl	rdi, r9
.label_2233:
	or	ecx, r14d
	cmp	rdi, r11
	mov	rsi, r8
	jl	.label_2242
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rdi
	imul	rsi, r10
	xor	ebp, ebp
	cmp	rax, rdi
	setl	bpl
	cmovl	rsi, r9
.label_2242:
	or	ebp, ecx
	cmp	rsi, r11
	mov	ecx, 1
	mov	rbx, r8
	mov	edi, 1
	jl	.label_2250
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rbx, rsi
	imul	rbx, r10
	xor	edi, edi
	cmp	rax, rsi
	setl	dil
	cmovl	rbx, r9
.label_2250:
	or	edi, ebp
	cmp	rbx, r11
	jl	.label_2252
	xor	edx, edx
	mov	rax, r9
	div	r10
	imul	r10, rbx
	xor	ecx, ecx
	cmp	rax, rbx
	jmp	.label_2255
.label_3263:
	mov	r13, rbx
	lea	r8, [r9 + 1]
	mov	rax, r8
	cqo	
	idiv	r10
	mov	r11, rax
	cmp	rbp, r11
	mov	edi, 1
	mov	rbx, r8
	mov	ecx, 1
	jl	.label_2267
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rbx, rbp
	imul	rbx, r10
	xor	ecx, ecx
	cmp	rax, rbp
	setl	cl
	cmovl	rbx, r9
.label_2267:
	cmp	rbx, r11
	mov	rsi, r8
	jl	.label_2254
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbx
	imul	rsi, r10
	xor	edi, edi
	cmp	rax, rbx
	setl	dil
	cmovl	rsi, r9
.label_2254:
	or	edi, ecx
	cmp	rsi, r11
	mov	r14d, 1
	mov	rbx, r8
	mov	ecx, 1
	jl	.label_2237
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rbx, rsi
	imul	rbx, r10
	xor	ecx, ecx
	cmp	rax, rsi
	setl	cl
	cmovl	rbx, r9
.label_2237:
	or	ecx, edi
	cmp	rbx, r11
	mov	rsi, r8
	jl	.label_2244
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbx
	imul	rsi, r10
	xor	r14d, r14d
	cmp	rax, rbx
	setl	r14b
	cmovl	rsi, r9
.label_2244:
	or	r14d, ecx
	cmp	rsi, r11
	mov	edi, 1
	mov	rbx, r8
	mov	ecx, 1
	jl	.label_2253
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rbx, rsi
	imul	rbx, r10
	xor	ecx, ecx
	cmp	rax, rsi
	setl	cl
	cmovl	rbx, r9
.label_2253:
	or	ecx, r14d
	cmp	rbx, r11
	mov	rsi, r8
	jl	.label_2263
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbx
	imul	rsi, r10
	xor	edi, edi
	cmp	rax, rbx
	setl	dil
	cmovl	rsi, r9
.label_2263:
	or	edi, ecx
	cmp	rsi, r11
	mov	ecx, 1
	jl	.label_2252
	xor	edx, edx
	mov	rax, r9
	div	r10
	imul	r10, rsi
	xor	ecx, ecx
	cmp	rax, rsi
.label_2255:
	setl	cl
	cmovl	r10, r9
	mov	r8, r10
.label_2252:
	or	ecx, edi
	mov	rbx, r13
	jmp	.label_2219
.label_3264:
	movabs	rax, 0xffc0000000000000
	cmp	rbp, rax
	jl	.label_2225
	mov	r8, rbp
	shl	r8, 9
	movabs	rax, 0x3fffffffffffff
	jmp	.label_2229
.label_3265:
	movabs	rax, 0xc000000000000000
	cmp	rbp, rax
	jge	.label_2236
.label_2225:
	inc	r9
	mov	ecx, 1
	mov	r8, r9
	jmp	.label_2219
.label_2236:
	lea	r8, [rbp + rbp]
	movabs	rax, 0x3fffffffffffffff
.label_2229:
	xor	ecx, ecx
	cmp	rbp, rax
	setg	cl
	cmovg	r8, r9
.label_2219:
	or	ecx, r15d
	lea	rax, [r12 + rbx]
	mov	rdx, qword ptr [rsp + 8]
	mov	qword ptr [rdx], rax
	lea	r15d, [rcx + 2]
	cmp	byte ptr [r12 + rbx], 0
	cmove	r15d, ecx
	mov	rbp, r8
.label_2243:
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax], rbp
.label_2222:
	mov	r13d, r15d
.label_2221:
	mov	eax, r13d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2260:
	mov	edi, OFFSET FLAT:label_2257
	mov	esi, OFFSET FLAT:label_2258
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_2259
	call	__assert_fail
	.section	.text
	.align	32
	#Procedure 0x4129c8
	.globl sub_4129c8
	.type sub_4129c8, @function
sub_4129c8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4129d0

	.globl strnlen1
	.type strnlen1, @function
strnlen1:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	xor	esi, esi
	mov	rdx, r14
	call	memchr
	mov	ecx, 1
	sub	rcx, rbx
	add	rcx, rax
	test	rax, rax
	cmove	rcx, r14
	mov	rax, rcx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x412a01
	.globl sub_412a01
	.type sub_412a01, @function
sub_412a01:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412a10
	.globl rpl_re_set_syntax
	.type rpl_re_set_syntax, @function
rpl_re_set_syntax:

	mov	rax, qword ptr [rip + rpl_re_syntax_options]
	mov	qword ptr [rip + rpl_re_syntax_options],  rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x412a1f
	.globl sub_412a1f
	.type sub_412a1f, @function
sub_412a1f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x412a20

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_2272
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_2272
	test	byte ptr [rbx + 1], 1
	je	.label_2272
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_2272:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	32
	#Procedure 0x412a53
	.globl sub_412a53
	.type sub_412a53, @function
sub_412a53:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412a60

	.globl register_state
	.type register_state, @function
register_state:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rdx
	mov	rbx, rsi
	mov	r12, rdi
	mov	qword ptr [rbx], r15
	mov	r13, qword ptr [rbx + 0x10]
	mov	qword ptr [rbx + 0x20], r13
	mov	qword ptr [rbx + 0x28], 0
	lea	rdi, [r13*8]
	call	malloc
	mov	qword ptr [rbx + 0x30], rax
	mov	ecx, 0xc
	test	rax, rax
	je	.label_2273
	test	r13, r13
	jle	.label_2274
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_2277:
	mov	rcx, qword ptr [rbx + 0x18]
	mov	r14, qword ptr [rcx + rbp*8]
	mov	rcx, qword ptr [r12]
	mov	rdx, r14
	shl	rdx, 4
	test	byte ptr [rcx + rdx + 8], 8
	jne	.label_2276
	mov	rdx, qword ptr [rbx + 0x20]
	mov	rcx, qword ptr [rbx + 0x28]
	cmp	rdx, rcx
	jne	.label_2275
	lea	rcx, [rdx + rdx + 2]
	lea	rdx, [rdx + rdx]
	mov	qword ptr [rbx + 0x20], rcx
	lea	rsi, [rdx*8 + 0x10]
	mov	rdi, rax
	call	realloc
	test	rax, rax
	je	.label_2278
	mov	qword ptr [rbx + 0x30], rax
	mov	rcx, qword ptr [rbx + 0x28]
.label_2275:
	lea	rdx, [rcx + 1]
	mov	qword ptr [rbx + 0x28], rdx
	mov	qword ptr [rax + rcx*8], r14
	mov	r13, qword ptr [rbx + 0x10]
.label_2276:
	inc	rbp
	cmp	rbp, r13
	jl	.label_2277
.label_2274:
	mov	r13, qword ptr [r12 + 0x40]
	and	r15, qword ptr [r12 + 0x88]
	lea	rbp, [r15 + r15*2]
	lea	r14, [r13 + rbp*8]
	mov	r15, qword ptr [r13 + rbp*8]
	cmp	qword ptr [r13 + rbp*8 + 8], r15
	jle	.label_2279
	mov	rax, qword ptr [r13 + rbp*8 + 0x10]
.label_2280:
	lea	rcx, [r15 + 1]
	mov	qword ptr [r14], rcx
	mov	qword ptr [rax + r15*8], rbx
	xor	ecx, ecx
.label_2273:
	mov	eax, ecx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2278:
	mov	ecx, 0xc
	jmp	.label_2273
.label_2279:
	lea	rax, [r15 + r15]
	mov	rdi, qword ptr [r13 + rbp*8 + 0x10]
	lea	rsi, [rax*8 + 0x10]
	call	realloc
	test	rax, rax
	mov	ecx, 0xc
	je	.label_2273
	lea	rcx, [r13 + rbp*8 + 8]
	lea	rdx, [r15 + r15 + 2]
	mov	qword ptr [rcx + 8], rax
	mov	qword ptr [rcx], rdx
	mov	r15, qword ptr [r14]
	jmp	.label_2280
	.section	.text
	.align	32
	#Procedure 0x412b9b
	.globl sub_412b9b
	.type sub_412b9b, @function
sub_412b9b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412ba0

	.globl match_ctx_clean
	.type match_ctx_clean, @function
match_ctx_clean:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r14, rdi
	cmp	qword ptr [r14 + 0xe8], 0
	jle	.label_2281
	xor	r12d, r12d
	nop	dword ptr [rax]
.label_2284:
	mov	rax, qword ptr [r14 + 0xf8]
	mov	r15, qword ptr [rax + r12*8]
	cmp	qword ptr [r15 + 0x20], 0
	jle	.label_2282
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_2285:
	mov	rax, qword ptr [r15 + 0x28]
	mov	r13, qword ptr [rax + rbx*8]
	mov	rdi, qword ptr [r13 + 0x20]
	call	free
	mov	rdi, r13
	call	free
	inc	rbx
	cmp	rbx, qword ptr [r15 + 0x20]
	jl	.label_2285
.label_2282:
	mov	rdi, qword ptr [r15 + 0x28]
	call	free
	mov	rax, qword ptr [r15 + 0x10]
	test	rax, rax
	je	.label_2283
	mov	rdi, qword ptr [rax + 0x10]
	call	free
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
.label_2283:
	mov	rdi, r15
	call	free
	inc	r12
	cmp	r12, qword ptr [r14 + 0xe8]
	jl	.label_2284
.label_2281:
	mov	qword ptr [r14 + 0xe8], 0
	mov	qword ptr [r14 + 0xc8], 0
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x412c5a
	.globl sub_412c5a
	.type sub_412c5a, @function
sub_412c5a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412c60
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_87]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_88]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_89]
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
	#Procedure 0x412cb4
	.globl sub_412cb4
	.type sub_412cb4, @function
sub_412cb4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412cc0
	.globl rpl_regerror
	.type rpl_regerror, @function
rpl_regerror:

	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r15, rcx
	mov	r14, rdx
	cmp	edi, 0x11
	jae	.label_2286
	movsxd	rax, edi
	mov	esi, OFFSET FLAT:__re_error_msgid
	add	rsi, qword ptr [(rax * 8) + __re_error_msgid_idx]
	xor	edi, edi
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	mov	rdi, r12
	call	strlen
	mov	rbx, rax
	inc	rbx
	test	r15, r15
	je	.label_2289
	cmp	rbx, r15
	mov	rdx, rbx
	ja	.label_2287
.label_2288:
	mov	rdi, r14
	mov	rsi, r12
	call	memcpy
.label_2289:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_2287:
	mov	byte ptr [r14 + r15 - 1], 0
	dec	r15
	mov	rdx, r15
	jmp	.label_2288
.label_2286:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x412d3a
	.globl sub_412d3a
	.type sub_412d3a, @function
sub_412d3a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412d40
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
	je	.label_2290
	mov	qword ptr [rax], rbx
.label_2290:
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
	#Procedure 0x412e2c
	.globl sub_412e2c
	.type sub_412e2c, @function
sub_412e2c:

	nop	dword ptr [rax]
.label_2292:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_2293
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
.label_2294:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_2291
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_2292
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_1487
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_2295:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	.section	.text
	.align	32
	#Procedure 0x412ead

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_2296
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_2294
	cmp	dword ptr [rbp], 0x20
	jne	.label_2294
.label_2296:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_2295
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x412ef0

	.globl print_field
	.type print_field, @function
print_field:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r14, rsi
	mov	r15, rdi
	cmp	r15, r14
	jae	.label_2325
	mov	r12d, OFFSET FLAT:label_2302
	jmp	.label_2303
.label_2305:
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:label_2326
	call	fputs_unlocked
	jmp	.label_2298
.label_2310:
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:label_2328
	call	fputs_unlocked
	jmp	.label_2298
.label_2297:
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:label_2311
	call	fputs_unlocked
	jmp	.label_2298
.label_2320:
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:label_2330
	call	fputs_unlocked
	jmp	.label_2298
.label_2319:
	mov	esi, r13d
	call	__overflow
	jmp	.label_2298
	.section	.text
	.align	32
	#Procedure 0x412f78

	.globl sub_412f78
	.type sub_412f78, @function
sub_412f78:
	mov	esi, 0x5c
	call	__overflow
	jmp	.label_2312
.label_2315:
	mov	esi, 0x20
	call	__overflow
	jmp	.label_2298
	.section	.text
	.align	32
	#Procedure 0x412f96

	.globl sub_412f96
	.type sub_412f96, @function
sub_412f96:
	mov	esi, 0x22
	call	__overflow
	jmp	.label_2331
.label_2332:
	mov	esi, 0x22
	call	__overflow
	jmp	.label_2298
	.section	.text
	.align	32
	#Procedure 0x412fb4
	.globl sub_412fb4
	.type sub_412fb4, @function
sub_412fb4:

	nop	word ptr cs:[rax + rax]
.label_2303:
	movzx	ebx, byte ptr [r15]
	movzx	r13d, bl
	cmp	byte ptr [r13 + edited_flag],  0
	je	.label_2312
	movsx	eax, byte ptr [r13 + diacrit_diac]
	test	eax, eax
	je	.label_2321
	cmp	dword ptr [rip + output_format],  3
	jne	.label_2321
	dec	eax
	cmp	eax, 8
	ja	.label_2298
	movsx	ecx, byte ptr [r13 + diacrit_base]
	jmp	qword ptr [(rax * 8) + label_2327]
.label_3343:
	cmp	cl, 0x69
	mov	edx, OFFSET FLAT:label_694
	cmove	rdx, r12
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_2300
	jmp	.label_2301
.label_2321:
	mov	eax, ebx
	add	al, 0xde
	movzx	eax, al
	cmp	al, 0x3d
	ja	.label_2316
	jmp	qword ptr [(rax * 8) + label_2308]
.label_3287:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	sub_412f78
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x5c
.label_2312:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_2319
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], bl
	jmp	.label_2298
.label_2316:
	cmp	bl, 0x7b
	je	.label_2323
	cmp	bl, 0x7d
	jne	.label_2304
.label_2323:
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_2299
	xor	eax, eax
	mov	edx, r13d
	call	__printf_chk
	jmp	.label_2298
.label_3286:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	sub_412f96
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x22
.label_2331:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_2332
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x22
	jmp	.label_2298
.label_3288:
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:label_2318
	call	fputs_unlocked
	jmp	.label_2298
.label_3342:
	cmp	ecx, 0x60
	jg	.label_2329
	cmp	ecx, 0x41
	je	.label_2297
	cmp	ecx, 0x4f
	jne	.label_2304
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:label_2317
	call	fputs_unlocked
	jmp	.label_2298
.label_3344:
	cmp	cl, 0x69
	mov	edx, OFFSET FLAT:label_694
	cmove	rdx, r12
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_2307
	jmp	.label_2301
.label_3345:
	cmp	cl, 0x69
	mov	edx, OFFSET FLAT:label_694
	cmove	rdx, r12
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_2313
	jmp	.label_2301
.label_3346:
	cmp	cl, 0x69
	mov	edx, OFFSET FLAT:label_694
	cmove	rdx, r12
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_2322
.label_2301:
	xor	eax, eax
	call	__printf_chk
	jmp	.label_2298
.label_3347:
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_2324
	xor	eax, eax
	mov	edx, ecx
	call	__printf_chk
	jmp	.label_2298
.label_3348:
	cmp	ecx, 0x41
	je	.label_2305
	cmp	ecx, 0x61
	jne	.label_2304
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:label_2306
	call	fputs_unlocked
	jmp	.label_2298
.label_3349:
	cmp	ecx, 0x4f
	je	.label_2310
	cmp	ecx, 0x6f
	jne	.label_2304
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:label_2314
	call	fputs_unlocked
	jmp	.label_2298
.label_2329:
	cmp	ecx, 0x61
	je	.label_2320
	cmp	ecx, 0x6f
	jne	.label_2304
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:label_2309
	call	fputs_unlocked
	jmp	.label_2298
.label_2304:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_2315
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x20
	nop	word ptr cs:[rax + rax]
.label_2298:
	inc	r15
	cmp	r14, r15
	jne	.label_2303
.label_2325:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x413236
	.globl sub_413236
	.type sub_413236, @function
sub_413236:

	nop	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x413240
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x413248
	.globl sub_413248
	.type sub_413248, @function
sub_413248:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x413250
	.globl mbuiter_multi_reloc
	.type mbuiter_multi_reloc, @function
mbuiter_multi_reloc:

	add	qword ptr [rdi + 0x10], rsi
	ret	
	.section	.text
	.align	32
	#Procedure 0x413255
	.globl sub_413255
	.type sub_413255, @function
sub_413255:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x413260
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
	#Procedure 0x4132d5
	.globl sub_4132d5
	.type sub_4132d5, @function
sub_4132d5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4132e0

	.globl peek_token
	.type peek_token, @function
peek_token:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x10
	mov	rbp, rsi
	mov	r15, rdi
	mov	rax, qword ptr [rbp + 0x48]
	cmp	qword ptr [rbp + 0x68], rax
	jle	.label_2350
	mov	r12, rdx
	mov	rcx, qword ptr [rbp + 8]
	movzx	ebx, byte ptr [rcx + rax]
	mov	byte ptr [r15], bl
	mov	r14d, dword ptr [r15 + 8]
	mov	eax, r14d
	and	eax, 0xff9fffff
	mov	dword ptr [r15 + 8], eax
	mov	edx, dword ptr [rbp + 0x90]
	cmp	edx, 2
	jl	.label_2333
	mov	rax, qword ptr [rbp + 0x48]
	cmp	rax, qword ptr [rbp + 0x30]
	je	.label_2333
	mov	rcx, qword ptr [rbp + 0x10]
	cmp	dword ptr [rcx + rax*4], -1
	je	.label_2353
.label_2333:
	cmp	bl, 0x5c
	jne	.label_2343
	mov	rcx, qword ptr [rbp + 0x48]
	lea	rax, [rcx + 1]
	cmp	rax, qword ptr [rbp + 0x58]
	jge	.label_2345
	cmp	byte ptr [rbp + 0x8b], 0
	jne	.label_2349
.label_2336:
	mov	rcx, qword ptr [rbp + 8]
	mov	bl, byte ptr [rcx + rax]
.label_2340:
	mov	byte ptr [r15], bl
	and	r14d, 0xff9fff00
	or	r14d, 1
	mov	dword ptr [r15 + 8], r14d
	cmp	dword ptr [rbp + 0x90], 2
	jl	.label_2352
	mov	rax, qword ptr [rbp + 0x10]
	mov	rcx, qword ptr [rbp + 0x48]
	mov	ebp, dword ptr [rax + rcx*4 + 4]
	mov	edi, ebp
	call	iswalnum
	test	eax, eax
	setne	al
	cmp	ebp, 0x5f
	sete	cl
	or	cl, al
	movzx	ecx, cl
	shl	ecx, 0x16
	mov	eax, 0xffbfffff
	and	eax, dword ptr [r15 + 8]
	or	eax, ecx
	movzx	ebp, bl
	jmp	.label_2338
.label_2350:
	mov	byte ptr [r15 + 8], 2
	xor	r14d, r14d
	jmp	.label_254
.label_2343:
	and	r14d, 0xff9fff00
	or	r14d, 1
	mov	dword ptr [r15 + 8], r14d
	cmp	dword ptr [rbp + 0x90], 2
	jl	.label_2347
	mov	rax, qword ptr [rbp + 0x10]
	mov	rcx, qword ptr [rbp + 0x48]
	mov	r14d, dword ptr [rax + rcx*4]
	mov	edi, r14d
	call	iswalnum
	test	eax, eax
	setne	al
	cmp	r14d, 0x5f
	sete	cl
	or	cl, al
	movzx	ecx, cl
	shl	ecx, 0x16
	mov	eax, 0xffbfffff
	and	eax, dword ptr [r15 + 8]
	or	eax, ecx
	jmp	.label_2334
.label_2345:
	and	r14d, 0xff9fff00
	or	r14d, 0x24
	jmp	.label_2346
.label_2347:
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbx*2]
	xor	ecx, ecx
	cmp	bl, 0x5f
	sete	cl
	shr	eax, 3
	and	eax, 1
	or	eax, ecx
	shl	eax, 0x16
	or	eax, r14d
.label_2334:
	mov	dword ptr [r15 + 8], eax
	mov	r14d, 1
	add	bl, 0xf6
	movzx	ecx, bl
	cmp	cl, 0x73
	ja	.label_254
	jmp	qword ptr [(rcx * 8) + label_2351]
.label_3314:
	mov	rcx, r12
	test	ch, 8
	je	.label_254
	jmp	.label_556
.label_2352:
	movzx	ebp, bl
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbp*2]
	xor	ecx, ecx
	cmp	bl, 0x5f
	sete	cl
	shr	eax, 3
	and	eax, 1
	or	eax, ecx
	shl	eax, 0x16
	or	eax, r14d
.label_2338:
	mov	dword ptr [r15 + 8], eax
	mov	r14d, 2
	add	bl, 0xd9
	movzx	ecx, bl
	cmp	cl, 0x56
	ja	.label_254
	jmp	qword ptr [(rcx * 8) + label_2342]
.label_3192:
	mov	rcx, r12
	test	ch, 0x40
	jne	.label_254
	and	eax, 0xffffff00
	or	eax, 4
	mov	dword ptr [r15 + 8], eax
	add	rbp, -0x31
	mov	qword ptr [r15], rbp
	jmp	.label_254
.label_2353:
	and	r14d, 0xff9fff00
	or	r14d, 0x200001
.label_2346:
	mov	dword ptr [r15 + 8], r14d
	mov	r14d, 1
.label_254:
	mov	eax, r14d
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_3315:
	mov	rdx, r12
	test	dl, 8
	jne	.label_591
	mov	rcx, qword ptr [rbp + 0x48]
	inc	rcx
	cmp	rcx, qword ptr [rbp + 0x58]
	je	.label_591
	mov	qword ptr [rbp + 0x48], rcx
	lea	rdi, [rsp]
	mov	rsi, rbp
	call	peek_token
	dec	qword ptr [rbp + 0x48]
	movzx	eax, byte ptr [rsp + 8]
	add	eax, -9
	cmp	eax, 1
	ja	.label_254
	mov	eax, dword ptr [r15 + 8]
.label_591:
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x20
	jmp	.label_254
.label_3316:
	mov	rcx, r12
	test	ch, 0x20
	je	.label_254
	jmp	.label_612
.label_3317:
	mov	rcx, r12
	test	ch, 0x20
	je	.label_254
	jmp	.label_616
.label_3318:
	and	eax, 0xffffff00
	or	eax, 0xb
	mov	dword ptr [r15 + 8], eax
	jmp	.label_254
.label_3319:
	test	r12w, 0x402
	jne	.label_254
	jmp	.label_622
.label_3320:
	and	eax, 0xffffff00
	or	eax, 5
	mov	dword ptr [r15 + 8], eax
	jmp	.label_254
.label_3321:
	test	r12w, 0x402
	jne	.label_254
	jmp	.label_398
.label_3322:
	and	eax, 0xffffff00
	or	eax, 0x14
	mov	dword ptr [r15 + 8], eax
	jmp	.label_254
.label_3323:
	mov	rdx, r12
	test	edx, 0x800008
	jne	.label_636
	mov	rcx, qword ptr [rbp + 0x48]
	test	rcx, rcx
	je	.label_636
	test	dh, 8
	je	.label_254
	mov	rdx, qword ptr [rbp + 8]
	cmp	byte ptr [rdx + rcx - 1], 0xa
	jne	.label_254
.label_636:
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x10
	jmp	.label_254
.label_3324:
	and	r12d, 0x1200
	cmp	r12, 0x1200
	jne	.label_254
	jmp	.label_574
.label_3325:
	mov	rcx, r12
	test	ch, 4
	jne	.label_254
	test	cx, cx
	js	.label_556
	jmp	.label_254
.label_3326:
	and	r12d, 0x1200
	cmp	r12, 0x1200
	jne	.label_254
	jmp	.label_637
.label_3188:
	test	r12d, 0x80000
	jne	.label_254
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x80
	jmp	.label_254
.label_3189:
	mov	rcx, r12
	test	ch, 0x20
	jne	.label_254
.label_612:
	and	eax, 0xffffff00
	or	eax, 8
	mov	dword ptr [r15 + 8], eax
	jmp	.label_254
.label_3190:
	mov	rcx, r12
	test	ch, 0x20
	jne	.label_254
.label_616:
	and	eax, 0xffffff00
	or	eax, 9
	mov	dword ptr [r15 + 8], eax
	jmp	.label_254
.label_3191:
	and	r12d, 0x402
	cmp	r12, 2
	jne	.label_254
.label_622:
	and	eax, 0xffffff00
	or	eax, 0x12
	mov	dword ptr [r15 + 8], eax
	jmp	.label_254
.label_3193:
	test	r12d, 0x80000
	jne	.label_254
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 6
	jmp	.label_254
.label_3194:
	test	r12d, 0x80000
	jne	.label_254
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 9
	jmp	.label_254
.label_3195:
	and	r12d, 0x402
	cmp	r12, 2
	jne	.label_254
.label_398:
	and	eax, 0xffffff00
	or	eax, 0x13
	mov	dword ptr [r15 + 8], eax
	jmp	.label_254
.label_3196:
	test	r12d, 0x80000
	jne	.label_254
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x200
	jmp	.label_254
.label_3197:
	test	r12d, 0x80000
	jne	.label_254
	and	eax, 0xffffff00
	or	eax, 0x23
	mov	dword ptr [r15 + 8], eax
	jmp	.label_254
.label_3198:
	test	r12d, 0x80000
	jne	.label_254
	and	eax, 0xffffff00
	or	eax, 0x21
	mov	dword ptr [r15 + 8], eax
	jmp	.label_254
.label_3199:
	test	r12d, 0x80000
	jne	.label_254
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x40
	jmp	.label_254
.label_3200:
	test	r12d, 0x80000
	jne	.label_254
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x100
	jmp	.label_254
.label_3201:
	test	r12d, 0x80000
	jne	.label_254
	and	eax, 0xffffff00
	or	eax, 0x22
	mov	dword ptr [r15 + 8], eax
	jmp	.label_254
.label_3202:
	test	r12d, 0x80000
	jne	.label_254
	and	eax, 0xffffff00
	or	eax, 0x20
	mov	dword ptr [r15 + 8], eax
	jmp	.label_254
.label_3203:
	and	r12d, 0x1200
	cmp	r12, 0x200
	jne	.label_254
.label_574:
	and	eax, 0xffffff00
	or	eax, 0x17
	mov	dword ptr [r15 + 8], eax
	jmp	.label_254
.label_3204:
	mov	rcx, r12
	test	ch, 4
	jne	.label_254
	test	cx, cx
	js	.label_254
.label_556:
	and	eax, 0xffffff00
	or	eax, 0xa
	mov	dword ptr [r15 + 8], eax
	jmp	.label_254
.label_3205:
	and	r12d, 0x1200
	cmp	r12, 0x200
	jne	.label_254
.label_637:
	and	eax, 0xffffff00
	or	eax, 0x18
	mov	dword ptr [r15 + 8], eax
	jmp	.label_254
.label_2349:
	cmp	edx, 2
	jl	.label_2335
	mov	rdx, qword ptr [rbp + 0x10]
	cmp	dword ptr [rdx + rcx*4 + 4], -1
	je	.label_2336
	lea	rsi, [rcx + 2]
	cmp	qword ptr [rbp + 0x30], rsi
	je	.label_2335
	cmp	dword ptr [rdx + rcx*4 + 8], -1
	je	.label_2336
.label_2335:
	mov	dl, byte ptr [rbp + 0x8c]
	test	dl, dl
	mov	rsi, rax
	je	.label_2344
	mov	rsi, qword ptr [rbp + 0x18]
	mov	rsi, qword ptr [rsi + rcx*8 + 8]
.label_2344:
	add	rsi, qword ptr [rbp + 0x28]
	test	dl, dl
	mov	rcx, qword ptr [rbp]
	mov	bl, byte ptr [rcx + rsi]
	je	.label_2340
	test	bl, bl
	js	.label_2336
	jmp	.label_2340
	.section	.text
	.align	32
	#Procedure 0x4138f8
	.globl sub_4138f8
	.type sub_4138f8, @function
sub_4138f8:

	nop	dword ptr [rax + rax]
.label_2370:
	mov	r15, r14
	mov	r13b, 1
	cmp	rbp, rbx
	mov	r14b, 1
	jae	.label_2354
	movzx	ebp, byte ptr [rbx - 1]
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	test	byte ptr [rax + rbp*2], 8
	sete	r14b
.label_2354:
	mov	rdi, r15
	call	strlen
	movzx	ebp, byte ptr [rbx + rax]
	test	rbp, rbp
	je	.label_2359
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	test	byte ptr [rax + rbp*2], 8
	sete	r13b
.label_2359:
	mov	bpl, 1
	test	r14b, r13b
	mov	r14, r15
	jne	.label_2360
	cmp	byte ptr [rbx], 0
	je	.label_2366
	inc	rbx
	mov	rbp, rbx
	lea	r15, [rsp + 0x48]
	jmp	.label_2367
	.section	.text
	.align	32
	#Procedure 0x413968
	.globl sub_413968
	.type sub_413968, @function
sub_413968:

	nop	dword ptr [rax + rax]
.label_2364:
	mov	rdi, r12
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x28]
	mov	rdi, rax
	shr	rdi, 0x20
	test	edi, edi
	sete	cl
	test	al, al
	setne	dl
	test	al, al
	mov	bpl, 1
	mov	al, 1
	je	.label_2355
	and	dl, cl
	mov	al, 1
	jne	.label_2355
	call	iswalnum
	test	eax, eax
	sete	al
.label_2355:
	test	r13b, r13b
	je	.label_2358
	test	al, al
	jne	.label_2360
.label_2358:
	mov	qword ptr [rsp + 0x18], rbx
	mov	byte ptr [rsp + 8], 0
	mov	qword ptr [rsp + 0xc], 0
	mov	byte ptr [rsp + 0x14], 0
	mov	rdi, r12
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x28]
	test	al, al
	je	.label_2365
	shr	rax, 0x20
	je	.label_2366
.label_2365:
	add	rbx, qword ptr [rsp + 0x20]
	mov	rbp, rbx
.label_2367:
	cmp	byte ptr [rbp], 0
	jne	.label_2357
.label_2366:
	xor	ebp, ebp
.label_2360:
	mov	rdi, r14
	call	free
	mov	eax, ebp
	add	rsp, 0x88
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x413a0f

	.globl mbsstr_trimmed_wordbounded
	.type mbsstr_trimmed_wordbounded, @function
mbsstr_trimmed_wordbounded:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x88
	mov	rax, rsi
	mov	rbp, rdi
	mov	esi, 2
	mov	rdi, rax
	call	trim2
	mov	r14, rax
	cmp	byte ptr [rbp], 0
	je	.label_2366
	lea	r12, [rsp + 8]
	lea	r15, [rsp + 0x48]
	nop	dword ptr [rax + rax]
.label_2357:
	mov	rdi, rbp
	mov	rsi, r14
	call	mbsstr
	mov	rbx, rax
	test	rbx, rbx
	je	.label_2366
	call	__ctype_get_mb_cur_max
	cmp	rax, 2
	jb	.label_2370
	mov	qword ptr [rsp + 0x18], rbp
	mov	byte ptr [rsp + 8], 0
	mov	qword ptr [rsp + 0xc], 0
	mov	byte ptr [rsp + 0x14], 0
	mov	r13b, 1
	cmp	rbp, rbx
	jae	.label_2356
	nop	word ptr cs:[rax + rax]
.label_2362:
	mov	rdi, r12
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x28]
	mov	rdi, rax
	shr	rdi, 0x20
	test	al, al
	je	.label_2371
	test	edi, edi
	je	.label_2361
.label_2371:
	mov	rcx, qword ptr [rsp + 0x18]
	add	rcx, qword ptr [rsp + 0x20]
	mov	qword ptr [rsp + 0x18], rcx
	mov	byte ptr [rsp + 0x14], 0
	cmp	rcx, rbx
	jb	.label_2362
	test	al, al
	je	.label_2356
	call	iswalnum
	test	eax, eax
	sete	r13b
.label_2356:
	mov	qword ptr [rsp + 0x18], rbx
	mov	byte ptr [rsp + 8], 0
	mov	qword ptr [rsp + 0xc], 0
	mov	byte ptr [rsp + 0x14], 0
	mov	qword ptr [rsp + 0x58], r14
	mov	byte ptr [rsp + 0x48], 0
	mov	qword ptr [rsp + 0x4c], 0
	jmp	.label_2369
	.section	.text
	.align	32
	#Procedure 0x413b14
	.globl sub_413b14
	.type sub_413b14, @function
sub_413b14:

	nop	word ptr cs:[rax + rax]
.label_2368:
	mov	rax, qword ptr [rsp + 0x20]
	add	qword ptr [rsp + 0x18], rax
	mov	byte ptr [rsp + 0x14], 0
	mov	rax, qword ptr [rsp + 0x60]
	add	qword ptr [rsp + 0x58], rax
.label_2369:
	mov	byte ptr [rsp + 0x54], 0
	mov	rdi, r15
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x68]
	test	al, al
	je	.label_2363
	shr	rax, 0x20
	je	.label_2364
.label_2363:
	mov	rdi, r12
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x28]
	test	al, al
	je	.label_2368
	shr	rax, 0x20
	jne	.label_2368
	jmp	.label_2361
	.section	.text
	.align	32
	#Procedure 0x413b74
	.globl sub_413b74
	.type sub_413b74, @function
sub_413b74:

	nop	word ptr cs:[rax + rax]
.label_2361:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x413b84
	.globl sub_413b84
	.type sub_413b84, @function
sub_413b84:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x413b90
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x413b9a
	.globl sub_413b9a
	.type sub_413b9a, @function
sub_413b9a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x413ba0

	.globl sub_413ba0
	.type sub_413ba0, @function
sub_413ba0:
	mov	rax, qword ptr [rsi]
	mov	ebx, ecx
	shr	bl, 6
	movzx	esi, bl
	mov	rax, qword ptr [rax + rsi*8]
	bt	rax, rcx
	jb	.label_2372
	xor	eax, eax
	jmp	.label_2373
	.section	.text
	.align	32
	#Procedure 0x413bbc

	.globl sub_413bbc
	.type sub_413bbc, @function
sub_413bbc:
	mov	rax, qword ptr [rdi + 0x98]
	cmp	byte ptr [rax + 0xd8], 0
	js	.label_2377
.label_2372:
	mov	eax, r14d
	mov	ebp, eax
	shr	ebp, 8
	mov	al, 1
	test	bp, 0x3ff
	je	.label_2373
	mov	eax, dword ptr [rdi + 0xa0]
	mov	rsi, rdx
	mov	edx, eax
	call	re_string_context_at
	mov	ecx, eax
	and	ecx, 1
	test	bpl, 4
	je	.label_2375
	test	ecx, ecx
	jne	.label_2375
	xor	eax, eax
	jmp	.label_2373
	.section	.text
	.align	32
	#Procedure 0x413c00

	.globl sub_413c00
	.type sub_413c00, @function
sub_413c00:
	test	cl, cl
	js	.label_2378
.label_3208:
	test	cl, cl
	je	sub_413bbc
	cmp	cl, 0xa
	jne	.label_2372
	mov	rax, qword ptr [rdi + 0x98]
	test	byte ptr [rax + 0xd8], 0x40
	jne	.label_2372
	xor	eax, eax
	jmp	.label_2373
	.section	.text
	.align	32
	#Procedure 0x413c21

	.globl sub_413c21
	.type sub_413c21, @function
sub_413c21:
	cmp	byte ptr [rsi], cl
	je	.label_2372
	xor	eax, eax
	jmp	.label_2373
.label_2376:
	mov	ecx, r14d
	test	ch, 0x20
	je	.label_2374
	mov	ecx, eax
	and	ecx, 2
	jne	.label_2374
.label_2377:
	xor	eax, eax
	jmp	.label_2373
.label_2374:
	and	eax, 8
	test	bpl, bpl
	setns	cl
	shr	eax, 3
	or	al, cl
.label_2373:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x413c52
	.globl sub_413c52
	.type sub_413c52, @function
sub_413c52:

	nop	
.label_2375:
	mov	edx, r14d
	test	dh, 8
	je	.label_2376
	test	ecx, ecx
	je	.label_2376
.label_2378:
	xor	eax, eax
	jmp	.label_2373
	.section	.text
	.align	32
	#Procedure 0x413c64

	.globl check_node_accept
	.type check_node_accept, @function
check_node_accept:
	push	rbp
	push	r14
	push	rbx
	mov	rax, qword ptr [rdi + 8]
	movzx	ecx, byte ptr [rax + rdx]
	mov	ebp, dword ptr [rsi + 8]
	xor	eax, eax
	mov	r14d, ebp
	mov	ebx, ebp
	dec	bl
	movzx	ebp, bl
	cmp	bpl, 6
	ja	.label_2373
	jmp	qword ptr [(rbp * 8) + label_2379]
	.section	.text
	.align	32
	#Procedure 0x413c90

	.globl transit_state_bkref
	.type transit_state_bkref, @function
transit_state_bkref:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xa8
	cmp	qword ptr [rsi + 8], 0
	jle	.label_2407
	mov	rcx, qword ptr [rdi + 0x98]
	mov	r15, qword ptr [rdi + 0x48]
	xor	edx, edx
	mov	qword ptr [rsp + 0x20], rdi
	mov	qword ptr [rsp + 8], r15
	mov	qword ptr [rsp + 0x78], rsi
	mov	qword ptr [rsp + 0x50], rcx
	nop	dword ptr [rax]
.label_2394:
	mov	rax, qword ptr [rsi + 0x10]
	mov	qword ptr [rsp + 0x80], rdx
	mov	r14, qword ptr [rax + rdx*8]
	mov	rax, qword ptr [rcx]
	mov	rcx, r14
	mov	qword ptr [rsp + 0x48], rcx
	shl	r14, 4
	mov	ebx, dword ptr [rax + r14 + 8]
	cmp	bl, 4
	jne	.label_2383
	mov	ebp, ebx
	shr	ebp, 8
	test	bp, 0x3ff
	je	.label_2411
	mov	edx, dword ptr [rdi + 0xa0]
	mov	rsi, r15
	call	re_string_context_at
	mov	rdi, qword ptr [rsp + 0x20]
	mov	ecx, eax
	and	ecx, 1
	test	bpl, 4
	je	.label_2391
	test	ecx, ecx
	je	.label_2383
.label_2391:
	test	bh, 8
	je	.label_2401
	test	ecx, ecx
	jne	.label_2383
.label_2401:
	test	bh, 0x20
	je	.label_2405
	mov	ecx, eax
	and	ecx, 2
	je	.label_2383
.label_2405:
	test	bpl, bpl
	jns	.label_2411
	and	eax, 8
	je	.label_2383
	nop	word ptr [rax + rax]
.label_2411:
	mov	rax, qword ptr [rdi + 0xc8]
	mov	r8, qword ptr [rdi + 8]
	mov	rcx, qword ptr [rdi + 0x98]
	mov	qword ptr [rsp + 0x60], rcx
	mov	qword ptr [rsp + 0x40], rax
	test	rax, rax
	mov	eax, 0
	jle	.label_2416
	mov	rcx, qword ptr [rdi + 0xd8]
	xor	eax, eax
	mov	rdx, qword ptr [rsp + 0x40]
	nop	word ptr cs:[rax + rax]
.label_2432:
	lea	rsi, [rdx + rax]
	mov	rbp, rsi
	shr	rbp, 0x3f
	add	rbp, rsi
	sar	rbp, 1
	lea	rsi, [rbp + rbp*4]
	cmp	qword ptr [rcx + rsi*8 + 8], r15
	cmovge	rdx, rbp
	lea	rsi, [rbp + 1]
	cmovl	rax, rsi
	cmp	rax, rdx
	jl	.label_2432
.label_2416:
	cmp	rax, qword ptr [rsp + 0x40]
	jge	.label_2444
	cmp	rax, -1
	je	.label_2444
	mov	rcx, qword ptr [rdi + 0xd8]
	lea	rax, [rax + rax*4]
	cmp	qword ptr [rcx + rax*8 + 8], r15
	jne	.label_2444
	lea	rax, [rcx + rax*8]
	nop	
.label_2451:
	mov	rcx, qword ptr [rsp + 0x48]
	cmp	qword ptr [rax], rcx
	je	.label_2384
	cmp	byte ptr [rax + 0x20], 0
	lea	rax, [rax + 0x28]
	jne	.label_2451
.label_2444:
	cmp	qword ptr [rdi + 0xe8], 0
	jle	.label_2384
	mov	rax, qword ptr [rsp + 0x60]
	mov	rax, qword ptr [rax]
	mov	r14, qword ptr [rax + r14]
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x30], rcx
	xor	edx, edx
	mov	qword ptr [rsp + 0x38], r14
	jmp	.label_2390
	.section	.text
	.align	32
	#Procedure 0x413e32
	.globl sub_413e32
	.type sub_413e32, @function
sub_413e32:

	nop	word ptr cs:[rax + rax]
.label_2448:
	mov	rax, qword ptr [rsp + 0x60]
	mov	rax, qword ptr [rax]
.label_2390:
	mov	rcx, qword ptr [rdi + 0xf8]
	mov	r9, qword ptr [rcx + rdx*8]
	mov	rcx, qword ptr [r9 + 8]
	shl	rcx, 4
	cmp	qword ptr [rax + rcx], r14
	mov	qword ptr [rsp + 0x88], rdx
	jne	.label_2410
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	rax, qword ptr [r9 + 0x20]
	test	rax, rax
	mov	qword ptr [rsp + 0x10], r9
	jle	.label_2417
	mov	rcx, qword ptr [rsp + 8]
	xor	r14d, r14d
	jmp	.label_2402
.label_2417:
	xor	r14d, r14d
	mov	rcx, qword ptr [rsp + 8]
	jmp	.label_2421
.label_2426:
	mov	rdx, qword ptr [rdi + 0x58]
	mov	r10d, 7
	cmp	r13, rdx
	jg	.label_2431
	mov	rsi, qword ptr [rdi + 0x40]
	mov	r12, qword ptr [rdi + 0xc0]
	cmp	rsi, r13
	setle	r9b
	cmp	rsi, rdx
	setl	sil
	cmp	rax, rdx
	jl	.label_2438
	and	r9b, sil
	je	.label_2445
.label_2438:
	lea	esi, [r13 + 1]
	mov	qword ptr [rsp + 0x70], r8
	mov	qword ptr [rsp + 0x58], rcx
	call	extend_buffers
	mov	rcx, qword ptr [rsp + 0x58]
	mov	r9, qword ptr [rsp + 0x10]
	mov	r8, qword ptr [rsp + 0x70]
	mov	rdi, qword ptr [rsp + 0x20]
	test	eax, eax
	je	.label_2445
	mov	r10d, 1
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_2431
.label_2386:
	mov	r10d, 1
	mov	qword ptr [rsp + 0x28], rbx
	mov	rcx, r13
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_2387
.label_2445:
	mov	rdx, r13
	sub	rdx, r12
	jle	.label_2397
	mov	rax, qword ptr [rdi + 0xb8]
	lea	rdi, [rax + r12*8 + 8]
	shl	rdx, 3
	xor	esi, esi
	mov	qword ptr [rsp + 0x58], rcx
	call	memset
	mov	rcx, qword ptr [rsp + 0x58]
	mov	rdi, qword ptr [rsp + 0x20]
	mov	qword ptr [rdi + 0xc0], r13
.label_2397:
	mov	r12, rbp
	mov	r8, qword ptr [rdi + 8]
	jmp	.label_2414
	.section	.text
	.align	32
	#Procedure 0x413f64
	.globl sub_413f64
	.type sub_413f64, @function
sub_413f64:

	nop	word ptr cs:[rax + rax]
.label_2402:
	mov	rax, qword ptr [r9 + 0x28]
	mov	rbp, qword ptr [rax + r14*8]
	mov	rbx, qword ptr [rbp + 8]
	mov	r13, rbx
	mov	rax, qword ptr [rsp + 0x28]
	sub	r13, rax
	add	r13, rcx
	mov	r15, rbx
	sub	r15, rax
	jle	.label_2418
	mov	rax, qword ptr [rdi + 0x30]
	cmp	r13, rax
	mov	qword ptr [rsp + 0x68], rbx
	jg	.label_2426
	mov	r12, rbp
.label_2414:
	lea	rdi, [r8 + rcx]
	mov	rax, qword ptr [rsp + 0x28]
	lea	rsi, [r8 + rax]
	mov	rdx, r15
	mov	rbx, r8
	mov	r15, rcx
	call	memcmp
	mov	rcx, r15
	mov	r8, rbx
	mov	r10d, 7
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x20]
	mov	r9, qword ptr [rsp + 0x10]
	mov	rbp, r12
	mov	rbx, qword ptr [rsp + 0x68]
	jne	.label_2431
.label_2418:
	mov	rsi, r9
	mov	rdx, rbp
	mov	rcx, qword ptr [rsp + 0x48]
	mov	r8, qword ptr [rsp + 8]
	call	get_subexp_sub
	mov	rdi, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rdi + 8]
	mov	r10d, 9
	cmp	eax, 1
	je	.label_2449
	test	eax, eax
	jne	.label_2386
	xor	r10d, r10d
.label_2449:
	mov	qword ptr [rsp + 0x28], rbx
	mov	rcx, r13
.label_2387:
	mov	r9, qword ptr [rsp + 0x10]
.label_2431:
	mov	eax, r10d
	and	al, 0xf
	je	.label_2396
	cmp	al, 9
	jne	.label_2400
.label_2396:
	inc	r14
	mov	rax, qword ptr [r9 + 0x20]
	cmp	r14, rax
	jl	.label_2402
	jmp	.label_2421
.label_2400:
	cmp	al, 7
	jne	.label_2423
	mov	rax, qword ptr [r9 + 0x20]
	nop	
.label_2421:
	cmp	r14, rax
	jge	.label_2413
	mov	r15, qword ptr [rsp + 8]
	mov	r14, qword ptr [rsp + 0x38]
	jmp	.label_2410
	.section	.text
	.align	32
	#Procedure 0x414064
	.globl sub_414064
	.type sub_414064, @function
sub_414064:

	nop	word ptr cs:[rax + rax]
.label_2413:
	xor	ebx, ebx
	test	r14, r14
	setg	bl
	add	rbx, qword ptr [rsp + 0x28]
	mov	r15, qword ptr [rsp + 8]
	cmp	rbx, r15
	jle	.label_2433
	mov	r14, qword ptr [rsp + 0x38]
	jmp	.label_2410
.label_2433:
	mov	r14, qword ptr [rsp + 0x38]
	jmp	.label_2425
.label_2420:
	cmp	r13, -1
	je	.label_2404
	mov	rbp, r8
	mov	rsi, qword ptr [r9 + 0x10]
	test	rsi, rsi
	jne	.label_2435
	lea	rsi, [rbx + 1]
	sub	rsi, qword ptr [r9]
	mov	edi, 0x18
	call	rpl_calloc
	mov	r9, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rsi, rax
	mov	qword ptr [r9 + 0x10], rsi
	test	rsi, rsi
	je	.label_2442
.label_2435:
	mov	rcx, qword ptr [r9]
	mov	rdx, qword ptr [r9 + 8]
	mov	dword ptr [rsp], 9
	mov	r8, r13
	mov	r9, rbx
	call	check_arrival
	cmp	eax, 1
	jne	.label_2441
	mov	rcx, r15
	mov	rdi, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rsp + 8]
	mov	r8, rbp
	mov	r9, qword ptr [rsp + 0x10]
	mov	r10d, 0xc
	jmp	.label_2381
.label_2441:
	test	eax, eax
	mov	r8, rbp
	jne	.label_2392
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r14, qword ptr [rcx + 0x20]
	cmp	r14, qword ptr [rcx + 0x18]
	je	.label_2447
.label_2436:
	mov	edi, 1
	mov	esi, 0x28
	call	rpl_calloc
	mov	r10d, 1
	test	rax, rax
	je	.label_2409
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsi + 0x20]
	mov	rdx, qword ptr [rsi + 0x28]
	mov	qword ptr [rdx + rcx*8], rax
	mov	qword ptr [rax], r13
	mov	qword ptr [rax + 8], rbx
	inc	rcx
	mov	qword ptr [rsi + 0x20], rcx
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rdi, rbp
	mov	rdx, rax
	mov	rcx, qword ptr [rsp + 0x48]
	mov	r8, qword ptr [rsp + 8]
	call	get_subexp_sub
	mov	rdi, rbp
	mov	r8, qword ptr [rdi + 8]
	cmp	eax, 1
	mov	r14, qword ptr [rsp + 0x38]
	jne	.label_2424
	mov	r10d, 0xc
	jmp	.label_2439
.label_2424:
	test	eax, eax
	jne	.label_2429
	xor	r10d, r10d
.label_2439:
	mov	rcx, r15
.label_2399:
	mov	r15, qword ptr [rsp + 8]
.label_2419:
	mov	r9, qword ptr [rsp + 0x10]
	jmp	.label_2381
.label_2442:
	mov	eax, 0xc
	mov	qword ptr [rsp + 0x30], rax
	mov	r10d, 1
	mov	rcx, r15
	mov	r15, qword ptr [rsp + 8]
	mov	r8, rbp
	jmp	.label_2381
.label_2389:
	mov	r10d, 0xa
	cmp	rcx, qword ptr [rdi + 0x58]
	jge	.label_2381
	mov	r14, r8
	mov	r12, rcx
	lea	r15, [rcx + 1]
	mov	esi, r15d
	mov	rbp, rdi
	call	extend_buffers
	test	eax, eax
	jne	.label_2385
	mov	r8, qword ptr [rbp + 8]
	mov	rdi, rbp
	mov	r14, qword ptr [rsp + 0x38]
	mov	r9, qword ptr [rsp + 0x10]
	mov	rcx, r12
	jmp	.label_2403
.label_2392:
	mov	r10d, 1
	mov	rcx, r15
	mov	qword ptr [rsp + 0x30], rax
	mov	rdi, qword ptr [rsp + 0x20]
	jmp	.label_2399
.label_2447:
	lea	rax, [r14 + r14]
	mov	rdi, qword ptr [rcx + 0x28]
	lea	rsi, [rax*8 + 8]
	mov	r12, rcx
	call	realloc
	test	rax, rax
	je	.label_2393
	lea	rcx, [r14 + r14 + 1]
	mov	qword ptr [r12 + 0x28], rax
	mov	qword ptr [r12 + 0x18], rcx
	jmp	.label_2436
.label_2409:
	mov	rcx, r15
	mov	eax, 0xc
	mov	qword ptr [rsp + 0x30], rax
	mov	rdi, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rsp + 8]
	mov	r8, rbp
	mov	r14, qword ptr [rsp + 0x38]
	jmp	.label_2419
.label_2429:
	mov	rcx, r15
	mov	qword ptr [rsp + 0x30], rax
	mov	r15, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x10]
	mov	r10d, 1
	jmp	.label_2381
.label_2385:
	mov	r10d, 1
	mov	qword ptr [rsp + 0x30], rax
	mov	rdi, rbp
	mov	r15, qword ptr [rsp + 8]
	mov	r8, r14
	mov	r14, qword ptr [rsp + 0x38]
	mov	r9, qword ptr [rsp + 0x10]
	mov	rcx, r12
	jmp	.label_2381
.label_2393:
	mov	eax, 0xc
	mov	qword ptr [rsp + 0x30], rax
	mov	r10d, 1
	mov	rcx, r15
	mov	rdi, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rsp + 8]
	mov	r8, rbp
	mov	r14, qword ptr [rsp + 0x38]
	mov	r9, r12
	jmp	.label_2381
	.section	.text
	.align	32
	#Procedure 0x41430a
	.globl sub_41430a
	.type sub_41430a, @function
sub_41430a:

	nop	word ptr [rax + rax]
.label_2425:
	cmp	rbx, qword ptr [r9]
	jle	.label_2388
	cmp	rcx, qword ptr [rdi + 0x30]
	jge	.label_2389
	lea	r15, [rcx + 1]
.label_2403:
	mov	al, byte ptr [r8 + rcx]
	mov	r10d, 0xa
	cmp	al, byte ptr [r8 + rbx - 1]
	je	.label_2395
	jmp	.label_2404
	.section	.text
	.align	32
	#Procedure 0x414336
	.globl sub_414336
	.type sub_414336, @function
sub_414336:

	nop	word ptr cs:[rax + rax]
.label_2388:
	mov	r15, rcx
.label_2395:
	mov	rax, qword ptr [rdi + 0xb8]
	mov	rcx, qword ptr [rax + rbx*8]
	mov	r10d, 0xc
	test	rcx, rcx
	je	.label_2404
	mov	rax, qword ptr [rcx + 0x10]
	test	rax, rax
	jle	.label_2404
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rsp + 0x60]
	mov	rdx, qword ptr [rdx]
	xor	esi, esi
.label_2422:
	mov	r13, qword ptr [rcx + rsi*8]
	mov	rbp, r13
	shl	rbp, 4
	cmp	byte ptr [rdx + rbp + 8], 9
	jne	.label_2428
	cmp	qword ptr [rdx + rbp], r14
	je	.label_2420
.label_2428:
	inc	rsi
	cmp	rsi, rax
	jl	.label_2422
.label_2404:
	mov	rcx, r15
	mov	r15, qword ptr [rsp + 8]
.label_2381:
	mov	eax, r10d
	and	al, 0xf
	je	.label_2430
	cmp	al, 0xc
	jne	.label_2434
.label_2430:
	cmp	rbx, r15
	lea	rbx, [rbx + 1]
	jl	.label_2425
	jmp	.label_2410
.label_2423:
	mov	r15, qword ptr [rsp + 8]
	mov	r14, qword ptr [rsp + 0x38]
	jmp	.label_2440
.label_2434:
	cmp	al, 0xa
	je	.label_2410
.label_2440:
	cmp	r10d, 6
	je	.label_2410
	test	r10d, r10d
	jne	.label_2443
	nop	word ptr cs:[rax + rax]
.label_2410:
	mov	rdx, qword ptr [rsp + 0x88]
	inc	rdx
	cmp	rdx, qword ptr [rdi + 0xe8]
	jl	.label_2448
.label_2384:
	mov	dword ptr [rsp + 0x1c], 0
	mov	rbx, qword ptr [rsp + 0x40]
.label_2446:
	cmp	rbx, qword ptr [rdi + 0xc8]
	jge	.label_2383
	lea	rax, [rbx + rbx*4]
	lea	rbp, [rax*8 + 0x18]
	nop	
.label_2380:
	mov	rax, qword ptr [rdi + 0xd8]
	mov	rcx, qword ptr [rsp + 0x48]
	cmp	qword ptr [rax + rbp - 0x18], rcx
	jne	.label_2382
	cmp	qword ptr [rax + rbp - 0x10], r15
	jne	.label_2382
	mov	rdx, qword ptr [rax + rbp - 8]
	mov	rsi, qword ptr [rax + rbp]
	mov	rcx, qword ptr [rsp + 0x50]
	mov	r14, qword ptr [rcx + 0x30]
	cmp	rsi, rdx
	mov	qword ptr [rsp + 0x40], rbx
	jne	.label_2408
	mov	rax, qword ptr [rcx + 0x28]
	mov	rcx, qword ptr [rsp + 0x48]
	lea	rcx, [rcx + rcx*2]
	mov	rax, qword ptr [rax + rcx*8 + 0x10]
	jmp	.label_2415
.label_2408:
	mov	rax, qword ptr [rsp + 0x48]
	lea	rax, [rax*8]
	add	rax, qword ptr [rcx + 0x18]
.label_2415:
	mov	rax, qword ptr [rax]
	lea	r15, [rax + rax*2]
	mov	r12, qword ptr [rsp + 8]
	mov	qword ptr [rsp + 0x10], rsi
	lea	r13, [rsi + r12]
	mov	qword ptr [rsp + 0x28], rdx
	sub	r13, rdx
	lea	rsi, [r13 - 1]
	mov	edx, dword ptr [rdi + 0xa0]
	call	re_string_context_at
	mov	ebx, eax
	mov	rax, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [rax + 0xb8]
	mov	rax, qword ptr [rcx + r13*8]
	mov	rcx, qword ptr [rcx + r12*8]
	test	rcx, rcx
	mov	edx, 0
	je	.label_2437
	mov	rdx, qword ptr [rcx + 0x10]
.label_2437:
	mov	qword ptr [rsp + 0x68], rdx
	lea	r12, [r14 + r15*8]
	test	rax, rax
	lea	rcx, [rsp + 0x90]
	je	.label_2427
	mov	rsi, qword ptr [rax + 0x50]
	mov	r14, rcx
	mov	rdi, r14
	mov	rdx, r12
	call	re_node_set_init_union
	mov	dword ptr [rsp + 0x1c], eax
	test	eax, eax
	mov	r15, qword ptr [rsp + 8]
	jne	.label_2450
	lea	rdi, [rsp + 0x1c]
	mov	rsi, qword ptr [rsp + 0x50]
	mov	rdx, r14
	mov	ecx, ebx
	call	re_acquire_state_context
	mov	rbx, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [rbx + 0xb8]
	mov	qword ptr [rcx + r13*8], rax
	mov	rdi, qword ptr [rsp + 0xa0]
	call	free
	mov	rdi, rbx
	mov	rcx, qword ptr [rdi + 0xb8]
	cmp	qword ptr [rcx + r13*8], 0
	jne	.label_2406
	mov	eax, dword ptr [rsp + 0x1c]
	test	eax, eax
	je	.label_2406
	jmp	.label_2398
.label_2427:
	lea	rdi, [rsp + 0x1c]
	mov	rsi, qword ptr [rsp + 0x50]
	mov	rdx, r12
	mov	ecx, ebx
	call	re_acquire_state_context
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [rdi + 0xb8]
	mov	qword ptr [rcx + r13*8], rax
	mov	rcx, qword ptr [rdi + 0xb8]
	cmp	qword ptr [rcx + r13*8], 0
	mov	r15, qword ptr [rsp + 8]
	jne	.label_2406
	mov	eax, dword ptr [rsp + 0x1c]
	test	eax, eax
	mov	rbx, qword ptr [rsp + 0x40]
	mov	rdx, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x10]
	je	.label_2412
	jmp	.label_2398
.label_2406:
	mov	rbx, qword ptr [rsp + 0x40]
	mov	rdx, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x10]
.label_2412:
	cmp	rsi, rdx
	jne	.label_2382
	mov	rax, qword ptr [rcx + r15*8]
	mov	rcx, qword ptr [rsp + 0x68]
	cmp	qword ptr [rax + 0x10], rcx
	jle	.label_2382
	mov	rsi, r12
	mov	rdx, r15
	call	check_subexp_matching_top
	mov	rdi, qword ptr [rsp + 0x20]
	mov	dword ptr [rsp + 0x1c], eax
	test	eax, eax
	jne	.label_2398
	mov	rsi, r12
	call	transit_state_bkref
	mov	rdi, qword ptr [rsp + 0x20]
	mov	dword ptr [rsp + 0x1c], eax
	test	eax, eax
	jne	.label_2398
	nop	
.label_2382:
	inc	rbx
	add	rbp, 0x28
	cmp	rbx, qword ptr [rdi + 0xc8]
	jl	.label_2380
	nop	word ptr cs:[rax + rax]
.label_2383:
	mov	rdx, qword ptr [rsp + 0x80]
	inc	rdx
	mov	rsi, qword ptr [rsp + 0x78]
	cmp	rdx, qword ptr [rsi + 8]
	mov	rcx, qword ptr [rsp + 0x50]
	jl	.label_2394
	jmp	.label_2407
.label_2443:
	mov	rax, qword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x1c], eax
	test	eax, eax
	mov	rbx, qword ptr [rsp + 0x40]
	je	.label_2446
	jmp	.label_2398
.label_2407:
	mov	dword ptr [rsp + 0x1c], 0
	xor	eax, eax
.label_2398:
	add	rsp, 0xa8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2450:
	mov	rdi, qword ptr [rsp + 0xa0]
	mov	rbx, rax
	call	free
	mov	rax, rbx
	jmp	.label_2398
	.section	.text
	.align	32
	#Procedure 0x41468a
	.globl sub_41468a
	.type sub_41468a, @function
sub_41468a:

	nop	word ptr [rax + rax]
.label_2454:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_2452
	test	rax, rax
	je	.label_2453
.label_2452:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4146a4

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_2454
	test	rbx, rbx
	jne	.label_2454
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_2453:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4146c0

	.globl free_state
	.type free_state, @function
free_state:
	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx + 0x30]
	call	free
	mov	rdi, qword ptr [rbx + 0x48]
	call	free
	mov	rax, qword ptr [rbx + 0x50]
	lea	rcx, [rbx + 8]
	cmp	rax, rcx
	je	.label_2455
	mov	rdi, qword ptr [rax + 0x10]
	call	free
	mov	rdi, qword ptr [rbx + 0x50]
	call	free
.label_2455:
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	mov	rdi, qword ptr [rbx + 0x60]
	call	free
	mov	rdi, qword ptr [rbx + 0x58]
	call	free
	mov	rdi, rbx
	pop	rbx
	jmp	free
	.section	.text
	.align	32
	#Procedure 0x414719
	.globl sub_414719
	.type sub_414719, @function
sub_414719:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x414720

	.globl build_charclass_op
	.type build_charclass_op, @function
build_charclass_op:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r15, r9
	mov	dword ptr [rsp + 4], r8d
	mov	rbp, rcx
	mov	r14, rdx
	mov	r13, rsi
	mov	r12, rdi
	mov	qword ptr [rsp + 0x10], 0
	mov	edi, 0x20
	mov	esi, 1
	call	rpl_calloc
	mov	rbx, rax
	test	rbx, rbx
	je	.label_2468
	mov	qword ptr [rsp + 8], r15
	mov	edi, 0x50
	mov	esi, 1
	call	rpl_calloc
	mov	r15, rax
	test	r15, r15
	je	.label_2472
	mov	al, byte ptr [r15 + 0x20]
	and	al, 0xfe
	mov	ecx, dword ptr [rsp + 4]
	or	al, cl
	mov	byte ptr [r15 + 0x20], al
	lea	rcx, [rsp + 0x10]
	xor	r9d, r9d
	mov	rdi, r13
	mov	rsi, rbx
	mov	rdx, r15
	mov	r8, r14
	call	build_charclass
	mov	r14d, eax
	test	r14d, r14d
	jne	.label_2461
	mov	al, byte ptr [rbp]
	test	al, al
	je	.label_2462
	inc	rbp
	nop	word ptr cs:[rax + rax]
.label_2465:
	movsx	rcx, al
	mov	eax, 1
	shl	rax, cl
	mov	rdx, rcx
	sar	rdx, 0x3f
	shr	rdx, 0x3a
	add	rdx, rcx
	sar	rdx, 6
	or	qword ptr [rbx + rdx*8], rax
	movzx	eax, byte ptr [rbp]
	inc	rbp
	test	al, al
	jne	.label_2465
.label_2462:
	mov	eax, dword ptr [rsp + 4]
	test	al, al
	je	.label_2473
	movdqu	xmm0, xmmword ptr [rbx]
	pcmpeqd	xmm1, xmm1
	pxor	xmm0, xmm1
	movdqu	xmmword ptr [rbx], xmm0
	movdqu	xmm0, xmmword ptr [rbx + 0x10]
	pxor	xmm0, xmm1
	movdqu	xmmword ptr [rbx + 0x10], xmm0
.label_2473:
	cmp	dword ptr [r12 + 0xb4], 2
	jl	.label_2458
	mov	rax, qword ptr [r12 + 0x78]
	mov	rcx, qword ptr [rax]
	and	qword ptr [rbx], rcx
	mov	rcx, qword ptr [rax + 8]
	and	qword ptr [rbx + 8], rcx
	mov	rcx, qword ptr [rax + 0x10]
	and	qword ptr [rbx + 0x10], rcx
	mov	rax, qword ptr [rax + 0x18]
	and	qword ptr [rbx + 0x18], rax
.label_2458:
	mov	ecx, dword ptr [r12 + 0x80]
	cmp	ecx, 0xf
	je	.label_2466
	mov	rax, qword ptr [r12 + 0x70]
.label_2459:
	lea	edx, [rcx + 1]
	mov	dword ptr [r12 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r14, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	qword ptr [rax + rcx + 0x30], rbx
	mov	dword ptr [rax + rcx + 0x38], 3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	cmp	dword ptr [r12 + 0xb4], 2
	jl	.label_2470
	or	byte ptr [r12 + 0xb0], 2
	mov	eax, dword ptr [r12 + 0x80]
	cmp	eax, 0xf
	je	.label_2463
	mov	rbp, qword ptr [r12 + 0x70]
.label_2471:
	lea	ecx, [rax + 1]
	mov	dword ptr [r12 + 0x80], ecx
	movsxd	rbx, eax
	shl	rbx, 6
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rbp + rbx + 8], xmm0
	mov	qword ptr [rbp + rbx + 0x18], 0
	mov	qword ptr [rbp + rbx + 0x30], r15
	mov	dword ptr [rbp + rbx + 0x38], 6
	movdqu	xmmword ptr [rbp + rbx + 0x20], xmm0
	mov	qword ptr [rbp + rbx + 0x40], -1
	mov	eax, dword ptr [r12 + 0x80]
	cmp	eax, 0xf
	je	.label_2469
	mov	rcx, qword ptr [r12 + 0x70]
.label_2467:
	lea	rdx, [rbp + rbx + 8]
	lea	esi, [rax + 1]
	mov	dword ptr [r12 + 0x80], esi
	movsxd	rsi, eax
	shl	rsi, 6
	lea	rax, [rcx + rsi + 8]
	mov	qword ptr [rcx + rsi + 8], 0
	mov	qword ptr [rcx + rsi + 0x10], r14
	mov	qword ptr [rcx + rsi + 0x18], rdx
	mov	dword ptr [rcx + rsi + 0x38], 0xa
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rcx + rsi + 0x20], xmm0
	mov	qword ptr [rcx + rsi + 0x40], -1
	mov	qword ptr [r14], rax
	mov	qword ptr [rdx], rax
	jmp	.label_2460
.label_2470:
	mov	rdi, qword ptr [r15]
	call	free
	mov	rdi, qword ptr [r15 + 8]
	call	free
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
	mov	rdi, qword ptr [r15 + 0x18]
	call	free
	mov	rdi, r15
	call	free
	mov	rax, r14
.label_2460:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2468:
	mov	dword ptr [r15], 0xc
	jmp	.label_2456
.label_2472:
	mov	rdi, rbx
	jmp	.label_2464
.label_2461:
	mov	rdi, rbx
	call	free
	mov	rdi, qword ptr [r15]
	call	free
	mov	rdi, qword ptr [r15 + 8]
	call	free
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
	mov	rdi, qword ptr [r15 + 0x18]
	call	free
	mov	rdi, r15
	call	free
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], r14d
	jmp	.label_2456
.label_2466:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_2457
	mov	rcx, qword ptr [r12 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r12 + 0x70], rax
	mov	dword ptr [r12 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_2459
.label_2463:
	mov	edi, 0x3c8
	call	malloc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_2457
	mov	rax, qword ptr [r12 + 0x70]
	mov	qword ptr [rbp], rax
	mov	qword ptr [r12 + 0x70], rbp
	mov	dword ptr [r12 + 0x80], 0
	xor	eax, eax
	jmp	.label_2471
.label_2457:
	mov	rdi, rbx
	call	free
	mov	rdi, qword ptr [r15]
	call	free
	mov	rdi, qword ptr [r15 + 8]
	call	free
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
	mov	rdi, qword ptr [r15 + 0x18]
	call	free
	mov	rdi, r15
.label_2464:
	call	free
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], 0xc
.label_2456:
	xor	eax, eax
	jmp	.label_2460
.label_2469:
	mov	edi, 0x3c8
	call	malloc
	mov	rcx, rax
	xor	eax, eax
	test	rcx, rcx
	je	.label_2460
	mov	rdx, qword ptr [r12 + 0x70]
	mov	qword ptr [rcx], rdx
	mov	qword ptr [r12 + 0x70], rcx
	mov	dword ptr [r12 + 0x80], 0
	jmp	.label_2467
	.section	.text
	.align	32
	#Procedure 0x414af2
	.globl sub_414af2
	.type sub_414af2, @function
sub_414af2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x414b00

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
	#Procedure 0x414b17
	.globl sub_414b17
	.type sub_414b17, @function
sub_414b17:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x414b20

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
	je	.label_2486
	cmp	eax, 1
	je	.label_2474
	cmp	eax, 2
	je	.label_2476
	mov	edi, 2
	mov	esi, 2
	call	dup2
	cmp	eax, 2
	setne	r12b
.label_2476:
	mov	r15b, r12b
	mov	edi, 1
	mov	esi, 1
	call	dup2
	cmp	eax, 1
	setne	r12b
	jmp	.label_2484
.label_2486:
	xor	r15d, r15d
	xor	r13d, r13d
	jmp	.label_2477
.label_2474:
	xor	r15d, r15d
.label_2484:
	xor	r13d, r13d
	xor	edi, edi
	xor	esi, esi
	call	dup2
	test	eax, eax
	je	.label_2480
	mov	edi, OFFSET FLAT:label_766
	xor	esi, esi
	xor	eax, eax
	call	open
	mov	r13b, 1
	test	eax, eax
	je	.label_2480
	mov	r13b, 1
	jmp	.label_2475
.label_2480:
	test	r12b, r12b
	je	.label_2483
	mov	edi, OFFSET FLAT:label_766
	xor	esi, esi
	xor	eax, eax
	call	open
	cmp	eax, 1
	jne	.label_2479
.label_2483:
	test	r15b, r15b
	je	.label_2477
	mov	edi, OFFSET FLAT:label_766
	xor	esi, esi
	xor	eax, eax
	call	open
	cmp	eax, 2
	jne	.label_2475
.label_2477:
	mov	rdi, rbp
	mov	rsi, r14
	mov	rdx, rbx
	call	rpl_freopen
	mov	r14, rax
	jmp	.label_2482
.label_2479:
	mov	r12b, 1
.label_2475:
	xor	r14d, r14d
	test	eax, eax
	js	.label_2482
	mov	edi, eax
	call	close
	call	__errno_location
	mov	dword ptr [rax], 9
	xor	r14d, r14d
.label_2482:
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	test	r15b, r15b
	je	.label_2478
	mov	edi, 2
	call	close
.label_2478:
	test	r12b, r12b
	je	.label_2481
	mov	edi, 1
	call	close
.label_2481:
	test	r13b, r13b
	je	.label_2487
	xor	edi, edi
	call	close
.label_2487:
	test	r14, r14
	jne	.label_2485
	mov	dword ptr [rbx], ebp
.label_2485:
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
	#Procedure 0x414c62
	.globl sub_414c62
	.type sub_414c62, @function
sub_414c62:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x414c70

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
	je	.label_2490
	test	r14, r14
	je	.label_2493
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 0x20], r14
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_2492:
	mov	rdi, rbp
	mov	rsi, r15
	mov	rdx, r12
	call	strncmp
	test	eax, eax
	jne	.label_2491
	mov	rdi, rbp
	call	strlen
	cmp	rax, r12
	je	.label_2494
	mov	rax, qword ptr [rsp + 8]
	cmp	rax, -1
	je	.label_2495
	mov	rdi, rax
	imul	rdi, r13
	add	rdi, qword ptr [rsp + 0x20]
	mov	rsi, r14
	mov	rdx, r13
	call	memcmp
	test	eax, eax
	je	.label_2491
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_2491
.label_2495:
	mov	qword ptr [rsp + 8], rbx
	nop	word ptr [rax + rax]
.label_2491:
	mov	rax, qword ptr [rsp + 0x18]
	mov	rbp, qword ptr [rax + rbx*8 + 8]
	inc	rbx
	add	r14, r13
	test	rbp, rbp
	jne	.label_2492
	jmp	.label_2488
.label_2493:
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	xor	ebx, ebx
	nop	dword ptr [rax + rax]
.label_2496:
	mov	rdi, rbp
	mov	rsi, r15
	mov	rdx, r12
	call	strncmp
	test	eax, eax
	jne	.label_2489
	mov	rdi, rbp
	call	strlen
	cmp	rax, r12
	je	.label_2494
	mov	rax, qword ptr [rsp + 8]
	cmp	rax, -1
	cmove	rax, rbx
	mov	qword ptr [rsp + 8], rax
	je	.label_2489
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	nop	word ptr [rax + rax]
.label_2489:
	mov	rax, qword ptr [rsp + 0x18]
	mov	rbp, qword ptr [rax + rbx*8 + 8]
	inc	rbx
	test	rbp, rbp
	jne	.label_2496
.label_2488:
	mov	rax, qword ptr [rsp + 0x10]
	test	al, 1
	mov	rbx, -2
	cmove	rbx, qword ptr [rsp + 8]
.label_2494:
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
	#Procedure 0x414dd6
	.globl sub_414dd6
	.type sub_414dd6, @function
sub_414dd6:

	nop	dword ptr [rax + rax]
.label_2490:
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_2488
	.section	.text
	.align	32
	#Procedure 0x414df0

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
	je	.label_2497
	cmp	r15, -2
	jb	.label_2497
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_2497
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_2497:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x414e46
	.globl sub_414e46
	.type sub_414e46, @function
sub_414e46:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x414e50

	.globl check_node_accept_bytes
	.type check_node_accept_bytes, @function
check_node_accept_bytes:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r9, qword ptr [rdi]
	shl	rsi, 4
	movzx	r10d, byte ptr [r9 + rsi + 8]
	cmp	r10d, 7
	je	.label_2519
	mov	r8d, dword ptr [rdx + 0x90]
	mov	ebx, 1
	cmp	r8d, 1
	je	.label_2498
	lea	rax, [rcx + 1]
	mov	r11, qword ptr [rdx + 0x30]
	cmp	rax, r11
	jge	.label_2498
	lea	rax, [rcx*4]
	add	rax, qword ptr [rdx + 0x10]
	mov	ebx, 1
	nop	
.label_2520:
	cmp	dword ptr [rax + rbx*4], -1
	jne	.label_2498
	lea	rbp, [rcx + rbx + 1]
	inc	rbx
	cmp	rbp, r11
	jl	.label_2520
.label_2498:
	cmp	r10d, 5
	jne	.label_2511
	xor	r14d, r14d
	cmp	ebx, 2
	jl	.label_2501
	mov	rax, qword ptr [rdi + 0xd8]
	test	al, 0x40
	jne	.label_2513
	mov	rsi, qword ptr [rdx + 8]
	cmp	byte ptr [rsi + rcx], 0xa
	je	.label_2501
.label_2513:
	test	al, al
	jns	.label_2517
	mov	rax, qword ptr [rdx + 8]
	cmp	byte ptr [rax + rcx], 0
	je	.label_2501
.label_2517:
	mov	r14d, ebx
	jmp	.label_2501
.label_2511:
	cmp	ebx, 1
	setg	al
	xor	r14d, r14d
	cmp	r10d, 6
	jne	.label_2501
	test	al, al
	je	.label_2501
	mov	r15, qword ptr [r9 + rsi]
	mov	rsi, qword ptr [r15 + 0x40]
	test	rsi, rsi
	jne	.label_2504
	cmp	qword ptr [r15 + 0x48], 0
	jne	.label_2504
	xor	r12d, r12d
	cmp	qword ptr [r15 + 0x28], 0
	je	.label_2508
.label_2504:
	cmp	r8d, 1
	jne	.label_2510
	mov	rax, qword ptr [rdx + 8]
	movzx	r12d, byte ptr [rax + rcx]
	jmp	.label_2508
.label_2510:
	mov	rax, qword ptr [rdx + 0x10]
	mov	r12d, dword ptr [rax + rcx*4]
.label_2508:
	mov	rax, qword ptr [r15 + 0x28]
	test	rax, rax
	jle	.label_2515
	mov	rcx, qword ptr [r15]
	xor	edx, edx
	nop	dword ptr [rax + rax]
.label_2521:
	cmp	r12d, dword ptr [rcx + rdx*4]
	je	.label_2502
	inc	rdx
	cmp	rdx, rax
	jl	.label_2521
.label_2515:
	cmp	qword ptr [r15 + 0x48], 0
	jle	.label_2506
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_2505:
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [rax + rbp*8]
	mov	edi, r12d
	call	iswctype
	test	eax, eax
	jne	.label_2502
	inc	rbp
	cmp	rbp, qword ptr [r15 + 0x48]
	jl	.label_2505
	mov	rsi, qword ptr [r15 + 0x40]
.label_2506:
	xor	ecx, ecx
	test	rsi, rsi
	jle	.label_2507
	mov	rax, qword ptr [r15 + 8]
	xor	edx, edx
	nop	
.label_2500:
	cmp	dword ptr [rax + rdx*4], r12d
	jg	.label_2509
	mov	rcx, qword ptr [r15 + 0x10]
	cmp	r12d, dword ptr [rcx + rdx*4]
	jle	.label_2502
.label_2509:
	inc	rdx
	xor	ecx, ecx
	cmp	rdx, rsi
	jl	.label_2500
	jmp	.label_2507
.label_2502:
	mov	ecx, ebx
.label_2507:
	test	byte ptr [r15 + 0x20], 1
	jne	.label_2516
	mov	r14d, ecx
	jmp	.label_2501
.label_2516:
	test	ecx, ecx
	jg	.label_2501
	test	ebx, ebx
	mov	r14d, 1
	cmovg	r14d, ebx
.label_2501:
	mov	eax, r14d
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2519:
	mov	rax, qword ptr [rdx + 8]
	mov	bl, byte ptr [rax + rcx]
	xor	r14d, r14d
	cmp	bl, 0xc2
	jb	.label_2501
	lea	rsi, [rcx + 2]
	mov	rdx, qword ptr [rdx + 0x58]
	cmp	rsi, rdx
	jg	.label_2501
	mov	dil, byte ptr [rax + rcx + 1]
	cmp	bl, 0xdf
	ja	.label_2503
	cmp	dil, 0xc0
	sbb	eax, eax
	and	eax, 2
	xor	r14d, r14d
	test	dil, dil
	cmovs	r14d, eax
	jmp	.label_2501
.label_2503:
	cmp	bl, 0xef
	ja	.label_2522
	mov	esi, 3
	cmp	bl, 0xe0
	jne	.label_2499
	cmp	dil, 0xa0
	jb	.label_2501
	jmp	.label_2499
.label_2522:
	cmp	bl, 0xf7
	ja	.label_2514
	mov	esi, 4
	cmp	bl, 0xf0
	jne	.label_2499
	cmp	dil, 0x90
	jb	.label_2501
	jmp	.label_2499
.label_2514:
	cmp	bl, 0xfb
	ja	.label_2518
	mov	esi, 5
	cmp	bl, 0xf8
	jne	.label_2499
	cmp	dil, 0x88
	jb	.label_2501
	jmp	.label_2499
.label_2518:
	cmp	bl, 0xfd
	ja	.label_2501
	mov	esi, 6
	cmp	bl, 0xfc
	jne	.label_2499
	cmp	dil, 0x84
	jb	.label_2501
.label_2499:
	mov	edi, esi
	lea	rbp, [rdi + rcx]
	cmp	rbp, rdx
	jg	.label_2501
	add	rax, rcx
	mov	ecx, 1
.label_2512:
	movzx	edx, byte ptr [rax + rcx]
	test	dl, dl
	jns	.label_2501
	cmp	dl, 0xbf
	ja	.label_2501
	inc	rcx
	cmp	rcx, rdi
	jl	.label_2512
	mov	r14d, esi
	jmp	.label_2501
	.section	.text
	.align	32
	#Procedure 0x4150d3
	.globl sub_4150d3
	.type sub_4150d3, @function
sub_4150d3:

	nop	word ptr cs:[rax + rax]
.label_2523:
	xor	eax, eax
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4150e4
	.globl sub_4150e4
	.type sub_4150e4, @function
sub_4150e4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4150ef

	.globl rpl_re_compile_pattern
	.type rpl_re_compile_pattern, @function
rpl_re_compile_pattern:
	push	rax
	mov	r8, rsi
	mov	rsi, rdi
	mov	rcx, qword ptr [rip + rpl_re_syntax_options]
	mov	al, byte ptr [rdx + 0x38]
	mov	rdi, rcx
	shr	rdi, 0x15
	and	dil, 0x10
	and	al, 0x6f
	or	al, dil
	or	al, 0x80
	mov	byte ptr [rdx + 0x38], al
	mov	rdi, rdx
	mov	rdx, r8
	call	re_compile_internal
	test	eax, eax
	je	.label_2523
	cdqe	
	mov	esi, OFFSET FLAT:__re_error_msgid
	add	rsi, qword ptr [(rax * 8) + __re_error_msgid_idx]
	xor	edi, edi
	mov	edx, 5
	pop	rax
	jmp	dcgettext
.label_2524:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x415145
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_87]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_88]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_89]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_2524
	test	rsi, rsi
	je	.label_2524
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
	.align	32
	#Procedure 0x4151b0
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
	je	.label_2526
	test	r15, r15
	je	.label_2525
.label_2526:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_2525:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4151f2
	.globl sub_4151f2
	.type sub_4151f2, @function
sub_4151f2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x415200
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
	#Procedure 0x415213
	.globl sub_415213
	.type sub_415213, @function
sub_415213:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x415220

	.globl search_cur_bkref_entry
	.type search_cur_bkref_entry, @function
search_cur_bkref_entry:
	mov	r8, qword ptr [rdi + 0xc8]
	xor	eax, eax
	test	r8, r8
	jle	.label_2527
	mov	r9, qword ptr [rdi + 0xd8]
	xor	eax, eax
	mov	r11, r8
	nop	word ptr [rax + rax]
.label_2528:
	lea	r10, [rax + r11]
	mov	rdx, r10
	shr	rdx, 0x3f
	add	rdx, r10
	sar	rdx, 1
	lea	rcx, [rdx + rdx*4]
	cmp	qword ptr [r9 + rcx*8 + 8], rsi
	cmovge	r11, rdx
	lea	rcx, [rdx + 1]
	cmovl	rax, rcx
	cmp	rax, r11
	jl	.label_2528
.label_2527:
	cmp	rax, r8
	jge	.label_2530
	mov	rcx, qword ptr [rdi + 0xd8]
	lea	rdx, [rax + rax*4]
	cmp	qword ptr [rcx + rdx*8 + 8], rsi
	je	.label_2529
.label_2530:
	mov	rax, -1
.label_2529:
	ret	
	.section	.text
	.align	32
	#Procedure 0x41528a
	.globl sub_41528a
	.type sub_41528a, @function
sub_41528a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x415290

	.globl mmalloca
	.type mmalloca, @function
mmalloca:
	xor	eax, eax
	cmp	rdi, -0x21
	ja	.label_2531
	push	rax
	add	rdi, 0x20
	call	malloc
	mov	rcx, rax
	xor	eax, eax
	test	rcx, rcx
	lea	rsp, [rsp + 8]
	je	.label_2531
	mov	rdx, rcx
	add	rdx, 0x10
	and	rdx, 0xffffffffffffffe0
	lea	rax, [rdx + 0x10]
	mov	esi, eax
	sub	esi, ecx
	mov	byte ptr [rdx + 0xf], sil
.label_2531:
	ret	
	.section	.text
	.align	32
	#Procedure 0x4152c9
	.globl sub_4152c9
	.type sub_4152c9, @function
sub_4152c9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4152d0

	.globl compile_regex
	.type compile_regex, @function
compile_regex:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r15, qword ptr [rdi]
	lea	rax, [rdi + 0x48]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rdi + 8], xmm0
	mov	qword ptr [rdi + 0x28], rax
	mov	al, byte ptr [rip + ignore_case]
	mov	ecx, OFFSET FLAT:folded_chars
	xor	edx, edx
	test	al, al
	cmovne	rdx, rcx
	mov	qword ptr [rdi + 0x30], rdx
	lea	rbx, [rdi + 8]
	mov	rdi, r15
	call	strlen
	mov	rdi, r15
	mov	rsi, rax
	mov	rdx, rbx
	call	rpl_re_compile_pattern
	mov	r14, rax
	test	r14, r14
	jne	.label_2533
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	rpl_re_compile_fastmap
.label_2533:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_2532
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	mov	rdi, r15
	call	quote
	mov	rbx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r12
	mov	rcx, r14
	mov	r8, rbx
	call	error
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x415370

	.globl proper_name_utf8
	.type proper_name_utf8, @function
proper_name_utf8:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r13, rsi
	mov	r12, rdi
	xor	edi, edi
	mov	edx, 5
	mov	rsi, r12
	call	dcgettext
	mov	rbx, rax
	call	locale_charset
	mov	r14, rax
	mov	esi, OFFSET FLAT:label_2537
	mov	rdi, r14
	call	c_strcasecmp
	test	eax, eax
	je	.label_2534
	mov	qword ptr [rsp + 0x10], rbx
	mov	esi, OFFSET FLAT:label_2537
	mov	rdi, r13
	mov	rdx, r14
	call	xstr_iconv
	mov	r15, rax
	mov	rdi, r14
	call	strlen
	mov	rbx, rax
	lea	rdi, [rbx + 0xb]
	call	xmalloc
	mov	rbp, rax
	mov	rdi, rbp
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	movabs	rax, 0x4c534e4152542f2f
	mov	qword ptr [rbp + rbx], rax
	mov	byte ptr [rbp + rbx + 0xa], 0
	mov	word ptr [rbp + rbx + 8], 0x5449
	mov	esi, OFFSET FLAT:label_2537
	mov	rdi, r13
	mov	rdx, rbp
	call	xstr_iconv
	mov	r13, rax
	mov	rdi, rbp
	call	free
	test	r13, r13
	je	.label_2540
	mov	esi, 0x3f
	mov	rdi, r13
	call	strchr
	test	rax, rax
	je	.label_2544
	mov	rdi, r13
	call	free
	xor	r13d, r13d
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	jmp	.label_2538
.label_2534:
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	mov	r15, r13
	xor	ebp, ebp
	jmp	.label_2547
.label_2540:
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	xor	r13d, r13d
	jmp	.label_2538
.label_2544:
	mov	qword ptr [rsp + 8], r13
.label_2538:
	mov	rbp, r15
	mov	rbx, qword ptr [rsp + 0x10]
.label_2547:
	test	r13, r13
	mov	r14, r12
	cmovne	r14, r13
	test	r15, r15
	cmovne	r14, r15
	mov	rdi, rbx
	mov	rsi, r12
	call	strcmp
	test	eax, eax
	je	.label_2535
	mov	rdi, rbx
	mov	rsi, r12
	call	mbsstr_trimmed_wordbounded
	test	al, al
	jne	.label_2541
	test	r15, r15
	je	.label_2542
	mov	rdi, rbx
	mov	rsi, r15
	call	mbsstr_trimmed_wordbounded
	test	al, al
	jne	.label_2541
.label_2542:
	test	r13, r13
	je	.label_2545
	mov	rdi, rbx
	mov	rsi, r13
	call	mbsstr_trimmed_wordbounded
	test	al, al
	jne	.label_2541
.label_2545:
	mov	rdi, rbx
	call	strlen
	mov	r15, rbx
	mov	rbx, rax
	mov	rdi, r14
	call	strlen
	lea	rdi, [rbx + rax + 4]
	call	xmalloc
	mov	rbx, rax
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_1034
	xor	eax, eax
	mov	rdi, rbx
	mov	r8, r15
	mov	r9, r14
	call	__sprintf_chk
.label_2541:
	test	rbp, rbp
	je	.label_2536
	mov	rdi, rbp
	call	free
.label_2536:
	mov	rdi, qword ptr [rsp + 8]
	test	rdi, rdi
	je	.label_2539
	call	free
	jmp	.label_2539
.label_2535:
	test	rbp, rbp
	je	.label_2543
	cmp	rbp, r14
	je	.label_2543
	mov	rdi, rbp
	call	free
.label_2543:
	mov	rdi, qword ptr [rsp + 8]
	test	rdi, rdi
	je	.label_2546
	cmp	rdi, r14
	je	.label_2546
	call	free
.label_2546:
	mov	rbx, r14
.label_2539:
	mov	rax, rbx
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
	#Procedure 0x415570
	.globl rpl_regfree
	.type rpl_regfree, @function
rpl_regfree:

	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	test	rdi, rdi
	je	.label_2548
	call	free_dfa_content
.label_2548:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx], xmm0
	mov	rdi, qword ptr [rbx + 0x20]
	call	free
	mov	qword ptr [rbx + 0x20], 0
	mov	rdi, qword ptr [rbx + 0x28]
	call	free
	mov	qword ptr [rbx + 0x28], 0
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4155ab
	.globl sub_4155ab
	.type sub_4155ab, @function
sub_4155ab:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4155b0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_2550
	cmp	byte ptr [rax], 0x43
	jne	.label_2552
	cmp	byte ptr [rax + 1], 0
	je	.label_2549
.label_2552:
	mov	esi, OFFSET FLAT:label_2551
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_2550
.label_2549:
	xor	ebx, ebx
.label_2550:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4155e1
	.globl sub_4155e1
	.type sub_4155e1, @function
sub_4155e1:

	nop	word ptr cs:[rax + rax]
.label_2553:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4155f5
	.globl sub_4155f5
	.type sub_4155f5, @function
sub_4155f5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x415600

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
	je	.label_2553
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
	.align	32
	#Procedure 0x415690

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
	#Procedure 0x4156a9
	.globl sub_4156a9
	.type sub_4156a9, @function
sub_4156a9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4156b0

	.globl parse_expression
	.type parse_expression, @function
parse_expression:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xe8
	mov	r12, r9
	mov	r13, r8
	mov	rbx, rcx
	mov	r10, rdx
	mov	r14, rsi
	mov	r8, rdi
	mov	eax, dword ptr [r10 + 8]
	xor	r15d, r15d
	mov	ecx, eax
	dec	cl
	movzx	ecx, cl
	cmp	cl, 0x23
	ja	.label_434
	mov	rdi, qword ptr [r14]
	mov	qword ptr [rsp + 0x20], rbx
	mov	qword ptr [rsp + 0x10], r8
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x18], rdi
	jmp	qword ptr [(rcx * 8) + label_2554]
.label_3152:
	mov	rsi, qword ptr [r8 + 0x78]
	xor	r8d, r8d
	cmp	al, 0x21
	sete	r8b
	mov	edx, OFFSET FLAT:label_404
	mov	ecx, OFFSET FLAT:label_405
	jmp	.label_406
.label_3153:
	mov	rsi, qword ptr [r8 + 0x78]
	xor	r8d, r8d
	cmp	al, 0x23
	sete	r8b
	mov	edx, OFFSET FLAT:label_693
	mov	ecx, OFFSET FLAT:label_694
.label_406:
	mov	r9, r12
	call	build_charclass_op
	mov	rbp, rax
	xor	r15d, r15d
	test	rbp, rbp
	jne	.label_701
	mov	eax, dword ptr [r12]
	test	eax, eax
.label_633:
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	je	.label_325
	jmp	.label_434
.label_701:
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_325
.label_3143:
	mov	ecx, dword ptr [rdi + 0x80]
	cmp	ecx, 0xf
	je	.label_712
	mov	rax, qword ptr [rdi + 0x70]
.label_287:
	lea	edx, [rcx + 1]
	mov	dword ptr [rdi + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r14, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [r10]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	cmp	dword ptr [rdi + 0xb4], 2
	jl	.label_714
	mov	rax, qword ptr [r8 + 0x48]
	cmp	qword ptr [r8 + 0x68], rax
	jg	.label_320
	mov	rbp, r14
	jmp	.label_325
.label_368:
	mov	rcx, qword ptr [r8 + 0x10]
	cmp	dword ptr [rcx + rax*4], -1
	jne	.label_737
	mov	rdi, r10
	mov	rsi, r8
	mov	rdx, rbx
	call	peek_token
	mov	rsi, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rsp + 0x10]
	cdqe	
	add	qword ptr [r8 + 0x48], rax
	mov	ecx, dword ptr [rsi + 0x80]
	cmp	ecx, 0xf
	je	.label_257
	mov	rax, qword ptr [rsi + 0x70]
	pxor	xmm1, xmm1
.label_344:
	lea	edx, [rcx + 1]
	mov	dword ptr [rsi + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbx, [rax + rcx + 8]
	movdqu	xmmword ptr [rax + rcx + 8], xmm1
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	r10, qword ptr [rsp + 8]
	movdqu	xmm0, xmmword ptr [r10]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm0
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
.label_328:
	mov	ecx, dword ptr [rsi + 0x80]
	cmp	ecx, 0xf
	je	.label_297
	mov	rax, qword ptr [rsi + 0x70]
.label_360:
	lea	edx, [rcx + 1]
	mov	dword ptr [rsi + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], r14
	mov	qword ptr [rax + rcx + 0x18], rbx
	mov	dword ptr [rax + rcx + 0x38], 0x10
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [r14], rbp
	test	rbx, rbx
	je	.label_255
	mov	qword ptr [rbx], rbp
	mov	rax, qword ptr [r8 + 0x48]
	cmp	qword ptr [r8 + 0x68], rax
	mov	r14, rbp
	mov	rbx, qword ptr [rsp + 0x20]
	jg	.label_320
	jmp	.label_325
.label_257:
	mov	edi, 0x3c8
	call	malloc
	mov	rsi, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rsp + 0x10]
	test	rax, rax
	mov	ebx, 0
	mov	r10, qword ptr [rsp + 8]
	pxor	xmm1, xmm1
	je	.label_328
	mov	rcx, qword ptr [rsi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rsi + 0x70], rax
	mov	dword ptr [rsi + 0x80], 0
	xor	ecx, ecx
	jmp	.label_344
.label_297:
	mov	edi, 0x3c8
	call	malloc
	pxor	xmm1, xmm1
	mov	rsi, qword ptr [rsp + 0x18]
	mov	r10, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x10]
	test	rax, rax
	je	.label_255
	mov	rcx, qword ptr [rsi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rsi + 0x70], rax
	mov	dword ptr [rsi + 0x80], 0
	xor	ecx, ecx
	jmp	.label_360
.label_320:
	cmp	rax, qword ptr [r8 + 0x30]
	jne	.label_368
	mov	rbp, r14
	jmp	.label_325
.label_3144:
	mov	cl, byte ptr [r10]
	mov	eax, 1
	shl	eax, cl
	cdqe	
	test	qword ptr [rdi + 0xa8], rax
	je	.label_373
	or	qword ptr [rdi + 0xa0], rax
	mov	ecx, dword ptr [rdi + 0x80]
	cmp	ecx, 0xf
	je	.label_376
	mov	rax, qword ptr [rdi + 0x70]
.label_331:
	lea	edx, [rcx + 1]
	mov	dword ptr [rdi + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [r10]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	inc	qword ptr [rdi + 0x98]
	or	byte ptr [rdi + 0xb0], 2
	jmp	.label_325
.label_3145:
	mov	ecx, dword ptr [rdi + 0x80]
	cmp	ecx, 0xf
	je	.label_442
	mov	rax, qword ptr [rdi + 0x70]
.label_311:
	lea	edx, [rcx + 1]
	mov	dword ptr [rdi + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [r10]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	cmp	dword ptr [rdi + 0xb4], 1
	jle	.label_325
	or	byte ptr [rdi + 0xb0], 2
	jmp	.label_325
.label_3146:
	mov	r15, qword ptr [r14 + 0x30]
	lea	rax, [r15 + 1]
	mov	qword ptr [r14 + 0x30], rax
	mov	rdx, rbx
	or	rdx, 0x800000
	mov	rdi, r10
	mov	rsi, r8
	call	peek_token
	mov	r10, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x10]
	cdqe	
	add	qword ptr [r8 + 0x48], rax
	xor	edi, edi
	cmp	byte ptr [r10 + 8], 9
	je	.label_274
	mov	rbp, r15
	inc	r13
	mov	rdi, r8
	mov	rsi, r14
	mov	rdx, r10
	mov	rcx, rbx
	mov	r8, r13
	mov	r9, r12
	call	parse_reg_exp
	mov	r10, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x10]
	mov	rdi, rax
	xor	r15d, r15d
	cmp	dword ptr [r12], 0
	jne	.label_434
	cmp	byte ptr [r10 + 8], 9
	jne	.label_464
	mov	r15, rbp
.label_274:
	cmp	r15, 8
	mov	rsi, qword ptr [rsp + 0x18]
	ja	.label_468
	mov	eax, 1
	mov	ecx, r15d
	shl	eax, cl
	cdqe	
	or	qword ptr [rsi + 0xa8], rax
.label_468:
	mov	ecx, dword ptr [rsi + 0x80]
	cmp	ecx, 0xf
	je	.label_476
	mov	rax, qword ptr [rsi + 0x70]
.label_399:
	lea	edx, [rcx + 1]
	mov	dword ptr [rsi + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rdi
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	dword ptr [rax + rcx + 0x38], 0x11
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	test	rdi, rdi
	je	.label_507
	mov	qword ptr [rdi], rbp
.label_507:
	mov	qword ptr [rax + rcx + 0x30], r15
	jmp	.label_325
.label_3149:
	mov	eax, dword ptr [r10]
	test	ax, 0x30f
	je	.label_506
	mov	al, byte ptr [rdi + 0xb0]
	test	al, 0x10
	jne	.label_483
	mov	ecx, eax
	or	cl, 0x10
	mov	byte ptr [rdi + 0xb0], cl
	xor	r14d, r14d
	test	al, 8
	mov	ebp, 0
	jne	.label_514
	movdqa	xmm0, xmmword ptr [rip + label_521]
	movdqu	xmmword ptr [rdi + 0xb8], xmm0
	mov	ebp, 2
	mov	r14d, 0x80
	test	al, 4
	je	.label_514
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rdi + 0xc8], xmm0
.label_483:
	mov	eax, dword ptr [r10]
.label_506:
	cmp	eax, 0x200
	je	.label_740
	cmp	eax, 0x100
	jne	.label_270
	mov	dword ptr [r10], 6
	mov	r15, rdi
	sub	r15, -0x80
	mov	r14d, dword ptr [rdi + 0x80]
	cmp	r14d, 0xf
	je	.label_533
	mov	rax, qword ptr [rdi + 0x70]
.label_495:
	lea	ecx, [r14 + 1]
	mov	dword ptr [r15], ecx
	movsxd	rcx, r14d
	shl	rcx, 6
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [r10]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	lea	r14, [rax + rcx + 8]
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	ecx, 9
	jmp	.label_539
.label_3151:
	test	ebx, 0x1000000
	jne	.label_553
.label_3148:
	test	bl, 0x20
	jne	.label_553
	test	bl, 0x10
	jne	.label_567
.label_3147:
	test	ebx, 0x20000
	jne	.label_570
	movzx	ecx, al
	cmp	ecx, 9
	jne	.label_570
	mov	dword ptr [r12], 0x10
	jmp	.label_304
.label_570:
	and	eax, 0xffffff00
	or	eax, 1
	mov	dword ptr [r10 + 8], eax
	mov	ecx, dword ptr [rdi + 0x80]
	cmp	ecx, 0xf
	je	.label_560
	mov	rax, qword ptr [rdi + 0x70]
.label_259:
	lea	edx, [rcx + 1]
	mov	dword ptr [rdi + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [r10]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
.label_457:
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	jmp	.label_325
.label_3150:
	mov	qword ptr [rsp + 0xa8], 0
	mov	edi, 0x20
	mov	esi, 1
	call	rpl_calloc
	mov	r14, rax
	mov	edi, 0x50
	mov	esi, 1
	call	rpl_calloc
	mov	r15, rax
	test	r14, r14
	je	.label_611
	test	r15, r15
	je	.label_611
	mov	rbp, qword ptr [rsp + 8]
	mov	rdi, rbp
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rdx, rbx
	call	peek_token_bracket
	mov	rdx, rbp
	mov	ecx, dword ptr [rdx + 8]
	cmp	cl, 0x19
	je	.label_621
	cmp	cl, 2
	je	.label_623
	mov	dword ptr [rsp + 0x28], 0
	jmp	.label_626
.label_3154:
	mov	dword ptr [r12], 5
	jmp	.label_304
.label_567:
	mov	rdi, r10
	mov	rsi, r8
	mov	rdx, rbx
	mov	rbp, r8
	mov	r15, r10
	call	peek_token
	cdqe	
	add	qword ptr [rbp + 0x48], rax
	mov	rdi, rbp
	mov	rsi, r14
	mov	rdx, r15
	mov	rcx, rbx
	mov	r8, r13
	mov	r9, r12
	add	rsp, 0xe8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	parse_expression
.label_714:
	mov	rbp, r14
	jmp	.label_325
.label_621:
	or	byte ptr [r15 + 0x20], 1
	test	bh, 1
	je	.label_645
	or	byte ptr [r14 + 1], 4
.label_645:
	cdqe	
	mov	rsi, qword ptr [rsp + 0x10]
	add	qword ptr [rsi + 0x48], rax
	mov	rdi, rdx
	mov	rdx, rbx
	call	peek_token_bracket
	mov	rdx, qword ptr [rsp + 8]
	mov	ecx, dword ptr [rdx + 8]
	cmp	cl, 2
	je	.label_623
	mov	sil, 1
	mov	dword ptr [rsp + 0x28], esi
.label_626:
	cmp	cl, 0x15
	jne	.label_658
	and	ecx, 0xffffff00
	or	ecx, 1
	mov	dword ptr [rdx + 8], ecx
.label_658:
	lea	rcx, [rsp + 0xc0]
	mov	qword ptr [rsp + 0x58], rcx
	mov	dword ptr [rsp + 0x50], 3
	lea	rdi, [rsp + 0x50]
	mov	r9d, 1
	mov	rsi, qword ptr [rsp + 0x10]
	mov	ecx, eax
	mov	r8, rbx
	call	parse_bracket_element
	test	eax, eax
	jne	.label_670
	mov	eax, ebx
	and	eax, 0x10000
	mov	qword ptr [rsp + 0x38], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x68], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x60], rax
	mov	qword ptr [rsp + 0x30], r15
	jmp	.label_671
.label_500:
	cmp	al, 2
	je	.label_676
	lea	rax, [rsp + 0xc0]
	mov	qword ptr [rsp + 0x58], rax
	mov	dword ptr [rsp + 0x50], 3
	xor	r9d, r9d
	lea	rdi, [rsp + 0x50]
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rdx, r10
	mov	ecx, r13d
	mov	r8, rbx
	call	parse_bracket_element
	test	eax, eax
	je	.label_671
	jmp	.label_670
.label_3173:
	mov	rcx, qword ptr [r15 + 0x28]
	cmp	qword ptr [rsp + 0x68], rcx
	je	.label_686
	mov	rax, qword ptr [r15]
.label_305:
	mov	r10, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x18]
	mov	edx, dword ptr [rsp + 0x58]
	lea	rsi, [rcx + 1]
	mov	qword ptr [r15 + 0x28], rsi
	mov	dword ptr [rax + rcx*4], edx
	jmp	.label_288
.label_3174:
	mov	rbp, qword ptr [rsp + 0x58]
	mov	rdi, rbp
	call	strlen
	cmp	rax, 1
	je	.label_362
	jmp	.label_471
.label_456:
	mov	rax, qword ptr [rsp + 0x58]
	mov	al, byte ptr [rax]
	jmp	.label_387
.label_491:
	xor	eax, eax
.label_387:
	cmp	r15d, 3
	je	.label_445
	test	r15d, r15d
	jne	.label_511
	mov	bl, byte ptr [rsp + 0xa0]
	jmp	.label_460
.label_445:
	mov	rcx, qword ptr [rsp + 0xa0]
	mov	bl, byte ptr [rcx]
	jmp	.label_460
.label_511:
	xor	ebx, ebx
.label_460:
	cmp	ebp, 3
	je	.label_707
	test	ebp, ebp
	jne	.label_524
.label_707:
	test	r12, r12
	movzx	edx, al
	je	.label_709
	mov	edi, edx
	call	btowc
	mov	r9, qword ptr [rsp + 0x18]
	mov	r10, qword ptr [rsp + 8]
	mov	edx, eax
	jmp	.label_709
.label_524:
	mov	edx, dword ptr [rsp + 0x58]
.label_709:
	cmp	r15d, 3
	je	.label_603
	test	r15d, r15d
	jne	.label_650
.label_603:
	test	r12, r12
	movzx	eax, bl
	je	.label_610
	mov	edi, eax
	mov	ebx, edx
	call	btowc
	mov	edx, ebx
	mov	r9, qword ptr [rsp + 0x18]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_610
.label_650:
	mov	eax, dword ptr [rsp + 0xa0]
.label_610:
	mov	rbx, qword ptr [rsp + 0x20]
	cmp	edx, -1
	mov	ecx, 3
	je	.label_346
	cmp	eax, -1
	je	.label_346
	cmp	qword ptr [rsp + 0x38], 0
	je	.label_730
	cmp	edx, eax
	mov	ecx, 0xb
	ja	.label_346
.label_730:
	test	r12, r12
	je	.label_734
	mov	rsi, qword ptr [r12 + 0x40]
	cmp	qword ptr [rsp + 0x60], rsi
	je	.label_738
	mov	rdi, qword ptr [r12 + 8]
	mov	rbp, qword ptr [r12 + 0x10]
.label_651:
	mov	dword ptr [rdi + rsi*4], edx
	lea	rcx, [rsi + 1]
	mov	qword ptr [r12 + 0x40], rcx
	mov	dword ptr [rbp + rsi*4], eax
.label_734:
	mov	r15, qword ptr [rsp + 0x30]
	mov	eax, eax
	mov	edx, edx
	xor	ecx, ecx
	mov	r12, qword ptr [rsp + 0x48]
	nop	dword ptr [rax]
.label_283:
	cmp	rdx, rcx
	ja	.label_347
	cmp	rcx, rax
	ja	.label_347
	mov	esi, 1
	shl	rsi, cl
	mov	rdi, rcx
	sar	rdi, 0x3f
	shr	rdi, 0x3a
	add	rdi, rcx
	sar	rdi, 6
	or	qword ptr [r14 + rdi*8], rsi
.label_347:
	inc	rcx
	cmp	rcx, 0x100
	jne	.label_283
	mov	dword ptr [r12], 0
	jmp	.label_288
.label_686:
	mov	rax, qword ptr [rsp + 0x68]
	lea	rax, [rax + rax]
	mov	rdi, qword ptr [r15]
	lea	rsi, [rax*4 + 4]
	call	realloc
	test	rax, rax
	je	.label_302
	mov	rcx, qword ptr [rsp + 0x68]
	lea	rcx, [rcx + rcx + 1]
	mov	qword ptr [rsp + 0x68], rcx
	mov	r15, qword ptr [rsp + 0x30]
	mov	qword ptr [r15], rax
	mov	rcx, qword ptr [r15 + 0x28]
	mov	rbx, qword ptr [rsp + 0x20]
	jmp	.label_305
.label_738:
	mov	dword ptr [rsp + 0x40], eax
	mov	r15d, edx
	mov	rax, qword ptr [rsp + 0x60]
	lea	rax, [rax + rax]
	mov	rdi, qword ptr [r12 + 8]
	lea	rbp, [rax*4 + 4]
	mov	rsi, rbp
	call	realloc
	mov	rbx, rax
	mov	rdi, qword ptr [r12 + 0x10]
	mov	rsi, rbp
	call	realloc
	mov	rbp, rax
	mov	rdi, rbx
	test	rbx, rbx
	je	.label_323
	test	rbp, rbp
	je	.label_323
	mov	rax, qword ptr [rsp + 0x60]
	lea	rax, [rax + rax + 1]
	mov	qword ptr [rsp + 0x60], rax
	mov	qword ptr [r12 + 8], rdi
	mov	qword ptr [r12 + 0x10], rbp
	mov	rsi, qword ptr [r12 + 0x40]
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r10, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x18]
	mov	edx, r15d
	mov	eax, dword ptr [rsp + 0x40]
	jmp	.label_651
.label_671:
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rdx, rbx
	call	peek_token_bracket
	mov	r13d, eax
	mov	ebp, dword ptr [rsp + 0x50]
	cmp	ebp, 2
	je	.label_352
	cmp	ebp, 4
	jne	.label_358
	mov	rax, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rax + 0x78]
	mov	r8, qword ptr [rsp + 0x58]
	mov	rsi, r14
	mov	rdx, r15
	lea	rcx, [rsp + 0xa8]
	mov	r9, rbx
	call	build_charclass
	mov	dword ptr [r12], eax
	test	eax, eax
	mov	r10, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x18]
	je	.label_288
	jmp	.label_374
.label_358:
	mov	rax, qword ptr [rsp + 8]
	mov	al, byte ptr [rax + 8]
	cmp	al, 0x16
	mov	rsi, qword ptr [rsp + 0x10]
	je	.label_375
	cmp	al, 2
	jne	.label_378
	jmp	.label_382
.label_375:
	movsxd	rax, r13d
	add	qword ptr [rsi + 0x48], rax
	lea	rdi, [rsp + 0xb0]
	mov	rdx, rbx
	mov	r15, rsi
	call	peek_token_bracket
	mov	cl, byte ptr [rsp + 0xb8]
	cmp	cl, 0x15
	je	.label_388
	cmp	cl, 2
	je	.label_391
	mov	qword ptr [rsp + 0x48], r12
	lea	rcx, [rsp + 0x70]
	mov	qword ptr [rsp + 0xa0], rcx
	mov	dword ptr [rsp + 0x98], 3
	mov	r9d, 1
	lea	rdi, [rsp + 0x98]
	mov	r15, qword ptr [rsp + 0x10]
	mov	rsi, r15
	lea	rdx, [rsp + 0xb0]
	mov	ecx, eax
	mov	r8, rbx
	call	parse_bracket_element
	test	eax, eax
	jne	.label_408
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, r15
	mov	rdx, rbx
	call	peek_token_bracket
	mov	r13d, eax
	mov	r9, qword ptr [rsp + 0x18]
	cmp	dword ptr [r9 + 0xb4], 1
	mov	r12d, 0
	cmovg	r12, qword ptr [rsp + 0x30]
	mov	ecx, 0xb
	mov	r15d, dword ptr [rsp + 0x98]
	cmp	r15d, 2
	je	.label_346
	cmp	r15d, 4
	je	.label_346
	cmp	ebp, 3
	mov	r10, qword ptr [rsp + 8]
	jne	.label_682
	mov	rdi, qword ptr [rsp + 0x58]
	call	strlen
	mov	r9, qword ptr [rsp + 0x18]
	mov	r10, qword ptr [rsp + 8]
	mov	ecx, 3
	cmp	rax, 1
	ja	.label_346
.label_682:
	cmp	r15d, 3
	jne	.label_446
	mov	rdi, qword ptr [rsp + 0xa0]
	call	strlen
	mov	r9, qword ptr [rsp + 0x18]
	mov	r10, qword ptr [rsp + 8]
	mov	ecx, 3
	cmp	rax, 1
	ja	.label_346
.label_446:
	cmp	ebp, 3
	je	.label_456
	test	ebp, ebp
	jne	.label_491
	mov	al, byte ptr [rsp + 0x58]
	jmp	.label_387
.label_388:
	mov	eax, r13d
	neg	eax
	cdqe	
	add	qword ptr [r15 + 0x48], rax
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + 8], 1
	mov	r15, qword ptr [rsp + 0x30]
.label_378:
	mov	eax, ebp
	cmp	ebp, 3
	ja	.label_469
	jmp	qword ptr [(rax * 8) + label_472]
.label_3172:
	mov	cl, byte ptr [rsp + 0x58]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r14 + rcx*8], rax
	jmp	.label_474
.label_352:
	mov	rbp, qword ptr [rsp + 0x58]
	mov	rdi, rbp
	call	strlen
	cmp	rax, 1
	jne	.label_486
.label_362:
	mov	cl, byte ptr [rbp]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r14 + rcx*8], rax
	mov	dword ptr [r12], 0
.label_474:
	mov	r10, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x18]
.label_288:
	mov	al, byte ptr [r10 + 8]
	cmp	al, 0x15
	jne	.label_500
	movsxd	rax, r13d
	mov	rcx, qword ptr [rsp + 0x10]
	add	qword ptr [rcx + 0x48], rax
	mov	eax, dword ptr [rsp + 0x28]
	test	al, al
	je	.label_503
	movdqu	xmm0, xmmword ptr [r14]
	pcmpeqd	xmm1, xmm1
	pxor	xmm0, xmm1
	movdqu	xmmword ptr [r14], xmm0
	movdqu	xmm0, xmmword ptr [r14 + 0x10]
	pxor	xmm0, xmm1
	movdqu	xmmword ptr [r14 + 0x10], xmm0
.label_503:
	mov	eax, dword ptr [r9 + 0xb4]
	cmp	eax, 2
	jl	.label_520
	mov	rcx, qword ptr [r9 + 0x78]
	mov	rdx, qword ptr [rcx]
	and	qword ptr [r14], rdx
	mov	rdx, qword ptr [rcx + 8]
	and	qword ptr [r14 + 8], rdx
	mov	rdx, qword ptr [rcx + 0x10]
	and	qword ptr [r14 + 0x10], rdx
	mov	rcx, qword ptr [rcx + 0x18]
	and	qword ptr [r14 + 0x18], rcx
.label_520:
	cmp	qword ptr [r15 + 0x28], 0
	jne	.label_296
	cmp	qword ptr [r15 + 0x30], 0
	jne	.label_296
	cmp	qword ptr [r15 + 0x38], 0
	jne	.label_296
	cmp	qword ptr [r15 + 0x40], 0
	jne	.label_296
	cmp	eax, 2
	jl	.label_536
	cmp	qword ptr [r15 + 0x48], 0
	jne	.label_296
	test	byte ptr [r15 + 0x20], 1
	jne	.label_296
.label_536:
	mov	rdi, qword ptr [r15]
	call	free
	mov	rdi, qword ptr [r15 + 8]
	call	free
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
	mov	rdi, qword ptr [r15 + 0x18]
	call	free
	mov	rdi, r15
	call	free
	mov	rsi, qword ptr [rsp + 0x18]
	mov	ecx, dword ptr [rsi + 0x80]
	cmp	ecx, 0xf
	je	.label_422
	mov	rax, qword ptr [rsi + 0x70]
.label_579:
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	lea	edx, [rcx + 1]
	mov	dword ptr [rsi + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	qword ptr [rax + rcx + 0x30], r14
	mov	dword ptr [rax + rcx + 0x38], 3
	jmp	.label_457
.label_296:
	or	byte ptr [r9 + 0xb0], 2
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	je	.label_580
	mov	rax, qword ptr [r9 + 0x70]
.label_350:
	lea	edx, [rcx + 1]
	mov	dword ptr [r9 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r15, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	rdx, qword ptr [rsp + 0x30]
	mov	qword ptr [rax + rcx + 0x30], rdx
	mov	dword ptr [rax + rcx + 0x38], 6
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	cmp	qword ptr [r14], 0
	jne	.label_584
	cmp	qword ptr [r14 + 8], 0
	jne	.label_584
	cmp	qword ptr [r14 + 0x10], 0
	jne	.label_584
	cmp	qword ptr [r14 + 0x18], 0
	je	.label_600
.label_584:
	mov	eax, dword ptr [r9 + 0x80]
	cmp	eax, 0xf
	je	.label_602
	mov	rbp, qword ptr [r9 + 0x70]
	mov	r8, qword ptr [rsp + 0x10]
.label_371:
	lea	ecx, [rax + 1]
	mov	dword ptr [r9 + 0x80], ecx
	movsxd	rbx, eax
	shl	rbx, 6
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rbp + rbx + 8], xmm0
	mov	qword ptr [rbp + rbx + 0x18], 0
	mov	qword ptr [rbp + rbx + 0x30], r14
	mov	dword ptr [rbp + rbx + 0x38], 3
	movdqu	xmmword ptr [rbp + rbx + 0x20], xmm0
	mov	qword ptr [rbp + rbx + 0x40], -1
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	je	.label_613
	mov	rax, qword ptr [r9 + 0x70]
.label_384:
	lea	rdx, [rbp + rbx + 8]
	lea	esi, [rcx + 1]
	mov	dword ptr [r9 + 0x80], esi
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rdx
	mov	qword ptr [rax + rcx + 0x18], r15
	mov	dword ptr [rax + rcx + 0x38], 0xa
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rdx], rbp
	mov	qword ptr [r15], rbp
	mov	rbx, qword ptr [rsp + 0x20]
.label_325:
	mov	rdi, r10
	mov	rsi, r8
	mov	rdx, rbx
	mov	r15, rbp
	call	peek_token
	mov	rdi, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x10]
	cdqe	
	add	qword ptr [r8 + 0x48], rax
	mov	eax, ebx
	and	eax, 0x1000000
	mov	qword ptr [rsp + 0x68], rax
	mov	eax, ebx
	and	eax, 0x200000
	mov	qword ptr [rsp + 0x60], rax
	mov	qword ptr [rsp + 0x48], r12
	nop	word ptr cs:[rax + rax]
.label_566:
	movzx	eax, byte ptr [rdi + 8]
	cmp	al, 0x17
	ja	.label_434
	mov	ecx, 0x8c0800
	bt	rcx, rax
	jae	.label_434
	mov	r14, qword ptr [r8 + 0x48]
	movdqu	xmm0, xmmword ptr [rdi]
	movdqa	xmmword ptr [rsp + 0xc0], xmm0
	cmp	eax, 0x17
	mov	qword ptr [rsp + 0x28], r15
	jne	.label_668
	mov	rsi, -1
	jmp	.label_294
	nop	word ptr cs:[rax + rax]
.label_668:
	xor	r13d, r13d
	cmp	eax, 0x12
	sete	r13b
	cmp	eax, 0x13
	mov	r15, -1
	mov	eax, 1
	cmove	r15, rax
.label_291:
	mov	rsi, r8
	mov	rdx, rbx
	call	peek_token
	lea	r10, [rsp + 0x70]
	pxor	xmm1, xmm1
	mov	r9, qword ptr [rsp + 0x28]
	mov	rbp, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rsp + 0x10]
	cdqe	
	add	qword ptr [r8 + 0x48], rax
	test	r9, r9
	mov	ecx, 0
	je	.label_396
	mov	rax, r15
	mov	r11, r13
	or	rax, r11
	je	.label_690
	test	r11, r11
	mov	eax, 0
	mov	qword ptr [rsp + 0x38], rax
	mov	r12, r9
	mov	rdi, qword ptr [rsp + 8]
	jg	.label_691
.label_501:
	cmp	byte ptr [r12 + 0x30], 0x11
	jne	.label_353
	mov	rax, qword ptr [r12 + 0x28]
	mov	rdx, r12
	nop	
.label_681:
	mov	rcx, rdx
	mov	rdx, qword ptr [rcx + 8]
	test	rdx, rdx
	jne	.label_681
	mov	rdx, qword ptr [rcx + 0x10]
	test	rdx, rdx
	jne	.label_681
	nop	word ptr cs:[rax + rax]
.label_710:
	mov	edx, dword ptr [rcx + 0x30]
	cmp	dl, 0x11
	jne	.label_366
	cmp	qword ptr [rcx + 0x28], rax
	jne	.label_366
	or	edx, 0x80000
	mov	dword ptr [rcx + 0x30], edx
.label_366:
	mov	rsi, qword ptr [rcx]
	test	rsi, rsi
	je	.label_353
	mov	rdx, qword ptr [rsi + 0x10]
	cmp	rdx, rcx
	mov	rcx, rsi
	je	.label_710
	test	rdx, rdx
	mov	rcx, rsi
	je	.label_710
	jmp	.label_681
	nop	word ptr cs:[rax + rax]
.label_353:
	xor	ebx, ebx
	cmp	r15, -1
	sete	r14b
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	je	.label_717
	mov	rax, qword ptr [rbp + 0x70]
.label_696:
	mov	bl, r14b
	or	ebx, 0xa
	lea	edx, [rcx + 1]
	mov	dword ptr [rbp + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r14, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], r12
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	dword ptr [rax + rcx + 0x38], ebx
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	test	r12, r12
	je	.label_721
	mov	qword ptr [r12], r14
.label_721:
	add	r11, 2
	cmp	r11, r15
	jg	.label_741
	mov	qword ptr [rsp + 0x30], r15
	jmp	.label_256
.label_306:
	lea	rax, [r13 + r13*4]
	lea	rax, [rcx + rax*2 - 0x30]
	cmp	rax, 0x8000
	mov	esi, 0x8000
	cmovle	rsi, rax
	nop	dword ptr [rax + rax]
.label_294:
	mov	r13, rsi
	mov	rsi, r8
	mov	rdx, rbx
	call	peek_token
	mov	rdi, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x10]
	cdqe	
	add	qword ptr [r8 + 0x48], rax
	movzx	edx, byte ptr [rdi]
	movzx	ecx, dl
	movzx	eax, byte ptr [rdi + 8]
	mov	bl, 0x18
	cmp	al, 0x18
	je	.label_273
	cmp	al, 2
	mov	r9, qword ptr [rsp + 0x28]
	je	.label_286
	mov	sil, 0x2c
	cmp	dl, 0x2c
	mov	ebx, eax
	je	.label_292
	cmp	dl, 0x30
	mov	rsi, -2
	mov	rbx, qword ptr [rsp + 0x20]
	jb	.label_294
	cmp	eax, 1
	jne	.label_294
	cmp	r13, -2
	je	.label_294
	cmp	dl, 0x39
	ja	.label_294
	cmp	r13, -1
	jne	.label_306
	add	rcx, -0x30
	mov	rsi, rcx
	jmp	.label_294
	nop	dword ptr [rax]
.label_273:
	mov	esi, edx
	mov	r9, qword ptr [rsp + 0x28]
.label_292:
	cmp	r13, -1
	jne	.label_544
	cmp	sil, 0x2c
	jne	.label_313
	cmp	eax, 1
	mov	r13d, 0
	je	.label_437
	jmp	.label_313
	nop	word ptr [rax + rax]
.label_544:
	cmp	r13, -2
	je	.label_286
.label_437:
	cmp	bl, 0x18
	je	.label_322
	cmp	bl, 1
	jne	.label_286
	cmp	sil, 0x2c
	mov	rbx, qword ptr [rsp + 0x20]
	jne	.label_286
	mov	rdx, -1
	jmp	.label_326
.label_322:
	mov	r15, r13
	mov	rbx, qword ptr [rsp + 0x20]
	jmp	.label_338
.label_370:
	lea	rax, [r15 + r15*4]
	lea	rdx, [rcx + rax*2 - 0x30]
	cmp	rdx, 0x8000
	mov	eax, 0x8000
	cmovg	rdx, rax
	nop	word ptr cs:[rax + rax]
.label_326:
	mov	r15, rdx
	mov	rsi, r8
	mov	rdx, rbx
	call	peek_token
	mov	r9, qword ptr [rsp + 0x28]
	mov	rdi, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x10]
	cdqe	
	add	qword ptr [r8 + 0x48], rax
	movzx	ecx, byte ptr [rdi]
	movzx	eax, byte ptr [rdi + 8]
	cmp	al, 0x18
	je	.label_364
	cmp	al, 2
	je	.label_286
	cmp	cl, 0x2c
	je	.label_364
	cmp	cl, 0x30
	mov	rdx, -2
	jb	.label_326
	cmp	eax, 1
	jne	.label_326
	cmp	r15, -2
	je	.label_326
	cmp	cl, 0x39
	ja	.label_326
	cmp	r15, -1
	jne	.label_370
	add	rcx, -0x30
	mov	rdx, rcx
	jmp	.label_326
.label_364:
	cmp	r15, -2
	je	.label_286
.label_338:
	cmp	r15, -1
	sete	cl
	cmp	r13, r15
	setle	dl
	or	dl, cl
	cmp	dl, 1
	jne	.label_313
	cmp	eax, 0x18
	jne	.label_313
	cmp	r15, -1
	mov	rax, r15
	cmove	rax, r13
	cmp	rax, 0x8000
	jl	.label_291
	mov	dword ptr [r12], 0xf
	jmp	.label_392
	nop	dword ptr [rax]
.label_313:
	mov	dword ptr [r12], 0xa
	jmp	.label_392
.label_286:
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_393
	mov	qword ptr [r8 + 0x48], r14
	movdqa	xmm0, xmmword ptr [rsp + 0xc0]
	movdqu	xmmword ptr [rdi], xmm0
	mov	byte ptr [rdi + 8], 1
	mov	rcx, r9
	jmp	.label_396
.label_485:
	mov	qword ptr [rsp + 0x40], r11
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_601
	mov	rbp, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rbp + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp + 0x70], rax
	mov	dword ptr [rbp + 0x80], 0
	xor	ecx, ecx
	mov	r8, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x28]
	pxor	xmm1, xmm1
	lea	r10, [rsp + 0x70]
	mov	r11, qword ptr [rsp + 0x40]
	jmp	.label_409
.label_488:
	mov	qword ptr [rsp + 0x40], r11
	mov	r12, r15
	mov	r15, qword ptr [rsp + 0x30]
	jmp	.label_428
.label_599:
	mov	edi, 0x3c8
	mov	rbp, r11
	call	malloc
	mov	r11, rbp
	lea	r10, [rsp + 0x70]
	pxor	xmm1, xmm1
	mov	r9, qword ptr [rsp + 0x28]
	mov	rbp, qword ptr [rsp + 0x18]
	mov	rdi, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x10]
	test	rax, rax
	je	.label_261
	mov	rcx, qword ptr [rbp + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp + 0x70], rax
	mov	dword ptr [rbp + 0x80], 0
	xor	ecx, ecx
	jmp	.label_300
.label_601:
	mov	qword ptr [rsp + 0x70], 0
	jmp	.label_453
.label_562:
	mov	qword ptr [rbx], 0
	mov	r15, qword ptr [rsp + 0x30]
.label_453:
	xor	r12d, r12d
.label_428:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	mov	r8, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rsp + 8]
	mov	rbp, qword ptr [rsp + 0x18]
	mov	r9, qword ptr [rsp + 0x28]
	pxor	xmm1, xmm1
	lea	r10, [rsp + 0x70]
	mov	r11, qword ptr [rsp + 0x40]
	je	.label_261
	mov	rcx, qword ptr [rbp + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp + 0x70], rax
	mov	dword ptr [rbp + 0x80], 0
	xor	ecx, ecx
	jmp	.label_473
	nop	dword ptr [rax + rax]
.label_256:
	mov	r13, qword ptr [r12]
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	je	.label_485
	mov	rax, qword ptr [rbp + 0x70]
.label_409:
	lea	rdx, [r12 + 0x28]
	lea	esi, [rcx + 1]
	mov	dword ptr [rbp + 0x80], esi
	movsxd	rcx, ecx
	shl	rcx, 6
	movdqu	xmmword ptr [rax + rcx + 8], xmm1
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm0, xmmword ptr [rdx]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm0
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	lea	r15, [rax + rcx + 8]
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rsp + 0x70], r15
	mov	rcx, r15
	mov	rbx, r10
	jmp	.label_718
	nop	dword ptr [rax + rax]
.label_496:
	lea	rdx, [r12 + 0x28]
	lea	esi, [rcx + 1]
	mov	dword ptr [rbp + 0x80], esi
	movsxd	rsi, ecx
	shl	rsi, 6
	movdqu	xmmword ptr [rax + rsi + 8], xmm1
	mov	qword ptr [rax + rsi + 0x18], 0
	movdqu	xmm0, xmmword ptr [rdx]
	movdqu	xmmword ptr [rax + rsi + 0x30], xmm0
	and	byte ptr [rax + rsi + 0x3a], 0xf3
	lea	rcx, [rax + rsi + 8]
	movdqu	xmmword ptr [rax + rsi + 0x20], xmm1
	mov	qword ptr [rax + rsi + 0x40], -1
	mov	qword ptr [rbx], rcx
.label_718:
	mov	qword ptr [rcx], r13
	mov	rax, qword ptr [rbx]
	or	dword ptr [rax + 0x30], 0x40000
	mov	r13, qword ptr [rbx]
	mov	rax, qword ptr [r12 + 8]
	test	rax, rax
	je	.label_698
	lea	rbx, [r13 + 8]
	mov	r12, rax
	jmp	.label_319
	nop	dword ptr [rax]
.label_698:
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_624:
	mov	rcx, rax
	mov	rax, r12
	mov	r12, qword ptr [rax + 0x10]
	cmp	r12, rcx
	je	.label_470
	test	r12, r12
	jne	.label_545
.label_470:
	mov	r12, qword ptr [rax]
	mov	r13, qword ptr [r13]
	test	r12, r12
	jne	.label_624
	jmp	.label_549
.label_545:
	lea	rbx, [r13 + 0x10]
.label_319:
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	je	.label_550
	mov	rax, qword ptr [rbp + 0x70]
	jmp	.label_496
.label_550:
	mov	qword ptr [rsp + 0x40], r11
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_562
	mov	rbp, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rbp + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp + 0x70], rax
	mov	dword ptr [rbp + 0x80], 0
	xor	ecx, ecx
	mov	r8, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x28]
	pxor	xmm1, xmm1
	lea	r10, [rsp + 0x70]
	mov	r11, qword ptr [rsp + 0x40]
	jmp	.label_496
.label_549:
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	je	.label_488
	mov	rax, qword ptr [rbp + 0x70]
	mov	r12, r15
	mov	r15, qword ptr [rsp + 0x30]
.label_473:
	lea	edx, [rcx + 1]
	mov	dword ptr [rbp + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbx, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], r14
	mov	qword ptr [rax + rcx + 0x18], r12
	mov	dword ptr [rax + rcx + 0x38], 0x10
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [r14], rbx
	test	r12, r12
	je	.label_261
	mov	qword ptr [r12], rbx
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	je	.label_599
	mov	rax, qword ptr [rbp + 0x70]
.label_300:
	lea	edx, [rcx + 1]
	mov	dword ptr [rbp + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r14, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rbx
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	dword ptr [rax + rcx + 0x38], 0xa
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rbx], r14
	cmp	r11, r15
	lea	r11, [r11 + 1]
	jl	.label_256
.label_741:
	mov	rbx, qword ptr [rsp + 0x38]
	test	rbx, rbx
	je	.label_383
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	mov	r12, qword ptr [rsp + 0x48]
	je	.label_630
	mov	rax, qword ptr [rbp + 0x70]
.label_569:
	lea	edx, [rcx + 1]
	mov	dword ptr [rbp + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rdx, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rbx
	mov	qword ptr [rax + rcx + 0x18], r14
	mov	dword ptr [rax + rcx + 0x38], 0x10
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rbx], rdx
	mov	qword ptr [r14], rdx
	mov	r14, rdx
	jmp	.label_634
.label_383:
	mov	r12, qword ptr [rsp + 0x48]
.label_634:
	mov	rbx, qword ptr [rsp + 0x20]
	xor	eax, eax
	mov	rcx, r14
	jmp	.label_435
.label_690:
	mov	rax, r9
	nop	word ptr cs:[rax + rax]
.label_615:
	mov	rbx, rax
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	jne	.label_615
	mov	rax, qword ptr [rbx + 0x10]
	test	rax, rax
	jne	.label_615
.label_678:
	mov	eax, dword ptr [rbx + 0x30]
	mov	ecx, 0x400ff
	and	eax, ecx
	cmp	eax, 3
	je	.label_662
	cmp	eax, 6
	jne	.label_666
	mov	rbp, qword ptr [rbx + 0x28]
	mov	rdi, qword ptr [rbp]
	call	free
	mov	rdi, qword ptr [rbp + 8]
	call	free
	mov	rdi, qword ptr [rbp + 0x10]
	call	free
	mov	rdi, qword ptr [rbp + 0x18]
	call	free
	mov	rdi, rbp
	jmp	.label_672
.label_662:
	mov	rdi, qword ptr [rbx + 0x28]
.label_672:
	call	free
	mov	r9, qword ptr [rsp + 0x28]
	mov	r8, qword ptr [rsp + 0x10]
.label_666:
	mov	rdx, qword ptr [rbx]
	test	rdx, rdx
	mov	ecx, 0
	je	.label_396
	mov	rax, qword ptr [rdx + 0x10]
	cmp	rax, rbx
	mov	rbx, rdx
	je	.label_678
	test	rax, rax
	mov	rbx, rdx
	je	.label_678
	jmp	.label_615
.label_691:
	cmp	r11, 1
	mov	rax, r9
	mov	qword ptr [rsp + 0x38], rax
	mov	r12, r9
	je	.label_684
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r12, r9
	mov	r14d, 2
	mov	rax, r9
	mov	qword ptr [rsp + 0x30], r15
	jmp	.label_417
.label_717:
	mov	edi, 0x3c8
	call	malloc
	mov	r11, r13
	lea	r10, [rsp + 0x70]
	pxor	xmm1, xmm1
	mov	r9, qword ptr [rsp + 0x28]
	mov	rbp, qword ptr [rsp + 0x18]
	mov	rdi, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x10]
	test	rax, rax
	je	.label_261
	mov	rcx, qword ptr [rbp + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp + 0x70], rax
	mov	dword ptr [rbp + 0x80], 0
	xor	ecx, ecx
	jmp	.label_696
.label_630:
	mov	edi, 0x3c8
	call	malloc
	pxor	xmm1, xmm1
	mov	r9, qword ptr [rsp + 0x28]
	mov	rbp, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rsp + 0x10]
	test	rax, rax
	mov	ecx, 0
	je	.label_396
	mov	rcx, qword ptr [rbp + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp + 0x70], rax
	mov	dword ptr [rbp + 0x80], 0
	xor	ecx, ecx
	mov	rdi, qword ptr [rsp + 8]
	jmp	.label_569
.label_393:
	xor	ecx, ecx
	cmp	al, 2
	setne	cl
	add	ecx, 9
	mov	dword ptr [r12], ecx
	jmp	.label_392
.label_285:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_722
	mov	rbp, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rbp + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp + 0x70], rax
	mov	dword ptr [rbp + 0x80], 0
	xor	ecx, ecx
	mov	r8, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x28]
	pxor	xmm1, xmm1
	lea	r10, [rsp + 0x70]
	mov	r11, r13
	jmp	.label_724
.label_390:
	mov	r12, rbx
	jmp	.label_735
.label_722:
	mov	qword ptr [rsp + 0x70], 0
	jmp	.label_739
.label_565:
	mov	qword ptr [r15], 0
.label_739:
	xor	r12d, r12d
.label_735:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	mov	r8, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rsp + 8]
	mov	rbp, qword ptr [rsp + 0x18]
	mov	r9, qword ptr [rsp + 0x28]
	pxor	xmm1, xmm1
	lea	r10, [rsp + 0x70]
	mov	r11, r13
	mov	r15, qword ptr [rsp + 0x30]
	je	.label_261
	mov	rcx, qword ptr [rbp + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp + 0x70], rax
	mov	dword ptr [rbp + 0x80], 0
	xor	ecx, ecx
	jmp	.label_276
.label_417:
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	mov	qword ptr [rsp + 0x40], rax
	je	.label_285
	mov	rax, qword ptr [rbp + 0x70]
.label_724:
	lea	rdx, [r12 + 0x28]
	lea	esi, [rcx + 1]
	mov	dword ptr [rbp + 0x80], esi
	movsxd	rcx, ecx
	shl	rcx, 6
	movdqu	xmmword ptr [rax + rcx + 8], xmm1
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm0, xmmword ptr [rdx]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm0
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	lea	rbx, [rax + rcx + 8]
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rsp + 0x70], rbx
	mov	rcx, rbx
	mov	r15, r10
	jmp	.label_447
.label_628:
	lea	rdx, [r12 + 0x28]
	lea	esi, [rcx + 1]
	mov	dword ptr [rbp + 0x80], esi
	movsxd	rsi, ecx
	shl	rsi, 6
	movdqu	xmmword ptr [rax + rsi + 8], xmm1
	mov	qword ptr [rax + rsi + 0x18], 0
	movdqu	xmm0, xmmword ptr [rdx]
	movdqu	xmmword ptr [rax + rsi + 0x30], xmm0
	and	byte ptr [rax + rsi + 0x3a], 0xf3
	lea	rcx, [rax + rsi + 8]
	movdqu	xmmword ptr [rax + rsi + 0x20], xmm1
	mov	qword ptr [rax + rsi + 0x40], -1
	mov	qword ptr [r15], rcx
.label_447:
	mov	rax, qword ptr [rsp + 0x38]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [r15]
	or	dword ptr [rax + 0x30], 0x40000
	mov	rcx, qword ptr [r15]
	mov	rax, qword ptr [r12 + 8]
	test	rax, rax
	mov	qword ptr [rsp + 0x38], rcx
	je	.label_339
	lea	r15, [rcx + 8]
	mov	r12, rax
	jmp	.label_345
.label_339:
	xor	eax, eax
	mov	r15, qword ptr [rsp + 0x30]
	nop	word ptr [rax + rax]
.label_359:
	mov	rcx, rax
	mov	rax, r12
	mov	r12, qword ptr [rax + 0x10]
	cmp	r12, rcx
	je	.label_458
	test	r12, r12
	jne	.label_271
.label_458:
	mov	r12, qword ptr [rax]
	mov	rcx, qword ptr [rsp + 0x38]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rsp + 0x38], rcx
	test	r12, r12
	jne	.label_359
	jmp	.label_365
.label_271:
	mov	rax, qword ptr [rsp + 0x38]
	lea	r15, [rax + 0x10]
.label_345:
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	je	.label_332
	mov	rax, qword ptr [rbp + 0x70]
	jmp	.label_628
.label_332:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_565
	mov	rbp, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rbp + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp + 0x70], rax
	mov	dword ptr [rbp + 0x80], 0
	xor	ecx, ecx
	mov	r8, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x28]
	pxor	xmm1, xmm1
	lea	r10, [rsp + 0x70]
	mov	r11, r13
	jmp	.label_628
.label_365:
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	je	.label_390
	mov	rax, qword ptr [rbp + 0x70]
	mov	r12, rbx
.label_276:
	mov	rbx, qword ptr [rsp + 0x40]
	lea	edx, [rcx + 1]
	mov	dword ptr [rbp + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rdx, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rbx
	mov	qword ptr [rax + rcx + 0x18], r12
	mov	dword ptr [rax + rcx + 0x38], 0x10
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	test	rbx, rbx
	je	.label_700
	mov	qword ptr [rbx], rdx
.label_700:
	mov	qword ptr [rsp + 0x38], rdx
	test	r12, r12
	je	.label_261
	mov	rax, qword ptr [rsp + 0x38]
	mov	qword ptr [r12], rax
	cmp	r14, r11
	lea	r14, [r14 + 1]
	jl	.label_417
.label_684:
	cmp	r11, r15
	jne	.label_425
	mov	rcx, qword ptr [rsp + 0x38]
	mov	r12, qword ptr [rsp + 0x48]
	jmp	.label_396
.label_425:
	mov	r14, qword ptr [r12]
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	mov	qword ptr [rsp + 0x30], r15
	je	.label_430
	mov	rax, qword ptr [rbp + 0x70]
.label_529:
	lea	rdx, [r12 + 0x28]
	mov	rbx, r12
	lea	esi, [rcx + 1]
	mov	dword ptr [rbp + 0x80], esi
	movsxd	rcx, ecx
	shl	rcx, 6
	movdqu	xmmword ptr [rax + rcx + 8], xmm1
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm0, xmmword ptr [rdx]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm0
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	lea	r12, [rax + rcx + 8]
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rsp + 0x70], r12
	mov	rcx, r12
	mov	r15, r10
	jmp	.label_436
.label_452:
	lea	rdx, [rbx + 0x28]
	lea	esi, [rcx + 1]
	mov	dword ptr [rbp + 0x80], esi
	movsxd	rsi, ecx
	shl	rsi, 6
	movdqu	xmmword ptr [rax + rsi + 8], xmm1
	mov	qword ptr [rax + rsi + 0x18], 0
	movdqu	xmm0, xmmword ptr [rdx]
	movdqu	xmmword ptr [rax + rsi + 0x30], xmm0
	and	byte ptr [rax + rsi + 0x3a], 0xf3
	lea	rcx, [rax + rsi + 8]
	movdqu	xmmword ptr [rax + rsi + 0x20], xmm1
	mov	qword ptr [rax + rsi + 0x40], -1
	mov	qword ptr [r15], rcx
.label_436:
	mov	qword ptr [rcx], r14
	mov	rax, qword ptr [r15]
	or	dword ptr [rax + 0x30], 0x40000
	mov	r14, qword ptr [r15]
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	je	.label_479
	lea	r15, [r14 + 8]
	mov	rbx, rax
	jmp	.label_487
.label_479:
	xor	eax, eax
	mov	r15, qword ptr [rsp + 0x30]
.label_498:
	mov	rcx, rax
	mov	rax, rbx
	mov	rbx, qword ptr [rax + 0x10]
	cmp	rbx, rcx
	je	.label_494
	test	rbx, rbx
	jne	.label_497
.label_494:
	mov	rbx, qword ptr [rax]
	mov	r14, qword ptr [r14]
	test	rbx, rbx
	jne	.label_498
	jmp	.label_501
.label_497:
	lea	r15, [r14 + 0x10]
.label_487:
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	je	.label_502
	mov	rax, qword ptr [rbp + 0x70]
	jmp	.label_452
.label_502:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_512
	mov	rbp, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rbp + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp + 0x70], rax
	mov	dword ptr [rbp + 0x80], 0
	xor	ecx, ecx
	mov	r8, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x28]
	pxor	xmm1, xmm1
	lea	r10, [rsp + 0x70]
	mov	r11, r13
	jmp	.label_452
.label_430:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_733
	mov	rbp, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rbp + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp + 0x70], rax
	mov	dword ptr [rbp + 0x80], 0
	xor	ecx, ecx
	mov	r8, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x28]
	pxor	xmm1, xmm1
	lea	r10, [rsp + 0x70]
	mov	r11, r13
	jmp	.label_529
.label_733:
	mov	qword ptr [rsp + 0x70], 0
	jmp	.label_540
.label_512:
	mov	qword ptr [r15], 0
.label_540:
	mov	r8, qword ptr [rsp + 0x10]
	mov	r9, qword ptr [rsp + 0x28]
.label_261:
	mov	r12, qword ptr [rsp + 0x48]
	mov	dword ptr [r12], 0xc
.label_392:
	xor	ecx, ecx
.label_396:
	test	rcx, rcx
	sete	al
	jne	.label_551
	mov	edx, dword ptr [r12]
	test	edx, edx
	mov	rbx, qword ptr [rsp + 0x20]
	mov	rdi, qword ptr [rsp + 8]
	je	.label_435
	jmp	.label_559
	nop	word ptr cs:[rax + rax]
.label_551:
	mov	rbx, qword ptr [rsp + 0x20]
	mov	rdi, qword ptr [rsp + 8]
.label_435:
	cmp	qword ptr [rsp + 0x68], 0
	mov	r15, rcx
	je	.label_566
	mov	dl, byte ptr [rdi + 8]
	cmp	dl, 0x17
	je	.label_572
	cmp	dl, 0xb
	mov	r15, rcx
	jne	.label_566
.label_572:
	test	al, al
	jne	.label_553
	mov	r14d, 0x400ff
	nop	dword ptr [rax + rax]
.label_519:
	mov	rbp, rcx
	mov	rcx, qword ptr [rbp + 8]
	test	rcx, rcx
	jne	.label_519
	mov	rcx, qword ptr [rbp + 0x10]
	test	rcx, rcx
	jne	.label_519
	nop	word ptr cs:[rax + rax]
.label_451:
	mov	eax, dword ptr [rbp + 0x30]
	and	eax, r14d
	cmp	eax, 3
	je	.label_589
	cmp	eax, 6
	jne	.label_638
	mov	rbx, qword ptr [rbp + 0x28]
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rdi, qword ptr [rbx + 8]
	call	free
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	mov	rdi, rbx
	jmp	.label_594
	nop	dword ptr [rax]
.label_589:
	mov	rdi, qword ptr [rbp + 0x28]
.label_594:
	call	free
.label_638:
	mov	rax, qword ptr [rbp]
	test	rax, rax
	je	.label_553
	mov	rcx, qword ptr [rax + 0x10]
	cmp	rcx, rbp
	mov	rbp, rax
	je	.label_451
	test	rcx, rcx
	mov	rbp, rax
	je	.label_451
	jmp	.label_519
.label_553:
	mov	dword ptr [r12], 0xd
.label_304:
	xor	r15d, r15d
.label_434:
	mov	rax, r15
	add	rsp, 0xe8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_740:
	mov	dword ptr [r10], 5
	mov	r15, rdi
	sub	r15, -0x80
	mov	r14d, dword ptr [rdi + 0x80]
	cmp	r14d, 0xf
	je	.label_619
	mov	rax, qword ptr [rdi + 0x70]
.label_656:
	lea	ecx, [r14 + 1]
	mov	dword ptr [r15], ecx
	movsxd	rcx, r14d
	shl	rcx, 6
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [r10]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	lea	r14, [rax + rcx + 8]
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	ecx, 0xa
.label_539:
	mov	dword ptr [r10], ecx
	mov	ebp, dword ptr [r15]
	cmp	ebp, 0xf
	je	.label_640
	mov	rax, qword ptr [rdi + 0x70]
.label_426:
	lea	ecx, [rbp + 1]
	mov	dword ptr [r15], ecx
	movsxd	rcx, ebp
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [r10]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
.label_419:
	mov	ecx, dword ptr [r15]
	cmp	ecx, 0xf
	je	.label_659
	mov	rax, qword ptr [rdi + 0x70]
.label_438:
	lea	edx, [rcx + 1]
	mov	dword ptr [r15], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r15, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], r14
	mov	qword ptr [rax + rcx + 0x18], rbp
	mov	dword ptr [rax + rcx + 0x38], 0xa
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	test	r14, r14
	je	.label_664
	mov	qword ptr [r14], r15
.label_664:
	test	rbp, rbp
	je	.label_255
	mov	qword ptr [rbp], r15
	test	r14, r14
	jne	.label_727
	jmp	.label_255
.label_270:
	mov	ecx, dword ptr [rdi + 0x80]
	cmp	ecx, 0xf
	je	.label_680
	mov	rax, qword ptr [rdi + 0x70]
.label_395:
	lea	edx, [rcx + 1]
	mov	dword ptr [rdi + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r15, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [r10]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
.label_727:
	mov	rdi, r10
	mov	rsi, r8
	mov	rdx, rbx
	mov	rbx, r8
	call	peek_token
	cdqe	
	add	qword ptr [rbx + 0x48], rax
	jmp	.label_434
.label_737:
	mov	rbp, r14
	jmp	.label_325
.label_559:
	xor	r15d, r15d
	test	r9, r9
	je	.label_434
	mov	r14d, 0x400ff
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_655:
	mov	rbx, r9
	mov	r9, qword ptr [rbx + 8]
	test	r9, r9
	jne	.label_655
	mov	r9, qword ptr [rbx + 0x10]
	test	r9, r9
	jne	.label_655
.label_478:
	mov	eax, dword ptr [rbx + 0x30]
	and	eax, r14d
	cmp	eax, 3
	je	.label_397
	cmp	eax, 6
	jne	.label_711
	mov	rbp, qword ptr [rbx + 0x28]
	mov	rdi, qword ptr [rbp]
	call	free
	mov	rdi, qword ptr [rbp + 8]
	call	free
	mov	rdi, qword ptr [rbp + 0x10]
	call	free
	mov	rdi, qword ptr [rbp + 0x18]
	call	free
	mov	rdi, rbp
	jmp	.label_720
.label_397:
	mov	rdi, qword ptr [rbx + 0x28]
.label_720:
	call	free
.label_711:
	mov	rax, qword ptr [rbx]
	test	rax, rax
	je	.label_434
	mov	r9, qword ptr [rax + 0x10]
	cmp	r9, rbx
	mov	rbx, rax
	je	.label_478
	test	r9, r9
	mov	rbx, rax
	je	.label_478
	jmp	.label_655
.label_600:
	mov	rdi, r14
	call	free
	mov	r10, qword ptr [rsp + 8]
	mov	rbp, r15
	mov	r8, qword ptr [rsp + 0x10]
	jmp	.label_325
.label_670:
	mov	dword ptr [r12], eax
	jmp	.label_374
.label_676:
	mov	dword ptr [r12], 7
	jmp	.label_374
.label_560:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_255
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rdi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rdi + 0x70], rax
	mov	dword ptr [rdi + 0x80], 0
	xor	ecx, ecx
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_259
.label_623:
	mov	dword ptr [r12], 2
	jmp	.label_374
.label_712:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_255
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rdi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rdi + 0x70], rax
	mov	dword ptr [rdi + 0x80], 0
	xor	ecx, ecx
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_287
.label_373:
	mov	dword ptr [r12], 6
	jmp	.label_304
.label_442:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_255
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rdi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rdi + 0x70], rax
	mov	dword ptr [rdi + 0x80], 0
	xor	ecx, ecx
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_311
.label_611:
	mov	rdi, r14
	call	free
	mov	rdi, r15
	call	free
	jmp	.label_255
.label_376:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_255
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rdi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rdi + 0x70], rax
	mov	dword ptr [rdi + 0x80], 0
	xor	ecx, ecx
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_331
.label_580:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_302
	mov	r9, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_350
.label_602:
	mov	edi, 0x3c8
	call	malloc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_302
	mov	r9, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [r9 + 0x70]
	mov	qword ptr [rbp], rax
	mov	qword ptr [r9 + 0x70], rbp
	mov	dword ptr [r9 + 0x80], 0
	xor	eax, eax
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_371
.label_613:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_302
	mov	r9, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_384
.label_486:
	mov	dword ptr [r12], 3
	jmp	.label_374
.label_476:
	mov	rbp, rdi
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_255
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rsi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rsi + 0x70], rax
	mov	dword ptr [rsi + 0x80], 0
	xor	ecx, ecx
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	mov	rdi, rbp
	jmp	.label_399
.label_640:
	mov	edi, 0x3c8
	call	malloc
	mov	rdi, qword ptr [rsp + 0x18]
	mov	r10, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x10]
	xor	ebp, ebp
	test	rax, rax
	je	.label_419
	mov	rcx, qword ptr [rdi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rdi + 0x70], rax
	mov	dword ptr [r15], 0
	jmp	.label_426
.label_659:
	mov	edi, 0x3c8
	call	malloc
	mov	r10, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x10]
	test	rax, rax
	je	.label_255
	mov	rdx, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rdx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rdx + 0x70], rax
	mov	dword ptr [r15], 0
	xor	ecx, ecx
	jmp	.label_438
.label_382:
	mov	dword ptr [r12], 7
	jmp	.label_374
.label_514:
	call	__ctype_b_loc
	mov	rdi, qword ptr [rsp + 0x18]
	mov	r10, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r9, qword ptr [rax]
	inc	r14
.label_480:
	mov	rsi, r14
	xor	eax, eax
.label_475:
	test	byte ptr [r9 + rsi*2 - 2], 8
	je	.label_459
	mov	edx, 1
	mov	ecx, eax
	shl	rdx, cl
	or	qword ptr [rdi + rbp*8 + 0xb8], rdx
.label_459:
	cmp	esi, 0x5f
	je	.label_465
	movzx	ecx, word ptr [r9 + rsi*2]
	and	ecx, 8
	test	cx, cx
	je	.label_467
.label_465:
	lea	ecx, [rax + 1]
	mov	edx, 1
	shl	rdx, cl
	or	qword ptr [rdi + rbp*8 + 0xb8], rdx
.label_467:
	add	rax, 2
	add	rsi, 2
	cmp	rax, 0x40
	jne	.label_475
	inc	rbp
	add	r14, 0x40
	cmp	ebp, 4
	jne	.label_480
	jmp	.label_483
.label_533:
	mov	edi, 0x3c8
	call	malloc
	mov	ecx, 9
	xor	r14d, r14d
	test	rax, rax
	je	.label_489
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rdi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rdi + 0x70], rax
	mov	dword ptr [rdi + 0x80], 0
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_495
.label_619:
	mov	edi, 0x3c8
	call	malloc
	mov	ecx, 0xa
	xor	r14d, r14d
	test	rax, rax
	je	.label_489
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rdi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rdi + 0x70], rax
	mov	dword ptr [rdi + 0x80], 0
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_656
.label_680:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_255
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rdi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rdi + 0x70], rax
	mov	dword ptr [rdi + 0x80], 0
	xor	ecx, ecx
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_395
.label_255:
	mov	dword ptr [r12], 0xc
	jmp	.label_304
.label_391:
	mov	dword ptr [r12], 7
	jmp	.label_538
.label_489:
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	mov	rdi, qword ptr [rsp + 0x18]
	jmp	.label_539
.label_464:
	mov	rax, rdi
	test	rdi, rdi
	je	.label_439
	mov	r14d, 0x400ff
	mov	rcx, rax
.label_444:
	mov	rbp, rcx
	mov	rcx, qword ptr [rbp + 8]
	test	rcx, rcx
	jne	.label_444
	mov	rcx, qword ptr [rbp + 0x10]
	test	rcx, rcx
	jne	.label_444
.label_582:
	mov	eax, dword ptr [rbp + 0x30]
	and	eax, r14d
	cmp	eax, 3
	je	.label_557
	cmp	eax, 6
	jne	.label_561
	mov	rbx, qword ptr [rbp + 0x28]
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rdi, qword ptr [rbx + 8]
	call	free
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	mov	rdi, rbx
	jmp	.label_576
.label_557:
	mov	rdi, qword ptr [rbp + 0x28]
.label_576:
	call	free
.label_561:
	mov	rax, qword ptr [rbp]
	test	rax, rax
	je	.label_439
	mov	rcx, qword ptr [rax + 0x10]
	cmp	rcx, rbp
	mov	rbp, rax
	je	.label_582
	test	rcx, rcx
	mov	rbp, rax
	je	.label_582
	jmp	.label_444
.label_439:
	mov	dword ptr [r12], 8
	jmp	.label_304
.label_408:
	mov	r12, qword ptr [rsp + 0x48]
	mov	dword ptr [r12], eax
	jmp	.label_538
.label_471:
	mov	dword ptr [r12], 3
	jmp	.label_374
.label_422:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_302
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rsi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rsi + 0x70], rax
	mov	dword ptr [rsi + 0x80], 0
	xor	ecx, ecx
	mov	rbx, qword ptr [rsp + 0x20]
	jmp	.label_579
.label_302:
	mov	dword ptr [r12], 0xc
	mov	rbx, qword ptr [rsp + 0x20]
	jmp	.label_538
.label_469:
	mov	edi, OFFSET FLAT:label_606
	mov	esi, OFFSET FLAT:label_607
	mov	edx, 0xced
	mov	ecx, OFFSET FLAT:label_608
	call	__assert_fail
.label_323:
	call	free
	mov	rdi, rbp
	call	free
	mov	ecx, 0xc
	mov	rbx, qword ptr [rsp + 0x20]
.label_346:
	mov	r12, qword ptr [rsp + 0x48]
	mov	dword ptr [r12], ecx
.label_538:
	mov	r15, qword ptr [rsp + 0x30]
.label_374:
	mov	rdi, r14
	call	free
	mov	rdi, qword ptr [r15]
	call	free
	mov	rdi, qword ptr [r15 + 8]
	call	free
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
	mov	rdi, qword ptr [r15 + 0x18]
	call	free
	mov	rdi, r15
	call	free
	xor	ebp, ebp
	cmp	dword ptr [r12], 0
	mov	r15d, 0
	jmp	.label_633
.label_2555:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x417dd5
	.globl sub_417dd5
	.type sub_417dd5, @function
sub_417dd5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x417de0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_2555
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_2556
	test	rax, rax
	je	.label_2555
.label_2556:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x417e10

	.globl re_acquire_state_context
	.type re_acquire_state_context, @function
re_acquire_state_context:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r14, rsi
	mov	r12, rdi
	mov	r8, qword ptr [rdx + 8]
	test	r8, r8
	je	.label_2581
	mov	r15d, ecx
	add	r15, r8
	test	r8, r8
	jle	.label_2567
	mov	rbx, qword ptr [rdx + 0x10]
	xor	r9d, r9d
	cmp	r8, 4
	jb	.label_2589
	mov	r9, r8
	and	r9, 0xfffffffffffffffc
	je	.label_2577
	movq	xmm0, r15
	lea	rbp, [r9 - 4]
	mov	rax, rbp
	shr	rax, 2
	lea	esi, [rax + 1]
	and	esi, 3
	xor	edi, edi
	cmp	rbp, 0xc
	jae	.label_2579
	pxor	xmm1, xmm1
	jmp	.label_2583
.label_2581:
	mov	dword ptr [r12], 0
.label_2627:
	xor	r13d, r13d
	jmp	.label_2587
.label_2577:
	xor	r9d, r9d
	jmp	.label_2589
.label_2579:
	lea	rbp, [rsi - 1]
	sub	rbp, rax
	pxor	xmm1, xmm1
	xor	edi, edi
	nop	word ptr cs:[rax + rax]
.label_2594:
	movdqu	xmm2, xmmword ptr [rbx + rdi*8]
	movdqu	xmm3, xmmword ptr [rbx + rdi*8 + 0x10]
	paddq	xmm2, xmm0
	paddq	xmm3, xmm1
	movdqu	xmm0, xmmword ptr [rbx + rdi*8 + 0x20]
	movdqu	xmm1, xmmword ptr [rbx + rdi*8 + 0x30]
	movdqu	xmm4, xmmword ptr [rbx + rdi*8 + 0x40]
	movdqu	xmm5, xmmword ptr [rbx + rdi*8 + 0x50]
	paddq	xmm4, xmm0
	paddq	xmm4, xmm2
	paddq	xmm5, xmm1
	paddq	xmm5, xmm3
	movdqu	xmm0, xmmword ptr [rbx + rdi*8 + 0x60]
	movdqu	xmm1, xmmword ptr [rbx + rdi*8 + 0x70]
	paddq	xmm0, xmm4
	paddq	xmm1, xmm5
	add	rdi, 0x10
	add	rbp, 4
	jne	.label_2594
.label_2583:
	test	rsi, rsi
	je	.label_2608
	lea	rdi, [rbx + rdi*8 + 0x10]
	neg	rsi
	nop	word ptr cs:[rax + rax]
.label_2610:
	movdqu	xmm2, xmmword ptr [rdi - 0x10]
	movdqu	xmm3, xmmword ptr [rdi]
	paddq	xmm0, xmm2
	paddq	xmm1, xmm3
	add	rdi, 0x20
	inc	rsi
	jne	.label_2610
.label_2608:
	paddq	xmm0, xmm1
	pshufd	xmm1, xmm0, 0x4e
	paddq	xmm1, xmm0
	movq	r15, xmm1
	cmp	r8, r9
	je	.label_2567
.label_2589:
	mov	rsi, r8
	sub	rsi, r9
	lea	rax, [rbx + r9*8]
	nop	dword ptr [rax + rax]
.label_2616:
	add	r15, qword ptr [rax]
	add	rax, 8
	dec	rsi
	jne	.label_2616
.label_2567:
	mov	rsi, qword ptr [r14 + 0x40]
	mov	rax, qword ptr [r14 + 0x88]
	and	rax, r15
	lea	rax, [rax + rax*2]
	mov	r9, qword ptr [rsi + rax*8]
	test	r9, r9
	jle	.label_2560
	test	rdx, rdx
	je	.label_2617
	mov	r10, qword ptr [rsi + rax*8 + 0x10]
	xor	esi, esi
	nop	word ptr [rax + rax]
.label_2557:
	mov	r13, qword ptr [r10 + rsi*8]
	cmp	qword ptr [r13], r15
	jne	.label_2585
	movzx	eax, byte ptr [r13 + 0x68]
	and	eax, 0xf
	cmp	eax, ecx
	jne	.label_2585
	mov	rdi, qword ptr [r13 + 0x50]
	test	rdi, rdi
	je	.label_2585
	cmp	qword ptr [rdi + 8], r8
	jne	.label_2585
	mov	rax, r8
	nop	dword ptr [rax + rax]
.label_2634:
	test	rax, rax
	jle	.label_2587
	mov	rbp, qword ptr [rdi + 0x10]
	mov	rbp, qword ptr [rbp + rax*8 - 8]
	mov	rbx, qword ptr [rdx + 0x10]
	cmp	rbp, qword ptr [rbx + rax*8 - 8]
	lea	rax, [rax - 1]
	je	.label_2634
	nop	word ptr cs:[rax + rax]
.label_2585:
	inc	rsi
	cmp	rsi, r9
	jl	.label_2557
	jmp	.label_2560
.label_2617:
	lea	rsi, [r9 - 1]
	mov	eax, r9d
	and	eax, 7
	cmp	rsi, 7
	jb	.label_2561
	mov	rsi, rax
	sub	rsi, r9
.label_2565:
	add	rsi, 8
	jne	.label_2565
.label_2561:
	test	rax, rax
	je	.label_2560
	neg	rax
	nop	
.label_2568:
	inc	rax
	jne	.label_2568
.label_2560:
	mov	qword ptr [rsp], rdx
	mov	ebx, ecx
	mov	edi, 0x70
	mov	esi, 1
	call	rpl_calloc
	mov	r13, rax
	test	r13, r13
	je	.label_2576
	mov	qword ptr [rsp + 0x10], r14
	mov	r10, r13
	add	r10, 8
	mov	rsi, qword ptr [rsp]
	mov	rdi, qword ptr [rsi + 8]
	mov	qword ptr [r13 + 0x10], rdi
	mov	r14, qword ptr [rsi + 8]
	test	r14, r14
	mov	qword ptr [rsp + 0x18], r10
	mov	qword ptr [rsp + 0x20], r12
	jle	.label_2559
	mov	qword ptr [r13 + 8], rdi
	shl	rdi, 3
	call	malloc
	mov	qword ptr [r13 + 0x18], rax
	test	rax, rax
	je	.label_2590
	mov	rbp, qword ptr [rsp]
	mov	rsi, qword ptr [rbp + 0x10]
	shl	r14, 3
	mov	rdi, rax
	mov	rdx, r14
	call	memcpy
	mov	rsi, rbp
	mov	rdi, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 0x18]
	jmp	.label_2595
.label_2559:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r10], xmm0
	mov	qword ptr [r10 + 0x10], 0
	mov	rdi, qword ptr [rsp + 0x10]
.label_2595:
	mov	al, byte ptr [r13 + 0x68]
	mov	r9d, ebx
	mov	ecx, r9d
	and	cl, 0xf
	and	al, 0xf0
	or	al, cl
	mov	byte ptr [r13 + 0x68], al
	mov	qword ptr [r13 + 0x50], r10
	cmp	qword ptr [rsi + 8], 0
	jle	.label_2566
	mov	ecx, r9d
	mov	eax, r9d
	and	eax, 2
	and	r9d, 4
	test	cl, 1
	mov	dword ptr [rsp + 0xc], r9d
	jne	.label_2607
	xor	ebp, ebp
	xor	r8d, r8d
	test	eax, eax
	jne	.label_2570
	nop	word ptr cs:[rax + rax]
.label_2593:
	mov	rax, qword ptr [rdi]
	mov	rcx, qword ptr [rsi + 0x10]
	mov	rcx, qword ptr [rcx + rbp*8]
	shl	rcx, 4
	mov	edx, dword ptr [rax + rcx + 8]
	mov	r12d, edx
	shr	r12d, 8
	mov	ecx, r12d
	and	ecx, 0x3ff
	cmp	dl, 1
	jne	.label_2614
	test	ecx, ecx
	je	.label_2558
.label_2614:
	mov	esi, edx
	shr	esi, 0x14
	mov	bl, byte ptr [r13 + 0x68]
	mov	eax, ebx
	shr	al, 5
	movzx	eax, al
	or	eax, esi
	shl	al, 5
	and	al, 0x20
	and	bl, 0xdf
	or	bl, al
	mov	byte ptr [r13 + 0x68], bl
	cmp	dl, 2
	je	.label_2606
	cmp	dl, 4
	jne	.label_2622
	or	bl, 0x40
	jmp	.label_2624
.label_2606:
	or	bl, 0x10
.label_2624:
	mov	byte ptr [r13 + 0x68], bl
.label_2622:
	test	ecx, ecx
	je	.label_2626
	cmp	qword ptr [r13 + 0x50], r10
	jne	.label_2628
	mov	edi, 0x18
	call	malloc
	mov	r14, rax
	mov	qword ptr [r13 + 0x50], r14
	test	r14, r14
	je	.label_2582
	mov	rax, qword ptr [rsp]
	mov	rbx, qword ptr [rax + 8]
	mov	qword ptr [r14 + 8], rbx
	test	rbx, rbx
	jle	.label_2631
	mov	qword ptr [r14], rbx
	shl	rbx, 3
	mov	rdi, rbx
	call	malloc
	mov	qword ptr [r14 + 0x10], rax
	test	rax, rax
	je	.label_2592
	mov	rcx, qword ptr [rsp]
	mov	rsi, qword ptr [rcx + 0x10]
	mov	rdi, rax
	mov	rdx, rbx
	call	memcpy
	jmp	.label_2638
.label_2626:
	mov	rsi, qword ptr [rsp]
	jmp	.label_2558
.label_2631:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r14], xmm0
	mov	qword ptr [r14 + 0x10], 0
.label_2638:
	or	byte ptr [r13 + 0x68], 0x80
	xor	r8d, r8d
	mov	rdi, qword ptr [rsp + 0x10]
	mov	r9d, dword ptr [rsp + 0xc]
	mov	r10, qword ptr [rsp + 0x18]
.label_2628:
	test	r12b, 0x11
	mov	rsi, qword ptr [rsp]
	jne	.label_2569
	test	r9d, r9d
	jne	.label_2558
	and	r12d, 0x40
	je	.label_2558
.label_2569:
	mov	rax, rbp
	sub	rax, r8
	js	.label_2574
	mov	rcx, qword ptr [r13 + 0x10]
	cmp	rcx, rax
	jle	.label_2574
	dec	rcx
	mov	qword ptr [r13 + 0x10], rcx
	cmp	rcx, rax
	jle	.label_2574
	lea	rax, [rbp*8]
	add	rax, qword ptr [r13 + 0x18]
	mov	rcx, r8
	neg	rcx
	nop	word ptr cs:[rax + rax]
.label_2586:
	mov	rdx, qword ptr [rax + rcx*8 + 8]
	mov	qword ptr [rax + rcx*8], rdx
	lea	rdx, [rbp + rcx + 1]
	inc	rcx
	cmp	rdx, qword ptr [r13 + 0x10]
	jl	.label_2586
	nop	word ptr [rax + rax]
.label_2574:
	inc	r8
.label_2558:
	inc	rbp
	cmp	rbp, qword ptr [rsi + 8]
	jl	.label_2593
	jmp	.label_2566
	.section	.text
	.align	32
	#Procedure 0x4182b5
	.globl sub_4182b5
	.type sub_4182b5, @function
sub_4182b5:

	nop	word ptr cs:[rax + rax]
.label_2570:
	mov	rax, qword ptr [rdi]
	mov	rcx, qword ptr [rsi + 0x10]
	mov	rcx, qword ptr [rcx + rbp*8]
	shl	rcx, 4
	mov	edx, dword ptr [rax + rcx + 8]
	mov	r12d, edx
	shr	r12d, 8
	mov	ecx, r12d
	and	ecx, 0x3ff
	cmp	dl, 1
	jne	.label_2599
	test	ecx, ecx
	je	.label_2602
.label_2599:
	mov	esi, edx
	shr	esi, 0x14
	mov	bl, byte ptr [r13 + 0x68]
	mov	eax, ebx
	shr	al, 5
	movzx	eax, al
	or	eax, esi
	shl	al, 5
	and	al, 0x20
	and	bl, 0xdf
	or	bl, al
	mov	byte ptr [r13 + 0x68], bl
	cmp	dl, 2
	je	.label_2605
	cmp	dl, 4
	jne	.label_2635
	or	bl, 0x40
	jmp	.label_2609
.label_2605:
	or	bl, 0x10
.label_2609:
	mov	byte ptr [r13 + 0x68], bl
.label_2635:
	test	ecx, ecx
	je	.label_2611
	cmp	qword ptr [r13 + 0x50], r10
	jne	.label_2612
	mov	edi, 0x18
	call	malloc
	mov	r14, rax
	mov	qword ptr [r13 + 0x50], r14
	test	r14, r14
	je	.label_2582
	mov	rax, qword ptr [rsp]
	mov	rbx, qword ptr [rax + 8]
	mov	qword ptr [r14 + 8], rbx
	test	rbx, rbx
	jle	.label_2618
	mov	qword ptr [r14], rbx
	shl	rbx, 3
	mov	rdi, rbx
	call	malloc
	mov	qword ptr [r14 + 0x10], rax
	test	rax, rax
	je	.label_2592
	mov	rcx, qword ptr [rsp]
	mov	rsi, qword ptr [rcx + 0x10]
	mov	rdi, rax
	mov	rdx, rbx
	call	memcpy
	jmp	.label_2625
.label_2611:
	mov	rsi, qword ptr [rsp]
	jmp	.label_2602
.label_2618:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r14], xmm0
	mov	qword ptr [r14 + 0x10], 0
.label_2625:
	or	byte ptr [r13 + 0x68], 0x80
	xor	r8d, r8d
	mov	rdi, qword ptr [rsp + 0x10]
	mov	r9d, dword ptr [rsp + 0xc]
	mov	r10, qword ptr [rsp + 0x18]
.label_2612:
	test	r12b, 1
	mov	rsi, qword ptr [rsp]
	jne	.label_2632
	test	r9d, r9d
	jne	.label_2602
	and	r12d, 0x40
	je	.label_2602
.label_2632:
	mov	rax, rbp
	sub	rax, r8
	js	.label_2615
	mov	rcx, qword ptr [r13 + 0x10]
	cmp	rcx, rax
	jle	.label_2615
	dec	rcx
	mov	qword ptr [r13 + 0x10], rcx
	cmp	rcx, rax
	jle	.label_2615
	lea	rax, [rbp*8]
	add	rax, qword ptr [r13 + 0x18]
	mov	rcx, r8
	neg	rcx
	nop	word ptr cs:[rax + rax]
.label_2562:
	mov	rdx, qword ptr [rax + rcx*8 + 8]
	mov	qword ptr [rax + rcx*8], rdx
	lea	rdx, [rbp + rcx + 1]
	inc	rcx
	cmp	rdx, qword ptr [r13 + 0x10]
	jl	.label_2562
	nop	word ptr [rax + rax]
.label_2615:
	inc	r8
.label_2602:
	inc	rbp
	cmp	rbp, qword ptr [rsi + 8]
	jl	.label_2570
	jmp	.label_2566
.label_2607:
	test	eax, eax
	jne	.label_2573
	xor	ebp, ebp
	xor	r8d, r8d
	nop	word ptr cs:[rax + rax]
.label_2633:
	mov	rax, qword ptr [rdi]
	mov	rcx, qword ptr [rsi + 0x10]
	mov	rcx, qword ptr [rcx + rbp*8]
	shl	rcx, 4
	mov	edx, dword ptr [rax + rcx + 8]
	mov	r12d, edx
	shr	r12d, 8
	mov	ecx, r12d
	and	ecx, 0x3ff
	cmp	dl, 1
	jne	.label_2580
	test	ecx, ecx
	je	.label_2588
.label_2580:
	mov	esi, edx
	shr	esi, 0x14
	mov	bl, byte ptr [r13 + 0x68]
	mov	eax, ebx
	shr	al, 5
	movzx	eax, al
	or	eax, esi
	shl	al, 5
	and	al, 0x20
	and	bl, 0xdf
	or	bl, al
	mov	byte ptr [r13 + 0x68], bl
	cmp	dl, 2
	je	.label_2591
	cmp	dl, 4
	jne	.label_2596
	or	bl, 0x40
	jmp	.label_2598
.label_2591:
	or	bl, 0x10
.label_2598:
	mov	byte ptr [r13 + 0x68], bl
.label_2596:
	test	ecx, ecx
	je	.label_2600
	cmp	qword ptr [r13 + 0x50], r10
	jne	.label_2601
	mov	edi, 0x18
	call	malloc
	mov	r14, rax
	mov	qword ptr [r13 + 0x50], r14
	test	r14, r14
	je	.label_2582
	mov	rax, qword ptr [rsp]
	mov	rbx, qword ptr [rax + 8]
	mov	qword ptr [r14 + 8], rbx
	test	rbx, rbx
	jle	.label_2604
	mov	qword ptr [r14], rbx
	shl	rbx, 3
	mov	rdi, rbx
	call	malloc
	mov	qword ptr [r14 + 0x10], rax
	test	rax, rax
	je	.label_2592
	mov	rcx, qword ptr [rsp]
	mov	rsi, qword ptr [rcx + 0x10]
	mov	rdi, rax
	mov	rdx, rbx
	call	memcpy
	jmp	.label_2613
.label_2600:
	mov	rsi, qword ptr [rsp]
	jmp	.label_2588
.label_2604:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r14], xmm0
	mov	qword ptr [r14 + 0x10], 0
.label_2613:
	or	byte ptr [r13 + 0x68], 0x80
	xor	r8d, r8d
	mov	rdi, qword ptr [rsp + 0x10]
	mov	r9d, dword ptr [rsp + 0xc]
	mov	r10, qword ptr [rsp + 0x18]
.label_2601:
	test	r12b, 0x12
	mov	rsi, qword ptr [rsp]
	jne	.label_2620
	test	r9d, r9d
	jne	.label_2588
	and	r12d, 0x40
	je	.label_2588
.label_2620:
	mov	rax, rbp
	sub	rax, r8
	js	.label_2621
	mov	rcx, qword ptr [r13 + 0x10]
	cmp	rcx, rax
	jle	.label_2621
	dec	rcx
	mov	qword ptr [r13 + 0x10], rcx
	cmp	rcx, rax
	jle	.label_2621
	lea	rax, [rbp*8]
	add	rax, qword ptr [r13 + 0x18]
	mov	rcx, r8
	neg	rcx
	nop	word ptr cs:[rax + rax]
.label_2629:
	mov	rdx, qword ptr [rax + rcx*8 + 8]
	mov	qword ptr [rax + rcx*8], rdx
	lea	rdx, [rbp + rcx + 1]
	inc	rcx
	cmp	rdx, qword ptr [r13 + 0x10]
	jl	.label_2629
	nop	word ptr [rax + rax]
.label_2621:
	inc	r8
.label_2588:
	inc	rbp
	cmp	rbp, qword ptr [rsi + 8]
	jl	.label_2633
	jmp	.label_2566
.label_2573:
	xor	r12d, r12d
	xor	r8d, r8d
	nop	dword ptr [rax + rax]
.label_2619:
	mov	rcx, qword ptr [rdi]
	mov	rdx, qword ptr [rsi + 0x10]
	mov	rdx, qword ptr [rdx + r12*8]
	shl	rdx, 4
	mov	edx, dword ptr [rcx + rdx + 8]
	mov	ebp, edx
	shr	ebp, 8
	mov	ecx, ebp
	and	ecx, 0x3ff
	cmp	dl, 1
	jne	.label_2637
	test	ecx, ecx
	je	.label_2563
.label_2637:
	mov	esi, edx
	shr	esi, 0x14
	mov	al, byte ptr [r13 + 0x68]
	mov	ebx, eax
	shr	bl, 5
	movzx	ebx, bl
	or	ebx, esi
	shl	bl, 5
	and	bl, 0x20
	and	al, 0xdf
	or	al, bl
	mov	byte ptr [r13 + 0x68], al
	cmp	dl, 4
	je	.label_2564
	cmp	dl, 2
	jne	.label_2572
	or	al, 0x10
	jmp	.label_2575
.label_2564:
	or	al, 0x40
.label_2575:
	mov	byte ptr [r13 + 0x68], al
.label_2572:
	test	ecx, ecx
	je	.label_2578
	cmp	qword ptr [r13 + 0x50], r10
	jne	.label_2636
	mov	edi, 0x18
	call	malloc
	mov	r14, rax
	mov	qword ptr [r13 + 0x50], r14
	test	r14, r14
	je	.label_2582
	mov	rax, qword ptr [rsp]
	mov	rbx, qword ptr [rax + 8]
	mov	qword ptr [r14 + 8], rbx
	test	rbx, rbx
	jle	.label_2584
	mov	qword ptr [r14], rbx
	shl	rbx, 3
	mov	rdi, rbx
	call	malloc
	mov	qword ptr [r14 + 0x10], rax
	test	rax, rax
	je	.label_2592
	mov	rcx, qword ptr [rsp]
	mov	rsi, qword ptr [rcx + 0x10]
	mov	rdi, rax
	mov	rdx, rbx
	call	memcpy
	jmp	.label_2597
.label_2578:
	mov	rsi, qword ptr [rsp]
	jmp	.label_2563
.label_2584:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r14], xmm0
	mov	qword ptr [r14 + 0x10], 0
.label_2597:
	or	byte ptr [r13 + 0x68], 0x80
	xor	r8d, r8d
	mov	rdi, qword ptr [rsp + 0x10]
	mov	r9d, dword ptr [rsp + 0xc]
	mov	r10, qword ptr [rsp + 0x18]
.label_2636:
	test	bpl, 2
	mov	rsi, qword ptr [rsp]
	jne	.label_2603
	test	r9d, r9d
	jne	.label_2563
	and	ebp, 0x40
	je	.label_2563
.label_2603:
	mov	rcx, r12
	sub	rcx, r8
	js	.label_2571
	mov	rdx, qword ptr [r13 + 0x10]
	cmp	rdx, rcx
	jle	.label_2571
	dec	rdx
	mov	qword ptr [r13 + 0x10], rdx
	cmp	rdx, rcx
	jle	.label_2571
	lea	rcx, [r12*8]
	add	rcx, qword ptr [r13 + 0x18]
	mov	rdx, r8
	neg	rdx
.label_2630:
	mov	rax, qword ptr [rcx + rdx*8 + 8]
	mov	qword ptr [rcx + rdx*8], rax
	lea	rax, [r12 + rdx + 1]
	inc	rdx
	cmp	rax, qword ptr [r13 + 0x10]
	jl	.label_2630
	nop	word ptr [rax + rax]
.label_2571:
	inc	r8
.label_2563:
	inc	r12
	cmp	r12, qword ptr [rsi + 8]
	jl	.label_2619
.label_2566:
	mov	rsi, r13
	mov	rdx, r15
	call	register_state
	test	eax, eax
	jne	.label_2582
.label_2587:
	mov	rax, r13
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2582:
	mov	rdi, r13
	call	free_state
	jmp	.label_2623
.label_2592:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r14], xmm0
.label_2623:
	mov	r12, qword ptr [rsp + 0x20]
.label_2576:
	mov	dword ptr [r12], 0xc
	jmp	.label_2627
.label_2590:
	mov	rdi, r13
	call	free
	jmp	.label_2576
	.section	.text
	.align	32
	#Procedure 0x4187b0

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	mov	edi, 1
	jmp	usage
	.section	.text
	.align	32
	#Procedure 0x4187ba
	.globl sub_4187ba
	.type sub_4187ba, @function
sub_4187ba:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4187c0

	.globl build_trtable
	.type build_trtable, @function
build_trtable:
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xb8
	mov	r13, rsi
	mov	qword ptr [rbp - 0x70], rdi
	mov	edi, 0x3800
	call	malloc
	mov	r12, rax
	test	r12, r12
	je	.label_2719
	lea	rax, [r13 + 0x58]
	mov	qword ptr [rbp - 0xd0], rax
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r13 + 0x58], xmm0
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	movdqa	xmmword ptr [rbp - 0x60], xmm0
	xor	r14d, r14d
	cmp	qword ptr [r13 + 0x10], 0
	jle	.label_2725
	lea	rax, [r12 + 0x1800]
	mov	qword ptr [rbp - 0xa8], rax
	lea	rax, [r12 + 0x1818]
	mov	qword ptr [rbp - 0xd8], rax
	xor	r15d, r15d
	mov	qword ptr [rbp - 0x80], r12
	mov	qword ptr [rbp - 0xc0], r13
	nop	word ptr [rax + rax]
.label_2754:
	mov	rax, qword ptr [r13 + 0x18]
	mov	rsi, qword ptr [rax + r14*8]
	mov	rax, qword ptr [rbp - 0x70]
	mov	rdi, qword ptr [rax]
	shl	rsi, 4
	lea	r8, [rdi + rsi]
	mov	edx, dword ptr [rdi + rsi + 8]
	movzx	eax, dl
	cmp	eax, 1
	jne	.label_2761
	mov	cl, byte ptr [r8]
	mov	ebx, 1
	shl	rbx, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [rbp + rcx*8 - 0x60], rbx
	jmp	.label_2672
	.section	.text
	.align	32
	#Procedure 0x41888e
	.globl sub_41888e
	.type sub_41888e, @function
sub_41888e:

	nop	
.label_2761:
	cmp	dl, 7
	je	.label_2682
	cmp	dl, 5
	je	.label_2684
	cmp	dl, 3
	jne	.label_2644
	mov	rcx, qword ptr [r8]
	movups	xmm0, xmmword ptr [rcx]
	orps	xmm0, xmmword ptr [rbp - 0x60]
	movaps	xmmword ptr [rbp - 0x60], xmm0
	movdqu	xmm0, xmmword ptr [rcx + 0x10]
	por	xmm0, xmmword ptr [rbp - 0x50]
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	jmp	.label_2672
.label_2682:
	pcmpeqd	xmm0, xmm0
	movdqa	xmmword ptr [rbp - 0x60], xmm0
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rcx + 0xd8]
	mov	rbx, -2
	test	cl, 0x40
	jne	.label_2700
	mov	qword ptr [rbp - 0x60], -0x401
	mov	rbx, -0x402
.label_2700:
	test	cl, cl
	jns	.label_2672
	mov	qword ptr [rbp - 0x60], rbx
	jmp	.label_2672
.label_2684:
	mov	rbx, qword ptr [rbp - 0x70]
	cmp	dword ptr [rbx + 0xb4], 2
	jl	.label_2712
	mov	rcx, qword ptr [rbx + 0x78]
	movdqu	xmm0, xmmword ptr [rcx]
	por	xmm0, xmmword ptr [rbp - 0x60]
	movdqa	xmmword ptr [rbp - 0x60], xmm0
	movdqu	xmm1, xmmword ptr [rcx + 0x10]
	por	xmm1, xmmword ptr [rbp - 0x50]
	movdqa	xmmword ptr [rbp - 0x50], xmm1
	movq	rcx, xmm0
	jmp	.label_2715
.label_2712:
	pcmpeqd	xmm0, xmm0
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	movdqa	xmmword ptr [rbp - 0x60], xmm0
	mov	rcx, -1
.label_2715:
	mov	rbx, qword ptr [rbx + 0xd8]
	test	bl, 0x40
	jne	.label_2731
	and	rcx, 0xfffffffffffffbff
	mov	qword ptr [rbp - 0x60], rcx
.label_2731:
	test	bl, bl
	jns	.label_2672
	and	rcx, 0xfffffffffffffffe
	mov	qword ptr [rbp - 0x60], rcx
	nop	dword ptr [rax + rax]
.label_2672:
	shr	edx, 8
	mov	ecx, edx
	and	ecx, 0x3ff
	je	.label_2690
	test	dl, 0x20
	je	.label_2737
	mov	rcx, qword ptr [rbp - 0x60]
	test	ch, 4
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	movdqa	xmmword ptr [rbp - 0x60], xmm0
	je	.label_2644
	mov	qword ptr [rbp - 0x60], 0x400
.label_2737:
	test	dl, dl
	js	.label_2693
	lea	rcx, [rdi + rsi + 8]
	test	dl, 4
	je	.label_2649
	cmp	eax, 1
	jne	.label_2752
	test	byte ptr [rcx + 2], 0x40
	je	.label_2693
.label_2752:
	mov	r9, r8
	mov	rsi, qword ptr [rbp - 0x70]
	cmp	dword ptr [rsi + 0xb4], 1
	jle	.label_2755
	mov	rdi, rsi
	mov	rsi, qword ptr [rdi + 0x78]
	movdqu	xmm0, xmmword ptr [rdi + 0xb8]
	movdqu	xmm1, xmmword ptr [rsi]
	pcmpeqd	xmm2, xmm2
	pxor	xmm1, xmm2
	por	xmm1, xmm0
	pand	xmm1, xmmword ptr [rbp - 0x60]
	movdqa	xmmword ptr [rbp - 0x60], xmm1
	movq	r8, xmm1
	pshufd	xmm0, xmm1, 0x4e
	movq	rbx, xmm0
	movdqu	xmm0, xmmword ptr [rdi + 0xc8]
	movdqu	xmm1, xmmword ptr [rsi + 0x10]
	pxor	xmm1, xmm2
	por	xmm1, xmm0
	pand	xmm1, xmmword ptr [rbp - 0x50]
	movq	rdi, xmm1
	or	rdi, r8
	or	rdi, rbx
	movdqa	xmmword ptr [rbp - 0x50], xmm1
	pshufd	xmm0, xmm1, 0x4e
	movq	rsi, xmm0
	or	rsi, rdi
	jmp	.label_2759
.label_2755:
	movdqu	xmm0, xmmword ptr [rsi + 0xb8]
	pand	xmm0, xmmword ptr [rbp - 0x60]
	movdqa	xmmword ptr [rbp - 0x60], xmm0
	movq	r8, xmm0
	pshufd	xmm0, xmm0, 0x4e
	movq	rdi, xmm0
	movdqu	xmm0, xmmword ptr [rsi + 0xc8]
	pand	xmm0, xmmword ptr [rbp - 0x50]
	movq	rbx, xmm0
	or	rbx, r8
	or	rbx, rdi
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	pshufd	xmm0, xmm0, 0x4e
	movq	rsi, xmm0
	or	rsi, rbx
.label_2759:
	test	rsi, rsi
	mov	r8, r9
	je	.label_2644
.label_2649:
	test	dl, 8
	je	.label_2690
	cmp	eax, 1
	jne	.label_2646
	test	byte ptr [rcx + 2], 0x40
	jne	.label_2693
.label_2646:
	mov	rsi, qword ptr [rbp - 0x70]
	cmp	dword ptr [rsi + 0xb4], 1
	jle	.label_2667
	mov	rcx, qword ptr [rsi + 0x78]
	movdqu	xmm0, xmmword ptr [rsi + 0xb8]
	movdqu	xmm1, xmmword ptr [rcx]
	pand	xmm1, xmm0
	pandn	xmm1, xmmword ptr [rbp - 0x60]
	movdqa	xmmword ptr [rbp - 0x60], xmm1
	movq	rdx, xmm1
	pshufd	xmm0, xmm1, 0x4e
	mov	rdi, rsi
	movq	rsi, xmm0
	movdqu	xmm0, xmmword ptr [rdi + 0xc8]
	movdqu	xmm1, xmmword ptr [rcx + 0x10]
	pand	xmm1, xmm0
	pandn	xmm1, xmmword ptr [rbp - 0x50]
	movq	rdi, xmm1
	or	rdi, rdx
	or	rdi, rsi
	movdqa	xmmword ptr [rbp - 0x50], xmm1
	pshufd	xmm0, xmm1, 0x4e
	movq	rcx, xmm0
	or	rcx, rdi
	jmp	.label_2701
	.section	.text
	.align	32
	#Procedure 0x418b2c
	.globl sub_418b2c
	.type sub_418b2c, @function
sub_418b2c:

	nop	dword ptr [rax]
.label_2693:
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	movdqa	xmmword ptr [rbp - 0x60], xmm0
	jmp	.label_2644
.label_2667:
	movdqu	xmm0, xmmword ptr [rsi + 0xb8]
	pandn	xmm0, xmmword ptr [rbp - 0x60]
	movdqa	xmmword ptr [rbp - 0x60], xmm0
	movq	rcx, xmm0
	pshufd	xmm0, xmm0, 0x4e
	movq	rdx, xmm0
	movdqu	xmm0, xmmword ptr [rsi + 0xc8]
	pandn	xmm0, xmmword ptr [rbp - 0x50]
	movq	rsi, xmm0
	or	rsi, rcx
	or	rsi, rdx
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	pshufd	xmm0, xmm0, 0x4e
	movq	rcx, xmm0
	or	rcx, rsi
.label_2701:
	test	rcx, rcx
	je	.label_2644
	nop	word ptr [rax + rax]
.label_2690:
	test	r15, r15
	mov	qword ptr [rbp - 0x90], r14
	jle	.label_2742
	cmp	eax, 1
	jne	.label_2746
	mov	rbx, qword ptr [rbp - 0xa8]
	mov	rsi, r12
	xor	edi, edi
	mov	qword ptr [rbp - 0xc8], r8
	jmp	.label_2726
.label_2742:
	xor	edi, edi
	jmp	.label_2688
.label_2746:
	mov	r9, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x58]
	mov	r11, qword ptr [rbp - 0x50]
	mov	r14, qword ptr [rbp - 0x48]
	mov	rbx, qword ptr [rbp - 0xd8]
	mov	qword ptr [rbp - 0x38], r12
	xor	edi, edi
	jmp	.label_2679
.label_2653:
	mov	rdi, qword ptr [rbp - 0x68]
	mov	rsi, qword ptr [rbp - 0x98]
	mov	r11, qword ptr [rbp - 0xb8]
	mov	r9, r14
	jmp	.label_2642
.label_2739:
	pxor	xmm0, xmm0
	mov	rax, qword ptr [rbp - 0xb0]
	movdqu	xmmword ptr [rax], xmm0
	mov	r13d, 0x1a
	mov	r15, qword ptr [rbp - 0x30]
	mov	rdi, qword ptr [rbp - 0x68]
	mov	r9, qword ptr [rbp - 0xa0]
	mov	rsi, qword ptr [rbp - 0x98]
	mov	r11, qword ptr [rbp - 0xb8]
	jmp	.label_2642
.label_2679:
	mov	qword ptr [rbp - 0x30], r15
	mov	qword ptr [rbp - 0x68], rdi
	mov	rdx, qword ptr [rbx - 0x18]
	mov	rax, qword ptr [rbx - 0x10]
	mov	rdi, rdx
	and	rdi, r9
	mov	r8, rax
	and	r8, rsi
	mov	rcx, r8
	mov	qword ptr [rbp - 0xb0], rdi
	or	rcx, rdi
	mov	r10, qword ptr [rbx - 8]
	mov	r15, r10
	and	r15, r11
	or	rcx, r15
	mov	qword ptr [rbp - 0x88], rbx
	mov	rdi, qword ptr [rbx]
	mov	r12, r11
	mov	r11, rdi
	and	r11, r14
	mov	r13d, 0x13
	or	rcx, r11
	je	.label_2659
	mov	rcx, r9
	not	rcx
	and	rcx, rdx
	not	rdx
	and	r9, rdx
	mov	qword ptr [rbp - 0xa0], r9
	mov	qword ptr [rbp - 0x60], r9
	mov	rbx, rsi
	not	rbx
	and	rbx, rax
	mov	rdx, rbx
	or	rdx, rcx
	not	rax
	and	rsi, rax
	mov	qword ptr [rbp - 0x98], rsi
	mov	qword ptr [rbp - 0x58], rsi
	mov	rax, r12
	not	rax
	and	rax, r10
	or	rdx, rax
	not	r10
	and	r12, r10
	mov	qword ptr [rbp - 0xb8], r12
	mov	qword ptr [rbp - 0x50], r12
	mov	rsi, r14
	not	rsi
	and	rsi, rdi
	not	rdi
	and	r14, rdi
	mov	qword ptr [rbp - 0x48], r14
	or	rdx, rsi
	mov	r12, r14
	je	.label_2686
	mov	r10, qword ptr [rbp - 0x30]
	mov	rdx, r10
	shl	rdx, 5
	mov	rdi, qword ptr [rbp - 0xa8]
	mov	qword ptr [rdi + rdx], rcx
	mov	qword ptr [rdi + rdx + 8], rbx
	mov	qword ptr [rdi + rdx + 0x10], rax
	mov	qword ptr [rdi + rdx + 0x18], rsi
	mov	rbx, qword ptr [rbp - 0x88]
	mov	rax, qword ptr [rbp - 0xb0]
	mov	qword ptr [rbx - 0x18], rax
	mov	qword ptr [rbx - 0x10], r8
	mov	qword ptr [rbx - 8], r15
	mov	qword ptr [rbx], r11
	lea	r14, [r10 + r10*2]
	mov	r13, qword ptr [rbp - 0x80]
	lea	rcx, [r13 + r14*8]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rax + 8]
	mov	qword ptr [r13 + r14*8 + 8], rdi
	mov	r15, qword ptr [rax + 8]
	test	r15, r15
	jle	.label_2717
	mov	qword ptr [rbp - 0xb0], rcx
	mov	qword ptr [rcx], rdi
	shl	rdi, 3
	call	malloc
	mov	qword ptr [r13 + r14*8 + 0x10], rax
	test	rax, rax
	je	.label_2739
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rcx + 0x10]
	shl	r15, 3
	mov	rdi, rax
	mov	rdx, r15
	call	memcpy
	jmp	.label_2747
	.section	.text
	.align	32
	#Procedure 0x418db1
	.globl sub_418db1
	.type sub_418db1, @function
sub_418db1:

	nop	word ptr cs:[rax + rax]
.label_2659:
	mov	rdi, qword ptr [rbp - 0x68]
	mov	r15, qword ptr [rbp - 0x30]
	mov	r11, r12
	mov	r12, r14
	mov	rbx, qword ptr [rbp - 0x88]
	jmp	.label_2642
	.section	.text
	.align	32
	#Procedure 0x418dda
	.globl sub_418dda
	.type sub_418dda, @function
sub_418dda:

	nop	word ptr [rax + rax]
.label_2686:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	r14, qword ptr [rbp - 0xa0]
	mov	r15, qword ptr [rbp - 0x30]
	mov	rbx, qword ptr [rbp - 0x88]
	jmp	.label_2760
.label_2717:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rcx], xmm0
	mov	qword ptr [rcx + 0x10], 0
.label_2747:
	mov	r14, qword ptr [rbp - 0xa0]
	mov	r15, qword ptr [rbp - 0x30]
	inc	r15
	mov	rax, qword ptr [rbp - 0xc0]
.label_2760:
	mov	rax, qword ptr [rax + 0x18]
	mov	rcx, qword ptr [rbp - 0x90]
	mov	rsi, qword ptr [rax + rcx*8]
	mov	rdi, qword ptr [rbp - 0x38]
	call	re_node_set_insert
	mov	r13d, 0x1a
	test	al, al
	je	.label_2653
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rax, rsi
	mov	r9, r14
	or	rax, r9
	mov	r11, qword ptr [rbp - 0xb8]
	mov	rcx, r11
	or	rcx, r12
	or	rcx, rax
	mov	r13d, 0
	mov	eax, 0x11
	cmove	r13d, eax
	mov	rdi, qword ptr [rbp - 0x68]
.label_2642:
	mov	eax, r13d
	and	al, 0x1f
	je	.label_2675
	cmp	al, 0x13
	jne	.label_2677
.label_2675:
	mov	r14, r12
	inc	rdi
	add	qword ptr [rbp - 0x38], 0x18
	add	rbx, 0x20
	cmp	rdi, r15
	jl	.label_2679
	jmp	.label_2688
.label_2670:
	pxor	xmm0, xmm0
	mov	rax, qword ptr [rbp - 0xa0]
	movdqu	xmmword ptr [rax], xmm0
	mov	r13d, 0x1a
	mov	r15, qword ptr [rbp - 0x30]
	mov	r8, qword ptr [rbp - 0xc8]
	mov	rdi, qword ptr [rbp - 0x68]
	mov	rsi, qword ptr [rbp - 0x38]
	jmp	.label_2689
	.section	.text
	.align	32
	#Procedure 0x418ed2
	.globl sub_418ed2
	.type sub_418ed2, @function
sub_418ed2:

	nop	word ptr cs:[rax + rax]
.label_2726:
	movzx	eax, byte ptr [r8]
	mov	ecx, eax
	shr	cl, 6
	movzx	ecx, cl
	mov	rdx, qword ptr [rbx + rcx*8]
	mov	r13d, 0x13
	bt	rdx, rax
	jae	.label_2689
	mov	qword ptr [rbp - 0x38], rsi
	mov	qword ptr [rbp - 0x30], r15
	mov	rdx, qword ptr [rbp - 0x60]
	mov	r11, qword ptr [rbp - 0x58]
	mov	r9, qword ptr [rbx]
	mov	rcx, qword ptr [rbx + 8]
	mov	rax, r9
	and	rax, rdx
	mov	rsi, rcx
	and	rsi, r11
	mov	qword ptr [rbp - 0xa0], rsi
	mov	qword ptr [rbp - 0xb0], rax
	or	rsi, rax
	mov	rax, qword ptr [rbp - 0x50]
	mov	r12, qword ptr [rbx + 0x10]
	mov	r15, r12
	mov	qword ptr [rbp - 0x88], rax
	and	r15, rax
	or	rsi, r15
	mov	rax, qword ptr [rbp - 0x48]
	mov	r14, qword ptr [rbx + 0x18]
	mov	r10, r14
	and	r10, rax
	or	rsi, r10
	je	.label_2713
	mov	qword ptr [rbp - 0x68], rdi
	mov	rsi, rcx
	mov	rcx, rdx
	not	rcx
	and	rcx, r9
	not	r9
	and	r9, rdx
	mov	qword ptr [rbp - 0xb8], r9
	mov	qword ptr [rbp - 0x60], r9
	mov	r8, r11
	not	r8
	and	r8, rsi
	mov	rdx, r8
	or	rdx, rcx
	not	rsi
	and	rsi, r11
	mov	qword ptr [rbp - 0x98], rsi
	mov	qword ptr [rbp - 0x58], rsi
	mov	rdi, rax
	mov	rsi, qword ptr [rbp - 0x88]
	mov	rax, rsi
	not	rax
	and	rax, r12
	or	rdx, rax
	not	r12
	and	r12, rsi
	mov	qword ptr [rbp - 0x50], r12
	mov	rsi, rdi
	not	rsi
	and	rsi, r14
	not	r14
	and	r14, rdi
	mov	qword ptr [rbp - 0x48], r14
	or	rdx, rsi
	mov	qword ptr [rbp - 0x88], r14
	je	.label_2662
	mov	r11, qword ptr [rbp - 0x30]
	mov	rdx, r11
	shl	rdx, 5
	mov	rdi, qword ptr [rbp - 0xa8]
	mov	qword ptr [rdi + rdx], rcx
	mov	qword ptr [rdi + rdx + 8], r8
	mov	qword ptr [rdi + rdx + 0x10], rax
	mov	qword ptr [rdi + rdx + 0x18], rsi
	mov	rax, qword ptr [rbp - 0xb0]
	mov	qword ptr [rbx], rax
	mov	rax, qword ptr [rbp - 0xa0]
	mov	qword ptr [rbx + 8], rax
	mov	qword ptr [rbx + 0x10], r15
	mov	qword ptr [rbx + 0x18], r10
	lea	r15, [r11 + r11*2]
	mov	r13, qword ptr [rbp - 0x80]
	lea	rcx, [r13 + r15*8]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rax + 8]
	mov	qword ptr [r13 + r15*8 + 8], rdi
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jle	.label_2664
	mov	qword ptr [rbp - 0xb0], rax
	mov	qword ptr [rbp - 0xa0], rcx
	mov	qword ptr [rcx], rdi
	shl	rdi, 3
	call	malloc
	mov	qword ptr [r13 + r15*8 + 0x10], rax
	test	rax, rax
	mov	r14, qword ptr [rbp - 0x90]
	je	.label_2670
	mov	r15, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [r15 + 0x10]
	mov	rdx, qword ptr [rbp - 0xb0]
	shl	rdx, 3
	mov	rdi, rax
	call	memcpy
	inc	qword ptr [rbp - 0x30]
	jmp	.label_2685
	.section	.text
	.align	32
	#Procedure 0x41909c
	.globl sub_41909c
	.type sub_41909c, @function
sub_41909c:

	nop	dword ptr [rax]
.label_2713:
	mov	r15, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x38]
	jmp	.label_2689
.label_2664:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rcx], xmm0
	mov	qword ptr [rcx + 0x10], 0
	inc	r11
	mov	qword ptr [rbp - 0x30], r11
.label_2662:
	mov	r14, qword ptr [rbp - 0x90]
	mov	r15, qword ptr [rbp - 0x38]
.label_2685:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rax, qword ptr [rax + 0x18]
	mov	rsi, qword ptr [rax + r14*8]
	mov	rdi, r15
	call	re_node_set_insert
	mov	r13d, 0x1a
	test	al, al
	mov	rsi, r15
	je	.label_2707
	mov	rax, qword ptr [rbp - 0x98]
	or	rax, qword ptr [rbp - 0xb8]
	or	r12, qword ptr [rbp - 0x88]
	or	r12, rax
	mov	r13d, 0
	mov	eax, 0x11
	cmove	r13d, eax
.label_2707:
	mov	r8, qword ptr [rbp - 0xc8]
	mov	rdi, qword ptr [rbp - 0x68]
	mov	r15, qword ptr [rbp - 0x30]
.label_2689:
	mov	eax, r13d
	and	al, 0x1f
	je	.label_2722
	cmp	al, 0x13
	jne	.label_2677
.label_2722:
	inc	rdi
	add	rsi, 0x18
	add	rbx, 0x20
	cmp	rdi, r15
	jl	.label_2726
	jmp	.label_2688
.label_2677:
	cmp	al, 0x11
	jne	.label_2730
	nop	
.label_2688:
	cmp	rdi, r15
	mov	r12, qword ptr [rbp - 0x80]
	mov	r13, qword ptr [rbp - 0xc0]
	mov	r14, qword ptr [rbp - 0x90]
	jne	.label_2644
	mov	rax, rdi
	shl	rax, 5
	movaps	xmm0, xmmword ptr [rbp - 0x60]
	movdqa	xmm1, xmmword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa8]
	movdqu	xmmword ptr [rcx + rax + 0x10], xmm1
	movups	xmmword ptr [rcx + rax], xmm0
	lea	r15, [rdi + rdi*2]
	mov	rax, qword ptr [r13 + 0x18]
	mov	r14, qword ptr [rax + r14*8]
	movdqa	xmm0, xmmword ptr [rip + label_37]
	movdqu	xmmword ptr [r12 + r15*8], xmm0
	mov	rbx, rdi
	mov	edi, 8
	call	malloc
	mov	qword ptr [r12 + r15*8 + 0x10], rax
	test	rax, rax
	je	.label_2748
	mov	qword ptr [rax], r14
	inc	rbx
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	movdqa	xmmword ptr [rbp - 0x60], xmm0
	mov	r15, rbx
	jmp	.label_2753
.label_2730:
	and	r13b, 0x1f
	jne	.label_2758
	mov	r12, qword ptr [rbp - 0x80]
	mov	r13, qword ptr [rbp - 0xc0]
.label_2753:
	mov	r14, qword ptr [rbp - 0x90]
.label_2644:
	inc	r14
	cmp	r14, qword ptr [r13 + 0x10]
	jl	.label_2754
	test	r15, r15
	jle	.label_2641
.label_2720:
	lea	rax, [r15 + 1]
	mov	qword ptr [rbp - 0x60], rax
	mov	qword ptr [rbp - 0x58], 0
	lea	rdi, [r15*8 + 8]
	call	malloc
	mov	qword ptr [rbp - 0x50], rax
	mov	ecx, 0xc
	test	rax, rax
	je	.label_2650
	xor	ecx, ecx
.label_2650:
	mov	dword ptr [rbp - 0x74], ecx
	movabs	rcx, 0xaaaaaaaaaaaa855
	cmp	r15, rcx
	mov	rsi, qword ptr [rbp - 0x70]
	ja	.label_2654
	test	rax, rax
	je	.label_2654
	lea	rax, [r15*8]
	lea	rdi, [rax + rax*2]
	lea	rax, [rax + rax*2 + 0x3800]
	cmp	rax, 0xfbf
	ja	.label_2666
	mov	rax, rsp
	add	rdi, 0xf
	and	rdi, 0xfffffffffffffff0
	sub	rax, rdi
	mov	rsp, rax
	mov	dword ptr [rbp - 0xb8], 0
	jmp	.label_2674
.label_2666:
	call	malloc
	mov	rsi, qword ptr [rbp - 0x70]
	test	rax, rax
	je	.label_2654
	mov	cl, 1
	mov	dword ptr [rbp - 0xb8], ecx
.label_2674:
	mov	qword ptr [rbp - 0x38], rax
	lea	rax, [rax + r15*8]
	mov	qword ptr [rbp - 0x30], r15
	mov	qword ptr [rbp - 0xb0], rax
	lea	rax, [rax + r15*8]
	mov	qword ptr [rbp - 0xa0], rax
	xor	eax, eax
	mov	qword ptr [rbp - 0x88], rax
	lea	rbx, [rbp - 0x60]
	xor	eax, eax
	mov	qword ptr [rbp - 0x90], rax
	xor	r15d, r15d
	xor	eax, eax
	mov	qword ptr [rbp - 0x68], rax
	xor	r13d, r13d
	xor	eax, eax
	mov	qword ptr [rbp - 0x98], rax
	nop	dword ptr [rax + rax]
.label_2669:
	mov	qword ptr [rbp - 0x58], 0
	lea	rcx, [r13 + r13*2]
	mov	rax, qword ptr [r12 + rcx*8 + 8]
	test	rax, rax
	jle	.label_2640
	mov	rdx, qword ptr [rbp - 0x80]
	lea	r14, [rdx + rcx*8 + 8]
	xor	r12d, r12d
	nop	word ptr cs:[rax + rax]
.label_2680:
	mov	rcx, qword ptr [r14 + 8]
	mov	rcx, qword ptr [rcx + r12*8]
	mov	rdx, qword ptr [rsi + 0x18]
	mov	rcx, qword ptr [rdx + rcx*8]
	cmp	rcx, -1
	je	.label_2658
	mov	rax, qword ptr [rsi + 0x30]
	lea	rcx, [rcx + rcx*2]
	lea	rsi, [rax + rcx*8]
	mov	rdi, rbx
	call	re_node_set_merge
	mov	dword ptr [rbp - 0x74], eax
	test	eax, eax
	jne	.label_2661
	mov	rax, qword ptr [r14]
	mov	rsi, qword ptr [rbp - 0x70]
.label_2658:
	inc	r12
	cmp	r12, rax
	jl	.label_2680
.label_2640:
	xor	ecx, ecx
	lea	rdi, [rbp - 0x74]
	mov	rdx, rbx
	call	re_acquire_state_context
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + r13*8], rax
	test	rax, rax
	jne	.label_2738
	mov	ecx, dword ptr [rbp - 0x74]
	test	ecx, ecx
	jne	.label_2661
.label_2738:
	cmp	byte ptr [rax + 0x68], 0
	js	.label_2741
	mov	rcx, qword ptr [rbp - 0xb0]
	mov	qword ptr [rcx + r13*8], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + r13*8]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	qword ptr [rcx + r13*8], rax
	jmp	.label_2660
	.section	.text
	.align	32
	#Procedure 0x4193c3
	.globl sub_4193c3
	.type sub_4193c3, @function
sub_4193c3:

	nop	word ptr cs:[rax + rax]
.label_2741:
	mov	ecx, 1
	lea	rdi, [rbp - 0x74]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, rbx
	call	re_acquire_state_context
	mov	rcx, qword ptr [rbp - 0xb0]
	mov	qword ptr [rcx + r13*8], rax
	test	rax, rax
	jne	.label_2763
	mov	ecx, dword ptr [rbp - 0x74]
	test	ecx, ecx
	jne	.label_2661
.label_2763:
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	qword ptr [rcx + r13*8], rax
	je	.label_2639
	mov	rdx, qword ptr [rbp - 0x70]
	cmp	dword ptr [rdx + 0xb4], 1
	mov	al, 1
	jg	.label_2643
	mov	rax, qword ptr [rbp - 0x98]
.label_2643:
	mov	qword ptr [rbp - 0x98], rax
	jmp	.label_2699
.label_2639:
	mov	rdx, qword ptr [rbp - 0x70]
.label_2699:
	mov	ecx, 2
	lea	rdi, [rbp - 0x74]
	mov	rsi, rdx
	mov	rdx, rbx
	call	re_acquire_state_context
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	qword ptr [rcx + r13*8], rax
	test	rax, rax
	jne	.label_2660
	mov	eax, dword ptr [rbp - 0x74]
	test	eax, eax
	jne	.label_2661
	nop	dword ptr [rax]
.label_2660:
	mov	rax, r13
	shl	rax, 5
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	rdx, qword ptr [rbp - 0x68]
	or	rdx, qword ptr [rcx + rax]
	mov	qword ptr [rbp - 0x68], rdx
	or	r15, qword ptr [rcx + rax + 8]
	mov	rdx, qword ptr [rbp - 0x90]
	or	rdx, qword ptr [rcx + rax + 0x10]
	mov	qword ptr [rbp - 0x90], rdx
	mov	rdx, qword ptr [rbp - 0x88]
	or	rdx, qword ptr [rcx + rax + 0x18]
	mov	qword ptr [rbp - 0x88], rdx
	inc	r13
	cmp	r13, qword ptr [rbp - 0x30]
	mov	r12, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rbp - 0x70]
	jl	.label_2669
	mov	rax, qword ptr [rbp - 0x98]
	and	al, 1
	mov	qword ptr [rbp - 0x98], rax
	mov	edi, 8
	jne	.label_2696
	mov	esi, 0x100
	call	rpl_calloc
	mov	rcx, qword ptr [rbp - 0xd0]
	mov	qword ptr [rcx], rax
	test	rax, rax
	je	.label_2661
	cmp	qword ptr [rbp - 0x68], 0
	mov	r14, qword ptr [rbp - 0x80]
	mov	r9, qword ptr [rbp - 0xa8]
	mov	rdi, qword ptr [rbp - 0x38]
	je	.label_2710
	lea	r8, [rdi - 8]
	mov	r10d, 1
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x68]
	jmp	.label_2716
.label_2758:
	cmp	r13b, 0x1a
	mov	r12, qword ptr [rbp - 0x80]
	jne	.label_2720
.label_2750:
	mov	r14, -1
	test	r15, r15
	jle	.label_2725
	mov	rbx, r12
	add	rbx, 0x10
	nop	word ptr cs:[rax + rax]
.label_2733:
	mov	rdi, qword ptr [rbx]
	call	free
	add	rbx, 0x18
	dec	r15
	jne	.label_2733
.label_2725:
	mov	r15, r14
.label_2641:
	mov	rdi, r12
	call	free
	test	r15, r15
	je	.label_2735
	xor	eax, eax
	jmp	.label_2671
.label_2735:
	mov	edi, 8
	mov	esi, 0x100
	call	rpl_calloc
	mov	rcx, qword ptr [rbp - 0xd0]
	mov	qword ptr [rcx], rax
	test	rax, rax
	setne	al
	jmp	.label_2671
.label_2706:
	mov	rbx, r9
	mov	rcx, r8
.label_2743:
	add	rcx, 8
	test	qword ptr [rbx], r10
	lea	rbx, [rbx + 0x20]
	je	.label_2743
	mov	rbx, qword ptr [rbp - 0x70]
	test	qword ptr [rbx + 0xb8], r10
	je	.label_2727
	mov	rbx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rcx + rbx*8]
	jmp	.label_2751
.label_2727:
	mov	rcx, qword ptr [rcx]
.label_2751:
	mov	qword ptr [rax + rsi*8], rcx
	jmp	.label_2695
	.section	.text
	.align	32
	#Procedure 0x4195cf
	.globl sub_4195cf
	.type sub_4195cf, @function
sub_4195cf:

	nop	
.label_2716:
	test	dl, 1
	jne	.label_2706
.label_2695:
	add	r10, r10
	shr	rdx, 1
	inc	rsi
	test	rdx, rdx
	jne	.label_2716
.label_2710:
	test	r15, r15
	mov	r11, qword ptr [rbp - 0x88]
	mov	r12, qword ptr [rbp - 0x90]
	je	.label_2762
	lea	r8, [rdi - 8]
	lea	r10, [r14 + 0x1808]
	mov	esi, 1
	mov	ebx, 0x40
	jmp	.label_2744
.label_2736:
	mov	rdx, r10
	mov	rcx, r8
.label_2645:
	add	rcx, 8
	test	qword ptr [rdx], rsi
	lea	rdx, [rdx + 0x20]
	je	.label_2645
	mov	rdx, qword ptr [rbp - 0x70]
	test	qword ptr [rdx + 0xc0], rsi
	je	.label_2673
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rcx + rdx*8]
	jmp	.label_2766
.label_2673:
	mov	rcx, qword ptr [rcx]
.label_2766:
	mov	qword ptr [rax + rbx*8], rcx
	jmp	.label_2655
.label_2744:
	test	r15b, 1
	jne	.label_2736
.label_2655:
	add	rsi, rsi
	shr	r15, 1
	inc	rbx
	test	r15, r15
	jne	.label_2744
.label_2762:
	test	r12, r12
	mov	r15, qword ptr [rbp - 0x30]
	je	.label_2663
	lea	r8, [rdi - 8]
	lea	r10, [r14 + 0x1810]
	mov	esi, 1
	mov	ebx, 0x80
	jmp	.label_2651
.label_2692:
	mov	rdx, r10
	mov	rcx, r8
.label_2705:
	add	rcx, 8
	test	qword ptr [rdx], rsi
	lea	rdx, [rdx + 0x20]
	je	.label_2705
	mov	rdx, qword ptr [rbp - 0x70]
	test	qword ptr [rdx + 0xc8], rsi
	je	.label_2681
	mov	rcx, qword ptr [rcx + r15*8]
	jmp	.label_2683
.label_2681:
	mov	rcx, qword ptr [rcx]
.label_2683:
	mov	qword ptr [rax + rbx*8], rcx
	jmp	.label_2687
	.section	.text
	.align	32
	#Procedure 0x4196a3
	.globl sub_4196a3
	.type sub_4196a3, @function
sub_4196a3:

	nop	word ptr cs:[rax + rax]
.label_2651:
	test	r12b, 1
	jne	.label_2692
.label_2687:
	add	rsi, rsi
	shr	r12, 1
	inc	rbx
	test	r12, r12
	jne	.label_2651
.label_2663:
	test	r11, r11
	je	.label_2652
	lea	r8, [rdi - 8]
	lea	r10, [r14 + 0x1818]
	mov	esi, 1
	mov	ebx, 0xc0
	jmp	.label_2702
.label_2718:
	mov	rdx, r10
	mov	rcx, r8
.label_2708:
	add	rcx, 8
	test	qword ptr [rdx], rsi
	lea	rdx, [rdx + 0x20]
	je	.label_2708
	mov	rdx, qword ptr [rbp - 0x70]
	test	qword ptr [rdx + 0xd0], rsi
	je	.label_2711
	mov	rcx, qword ptr [rcx + r15*8]
	jmp	.label_2698
.label_2711:
	mov	rcx, qword ptr [rcx]
.label_2698:
	mov	qword ptr [rax + rbx*8], rcx
	jmp	.label_2714
	.section	.text
	.align	32
	#Procedure 0x41970f
	.globl sub_41970f
	.type sub_41970f, @function
sub_41970f:

	nop	
.label_2702:
	test	r11b, 1
	jne	.label_2718
.label_2714:
	add	rsi, rsi
	shr	r11, 1
	inc	rbx
	test	r11, r11
	jne	.label_2702
.label_2652:
	mov	rcx, qword ptr [rbp - 0x68]
	test	ch, 4
	je	.label_2721
	xor	ecx, ecx
	nop	
.label_2728:
	test	byte ptr [r9 + 1], 4
	jne	.label_2668
	inc	rcx
	add	r9, 0x20
	cmp	rcx, r15
	jl	.label_2728
	jmp	.label_2721
.label_2668:
	mov	rdx, r15
	shl	rdx, 4
	add	rdx, rdi
	mov	rsi, qword ptr [rbp - 0x98]
	test	sil, sil
	mov	rcx, qword ptr [rdx + rcx*8]
	mov	qword ptr [rax + 0x50], rcx
	je	.label_2721
	mov	qword ptr [rax + 0x850], rcx
.label_2721:
	mov	eax, dword ptr [rbp - 0xb8]
	test	al, al
	je	.label_2734
	call	free
.label_2734:
	mov	rdi, qword ptr [rbp - 0x50]
	call	free
	mov	rbx, r14
	add	rbx, 0x10
	nop	dword ptr [rax]
.label_2740:
	mov	rdi, qword ptr [rbx]
	call	free
	add	rbx, 0x18
	dec	r15
	jne	.label_2740
	mov	rdi, r14
	call	free
	mov	al, 1
.label_2671:
	lea	rsp, [rbp - 0x28]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2748:
	lea	rax, [r12 + r15*8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax], xmm0
	mov	r15, rbx
	jmp	.label_2750
.label_2654:
	mov	rdi, qword ptr [rbp - 0x50]
	call	free
	jmp	.label_2757
.label_2719:
	xor	eax, eax
	jmp	.label_2671
.label_2696:
	mov	esi, 0x200
	call	rpl_calloc
	mov	rcx, qword ptr [rbp - 0xc0]
	mov	qword ptr [rcx + 0x60], rax
	test	rax, rax
	je	.label_2661
	cmp	qword ptr [rbp - 0x68], 0
	mov	r14, qword ptr [rbp - 0x80]
	mov	rdi, qword ptr [rbp - 0x38]
	je	.label_2765
	lea	r8, [rdi - 8]
	mov	r9d, 1
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x68]
	jmp	.label_2657
.label_2661:
	mov	eax, dword ptr [rbp - 0xb8]
	test	al, al
	je	.label_2647
	mov	rdi, qword ptr [rbp - 0x38]
	call	free
.label_2647:
	mov	rdi, qword ptr [rbp - 0x50]
	call	free
	mov	r15, qword ptr [rbp - 0x30]
	test	r15, r15
	mov	r12, qword ptr [rbp - 0x80]
	jle	.label_2656
.label_2757:
	mov	rbx, r12
	add	rbx, 0x10
	nop	
.label_2665:
	mov	rdi, qword ptr [rbx]
	call	free
	add	rbx, 0x18
	dec	r15
	jne	.label_2665
.label_2656:
	mov	rdi, r12
	call	free
	xor	eax, eax
	jmp	.label_2671
.label_2691:
	mov	rbx, qword ptr [rbp - 0xa8]
	mov	rcx, r8
.label_2676:
	add	rcx, 8
	test	qword ptr [rbx], r9
	lea	rbx, [rbx + 0x20]
	je	.label_2676
	mov	rbx, qword ptr [rcx]
	mov	qword ptr [rax + rsi*8], rbx
	mov	rbx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rcx + rbx*8]
	mov	qword ptr [rax + rsi*8 + 0x800], rcx
	mov	r14, qword ptr [rbp - 0x80]
	mov	rdi, qword ptr [rbp - 0x38]
	jmp	.label_2724
.label_2657:
	test	dl, 1
	jne	.label_2691
.label_2724:
	add	r9, r9
	shr	rdx, 1
	inc	rsi
	test	rdx, rdx
	jne	.label_2657
.label_2765:
	test	r15, r15
	mov	rcx, qword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0x90]
	je	.label_2697
	lea	r8, [rdi - 8]
	lea	r9, [r14 + 0x1808]
	mov	esi, 1
	mov	ebx, 0x40
	jmp	.label_2703
.label_2723:
	mov	rdx, r9
	mov	rcx, r8
.label_2709:
	add	rcx, 8
	test	qword ptr [rdx], rsi
	lea	rdx, [rdx + 0x20]
	je	.label_2709
	mov	rdx, qword ptr [rcx]
	mov	qword ptr [rax + rbx*8], rdx
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rcx + rdx*8]
	mov	qword ptr [rax + rbx*8 + 0x800], rcx
	mov	r14, qword ptr [rbp - 0x80]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0x90]
	jmp	.label_2756
.label_2703:
	test	r15b, 1
	jne	.label_2723
.label_2756:
	add	rsi, rsi
	shr	r15, 1
	inc	rbx
	test	r15, r15
	jne	.label_2703
.label_2697:
	test	rdx, rdx
	mov	r15, qword ptr [rbp - 0x30]
	mov	r9, qword ptr [rbp - 0xa8]
	je	.label_2749
	lea	r8, [rdi - 8]
	lea	r10, [r14 + 0x1810]
	mov	esi, 1
	mov	ebx, 0x80
	jmp	.label_2732
.label_2745:
	mov	r11, rdx
	mov	rdx, r10
	mov	rcx, r8
.label_2678:
	add	rcx, 8
	test	qword ptr [rdx], rsi
	lea	rdx, [rdx + 0x20]
	je	.label_2678
	mov	rdx, qword ptr [rcx]
	mov	qword ptr [rax + rbx*8], rdx
	mov	r15, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rcx + r15*8]
	mov	qword ptr [rax + rbx*8 + 0x800], rcx
	mov	r14, qword ptr [rbp - 0x80]
	mov	r9, qword ptr [rbp - 0xa8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x88]
	mov	rdx, r11
	jmp	.label_2704
.label_2732:
	test	dl, 1
	jne	.label_2745
.label_2704:
	add	rsi, rsi
	shr	rdx, 1
	inc	rbx
	test	rdx, rdx
	jne	.label_2732
.label_2749:
	test	rcx, rcx
	je	.label_2652
	lea	r8, [rdi - 8]
	lea	r10, [r14 + 0x1818]
	mov	esi, 1
	mov	ebx, 0xc0
	jmp	.label_2648
.label_2694:
	mov	r11, rcx
	mov	rdx, r10
	mov	rcx, r8
.label_2764:
	add	rcx, 8
	test	qword ptr [rdx], rsi
	lea	rdx, [rdx + 0x20]
	je	.label_2764
	mov	rdx, qword ptr [rcx]
	mov	qword ptr [rax + rbx*8], rdx
	mov	r15, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rcx + r15*8]
	mov	qword ptr [rax + rbx*8 + 0x800], rcx
	mov	r14, qword ptr [rbp - 0x80]
	mov	r9, qword ptr [rbp - 0xa8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, r11
	jmp	.label_2729
.label_2648:
	test	cl, 1
	jne	.label_2694
.label_2729:
	add	rsi, rsi
	shr	rcx, 1
	inc	rbx
	test	rcx, rcx
	jne	.label_2648
	jmp	.label_2652
	.section	.text
	.align	32
	#Procedure 0x419a36
	.globl sub_419a36
	.type sub_419a36, @function
sub_419a36:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x419a40

	.globl re_compile_internal
	.type re_compile_internal, @function
re_compile_internal:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xe8
	mov	r13, rdx
	mov	r14, rsi
	mov	r15, rdi
	mov	dword ptr [rsp + 4], 0
	mov	al, byte ptr [r15 + 0x38]
	mov	qword ptr [rsp + 0x40], rcx
	mov	qword ptr [r15 + 0x18], rcx
	mov	qword ptr [r15 + 0x10], 0
	mov	qword ptr [r15 + 0x30], 0
	and	al, 0x90
	mov	byte ptr [r15 + 0x38], al
	mov	r12, qword ptr [r15]
	cmp	qword ptr [r15 + 8], 0xe7
	jbe	.label_2886
.label_2785:
	mov	qword ptr [r15 + 0x10], 0xe8
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r12 + 0xd0], xmm0
	movdqu	xmmword ptr [r12 + 0xc0], xmm0
	movdqu	xmmword ptr [r12 + 0xb0], xmm0
	movdqu	xmmword ptr [r12 + 0xa0], xmm0
	movdqu	xmmword ptr [r12 + 0x90], xmm0
	movdqu	xmmword ptr [r12 + 0x80], xmm0
	movdqu	xmmword ptr [r12 + 0x70], xmm0
	movdqu	xmmword ptr [r12 + 0x60], xmm0
	movdqu	xmmword ptr [r12 + 0x50], xmm0
	movdqu	xmmword ptr [r12 + 0x40], xmm0
	movdqu	xmmword ptr [r12 + 0x30], xmm0
	movdqu	xmmword ptr [r12 + 0x20], xmm0
	movdqu	xmmword ptr [r12 + 0x10], xmm0
	movdqu	xmmword ptr [r12], xmm0
	mov	qword ptr [r12 + 0xe0], 0
	mov	dword ptr [r12 + 0x80], 0xf
	movabs	rax, 0x555555555555554
	cmp	r13, rax
	ja	.label_2781
	lea	rdi, [r13 + 1]
	mov	qword ptr [r12 + 8], rdi
	mov	rax, rdi
	mov	qword ptr [rsp + 8], rax
	shl	rdi, 4
	call	malloc
	mov	qword ptr [r12], rax
	mov	eax, 1
	nop	word ptr cs:[rax + rax]
.label_2809:
	mov	rbx, rax
	lea	rax, [rbx + rbx]
	cmp	rbx, r13
	jbe	.label_2809
	mov	edi, 0x18
	mov	rsi, rbx
	call	rpl_calloc
	mov	qword ptr [r12 + 0x40], rax
	dec	rbx
	mov	qword ptr [r12 + 0x88], rbx
	call	__ctype_get_mb_cur_max
	mov	dword ptr [r12 + 0xb4], eax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	mov	cl, byte ptr [rax]
	or	cl, 0x20
	cmp	cl, 0x75
	jne	.label_2870
	mov	cl, byte ptr [rax + 1]
	or	cl, 0x20
	cmp	cl, 0x74
	jne	.label_2870
	mov	cl, byte ptr [rax + 2]
	or	cl, 0x20
	cmp	cl, 0x66
	jne	.label_2870
	xor	ecx, ecx
	cmp	byte ptr [rax + 3], 0x2d
	sete	cl
	cmp	byte ptr [rax + rcx + 3], 0x38
	jne	.label_2870
	cmp	byte ptr [rax + rcx + 4], 0
	jne	.label_2870
	or	byte ptr [r12 + 0xb0], 4
.label_2870:
	mov	rax, qword ptr [r12 + 0xb0]
	mov	ecx, eax
	and	cl, 0xf7
	mov	byte ptr [r12 + 0xb0], cl
	mov	rcx, rax
	shr	rcx, 0x20
	cmp	ecx, 2
	jl	.label_2839
	test	al, 4
	jne	.label_2775
	mov	edi, 0x20
	mov	esi, 1
	call	rpl_calloc
	mov	qword ptr [r12 + 0x78], rax
	test	rax, rax
	je	.label_2781
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_2798:
	mov	edi, ebp
	call	btowc
	cmp	eax, -1
	je	.label_2788
	mov	edx, 1
	mov	ecx, ebp
	shl	rdx, cl
	mov	rcx, qword ptr [r12 + 0x78]
	or	qword ptr [rcx], rdx
.label_2788:
	cmp	ebp, 0x7f
	ja	.label_2794
	cmp	ebp, eax
	je	.label_2794
	or	byte ptr [r12 + 0xb0], 8
.label_2794:
	inc	rbp
	cmp	rbp, 0x40
	jne	.label_2798
	xor	ebp, ebp
	nop	dword ptr [rax + rax]
.label_2813:
	lea	rbx, [rbp + 0x40]
	mov	edi, ebx
	call	btowc
	cmp	eax, -1
	je	.label_2806
	mov	edx, 1
	mov	ecx, ebp
	shl	rdx, cl
	mov	rcx, qword ptr [r12 + 0x78]
	or	qword ptr [rcx + 8], rdx
.label_2806:
	cmp	ebx, eax
	je	.label_2931
	or	byte ptr [r12 + 0xb0], 8
.label_2931:
	inc	rbp
	cmp	rbp, 0x40
	jne	.label_2813
	xor	ebp, ebp
	nop	dword ptr [rax + rax]
.label_2827:
	mov	edi, ebp
	sub	edi, -0x80
	call	btowc
	cmp	eax, -1
	je	.label_2820
	mov	eax, 1
	mov	ecx, ebp
	shl	rax, cl
	mov	rcx, qword ptr [r12 + 0x78]
	or	qword ptr [rcx + 0x10], rax
.label_2820:
	inc	rbp
	cmp	rbp, 0x40
	jne	.label_2827
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_2835:
	lea	edi, [rbp + 0xc0]
	call	btowc
	cmp	eax, -1
	je	.label_2831
	mov	eax, 1
	mov	ecx, ebp
	shl	rax, cl
	mov	rcx, qword ptr [r12 + 0x78]
	or	qword ptr [rcx + 0x18], rax
.label_2831:
	inc	rbp
	cmp	rbp, 0x40
	jne	.label_2835
	jmp	.label_2839
.label_2775:
	mov	qword ptr [r12 + 120], OFFSET FLAT:utf8_sb_map
.label_2839:
	cmp	qword ptr [r12], 0
	je	.label_2781
	cmp	qword ptr [r12 + 0x40], 0
	je	.label_2781
	mov	dword ptr [rsp + 4], 0
	mov	rbx, qword ptr [r15 + 0x28]
	mov	rcx, qword ptr [rsp + 0x40]
	and	ecx, 0x400000
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rsp + 0xd0], xmm0
	movdqu	xmmword ptr [rsp + 0xc0], xmm0
	movdqu	xmmword ptr [rsp + 0xb0], xmm0
	movdqu	xmmword ptr [rsp + 0xa0], xmm0
	movdqu	xmmword ptr [rsp + 0x90], xmm0
	movdqu	xmmword ptr [rsp + 0x80], xmm0
	movdqu	xmmword ptr [rsp + 0x70], xmm0
	movdqu	xmmword ptr [rsp + 0x60], xmm0
	movdqu	xmmword ptr [rsp + 0x50], xmm0
	mov	qword ptr [rsp + 0x48], r14
	mov	qword ptr [rsp + 0xa0], r13
	mov	qword ptr [rsp + 0x98], r13
	mov	qword ptr [rsp + 0xc0], rbx
	mov	rax, rcx
	shr	rax, 0x16
	mov	byte ptr [rsp + 0xd0], al
	mov	qword ptr [rsp + 0xe0], rcx
	mov	rax, rcx
	or	rax, rbx
	setne	bpl
	setne	byte ptr [rsp + 0xd3]
	mov	edx, dword ptr [r12 + 0xb4]
	mov	dword ptr [rsp + 0xd8], edx
	mov	rcx, qword ptr [r12 + 0xb0]
	mov	eax, ecx
	shr	al, 2
	and	al, 1
	mov	byte ptr [rsp + 0xd1], al
	mov	eax, ecx
	shr	al, 3
	and	al, 1
	mov	byte ptr [rsp + 0xd2], al
	mov	qword ptr [rsp + 0xb0], r13
	mov	qword ptr [rsp + 0xa8], r13
	xor	eax, eax
	test	r13, r13
	mov	qword ptr [rsp + 0x18], r12
	jle	.label_2840
	cmp	edx, 2
	jl	.label_2883
	mov	r12d, 0xc
	mov	rax, qword ptr [rsp + 8]
	movabs	rcx, 0x1fffffffffffffff
	cmp	rax, rcx
	ja	.label_2885
	lea	rsi, [rax*4]
	xor	edi, edi
	call	realloc
	test	rax, rax
	je	.label_2885
	mov	qword ptr [rsp + 0x58], rax
	mov	r12, qword ptr [rsp + 0x18]
.label_2883:
	xor	eax, eax
	test	bpl, bpl
	mov	edx, 0
	je	.label_2893
	xor	edi, edi
	mov	rsi, qword ptr [rsp + 8]
	call	realloc
	mov	r12d, 0xc
	test	rax, rax
	je	.label_2885
	mov	qword ptr [rsp + 0x50], rax
	mov	dl, bpl
	mov	r12, qword ptr [rsp + 0x18]
.label_2893:
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rsp + 0x88], rcx
	mov	ecx, dword ptr [r12 + 0xb4]
	mov	ebp, edx
	jmp	.label_2898
.label_2781:
	mov	dword ptr [rsp + 4], 0xc
	mov	rdi, r12
	call	free_dfa_content
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r15], xmm0
	mov	eax, 0xc
	jmp	.label_2779
.label_2840:
	shr	rcx, 0x20
	xor	edx, edx
	mov	qword ptr [rsp + 8], rdx
.label_2898:
	test	bpl, bpl
	cmove	rax, r14
	mov	qword ptr [rsp + 0x50], rax
	cmp	qword ptr [rsp + 0xe0], 0
	je	.label_2907
	cmp	ecx, 2
	jl	.label_2910
	lea	rdi, [rsp + 0x48]
	call	build_wcs_upper_buffer
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_2885
	lea	rbx, [rsp + 0x48]
	nop	dword ptr [rax + rax]
.label_2770:
	cmp	qword ptr [rsp + 0x80], r13
	mov	r12, qword ptr [rsp + 0x18]
	jge	.label_2782
	mov	rbp, qword ptr [rsp + 0x88]
	movsxd	rax, dword ptr [r12 + 0xb4]
	add	rax, qword ptr [rsp + 0x78]
	cmp	rbp, rax
	jg	.label_2782
	lea	r14, [rbp + rbp]
	cmp	dword ptr [rsp + 0xd8], 2
	jl	.label_2921
	mov	r12d, 0xc
	movabs	rax, 0x1fffffffffffffff
	cmp	r14, rax
	ja	.label_2885
	mov	rdi, qword ptr [rsp + 0x58]
	lea	rsi, [rbp*8]
	call	realloc
	test	rax, rax
	je	.label_2885
	mov	qword ptr [rsp + 0x58], rax
	mov	rdi, qword ptr [rsp + 0x60]
	test	rdi, rdi
	je	.label_2921
	shl	rbp, 4
	mov	rsi, rbp
	call	realloc
	test	rax, rax
	je	.label_2885
	mov	qword ptr [rsp + 0x60], rax
.label_2921:
	cmp	byte ptr [rsp + 0xd3], 0
	je	.label_2930
	mov	rdi, qword ptr [rsp + 0x50]
	mov	rsi, r14
	call	realloc
	mov	r12d, 0xc
	test	rax, rax
	je	.label_2885
	mov	qword ptr [rsp + 0x50], rax
.label_2930:
	mov	qword ptr [rsp + 0x88], r14
	mov	rdi, rbx
	call	build_wcs_upper_buffer
	mov	r12d, eax
	test	r12d, r12d
	je	.label_2770
.label_2885:
	mov	dword ptr [rsp + 4], r12d
	jmp	.label_2774
.label_2907:
	cmp	ecx, 2
	jl	.label_2776
	lea	rdi, [rsp + 0x48]
	call	build_wcs_buffer
	jmp	.label_2782
.label_2910:
	mov	rax, qword ptr [rsp + 8]
	cmp	rax, r13
	cmovg	rax, r13
	mov	r13, rax
	xor	eax, eax
	test	r13, r13
	jle	.label_2783
	xor	eax, eax
	mov	ebp, 1
	jmp	.label_2790
	.section	.text
	.align	32
	#Procedure 0x41a059
	.globl sub_41a059
	.type sub_41a059, @function
sub_41a059:

	nop	dword ptr [rax]
.label_2808:
	mov	r14, qword ptr [rsp + 0x48]
	mov	rax, qword ptr [rsp + 0x70]
	mov	rbx, qword ptr [rsp + 0xc0]
	inc	rbp
.label_2790:
	add	r14, rax
	movzx	eax, byte ptr [rbp + r14 - 1]
	movzx	ecx, al
	test	rbx, rbx
	jne	.label_2800
.label_2855:
	movzx	ebx, al
	mov	eax, ebx
	sub	eax, -0x80
	cmp	eax, 0x17f
	ja	.label_2804
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	mov	ebx, dword ptr [rax + rbx*4]
.label_2804:
	mov	rax, qword ptr [rsp + 0x50]
	mov	byte ptr [rax + rbp - 1], bl
	cmp	rbp, r13
	jl	.label_2808
	jmp	.label_2812
.label_2800:
	movzx	eax, byte ptr [rbx + rcx]
	jmp	.label_2855
.label_2776:
	test	rbx, rbx
	je	.label_2816
	mov	rcx, qword ptr [rsp + 8]
	cmp	rcx, r13
	cmovg	rcx, r13
	mov	rdi, rcx
	xor	ecx, ecx
	test	rdi, rdi
	jle	.label_2817
	movzx	ecx, byte ptr [r14]
	mov	cl, byte ptr [rbx + rcx]
	mov	byte ptr [rax], cl
	mov	ecx, 1
	cmp	rdi, 1
	je	.label_2817
	mov	eax, 1
	nop	word ptr [rax + rax]
.label_2853:
	mov	rcx, qword ptr [rsp + 0x48]
	mov	rdx, qword ptr [rsp + 0x50]
	add	rcx, qword ptr [rsp + 0x70]
	movzx	ecx, byte ptr [rax + rcx]
	mov	rsi, qword ptr [rsp + 0xc0]
	movzx	ecx, byte ptr [rsi + rcx]
	mov	byte ptr [rdx + rax], cl
	inc	rax
	cmp	rax, rdi
	jl	.label_2853
	mov	rcx, rdi
.label_2817:
	mov	qword ptr [rsp + 0x78], rcx
	mov	qword ptr [rsp + 0x80], rcx
	jmp	.label_2782
.label_2812:
	mov	rax, r13
	jmp	.label_2783
.label_2816:
	mov	rax, qword ptr [rsp + 8]
.label_2783:
	mov	qword ptr [rsp + 0x78], rax
	mov	qword ptr [rsp + 0x80], rax
.label_2782:
	mov	dword ptr [rsp + 4], 0
	mov	qword ptr [r15 + 0x30], 0
	mov	rbx, qword ptr [r15]
	mov	rbp, qword ptr [rsp + 0x40]
	mov	qword ptr [rbx + 0xd8], rbp
	mov	rdx, rbp
	or	rdx, 0x800000
	lea	r14, [rsp + 0x20]
	lea	r13, [rsp + 0x48]
	mov	rdi, r14
	mov	rsi, r13
	call	peek_token
	cdqe	
	add	qword ptr [rsp + 0x90], rax
	lea	r9, [rsp + 4]
	xor	r8d, r8d
	mov	rdi, r13
	mov	rsi, r15
	mov	rdx, r14
	mov	rcx, rbp
	call	parse_reg_exp
	mov	r14, rax
	test	r14, r14
	jne	.label_2854
	mov	eax, dword ptr [rsp + 4]
	test	eax, eax
	jne	.label_2856
.label_2854:
	mov	ebp, dword ptr [rbx + 0x80]
	cmp	ebp, 0xf
	je	.label_2859
	mov	rax, qword ptr [rbx + 0x70]
.label_2795:
	lea	ecx, [rbp + 1]
	mov	dword ptr [rbx + 0x80], ecx
	movsxd	rcx, ebp
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	dword ptr [rax + rcx + 0x38], 2
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
.label_2792:
	test	r14, r14
	mov	rcx, rbp
	je	.label_2875
	mov	ecx, dword ptr [rbx + 0x80]
	cmp	ecx, 0xf
	je	.label_2878
	mov	rax, qword ptr [rbx + 0x70]
.label_2805:
	lea	edx, [rcx + 1]
	mov	dword ptr [rbx + 0x80], edx
	movsxd	rdx, ecx
	shl	rdx, 6
	lea	rcx, [rax + rdx + 8]
	mov	qword ptr [rax + rdx + 8], 0
	mov	qword ptr [rax + rdx + 0x10], r14
	mov	qword ptr [rax + rdx + 0x18], rbp
	mov	dword ptr [rax + rdx + 0x38], 0x10
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rdx + 0x20], xmm0
	mov	qword ptr [rax + rdx + 0x40], -1
	mov	qword ptr [r14], rcx
	test	rbp, rbp
	je	.label_2803
	mov	qword ptr [rbp], rcx
.label_2875:
	test	rbp, rbp
	je	.label_2803
	test	rcx, rcx
	je	.label_2803
	mov	qword ptr [r12 + 0x68], rcx
	mov	rbx, qword ptr [r15]
	mov	rdi, qword ptr [rbx + 8]
	shl	rdi, 3
	call	malloc
	mov	qword ptr [rbx + 0x18], rax
	mov	rdi, qword ptr [rbx + 8]
	shl	rdi, 3
	call	malloc
	mov	qword ptr [rbx + 0x20], rax
	mov	rax, qword ptr [rbx + 8]
	shl	rax, 3
	lea	rdi, [rax + rax*2]
	call	malloc
	mov	qword ptr [rbx + 0x28], rax
	mov	rax, qword ptr [rbx + 8]
	shl	rax, 3
	lea	rdi, [rax + rax*2]
	call	malloc
	mov	qword ptr [rbx + 0x30], rax
	cmp	qword ptr [rbx + 0x18], 0
	je	.label_2768
	cmp	qword ptr [rbx + 0x20], 0
	je	.label_2768
	test	rax, rax
	je	.label_2768
	mov	rax, qword ptr [rbx + 0x28]
	test	rax, rax
	je	.label_2768
	mov	rbp, qword ptr [r15 + 0x30]
	lea	rdi, [rbp*8]
	call	malloc
	mov	qword ptr [rbx + 0xe0], rax
	test	rax, rax
	mov	r8, rbx
	mov	qword ptr [rsp + 8], r8
	je	.label_2911
	test	rbp, rbp
	je	.label_2819
	xor	edx, edx
	cmp	rbp, 4
	jb	.label_2822
	xor	edx, edx
	mov	rcx, rbp
	and	rcx, 0xfffffffffffffffc
	je	.label_2822
	lea	rbx, [rcx - 4]
	mov	rdi, rbx
	shr	rdi, 2
	lea	edx, [rdi + 1]
	and	edx, 3
	mov	esi, 1
	cmp	rbx, 0xc
	jae	.label_2825
	movq	xmm0, rsi
	pslldq	xmm0, 8
	jmp	.label_2920
.label_2911:
	lea	r12, [r8 + 0x68]
	jmp	.label_2897
.label_2825:
	lea	rsi, [rdx - 1]
	sub	rsi, rdi
	mov	edi, 1
	movq	xmm0, rdi
	pslldq	xmm0, 8
	movdqa	xmm8, xmmword ptr [rip + label_865]
	movdqa	xmm9, xmmword ptr [rip + label_866]
	movdqa	xmm10, xmmword ptr [rip + label_875]
	movdqa	xmm11, xmmword ptr [rip + label_876]
	movdqa	xmm5, xmmword ptr [rip + label_877]
	movdqa	xmm6, xmmword ptr [rip + label_878]
	movdqa	xmm7, xmmword ptr [rip + label_879]
	movdqa	xmm1, xmmword ptr [rip + label_880]
	nop	word ptr cs:[rax + rax]
.label_2933:
	movdqa	xmm2, xmm0
	paddq	xmm2, xmm8
	movdqa	xmm3, xmm0
	paddq	xmm3, xmm9
	movq	rdi, xmm0
	movdqu	xmmword ptr [rax + rdi*8], xmm0
	movdqu	xmmword ptr [rax + rdi*8 + 0x10], xmm2
	movdqa	xmm2, xmm0
	paddq	xmm2, xmm10
	movdqa	xmm4, xmm0
	paddq	xmm4, xmm11
	movq	rdi, xmm3
	movdqu	xmmword ptr [rax + rdi*8], xmm3
	movdqu	xmmword ptr [rax + rdi*8 + 0x10], xmm2
	movdqa	xmm2, xmm0
	paddq	xmm2, xmm5
	movdqa	xmm3, xmm0
	paddq	xmm3, xmm6
	movq	rdi, xmm4
	movdqu	xmmword ptr [rax + rdi*8], xmm4
	movdqu	xmmword ptr [rax + rdi*8 + 0x10], xmm2
	movdqa	xmm2, xmm0
	paddq	xmm2, xmm7
	paddq	xmm0, xmm1
	movq	rdi, xmm3
	movdqu	xmmword ptr [rax + rdi*8], xmm3
	movdqu	xmmword ptr [rax + rdi*8 + 0x10], xmm2
	add	rsi, 4
	jne	.label_2933
.label_2920:
	test	rdx, rdx
	je	.label_2900
	neg	rdx
	movdqa	xmm1, xmmword ptr [rip + label_865]
	movdqa	xmm2, xmmword ptr [rip + label_866]
	nop	word ptr cs:[rax + rax]
.label_2928:
	movdqa	xmm3, xmm0
	movq	rsi, xmm0
	movdqu	xmmword ptr [rax + rsi*8], xmm0
	paddq	xmm0, xmm1
	paddq	xmm3, xmm2
	movdqu	xmmword ptr [rax + rsi*8 + 0x10], xmm0
	inc	rdx
	movdqa	xmm0, xmm3
	jne	.label_2928
.label_2900:
	cmp	rbp, rcx
	mov	rdx, rcx
	je	.label_2819
	nop	dword ptr [rax]
.label_2822:
	mov	qword ptr [rax + rdx*8], rdx
	inc	rdx
	cmp	rdx, rbp
	jb	.label_2822
.label_2819:
	mov	rdx, qword ptr [r8 + 0x68]
	mov	cl, byte ptr [rdx + 0x30]
	cmp	cl, 0x11
	je	.label_2826
	cmp	cl, 4
	jne	.label_2828
	movsxd	rcx, dword ptr [rdx + 0x28]
	mov	rcx, qword ptr [rax + rcx*8]
	mov	qword ptr [rdx + 0x28], rcx
	mov	esi, 1
	shl	esi, cl
	movsxd	rcx, esi
	or	qword ptr [r8 + 0xa0], rcx
	jmp	.label_2828
.label_2826:
	mov	rcx, qword ptr [rdx + 8]
	test	rcx, rcx
	je	.label_2828
	cmp	byte ptr [rcx + 0x30], 0x11
	jne	.label_2828
	mov	rsi, qword ptr [rcx + 8]
	mov	rcx, qword ptr [rcx + 0x28]
	mov	qword ptr [rdx + 8], rsi
	test	rsi, rsi
	je	.label_2838
	mov	qword ptr [rsi], rdx
.label_2838:
	mov	rsi, qword ptr [rdx + 0x28]
	mov	rsi, qword ptr [rax + rsi*8]
	mov	qword ptr [rax + rcx*8], rsi
	cmp	rcx, 0x3f
	jg	.label_2828
	mov	rsi, -2
	rol	rsi, cl
	and	qword ptr [r8 + 0xa0], rsi
.label_2828:
	lea	r12, [r8 + 0x68]
	jmp	.label_2841
.label_2913:
	mov	rsi, -2
	rol	rsi, cl
	and	qword ptr [r8 + 0xa0], rsi
.label_2841:
	mov	rsi, rax
.label_2891:
	test	rsi, rsi
	jne	.label_2845
	mov	rdi, rdx
.label_2860:
	mov	rdx, qword ptr [rdi + 8]
	test	rdx, rdx
	jne	.label_2847
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_2864:
	mov	rsi, rcx
	mov	rcx, rdi
	mov	rdx, qword ptr [rcx + 0x10]
	cmp	rdx, rsi
	je	.label_2844
	test	rdx, rdx
	jne	.label_2847
.label_2844:
	mov	rdi, qword ptr [rcx]
	test	rdi, rdi
	jne	.label_2864
	jmp	.label_2874
.label_2847:
	mov	cl, byte ptr [rdx + 0x30]
	cmp	cl, 0x11
	je	.label_2858
	cmp	cl, 4
	mov	esi, 0
	mov	rdi, rdx
	jne	.label_2860
	jmp	.label_2891
.label_2858:
	mov	rcx, qword ptr [rdx + 8]
	test	rcx, rcx
	mov	rdi, rdx
	je	.label_2860
	cmp	byte ptr [rcx + 0x30], 0x11
	mov	rdi, rdx
	jne	.label_2860
	lea	rsi, [rdx + 8]
	lea	rdi, [rdx + 0x28]
	jmp	.label_2866
.label_2887:
	movsxd	rcx, dword ptr [rdi]
	mov	rcx, qword ptr [rsi + rcx*8]
	mov	qword ptr [rdi], rcx
	mov	edi, 1
	shl	edi, cl
	movsxd	rcx, edi
	or	qword ptr [r8 + 0xa0], rcx
.label_2845:
	mov	rbp, rdx
.label_2884:
	mov	rdx, qword ptr [rbp + 8]
	test	rdx, rdx
	jne	.label_2873
	xor	ecx, ecx
.label_2880:
	mov	rdi, rcx
	mov	rcx, rbp
	mov	rdx, qword ptr [rcx + 0x10]
	cmp	rdx, rdi
	je	.label_2877
	test	rdx, rdx
	jne	.label_2873
.label_2877:
	mov	rbp, qword ptr [rcx]
	test	rbp, rbp
	jne	.label_2880
	jmp	.label_2874
	.section	.text
	.align	32
	#Procedure 0x41a62e
	.globl sub_41a62e
	.type sub_41a62e, @function
sub_41a62e:

	nop	
.label_2873:
	lea	rdi, [rdx + 0x28]
	mov	cl, byte ptr [rdx + 0x30]
	cmp	cl, 0x11
	je	.label_2881
	cmp	cl, 4
	mov	rbp, rdx
	jne	.label_2884
	jmp	.label_2887
.label_2881:
	mov	rcx, qword ptr [rdx + 8]
	test	rcx, rcx
	mov	rbp, rdx
	je	.label_2884
	cmp	byte ptr [rcx + 0x30], 0x11
	mov	rbp, rdx
	jne	.label_2884
	lea	rsi, [rdx + 8]
.label_2866:
	mov	rbp, qword ptr [rcx + 8]
	mov	rcx, qword ptr [rcx + 0x28]
	mov	qword ptr [rsi], rbp
	test	rbp, rbp
	je	.label_2890
	mov	qword ptr [rbp], rdx
.label_2890:
	mov	rsi, qword ptr [rdi]
	mov	rsi, qword ptr [rax + rsi*8]
	mov	qword ptr [rax + rcx*8], rsi
	cmp	rcx, 0x3f
	mov	rsi, rax
	jg	.label_2891
	jmp	.label_2913
.label_2874:
	mov	rcx, qword ptr [r15 + 0x30]
	xor	edx, edx
	test	rcx, rcx
	je	.label_2895
	xor	edx, edx
	nop	dword ptr [rax]
.label_2896:
	cmp	rdx, qword ptr [rax + rdx*8]
	jne	.label_2895
	inc	rdx
	cmp	rdx, rcx
	jb	.label_2896
.label_2895:
	cmp	rdx, rcx
	jne	.label_2897
	mov	rdi, rax
	call	free
	mov	r8, qword ptr [rsp + 8]
	mov	qword ptr [r8 + 0xe0], 0
.label_2897:
	mov	rax, qword ptr [r12]
	lea	rbp, [rsp + 0x20]
	nop	word ptr cs:[rax + rax]
.label_2901:
	mov	rbx, rax
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	jne	.label_2901
	mov	rax, qword ptr [rbx + 0x10]
	test	rax, rax
	jne	.label_2901
	xor	ecx, ecx
	jmp	.label_2905
	.section	.text
	.align	32
	#Procedure 0x41a6f9
	.globl sub_41a6f9
	.type sub_41a6f9, @function
sub_41a6f9:

	nop	dword ptr [rax]
.label_2924:
	mov	rcx, qword ptr [rdx + 8]
	mov	rbx, rdx
.label_2905:
	mov	dword ptr [rsp + 0x20], 0
	test	rcx, rcx
	je	.label_2892
	cmp	byte ptr [rcx + 0x30], 0x11
	jne	.label_2892
	mov	rsi, qword ptr [r15]
	mov	edx, dword ptr [r15 + 0x38]
	mov	rdi, rbp
	call	lower_subexp
	mov	r8, qword ptr [rsp + 8]
	mov	qword ptr [rbx + 8], rax
	test	rax, rax
	je	.label_2892
	mov	qword ptr [rax], rbx
	nop	word ptr [rax + rax]
.label_2892:
	mov	rcx, qword ptr [rbx + 0x10]
	test	rcx, rcx
	je	.label_2914
	cmp	byte ptr [rcx + 0x30], 0x11
	jne	.label_2914
	mov	rsi, qword ptr [r15]
	mov	edx, dword ptr [r15 + 0x38]
	mov	rdi, rbp
	call	lower_subexp
	mov	r8, qword ptr [rsp + 8]
	mov	qword ptr [rbx + 0x10], rax
	test	rax, rax
	je	.label_2914
	mov	qword ptr [rax], rbx
	nop	
.label_2914:
	mov	eax, dword ptr [rsp + 0x20]
	test	eax, eax
	jne	.label_2771
	mov	rdx, qword ptr [rbx]
	test	rdx, rdx
	je	.label_2829
	mov	rax, qword ptr [rdx + 0x10]
	cmp	rax, rbx
	je	.label_2924
	test	rax, rax
	je	.label_2924
	jmp	.label_2901
.label_2829:
	mov	rax, qword ptr [r12]
	mov	ebx, 0xfffc00ff
	nop	dword ptr [rax + rax]
.label_2796:
	mov	rbp, rax
	mov	rax, qword ptr [rbp + 8]
	test	rax, rax
	jne	.label_2796
	mov	rax, qword ptr [rbp + 0x10]
	test	rax, rax
	jne	.label_2796
	nop	word ptr cs:[rax + rax]
.label_2852:
	cmp	byte ptr [rbp + 0x30], 0x10
	jne	.label_2929
	mov	rax, qword ptr [rbp + 8]
	mov	rcx, qword ptr [rax + 0x18]
	mov	qword ptr [rbp + 0x18], rcx
	mov	rax, qword ptr [rax + 0x38]
	mov	qword ptr [rbp + 0x38], rax
	jmp	.label_2773
	.section	.text
	.align	32
	#Procedure 0x41a7ec
	.globl sub_41a7ec
	.type sub_41a7ec, @function
sub_41a7ec:

	nop	dword ptr [rax]
.label_2929:
	mov	qword ptr [rbp + 0x18], rbp
	mov	rsi, qword ptr [rbp + 0x28]
	mov	rdx, qword ptr [rbp + 0x30]
	mov	rdi, r8
	call	re_dfa_add_node
	mov	qword ptr [rbp + 0x38], rax
	cmp	rax, -1
	je	.label_2768
	cmp	byte ptr [rbp + 0x30], 0xc
	mov	r8, qword ptr [rsp + 8]
	jne	.label_2773
	mov	ecx, dword ptr [rbp + 0x28]
	mov	rdx, qword ptr [r8]
	shl	rax, 4
	shl	ecx, 8
	and	ecx, 0x3ff00
	mov	esi, dword ptr [rdx + rax + 8]
	and	esi, ebx
	or	esi, ecx
	mov	dword ptr [rdx + rax + 8], esi
.label_2773:
	mov	rcx, qword ptr [rbp]
	test	rcx, rcx
	je	.label_2786
	mov	rax, qword ptr [rcx + 0x10]
	cmp	rax, rbp
	mov	rbp, rcx
	je	.label_2852
	test	rax, rax
	mov	rbp, rcx
	je	.label_2852
	jmp	.label_2796
.label_2786:
	mov	rbp, qword ptr [r12]
	mov	al, byte ptr [rbp + 0x30]
	cmp	al, 0x10
	je	.label_2797
	cmp	al, 0xb
	jne	.label_2799
	mov	rax, qword ptr [rbp + 8]
	mov	qword ptr [rax + 0x20], rbp
	jmp	.label_2810
.label_2797:
	mov	rax, qword ptr [rbp + 8]
	mov	rcx, qword ptr [rbp + 0x10]
	mov	rdx, qword ptr [rcx + 0x18]
	mov	qword ptr [rax + 0x20], rdx
	jmp	.label_2908
.label_2799:
	mov	rax, qword ptr [rbp + 8]
	test	rax, rax
	je	.label_2807
	mov	rcx, qword ptr [rbp + 0x20]
	mov	qword ptr [rax + 0x20], rcx
.label_2807:
	mov	rcx, qword ptr [rbp + 0x10]
	test	rcx, rcx
	je	.label_2810
.label_2908:
	mov	rdx, qword ptr [rbp + 0x20]
	mov	qword ptr [rcx + 0x20], rdx
.label_2810:
	mov	rdx, rbp
	jmp	.label_2814
.label_2872:
	mov	rax, qword ptr [rcx + 8]
	mov	rdx, qword ptr [rcx + 0x10]
	mov	rsi, qword ptr [rdx + 0x18]
	mov	qword ptr [rax + 0x20], rsi
	mov	rsi, qword ptr [rcx + 0x20]
	mov	qword ptr [rdx + 0x20], rsi
	mov	rdx, rcx
.label_2814:
	test	rax, rax
	mov	rcx, rax
	jne	.label_2823
	xor	eax, eax
	nop	dword ptr [rax]
.label_2868:
	mov	rsi, rax
	mov	rax, rdx
	mov	rcx, qword ptr [rax + 0x10]
	cmp	rcx, rsi
	je	.label_2917
	test	rcx, rcx
	jne	.label_2823
.label_2917:
	mov	rdx, qword ptr [rax]
	test	rdx, rdx
	jne	.label_2868
	jmp	.label_2832
	.section	.text
	.align	32
	#Procedure 0x41a8fe
	.globl sub_41a8fe
	.type sub_41a8fe, @function
sub_41a8fe:

	nop	
.label_2823:
	mov	al, byte ptr [rcx + 0x30]
	cmp	al, 0x10
	je	.label_2872
	cmp	al, 0xb
	jne	.label_2833
	mov	rax, qword ptr [rcx + 8]
	mov	qword ptr [rax + 0x20], rcx
	mov	rdx, rcx
	jmp	.label_2814
.label_2833:
	mov	rax, qword ptr [rcx + 8]
	test	rax, rax
	je	.label_2836
	mov	rdx, qword ptr [rcx + 0x20]
	mov	qword ptr [rax + 0x20], rdx
.label_2836:
	mov	rsi, qword ptr [rcx + 0x10]
	test	rsi, rsi
	mov	rdx, rcx
	je	.label_2814
	mov	rdx, qword ptr [rcx + 0x20]
	mov	qword ptr [rsi + 0x20], rdx
	mov	rdx, rcx
	jmp	.label_2814
.label_2832:
	mov	rdi, r8
	mov	rsi, rbp
	call	link_nfa_nodes
	mov	rsi, qword ptr [rsp + 8]
	test	eax, eax
	jne	.label_2771
	nop	word ptr [rax + rax]
.label_2851:
	mov	rbx, qword ptr [rbp + 8]
	test	rbx, rbx
	jne	.label_2843
	xor	eax, eax
	nop	dword ptr [rax + rax]
.label_2849:
	mov	rcx, rax
	mov	rax, rbp
	mov	rbx, qword ptr [rax + 0x10]
	cmp	rbx, rcx
	je	.label_2846
	test	rbx, rbx
	jne	.label_2843
.label_2846:
	mov	rbp, qword ptr [rax]
	test	rbp, rbp
	jne	.label_2849
	jmp	.label_2850
	.section	.text
	.align	32
	#Procedure 0x41a98e
	.globl sub_41a98e
	.type sub_41a98e, @function
sub_41a98e:

	nop	
.label_2843:
	mov	rdi, rsi
	mov	rsi, rbx
	call	link_nfa_nodes
	mov	rsi, qword ptr [rsp + 8]
	test	eax, eax
	mov	rbp, rbx
	je	.label_2851
	jmp	.label_2771
.label_2850:
	xor	eax, eax
	lea	r12, [rsp + 0x20]
	xor	r14d, r14d
	jmp	.label_2922
	.section	.text
	.align	32
	#Procedure 0x41a9b8
	.globl sub_41a9b8
	.type sub_41a9b8, @function
sub_41a9b8:

	nop	dword ptr [rax + rax]
.label_2867:
	inc	rbp
	mov	rax, rbp
.label_2922:
	cmp	rax, qword ptr [rsi + 0x10]
	jne	.label_2862
	xor	ebp, ebp
	test	r14b, 1
	mov	r14d, 0
	jne	.label_2863
	jmp	.label_2865
	.section	.text
	.align	32
	#Procedure 0x41a9dc
	.globl sub_41a9dc
	.type sub_41a9dc, @function
sub_41a9dc:

	nop	dword ptr [rax]
.label_2862:
	mov	rbp, rax
.label_2863:
	mov	rax, qword ptr [rsi + 0x30]
	lea	rbx, [rbp + rbp*2]
	cmp	qword ptr [rax + rbx*8 + 8], 0
	jne	.label_2867
	mov	ecx, 1
	mov	rdi, r12
	mov	rdx, rbp
	mov	r13, rsi
	call	calc_eclosure_iter
	test	eax, eax
	jne	.label_2771
	mov	rax, qword ptr [r13 + 0x30]
	cmp	qword ptr [rax + rbx*8 + 8], 0
	mov	rsi, r13
	jne	.label_2867
	mov	rdi, qword ptr [rsp + 0x30]
	call	free
	mov	rsi, qword ptr [rsp + 8]
	mov	r14b, 1
	jmp	.label_2867
.label_2865:
	test	byte ptr [r15 + 0x38], 0x10
	mov	qword ptr [rsp + 0x38], r15
	mov	r14, qword ptr [rsp + 0x18]
	jne	.label_2882
	cmp	qword ptr [r15 + 0x30], 0
	je	.label_2882
	test	byte ptr [rsi + 0xb0], 1
	jne	.label_2888
.label_2882:
	cmp	qword ptr [rsi + 0x98], 0
	je	.label_2889
.label_2888:
	shl	rax, 3
	lea	rdi, [rax + rax*2]
	call	malloc
	mov	r8, qword ptr [rsp + 8]
	mov	qword ptr [r8 + 0x38], rax
	test	rax, rax
	je	.label_2768
	cmp	qword ptr [r8 + 0x10], 0
	je	.label_2889
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	mov	rax, qword ptr [r8 + 0x10]
	cmp	rax, 2
	jb	.label_2894
	mov	ecx, 1
	mov	edx, 0x18
	nop	
.label_2777:
	mov	rax, qword ptr [r8 + 0x38]
	movdqu	xmmword ptr [rax + rdx], xmm0
	mov	qword ptr [rax + rdx + 0x10], 0
	inc	rcx
	mov	rax, qword ptr [r8 + 0x10]
	add	rdx, 0x18
	cmp	rcx, rax
	jb	.label_2777
.label_2894:
	test	rax, rax
	je	.label_2889
	mov	r9, qword ptr [r8 + 0x30]
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_2925:
	lea	r10, [rbp + rbp*2]
	cmp	qword ptr [r9 + r10*8 + 8], 0
	jle	.label_2904
	mov	r13, qword ptr [r9 + r10*8 + 0x10]
	xor	ebx, ebx
	mov	qword ptr [rsp + 0x40], r10
	nop	dword ptr [rax]
.label_2906:
	mov	r14, qword ptr [r8 + 0x38]
	mov	rax, qword ptr [r13 + rbx*8]
	lea	r12, [rax + rax*2]
	mov	rax, qword ptr [r14 + r12*8]
	lea	r15, [r14 + r12*8 + 8]
	mov	rdx, qword ptr [r14 + r12*8 + 8]
	cmp	rax, rdx
	jne	.label_2909
	lea	rcx, [r14 + r12*8]
	lea	rdx, [rax + rax + 2]
	lea	rax, [rax + rax]
	mov	qword ptr [rcx], rdx
	mov	rdi, qword ptr [r14 + r12*8 + 0x10]
	lea	rsi, [rax*8 + 0x10]
	call	realloc
	test	rax, rax
	je	.label_2915
	lea	rcx, [r14 + r12*8 + 0x10]
	mov	qword ptr [rcx], rax
	mov	rdx, qword ptr [r15]
	mov	r8, qword ptr [rsp + 8]
	mov	r9, qword ptr [r8 + 0x30]
	mov	r10, qword ptr [rsp + 0x40]
	jmp	.label_2916
	.section	.text
	.align	32
	#Procedure 0x41ab76
	.globl sub_41ab76
	.type sub_41ab76, @function
sub_41ab76:

	nop	word ptr cs:[rax + rax]
.label_2909:
	mov	rax, qword ptr [r14 + r12*8 + 0x10]
.label_2916:
	lea	rsi, [rdx + 1]
	mov	qword ptr [r15], rsi
	mov	qword ptr [rax + rdx*8], rbp
	inc	rbx
	cmp	rbx, qword ptr [r9 + r10*8 + 8]
	jl	.label_2906
	mov	rax, qword ptr [r8 + 0x10]
	mov	r15, qword ptr [rsp + 0x38]
	mov	r14, qword ptr [rsp + 0x18]
.label_2904:
	inc	rbp
	cmp	rbp, rax
	jb	.label_2925
.label_2889:
	mov	dword ptr [rsp + 4], 0
	cmp	qword ptr [rsp + 0xe0], 0
	jne	.label_2791
	mov	al, byte ptr [r14 + 0xb0]
	mov	ecx, eax
	and	cl, 4
	je	.label_2791
	cmp	qword ptr [r15 + 0x28], 0
	jne	.label_2791
	mov	rdx, qword ptr [r14 + 0x10]
	test	rdx, rdx
	je	.label_2932
	mov	rbp, qword ptr [r14]
	xor	r9d, r9d
	movabs	r8, 0x1000000010001
	mov	rcx, rbp
	xor	r10d, r10d
	xor	edi, edi
.label_2801:
	movzx	ebx, byte ptr [rcx + 8]
	dec	bl
	movzx	esi, bl
	cmp	sil, 0xb
	ja	.label_2772
	jmp	qword ptr [(rsi * 8) + label_2778]
.label_3291:
	cmp	byte ptr [rcx], 0
	mov	sil, 1
	js	.label_2780
	mov	esi, r10d
.label_2780:
	mov	r10b, sil
	jmp	.label_2789
.label_3292:
	mov	rsi, qword ptr [rcx]
	cmp	qword ptr [rsi + 0x10], 0
	jne	.label_2791
	cmp	qword ptr [rsi + 0x18], 0
	je	.label_2789
	jmp	.label_2791
.label_3293:
	mov	r9b, 1
	jmp	.label_2789
.label_3294:
	mov	esi, dword ptr [rcx]
	lea	ebx, [rsi - 0x10]
	cmp	ebx, 0x30
	ja	.label_2793
	bt	r8, rbx
	jb	.label_2789
.label_2793:
	cmp	esi, 0x80
	jne	.label_2791
.label_2789:
	inc	rdi
	add	rcx, 0x10
	cmp	rdi, rdx
	jb	.label_2801
	mov	cl, r9b
	and	cl, 1
	or	r10b, r9b
	test	r10b, 1
	je	.label_2802
	xor	eax, eax
	mov	edx, 8
	jmp	.label_2919
.label_2768:
	mov	eax, 0xc
.label_2771:
	mov	dword ptr [rsp + 4], eax
.label_2774:
	mov	r12, qword ptr [rsp + 0x18]
	jmp	.label_2811
.label_2927:
	add	rdx, 0x10
	mov	rbp, qword ptr [r14]
.label_2919:
	mov	esi, dword ptr [rbp + rdx]
	cmp	sil, 5
	je	.label_2815
	cmp	sil, 1
	jne	.label_2818
	cmp	byte ptr [rbp + rdx - 8], 0
	jns	.label_2818
	and	esi, 0xffdfffff
	jmp	.label_2821
.label_2815:
	and	esi, 0xffffff00
	or	esi, 7
.label_2821:
	mov	dword ptr [rbp + rdx], esi
.label_2818:
	inc	rax
	cmp	rax, qword ptr [r14 + 0x10]
	jb	.label_2927
	mov	al, byte ptr [r14 + 0xb0]
	jmp	.label_2802
.label_2932:
	xor	ecx, ecx
.label_2802:
	mov	dword ptr [r14 + 0xb4], 1
	cmp	qword ptr [r14 + 0x98], 0
	setg	dl
	or	dl, cl
	add	dl, dl
	and	al, 0xf9
	or	al, dl
	mov	byte ptr [r14 + 0xb0], al
.label_2791:
	mov	rax, qword ptr [r14 + 0x68]
	mov	rax, qword ptr [rax + 0x18]
	mov	rax, qword ptr [rax + 0x38]
	mov	qword ptr [r14 + 0x90], rax
	mov	r15, qword ptr [r14 + 0x30]
	lea	r12, [rax + rax*2]
	mov	r13, qword ptr [r15 + r12*8 + 8]
	mov	qword ptr [rsp + 0x28], r13
	mov	r14, qword ptr [r15 + r12*8 + 8]
	test	r14, r14
	jle	.label_2837
	mov	qword ptr [rsp + 0x20], r13
	lea	rdi, [r13*8]
	call	malloc
	mov	rbp, rax
	mov	qword ptr [rsp + 0x30], rbp
	test	rbp, rbp
	je	.label_2842
	mov	rsi, qword ptr [r15 + r12*8 + 0x10]
	shl	r14, 3
	mov	rdi, rbp
	mov	rdx, r14
	call	memcpy
	mov	dword ptr [rsp + 0x14], 0
	test	r13, r13
	mov	r15, qword ptr [rsp + 0x38]
	mov	r12, qword ptr [rsp + 0x18]
	jle	.label_2848
	mov	rax, qword ptr [r12 + 0x98]
	test	rax, rax
	jle	.label_2848
	xor	eax, eax
	lea	r14, [rsp + 0x20]
	jmp	.label_2857
	.section	.text
	.align	32
	#Procedure 0x41adb8
	.globl sub_41adb8
	.type sub_41adb8, @function
sub_41adb8:

	nop	dword ptr [rax + rax]
.label_2918:
	mov	rbp, qword ptr [rsp + 0x30]
.label_2857:
	mov	r8, qword ptr [rbp + rax*8]
	mov	rdx, qword ptr [r12]
	mov	rsi, r8
	shl	rsi, 4
	cmp	byte ptr [rdx + rsi + 8], 4
	jne	.label_2861
	test	r13, r13
	mov	edi, 0
	jle	.label_2871
	add	rsi, rdx
	xor	edi, edi
	nop	
.label_2784:
	mov	rcx, qword ptr [rbp + rdi*8]
	shl	rcx, 4
	cmp	byte ptr [rdx + rcx + 8], 9
	jne	.label_2869
	mov	rcx, qword ptr [rdx + rcx]
	cmp	rcx, qword ptr [rsi]
	je	.label_2871
.label_2869:
	inc	rdi
	cmp	rdi, r13
	jl	.label_2784
.label_2871:
	cmp	rdi, r13
	je	.label_2861
	mov	rcx, qword ptr [r12 + 0x28]
	lea	rdx, [r8 + r8*2]
	mov	rcx, qword ptr [rcx + rdx*8 + 0x10]
	mov	rcx, qword ptr [rcx]
	test	r13, r13
	jle	.label_2879
	mov	rdx, r13
	dec	rdx
	mov	esi, 0
	je	.label_2834
	xor	esi, esi
	nop	dword ptr [rax + rax]
.label_2830:
	lea	rdi, [rsi + rdx]
	shr	rdi, 1
	cmp	qword ptr [rbp + rdi*8], rcx
	lea	rbx, [rdi + 1]
	cmovl	rsi, rbx
	cmovge	rdx, rdi
	cmp	rsi, rdx
	jb	.label_2830
.label_2834:
	cmp	rsi, -1
	je	.label_2879
	cmp	qword ptr [rbp + rsi*8], rcx
	je	.label_2861
.label_2879:
	mov	rax, qword ptr [r12 + 0x30]
	lea	rcx, [rcx + rcx*2]
	lea	rsi, [rax + rcx*8]
	mov	rdi, r14
	call	re_node_set_merge
	test	eax, eax
	jne	.label_2769
	mov	r13, qword ptr [rsp + 0x28]
	xor	eax, eax
	nop	
.label_2861:
	inc	rax
	cmp	rax, r13
	jl	.label_2918
	jmp	.label_2848
.label_2837:
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rsp + 0x20], xmm0
	mov	qword ptr [rsp + 0x30], 0
	mov	dword ptr [rsp + 0x14], 0
	mov	r15, qword ptr [rsp + 0x38]
	mov	r12, qword ptr [rsp + 0x18]
.label_2848:
	lea	rdi, [rsp + 0x14]
	lea	rdx, [rsp + 0x20]
	xor	ecx, ecx
	mov	rsi, r12
	call	re_acquire_state_context
	mov	qword ptr [r12 + 0x48], rax
	test	rax, rax
	je	.label_2899
	cmp	byte ptr [rax + 0x68], 0
	js	.label_2902
	mov	qword ptr [r12 + 0x60], rax
	mov	qword ptr [r12 + 0x58], rax
	mov	qword ptr [r12 + 0x50], rax
	jmp	.label_2903
.label_2902:
	lea	rbx, [rsp + 0x14]
	lea	rbp, [rsp + 0x20]
	mov	ecx, 1
	mov	rdi, rbx
	mov	rsi, r12
	mov	rdx, rbp
	call	re_acquire_state_context
	mov	qword ptr [r12 + 0x50], rax
	mov	ecx, 2
	mov	rdi, rbx
	mov	rsi, r12
	mov	rdx, rbp
	call	re_acquire_state_context
	mov	qword ptr [r12 + 0x58], rax
	mov	ecx, 6
	mov	rdi, rbx
	mov	rsi, r12
	mov	rdx, rbp
	call	re_acquire_state_context
	mov	qword ptr [r12 + 0x60], rax
	cmp	qword ptr [r12 + 0x50], 0
	je	.label_2876
	test	rax, rax
	je	.label_2876
	mov	rax, qword ptr [r12 + 0x58]
	test	rax, rax
	je	.label_2876
.label_2903:
	mov	rdi, qword ptr [rsp + 0x30]
	call	free
	xor	eax, eax
.label_2769:
	mov	dword ptr [rsp + 4], eax
	mov	rbx, qword ptr [r15]
	mov	rdi, qword ptr [rbx + 0x70]
	test	rdi, rdi
	je	.label_2923
	nop	dword ptr [rax]
.label_2926:
	mov	rbp, qword ptr [rdi]
	call	free
	test	rbp, rbp
	mov	rdi, rbp
	jne	.label_2926
.label_2923:
	mov	qword ptr [rbx + 0x70], 0
	mov	dword ptr [rbx + 0x80], 0xf
	mov	qword ptr [rbx + 0x68], 0
	mov	rdi, qword ptr [rbx + 0x20]
	call	free
	mov	qword ptr [rbx + 0x20], 0
	mov	rdi, qword ptr [rsp + 0x58]
	call	free
	mov	rdi, qword ptr [rsp + 0x60]
	call	free
	cmp	byte ptr [rsp + 0xd3], 0
	je	.label_2912
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
.label_2912:
	xor	eax, eax
	cmp	dword ptr [rsp + 4], 0
	je	.label_2779
	jmp	.label_2767
.label_2876:
	mov	eax, dword ptr [rsp + 0x14]
	jmp	.label_2769
.label_2915:
	mov	eax, 0xc
	mov	r15, qword ptr [rsp + 0x38]
	jmp	.label_2771
.label_2886:
	mov	esi, 0xe8
	mov	rdi, r12
	call	realloc
	mov	r12, rax
	mov	eax, 0xc
	test	r12, r12
	je	.label_2779
	mov	qword ptr [r15 + 8], 0xe8
	mov	qword ptr [r15], r12
	jmp	.label_2785
.label_2859:
	mov	edi, 0x3c8
	call	malloc
	xor	ebp, ebp
	test	rax, rax
	je	.label_2792
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_2795
.label_2878:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_2803
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	xor	ecx, ecx
	jmp	.label_2805
.label_2803:
	mov	dword ptr [rsp + 4], 0xc
.label_2856:
	mov	qword ptr [r12 + 0x68], 0
.label_2811:
	mov	rbx, qword ptr [r15]
	mov	rdi, qword ptr [rbx + 0x70]
	test	rdi, rdi
	je	.label_2787
	nop	word ptr cs:[rax + rax]
.label_2824:
	mov	rbp, qword ptr [rdi]
	call	free
	test	rbp, rbp
	mov	rdi, rbp
	jne	.label_2824
.label_2787:
	mov	qword ptr [rbx + 0x70], 0
	mov	dword ptr [rbx + 0x80], 0xf
	mov	qword ptr [rbx + 0x68], 0
	mov	rdi, qword ptr [rbx + 0x20]
	call	free
	mov	qword ptr [rbx + 0x20], 0
	mov	rdi, qword ptr [rsp + 0x58]
	call	free
	mov	rdi, qword ptr [rsp + 0x60]
	call	free
	cmp	byte ptr [rsp + 0xd3], 0
	je	.label_2767
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
.label_2767:
	mov	rdi, r12
	call	free_dfa_content
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r15], xmm0
	mov	eax, dword ptr [rsp + 4]
.label_2779:
	add	rsp, 0xe8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2899:
	mov	eax, dword ptr [rsp + 0x14]
	jmp	.label_2769
.label_2842:
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rsp + 0x20], xmm0
	mov	dword ptr [rsp + 0x14], 0xc
	mov	eax, 0xc
	mov	r15, qword ptr [rsp + 0x38]
	mov	r12, qword ptr [rsp + 0x18]
	jmp	.label_2769
.label_2772:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x41b18e
	.globl sub_41b18e
	.type sub_41b18e, @function
sub_41b18e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x41b190

	.globl parse_branch
	.type parse_branch, @function
parse_branch:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	rbp, r9
	mov	r12, rdx
	mov	r13, rsi
	mov	r15, qword ptr [r13]
	mov	qword ptr [rsp + 8], rdi
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp], r8
	call	parse_expression
	mov	rbx, rax
	xor	r14d, r14d
	test	rbx, rbx
	jne	.label_2961
	mov	eax, dword ptr [rbp]
	test	eax, eax
	jne	.label_2950
.label_2961:
	cmp	qword ptr [rsp], 0
	jne	.label_2956
	jmp	.label_2949
	.section	.text
	.align	32
	#Procedure 0x41b1e1
	.globl sub_41b1e1
	.type sub_41b1e1, @function
sub_41b1e1:

	nop	word ptr cs:[rax + rax]
.label_2945:
	test	rbx, rbx
	cmove	rbx, r14
.label_2949:
	movzx	eax, byte ptr [r12 + 8]
	or	al, 8
	cmp	al, 0xa
	je	.label_2952
	xor	r8d, r8d
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, r13
	mov	rdx, r12
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r9, rbp
	call	parse_expression
	mov	rcx, rbp
	mov	r14, rax
	test	rbx, rbx
	setne	al
	test	r14, r14
	jne	.label_2940
	mov	ecx, dword ptr [rcx]
	test	ecx, ecx
	jne	.label_2942
.label_2940:
	test	rbx, rbx
	je	.label_2945
	test	r14, r14
	je	.label_2945
	mov	ecx, dword ptr [r15 + 0x80]
	cmp	ecx, 0xf
	je	.label_2948
	mov	rax, qword ptr [r15 + 0x70]
.label_2960:
	lea	edx, [rcx + 1]
	mov	dword ptr [r15 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rdx, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rbx
	mov	qword ptr [rax + rcx + 0x18], r14
	mov	dword ptr [rax + rcx + 0x38], 0x10
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rbx], rdx
	mov	qword ptr [r14], rdx
	mov	rbx, rdx
	jmp	.label_2949
.label_2948:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_2938
	mov	rcx, qword ptr [r15 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r15 + 0x70], rax
	mov	dword ptr [r15 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_2960
	.section	.text
	.align	32
	#Procedure 0x41b2d4
	.globl sub_41b2d4
	.type sub_41b2d4, @function
sub_41b2d4:

	nop	word ptr cs:[rax + rax]
.label_2944:
	test	rbx, rbx
	cmove	rbx, r14
.label_2956:
	movzx	eax, byte ptr [r12 + 8]
	mov	ecx, eax
	or	cl, 8
	cmp	cl, 0xa
	je	.label_2952
	cmp	eax, 9
	je	.label_2952
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, r13
	mov	rdx, r12
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r8, qword ptr [rsp]
	mov	r9, rbp
	call	parse_expression
	mov	rcx, rbp
	mov	r14, rax
	test	rbx, rbx
	setne	al
	test	r14, r14
	jne	.label_2939
	mov	ecx, dword ptr [rcx]
	test	ecx, ecx
	jne	.label_2942
.label_2939:
	test	rbx, rbx
	je	.label_2944
	test	r14, r14
	je	.label_2944
	mov	ecx, dword ptr [r15 + 0x80]
	cmp	ecx, 0xf
	je	.label_2947
	mov	rax, qword ptr [r15 + 0x70]
.label_2959:
	lea	edx, [rcx + 1]
	mov	dword ptr [r15 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rdx, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rbx
	mov	qword ptr [rax + rcx + 0x18], r14
	mov	dword ptr [rax + rcx + 0x38], 0x10
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rbx], rdx
	mov	qword ptr [r14], rdx
	mov	rbx, rdx
	jmp	.label_2956
.label_2947:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_2938
	mov	rcx, qword ptr [r15 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r15 + 0x70], rax
	mov	dword ptr [r15 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_2959
.label_2952:
	mov	r14, rbx
.label_2950:
	mov	rax, r14
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2942:
	xor	r14d, r14d
	test	al, al
	je	.label_2950
	mov	r15d, 0x400ff
	xor	r14d, r14d
	nop	word ptr [rax + rax]
.label_2934:
	mov	rbp, rbx
	mov	rbx, qword ptr [rbp + 8]
	test	rbx, rbx
	jne	.label_2934
	mov	rbx, qword ptr [rbp + 0x10]
	test	rbx, rbx
	jne	.label_2934
.label_2954:
	mov	eax, dword ptr [rbp + 0x30]
	and	eax, r15d
	cmp	eax, 3
	je	.label_2937
	cmp	eax, 6
	jne	.label_2962
	mov	rbx, qword ptr [rbp + 0x28]
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rdi, qword ptr [rbx + 8]
	call	free
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	mov	rdi, rbx
	jmp	.label_2946
.label_2937:
	mov	rdi, qword ptr [rbp + 0x28]
.label_2946:
	call	free
.label_2962:
	mov	rax, qword ptr [rbp]
	test	rax, rax
	je	.label_2950
	mov	rbx, qword ptr [rax + 0x10]
	cmp	rbx, rbp
	mov	rbp, rax
	je	.label_2954
	test	rbx, rbx
	mov	rbp, rax
	je	.label_2954
	jmp	.label_2934
.label_2938:
	mov	rcx, rbp
	mov	r15d, 0x400ff
.label_2935:
	mov	r12, r14
	mov	r14, qword ptr [r12 + 8]
	test	r14, r14
	jne	.label_2935
	mov	r14, qword ptr [r12 + 0x10]
	test	r14, r14
	jne	.label_2935
.label_2965:
	mov	eax, dword ptr [r12 + 0x30]
	and	eax, r15d
	cmp	eax, 3
	je	.label_2957
	cmp	eax, 6
	jne	.label_2958
	mov	r14, qword ptr [r12 + 0x28]
	mov	rdi, qword ptr [r14]
	call	free
	mov	rdi, qword ptr [r14 + 8]
	call	free
	mov	rdi, qword ptr [r14 + 0x10]
	call	free
	mov	rdi, qword ptr [r14 + 0x18]
	call	free
	mov	rdi, r14
	jmp	.label_2963
.label_2957:
	mov	rdi, qword ptr [r12 + 0x28]
.label_2963:
	call	free
	mov	rcx, rbp
.label_2958:
	mov	rax, qword ptr [r12]
	test	rax, rax
	je	.label_2964
	mov	r14, qword ptr [rax + 0x10]
	cmp	r14, r12
	mov	r12, rax
	je	.label_2965
	test	r14, r14
	mov	r12, rax
	je	.label_2965
	jmp	.label_2935
.label_2964:
	mov	r14d, 0x400ff
.label_2936:
	mov	r15, rbx
	mov	rbx, qword ptr [r15 + 8]
	test	rbx, rbx
	jne	.label_2936
	mov	rbx, qword ptr [r15 + 0x10]
	test	rbx, rbx
	jne	.label_2936
.label_2955:
	mov	eax, dword ptr [r15 + 0x30]
	and	eax, r14d
	cmp	eax, 3
	je	.label_2941
	cmp	eax, 6
	jne	.label_2943
	mov	rbx, qword ptr [r15 + 0x28]
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rdi, qword ptr [rbx + 8]
	call	free
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	mov	rdi, rbx
	jmp	.label_2951
.label_2941:
	mov	rdi, qword ptr [r15 + 0x28]
.label_2951:
	call	free
	mov	rcx, rbp
.label_2943:
	mov	rax, qword ptr [r15]
	test	rax, rax
	je	.label_2953
	mov	rbx, qword ptr [rax + 0x10]
	cmp	rbx, r15
	mov	r15, rax
	je	.label_2955
	test	rbx, rbx
	mov	r15, rax
	je	.label_2955
	jmp	.label_2936
.label_2953:
	mov	dword ptr [rcx], 0xc
	xor	r14d, r14d
	jmp	.label_2950
	.section	.text
	.align	32
	#Procedure 0x41b59b
	.globl sub_41b59b
	.type sub_41b59b, @function
sub_41b59b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41b5a0
	.globl xstr_cd_iconv
	.type xstr_cd_iconv, @function
xstr_cd_iconv:

	push	rbx
	call	str_cd_iconv
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_2967
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	je	.label_2966
.label_2967:
	mov	rax, rbx
	pop	rbx
	ret	
.label_2966:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x41b5c2
	.globl sub_41b5c2
	.type sub_41b5c2, @function
sub_41b5c2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41b5d0
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_2968
	test	rax, rax
	je	.label_2969
.label_2968:
	pop	rbx
	ret	
.label_2969:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x41b5ea
	.globl sub_41b5ea
	.type sub_41b5ea, @function
sub_41b5ea:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41b5f0
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_87]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_88]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_89]
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
	#Procedure 0x41b65e
	.globl sub_41b65e
	.type sub_41b65e, @function
sub_41b65e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x41b660

	.globl freea
	.type freea, @function
freea:
	test	dil, 0xf
	jne	.label_2970
	test	dil, 0x10
	jne	.label_2971
	ret	
.label_2971:
	movzx	eax, byte ptr [rdi - 1]
	sub	rdi, rax
	jmp	free
.label_2970:
	push	rax
	call	abort
	.section	.text
	.align	32
	#Procedure 0x41b67f
	.globl sub_41b67f
	.type sub_41b67f, @function
sub_41b67f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x41b680
	.globl rpl_regcomp
	.type rpl_regcomp, @function
rpl_regcomp:

	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	ebp, edx
	mov	r14, rsi
	mov	r15, rdi
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15], xmm0
	mov	qword ptr [r15 + 0x10], 0
	mov	edi, 0x100
	call	malloc
	mov	qword ptr [r15 + 0x20], rax
	mov	ebx, 0xc
	test	rax, rax
	je	.label_2973
	test	bpl, 1
	mov	eax, 0x3b2fc
	mov	ecx, 0x10102c6
	cmovne	rcx, rax
	mov	ebx, ebp
	and	ebx, 2
	shl	rbx, 0x15
	or	rbx, rcx
	test	bpl, 4
	jne	.label_2977
	lea	r12, [r15 + 0x38]
	mov	al, byte ptr [r15 + 0x38]
	and	al, 0x7f
	jmp	.label_2978
.label_2977:
	and	ebx, 0x143b2be
	or	rbx, 0x100
	lea	r12, [r15 + 0x38]
	mov	al, byte ptr [r15 + 0x38]
	or	al, 0x80
.label_2978:
	mov	byte ptr [r15 + 0x38], al
	add	bpl, bpl
	and	bpl, 0x10
	and	al, 0xef
	or	al, bpl
	mov	byte ptr [r15 + 0x38], al
	mov	qword ptr [r15 + 0x28], 0
	mov	rdi, r14
	call	strlen
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rax
	mov	rcx, rbx
	call	re_compile_internal
	cmp	eax, 0x10
	mov	ebx, 8
	cmovne	ebx, eax
	test	ebx, ebx
	jne	.label_2976
	mov	rbx, qword ptr [r15]
	mov	rbp, qword ptr [r15 + 0x20]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbp + 0xf0], xmm0
	movups	xmmword ptr [rbp + 0xe0], xmm0
	movups	xmmword ptr [rbp + 0xd0], xmm0
	movups	xmmword ptr [rbp + 0xc0], xmm0
	movups	xmmword ptr [rbp + 0xb0], xmm0
	movups	xmmword ptr [rbp + 0xa0], xmm0
	movups	xmmword ptr [rbp + 0x90], xmm0
	movups	xmmword ptr [rbp + 0x80], xmm0
	movups	xmmword ptr [rbp + 0x70], xmm0
	movups	xmmword ptr [rbp + 0x60], xmm0
	movups	xmmword ptr [rbp + 0x50], xmm0
	movups	xmmword ptr [rbp + 0x40], xmm0
	movups	xmmword ptr [rbp + 0x30], xmm0
	movups	xmmword ptr [rbp + 0x20], xmm0
	movups	xmmword ptr [rbp + 0x10], xmm0
	movups	xmmword ptr [rbp], xmm0
	mov	rsi, qword ptr [rbx + 0x48]
	mov	rdi, r15
	mov	rdx, rbp
	call	re_compile_fastmap_iter
	mov	rax, qword ptr [rbx + 0x48]
	mov	rsi, qword ptr [rbx + 0x50]
	cmp	rax, rsi
	je	.label_2972
	mov	rdi, r15
	mov	rdx, rbp
	call	re_compile_fastmap_iter
	mov	rax, qword ptr [rbx + 0x48]
.label_2972:
	mov	rsi, qword ptr [rbx + 0x58]
	cmp	rax, rsi
	je	.label_2975
	mov	rdi, r15
	mov	rdx, rbp
	call	re_compile_fastmap_iter
	mov	rax, qword ptr [rbx + 0x48]
.label_2975:
	mov	rsi, qword ptr [rbx + 0x60]
	cmp	rax, rsi
	je	.label_2974
	mov	rdi, r15
	mov	rdx, rbp
	call	re_compile_fastmap_iter
.label_2974:
	or	byte ptr [r12], 8
	xor	ebx, ebx
.label_2973:
	mov	eax, ebx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2976:
	mov	rdi, qword ptr [r15 + 0x20]
	call	free
	mov	qword ptr [r15 + 0x20], 0
	jmp	.label_2973
	.section	.text
	.align	32
	#Procedure 0x41b828
	.globl sub_41b828
	.type sub_41b828, @function
sub_41b828:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41b830
	.globl mbiter_multi_copy
	.type mbiter_multi_copy, @function
mbiter_multi_copy:

	push	r15
	push	r14
	push	rbx
	mov	rbx, rsi
	mov	r14, rdi
	mov	rax, qword ptr [rbx]
	mov	qword ptr [r14], rax
	mov	al, byte ptr [rbx + 8]
	test	al, al
	mov	byte ptr [r14 + 8], al
	je	.label_2979
	mov	rax, qword ptr [rbx + 0xc]
	mov	qword ptr [r14 + 0xc], rax
	jmp	.label_2981
.label_2979:
	mov	qword ptr [r14 + 0xc], 0
.label_2981:
	mov	al, byte ptr [rbx + 0x14]
	mov	byte ptr [r14 + 0x14], al
	mov	rsi, qword ptr [rbx + 0x18]
	lea	rax, [rbx + 0x30]
	cmp	rsi, rax
	jne	.label_2982
	lea	r15, [r14 + 0x30]
	mov	rdx, qword ptr [rbx + 0x20]
	mov	rdi, r15
	call	memcpy
	mov	rsi, r15
.label_2982:
	mov	qword ptr [r14 + 0x18], rsi
	mov	rax, qword ptr [rbx + 0x20]
	mov	qword ptr [r14 + 0x20], rax
	mov	rax, qword ptr [rbx + 0x28]
	test	al, al
	mov	byte ptr [r14 + 0x28], al
	je	.label_2980
	shr	rax, 0x20
	mov	dword ptr [r14 + 0x2c], eax
.label_2980:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b8ab
	.globl sub_41b8ab
	.type sub_41b8ab, @function
sub_41b8ab:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41b8b0
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_2988
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_2987
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_2983
.label_2986:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_2989
	test	rax, rax
	je	.label_2987
.label_2989:
	pop	rbx
	ret	
.label_2987:
	call	xalloc_die
.label_2984:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x41b8fb
	.globl sub_41b8fb
	.type sub_41b8fb, @function
sub_41b8fb:

	nop	word ptr [rax + rax]
.label_2988:
	test	rcx, rcx
	jne	.label_2985
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_2985:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_2984
.label_2983:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_2986
	test	rbx, rbx
	jne	.label_2986
	call	free
	xor	eax, eax
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b950

	.globl re_node_set_insert
	.type re_node_set_insert, @function
re_node_set_insert:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	mov	rsi, qword ptr [r14]
	test	rsi, rsi
	je	.label_2995
	mov	rcx, qword ptr [r14 + 8]
	test	rcx, rcx
	je	.label_2997
	cmp	rsi, rcx
	jne	.label_2999
	lea	rax, [rsi + rsi]
	mov	qword ptr [r14], rax
	mov	rdi, qword ptr [r14 + 0x10]
	shl	rsi, 4
	call	realloc
	test	rax, rax
	je	.label_2990
	mov	qword ptr [r14 + 0x10], rax
	mov	rcx, qword ptr [r14 + 8]
	jmp	.label_2994
.label_2995:
	movaps	xmm0, xmmword ptr [rip + label_37]
	movups	xmmword ptr [r14], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [r14 + 0x10], rax
	test	rax, rax
	je	.label_3000
	mov	qword ptr [rax], rbx
	jmp	.label_3003
.label_2997:
	mov	rax, qword ptr [r14 + 0x10]
	mov	qword ptr [rax], rbx
	jmp	.label_3002
.label_2999:
	mov	rax, qword ptr [r14 + 0x10]
.label_2994:
	cmp	qword ptr [rax], rbx
	jle	.label_2991
	test	rcx, rcx
	jle	.label_2993
	nop	word ptr cs:[rax + rax]
.label_2996:
	mov	rdx, qword ptr [rax + rcx*8 - 8]
	mov	qword ptr [rax + rcx*8], rdx
	cmp	rcx, 1
	lea	rcx, [rcx - 1]
	jg	.label_2996
	jmp	.label_2993
.label_2991:
	mov	rdx, qword ptr [rax + rcx*8 - 8]
	jmp	.label_3001
	.section	.text
	.align	32
	#Procedure 0x41b9fc
	.globl sub_41b9fc
	.type sub_41b9fc, @function
sub_41b9fc:

	nop	dword ptr [rax]
.label_2992:
	mov	qword ptr [rax + rcx*8], rdx
	mov	rdx, qword ptr [rax + rcx*8 - 0x10]
	dec	rcx
.label_3001:
	cmp	rdx, rbx
	jg	.label_2992
.label_2993:
	mov	qword ptr [rax + rcx*8], rbx
.label_3002:
	inc	qword ptr [r14 + 8]
.label_3003:
	mov	al, 1
.label_2998:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_3000:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
.label_2990:
	xor	eax, eax
	jmp	.label_2998
	.section	.text
	.align	32
	#Procedure 0x41ba2e
	.globl sub_41ba2e
	.type sub_41ba2e, @function
sub_41ba2e:

	nop	
.label_3004:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x41ba35
	.globl sub_41ba35
	.type sub_41ba35, @function
sub_41ba35:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41ba3f
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_3004
	call	rpl_calloc
	test	rax, rax
	je	.label_3004
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x41ba60

	.globl check_subexp_matching_top
	.type check_subexp_matching_top, @function
check_subexp_matching_top:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	qword ptr [rsp], rdx
	mov	r12, rsi
	mov	r15, rdi
	mov	rcx, qword ptr [r12 + 8]
	xor	eax, eax
	test	rcx, rcx
	jle	.label_3005
	mov	r13, qword ptr [r15 + 0x98]
	xor	ebx, ebx
	jmp	.label_3006
.label_3007:
	mov	rdi, qword ptr [r15 + 0xf8]
	mov	rsi, r14
	shl	rsi, 4
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_3005
	add	r14, r14
	mov	qword ptr [r15 + 0xf8], rcx
	mov	qword ptr [r15 + 0xf0], r14
	jmp	.label_3009
	.section	.text
	.align	32
	#Procedure 0x41bac7
	.globl sub_41bac7
	.type sub_41bac7, @function
sub_41bac7:

	nop	word ptr [rax + rax]
.label_3006:
	mov	rax, qword ptr [r12 + 0x10]
	mov	rbp, qword ptr [rax + rbx*8]
	mov	rax, qword ptr [r13]
	mov	rdx, rbp
	shl	rdx, 4
	cmp	byte ptr [rax + rdx + 8], 8
	jne	.label_3008
	mov	rax, qword ptr [rax + rdx]
	cmp	rax, 0x3f
	jg	.label_3008
	mov	rdx, qword ptr [r13 + 0xa0]
	bt	rdx, rax
	jae	.label_3008
	mov	r14, qword ptr [r15 + 0xe8]
	cmp	r14, qword ptr [r15 + 0xf0]
	je	.label_3007
.label_3009:
	mov	edi, 1
	mov	esi, 0x30
	call	rpl_calloc
	mov	rcx, qword ptr [r15 + 0xe8]
	mov	rdx, qword ptr [r15 + 0xf8]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [r15 + 0xf8]
	mov	rdx, qword ptr [rax + rcx*8]
	mov	eax, 0xc
	test	rdx, rdx
	je	.label_3005
	mov	qword ptr [rdx + 8], rbp
	inc	rcx
	mov	qword ptr [r15 + 0xe8], rcx
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rdx], rax
	mov	rcx, qword ptr [r12 + 8]
	nop	word ptr [rax + rax]
.label_3008:
	inc	rbx
	xor	eax, eax
	cmp	rbx, rcx
	jl	.label_3006
.label_3005:
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
	#Procedure 0x41bb8d
	.globl sub_41bb8d
	.type sub_41bb8d, @function
sub_41bb8d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x41bb90
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_3010
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_3011
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_3013
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_845
	mov	ecx, OFFSET FLAT:label_834
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_3012
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	32
	#Procedure 0x41bc04
	.globl sub_41bc04
	.type sub_41bc04, @function
sub_41bc04:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41bc10

	.globl check_halt_state_context
	.type check_halt_state_context, @function
check_halt_state_context:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	mov	eax, dword ptr [rbx + 0xa0]
	mov	rsi, rdx
	mov	edx, eax
	call	re_string_context_at
	mov	rdx, qword ptr [r14 + 0x10]
	xor	ecx, ecx
	test	rdx, rdx
	jle	.label_3015
	mov	esi, eax
	mov	rcx, qword ptr [rbx + 0x98]
	mov	r8, qword ptr [r14 + 0x18]
	mov	rdi, qword ptr [rcx]
	mov	ecx, eax
	and	ecx, 2
	and	eax, 8
	xor	ebx, ebx
	test	sil, 1
	jne	.label_3023
	test	ecx, ecx
	jne	.label_3016
	nop	word ptr cs:[rax + rax]
.label_3017:
	mov	rcx, qword ptr [r8 + rbx*8]
	mov	rsi, rcx
	shl	rsi, 4
	mov	esi, dword ptr [rdi + rsi + 8]
	cmp	sil, 2
	jne	.label_3021
	shr	esi, 8
	test	si, 0x3ff
	je	.label_3015
	test	sil, 0x24
	jne	.label_3021
	test	eax, eax
	jne	.label_3015
	test	sil, sil
	jns	.label_3015
	nop	word ptr [rax + rax]
.label_3021:
	inc	rbx
	cmp	rbx, rdx
	mov	ecx, 0
	jl	.label_3017
	jmp	.label_3015
	.section	.text
	.align	32
	#Procedure 0x41bcc2
	.globl sub_41bcc2
	.type sub_41bcc2, @function
sub_41bcc2:

	nop	word ptr cs:[rax + rax]
.label_3016:
	mov	rcx, qword ptr [r8 + rbx*8]
	mov	rsi, rcx
	shl	rsi, 4
	mov	esi, dword ptr [rdi + rsi + 8]
	cmp	sil, 2
	jne	.label_3018
	shr	esi, 8
	test	si, 0x3ff
	je	.label_3015
	test	sil, 4
	jne	.label_3018
	test	eax, eax
	jne	.label_3015
	test	sil, sil
	jns	.label_3015
.label_3018:
	inc	rbx
	cmp	rbx, rdx
	mov	ecx, 0
	jl	.label_3016
	jmp	.label_3015
.label_3023:
	test	ecx, ecx
	jne	.label_3019
.label_3020:
	mov	rcx, qword ptr [r8 + rbx*8]
	mov	rsi, rcx
	shl	rsi, 4
	mov	esi, dword ptr [rdi + rsi + 8]
	cmp	sil, 2
	jne	.label_3014
	shr	esi, 8
	test	si, 0x3ff
	je	.label_3015
	test	sil, 0x28
	jne	.label_3014
	test	eax, eax
	jne	.label_3015
	test	sil, sil
	jns	.label_3015
	nop	
.label_3014:
	inc	rbx
	cmp	rbx, rdx
	mov	ecx, 0
	jl	.label_3020
	jmp	.label_3015
	.section	.text
	.align	32
	#Procedure 0x41bd5f
	.globl sub_41bd5f
	.type sub_41bd5f, @function
sub_41bd5f:

	nop	
.label_3019:
	mov	rcx, qword ptr [r8 + rbx*8]
	mov	rsi, rcx
	shl	rsi, 4
	mov	esi, dword ptr [rdi + rsi + 8]
	cmp	sil, 2
	jne	.label_3022
	shr	esi, 8
	test	si, 0x3ff
	je	.label_3015
	test	sil, 8
	jne	.label_3022
	test	eax, eax
	jne	.label_3015
	test	sil, sil
	jns	.label_3015
.label_3022:
	inc	rbx
	cmp	rbx, rdx
	mov	ecx, 0
	jl	.label_3019
.label_3015:
	mov	rax, rcx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x41bda6
	.globl sub_41bda6
	.type sub_41bda6, @function
sub_41bda6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41bdb0
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
	#Procedure 0x41bde3
	.globl sub_41bde3
	.type sub_41bde3, @function
sub_41bde3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41bdf0
	.globl mbiter_multi_reloc
	.type mbiter_multi_reloc, @function
mbiter_multi_reloc:

	add	qword ptr [rdi + 0x18], rsi
	add	qword ptr [rdi], rsi
	ret	
	.section	.text
	.align	32
	#Procedure 0x41bdf8
	.globl sub_41bdf8
	.type sub_41bdf8, @function
sub_41bdf8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41be00

	.globl check_dst_limits
	.type check_dst_limits, @function
check_dst_limits:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r14, r9
	mov	qword ptr [rsp + 0x28], r8
	mov	qword ptr [rsp + 0x18], rdx
	mov	rbx, rsi
	mov	rbp, rdi
	mov	qword ptr [rsp + 0x20], rcx
	mov	rsi, rcx
	call	search_cur_bkref_entry
	mov	qword ptr [rsp + 0x10], rax
	mov	rdi, rbp
	mov	qword ptr [rsp + 0x30], r14
	mov	rsi, r14
	call	search_cur_bkref_entry
	mov	qword ptr [rsp + 8], rax
	cmp	qword ptr [rbx + 8], 0
	jle	.label_3024
	mov	r14, qword ptr [rbp + 0x98]
	xor	r12d, r12d
	nop	dword ptr [rax]
.label_3026:
	mov	rax, qword ptr [rbp + 0xd8]
	mov	rcx, qword ptr [rbx + 0x10]
	mov	rsi, qword ptr [rcx + r12*8]
	lea	rcx, [rsi + rsi*4]
	mov	rax, qword ptr [rax + rcx*8]
	mov	rcx, qword ptr [r14]
	shl	rax, 4
	mov	r15, qword ptr [rcx + rax]
	mov	rdi, rbp
	mov	rdx, r15
	mov	rcx, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rsp + 0x20]
	mov	r9, qword ptr [rsp + 0x10]
	call	check_dst_limits_calc_pos
	mov	r13d, eax
	mov	rax, qword ptr [rbx + 0x10]
	mov	rsi, qword ptr [rax + r12*8]
	mov	rdi, rbp
	mov	rdx, r15
	mov	rcx, qword ptr [rsp + 0x28]
	mov	r8, qword ptr [rsp + 0x30]
	mov	r9, qword ptr [rsp + 8]
	call	check_dst_limits_calc_pos
	cmp	eax, r13d
	mov	al, 1
	jne	.label_3025
	inc	r12
	cmp	r12, qword ptr [rbx + 8]
	jl	.label_3026
.label_3024:
	xor	eax, eax
.label_3025:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41bee2
	.globl sub_41bee2
	.type sub_41bee2, @function
sub_41bee2:

	nop	word ptr cs:[rax + rax]
.label_3029:
	mov	qword ptr [r14 + 4], 0
.label_3030:
	mov	al, byte ptr [rbx + 0xc]
	mov	byte ptr [r14 + 0xc], al
	mov	rsi, qword ptr [rbx + 0x10]
	lea	rax, [rbx + 0x28]
	cmp	rsi, rax
	jne	.label_3027
	lea	r15, [r14 + 0x28]
	mov	rdx, qword ptr [rbx + 0x18]
	mov	rdi, r15
	call	memcpy
	mov	rsi, r15
.label_3027:
	mov	qword ptr [r14 + 0x10], rsi
	mov	rax, qword ptr [rbx + 0x18]
	mov	qword ptr [r14 + 0x18], rax
	mov	rax, qword ptr [rbx + 0x20]
	test	al, al
	mov	byte ptr [r14 + 0x20], al
	je	.label_3028
	shr	rax, 0x20
	mov	dword ptr [r14 + 0x24], eax
.label_3028:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x41bf45
	.globl sub_41bf45
	.type sub_41bf45, @function
sub_41bf45:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41bf52
	.globl mbuiter_multi_copy
	.type mbuiter_multi_copy, @function
mbuiter_multi_copy:

	push	r15
	push	r14
	push	rbx
	mov	rbx, rsi
	mov	r14, rdi
	mov	al, byte ptr [rbx]
	test	al, al
	mov	byte ptr [r14], al
	je	.label_3029
	mov	rax, qword ptr [rbx + 4]
	mov	qword ptr [r14 + 4], rax
	jmp	.label_3030
.label_3031:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x41bf75
	.globl sub_41bf75
	.type sub_41bf75, @function
sub_41bf75:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41bf7b
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_87]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_88]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_89]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_3031
	test	rdx, rdx
	je	.label_3031
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
	#Procedure 0x41bfe0

	.globl re_node_set_add_intersect
	.type re_node_set_add_intersect, @function
re_node_set_add_intersect:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r14, rdx
	mov	r15, rsi
	mov	r12, rdi
	mov	rcx, qword ptr [r15 + 8]
	xor	eax, eax
	test	rcx, rcx
	je	.label_3033
	mov	r11, qword ptr [r14 + 8]
	test	r11, r11
	je	.label_3033
	lea	rax, [r11 + rcx]
	mov	r13, qword ptr [r12]
	mov	rdx, qword ptr [r12 + 8]
	lea	rsi, [rdx + rax]
	cmp	rsi, r13
	jle	.label_3037
	add	r13, rax
	mov	rdi, qword ptr [r12 + 0x10]
	lea	rsi, [r13*8]
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_3033
	lea	r8, [r12 + 0x10]
	mov	qword ptr [r12 + 0x10], rcx
	mov	qword ptr [r12], r13
	mov	rdx, qword ptr [r12 + 8]
	mov	rcx, qword ptr [r15 + 8]
	mov	r11, qword ptr [r14 + 8]
	jmp	.label_3036
.label_3037:
	lea	r8, [r12 + 0x10]
.label_3036:
	lea	r10, [rcx + rdx]
	add	r10, r11
	dec	rdx
	mov	rsi, qword ptr [r15 + 0x10]
	mov	r9, qword ptr [r14 + 0x10]
.label_3049:
	dec	rcx
	mov	rdi, r11
.label_3046:
	lea	r11, [rdi - 1]
	mov	rax, qword ptr [r9 + rdi*8 - 8]
	nop	dword ptr [rax]
.label_3040:
	cmp	qword ptr [rsi + rcx*8], rax
	je	.label_3044
	jl	.label_3039
	test	rcx, rcx
	lea	rcx, [rcx - 1]
	jg	.label_3040
	jmp	.label_3042
	.section	.text
	.align	32
	#Procedure 0x41c0a3
	.globl sub_41c0a3
	.type sub_41c0a3, @function
sub_41c0a3:

	nop	word ptr cs:[rax + rax]
.label_3039:
	cmp	rdi, 2
	mov	rdi, r11
	jge	.label_3046
	jmp	.label_3042
	.section	.text
	.align	32
	#Procedure 0x41c0bb
	.globl sub_41c0bb
	.type sub_41c0bb, @function
sub_41c0bb:

	nop	dword ptr [rax + rax]
.label_3044:
	mov	rbx, qword ptr [r8]
	test	rdx, rdx
	js	.label_3032
	nop	dword ptr [rax + rax]
.label_3034:
	cmp	qword ptr [rbx + rdx*8], rax
	jle	.label_3038
	test	rdx, rdx
	lea	rdx, [rdx - 1]
	jg	.label_3034
	jmp	.label_3032
.label_3038:
	je	.label_3045
	nop	word ptr cs:[rax + rax]
.label_3032:
	mov	qword ptr [rbx + r10*8 - 8], rax
	dec	r10
.label_3045:
	test	rcx, rcx
	jle	.label_3042
	cmp	rdi, 2
	jge	.label_3049
.label_3042:
	mov	rdx, qword ptr [r12 + 8]
	lea	rcx, [rdx - 1]
	mov	r9, qword ptr [r15 + 8]
	add	r9, rcx
	add	r9, qword ptr [r14 + 8]
	mov	rax, r9
	sub	rax, r10
	lea	r8, [rax + 1]
	lea	rsi, [rax + rdx + 1]
	mov	qword ptr [r12 + 8], rsi
	mov	rdi, qword ptr [r12 + 0x10]
	test	rdx, rdx
	jle	.label_3035
	test	rax, rax
	js	.label_3035
	xor	edx, edx
.label_3047:
	lea	rax, [rcx + r8]
	lea	rax, [rdi + rax*8]
	nop	dword ptr [rax + rax]
.label_3041:
	mov	rbx, qword ptr [rdi + r9*8]
	mov	rsi, qword ptr [rdi + rcx*8]
	cmp	rbx, rsi
	jg	.label_3043
	mov	qword ptr [rax], rsi
	add	rax, -8
	test	rcx, rcx
	lea	rcx, [rcx - 1]
	jg	.label_3041
	jmp	.label_3035
	.section	.text
	.align	32
	#Procedure 0x41c16f
	.globl sub_41c16f
	.type sub_41c16f, @function
sub_41c16f:

	nop	
.label_3043:
	dec	r9
	dec	r8
	mov	qword ptr [rax], rbx
	jne	.label_3047
	jmp	.label_3048
.label_3035:
	mov	rdx, r8
.label_3048:
	lea	rsi, [rdi + r10*8]
	shl	rdx, 3
	call	memcpy
	xor	eax, eax
.label_3033:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x41c199
	.globl sub_41c199
	.type sub_41c199, @function
sub_41c199:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x41c1a0
	.globl rpl_regexec
	.type rpl_regexec, @function
rpl_regexec:

	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	ebx, r8d
	mov	r15, rcx
	mov	r14, rdx
	mov	r12, rsi
	mov	r13, rdi
	mov	eax, 2
	cmp	ebx, 7
	ja	.label_3050
	test	bl, 4
	jne	.label_3051
	mov	rdi, r12
	call	strlen
	mov	rdx, rax
	xor	ecx, ecx
	jmp	.label_3052
.label_3053:
	sub	rsp, 8
	mov	rdi, r13
	mov	rsi, r12
	mov	r8, rdx
	mov	r9, rdx
	push	rbx
	push	0
	push	0
	call	re_search_internal
	add	rsp, 0x20
.label_3054:
	mov	ecx, eax
	xor	eax, eax
	test	ecx, ecx
	setne	al
.label_3050:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x41c207
	.globl sub_41c207
	.type sub_41c207, @function
sub_41c207:

	nop	word ptr cs:[rax + rax]
.label_3051:
	mov	rcx, qword ptr [r15]
	mov	rdx, qword ptr [r15 + 8]
.label_3052:
	test	byte ptr [r13 + 0x38], 0x10
	jne	.label_3053
	sub	rsp, 8
	mov	rdi, r13
	mov	rsi, r12
	mov	r8, rdx
	mov	r9, rdx
	push	rbx
	push	r15
	push	r14
	call	re_search_internal
	add	rsp, 0x20
	jmp	.label_3054
.label_3058:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x41c245

	.globl digest_word_file
	.type digest_word_file, @function
digest_word_file:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r14, rsi
	lea	rsi, [rsp + 8]
	call	swallow_file_in_memory
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	mov	qword ptr [r14 + 0x10], 0
	mov	rbx, qword ptr [rsp + 8]
	mov	r13, qword ptr [rsp + 0x10]
	xor	esi, esi
	cmp	rbx, r13
	mov	edi, 0
	jae	.label_3060
	xor	edi, edi
	movabs	r12, 0x555555555555555
	xor	esi, esi
	nop	word ptr cs:[rax + rax]
.label_3065:
	cmp	rbx, r13
	jae	.label_3061
	mov	rbp, rbx
	nop	dword ptr [rax + rax]
.label_3064:
	cmp	byte ptr [rbp], 0xa
	je	.label_3062
	inc	rbp
	cmp	rbp, r13
	jb	.label_3064
.label_3062:
	mov	r15, rbp
	sub	r15, rbx
	jbe	.label_3055
	cmp	rsi, qword ptr [r14 + 8]
	jne	.label_3056
	test	rdi, rdi
	je	.label_3057
	cmp	rsi, r12
	jae	.label_3058
	mov	rax, rsi
	shr	rax, 1
	lea	rsi, [rsi + rax + 1]
	jmp	.label_3059
	.section	.text
	.align	32
	#Procedure 0x41c2ec
	.globl sub_41c2ec
	.type sub_41c2ec, @function
sub_41c2ec:

	nop	word ptr [rax + rax]
.label_3061:
	mov	rbp, rbx
	jmp	.label_3055
.label_3057:
	test	rsi, rsi
	mov	eax, 8
	cmove	rsi, rax
	mov	rax, rsi
	shr	rax, 0x3b
	jne	.label_3063
.label_3059:
	mov	qword ptr [r14 + 8], rsi
	shl	rsi, 4
	call	xrealloc
	mov	rdi, rax
	mov	qword ptr [r14], rdi
	mov	rsi, qword ptr [r14 + 0x10]
.label_3056:
	mov	rax, rsi
	shl	rax, 4
	mov	qword ptr [rdi + rax], rbx
	mov	qword ptr [rdi + rax + 8], r15
	inc	rsi
	mov	qword ptr [r14 + 0x10], rsi
.label_3055:
	lea	rbx, [rbp + 1]
	cmp	rbp, r13
	cmovae	rbx, rbp
	cmp	rbx, r13
	jb	.label_3065
.label_3060:
	mov	edx, 0x10
	mov	ecx, OFFSET FLAT:compare_words
	call	qsort
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_3063:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x41c374
	.globl sub_41c374
	.type sub_41c374, @function
sub_41c374:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41c380

	.globl matcher_error
	.type matcher_error, @function
matcher_error:
	push	rbx
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_3066
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x41c3b0
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
	#Procedure 0x41c3c8
	.globl sub_41c3c8
	.type sub_41c3c8, @function
sub_41c3c8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41c3d0

	.globl peek_token_bracket
	.type peek_token_bracket, @function
peek_token_bracket:
	mov	rax, qword ptr [rsi + 0x48]
	cmp	qword ptr [rsi + 0x68], rax
	jle	.label_3068
	mov	rcx, qword ptr [rsi + 8]
	mov	al, byte ptr [rcx + rax]
	mov	byte ptr [rdi], al
	cmp	dword ptr [rsi + 0x90], 2
	jl	.label_3071
	mov	r8, qword ptr [rsi + 0x48]
	cmp	r8, qword ptr [rsi + 0x30]
	je	.label_3071
	mov	rcx, qword ptr [rsi + 0x10]
	cmp	dword ptr [rcx + r8*4], -1
	je	.label_3070
.label_3071:
	test	dl, 1
	je	.label_3067
	cmp	al, 0x5c
	jne	.label_3067
	mov	rcx, qword ptr [rsi + 0x48]
	inc	rcx
	cmp	rcx, qword ptr [rsi + 0x58]
	jge	.label_3067
	mov	qword ptr [rsi + 0x48], rcx
	mov	rax, qword ptr [rsi + 8]
	mov	al, byte ptr [rax + rcx]
	mov	byte ptr [rdi], al
	jmp	.label_3070
.label_3068:
	mov	byte ptr [rdi + 8], 2
	xor	eax, eax
	ret	
.label_3067:
	cmp	al, 0x5c
	jg	.label_3074
	cmp	al, 0x2d
	je	.label_3076
	cmp	al, 0x5b
	jne	.label_3070
	mov	rax, qword ptr [rsi + 0x48]
	inc	rax
	cmp	rax, qword ptr [rsi + 0x58]
	jge	.label_3077
	mov	rcx, qword ptr [rsi + 8]
	mov	al, byte ptr [rcx + rax]
	mov	byte ptr [rdi], al
	cmp	al, 0x3d
	je	.label_3073
	cmp	al, 0x3a
	je	.label_3069
	cmp	al, 0x2e
	jne	.label_3075
	mov	byte ptr [rdi + 8], 0x1a
	mov	eax, 2
	ret	
.label_3074:
	cmp	al, 0x5d
	je	.label_3072
	cmp	al, 0x5e
	jne	.label_3070
	mov	byte ptr [rdi + 8], 0x19
	mov	eax, 1
	ret	
.label_3070:
	mov	byte ptr [rdi + 8], 1
	mov	eax, 1
	ret	
.label_3076:
	mov	byte ptr [rdi + 8], 0x16
	mov	eax, 1
	ret	
.label_3072:
	mov	byte ptr [rdi + 8], 0x15
	mov	eax, 1
	ret	
.label_3077:
	mov	byte ptr [rdi], 0
.label_3075:
	mov	byte ptr [rdi + 8], 1
	mov	byte ptr [rdi], 0x5b
	mov	eax, 1
	ret	
.label_3073:
	mov	byte ptr [rdi + 8], 0x1c
	mov	eax, 2
	ret	
.label_3069:
	test	dl, 4
	je	.label_3075
	mov	byte ptr [rdi + 8], 0x1e
	mov	eax, 2
	ret	
	.section	.text
	.align	32
	#Procedure 0x41c4be
	.globl sub_41c4be
	.type sub_41c4be, @function
sub_41c4be:

	nop	
	.section	.text
	.align	32
	#Procedure 0x41c4c0
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_3078
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_3079
	test	rbx, rbx
	jne	.label_3079
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_3078:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x41c4f4
	.globl sub_41c4f4
	.type sub_41c4f4, @function
sub_41c4f4:

	nop	dword ptr [rax + rax]
.label_3079:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_3080
	test	rax, rax
	je	.label_3078
.label_3080:
	pop	rbx
	ret	
.label_3081:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x41c515
	.globl sub_41c515
	.type sub_41c515, @function
sub_41c515:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x41c519

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
	je	.label_3081
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
	.align	32
	#Procedure 0x41c5e5
	.globl sub_41c5e5
	.type sub_41c5e5, @function
sub_41c5e5:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41c5f2
	.globl sub_41c5f2
	.type sub_41c5f2, @function
sub_41c5f2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41c616
	.globl sub_41c616
	.type sub_41c616, @function
sub_41c616:

	nop	word ptr cs:[rax + rax]
