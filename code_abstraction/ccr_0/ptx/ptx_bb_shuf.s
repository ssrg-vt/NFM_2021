	.section	.text
	.align	16
	#Procedure 0x401d39
	.globl sub_401d39
	.type sub_401d39, @function
sub_401d39:

	hlt	
	.section	.text
	.align	16
	#Procedure 0x401d3a
	.globl sub_401d3a
	.type sub_401d3a, @function
sub_401d3a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401d72
	.globl sub_401d72
	.type sub_401d72, @function
sub_401d72:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401dba
	.globl sub_401dba
	.type sub_401dba, @function
sub_401dba:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401ddc
	.globl sub_401ddc
	.type sub_401ddc, @function
sub_401ddc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401ded
	.globl sub_401ded
	.type sub_401ded, @function
sub_401ded:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401e06
	.globl sub_401e06
	.type sub_401e06, @function
sub_401e06:

	nop	word ptr cs:[rax + rax]
.label_17:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax + 8], 0
	je	.label_15
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_18
.label_12:
	jmp	.label_10
	.section	.text
	.align	16
	#Procedure 0x401e35

	.globl preorder
	.type preorder, @function
preorder:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rdx
.label_13:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x28]
	call	rax
	mov	dword ptr [rbp - 0x2c], eax
	cmp	dword ptr [rbp - 0x2c], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rsi, eax
	cmp	rsi, 0
	je	.label_17
	mov	eax, dword ptr [rbp - 0x2c]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_11
.label_15:
	mov	qword ptr [rbp - 0x38], 0
.label_10:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rcx + 0x10]
	cmp	rcx, qword ptr [rbp - 0x38]
	mov	byte ptr [rbp - 0x39], al
	je	.label_14
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax + 0x10], 0
	sete	cl
	mov	byte ptr [rbp - 0x39], cl
.label_14:
	mov	al, byte ptr [rbp - 0x39]
	test	al, 1
	jne	.label_16
	jmp	.label_9
.label_16:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_12
	mov	dword ptr [rbp - 4], 0
	jmp	.label_11
.label_11:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401ef8
	.globl sub_401ef8
	.type sub_401ef8, @function
sub_401ef8:

	nop	dword ptr [rax]
.label_9:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x28], rax
.label_18:
	jmp	.label_13
	.section	.text
	.align	16
	#Procedure 0x401f10

	.globl rpl_re_compile_fastmap
	.type rpl_re_compile_fastmap, @function
rpl_re_compile_fastmap:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	esi, esi
	mov	eax, 0x100
	mov	edx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, qword ptr [rbp - 0x18]
	call	memset
	mov	rdi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rdx + 0x48]
	mov	rdx, qword ptr [rbp - 0x18]
	call	re_compile_fastmap_iter
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x48]
	mov	rsi, qword ptr [rbp - 0x10]
	cmp	rdx, qword ptr [rsi + 0x50]
	je	.label_20
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rax + 0x50]
	mov	rdx, qword ptr [rbp - 0x18]
	call	re_compile_fastmap_iter
.label_20:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x58]
	je	.label_21
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rax + 0x58]
	mov	rdx, qword ptr [rbp - 0x18]
	call	re_compile_fastmap_iter
.label_21:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x60]
	je	.label_19
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rax + 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	call	re_compile_fastmap_iter
.label_19:
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 8]
	mov	dl, byte ptr [rcx + 0x38]
	and	dl, 0xf7
	or	dl, 8
	mov	byte ptr [rcx + 0x38], dl
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401ff3
	.globl sub_401ff3
	.type sub_401ff3, @function
sub_401ff3:

	nop	word ptr cs:[rax + rax]
.label_23:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 0
.label_22:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40201f

	.globl re_node_set_init_1
	.type re_node_set_init_1, @function
re_node_set_init_1:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	eax, 8
	mov	ecx, eax
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi], 1
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + 8], 1
	mov	rdi, rcx
	call	malloc
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x10], 0
	sete	dl
	and	dl, 1
	movzx	r8d, dl
	movsxd	rax, r8d
	cmp	rax, 0
	je	.label_23
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 8], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax], 0
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_22
.label_29:
	jmp	.label_26
.label_28:
	mov	qword ptr [rbp - 0x30], 0
.label_25:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_31
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x30]
	imul	rcx, qword ptr [rbp - 0x58], 0x18
	add	rax, rcx
	mov	qword ptr [rbp - 0x60], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x24]
	call	find_subexp_node
	mov	qword ptr [rbp - 0x38], rax
	cmp	qword ptr [rbp - 0x38], -1
	jne	.label_32
	lea	rdi, [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0x60]
	call	re_node_set_merge
	mov	dword ptr [rbp - 0x28], eax
	cmp	dword ptr [rbp - 0x28], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rsi, eax
	cmp	rsi, 0
	je	.label_29
	mov	rax, qword ptr [rbp - 0x40]
	mov	rdi, rax
	call	free
	mov	ecx, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_24
.label_30:
	jmp	.label_26
.label_26:
	jmp	.label_27
.label_27:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_25
.label_31:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x10]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 0x50]
	mov	qword ptr [rax], rdi
	mov	rdi, qword ptr [rbp - 0x48]
	mov	qword ptr [rax + 8], rdi
	mov	rdi, qword ptr [rbp - 0x40]
	mov	qword ptr [rax + 0x10], rdi
	mov	dword ptr [rbp - 4], 0
.label_24:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4021a1
	.globl sub_4021a1
	.type sub_4021a1, @function
sub_4021a1:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4021aa

	.globl check_arrival_expand_ecl
	.type check_arrival_expand_ecl, @function
check_arrival_expand_ecl:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	lea	rax, [rbp - 0x50]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	dword ptr [rbp - 0x24], ecx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rdx + 8]
	mov	rdi, rax
	call	re_node_set_alloc
	mov	dword ptr [rbp - 0x28], eax
	cmp	dword ptr [rbp - 0x28], 0
	setne	r8b
	and	r8b, 1
	movzx	eax, r8b
	movsxd	rdx, eax
	cmp	rdx, 0
	je	.label_28
	mov	eax, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_24
.label_32:
	lea	rsi, [rbp - 0x50]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	r8d, dword ptr [rbp - 0x24]
	call	check_arrival_expand_ecl_sub
	mov	dword ptr [rbp - 0x28], eax
	cmp	dword ptr [rbp - 0x28], 0
	setne	r9b
	and	r9b, 1
	movzx	eax, r9b
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_30
	mov	rax, qword ptr [rbp - 0x40]
	mov	rdi, rax
	call	free
	mov	ecx, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_24
.label_3877:
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x800
	cmp	rax, 0
	je	.label_50
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0xa
	mov	dword ptr [rax + 8], ecx
.label_50:
	jmp	.label_40
.label_3953:
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x80000
	cmp	rax, 0
	jne	.label_59
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0xc
	mov	dword ptr [rax + 8], ecx
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 6
.label_59:
	jmp	.label_36
.label_3889:
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x200
	cmp	rax, 0
	je	.label_45
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x1000
	cmp	rax, 0
	je	.label_45
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0x18
	mov	dword ptr [rax + 8], ecx
.label_45:
	jmp	.label_40
.label_3958:
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x80000
	cmp	rax, 0
	jne	.label_69
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0x21
	mov	dword ptr [rax + 8], ecx
.label_69:
	jmp	.label_36
.label_3952:
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x4000
	cmp	rax, 0
	jne	.label_43
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 4
	mov	dword ptr [rax + 8], ecx
	movzx	ecx, byte ptr [rbp - 0x22]
	sub	ecx, 0x31
	movsxd	rax, ecx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx], rax
.label_43:
	jmp	.label_36
.label_82:
	movzx	eax, byte ptr [rbp - 0x22]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x50], rcx
	call	__ctype_b_loc
	mov	dl, 1
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x50]
	movzx	esi, word ptr [rax + rcx*2]
	and	esi, 8
	cmp	esi, 0
	mov	byte ptr [rbp - 0x51], dl
	jne	.label_53
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, 0x5f
	sete	cl
	mov	byte ptr [rbp - 0x51], cl
.label_53:
	mov	al, byte ptr [rbp - 0x51]
	and	al, 1
	movzx	ecx, al
	cmp	ecx, 0
	setne	al
	and	al, 1
	movzx	ecx, al
	mov	rdx, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rdx + 8]
	and	ecx, 1
	shl	ecx, 0x16
	and	esi, 0xffbfffff
	or	esi, ecx
	mov	dword ptr [rdx + 8], esi
.label_72:
	movzx	eax, byte ptr [rbp - 0x22]
	add	eax, -0x27
	mov	ecx, eax
	sub	eax, 0x56
	mov	qword ptr [rbp - 0x60], rcx
	mov	dword ptr [rbp - 0x64], eax
	ja	.label_58
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_55]]
	jmp	rcx
.label_81:
	jmp	.label_40
.label_40:
	mov	dword ptr [rbp - 4], 1
.label_33:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x90
	pop	rbp
	ret	
.label_3878:
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 8
	cmp	rax, 0
	jne	.label_41
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x48]
	add	rax, 1
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 0x58]
	je	.label_41
	lea	rdi, [rbp - 0x40]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rax + 0x48]
	add	rcx, 1
	mov	qword ptr [rax + 0x48], rcx
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	call	peek_token
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rcx + 0x48]
	add	rdx, -1
	mov	qword ptr [rcx + 0x48], rdx
	mov	r8d, dword ptr [rbp - 0x38]
	and	r8d, 0xff
	cmp	r8d, 0xa
	mov	dword ptr [rbp - 0x88], eax
	je	.label_51
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 0xff
	cmp	eax, 9
	je	.label_51
	jmp	.label_40
	.section	.text
	.align	16
	#Procedure 0x40248c

	.globl peek_token
	.type peek_token, @function
peek_token:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x90
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x68]
	mov	rsi, qword ptr [rbp - 0x18]
	cmp	rdx, qword ptr [rsi + 0x48]
	jg	.label_63
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 2
	mov	dword ptr [rax + 8], ecx
	mov	dword ptr [rbp - 4], 0
	jmp	.label_33
.label_3887:
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x200
	cmp	rax, 0
	je	.label_76
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x1000
	cmp	rax, 0
	je	.label_76
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0x17
	mov	dword ptr [rax + 8], ecx
.label_76:
	jmp	.label_40
.label_3882:
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x400
	cmp	rax, 0
	jne	.label_42
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 2
	cmp	rax, 0
	jne	.label_42
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0x12
	mov	dword ptr [rax + 8], ecx
.label_42:
	jmp	.label_40
.label_3961:
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x80000
	cmp	rax, 0
	jne	.label_34
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0x22
	mov	dword ptr [rax + 8], ecx
.label_34:
	jmp	.label_36
.label_63:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 8]
	mov	dl, byte ptr [rcx + rax]
	mov	byte ptr [rbp - 0x21], dl
	mov	dl, byte ptr [rbp - 0x21]
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax], dl
	mov	rax, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rax + 8]
	and	esi, 0xffbfffff
	mov	dword ptr [rax + 8], esi
	mov	rax, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rax + 8]
	and	esi, 0xffdfffff
	mov	dword ptr [rax + 8], esi
	mov	rax, qword ptr [rbp - 0x18]
	cmp	dword ptr [rax + 0x90], 1
	jle	.label_61
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 0x30]
	je	.label_61
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x10]
	cmp	dword ptr [rcx + rax*4], -1
	jne	.label_61
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 1
	mov	dword ptr [rax + 8], ecx
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffdfffff
	or	ecx, 0x200000
	mov	dword ptr [rax + 8], ecx
	mov	dword ptr [rbp - 4], 1
	jmp	.label_33
.label_3883:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 5
	mov	dword ptr [rax + 8], ecx
	jmp	.label_40
.label_3965:
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x200
	cmp	rax, 0
	je	.label_49
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x1000
	cmp	rax, 0
	jne	.label_49
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0x18
	mov	dword ptr [rax + 8], ecx
.label_49:
	jmp	.label_36
.label_67:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 1
	mov	dword ptr [rax + 8], ecx
	mov	rax, qword ptr [rbp - 0x18]
	cmp	dword ptr [rax + 0x90], 1
	jle	.label_64
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax + 0x48]
	call	re_string_wchar_at
	mov	dword ptr [rbp - 0x2c], eax
	mov	edi, dword ptr [rbp - 0x2c]
	call	iswalnum
	mov	cl, 1
	cmp	eax, 0
	mov	byte ptr [rbp - 0x65], cl
	jne	.label_75
	cmp	dword ptr [rbp - 0x2c], 0x5f
	sete	al
	mov	byte ptr [rbp - 0x65], al
.label_75:
	mov	al, byte ptr [rbp - 0x65]
	and	al, 1
	movzx	ecx, al
	cmp	ecx, 0
	setne	al
	and	al, 1
	movzx	ecx, al
	mov	rdx, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rdx + 8]
	and	ecx, 1
	shl	ecx, 0x16
	and	esi, 0xffbfffff
	or	esi, ecx
	mov	dword ptr [rdx + 8], esi
	jmp	.label_79
.label_51:
	jmp	.label_41
.label_41:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0xc
	mov	dword ptr [rax + 8], ecx
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 0x20
	jmp	.label_40
.label_3880:
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x2000
	cmp	rax, 0
	je	.label_56
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 9
	mov	dword ptr [rax + 8], ecx
.label_56:
	jmp	.label_40
.label_3885:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0x14
	mov	dword ptr [rax + 8], ecx
	jmp	.label_40
.label_3954:
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x80000
	cmp	rax, 0
	jne	.label_37
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0xc
	mov	dword ptr [rax + 8], ecx
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 9
.label_37:
	jmp	.label_36
.label_3951:
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x400
	cmp	rax, 0
	jne	.label_71
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 2
	cmp	rax, 0
	je	.label_71
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0x12
	mov	dword ptr [rax + 8], ecx
.label_71:
	jmp	.label_36
.label_3950:
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x2000
	cmp	rax, 0
	jne	.label_73
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 9
	mov	dword ptr [rax + 8], ecx
.label_73:
	jmp	.label_36
.label_3948:
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x80000
	cmp	rax, 0
	jne	.label_44
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0xc
	mov	dword ptr [rax + 8], ecx
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 0x80
.label_44:
	jmp	.label_36
.label_3881:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0xb
	mov	dword ptr [rax + 8], ecx
	jmp	.label_40
.label_3962:
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x80000
	cmp	rax, 0
	jne	.label_54
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0x20
	mov	dword ptr [rax + 8], ecx
.label_54:
	jmp	.label_36
.label_61:
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, 0x5c
	jne	.label_67
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x48]
	add	rax, 1
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 0x58]
	jl	.label_68
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0x24
	mov	dword ptr [rax + 8], ecx
	mov	dword ptr [rbp - 4], 1
	jmp	.label_33
.label_3949:
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x2000
	cmp	rax, 0
	jne	.label_77
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 8
	mov	dword ptr [rax + 8], ecx
.label_77:
	jmp	.label_36
.label_60:
	jmp	.label_38
.label_38:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0xc
	mov	dword ptr [rax + 8], ecx
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 0x10
	jmp	.label_40
.label_3884:
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x400
	cmp	rax, 0
	jne	.label_46
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 2
	cmp	rax, 0
	jne	.label_46
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0x13
	mov	dword ptr [rax + 8], ecx
.label_46:
	jmp	.label_40
.label_64:
	mov	rax, qword ptr [rbp - 0x10]
	movzx	ecx, byte ptr [rax]
	movsxd	rax, ecx
	mov	qword ptr [rbp - 0x70], rax
	call	__ctype_b_loc
	mov	dl, 1
	mov	rax, qword ptr [rax]
	mov	rsi, qword ptr [rbp - 0x70]
	movzx	ecx, word ptr [rax + rsi*2]
	and	ecx, 8
	cmp	ecx, 0
	mov	byte ptr [rbp - 0x71], dl
	jne	.label_62
	mov	rax, qword ptr [rbp - 0x10]
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x5f
	sete	dl
	mov	byte ptr [rbp - 0x71], dl
.label_62:
	mov	al, byte ptr [rbp - 0x71]
	and	al, 1
	movzx	ecx, al
	mov	rdx, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rdx + 8]
	and	ecx, 1
	shl	ecx, 0x16
	and	esi, 0xffbfffff
	or	esi, ecx
	mov	dword ptr [rdx + 8], esi
.label_79:
	movzx	eax, byte ptr [rbp - 0x21]
	add	eax, -0xa
	mov	ecx, eax
	sub	eax, 0x73
	mov	qword ptr [rbp - 0x80], rcx
	mov	dword ptr [rbp - 0x84], eax
	ja	.label_81
	mov	rax, qword ptr [rbp - 0x80]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_80]]
	jmp	rcx
.label_3888:
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x400
	cmp	rax, 0
	jne	.label_39
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x8000
	cmp	rax, 0
	je	.label_39
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0xa
	mov	dword ptr [rax + 8], ecx
.label_39:
	jmp	.label_40
.label_3955:
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x400
	cmp	rax, 0
	jne	.label_47
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 2
	cmp	rax, 0
	je	.label_47
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0x13
	mov	dword ptr [rax + 8], ecx
.label_47:
	jmp	.label_36
.label_3960:
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x80000
	cmp	rax, 0
	jne	.label_57
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0xc
	mov	dword ptr [rax + 8], ecx
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 0x100
.label_57:
	jmp	.label_36
.label_3956:
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x80000
	cmp	rax, 0
	jne	.label_70
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0xc
	mov	dword ptr [rax + 8], ecx
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 0x200
.label_70:
	jmp	.label_36
.label_68:
	mov	eax, 1
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x18]
	call	re_string_peek_byte_case
	mov	byte ptr [rbp - 0x22], al
	mov	al, byte ptr [rbp - 0x22]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	byte ptr [rsi], al
	mov	rsi, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rsi + 8]
	and	ecx, 0xffffff00
	or	ecx, 1
	mov	dword ptr [rsi + 8], ecx
	mov	rsi, qword ptr [rbp - 0x18]
	cmp	dword ptr [rsi + 0x90], 1
	jle	.label_82
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x48]
	add	rax, 1
	mov	rsi, rax
	call	re_string_wchar_at
	mov	dword ptr [rbp - 0x28], eax
	mov	edi, dword ptr [rbp - 0x28]
	call	iswalnum
	mov	cl, 1
	cmp	eax, 0
	mov	byte ptr [rbp - 0x41], cl
	jne	.label_48
	cmp	dword ptr [rbp - 0x28], 0x5f
	sete	al
	mov	byte ptr [rbp - 0x41], al
.label_48:
	mov	al, byte ptr [rbp - 0x41]
	and	al, 1
	movzx	ecx, al
	cmp	ecx, 0
	setne	al
	and	al, 1
	movzx	ecx, al
	mov	rdx, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rdx + 8]
	and	ecx, 1
	shl	ecx, 0x16
	and	esi, 0xffbfffff
	or	esi, ecx
	mov	dword ptr [rdx + 8], esi
	jmp	.label_72
.label_3959:
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x80000
	cmp	rax, 0
	jne	.label_65
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0xc
	mov	dword ptr [rax + 8], ecx
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 0x40
.label_65:
	jmp	.label_36
.label_3963:
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x200
	cmp	rax, 0
	je	.label_74
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x1000
	cmp	rax, 0
	jne	.label_74
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0x17
	mov	dword ptr [rax + 8], ecx
.label_74:
	jmp	.label_36
.label_3879:
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x2000
	cmp	rax, 0
	je	.label_35
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 8
	mov	dword ptr [rax + 8], ecx
.label_35:
	jmp	.label_40
.label_3886:
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x800008
	cmp	rax, 0
	jne	.label_38
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0x48], 0
	je	.label_38
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 8]
	mov	dl, byte ptr [rcx + rax - 1]
	mov	byte ptr [rbp - 0x2d], dl
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x800
	cmp	rax, 0
	je	.label_52
	movsx	eax, byte ptr [rbp - 0x2d]
	cmp	eax, 0xa
	je	.label_60
.label_52:
	jmp	.label_40
.label_3964:
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x400
	cmp	rax, 0
	jne	.label_66
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x8000
	cmp	rax, 0
	jne	.label_66
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0xa
	mov	dword ptr [rax + 8], ecx
.label_66:
	jmp	.label_36
.label_58:
	jmp	.label_36
.label_36:
	mov	dword ptr [rbp - 4], 2
	jmp	.label_33
.label_3957:
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x80000
	cmp	rax, 0
	jne	.label_78
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0x23
	mov	dword ptr [rax + 8], ecx
.label_78:
	jmp	.label_36
.label_83:
	mov	byte ptr [rbp - 1], 0
.label_87:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402d1e
	.globl sub_402d1e
	.type sub_402d1e, @function
sub_402d1e:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402d29
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	eax, edi
	add	eax, -0x30
	sub	eax, 0xa
	mov	dword ptr [rbp - 0xc], edi
	mov	dword ptr [rbp - 0x10], eax
	jb	.label_84
	jmp	.label_86
.label_86:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 6
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_84
	jmp	.label_85
.label_85:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 5
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_83
	jmp	.label_84
.label_84:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_87
.label_89:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rcx + 0x10]
	sete	dl
	and	dl, 1
	movzx	esi, dl
	mov	dword ptr [rbp - 0x44], esi
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rcx + 0x18]
	sete	dl
	and	dl, 1
	movzx	esi, dl
	shl	esi, 1
	or	esi, dword ptr [rbp - 0x44]
	mov	dword ptr [rbp - 0x44], esi
	cmp	dword ptr [rbp - 0x44], 0
	jne	.label_88
	mov	dword ptr [rbp - 4], 0
	jmp	.label_90
	.section	.text
	.align	16
	#Procedure 0x402dcc

	.globl check_dst_limits_calc_pos
	.type check_dst_limits_calc_pos, @function
check_dst_limits_calc_pos:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	qword ptr [rbp - 0x38], r9
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0xd8]
	imul	rdx, qword ptr [rbp - 0x18], 0x28
	add	rcx, rdx
	mov	qword ptr [rbp - 0x40], rcx
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x40]
	cmp	rcx, qword ptr [rdx + 0x10]
	jge	.label_91
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_90
.label_88:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x44]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x38]
	call	check_dst_limits_calc_pos_1
	mov	dword ptr [rbp - 4], eax
.label_90:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402e45
	.globl sub_402e45
	.type sub_402e45, @function
sub_402e45:

	nop	word ptr cs:[rax + rax]
.label_91:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + 0x18]
	cmp	rax, qword ptr [rbp - 0x30]
	jge	.label_89
	mov	dword ptr [rbp - 4], 1
	jmp	.label_90
.label_93:
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_104
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x50]
	je	.label_104
	mov	rdi, qword ptr [rbp - 0x30]
	call	free
.label_104:
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_95
	mov	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x50]
	je	.label_95
	mov	rdi, qword ptr [rbp - 0x38]
	call	free
.label_95:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 8], rax
.label_94:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0xa0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402ec9
	.globl sub_402ec9
	.type sub_402ec9, @function
sub_402ec9:

	nop	dword ptr [rax]
.label_114:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x48], rax
.label_115:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_97
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x80], rax
	jmp	.label_101
.label_92:
	mov	rdi, qword ptr [rbp - 0x20]
	call	strlen
	add	rax, 2
	mov	rdi, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x90], rax
	call	strlen
	mov	rdi, qword ptr [rbp - 0x90]
	add	rdi, rax
	add	rdi, 1
	add	rdi, 1
	call	xmalloc
	movabs	rsi, OFFSET FLAT:label_100
	mov	qword ptr [rbp - 0x70], rax
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	al, 0
	call	sprintf
	cmp	qword ptr [rbp - 0x30], 0
	mov	dword ptr [rbp - 0x94], eax
	je	.label_106
	mov	rdi, qword ptr [rbp - 0x30]
	call	free
.label_106:
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_98
	mov	rdi, qword ptr [rbp - 0x38]
	call	free
.label_98:
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_94
.label_112:
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x38], rax
	mov	qword ptr [rbp - 0x48], rax
.label_116:
	jmp	.label_108
.label_108:
	jmp	.label_115
.label_103:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x88], rax
.label_102:
	mov	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x80], rax
.label_101:
	mov	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x50], rax
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x10]
	call	strcmp
	cmp	eax, 0
	je	.label_93
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x10]
	call	mbsstr_trimmed_wordbounded
	test	al, 1
	jne	.label_96
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_99
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x40]
	call	mbsstr_trimmed_wordbounded
	test	al, 1
	jne	.label_96
.label_99:
	cmp	qword ptr [rbp - 0x48], 0
	je	.label_92
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x48]
	call	mbsstr_trimmed_wordbounded
	test	al, 1
	jne	.label_96
	jmp	.label_92
.label_96:
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_105
	mov	rdi, qword ptr [rbp - 0x30]
	call	free
.label_105:
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_107
	mov	rdi, qword ptr [rbp - 0x38]
	call	free
.label_107:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_94
.label_97:
	cmp	qword ptr [rbp - 0x48], 0
	je	.label_103
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x88], rax
	jmp	.label_102
	.section	.text
	.align	16
	#Procedure 0x403078

	.globl proper_name_utf8
	.type proper_name_utf8, @function
proper_name_utf8:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xa0
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	call	gettext
	mov	qword ptr [rbp - 0x20], rax
	call	locale_charset
	movabs	rsi, OFFSET FLAT:label_113
	mov	qword ptr [rbp - 0x28], rax
	mov	qword ptr [rbp - 0x30], 0
	mov	qword ptr [rbp - 0x38], 0
	mov	qword ptr [rbp - 0x40], 0
	mov	qword ptr [rbp - 0x48], 0
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	je	.label_114
	movabs	rsi, OFFSET FLAT:label_113
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x28]
	call	xstr_iconv
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0x40], rax
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 0xa
	add	rax, 1
	mov	rdi, rax
	call	xmalloc
	movabs	rsi, OFFSET FLAT:label_113
	mov	qword ptr [rbp - 0x68], rax
	mov	rdi, qword ptr [rbp - 0x68]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x78], rsi
	mov	rsi, rax
	call	memcpy
	mov	rax, qword ptr [rbp - 0x68]
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi,  qword ptr [word ptr [label_109]]
	mov	qword ptr [rax + rdx], rsi
	mov	cx,  word ptr [word ptr [label_110]]
	mov	word ptr [rax + rdx + 8], cx
	mov	r8b,  byte ptr [byte ptr [label_111]]
	mov	byte ptr [rax + rdx + 0xa], r8b
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rsi, qword ptr [rbp - 0x78]
	call	xstr_iconv
	mov	qword ptr [rbp - 0x58], rax
	mov	rdi, qword ptr [rbp - 0x68]
	call	free
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_108
	mov	esi, 0x3f
	mov	rdi, qword ptr [rbp - 0x58]
	call	strchr
	cmp	rax, 0
	je	.label_112
	mov	rdi, qword ptr [rbp - 0x58]
	call	free
	jmp	.label_116
	.section	.text
	.align	16
	#Procedure 0x4031c0
	.globl quotearg_style_mem
	.type quotearg_style_mem, @function
quotearg_style_mem:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	esi, dword ptr [rbp - 4]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	edi, eax
	call	quotearg_n_style_mem
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4031ed
	.globl sub_4031ed
	.type sub_4031ed, @function
sub_4031ed:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4031f0
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	eax, edi
	add	eax, -0x41
	sub	eax, 0x1a
	mov	dword ptr [rbp - 0xc], edi
	mov	dword ptr [rbp - 0x10], eax
	jb	.label_117
	jmp	.label_120
.label_120:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x14], eax
	ja	.label_118
	jmp	.label_117
.label_117:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_119
.label_118:
	mov	byte ptr [rbp - 1], 0
.label_119:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40323e
	.globl sub_40323e
	.type sub_40323e, @function
sub_40323e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403240

	.globl match_ctx_free
	.type match_ctx_free, @function
match_ctx_free:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	match_ctx_clean
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 0xf8]
	call	free
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 0xd8]
	call	free
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40327b
	.globl sub_40327b
	.type sub_40327b, @function
sub_40327b:

	nop	dword ptr [rax + rax]
.label_125:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0xe8], 0
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0xc8], 0
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4032a4
	.globl sub_4032a4
	.type sub_4032a4, @function
sub_4032a4:

	nop	
.label_121:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x28]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 0x10], 0
	je	.label_124
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x10]
	mov	rdi, rax
	call	free
.label_124:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_123
	.section	.text
	.align	16
	#Procedure 0x403305

	.globl match_ctx_clean
	.type match_ctx_clean, @function
match_ctx_clean:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], 0
.label_123:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 0xe8]
	jge	.label_125
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 0xf8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x18], 0
.label_122:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rcx + 0x20]
	jge	.label_121
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 0x28]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x20]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_122
	.section	.text
	.align	16
	#Procedure 0x4033a0

	.globl mmalloca
	.type mmalloca, @function
mmalloca:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	add	rdi, 1
	add	rdi, 0x20
	sub	rdi, 1
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, qword ptr [rbp - 0x18]
	cmp	rdi, qword ptr [rbp - 0x10]
	jb	.label_126
	mov	rdi, qword ptr [rbp - 0x18]
	call	malloc
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_128
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	add	rax, 0x10
	sub	rax, 1
	and	rax, 0xffffffffffffffe0
	add	rax, 0x10
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	sub	rax, rcx
	mov	dl, al
	mov	rax, qword ptr [rbp - 0x28]
	mov	byte ptr [rax - 1], dl
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_127
.label_128:
	jmp	.label_126
.label_126:
	mov	qword ptr [rbp - 8], 0
.label_127:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40343a
	.globl sub_40343a
	.type sub_40343a, @function
sub_40343a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403440

	.globl emit_stdin_note
	.type emit_stdin_note, @function
emit_stdin_note:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_129
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 4], eax
	add	rsp, 0x10
	pop	rbp
	ret	
.label_144:
	cmp	qword ptr [rbp - 0x10a8], 0
	je	.label_141
	call	abort
.label_138:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rcx]
	je	.label_131
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x10bc], ecx
	mov	rdi, qword ptr [rbp - 0x40]
	call	free
	mov	ecx, dword ptr [rbp - 0x10bc]
	mov	dword ptr [rbp - 0x10ec], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x10ec]
	mov	dword ptr [rax], ecx
.label_131:
	mov	dword ptr [rbp - 4], 0xffffffff
.label_130:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10f0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4034d6
	.globl sub_4034d6
	.type sub_4034d6, @function
sub_4034d6:

	nop	dword ptr [rax]
.label_149:
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_137
	jmp	.label_140
.label_139:
	mov	rdi, qword ptr [rbp - 0x38]
	call	malloc
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x40], 0
	jne	.label_143
	call	__errno_location
	mov	dword ptr [rax], 0xc
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_130
	.section	.text
	.align	16
	#Procedure 0x40351b

	.globl mem_cd_iconv
	.type mem_cd_iconv, @function
mem_cd_iconv:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10f0
	xor	eax, eax
	mov	r9d, eax
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, r9
	mov	rdx, r9
	mov	rcx, r9
	mov	r8, r9
	call	iconv
	mov	qword ptr [rbp - 0x48], 0
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x1050], rcx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x1058], rcx
	mov	qword ptr [rbp - 0x10c8], rax
.label_146:
	cmp	qword ptr [rbp - 0x1058], 0
	jbe	.label_140
	lea	rsi, [rbp - 0x1050]
	lea	rdx, [rbp - 0x1058]
	lea	rcx, [rbp - 0x1060]
	lea	r8, [rbp - 0x1068]
	lea	rax, [rbp - 0x1048]
	mov	qword ptr [rbp - 0x1060], rax
	mov	qword ptr [rbp - 0x1068], 0x1000
	mov	rdi, qword ptr [rbp - 0x20]
	call	iconv
	mov	qword ptr [rbp - 0x1070], rax
	cmp	qword ptr [rbp - 0x1070], -1
	jne	.label_147
	call	__errno_location
	cmp	dword ptr [rax], 7
	jne	.label_149
	jmp	.label_148
.label_143:
	jmp	.label_132
.label_132:
	xor	eax, eax
	mov	ecx, eax
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, rcx
	mov	rdx, rcx
	mov	qword ptr [rbp - 0x10d8], rcx
	mov	r8, qword ptr [rbp - 0x10d8]
	call	iconv
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x1090], rcx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x1098], rcx
	mov	rcx, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x10a0], rcx
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x10a8], rcx
	mov	qword ptr [rbp - 0x10e0], rax
.label_134:
	cmp	qword ptr [rbp - 0x1098], 0
	jbe	.label_133
	lea	rsi, [rbp - 0x1090]
	lea	rdx, [rbp - 0x1098]
	lea	rcx, [rbp - 0x10a0]
	lea	r8, [rbp - 0x10a8]
	mov	rdi, qword ptr [rbp - 0x20]
	call	iconv
	mov	qword ptr [rbp - 0x10b0], rax
	cmp	qword ptr [rbp - 0x10b0], -1
	jne	.label_136
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_142
	jmp	.label_133
.label_142:
	jmp	.label_138
.label_135:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax], 0
	je	.label_139
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x38]
	jb	.label_139
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_132
.label_133:
	xor	eax, eax
	mov	ecx, eax
	lea	rdx, [rbp - 0x10a0]
	lea	r8, [rbp - 0x10a8]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, rcx
	mov	qword ptr [rbp - 0x10e8], rdx
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x10e8]
	call	iconv
	mov	qword ptr [rbp - 0x10b8], rax
	cmp	qword ptr [rbp - 0x10b8], -1
	jne	.label_144
	jmp	.label_138
.label_141:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 0
	jmp	.label_130
.label_137:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_130
.label_136:
	jmp	.label_134
.label_145:
	lea	rax, [rbp - 0x1048]
	mov	rcx, qword ptr [rbp - 0x1078]
	sub	rcx, rax
	add	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rcx
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x38], rax
	cmp	qword ptr [rbp - 0x38], 0
	jne	.label_135
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rax], 0
	mov	dword ptr [rbp - 4], 0
	jmp	.label_130
.label_148:
	jmp	.label_147
.label_147:
	lea	rax, [rbp - 0x1048]
	mov	rcx, qword ptr [rbp - 0x1060]
	sub	rcx, rax
	add	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rcx
	jmp	.label_146
.label_140:
	xor	eax, eax
	mov	ecx, eax
	lea	rdx, [rbp - 0x1078]
	lea	r8, [rbp - 0x1080]
	lea	rsi, [rbp - 0x1048]
	mov	qword ptr [rbp - 0x1078], rsi
	mov	qword ptr [rbp - 0x1080], 0x1000
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, rcx
	mov	qword ptr [rbp - 0x10d0], rdx
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x10d0]
	call	iconv
	mov	qword ptr [rbp - 0x1088], rax
	cmp	qword ptr [rbp - 0x1088], -1
	jne	.label_145
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_130
.label_154:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x18], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x20], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x28], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x30], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 8], rax
.label_156:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x20]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rax], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 8], rcx
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x20]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	and	edx, 0xfffc00ff
	mov	dword ptr [rax + 8], edx
	mov	edx, dword ptr [rbp - 0x10]
	and	edx, 0xff
	cmp	edx, 5
	jne	.label_153
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	dword ptr [rcx + 0xb4], 1
	mov	byte ptr [rbp - 0x5a], al
	jg	.label_155
.label_153:
	mov	eax, dword ptr [rbp - 0x10]
	and	eax, 0xff
	cmp	eax, 6
	sete	cl
	mov	byte ptr [rbp - 0x5a], cl
.label_155:
	mov	al, byte ptr [rbp - 0x5a]
	xor	ecx, ecx
	mov	edx, 0x18
	mov	esi, edx
	and	al, 1
	movzx	edx, al
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rdi + 0x10]
	mov	r8, qword ptr [rbp - 0x20]
	shl	rdi, 4
	add	rdi, qword ptr [r8]
	mov	r9d, dword ptr [rdi + 8]
	and	edx, 1
	shl	edx, 0x14
	and	r9d, 0xffefffff
	or	r9d, edx
	mov	dword ptr [rdi + 8], r9d
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rdi + 0x10]
	mov	r8, qword ptr [rbp - 0x20]
	mov	r8, qword ptr [r8 + 0x18]
	mov	qword ptr [r8 + rdi*8], -1
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rdi + 0x28]
	mov	r8, qword ptr [rbp - 0x20]
	imul	r8, qword ptr [r8 + 0x10], 0x18
	add	rdi, r8
	mov	qword ptr [rbp - 0x68], rsi
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x68]
	mov	dword ptr [rbp - 0x6c], ecx
	call	memset
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rdx + 0x30]
	mov	rdi, qword ptr [rbp - 0x20]
	imul	rdi, qword ptr [rdi + 0x10], 0x18
	add	rdx, rdi
	mov	rdi, rdx
	mov	esi, dword ptr [rbp - 0x6c]
	mov	rdx, qword ptr [rbp - 0x68]
	call	memset
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rdx + 0x10]
	mov	r8, rdi
	add	r8, 1
	mov	qword ptr [rdx + 0x10], r8
	mov	qword ptr [rbp - 8], rdi
.label_151:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403994
	.globl sub_403994
	.type sub_403994, @function
sub_403994:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40399f

	.globl re_dfa_add_node
	.type re_dfa_add_node, @function
re_dfa_add_node:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x10], rdx
	mov	qword ptr [rbp - 0x20], rdi
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	cmp	rdx, qword ptr [rsi + 8]
	setae	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_156
	movabs	rax, 0xaaaaaaaaaaaaaaa
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 8]
	shl	rcx, 1
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x58], 0x18
	cmp	rax, qword ptr [rbp - 0x28]
	setb	dl
	and	dl, 1
	movzx	esi, dl
	movsxd	rax, esi
	cmp	rax, 0
	je	.label_152
	mov	qword ptr [rbp - 8], -1
	jmp	.label_151
.label_152:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x28]
	shl	rcx, 4
	mov	rdi, rax
	mov	rsi, rcx
	call	realloc
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x50], 0
	sete	dl
	and	dl, 1
	movzx	r8d, dl
	movsxd	rax, r8d
	cmp	rax, 0
	je	.label_157
	mov	qword ptr [rbp - 8], -1
	jmp	.label_151
.label_157:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x18]
	mov	rcx, qword ptr [rbp - 0x28]
	shl	rcx, 3
	mov	rdi, rax
	mov	rsi, rcx
	call	realloc
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	shl	rcx, 3
	mov	rdi, rax
	mov	rsi, rcx
	call	realloc
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x28]
	imul	rsi, qword ptr [rbp - 0x28], 0x18
	mov	rdi, rax
	call	realloc
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x30]
	imul	rsi, qword ptr [rbp - 0x28], 0x18
	mov	rdi, rax
	call	realloc
	mov	dl, 1
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x30], 0
	mov	byte ptr [rbp - 0x59], dl
	je	.label_150
	mov	al, 1
	cmp	qword ptr [rbp - 0x38], 0
	mov	byte ptr [rbp - 0x59], al
	je	.label_150
	mov	al, 1
	cmp	qword ptr [rbp - 0x40], 0
	mov	byte ptr [rbp - 0x59], al
	je	.label_150
	cmp	qword ptr [rbp - 0x48], 0
	sete	al
	mov	byte ptr [rbp - 0x59], al
.label_150:
	mov	al, byte ptr [rbp - 0x59]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_154
	mov	rax, qword ptr [rbp - 0x30]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x40]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x48]
	mov	rdi, rax
	call	free
	mov	qword ptr [rbp - 8], -1
	jmp	.label_151
.label_160:
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_164
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 0x30], rax
	sete	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x31], cl
	mov	dword ptr [rbp - 0x38], 0x7ffffffe
	mov	edx, dword ptr [rbp - 0x38]
	cmp	edx, dword ptr [rbp - 4]
	jge	.label_158
	call	xalloc_die
.label_158:
	test	byte ptr [rbp - 0x31], 1
	je	.label_163
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x60], rcx
	jmp	.label_165
	.section	.text
	.align	16
	#Procedure 0x403bc6

	.globl quotearg_n_options
	.type quotearg_n_options, @function
quotearg_n_options:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x90
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	call	__errno_location
	mov	edi, dword ptr [rax]
	mov	dword ptr [rbp - 0x24], edi
	mov	rax,  qword ptr [word ptr [slotvec]]
	mov	qword ptr [rbp - 0x30], rax
	cmp	dword ptr [rbp - 4], 0
	jge	.label_160
	call	abort
.label_163:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x60], rax
.label_165:
	mov	rax, qword ptr [rbp - 0x60]
	mov	ecx, dword ptr [rbp - 4]
	add	ecx, 1
	movsxd	rdx, ecx
	shl	rdx, 4
	mov	rdi, rax
	mov	rsi, rdx
	call	xrealloc
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [word ptr [slotvec]],  rax
	test	byte ptr [rbp - 0x31], 1
	je	.label_162
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_166]]
	mov	qword ptr [rax + 8], rcx
.label_162:
	xor	esi, esi
	mov	rax, qword ptr [rbp - 0x30]
	movsxd	rcx,  dword ptr [dword ptr [nslots]]
	shl	rcx, 4
	add	rax, rcx
	mov	edx, dword ptr [rbp - 4]
	add	edx, 1
	sub	edx,  dword ptr [dword ptr [nslots]]
	movsxd	rcx, edx
	shl	rcx, 4
	mov	rdi, rax
	mov	rdx, rcx
	call	memset
	mov	esi, dword ptr [rbp - 4]
	add	esi, 1
	mov	dword ptr [dword ptr [nslots]],  esi
.label_164:
	movsxd	rax, dword ptr [rbp - 4]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x40], rax
	movsxd	rax, dword ptr [rbp - 4]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 4]
	or	ecx, 1
	mov	dword ptr [rbp - 0x4c], ecx
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x20]
	mov	r8d, dword ptr [rax]
	mov	r9d, dword ptr [rbp - 0x4c]
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 8
	mov	r10, qword ptr [rbp - 0x20]
	mov	r10, qword ptr [r10 + 0x28]
	mov	r11, qword ptr [rbp - 0x20]
	mov	r11, qword ptr [r11 + 0x30]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x58]
	ja	.label_159
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	mov	qword ptr [rbp - 0x40], rcx
	movsxd	rdx, dword ptr [rbp - 4]
	shl	rdx, 4
	add	rdx, qword ptr [rbp - 0x30]
	mov	qword ptr [rdx], rcx
	cmp	qword ptr [rbp - 0x48], rax
	je	.label_161
	mov	rdi, qword ptr [rbp - 0x48]
	call	free
.label_161:
	mov	rdi, qword ptr [rbp - 0x40]
	call	xcharalloc
	mov	qword ptr [rbp - 0x48], rax
	movsxd	rdi, dword ptr [rbp - 4]
	shl	rdi, 4
	add	rdi, qword ptr [rbp - 0x30]
	mov	qword ptr [rdi + 8], rax
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x20]
	mov	r8d, dword ptr [rax]
	mov	r9d, dword ptr [rbp - 0x4c]
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 8
	mov	r10, qword ptr [rbp - 0x20]
	mov	r10, qword ptr [r10 + 0x28]
	mov	r11, qword ptr [rbp - 0x20]
	mov	r11, qword ptr [r11 + 0x30]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	qword ptr [rbp - 0x68], rax
.label_159:
	mov	eax, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x6c], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x6c]
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0x90
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403de3
	.globl sub_403de3
	.type sub_403de3, @function
sub_403de3:

	nop	word ptr cs:[rax + rax]
.label_167:
	call	output_one_roff_line
	jmp	.label_169
.label_170:
	call	output_one_dumb_line
	jmp	.label_169
.label_174:
	call	output_one_tex_line
.label_169:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x30
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_168
.label_171:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403e2c
	.globl sub_403e2c
	.type sub_403e2c, @function
sub_403e2c:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403e35

	.globl generate_all_output
	.type generate_all_output, @function
generate_all_output:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [word ptr [tail]],  0
	mov	qword ptr [word ptr [label_175]],  0
	mov	byte ptr [byte ptr [tail_truncation]],  0
	mov	qword ptr [word ptr [head]],  0
	mov	qword ptr [word ptr [label_176]],  0
	mov	byte ptr [byte ptr [head_truncation]],  0
	mov	rax,  qword ptr [word ptr [occurs_table]]
	mov	qword ptr [rbp - 0x10], rax
	mov	qword ptr [rbp - 8], 0
.label_168:
	mov	rax, qword ptr [rbp - 8]
	cmp	rax,  qword ptr [word ptr [number_of_occurs]]
	jge	.label_171
	mov	rdi, qword ptr [rbp - 0x10]
	call	define_all_fields
	mov	eax,  dword ptr [dword ptr [rip + output_format]]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0x14], eax
	mov	dword ptr [rbp - 0x18], ecx
	jb	.label_170
	jmp	.label_172
.label_172:
	mov	eax, dword ptr [rbp - 0x14]
	sub	eax, 2
	mov	dword ptr [rbp - 0x1c], eax
	je	.label_167
	jmp	.label_173
.label_173:
	mov	eax, dword ptr [rbp - 0x14]
	sub	eax, 3
	mov	dword ptr [rbp - 0x20], eax
	je	.label_174
	jmp	.label_169
	.section	.text
	.align	16
	#Procedure 0x403ef0

	.globl rpl_mbrtowc
	.type rpl_mbrtowc, @function
rpl_mbrtowc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_177
	lea	rax, [rbp - 0x34]
	mov	qword ptr [rbp - 0x10], rax
.label_177:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	call	mbrtowc
	mov	rcx, -2
	mov	qword ptr [rbp - 0x30], rax
	cmp	rcx, qword ptr [rbp - 0x30]
	ja	.label_178
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_178
	xor	edi, edi
	call	hard_locale
	test	al, 1
	jne	.label_178
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x35], cl
	movzx	edx, byte ptr [rbp - 0x35]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], edx
	mov	qword ptr [rbp - 8], 1
	jmp	.label_179
.label_178:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
.label_179:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403f91
	.globl sub_403f91
	.type sub_403f91, @function
sub_403f91:

	nop	word ptr cs:[rax + rax]
.label_220:
	mov	qword ptr [rbp - 0xf8], 0
	mov	qword ptr [rbp - 0xf0], 0
	mov	qword ptr [rbp - 0x48], 0
.label_225:
	cmp	qword ptr [rbp - 0x48], 4
	jge	.label_222
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rbp + rax*8 - 0x70]
	xor	rax, 0xffffffffffffffff
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x40]
	shl	rdx, 5
	add	rdx, qword ptr [rbp - 0x28]
	and	rax, qword ptr [rdx + rcx*8]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp + rcx*8 - 0xe0], rax
	or	rax, qword ptr [rbp - 0xf0]
	mov	qword ptr [rbp - 0xf0], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rbp + rax*8 - 0x70]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x40]
	shl	rdx, 5
	add	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rdx + rcx*8]
	xor	rcx, 0xffffffffffffffff
	and	rax, rcx
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp + rcx*8 - 0x70], rax
	or	rax, qword ptr [rbp - 0xf8]
	mov	qword ptr [rbp - 0xf8], rax
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_225
.label_237:
	jmp	.label_200
.label_200:
	jmp	.label_227
.label_227:
	jmp	.label_181
.label_181:
	cmp	dword ptr [rbp - 0x88], 0
	je	.label_205
	mov	eax, dword ptr [rbp - 0x88]
	and	eax, 0x20
	cmp	eax, 0
	je	.label_207
	mov	eax, 0xa
	mov	esi, eax
	lea	rdi, [rbp - 0x70]
	call	bitset_contain
	lea	rdi, [rbp - 0x70]
	and	al, 1
	mov	byte ptr [rbp - 0x89], al
	call	bitset_empty
	test	byte ptr [rbp - 0x89], 1
	je	.label_216
	mov	eax, 0xa
	mov	esi, eax
	lea	rdi, [rbp - 0x70]
	call	bitset_set
	jmp	.label_221
.label_215:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
.label_196:
	mov	rax, qword ptr [rbp - 0x40]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	rsi, qword ptr [rdx + rcx*8]
	mov	rdi, rax
	call	re_node_set_insert
	and	al, 1
	mov	byte ptr [rbp - 0x2d], al
	mov	al, byte ptr [rbp - 0x2d]
	xor	al, 0xff
	and	al, 1
	movzx	r8d, al
	movsxd	rcx, r8d
	cmp	rcx, 0
	je	.label_235
	jmp	.label_183
.label_195:
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x50]
	jne	.label_188
	lea	rsi, [rbp - 0x70]
	mov	rax, qword ptr [rbp - 0x50]
	shl	rax, 5
	add	rax, qword ptr [rbp - 0x28]
	mov	rdi, rax
	call	bitset_copy
	mov	rax, qword ptr [rbp - 0x20]
	imul	rsi, qword ptr [rbp - 0x50], 0x18
	add	rax, rsi
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rbp - 0x78]
	mov	rdi, qword ptr [rdi + 0x10]
	mov	rsi, qword ptr [rdi + rsi*8]
	mov	rdi, rax
	call	re_node_set_init_1
	mov	dword ptr [rbp - 0x2c], eax
	cmp	dword ptr [rbp - 0x2c], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rsi, eax
	cmp	rsi, 0
	je	.label_204
	jmp	.label_183
.label_190:
	cmp	dword ptr [rbp - 0x84], 7
	jne	.label_210
	mov	esi, 0xff
	mov	eax, 0x10
	mov	edx, eax
	lea	rcx, [rbp - 0x70]
	mov	rdi, rcx
	call	memset
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0xd8]
	and	rcx, 0x40
	cmp	rcx, 0
	jne	.label_217
	mov	eax, 0xa
	mov	esi, eax
	lea	rdi, [rbp - 0x70]
	call	bitset_clear
.label_217:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0xd8]
	and	rax, 0x80
	cmp	rax, 0
	je	.label_226
	xor	eax, eax
	mov	esi, eax
	lea	rdi, [rbp - 0x70]
	call	bitset_clear
.label_226:
	jmp	.label_237
.label_192:
	jmp	.label_213
.label_213:
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_238
.label_210:
	jmp	.label_185
.label_218:
	mov	eax, dword ptr [rbp - 0x88]
	and	eax, 4
	cmp	eax, 0
	je	.label_189
	mov	qword ptr [rbp - 0x98], 0
	cmp	dword ptr [rbp - 0x84], 1
	jne	.label_193
	mov	rax, qword ptr [rbp - 0x80]
	mov	ecx, dword ptr [rax + 8]
	shr	ecx, 0x16
	and	ecx, 1
	cmp	ecx, 0
	jne	.label_193
	lea	rdi, [rbp - 0x70]
	call	bitset_empty
	jmp	.label_185
.label_214:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_206
.label_223:
	mov	qword ptr [rbp - 0x40], 0
.label_211:
	cmp	qword ptr [rbp - 0x40], 4
	jge	.label_209
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rcx + rax*8 + 0xb8]
	xor	rax, 0xffffffffffffffff
	mov	rcx, qword ptr [rbp - 0x40]
	and	rax, qword ptr [rbp + rcx*8 - 0x70]
	mov	qword ptr [rbp + rcx*8 - 0x70], rax
	or	rax, qword ptr [rbp - 0xa0]
	mov	qword ptr [rbp - 0xa0], rax
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_211
.label_191:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	dword ptr [rax + 0xb4], 1
	jle	.label_223
	mov	qword ptr [rbp - 0x40], 0
.label_208:
	cmp	qword ptr [rbp - 0x40], 4
	jge	.label_231
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rcx + rax*8 + 0xb8]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x78]
	and	rax, qword ptr [rdx + rcx*8]
	xor	rax, 0xffffffffffffffff
	mov	rcx, qword ptr [rbp - 0x40]
	and	rax, qword ptr [rbp + rcx*8 - 0x70]
	mov	qword ptr [rbp + rcx*8 - 0x70], rax
	or	rax, qword ptr [rbp - 0xa0]
	mov	qword ptr [rbp - 0xa0], rax
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_208
.label_193:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	dword ptr [rax + 0xb4], 1
	jle	.label_197
	mov	qword ptr [rbp - 0x40], 0
.label_194:
	cmp	qword ptr [rbp - 0x40], 4
	jge	.label_201
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rcx + rax*8 + 0xb8]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x78]
	mov	rcx, qword ptr [rdx + rcx*8]
	xor	rcx, 0xffffffffffffffff
	or	rax, rcx
	mov	rcx, qword ptr [rbp - 0x40]
	and	rax, qword ptr [rbp + rcx*8 - 0x70]
	mov	qword ptr [rbp + rcx*8 - 0x70], rax
	or	rax, qword ptr [rbp - 0x98]
	mov	qword ptr [rbp - 0x98], rax
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_194
.label_234:
	cmp	dword ptr [rbp - 0x84], 3
	jne	.label_219
	lea	rdi, [rbp - 0x70]
	mov	rax, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rax]
	call	bitset_merge
	jmp	.label_227
.label_183:
	mov	qword ptr [rbp - 0x40], 0
.label_180:
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x50]
	jge	.label_236
	mov	rax, qword ptr [rbp - 0x20]
	imul	rcx, qword ptr [rbp - 0x40], 0x18
	add	rax, rcx
	mov	rax, qword ptr [rax + 0x10]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_180
.label_201:
	jmp	.label_187
.label_219:
	cmp	dword ptr [rbp - 0x84], 5
	jne	.label_190
	mov	rax, qword ptr [rbp - 0x10]
	cmp	dword ptr [rax + 0xb4], 1
	jle	.label_230
	lea	rdi, [rbp - 0x70]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rax + 0x78]
	call	bitset_merge
	jmp	.label_199
	.section	.text
	.align	16
	#Procedure 0x40444b

	.globl group_nodes_into_DFAstates
	.type group_nodes_into_DFAstates, @function
group_nodes_into_DFAstates:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x100
	lea	rax, [rbp - 0x70]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, 8
	mov	qword ptr [rbp - 0x78], rcx
	mov	rdi, rax
	call	bitset_empty
	mov	qword ptr [rbp - 0x50], 0
	mov	qword ptr [rbp - 0x38], 0
.label_198:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x78]
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_214
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x10]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	qword ptr [rbp - 0x80], rax
	mov	rax, qword ptr [rbp - 0x80]
	mov	edx, dword ptr [rax + 8]
	and	edx, 0xff
	mov	dword ptr [rbp - 0x84], edx
	mov	rax, qword ptr [rbp - 0x80]
	mov	edx, dword ptr [rax + 8]
	shr	edx, 8
	and	edx, 0x3ff
	mov	dword ptr [rbp - 0x88], edx
	cmp	dword ptr [rbp - 0x84], 1
	jne	.label_234
	lea	rdi, [rbp - 0x70]
	mov	rax, qword ptr [rbp - 0x80]
	movzx	ecx, byte ptr [rax]
	mov	esi, ecx
	call	bitset_set
	jmp	.label_181
.label_209:
	jmp	.label_182
.label_182:
	cmp	qword ptr [rbp - 0xa0], 0
	jne	.label_186
	jmp	.label_185
.label_235:
	cmp	qword ptr [rbp - 0xf8], 0
	jne	.label_192
	jmp	.label_195
.label_222:
	cmp	qword ptr [rbp - 0xf0], 0
	je	.label_196
	lea	rsi, [rbp - 0xe0]
	mov	rax, qword ptr [rbp - 0x50]
	shl	rax, 5
	add	rax, qword ptr [rbp - 0x28]
	mov	rdi, rax
	call	bitset_copy
	lea	rsi, [rbp - 0xc0]
	mov	rax, qword ptr [rbp - 0x40]
	shl	rax, 5
	add	rax, qword ptr [rbp - 0x28]
	mov	rdi, rax
	call	bitset_copy
	mov	rax, qword ptr [rbp - 0x20]
	imul	rsi, qword ptr [rbp - 0x50], 0x18
	add	rax, rsi
	mov	rsi, qword ptr [rbp - 0x40]
	imul	rsi, rsi, 0x18
	add	rsi, qword ptr [rbp - 0x20]
	mov	rdi, rax
	call	re_node_set_init_copy
	mov	dword ptr [rbp - 0x2c], eax
	cmp	dword ptr [rbp - 0x2c], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rsi, eax
	cmp	rsi, 0
	je	.label_215
	jmp	.label_183
.label_184:
	mov	qword ptr [rbp - 0xe8], 0
	mov	qword ptr [rbp - 0x48], 0
.label_232:
	cmp	qword ptr [rbp - 0x48], 4
	jge	.label_228
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rbp + rax*8 - 0x70]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x40]
	shl	rdx, 5
	add	rdx, qword ptr [rbp - 0x28]
	and	rax, qword ptr [rdx + rcx*8]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp + rcx*8 - 0xc0], rax
	or	rax, qword ptr [rbp - 0xe8]
	mov	qword ptr [rbp - 0xe8], rax
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_232
.label_204:
	lea	rdi, [rbp - 0x70]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	call	bitset_empty
.label_188:
	jmp	.label_185
.label_185:
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_198
.label_216:
	jmp	.label_185
.label_230:
	lea	rdi, [rbp - 0x70]
	call	bitset_set_all
.label_199:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0xd8]
	and	rax, 0x40
	cmp	rax, 0
	jne	.label_203
	mov	eax, 0xa
	mov	esi, eax
	lea	rdi, [rbp - 0x70]
	call	bitset_clear
.label_203:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0xd8]
	and	rax, 0x80
	cmp	rax, 0
	je	.label_212
	xor	eax, eax
	mov	esi, eax
	lea	rdi, [rbp - 0x70]
	call	bitset_clear
.label_212:
	jmp	.label_200
.label_228:
	cmp	qword ptr [rbp - 0xe8], 0
	jne	.label_220
	jmp	.label_213
.label_186:
	jmp	.label_202
.label_202:
	jmp	.label_205
.label_205:
	mov	qword ptr [rbp - 0x40], 0
.label_238:
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x50]
	jge	.label_195
	cmp	dword ptr [rbp - 0x84], 1
	jne	.label_184
	mov	rax, qword ptr [rbp - 0x40]
	shl	rax, 5
	add	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x80]
	movzx	edx, byte ptr [rcx]
	mov	esi, edx
	mov	rdi, rax
	call	bitset_contain
	test	al, 1
	jne	.label_184
	jmp	.label_213
.label_229:
	jmp	.label_187
.label_187:
	cmp	qword ptr [rbp - 0x98], 0
	jne	.label_224
	jmp	.label_185
.label_236:
	mov	qword ptr [rbp - 8], -1
.label_206:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x100
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404749
	.globl sub_404749
	.type sub_404749, @function
sub_404749:

	nop	dword ptr [rax + rax]
.label_231:
	jmp	.label_182
.label_224:
	jmp	.label_189
.label_189:
	mov	eax, dword ptr [rbp - 0x88]
	and	eax, 8
	cmp	eax, 0
	je	.label_202
	mov	qword ptr [rbp - 0xa0], 0
	cmp	dword ptr [rbp - 0x84], 1
	jne	.label_191
	mov	rax, qword ptr [rbp - 0x80]
	mov	ecx, dword ptr [rax + 8]
	shr	ecx, 0x16
	and	ecx, 1
	cmp	ecx, 0
	je	.label_191
	lea	rdi, [rbp - 0x70]
	call	bitset_empty
	jmp	.label_185
.label_221:
	jmp	.label_207
.label_207:
	mov	eax, dword ptr [rbp - 0x88]
	and	eax, 0x80
	cmp	eax, 0
	je	.label_218
	lea	rdi, [rbp - 0x70]
	call	bitset_empty
	jmp	.label_185
.label_197:
	mov	qword ptr [rbp - 0x40], 0
.label_233:
	cmp	qword ptr [rbp - 0x40], 4
	jge	.label_229
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rcx + rax*8 + 0xb8]
	mov	rcx, qword ptr [rbp - 0x40]
	and	rax, qword ptr [rbp + rcx*8 - 0x70]
	mov	qword ptr [rbp + rcx*8 - 0x70], rax
	or	rax, qword ptr [rbp - 0x98]
	mov	qword ptr [rbp - 0x98], rax
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_233
	.section	.text
	.align	16
	#Procedure 0x404820
	.globl c_islower
	.type c_islower, @function
c_islower:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_239
	jmp	.label_241
.label_241:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_240
.label_239:
	mov	byte ptr [rbp - 1], 0
.label_240:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404852
	.globl sub_404852
	.type sub_404852, @function
sub_404852:

	nop	word ptr cs:[rax + rax]
.label_255:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsi, rdx
	add	rsi, 1
	mov	qword ptr [rbp - 0x18], rsi
	mov	byte ptr [rdx], cl
.label_259:
	jmp	.label_244
.label_247:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	byte ptr [rax], 0x5c
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 8], rcx
	mov	dl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	byte ptr [rax], dl
.label_244:
	jmp	.label_258
.label_278:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	byte ptr [rax], 9
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_244
.label_250:
	jmp	.label_273
.label_273:
	mov	rax, qword ptr [rbp - 8]
	cmp	byte ptr [rax], 0
	je	.label_275
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_273
.label_263:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsi, rdx
	add	rsi, 1
	mov	qword ptr [rbp - 0x18], rsi
	mov	byte ptr [rdx], cl
	jmp	.label_244
.label_256:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 8], rcx
	mov	dl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	byte ptr [rax], dl
.label_258:
	jmp	.label_260
.label_261:
	jmp	.label_244
.label_257:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	byte ptr [rax], 0xc
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_244
.label_251:
	mov	rax, qword ptr [rbp - 0x18]
	mov	byte ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404975
	.globl sub_404975
	.type sub_404975, @function
sub_404975:

	nop	word ptr cs:[rax + rax]
.label_276:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	byte ptr [rax], 0xb
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_244
.label_281:
	cmp	dword ptr [rbp - 0x20], 0
	jne	.label_255
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	byte ptr [rax], 0x5c
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	byte ptr [rax], 0x78
	jmp	.label_259
.label_268:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	byte ptr [rax], 7
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_244
.label_275:
	jmp	.label_244
.label_249:
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x41
	jl	.label_242
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x46
	jg	.label_242
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x41
	add	ecx, 0xa
	mov	dword ptr [rbp - 0x64], ecx
	jmp	.label_253
.label_242:
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	mov	dword ptr [rbp - 0x64], ecx
.label_253:
	mov	eax, dword ptr [rbp - 0x64]
	mov	dword ptr [rbp - 0x60], eax
.label_264:
	mov	eax, dword ptr [rbp - 0x60]
	mov	ecx, dword ptr [rbp - 0x5c]
	add	ecx, eax
	mov	dword ptr [rbp - 0x1c], ecx
	mov	eax, dword ptr [rbp - 0x20]
	add	eax, 1
	mov	dword ptr [rbp - 0x20], eax
	mov	rcx, qword ptr [rbp - 8]
	add	rcx, 1
	mov	qword ptr [rbp - 8], rcx
	jmp	.label_272
.label_270:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	byte ptr [rax], 0xd
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_244
.label_265:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	byte ptr [rax], 0xa
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_244
.label_246:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	byte ptr [rax], 8
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_244
.label_274:
	mov	dword ptr [rbp - 0x1c], 0
	mov	dword ptr [rbp - 0x20], 0
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
.label_266:
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [rbp - 0x20], 3
	mov	byte ptr [rbp - 0x65], cl
	jge	.label_279
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 8]
	movsx	eax, byte ptr [rdx]
	cmp	eax, 0x30
	mov	byte ptr [rbp - 0x66], cl
	jl	.label_243
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x37
	setle	dl
	mov	byte ptr [rbp - 0x66], dl
.label_243:
	mov	al, byte ptr [rbp - 0x66]
	mov	byte ptr [rbp - 0x65], al
.label_279:
	mov	al, byte ptr [rbp - 0x65]
	test	al, 1
	jne	.label_277
	jmp	.label_263
.label_277:
	mov	eax, dword ptr [rbp - 0x1c]
	shl	eax, 3
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx]
	sub	edx, 0x30
	add	eax, edx
	mov	dword ptr [rbp - 0x1c], eax
	mov	eax, dword ptr [rbp - 0x20]
	add	eax, 1
	mov	dword ptr [rbp - 0x20], eax
	mov	rcx, qword ptr [rbp - 8]
	add	rcx, 1
	mov	qword ptr [rbp - 8], rcx
	jmp	.label_266
	.section	.text
	.align	16
	#Procedure 0x404b6e

	.globl copy_unescaped_string
	.type copy_unescaped_string, @function
copy_unescaped_string:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	strlen
	add	rax, 1
	mov	rdi, rax
	call	xmalloc
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rax
.label_260:
	mov	rax, qword ptr [rbp - 8]
	cmp	byte ptr [rax], 0
	je	.label_251
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x5c
	jne	.label_256
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, rax
	inc	rcx
	mov	qword ptr [rbp - 8], rcx
	movsx	edx, byte ptr [rax + 1]
	test	edx, edx
	mov	dword ptr [rbp - 0x24], edx
	je	.label_261
	jmp	.label_271
.label_271:
	mov	eax, dword ptr [rbp - 0x24]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x28], eax
	je	.label_274
	jmp	.label_283
.label_283:
	mov	eax, dword ptr [rbp - 0x24]
	sub	eax, 0x61
	mov	dword ptr [rbp - 0x2c], eax
	je	.label_268
	jmp	.label_284
.label_284:
	mov	eax, dword ptr [rbp - 0x24]
	sub	eax, 0x62
	mov	dword ptr [rbp - 0x30], eax
	je	.label_246
	jmp	.label_248
.label_248:
	mov	eax, dword ptr [rbp - 0x24]
	sub	eax, 0x63
	mov	dword ptr [rbp - 0x34], eax
	je	.label_250
	jmp	.label_254
.label_254:
	mov	eax, dword ptr [rbp - 0x24]
	sub	eax, 0x66
	mov	dword ptr [rbp - 0x38], eax
	je	.label_257
	jmp	.label_262
.label_262:
	mov	eax, dword ptr [rbp - 0x24]
	sub	eax, 0x6e
	mov	dword ptr [rbp - 0x3c], eax
	je	.label_265
	jmp	.label_269
.label_269:
	mov	eax, dword ptr [rbp - 0x24]
	sub	eax, 0x72
	mov	dword ptr [rbp - 0x40], eax
	je	.label_270
	jmp	.label_267
.label_267:
	mov	eax, dword ptr [rbp - 0x24]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0x44], eax
	je	.label_278
	jmp	.label_282
.label_282:
	mov	eax, dword ptr [rbp - 0x24]
	sub	eax, 0x76
	mov	dword ptr [rbp - 0x48], eax
	je	.label_276
	jmp	.label_245
.label_245:
	mov	eax, dword ptr [rbp - 0x24]
	sub	eax, 0x78
	mov	dword ptr [rbp - 0x4c], eax
	jne	.label_247
	jmp	.label_252
.label_252:
	mov	dword ptr [rbp - 0x1c], 0
	mov	dword ptr [rbp - 0x20], 0
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
.label_272:
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [rbp - 0x20], 3
	mov	byte ptr [rbp - 0x4d], cl
	jge	.label_280
	mov	rax, qword ptr [rbp - 8]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	movsxd	rcx, edi
	mov	qword ptr [rbp - 0x58], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x58]
	movzx	edi, word ptr [rax + rcx*2]
	and	edi, 0x1000
	cmp	edi, 0
	setne	dl
	mov	byte ptr [rbp - 0x4d], dl
.label_280:
	mov	al, byte ptr [rbp - 0x4d]
	test	al, 1
	jne	.label_285
	jmp	.label_281
.label_285:
	mov	eax, dword ptr [rbp - 0x1c]
	shl	eax, 4
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx]
	cmp	edx, 0x61
	mov	dword ptr [rbp - 0x5c], eax
	jl	.label_249
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x66
	jg	.label_249
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x61
	add	ecx, 0xa
	mov	dword ptr [rbp - 0x60], ecx
	jmp	.label_264
.label_290:
	lea	rax, [rbp - 0xd0]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x28]
	mov	rdi, qword ptr [rbp - 0x28]
	and	rdi, 0x400000
	cmp	rdi, 0
	setne	r8b
	mov	r9, qword ptr [rbp - 0x38]
	and	r8b, 1
	movzx	r8d, r8b
	lea	rdi, [rbp - 0xd0]
	mov	qword ptr [rbp - 0xe0], rax
	call	re_string_construct
	mov	dword ptr [rbp - 0x2c], eax
	cmp	dword ptr [rbp - 0x2c], 0
	setne	r10b
	and	r10b, 1
	movzx	eax, r10b
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_291
	jmp	.label_288
.label_288:
	mov	rdi, qword ptr [rbp - 0x10]
	call	free_workarea_compile
	lea	rdi, [rbp - 0xd0]
	call	re_string_destruct
	mov	rdi, qword ptr [rbp - 0x38]
	call	free_dfa_content
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi], 0
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 8], 0
	mov	eax, dword ptr [rbp - 0x2c]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_292
.label_293:
	mov	rdi, qword ptr [rbp - 0x10]
	call	analyze
	mov	dword ptr [rbp - 0x2c], eax
	cmp	dword ptr [rbp - 0x2c], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rdi, eax
	cmp	rdi, 0
	je	.label_294
	jmp	.label_288
.label_294:
	mov	rax, qword ptr [rbp - 0x38]
	mov	cl, byte ptr [rax + 0xb0]
	shr	cl, 2
	and	cl, 1
	movzx	edx, cl
	cmp	edx, 0
	je	.label_287
	mov	rax, qword ptr [rbp - 0x28]
	and	rax, 0x400000
	cmp	rax, 0
	jne	.label_287
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x28], 0
	jne	.label_287
	mov	rdi, qword ptr [rbp - 0x38]
	call	optimize_utf8
.label_287:
	mov	rdi, qword ptr [rbp - 0x38]
	call	create_initial_state
	mov	dword ptr [rbp - 0x2c], eax
	mov	rdi, qword ptr [rbp - 0x10]
	call	free_workarea_compile
	lea	rdi, [rbp - 0xd0]
	call	re_string_destruct
	cmp	dword ptr [rbp - 0x2c], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rdi, eax
	cmp	rdi, 0
	je	.label_289
	mov	rdi, qword ptr [rbp - 0x38]
	call	free_dfa_content
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi], 0
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 8], 0
.label_289:
	mov	eax, dword ptr [rbp - 0x2c]
	mov	dword ptr [rbp - 4], eax
.label_292:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xe0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404ede
	.globl sub_404ede
	.type sub_404ede, @function
sub_404ede:

	nop	word ptr [rax + rax]
.label_296:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 8], 0xe8
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
.label_297:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x10], 0xe8
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x20]
	call	init_dfa
	xor	ecx, ecx
	mov	dl, cl
	mov	dword ptr [rbp - 0x2c], eax
	cmp	dword ptr [rbp - 0x2c], 0
	mov	byte ptr [rbp - 0xd1], dl
	jne	.label_286
	xor	eax, eax
	mov	cl, al
	mov	byte ptr [rbp - 0xd1], cl
	jmp	.label_286
.label_286:
	mov	al, byte ptr [rbp - 0xd1]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_295
	mov	dword ptr [rbp - 0x2c], 0xc
.label_295:
	cmp	dword ptr [rbp - 0x2c], 0
	setne	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_290
	mov	rdi, qword ptr [rbp - 0x38]
	call	free_dfa_content
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi], 0
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 8], 0
	mov	eax, dword ptr [rbp - 0x2c]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_292
	.section	.text
	.align	16
	#Procedure 0x404f9d

	.globl re_compile_internal
	.type re_compile_internal, @function
re_compile_internal:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xe0
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	dword ptr [rbp - 0x2c], 0
	mov	rcx, qword ptr [rbp - 0x10]
	mov	al, byte ptr [rcx + 0x38]
	and	al, 0xf7
	mov	byte ptr [rcx + 0x38], al
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x18], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	al, byte ptr [rcx + 0x38]
	and	al, 0xbf
	mov	byte ptr [rcx + 0x38], al
	mov	rcx, qword ptr [rbp - 0x10]
	mov	al, byte ptr [rcx + 0x38]
	and	al, 0xdf
	mov	byte ptr [rcx + 0x38], al
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x10], 0
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x30], 0
	mov	rcx, qword ptr [rbp - 0x10]
	mov	al, byte ptr [rcx + 0x38]
	and	al, 0xfe
	mov	byte ptr [rcx + 0x38], al
	mov	rcx, qword ptr [rbp - 0x10]
	mov	al, byte ptr [rcx + 0x38]
	and	al, 0xf9
	mov	byte ptr [rcx + 0x38], al
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 0x38], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	qword ptr [rcx + 8], 0xe8
	setb	al
	and	al, 1
	movzx	r8d, al
	movsxd	rcx, r8d
	cmp	rcx, 0
	je	.label_297
	mov	eax, 0xe8
	mov	esi, eax
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	mov	rdi, rcx
	call	realloc
	mov	qword ptr [rbp - 0x38], rax
	cmp	qword ptr [rbp - 0x38], 0
	jne	.label_296
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_292
.label_291:
	lea	rdi, [rbp - 0xd0]
	lea	rcx, [rbp - 0x2c]
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x30], 0
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x28]
	call	parse
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x68], rax
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax + 0x68], 0
	sete	r8b
	and	r8b, 1
	movzx	r9d, r8b
	movsxd	rax, r9d
	cmp	rax, 0
	je	.label_293
	jmp	.label_288
.label_307:
	cmp	dword ptr [rbp - 0x54], 0
	setne	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_323
	mov	eax, dword ptr [rbp - 0x54]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_299
.label_300:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	r8, qword ptr [rbp - 0x20]
	call	get_subexp_sub
	mov	dword ptr [rbp - 0x54], eax
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rbp - 0x40], rcx
	cmp	dword ptr [rbp - 0x54], 1
	jne	.label_307
	jmp	.label_298
.label_301:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x78], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x80], rax
	mov	qword ptr [rbp - 0x70], 0
.label_328:
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rcx + 0x20]
	jge	.label_314
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rcx + 0x28]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x68]
	mov	rax, qword ptr [rax + 8]
	sub	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x88], rax
	cmp	qword ptr [rbp - 0x88], 0
	jle	.label_306
	mov	rax, qword ptr [rbp - 0x80]
	add	rax, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x30]
	setg	dl
	and	dl, 1
	movzx	esi, dl
	movsxd	rax, esi
	cmp	rax, 0
	je	.label_302
	mov	rax, qword ptr [rbp - 0x80]
	add	rax, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x58]
	jle	.label_315
	jmp	.label_314
.label_323:
	jmp	.label_298
.label_298:
	mov	rax, qword ptr [rbp - 0x78]
	add	rax, 1
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_311
.label_314:
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rcx + 0x20]
	jge	.label_327
	jmp	.label_317
.label_315:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x80]
	add	rax, qword ptr [rbp - 0x88]
	mov	rsi, rax
	call	clean_state_log_if_needed
	mov	dword ptr [rbp - 0x54], eax
	cmp	dword ptr [rbp - 0x54], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rsi, eax
	cmp	rsi, 0
	je	.label_305
	mov	eax, dword ptr [rbp - 0x54]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_299
.label_310:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	qword ptr [rax + 0x10], 0
	jne	.label_320
	mov	eax, 0x18
	mov	edi, eax
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rdx, qword ptr [rbp - 0x60]
	sub	rcx, qword ptr [rdx]
	add	rcx, 1
	mov	rsi, rcx
	call	calloc
	mov	rcx, qword ptr [rbp - 0x60]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x60]
	cmp	qword ptr [rax + 0x10], 0
	jne	.label_325
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_299
.label_327:
	cmp	qword ptr [rbp - 0x70], 0
	jle	.label_304
	mov	rax, qword ptr [rbp - 0x78]
	add	rax, 1
	mov	qword ptr [rbp - 0x78], rax
.label_304:
	jmp	.label_311
.label_311:
	mov	rax, qword ptr [rbp - 0x78]
	cmp	rax, qword ptr [rbp - 0x20]
	jg	.label_303
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x60]
	sub	rax, qword ptr [rcx]
	mov	qword ptr [rbp - 0x98], rax
	cmp	qword ptr [rbp - 0x98], 0
	jle	.label_313
	mov	rax, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x30]
	setge	dl
	and	dl, 1
	movzx	esi, dl
	movsxd	rax, esi
	cmp	rax, 0
	je	.label_324
	mov	rax, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x58]
	jl	.label_331
	jmp	.label_303
.label_312:
	jmp	.label_306
.label_306:
	mov	rax, qword ptr [rbp - 0x88]
	add	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rax
	mov	rax, qword ptr [rbp - 0x88]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	r8, qword ptr [rbp - 0x20]
	call	get_subexp_sub
	mov	dword ptr [rbp - 0x54], eax
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rbp - 0x40], rcx
	cmp	dword ptr [rbp - 0x54], 1
	jne	.label_322
	jmp	.label_326
.label_316:
	mov	ecx, 9
	mov	rax, qword ptr [rbp - 0x78]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0xb8]
	mov	rax, qword ptr [rdx + rax*8]
	add	rax, 8
	mov	qword ptr [rbp - 0xa0], rax
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0xa0]
	mov	rdx, qword ptr [rbp - 0x30]
	call	find_subexp_node
	mov	qword ptr [rbp - 0x90], rax
	cmp	qword ptr [rbp - 0x90], -1
	jne	.label_310
	jmp	.label_298
.label_319:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x40], rax
.label_324:
	mov	rax, qword ptr [rbp - 0x80]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x80], rcx
	mov	rcx, qword ptr [rbp - 0x40]
	movsx	edx, byte ptr [rcx + rax]
	mov	rax, qword ptr [rbp - 0x78]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x40]
	movsx	esi, byte ptr [rcx + rax]
	cmp	edx, esi
	je	.label_321
	jmp	.label_303
.label_309:
	cmp	dword ptr [rbp - 0x54], 0
	setne	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_329
	mov	eax, dword ptr [rbp - 0x54]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_299
.label_308:
	mov	dword ptr [rbp - 4], 0
.label_299:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xb0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405435
	.globl sub_405435
	.type sub_405435, @function
sub_405435:

	nop	word ptr [rax + rax]
.label_322:
	cmp	dword ptr [rbp - 0x54], 0
	setne	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_318
	mov	eax, dword ptr [rbp - 0x54]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_299
	.section	.text
	.align	16
	#Procedure 0x40545f

	.globl get_subexp
	.type get_subexp, @function
get_subexp:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xb0
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x98]
	mov	qword ptr [rbp - 0x28], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 8]
	mov	qword ptr [rbp - 0x40], rdx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	call	search_cur_bkref_entry
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x48], -1
	je	.label_334
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0xd8]
	imul	rcx, qword ptr [rbp - 0x48], 0x28
	add	rax, rcx
	mov	qword ptr [rbp - 0x50], rax
.label_335:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x18]
	jne	.label_332
	mov	dword ptr [rbp - 4], 0
	jmp	.label_299
.label_325:
	jmp	.label_320
.label_320:
	mov	eax, 9
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rcx + 0x10]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rcx + 8]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rcx]
	mov	r8, qword ptr [rbp - 0x90]
	mov	r9, qword ptr [rbp - 0x78]
	mov	dword ptr [rsp], 9
	mov	dword ptr [rbp - 0xa4], eax
	call	check_arrival
	mov	dword ptr [rbp - 0x54], eax
	cmp	dword ptr [rbp - 0x54], 1
	jne	.label_309
	jmp	.label_298
.label_331:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x80]
	add	rax, 1
	mov	ecx, eax
	mov	esi, ecx
	call	extend_buffers
	mov	dword ptr [rbp - 0x54], eax
	cmp	dword ptr [rbp - 0x54], 0
	setne	dl
	and	dl, 1
	movzx	eax, dl
	movsxd	rdi, eax
	cmp	rdi, 0
	je	.label_319
	mov	eax, dword ptr [rbp - 0x54]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_299
.label_329:
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x90]
	mov	rdx, qword ptr [rbp - 0x78]
	call	match_ctx_add_sublast
	mov	qword ptr [rbp - 0x68], rax
	cmp	qword ptr [rbp - 0x68], 0
	sete	cl
	and	cl, 1
	movzx	r8d, cl
	movsxd	rax, r8d
	cmp	rax, 0
	je	.label_300
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_299
.label_321:
	jmp	.label_313
.label_313:
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0xb8]
	cmp	qword ptr [rcx + rax*8], 0
	jne	.label_316
	jmp	.label_298
.label_332:
	jmp	.label_333
.label_333:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, rax
	add	rcx, 0x28
	mov	qword ptr [rbp - 0x50], rcx
	cmp	byte ptr [rax + 0x20], 0
	jne	.label_335
	jmp	.label_334
.label_334:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x28]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0x38], 0
.label_330:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0xe8]
	jge	.label_308
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0xf8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x60]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x28]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x30]
	je	.label_301
	jmp	.label_317
.label_318:
	jmp	.label_326
.label_326:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_328
.label_305:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x40], rax
.label_302:
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rbp - 0x40]
	add	rcx, qword ptr [rbp - 0x78]
	mov	rdx, qword ptr [rbp - 0x88]
	mov	rdi, rax
	mov	rsi, rcx
	call	memcmp
	cmp	eax, 0
	je	.label_312
	jmp	.label_314
.label_303:
	jmp	.label_317
.label_317:
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_330
.label_337:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x30], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x38], rax
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4056ee
	.globl sub_4056ee
	.type sub_4056ee, @function
sub_4056ee:

	nop	dword ptr [rax + rax]
.label_339:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x40]
	mov	qword ptr [rbp - 0x28], rax
.label_340:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x30]
	mov	qword ptr [rbp - 0x10], rax
.label_338:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x18]
	jge	.label_337
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x28]
	add	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx]
	movzx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 0x1c], edx
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x78], 0
	setne	sil
	and	sil, 1
	movzx	edx, sil
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_336
	movsxd	rax, dword ptr [rbp - 0x1c]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 0x78]
	movzx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 0x1c], edx
.label_336:
	mov	edi, dword ptr [rbp - 0x1c]
	call	toupper
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 8]
	mov	byte ptr [rsi + rdx], cl
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_338
	.section	.text
	.align	16
	#Procedure 0x40579d

	.globl build_upper_buffer
	.type build_upper_buffer, @function
build_upper_buffer:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 0x40]
	mov	rax, qword ptr [rbp - 8]
	cmp	rdi, qword ptr [rax + 0x58]
	jle	.label_339
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x58]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_340
	.section	.text
	.align	16
	#Procedure 0x4057d0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	eax, 1
	mov	edx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	x2nrealloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4057fa
	.globl sub_4057fa
	.type sub_4057fa, @function
sub_4057fa:

	nop	word ptr [rax + rax]
.label_342:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_341
.label_341:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 8
	movzx	ecx, byte ptr [rbp - 0x11]
	mov	edx, ecx
	shr	rdx, 5
	shl	rdx, 2
	add	rax, rdx
	mov	qword ptr [rbp - 0x20], rax
	movzx	ecx, byte ptr [rbp - 0x11]
	mov	eax, ecx
	and	rax, 0x1f
	mov	ecx, eax
	mov	dword ptr [rbp - 0x24], ecx
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax]
	mov	esi, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x34], ecx
	mov	ecx, esi
	mov	esi, dword ptr [rbp - 0x34]
	shr	esi, cl
	and	esi, 1
	mov	dword ptr [rbp - 0x28], esi
	mov	esi, dword ptr [rbp - 0x10]
	and	esi, 1
	xor	esi, dword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rbp - 0x24]
	shl	esi, cl
	mov	rax, qword ptr [rbp - 0x20]
	xor	esi, dword ptr [rax]
	mov	dword ptr [rax], esi
	mov	eax, dword ptr [rbp - 0x28]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405873
	.globl sub_405873
	.type sub_405873, @function
sub_405873:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405881

	.globl set_char_quoting
	.type set_char_quoting, @function
set_char_quoting:
	push	rbp
	mov	rbp, rsp
	mov	al, sil
	mov	qword ptr [rbp - 8], rdi
	mov	byte ptr [rbp - 9], al
	mov	dword ptr [rbp - 0x10], edx
	mov	al, byte ptr [rbp - 9]
	mov	byte ptr [rbp - 0x11], al
	cmp	qword ptr [rbp - 8], 0
	je	.label_342
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_341
.label_353:
	cmp	dword ptr [rbp - 0x44], 4
	jne	.label_355
	mov	rax, qword ptr [rbp - 0x38]
	mov	cl, byte ptr [rax + 0x68]
	and	cl, 0xbf
	or	cl, 0x40
	mov	byte ptr [rax + 0x68], cl
	jmp	.label_343
.label_352:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x20]
	call	register_state
	mov	dword ptr [rbp - 0x2c], eax
	cmp	dword ptr [rbp - 0x2c], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rdx, eax
	cmp	rdx, 0
	je	.label_344
	mov	rdi, qword ptr [rbp - 0x38]
	call	free_state
	mov	qword ptr [rbp - 0x38], 0
.label_344:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 8], rax
.label_351:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405920
	.globl sub_405920
	.type sub_405920, @function
sub_405920:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40592c

	.globl create_ci_newstate
	.type create_ci_newstate, @function
create_ci_newstate:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	eax, 0x70
	mov	ecx, eax
	mov	eax, 1
	mov	r8d, eax
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdi, rcx
	mov	rsi, r8
	call	calloc
	mov	qword ptr [rbp - 0x38], rax
	cmp	qword ptr [rbp - 0x38], 0
	sete	r9b
	and	r9b, 1
	movzx	r10d, r9b
	movsxd	rax, r10d
	cmp	rax, 0
	je	.label_349
	mov	qword ptr [rbp - 8], 0
	jmp	.label_351
.label_356:
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 8
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x50], rax
	mov	qword ptr [rbp - 0x28], 0
.label_350:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_352
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	rcx, qword ptr [rdx + rcx*8]
	shl	rcx, 4
	add	rax, rcx
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	esi, dword ptr [rax + 8]
	and	esi, 0xff
	mov	dword ptr [rbp - 0x44], esi
	cmp	dword ptr [rbp - 0x44], 1
	jne	.label_354
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 8]
	shr	ecx, 8
	and	ecx, 0x3ff
	cmp	ecx, 0
	jne	.label_354
	jmp	.label_346
.label_355:
	cmp	dword ptr [rbp - 0x44], 0xc
	je	.label_347
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 8]
	shr	ecx, 8
	and	ecx, 0x3ff
	cmp	ecx, 0
	je	.label_348
.label_347:
	mov	rax, qword ptr [rbp - 0x38]
	mov	cl, byte ptr [rax + 0x68]
	and	cl, 0x7f
	or	cl, 0x80
	mov	byte ptr [rax + 0x68], cl
.label_348:
	jmp	.label_343
.label_343:
	jmp	.label_345
.label_345:
	jmp	.label_346
.label_346:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_350
.label_349:
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 8
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	re_node_set_init_copy
	mov	dword ptr [rbp - 0x2c], eax
	cmp	dword ptr [rbp - 0x2c], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rsi, eax
	cmp	rsi, 0
	je	.label_356
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdi, rax
	call	free
	mov	qword ptr [rbp - 8], 0
	jmp	.label_351
.label_354:
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 8]
	shr	ecx, 0x14
	and	ecx, 1
	mov	rax, qword ptr [rbp - 0x38]
	mov	dl, byte ptr [rax + 0x68]
	shr	dl, 5
	and	dl, 1
	movzx	esi, dl
	or	esi, ecx
	mov	dl, sil
	mov	dil, byte ptr [rax + 0x68]
	and	dl, 1
	shl	dl, 5
	and	dil, 0xdf
	or	dil, dl
	mov	byte ptr [rax + 0x68], dil
	cmp	dword ptr [rbp - 0x44], 2
	jne	.label_353
	mov	rax, qword ptr [rbp - 0x38]
	mov	cl, byte ptr [rax + 0x68]
	and	cl, 0xef
	or	cl, 0x10
	mov	byte ptr [rax + 0x68], cl
	jmp	.label_345
.label_414:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x40]
	mov	qword ptr [rbp - 0xd8], rax
.label_410:
	mov	rax, qword ptr [rbp - 0xd8]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	byte ptr [rax + 0x8a], 0
	jne	.label_405
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x78], 0
	jne	.label_405
	mov	rax, qword ptr [rbp - 0x10]
	cmp	byte ptr [rax + 0x8c], 0
	jne	.label_405
	jmp	.label_404
.label_404:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x30]
	jge	.label_406
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	add	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	movzx	edx, byte ptr [rcx + rax]
	and	edx, 0xffffff80
	cmp	edx, 0
	jne	.label_407
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x20
	mov	rdi, rax
	call	mbsinit
	cmp	eax, 0
	je	.label_407
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	add	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	movzx	edi, byte ptr [rcx + rax]
	call	toupper
	mov	dl, al
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 8]
	mov	byte ptr [rsi + rcx], dl
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 8]
	movzx	eax, byte ptr [rsi + rcx]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0x10]
	mov	dword ptr [rsi + rcx*4], eax
	mov	rcx, qword ptr [rbp - 0x28]
	add	rcx, 1
	mov	qword ptr [rbp - 0x28], rcx
	jmp	.label_404
.label_416:
	jmp	.label_403
.label_372:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rax + 0x20], rcx
	jmp	.label_357
.label_407:
	lea	rdi, [rbp - 0x84]
	mov	rax, qword ptr [rbp - 0x30]
	sub	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x20]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rcx + 0x28]
	add	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	add	rcx, 0x20
	mov	rsi, rax
	call	rpl_mbrtowc
	xor	r8d, r8d
	mov	r9b, r8b
	xor	r8d, r8d
	mov	ecx, r8d
	mov	qword ptr [rbp - 0x40], rax
	cmp	rcx, qword ptr [rbp - 0x40]
	mov	byte ptr [rbp - 0xd9], r9b
	jae	.label_408
	cmp	qword ptr [rbp - 0x40], -2
	setb	al
	mov	byte ptr [rbp - 0xd9], al
.label_408:
	mov	al, byte ptr [rbp - 0xd9]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_400
	mov	edi, dword ptr [rbp - 0x84]
	call	towupper
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x88]
	cmp	eax, dword ptr [rbp - 0x84]
	je	.label_413
	lea	rdx, [rbp - 0x18]
	lea	rdi, [rbp - 0x80]
	mov	esi, dword ptr [rbp - 0x88]
	call	wcrtomb
	mov	qword ptr [rbp - 0x90], rax
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x90]
	sete	cl
	and	cl, 1
	movzx	esi, cl
	movsxd	rax, esi
	cmp	rax, 0
	je	.label_412
	lea	rsi, [rbp - 0x80]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	add	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rdi, rax
	call	memcpy
	jmp	.label_402
.label_357:
	jmp	.label_370
.label_370:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x30], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x38], rax
	mov	dword ptr [rbp - 4], 0
.label_384:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x100
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405d49
	.globl sub_405d49
	.type sub_405d49, @function
sub_405d49:

	nop	word ptr cs:[rax + rax]
.label_363:
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax + 0x8c], 1
.label_358:
	lea	rsi, [rbp - 0x80]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	add	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0xb8]
	mov	rdi, rax
	call	memcpy
	mov	ecx, dword ptr [rbp - 0xac]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	dword ptr [rdx + rax*4], ecx
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0x18]
	mov	qword ptr [rsi + rdx*8], rax
	mov	qword ptr [rbp - 0xc0], 1
.label_396:
	mov	rax, qword ptr [rbp - 0xc0]
	cmp	rax, qword ptr [rbp - 0xb8]
	jae	.label_375
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0xc0]
	cmp	rcx, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0xe8], rax
	jae	.label_382
	mov	rax, qword ptr [rbp - 0xc0]
	mov	qword ptr [rbp - 0xf0], rax
	jmp	.label_376
.label_402:
	jmp	.label_417
.label_406:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x30], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x38], rax
	mov	dword ptr [rbp - 4], 0
	jmp	.label_384
.label_400:
	cmp	qword ptr [rbp - 0x40], -1
	je	.label_411
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_411
	cmp	qword ptr [rbp - 0x40], -2
	jne	.label_415
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x58]
	jl	.label_415
.label_411:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	add	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	movzx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 0x94], edx
	mov	edx, dword ptr [rbp - 0x94]
	mov	sil, dl
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 8]
	mov	byte ptr [rcx + rax], sil
	mov	edx, dword ptr [rbp - 0x94]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x28], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	dword ptr [rcx + rax*4], edx
	cmp	qword ptr [rbp - 0x40], -1
	sete	sil
	and	sil, 1
	movzx	edx, sil
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_409
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rax + 0x20], rcx
.label_409:
	jmp	.label_418
.label_360:
	cmp	qword ptr [rbp - 0xb8], -1
	je	.label_387
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0xb8]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x40]
	jbe	.label_393
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rax + 0x20], rcx
	jmp	.label_357
.label_393:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x18], 0
	jne	.label_366
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x40]
	shl	rax, 3
	mov	rdi, rax
	call	malloc
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 0x18], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x18], 0
	jne	.label_377
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_384
.label_418:
	jmp	.label_403
.label_403:
	jmp	.label_404
.label_398:
	lea	rax, [rbp - 0x80]
	mov	qword ptr [rbp - 0xa0], rax
	jmp	.label_383
.label_387:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	add	rax, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0xa0]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rdi, rax
	call	memcpy
	jmp	.label_365
.label_365:
	jmp	.label_399
.label_412:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_359
	.section	.text
	.align	16
	#Procedure 0x405fa7

	.globl build_wcs_upper_buffer
	.type build_wcs_upper_buffer, @function
build_wcs_upper_buffer:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x100
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi + 0x30]
	mov	qword ptr [rbp - 0x28], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi + 0x40]
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rdi, qword ptr [rax + 0x58]
	jle	.label_414
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x58]
	mov	qword ptr [rbp - 0xd8], rax
	jmp	.label_410
.label_377:
	jmp	.label_366
.label_366:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	byte ptr [rax + 0x8c], 0
	jne	.label_358
	mov	qword ptr [rbp - 0xc0], 0
.label_361:
	mov	rax, qword ptr [rbp - 0xc0]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_363
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0xc0]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x18]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0xc0]
	add	rax, 1
	mov	qword ptr [rbp - 0xc0], rax
	jmp	.label_361
.label_392:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rcx + 0x28]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0xa0], rax
.label_383:
	lea	rdi, [rbp - 0x98]
	mov	rsi, qword ptr [rbp - 0xa0]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x20
	mov	rcx, rax
	call	rpl_mbrtowc
	xor	r8d, r8d
	mov	r9b, r8b
	xor	r8d, r8d
	mov	ecx, r8d
	mov	qword ptr [rbp - 0x40], rax
	cmp	rcx, qword ptr [rbp - 0x40]
	mov	byte ptr [rbp - 0xdb], r9b
	jae	.label_380
	cmp	qword ptr [rbp - 0x40], -2
	setb	al
	mov	byte ptr [rbp - 0xdb], al
.label_380:
	mov	al, byte ptr [rbp - 0xdb]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_378
	mov	edi, dword ptr [rbp - 0x98]
	call	towupper
	mov	dword ptr [rbp - 0xac], eax
	mov	eax, dword ptr [rbp - 0xac]
	cmp	eax, dword ptr [rbp - 0x98]
	je	.label_389
	lea	rdx, [rbp - 0x18]
	lea	rdi, [rbp - 0x80]
	mov	esi, dword ptr [rbp - 0xac]
	call	wcrtomb
	mov	qword ptr [rbp - 0xb8], rax
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0xb8]
	sete	cl
	and	cl, 1
	movzx	esi, cl
	movsxd	rax, esi
	cmp	rax, 0
	je	.label_360
	lea	rsi, [rbp - 0x80]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	add	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rdi, rax
	call	memcpy
	jmp	.label_365
.label_385:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x40]
	mov	qword ptr [rbp - 0xf8], rax
.label_391:
	mov	rax, qword ptr [rbp - 0xf8]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_390
.label_375:
	mov	rax, qword ptr [rbp - 0xb8]
	sub	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rcx + 0x58]
	mov	qword ptr [rcx + 0x58], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jle	.label_362
	mov	rax, qword ptr [rbp - 0xb8]
	sub	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rcx + 0x68]
	mov	qword ptr [rcx + 0x68], rax
.label_362:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x58]
	jle	.label_385
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x58]
	mov	qword ptr [rbp - 0xf8], rax
	jmp	.label_391
.label_389:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	add	rax, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0xa0]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rdi, rax
	call	memcpy
.label_399:
	mov	rax, qword ptr [rbp - 0x10]
	movzx	ecx, byte ptr [rax + 0x8c]
	cmp	ecx, 0
	setne	dl
	and	dl, 1
	movzx	ecx, dl
	movsxd	rax, ecx
	cmp	rax, 0
	je	.label_368
	mov	qword ptr [rbp - 0xc8], 0
.label_386:
	mov	rax, qword ptr [rbp - 0xc8]
	cmp	rax, qword ptr [rbp - 0x40]
	jae	.label_367
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rbp - 0xc8]
	mov	rcx, qword ptr [rbp - 0x28]
	add	rcx, qword ptr [rbp - 0xc8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x18]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0xc8]
	add	rax, 1
	mov	qword ptr [rbp - 0xc8], rax
	jmp	.label_386
.label_378:
	cmp	qword ptr [rbp - 0x40], -1
	je	.label_364
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_364
	cmp	qword ptr [rbp - 0x40], -2
	jne	.label_372
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x58]
	jl	.label_372
.label_364:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	add	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	movzx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 0xcc], edx
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x78], 0
	setne	sil
	and	sil, 1
	movzx	edx, sil
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_381
	movsxd	rax, dword ptr [rbp - 0xcc]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x78]
	movzx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 0xcc], edx
.label_381:
	mov	eax, dword ptr [rbp - 0xcc]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 8]
	mov	byte ptr [rsi + rdx], cl
	mov	rdx, qword ptr [rbp - 0x10]
	movzx	eax, byte ptr [rdx + 0x8c]
	cmp	eax, 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rdx, eax
	cmp	rdx, 0
	je	.label_371
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x18]
	mov	qword ptr [rdx + rcx*8], rax
.label_371:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	ecx, dword ptr [rbp - 0xcc]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, rax
	add	rdx, 1
	mov	qword ptr [rbp - 0x28], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	dword ptr [rdx + rax*4], ecx
	cmp	qword ptr [rbp - 0x40], -1
	sete	sil
	and	sil, 1
	movzx	ecx, sil
	movsxd	rax, ecx
	cmp	rax, 0
	je	.label_394
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rax + 0x20], rcx
.label_394:
	jmp	.label_379
.label_367:
	jmp	.label_368
.label_368:
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
	mov	ecx, dword ptr [rbp - 0xac]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, rax
	add	rdx, 1
	mov	qword ptr [rbp - 0x28], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	dword ptr [rdx + rax*4], ecx
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0x40]
	sub	rax, 1
	mov	qword ptr [rbp - 0x38], rax
.label_369:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x38]
	jge	.label_397
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x28], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	dword ptr [rcx + rax*4], 0xffffffff
	jmp	.label_369
.label_379:
	jmp	.label_374
.label_374:
	jmp	.label_390
.label_397:
	jmp	.label_374
.label_405:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x38]
	mov	qword ptr [rbp - 0x20], rax
.label_390:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x30]
	jge	.label_357
	jmp	.label_359
.label_359:
	mov	rax, qword ptr [rbp - 0x30]
	sub	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x20]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x78], 0
	setne	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_392
	mov	dword ptr [rbp - 0xa4], 0
.label_395:
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 0xa4]
	mov	rdx, qword ptr [rbp - 0x10]
	cmp	eax, dword ptr [rdx + 0x90]
	mov	byte ptr [rbp - 0xda], cl
	jge	.label_373
	movsxd	rax, dword ptr [rbp - 0xa4]
	cmp	rax, qword ptr [rbp - 0x38]
	setl	cl
	mov	byte ptr [rbp - 0xda], cl
.label_373:
	mov	al, byte ptr [rbp - 0xda]
	test	al, 1
	jne	.label_388
	jmp	.label_398
.label_388:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	add	rax, qword ptr [rbp - 0x20]
	movsxd	rcx, dword ptr [rbp - 0xa4]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	movzx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 0xa8], edx
	movsxd	rax, dword ptr [rbp - 0xa8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x78]
	mov	sil, byte ptr [rcx + rax]
	movsxd	rax, dword ptr [rbp - 0xa4]
	mov	byte ptr [rbp + rax - 0x80], sil
	mov	eax, dword ptr [rbp - 0xa4]
	add	eax, 1
	mov	dword ptr [rbp - 0xa4], eax
	jmp	.label_395
.label_415:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rax + 0x20], rcx
	jmp	.label_406
.label_413:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	add	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	mov	rdx, qword ptr [rbp - 0x10]
	add	rcx, qword ptr [rdx + 0x28]
	add	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rdi, rax
	mov	rsi, rcx
	call	memcpy
.label_417:
	mov	eax, dword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rbp - 0x28], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	dword ptr [rdx + rcx*4], eax
	mov	rcx, qword ptr [rbp - 0x28]
	add	rcx, qword ptr [rbp - 0x40]
	sub	rcx, 1
	mov	qword ptr [rbp - 0x38], rcx
.label_401:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x38]
	jge	.label_416
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x28], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	dword ptr [rcx + rax*4], 0xffffffff
	jmp	.label_401
.label_382:
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, 1
	mov	qword ptr [rbp - 0xf0], rax
.label_376:
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx, qword ptr [rbp - 0xe8]
	add	rcx, rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0xc0]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x18]
	mov	qword ptr [rdx + rax*8], rcx
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	dword ptr [rcx + rax*4], 0xffffffff
	mov	rax, qword ptr [rbp - 0xc0]
	add	rax, 1
	mov	qword ptr [rbp - 0xc0], rax
	jmp	.label_396
.label_421:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_419
.label_419:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x30], rax
	call	__errno_location
	xor	ecx, ecx
	mov	edx, ecx
	mov	ecx, 1
	xor	esi, esi
	mov	edi, dword ptr [rax]
	mov	dword ptr [rbp - 0x34], edi
	mov	rax, qword ptr [rbp - 0x30]
	mov	edi, dword ptr [rax + 4]
	cmp	qword ptr [rbp - 0x20], 0
	cmovne	ecx, esi
	or	edi, ecx
	mov	dword ptr [rbp - 0x38], edi
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	r8, qword ptr [rbp - 0x30]
	mov	r8d, dword ptr [r8]
	mov	r9d, dword ptr [rbp - 0x38]
	mov	r10, qword ptr [rbp - 0x30]
	add	r10, 8
	mov	r11, qword ptr [rbp - 0x30]
	mov	r11, qword ptr [r11 + 0x28]
	mov	rbx, qword ptr [rbp - 0x30]
	mov	rbx, qword ptr [rbx + 0x30]
	mov	rdi, rdx
	mov	rsi, rdx
	mov	rdx, rax
	mov	qword ptr [rsp], r10
	mov	qword ptr [rsp + 8], r11
	mov	qword ptr [rsp + 0x10], rbx
	call	quotearg_buffer_restyled
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	mov	rdi, qword ptr [rbp - 0x40]
	call	xcharalloc
	mov	qword ptr [rbp - 0x48], rax
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x30]
	mov	r8d, dword ptr [rax]
	mov	r9d, dword ptr [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 8
	mov	r10, qword ptr [rbp - 0x30]
	mov	r10, qword ptr [r10 + 0x28]
	mov	r11, qword ptr [rbp - 0x30]
	mov	r11, qword ptr [r11 + 0x30]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	r8d, dword ptr [rbp - 0x34]
	mov	qword ptr [rbp - 0x58], rax
	mov	dword ptr [rbp - 0x5c], r8d
	call	__errno_location
	mov	r8d, dword ptr [rbp - 0x5c]
	mov	dword ptr [rax], r8d
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_420
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_420:
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0x78
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406773
	.globl sub_406773
	.type sub_406773, @function
sub_406773:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40677f

	.globl quotearg_alloc_mem
	.type quotearg_alloc_mem, @function
quotearg_alloc_mem:
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 0x78
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_421
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_419
.label_431:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax]
	mov	edx, dword ptr [rax + 0x30]
	and	edx, 0xfffbffff
	or	edx, 0x40000
	mov	dword ptr [rax + 0x30], edx
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 8], 0
	je	.label_422
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 8
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_428
.label_424:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x30], rax
.label_428:
	jmp	.label_425
.label_427:
	jmp	.label_423
	.section	.text
	.align	16
	#Procedure 0x406830

	.globl duplicate_tree
	.type duplicate_tree, @function
duplicate_tree:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	lea	rax, [rbp - 0x28]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rax
.label_425:
	xor	eax, eax
	mov	ecx, eax
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	add	rdx, 0x28
	mov	rsi, rcx
	mov	qword ptr [rbp - 0x48], rdx
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x48]
	call	create_token_tree
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax], 0
	jne	.label_431
	mov	qword ptr [rbp - 8], 0
	jmp	.label_426
.label_426:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4068aa
	.globl sub_4068aa
	.type sub_4068aa, @function
sub_4068aa:

	nop	
.label_422:
	mov	qword ptr [rbp - 0x40], 0
.label_423:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 0x10]
	cmp	rcx, qword ptr [rbp - 0x40]
	mov	byte ptr [rbp - 0x49], al
	je	.label_429
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 0x10], 0
	sete	cl
	mov	byte ptr [rbp - 0x49], cl
.label_429:
	mov	al, byte ptr [rbp - 0x49]
	test	al, 1
	jne	.label_430
	jmp	.label_424
.label_430:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x38], rax
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_427
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_426
.label_441:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_432
	mov	eax, 1
	mov	ecx, eax
	mov	qword ptr [rbp - 0x58], rcx
	jmp	.label_444
.label_432:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x58], rax
.label_444:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_433
.label_443:
	mov	rax, qword ptr [rbp - 0x28]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	cmp	byte ptr [byte ptr [+ (rcx * 1) + word_fastmap]],  0
	je	.label_442
	jmp	.label_437
.label_437:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x28]
	cmp	rdx,  qword ptr [word ptr [label_440]]
	mov	byte ptr [rbp - 0x59], cl
	jae	.label_448
	mov	rax, qword ptr [rbp - 0x28]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	movsx	edi,  byte ptr [byte ptr [+ (rcx * 1) + word_fastmap]]
	cmp	edi, 0
	setne	al
	mov	byte ptr [rbp - 0x59], al
.label_448:
	mov	al, byte ptr [rbp - 0x59]
	test	al, 1
	jne	.label_436
	jmp	.label_449
.label_436:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_437
	.section	.text
	.align	16
	#Procedure 0x4069d4

	.globl output_one_tex_line
	.type output_one_tex_line, @function
output_one_tex_line:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x80
	movabs	rdi, OFFSET FLAT:label_438
	mov	rsi,  qword ptr [word ptr [macro_name]]
	mov	al, 0
	call	printf
	mov	edi, 0x7b
	mov	dword ptr [rbp - 0x34], eax
	call	putchar_unlocked
	mov	rdi,  qword ptr [word ptr [tail]]
	mov	rsi,  qword ptr [word ptr [label_175]]
	mov	dword ptr [rbp - 0x38], eax
	call	print_field
	movabs	rdi, OFFSET FLAT:label_435
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	rdi,  qword ptr [word ptr [before]]
	mov	rsi,  qword ptr [word ptr [label_447]]
	mov	dword ptr [rbp - 0x3c], eax
	call	print_field
	movabs	rdi, OFFSET FLAT:label_435
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	rsi,  qword ptr [word ptr [keyafter]]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi,  qword ptr [word ptr [label_440]]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi,  qword ptr [word ptr [keyafter]]
	mov	qword ptr [rbp - 0x28], rsi
	cmp	qword ptr [word ptr [word_regex]],  0
	mov	dword ptr [rbp - 0x40], eax
	je	.label_443
	movabs	rax, OFFSET FLAT:word_regex
	add	rax, 8
	xor	ecx, ecx
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdi,  qword ptr [word ptr [label_440]]
	mov	r8, qword ptr [rbp - 0x28]
	sub	rdi, r8
	mov	qword ptr [rbp - 0x48], rdi
	mov	rdi, rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x50], rdx
	mov	rdx, rax
	mov	rcx, qword ptr [rbp - 0x50]
	mov	r8, qword ptr [rbp - 0x50]
	call	rpl_re_match
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], -2
	jne	.label_441
	call	matcher_error
.label_449:
	jmp	.label_446
.label_442:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
.label_446:
	jmp	.label_433
.label_433:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x20], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 8]
	call	print_field
	movabs	rdi, OFFSET FLAT:label_435
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	dword ptr [rbp - 0x60], eax
	call	print_field
	movabs	rdi, OFFSET FLAT:label_435
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	rdi,  qword ptr [word ptr [head]]
	mov	rsi,  qword ptr [word ptr [label_176]]
	mov	dword ptr [rbp - 0x64], eax
	call	print_field
	mov	edi, 0x7d
	call	putchar_unlocked
	test	byte ptr [byte ptr [auto_reference]],  1
	mov	dword ptr [rbp - 0x68], eax
	jne	.label_434
	test	byte ptr [byte ptr [input_reference]],  1
	je	.label_439
.label_434:
	mov	edi, 0x7b
	call	putchar_unlocked
	mov	rdi,  qword ptr [word ptr [reference]]
	mov	rsi,  qword ptr [word ptr [label_445]]
	mov	dword ptr [rbp - 0x6c], eax
	call	print_field
	mov	edi, 0x7d
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x70], eax
.label_439:
	mov	edi, 0xa
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x74], eax
	add	rsp, 0x80
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406be8
	.globl sub_406be8
	.type sub_406be8, @function
sub_406be8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406bf0

	.globl bitset_empty
	.type bitset_empty, @function
bitset_empty:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	esi, esi
	mov	eax, 0x20
	mov	edx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	memset
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406c14
	.globl sub_406c14
	.type sub_406c14, @function
sub_406c14:

	nop	word ptr cs:[rax + rax]
.label_457:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	esi, dword ptr [rbp - 0x24]
	call	calc_state_hash
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x40]
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	and	rdi, qword ptr [rcx + 0x88]
	imul	rcx, rdi, 0x18
	add	rax, rcx
	mov	qword ptr [rbp - 0x40], rax
	mov	qword ptr [rbp - 0x48], 0
.label_453:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rcx]
	jge	.label_456
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x30]
	jne	.label_452
	mov	rax, qword ptr [rbp - 0x50]
	mov	cl, byte ptr [rax + 0x68]
	and	cl, 0xf
	movzx	edx, cl
	cmp	edx, dword ptr [rbp - 0x24]
	jne	.label_452
	mov	rax, qword ptr [rbp - 0x50]
	mov	rdi, qword ptr [rax + 0x50]
	mov	rsi, qword ptr [rbp - 0x20]
	call	re_node_set_compare
	test	al, 1
	jne	.label_454
	jmp	.label_452
.label_454:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_455
	.section	.text
	.align	16
	#Procedure 0x406cd1

	.globl re_acquire_state_context
	.type re_acquire_state_context, @function
re_acquire_state_context:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	dword ptr [rbp - 0x24], ecx
	mov	rdx, qword ptr [rbp - 0x20]
	cmp	qword ptr [rdx + 8], 0
	jne	.label_457
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 0
	mov	qword ptr [rbp - 8], 0
	jmp	.label_455
.label_456:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	edx, dword ptr [rbp - 0x24]
	mov	rcx, qword ptr [rbp - 0x30]
	call	create_cd_newstate
	mov	qword ptr [rbp - 0x38], rax
	cmp	qword ptr [rbp - 0x38], 0
	sete	r8b
	and	r8b, 1
	movzx	edx, r8b
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_450
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 0xc
.label_450:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 8], rax
.label_455:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406d60
	.globl sub_406d60
	.type sub_406d60, @function
sub_406d60:

	nop	word ptr cs:[rax + rax]
.label_452:
	jmp	.label_451
.label_451:
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_453
.label_461:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx]
	seta	dl
	and	dl, 1
	movzx	esi, dl
	mov	dword ptr [rbp - 0x28], esi
.label_458:
	mov	eax, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 0x24], eax
.label_459:
	mov	eax, dword ptr [rbp - 0x24]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406da9
	.globl sub_406da9
	.type sub_406da9, @function
sub_406da9:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406daf

	.globl compare_occurs
	.type compare_occurs, @function
compare_occurs:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rdi
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 0x20]
	call	compare_words
	mov	dword ptr [rbp - 0x14], eax
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_460
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_459
.label_460:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx]
	jae	.label_461
	mov	eax, 0xffffffff
	mov	dword ptr [rbp - 0x28], eax
	jmp	.label_458
	.section	.text
	.align	16
	#Procedure 0x406e10

	.globl match_ctx_add_entry
	.type match_ctx_add_entry, @function
match_ctx_add_entry:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0xc8]
	mov	rdx, qword ptr [rbp - 0x10]
	cmp	rcx, qword ptr [rdx + 0xd0]
	jl	.label_465
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0xd8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0xd0]
	shl	rcx, 1
	imul	rsi, rcx, 0x28
	mov	rdi, rax
	call	realloc
	mov	qword ptr [rbp - 0x38], rax
	cmp	qword ptr [rbp - 0x38], 0
	sete	dl
	and	dl, 1
	movzx	r8d, dl
	movsxd	rax, r8d
	cmp	rax, 0
	je	.label_466
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0xd8]
	mov	rdi, rax
	call	free
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_463
.label_466:
	xor	esi, esi
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0xd8], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0xd8]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rcx, qword ptr [rcx + 0xc8], 0x28
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rdx, qword ptr [rcx + 0xd0], 0x28
	mov	rdi, rax
	call	memset
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0xd0]
	shl	rcx, 1
	mov	qword ptr [rax + 0xd0], rcx
.label_465:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0xc8], 0
	jle	.label_462
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0xc8]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, rax, 0x28
	add	rax, qword ptr [rcx + 0xd8]
	mov	rax, qword ptr [rax + 8]
	cmp	rax, qword ptr [rbp - 0x20]
	jne	.label_462
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0xc8]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, rax, 0x28
	add	rax, qword ptr [rcx + 0xd8]
	mov	byte ptr [rax + 0x20], 1
.label_462:
	xor	eax, eax
	mov	ecx, 0xffffffff
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0xc8]
	mov	rdi, qword ptr [rbp - 0x10]
	imul	rsi, rsi, 0x28
	add	rsi, qword ptr [rdi + 0xd8]
	mov	qword ptr [rsi], rdx
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0xc8]
	mov	rdi, qword ptr [rbp - 0x10]
	imul	rsi, rsi, 0x28
	add	rsi, qword ptr [rdi + 0xd8]
	mov	qword ptr [rsi + 8], rdx
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0xc8]
	mov	rdi, qword ptr [rbp - 0x10]
	imul	rsi, rsi, 0x28
	add	rsi, qword ptr [rdi + 0xd8]
	mov	qword ptr [rsi + 0x10], rdx
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0xc8]
	mov	rdi, qword ptr [rbp - 0x10]
	imul	rsi, rsi, 0x28
	add	rsi, qword ptr [rdi + 0xd8]
	mov	qword ptr [rsi + 0x18], rdx
	mov	rdx, qword ptr [rbp - 0x28]
	cmp	rdx, qword ptr [rbp - 0x30]
	cmove	eax, ecx
	mov	r8w, ax
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0xc8]
	mov	rsi, qword ptr [rbp - 0x10]
	imul	rdx, rdx, 0x28
	add	rdx, qword ptr [rsi + 0xd8]
	mov	word ptr [rdx + 0x22], r8w
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rdx + 0xc8]
	mov	rdi, rsi
	add	rdi, 1
	mov	qword ptr [rdx + 0xc8], rdi
	mov	rdx, qword ptr [rbp - 0x10]
	imul	rsi, rsi, 0x28
	add	rsi, qword ptr [rdx + 0xd8]
	mov	byte ptr [rsi + 0x20], 0
	mov	rdx, qword ptr [rbp - 0x10]
	movsxd	rdx, dword ptr [rdx + 0xe0]
	mov	rsi, qword ptr [rbp - 0x30]
	sub	rsi, qword ptr [rbp - 0x28]
	cmp	rdx, rsi
	jge	.label_464
	mov	rax, qword ptr [rbp - 0x30]
	sub	rax, qword ptr [rbp - 0x28]
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax + 0xe0], ecx
.label_464:
	mov	dword ptr [rbp - 4], 0
.label_463:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40708a
	.globl sub_40708a
	.type sub_40708a, @function
sub_40708a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407090

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rdx, -1
	movabs	rcx, OFFSET FLAT:default_quoting_options
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	call	quotearg_n_options
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4070c2
	.globl sub_4070c2
	.type sub_4070c2, @function
sub_4070c2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4070d0

	.globl re_string_elem_size_at
	.type re_string_elem_size_at, @function
re_string_elem_size_at:
	push	rbp
	mov	rbp, rsp
	mov	eax, 1
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4070e3
	.globl sub_4070e3
	.type sub_4070e3, @function
sub_4070e3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4070f0

	.globl rpl_re_compile_pattern
	.type rpl_re_compile_pattern, @function
rpl_re_compile_pattern:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx,  qword ptr [word ptr [rpl_re_syntax_options]]
	and	rdx, 0x2000000
	cmp	rdx, 0
	setne	al
	xor	al, 0xff
	xor	al, 0xff
	and	al, 1
	movzx	ecx, al
	mov	rdx, qword ptr [rbp - 0x20]
	mov	al, cl
	mov	r8b, byte ptr [rdx + 0x38]
	and	al, 1
	shl	al, 4
	and	r8b, 0xef
	or	r8b, al
	mov	byte ptr [rdx + 0x38], r8b
	mov	rdx, qword ptr [rbp - 0x20]
	mov	al, byte ptr [rdx + 0x38]
	and	al, 0x7f
	or	al, 0x80
	mov	byte ptr [rdx + 0x38], al
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx,  qword ptr [word ptr [rpl_re_syntax_options]]
	call	re_compile_internal
	mov	dword ptr [rbp - 0x24], eax
	cmp	dword ptr [rbp - 0x24], 0
	jne	.label_468
	mov	qword ptr [rbp - 8], 0
	jmp	.label_467
.label_468:
	movabs	rax, OFFSET FLAT:__re_error_msgid
	movsxd	rcx, dword ptr [rbp - 0x24]
	add	rax,  qword ptr [word ptr [+ (rcx * 8) + __re_error_msgid_idx]]
	mov	rdi, rax
	call	gettext
	mov	qword ptr [rbp - 8], rax
.label_467:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4071aa
	.globl sub_4071aa
	.type sub_4071aa, @function
sub_4071aa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4071b0

	.globl mb_copy
	.type mb_copy, @function
mb_copy:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	add	rdi, 0x18
	cmp	rsi, rdi
	jne	.label_469
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x18
	mov	rcx, qword ptr [rbp - 0x10]
	add	rcx, 0x18
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 8]
	mov	rdi, rax
	mov	rsi, rcx
	call	memcpy
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x18
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx], rax
	jmp	.label_470
.label_469:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx], rax
.label_470:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	dl, byte ptr [rax + 0x10]
	mov	rax, qword ptr [rbp - 8]
	mov	sil, dl
	and	sil, 1
	mov	byte ptr [rax + 0x10], sil
	test	dl, 1
	jne	.label_472
	jmp	.label_471
.label_472:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x14]
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x14], ecx
.label_471:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407265
	.globl sub_407265
	.type sub_407265, @function
sub_407265:

	nop	word ptr cs:[rax + rax]
.label_502:
	mov	al, 1
	cmp	qword ptr [rbp - 0x78], 0
	mov	byte ptr [rbp - 0x7c], al
	jl	.label_480
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x30], 0
	mov	byte ptr [rbp - 0x7d], cl
	jge	.label_473
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x78]
	setle	cl
	mov	byte ptr [rbp - 0x7d], cl
.label_473:
	mov	al, byte ptr [rbp - 0x7d]
	mov	byte ptr [rbp - 0x7c], al
.label_480:
	mov	al, byte ptr [rbp - 0x7c]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_482
	mov	qword ptr [rbp - 0x78], 0
.label_482:
	jmp	.label_487
.label_487:
	xor	eax, eax
	mov	ecx, 2
	mov	edx, 1
	mov	rsi, qword ptr [rbp - 0x10]
	mov	dil, byte ptr [rsi + 0x38]
	shr	dil, 5
	and	dil, 1
	movzx	r8d, dil
	cmp	r8d, 0
	mov	r8d, eax
	cmovne	r8d, edx
	or	r8d, dword ptr [rbp - 0x64]
	mov	dword ptr [rbp - 0x64], r8d
	mov	rsi, qword ptr [rbp - 0x10]
	mov	dil, byte ptr [rsi + 0x38]
	shr	dil, 6
	and	dil, 1
	movzx	edx, dil
	cmp	edx, 0
	cmovne	eax, ecx
	or	eax, dword ptr [rbp - 0x64]
	mov	dword ptr [rbp - 0x64], eax
	mov	rsi, qword ptr [rbp - 0x28]
	cmp	rsi, qword ptr [rbp - 0x78]
	jge	.label_484
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x20], 0
	je	.label_484
	mov	rax, qword ptr [rbp - 0x10]
	mov	cl, byte ptr [rax + 0x38]
	shr	cl, 3
	and	cl, 1
	movzx	edx, cl
	cmp	edx, 0
	jne	.label_484
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_re_compile_fastmap
	mov	dword ptr [rbp - 0x84], eax
.label_484:
	mov	rax, qword ptr [rbp - 0x10]
	mov	cl, byte ptr [rax + 0x38]
	shr	cl, 4
	and	cl, 1
	movzx	edx, cl
	mov	edx, edx
	mov	eax, edx
	cmp	rax, 0
	je	.label_489
	mov	qword ptr [rbp - 0x40], 0
.label_489:
	cmp	qword ptr [rbp - 0x40], 0
	jne	.label_475
	mov	qword ptr [rbp - 0x58], 1
	jmp	.label_477
.label_475:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x10]
	mov	sil, byte ptr [rdx + 0x38]
	shr	sil, 1
	and	sil, 3
	movzx	eax, sil
	cmp	eax, 2
	mov	byte ptr [rbp - 0x85], cl
	jne	.label_479
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x30]
	setbe	dl
	mov	byte ptr [rbp - 0x85], dl
.label_479:
	mov	al, byte ptr [rbp - 0x85]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_488
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x58], rax
	cmp	qword ptr [rbp - 0x58], 1
	setl	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_497
	mov	qword ptr [rbp - 0x40], 0
	mov	qword ptr [rbp - 0x58], 1
.label_497:
	jmp	.label_485
.label_478:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x60], rax
.label_493:
	jmp	.label_474
.label_474:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rdi, rax
	call	free
.label_495:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 8], rax
.label_500:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0xa0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407461
	.globl sub_407461
	.type sub_407461, @function
sub_407461:

	nop	
.label_486:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rax + 8]
	sub	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_493
.label_496:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_498
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rax, qword ptr [rbp - 0x10]
	mov	cl, byte ptr [rax + 0x38]
	shr	cl, 1
	and	cl, 3
	movzx	ecx, cl
	call	re_copy_regs
	mov	rdx, qword ptr [rbp - 0x10]
	mov	r8b, al
	mov	r9b, byte ptr [rdx + 0x38]
	and	r8b, 3
	shl	r8b, 1
	and	r9b, 0xf9
	or	r9b, r8b
	mov	byte ptr [rdx + 0x38], r9b
	mov	rdx, qword ptr [rbp - 0x10]
	mov	r8b, byte ptr [rdx + 0x38]
	shr	r8b, 1
	and	r8b, 3
	movzx	eax, r8b
	cmp	eax, 0
	sete	r8b
	and	r8b, 1
	movzx	eax, r8b
	movsxd	rdx, eax
	cmp	rdx, 0
	je	.label_481
	mov	qword ptr [rbp - 0x60], -2
.label_481:
	jmp	.label_498
.label_498:
	jmp	.label_476
.label_476:
	cmp	qword ptr [rbp - 0x60], 0
	sete	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_474
	test	byte ptr [rbp - 0x41], 1
	je	.label_478
	mov	rax, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x28]
	jne	.label_483
	jmp	.label_486
.label_494:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x78]
	mov	r9, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x58]
	mov	r10, qword ptr [rbp - 0x50]
	mov	r11d, dword ptr [rbp - 0x64]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	dword ptr [rsp + 0x10], r11d
	call	re_search_internal
	mov	dword ptr [rbp - 0x48], eax
	mov	qword ptr [rbp - 0x60], 0
	cmp	dword ptr [rbp - 0x48], 0
	je	.label_496
	mov	eax, 0xfffffffe
	mov	ecx, 0xffffffff
	cmp	dword ptr [rbp - 0x48], 1
	cmove	eax, ecx
	movsxd	rdx, eax
	mov	qword ptr [rbp - 0x60], rdx
	jmp	.label_476
.label_483:
	movabs	rdi, OFFSET FLAT:label_490
	movabs	rsi, OFFSET FLAT:label_491
	mov	edx, 0x1be
	movabs	rcx, OFFSET FLAT:label_492
	call	__assert_fail
.label_504:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	rcx, qword ptr [rbp - 0x78]
	mov	byte ptr [rbp - 0x7a], al
	jl	.label_501
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	cmp	rdx, qword ptr [rbp - 0x30]
	mov	byte ptr [rbp - 0x7b], cl
	jg	.label_499
	mov	rax, qword ptr [rbp - 0x78]
	cmp	rax, qword ptr [rbp - 0x28]
	setl	cl
	mov	byte ptr [rbp - 0x7b], cl
.label_499:
	mov	al, byte ptr [rbp - 0x7b]
	mov	byte ptr [rbp - 0x7a], al
.label_501:
	mov	al, byte ptr [rbp - 0x7a]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_502
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_487
.label_488:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x58], rax
.label_485:
	jmp	.label_477
.label_477:
	mov	rax, qword ptr [rbp - 0x58]
	shl	rax, 4
	mov	rdi, rax
	call	malloc
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x50], 0
	sete	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_494
	mov	qword ptr [rbp - 0x60], -2
	jmp	.label_495
	.section	.text
	.align	16
	#Procedure 0x40767d

	.globl re_search_stub
	.type re_search_stub, @function
re_search_stub:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xa0
	mov	al, byte ptr [rbp + 0x18]
	mov	r10, qword ptr [rbp + 0x10]
	mov	r11b, 1
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	qword ptr [rbp - 0x38], r9
	mov	qword ptr [rbp - 0x40], r10
	and	al, 1
	mov	byte ptr [rbp - 0x41], al
	mov	dword ptr [rbp - 0x64], 0
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 0x70], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	add	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x78], rcx
	cmp	qword ptr [rbp - 0x28], 0
	mov	byte ptr [rbp - 0x79], r11b
	jl	.label_503
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x20]
	setg	cl
	mov	byte ptr [rbp - 0x79], cl
.label_503:
	mov	al, byte ptr [rbp - 0x79]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_504
	mov	qword ptr [rbp - 8], -1
	jmp	.label_500
	.section	.text
	.align	16
	#Procedure 0x407710
	.globl xstrdup
	.type xstrdup, @function
xstrdup:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, rax
	call	strlen
	add	rax, 1
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, rax
	call	xmemdup
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407746
	.globl sub_407746
	.type sub_407746, @function
sub_407746:

	nop	word ptr cs:[rax + rax]
.label_531:
	jmp	.label_505
.label_505:
	jmp	.label_506
.label_506:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x120
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407767
	.globl sub_407767
	.type sub_407767, @function
sub_407767:

	nop	word ptr cs:[rax + rax]
.label_538:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0xa8], rdi
	mov	rdi, rax
	mov	qword ptr [rbp - 0xb0], rsi
	call	strlen
	add	rax, 1
	mov	rdi, qword ptr [rbp - 0xa8]
	mov	rsi, qword ptr [rbp - 0xb0]
	mov	rdx, rax
	call	memmove
	mov	qword ptr [rbp - 0xb8], rax
.label_529:
	cmp	dword ptr [rbp - 0xc], 1
	je	.label_514
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	lea	rcx, [rbp - 0x60]
	mov	dword ptr [rbp - 0x64], 0
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x48], rdi
	mov	rdi, qword ptr [rbp - 0x48]
	mov	r8, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xc0], rdi
	mov	rdi, r8
	mov	dword ptr [rbp - 0xc4], esi
	mov	qword ptr [rbp - 0xd0], rdx
	mov	qword ptr [rbp - 0xd8], rcx
	call	strlen
	mov	rcx, qword ptr [rbp - 0xc0]
	add	rcx, rax
	mov	qword ptr [rbp - 0x60], rcx
	mov	byte ptr [rbp - 0x58], 0
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, 0xc
	mov	rdi, rax
	mov	esi, dword ptr [rbp - 0xc4]
	mov	rdx, qword ptr [rbp - 0xd0]
	call	memset
	mov	byte ptr [rbp - 0x4c], 0
.label_515:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x48]
	cmp	rdx, qword ptr [rbp - 0x60]
	mov	byte ptr [rbp - 0xd9], cl
	jae	.label_520
	lea	rdi, [rbp - 0x60]
	call	mbiter_multi_next
	mov	al, 1
	mov	byte ptr [rbp - 0xd9], al
.label_520:
	mov	al, byte ptr [rbp - 0xd9]
	test	al, 1
	jne	.label_518
	jmp	.label_521
.label_518:
	cmp	dword ptr [rbp - 0x64], 0
	jne	.label_508
	test	byte ptr [rbp - 0x38], 1
	je	.label_508
	mov	edi, dword ptr [rbp - 0x34]
	call	iswspace
	cmp	eax, 0
	je	.label_508
	jmp	.label_512
.label_521:
	cmp	dword ptr [rbp - 0x64], 2
	jne	.label_511
	mov	rax, qword ptr [rbp - 0x70]
	mov	byte ptr [rax], 0
.label_511:
	jmp	.label_514
.label_514:
	jmp	.label_506
.label_541:
	call	__ctype_get_mb_cur_max
	cmp	rax, 1
	jbe	.label_523
	cmp	dword ptr [rbp - 0xc], 0
	je	.label_529
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	lea	rcx, [rbp - 0x60]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x48], rdi
	mov	rdi, qword ptr [rbp - 0x48]
	mov	r8, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x80], rdi
	mov	rdi, r8
	mov	dword ptr [rbp - 0x84], esi
	mov	qword ptr [rbp - 0x90], rdx
	mov	qword ptr [rbp - 0x98], rcx
	call	strlen
	mov	rcx, qword ptr [rbp - 0x80]
	add	rcx, rax
	mov	qword ptr [rbp - 0x60], rcx
	mov	byte ptr [rbp - 0x58], 0
	mov	rax, qword ptr [rbp - 0x98]
	add	rax, 0xc
	mov	rdi, rax
	mov	esi, dword ptr [rbp - 0x84]
	mov	rdx, qword ptr [rbp - 0x90]
	call	memset
	mov	byte ptr [rbp - 0x4c], 0
.label_535:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x48]
	cmp	rdx, qword ptr [rbp - 0x60]
	mov	byte ptr [rbp - 0x99], cl
	jae	.label_526
	lea	rdi, [rbp - 0x60]
	call	mbiter_multi_next
	xor	eax, eax
	mov	cl, al
	mov	dl, 1
	test	dl, 1
	mov	byte ptr [rbp - 0x99], cl
	jne	.label_537
	jmp	.label_526
.label_537:
	xor	eax, eax
	mov	cl, al
	test	byte ptr [rbp - 0x38], 1
	mov	byte ptr [rbp - 0x9a], cl
	je	.label_527
	mov	edi, dword ptr [rbp - 0x34]
	call	iswspace
	cmp	eax, 0
	setne	cl
	mov	byte ptr [rbp - 0x9a], cl
.label_527:
	mov	al, byte ptr [rbp - 0x9a]
	mov	byte ptr [rbp - 0x99], al
.label_526:
	mov	al, byte ptr [rbp - 0x99]
	test	al, 1
	jne	.label_540
	jmp	.label_538
.label_540:
	jmp	.label_525
.label_525:
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rax
	mov	byte ptr [rbp - 0x4c], 0
	jmp	.label_535
	.section	.text
	.align	16
	#Procedure 0x4079e2

	.globl trim2
	.type trim2, @function
trim2:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x120
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	rdi, qword ptr [rbp - 8]
	call	strdup
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_541
	call	xalloc_die
.label_523:
	cmp	dword ptr [rbp - 0xc], 0
	je	.label_530
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x78], rax
.label_534:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x78]
	movsx	eax, byte ptr [rdx]
	cmp	eax, 0
	mov	byte ptr [rbp - 0xda], cl
	je	.label_536
	mov	rax, qword ptr [rbp - 0x78]
	movzx	ecx, byte ptr [rax]
	movsxd	rax, ecx
	mov	qword ptr [rbp - 0xe8], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rdx, qword ptr [rbp - 0xe8]
	movzx	ecx, word ptr [rax + rdx*2]
	and	ecx, 0x2000
	cmp	ecx, 0
	setne	sil
	mov	byte ptr [rbp - 0xda], sil
.label_536:
	mov	al, byte ptr [rbp - 0xda]
	test	al, 1
	jne	.label_542
	jmp	.label_524
.label_542:
	jmp	.label_528
.label_528:
	mov	rax, qword ptr [rbp - 0x78]
	add	rax, 1
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_534
.label_507:
	cmp	dword ptr [rbp - 0x64], 1
	jne	.label_510
	test	byte ptr [rbp - 0x38], 1
	je	.label_510
	mov	edi, dword ptr [rbp - 0x34]
	call	iswspace
	cmp	eax, 0
	je	.label_510
	mov	dword ptr [rbp - 0x64], 2
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_513
.label_510:
	cmp	dword ptr [rbp - 0x64], 2
	jne	.label_516
	test	byte ptr [rbp - 0x38], 1
	je	.label_516
	mov	edi, dword ptr [rbp - 0x34]
	call	iswspace
	cmp	eax, 0
	je	.label_516
	jmp	.label_522
.label_519:
	cmp	dword ptr [rbp - 0x64], 1
	jne	.label_507
	test	byte ptr [rbp - 0x38], 1
	je	.label_509
	mov	edi, dword ptr [rbp - 0x34]
	call	iswspace
	cmp	eax, 0
	jne	.label_507
.label_509:
	jmp	.label_512
.label_516:
	mov	dword ptr [rbp - 0x64], 1
.label_522:
	jmp	.label_513
.label_513:
	jmp	.label_512
.label_512:
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rax
	mov	byte ptr [rbp - 0x4c], 0
	jmp	.label_515
.label_508:
	cmp	dword ptr [rbp - 0x64], 0
	jne	.label_519
	test	byte ptr [rbp - 0x38], 1
	je	.label_517
	mov	edi, dword ptr [rbp - 0x34]
	call	iswspace
	cmp	eax, 0
	jne	.label_519
.label_517:
	mov	dword ptr [rbp - 0x64], 1
	jmp	.label_512
.label_524:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x78]
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0xf0], rdi
	mov	rdi, rax
	mov	qword ptr [rbp - 0xf8], rsi
	call	strlen
	add	rax, 1
	mov	rdi, qword ptr [rbp - 0xf0]
	mov	rsi, qword ptr [rbp - 0xf8]
	mov	rdx, rax
	call	memmove
	mov	qword ptr [rbp - 0x100], rax
.label_530:
	cmp	dword ptr [rbp - 0xc], 1
	je	.label_505
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x108], rax
	call	strlen
	mov	rdi, qword ptr [rbp - 0x108]
	add	rdi, rax
	add	rdi, -1
	mov	qword ptr [rbp - 0x78], rdi
.label_532:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x78]
	cmp	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rbp - 0x109], cl
	jb	.label_539
	mov	rax, qword ptr [rbp - 0x78]
	movzx	ecx, byte ptr [rax]
	movsxd	rax, ecx
	mov	qword ptr [rbp - 0x118], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x118]
	movzx	ecx, word ptr [rax + rdx*2]
	and	ecx, 0x2000
	cmp	ecx, 0
	setne	sil
	mov	byte ptr [rbp - 0x109], sil
.label_539:
	mov	al, byte ptr [rbp - 0x109]
	test	al, 1
	jne	.label_533
	jmp	.label_531
.label_533:
	mov	rax, qword ptr [rbp - 0x78]
	mov	byte ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x78]
	add	rax, -1
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_532
.label_546:
	mov	dword ptr [rbp - 4], 0
.label_547:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407c80
	.globl sub_407c80
	.type sub_407c80, @function
sub_407c80:

	nop	
	.section	.text
	.align	16
	#Procedure 0x407c82

	.globl check_subexp_matching_top
	.type check_subexp_matching_top, @function
check_subexp_matching_top:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x98]
	mov	qword ptr [rbp - 0x28], rdx
	mov	qword ptr [rbp - 0x30], 0
.label_545:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_546
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x28]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	and	edx, 0xff
	cmp	edx, 8
	jne	.label_543
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x28]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	cmp	qword ptr [rax], 0x40
	jge	.label_543
	mov	eax, 1
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rdx + 0xa0]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdi, qword ptr [rbp - 0x28]
	shl	rsi, 4
	add	rsi, qword ptr [rdi]
	mov	rsi, qword ptr [rsi]
	mov	qword ptr [rbp - 0x48], rcx
	mov	rcx, rsi
	mov	rsi, qword ptr [rbp - 0x48]
	shl	rsi, cl
	and	rdx, rsi
	cmp	rdx, 0
	je	.label_543
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x20]
	call	match_ctx_add_subtop
	mov	dword ptr [rbp - 0x34], eax
	cmp	dword ptr [rbp - 0x34], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rdx, eax
	cmp	rdx, 0
	je	.label_548
	mov	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_547
.label_548:
	jmp	.label_543
.label_543:
	jmp	.label_544
.label_544:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_545
	.section	.text
	.align	16
	#Procedure 0x407da0
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rax, 0x7fffffffffffffff
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 8]
	jb	.label_549
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	calloc
	mov	qword ptr [rbp - 0x18], rax
	cmp	rax, 0
	jne	.label_550
.label_549:
	call	xalloc_die
.label_550:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407df6
	.globl sub_407df6
	.type sub_407df6, @function
sub_407df6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407e00
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x20]
	call	quotearg_alloc_mem
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407e3a
	.globl sub_407e3a
	.type sub_407e3a, @function
sub_407e3a:

	nop	word ptr [rax + rax]
.label_553:
	mov	byte ptr [rbp - 1], 0
.label_552:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407e4e
	.globl sub_407e4e
	.type sub_407e4e, @function
sub_407e4e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x407e4f
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	sub	edi, 0x7f
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_553
	jmp	.label_551
.label_551:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_552
	.section	.text
	.align	16
	#Procedure 0x407e70

	.globl parse_reg_exp
	.type parse_reg_exp, @function
parse_reg_exp:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	qword ptr [rbp - 0x38], r9
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 0x40], rcx
	mov	qword ptr [rbp - 0x50], 0
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rcx + 0xa8]
	mov	qword ptr [rbp - 0x58], rcx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	r9, qword ptr [rbp - 0x38]
	call	parse_branch
	xor	r10d, r10d
	mov	r11b, r10b
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x38]
	cmp	dword ptr [rax], 0
	mov	byte ptr [rbp - 0x61], r11b
	je	.label_556
	cmp	qword ptr [rbp - 0x48], 0
	sete	al
	mov	byte ptr [rbp - 0x61], al
.label_556:
	mov	al, byte ptr [rbp - 0x61]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_565
	mov	qword ptr [rbp - 8], 0
	jmp	.label_554
.label_557:
	mov	qword ptr [rbp - 0x50], 0
.label_562:
	mov	ecx, 0xa
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x50]
	call	create_tree
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x48], 0
	sete	r8b
	and	r8b, 1
	movzx	ecx, r8b
	movsxd	rax, ecx
	cmp	rax, 0
	je	.label_563
	mov	rax, qword ptr [rbp - 0x38]
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 8], 0
	jmp	.label_554
.label_564:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x40]
	or	rax, qword ptr [rcx + 0xa8]
	mov	qword ptr [rcx + 0xa8], rax
	jmp	.label_562
.label_561:
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 8], rax
.label_554:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407f9b
	.globl sub_407f9b
	.type sub_407f9b, @function
sub_407f9b:

	nop	word ptr [rax + rax]
.label_563:
	jmp	.label_559
.label_565:
	jmp	.label_559
.label_559:
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 0xa
	jne	.label_561
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x28]
	or	rax, 0x800000
	mov	rdx, rax
	call	fetch_token
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 0xa
	je	.label_557
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 2
	je	.label_557
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_555
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 9
	je	.label_557
.label_555:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + 0xa8]
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	qword ptr [rcx + 0xa8], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	r9, qword ptr [rbp - 0x38]
	call	parse_branch
	xor	r10d, r10d
	mov	r11b, r10b
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x38]
	cmp	dword ptr [rax], 0
	mov	byte ptr [rbp - 0x62], r11b
	je	.label_560
	cmp	qword ptr [rbp - 0x50], 0
	sete	al
	mov	byte ptr [rbp - 0x62], al
.label_560:
	mov	al, byte ptr [rbp - 0x62]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_564
	cmp	qword ptr [rbp - 0x48], 0
	je	.label_558
	movabs	rsi, OFFSET FLAT:free_tree
	xor	eax, eax
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x48]
	call	postorder
	mov	dword ptr [rbp - 0x68], eax
.label_558:
	mov	qword ptr [rbp - 8], 0
	jmp	.label_554
	.section	.text
	.align	16
	#Procedure 0x4080d0

	.globl sub_4080d0
	.type sub_4080d0, @function
sub_4080d0:
	movabs	rdi, OFFSET FLAT:label_566
	movabs	rsi, OFFSET FLAT:label_567
	mov	edx, 0x5af
	movabs	rcx, OFFSET FLAT:label_568
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x4080f8

	.globl sub_4080f8
	.type sub_4080f8, @function
sub_4080f8:
	cmp	qword ptr [rbp - 0x38], -1
	jle	.label_571
	jmp	.label_569
	.section	.text
	.align	16
	#Procedure 0x408108

	.globl sub_408108
	.type sub_408108, @function
sub_408108:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x20]
	mov	rax, qword ptr [rax + 0x38]
	mov	qword ptr [rbp - 0x30], rax
.label_578:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x10], 0
	je	.label_573
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rax, qword ptr [rax + 0x18]
	mov	rax, qword ptr [rax + 0x38]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_574
	.section	.text
	.align	16
	#Procedure 0x408140

	.globl sub_408140
	.type sub_408140, @function
sub_408140:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x28]
	imul	rcx, qword ptr [rbp - 0x20], 0x18
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x20]
	mov	rsi, qword ptr [rcx + 0x38]
	mov	rdi, rax
	call	re_node_set_init_1
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_572
.label_573:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x20]
	mov	rax, qword ptr [rax + 0x38]
	mov	qword ptr [rbp - 0x38], rax
.label_574:
	cmp	qword ptr [rbp - 0x30], -1
	jle	sub_4080d0
	jmp	sub_4080f8
.label_581:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x30]
	and	ecx, 0xff
	and	ecx, 8
	cmp	ecx, 0
	jne	.label_582
	jmp	.label_580
	.section	.text
	.align	16
	#Procedure 0x4081aa

	.globl sub_4081aa
	.type sub_4081aa, @function
sub_4081aa:
	jmp	.label_572
	.section	.text
	.align	16
	#Procedure 0x4081af

	.globl sub_4081af
	.type sub_4081af, @function
sub_4081af:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x20]
	mov	rax, qword ptr [rax + 0x38]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x18]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rax + 0x30]
	and	esi, 0xff
	cmp	esi, 4
	jne	.label_575
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x28]
	imul	rcx, qword ptr [rbp - 0x20], 0x18
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x18]
	mov	rsi, qword ptr [rdx + rcx*8]
	mov	rdi, rax
	call	re_node_set_init_1
	mov	dword ptr [rbp - 0x24], eax
.label_575:
	jmp	.label_572
.label_580:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x20]
	mov	rax, qword ptr [rax + 0x38]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x18]
	mov	qword ptr [rdx + rcx*8], rax
.label_572:
	mov	eax, dword ptr [rbp - 0x24]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408236
	.globl sub_408236
	.type sub_408236, @function
sub_408236:

	nop	word ptr cs:[rax + rax]
.label_3862:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x20], 0
	jne	.label_577
	jmp	sub_4081aa
.label_571:
	movabs	rdi, OFFSET FLAT:label_570
	movabs	rsi, OFFSET FLAT:label_567
	mov	edx, 0x5b0
	movabs	rcx, OFFSET FLAT:label_568
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x40827f

	.globl sub_40827f
	.type sub_40827f, @function
sub_40827f:
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax + 0xb0]
	and	cl, 0xfe
	or	cl, 1
	mov	byte ptr [rax + 0xb0], cl
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0
	je	sub_408108
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	rax, qword ptr [rax + 0x18]
	mov	rax, qword ptr [rax + 0x38]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_578
.label_569:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x28]
	imul	rcx, qword ptr [rbp - 0x20], 0x18
	add	rax, rcx
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rdi, rax
	call	re_node_set_init_2
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_572
.label_577:
	movabs	rdi, OFFSET FLAT:label_576
	movabs	rsi, OFFSET FLAT:label_567
	mov	edx, 0x59f
	movabs	rcx, OFFSET FLAT:label_568
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x40830d

	.globl sub_40830d
	.type sub_40830d, @function
sub_40830d:
	jmp	.label_572
.label_582:
	movabs	rdi, OFFSET FLAT:label_579
	movabs	rsi, OFFSET FLAT:label_567
	mov	edx, 0x5c2
	movabs	rcx, OFFSET FLAT:label_568
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x40833a

	.globl link_nfa_nodes
	.type link_nfa_nodes, @function
link_nfa_nodes:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0x38]
	mov	qword ptr [rbp - 0x20], rsi
	mov	dword ptr [rbp - 0x24], 0
	mov	rsi, qword ptr [rbp - 0x10]
	movzx	eax, byte ptr [rsi + 0x30]
	add	eax, -2
	mov	esi, eax
	sub	eax, 0xe
	mov	qword ptr [rbp - 0x40], rsi
	mov	dword ptr [rbp - 0x44], eax
	ja	.label_581
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_583]]
	jmp	rcx
	.section	.text
	.align	16
	#Procedure 0x408390

	.globl re_string_char_size_at
	.type re_string_char_size_at, @function
re_string_char_size_at:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	cmp	dword ptr [rsi + 0x90], 1
	jne	.label_584
	mov	dword ptr [rbp - 4], 1
	jmp	.label_589
.label_587:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
.label_589:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4083c4
	.globl sub_4083c4
	.type sub_4083c4, @function
sub_4083c4:

	nop	dword ptr [rax]
.label_588:
	jmp	.label_586
.label_586:
	mov	eax, dword ptr [rbp - 0x1c]
	add	eax, 1
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_585
.label_584:
	mov	dword ptr [rbp - 0x1c], 1
.label_585:
	mov	rax, qword ptr [rbp - 0x18]
	movsxd	rcx, dword ptr [rbp - 0x1c]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x30]
	jge	.label_587
	mov	rax, qword ptr [rbp - 0x18]
	movsxd	rcx, dword ptr [rbp - 0x1c]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	cmp	dword ptr [rcx + rax*4], -1
	je	.label_588
	jmp	.label_587
	.section	.text
	.align	16
	#Procedure 0x408420

	.globl xstr_iconv
	.type xstr_iconv, @function
xstr_iconv:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	str_iconv
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_590
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	jne	.label_590
	call	xalloc_die
.label_590:
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408471
	.globl sub_408471
	.type sub_408471, @function
sub_408471:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408480

	.globl str_iconv
	.type str_iconv, @function
str_iconv:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	eax, byte ptr [rdx]
	cmp	eax, 0
	je	.label_591
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_597
.label_591:
	mov	rdi, qword ptr [rbp - 0x10]
	call	strdup
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_593
	call	__errno_location
	mov	dword ptr [rax], 0xc
.label_593:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_596
.label_592:
	jmp	.label_598
.label_598:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 8], rax
.label_596:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408501
	.globl sub_408501
	.type sub_408501, @function
sub_408501:

	nop	dword ptr [rax]
.label_597:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x18]
	call	iconv_open
	mov	rsi, -1
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], rsi
	jne	.label_595
	mov	qword ptr [rbp - 8], 0
	jmp	.label_596
.label_594:
	mov	rdi, qword ptr [rbp - 0x30]
	call	iconv_close
	cmp	eax, 0
	jge	.label_592
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x40], ecx
	mov	rdi, qword ptr [rbp - 0x38]
	call	free
	mov	ecx, dword ptr [rbp - 0x40]
	mov	dword ptr [rbp - 0x4c], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rax], ecx
	mov	qword ptr [rbp - 8], 0
	jmp	.label_596
.label_595:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x30]
	call	str_cd_iconv
	mov	qword ptr [rbp - 0x38], rax
	cmp	qword ptr [rbp - 0x38], 0
	jne	.label_594
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x3c], ecx
	mov	rdi, qword ptr [rbp - 0x30]
	call	iconv_close
	mov	ecx, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0x44], eax
	mov	dword ptr [rbp - 0x48], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x48]
	mov	dword ptr [rax], ecx
	jmp	.label_598
	.section	.text
	.align	16
	#Procedure 0x4085c0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rdi,  qword ptr [word ptr [stdout]]
	call	close_stream
	cmp	eax, 0
	je	.label_602
	test	byte ptr [byte ptr [ignore_EPIPE]],  1
	je	.label_606
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	je	.label_602
.label_606:
	movabs	rdi, OFFSET FLAT:label_604
	call	gettext
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_600
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	rdi,  qword ptr [word ptr [file_name]]
	mov	dword ptr [rbp - 0xc], esi
	call	quotearg_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_603
	mov	r8, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_601
.label_600:
	call	__errno_location
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_605
	mov	esi, dword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	mov	al, 0
	call	error
.label_601:
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_602:
	mov	rdi,  qword ptr [word ptr [stderr]]
	call	close_stream
	cmp	eax, 0
	je	.label_599
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_599:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4086a7
	.globl sub_4086a7
	.type sub_4086a7, @function
sub_4086a7:

	nop	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4086b0
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	edi, eax
	call	quotearg_n_custom
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4086df
	.globl sub_4086df
	.type sub_4086df, @function
sub_4086df:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4086e0
	.globl rpl_re_set_syntax
	.type rpl_re_set_syntax, @function
rpl_re_set_syntax:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi,  qword ptr [word ptr [rpl_re_syntax_options]]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [rpl_re_syntax_options]],  rdi
	mov	rax, qword ptr [rbp - 0x10]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408706
	.globl sub_408706
	.type sub_408706, @function
sub_408706:

	nop	word ptr cs:[rax + rax]
.label_607:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40871a
	.globl sub_40871a
	.type sub_40871a, @function
sub_40871a:

	nop	word ptr cs:[rax + rax]
.label_614:
	jmp	.label_613
.label_613:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rax + 0x48]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rax + 0x48], rdx
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	sil, byte ptr [rax + rcx]
	mov	byte ptr [rbp - 0x29], sil
.label_612:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x58]
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	setne	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_610
	movzx	eax, byte ptr [rbp - 0x29]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rdx + rcx*8]
	mov	qword ptr [rbp - 8], rcx
	jmp	.label_607
.label_610:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x60]
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	setne	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_609
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x48]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rcx + 0xa0]
	mov	rsi, rax
	call	re_string_context_at
	mov	dword ptr [rbp - 0x30], eax
	mov	eax, dword ptr [rbp - 0x30]
	and	eax, 1
	cmp	eax, 0
	je	.label_611
	movzx	eax, byte ptr [rbp - 0x29]
	add	eax, 0x100
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rdx + rcx*8]
	mov	qword ptr [rbp - 8], rcx
	jmp	.label_607
	.section	.text
	.align	16
	#Procedure 0x408803

	.globl transit_state
	.type transit_state, @function
transit_state:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x20]
	mov	al, byte ptr [rdx + 0x68]
	shr	al, 5
	and	al, 1
	movzx	ecx, al
	mov	ecx, ecx
	mov	edx, ecx
	cmp	rdx, 0
	je	.label_613
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	call	transit_state_mb
	mov	rsi, qword ptr [rbp - 0x10]
	mov	dword ptr [rsi], eax
	mov	rsi, qword ptr [rbp - 0x10]
	cmp	dword ptr [rsi], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rsi, eax
	cmp	rsi, 0
	je	.label_614
	mov	qword ptr [rbp - 8], 0
	jmp	.label_607
.label_609:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rax + 0x98]
	mov	rsi, qword ptr [rbp - 0x20]
	call	build_trtable
	test	al, 1
	jne	.label_608
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 8], 0
	jmp	.label_607
.label_611:
	movzx	eax, byte ptr [rbp - 0x29]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rdx + rcx*8]
	mov	qword ptr [rbp - 8], rcx
	jmp	.label_607
.label_608:
	jmp	.label_612
	.section	.text
	.align	16
	#Procedure 0x4088c0

	.globl quotearg_n_style_mem
	.type quotearg_n_style_mem, @function
quotearg_n_style_mem:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	lea	rax, [rbp - 0x50]
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	qword ptr [rbp - 0x10], rdx
	mov	qword ptr [rbp - 0x18], rcx
	mov	esi, dword ptr [rbp - 8]
	mov	rdi, rax
	call	quoting_options_from_style
	lea	rcx, [rbp - 0x50]
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	quotearg_n_options
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4088ff
	.globl sub_4088ff
	.type sub_4088ff, @function
sub_4088ff:

	nop	
.label_622:
	cmp	dword ptr [rbp - 0x24], 0
	jne	.label_615
	mov	byte ptr [rbp - 1], 1
	jmp	.label_619
.label_618:
	mov	byte ptr [rbp - 1], 1
.label_619:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408921
	.globl sub_408921
	.type sub_408921, @function
sub_408921:

	nop	
.label_615:
	mov	eax, dword ptr [rbp - 0x24]
	and	eax, 4
	cmp	eax, 0
	je	.label_617
	mov	eax, dword ptr [rbp - 0x1c]
	and	eax, 1
	cmp	eax, 0
	je	.label_620
.label_617:
	mov	eax, dword ptr [rbp - 0x24]
	and	eax, 8
	cmp	eax, 0
	je	.label_616
	mov	eax, dword ptr [rbp - 0x1c]
	and	eax, 1
	cmp	eax, 0
	jne	.label_620
.label_616:
	mov	eax, dword ptr [rbp - 0x24]
	and	eax, 0x20
	cmp	eax, 0
	je	.label_621
	mov	eax, dword ptr [rbp - 0x1c]
	and	eax, 2
	cmp	eax, 0
	je	.label_620
.label_621:
	mov	eax, dword ptr [rbp - 0x24]
	and	eax, 0x80
	cmp	eax, 0
	je	.label_618
	mov	eax, dword ptr [rbp - 0x1c]
	and	eax, 8
	cmp	eax, 0
	jne	.label_618
.label_620:
	mov	byte ptr [rbp - 1], 0
	jmp	.label_619
	.section	.text
	.align	16
	#Procedure 0x4089a5

	.globl check_halt_node_context
	.type check_halt_node_context, @function
check_halt_node_context:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 0x10]
	shl	rsi, 4
	add	rsi, qword ptr [rdi]
	mov	edx, dword ptr [rsi + 8]
	and	edx, 0xff
	mov	dword ptr [rbp - 0x20], edx
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 0x10]
	shl	rsi, 4
	add	rsi, qword ptr [rdi]
	mov	edx, dword ptr [rsi + 8]
	shr	edx, 8
	and	edx, 0x3ff
	mov	dword ptr [rbp - 0x24], edx
	cmp	dword ptr [rbp - 0x20], 2
	je	.label_622
	mov	byte ptr [rbp - 1], 0
	jmp	.label_619
	.section	.text
	.align	16
	#Procedure 0x408a00

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_623
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 4], eax
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408a30

	.globl bitset_set_all
	.type bitset_set_all, @function
bitset_set_all:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	esi, 0xff
	mov	eax, 0x20
	mov	edx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	memset
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408a57
	.globl sub_408a57
	.type sub_408a57, @function
sub_408a57:

	nop	word ptr [rax + rax]
.label_625:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	call	fseeko
	mov	dword ptr [rbp - 4], eax
.label_624:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408a7c
	.globl sub_408a7c
	.type sub_408a7c, @function
sub_408a7c:

	nop	word ptr cs:[rax + rax]
.label_626:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax]
	and	ecx, 0xffffffef
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x90], rax
	mov	dword ptr [rbp - 4], 0
	jmp	.label_624
	.section	.text
	.align	16
	#Procedure 0x408ab0

	.globl rpl_fseeko
	.type rpl_fseeko, @function
rpl_fseeko:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0x10]
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	rsi, qword ptr [rdi + 8]
	jne	.label_625
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x20]
	jne	.label_625
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_625
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	mov	edi, eax
	call	lseek
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], -1
	jne	.label_626
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_624
.label_633:
	mov	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xa0], rdx
.label_631:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp + rcx*8 - 0x80], rax
	cmp	rax, 0
	setne	dl
	mov	byte ptr [rbp - 0x81], dl
.label_629:
	mov	al, byte ptr [rbp - 0x81]
	test	al, 1
	jne	.label_630
	jmp	.label_632
.label_630:
	jmp	.label_627
.label_627:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_628
.label_632:
	lea	r8, [rbp - 0x80]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	r9, qword ptr [rbp - 0x30]
	call	version_etc_arn
	add	rsp, 0xa0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408bbc
	.globl sub_408bbc
	.type sub_408bbc, @function
sub_408bbc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408bc3

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xa0
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	qword ptr [rbp - 0x30], 0
.label_628:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x30], 0xa
	mov	byte ptr [rbp - 0x81], cl
	jae	.label_629
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x90], rax
	mov	dword ptr [rbp - 0x94], ecx
	ja	.label_633
	mov	eax, dword ptr [rbp - 0x94]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x90]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0xa0], rcx
	jmp	.label_631
.label_636:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408c49
	.globl sub_408c49
	.type sub_408c49, @function
sub_408c49:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408c51

	.globl postorder
	.type postorder, @function
postorder:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rdx
.label_637:
	jmp	.label_635
.label_635:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	qword ptr [rcx + 8], 0
	mov	byte ptr [rbp - 0x35], al
	jne	.label_641
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax + 0x10], 0
	setne	cl
	mov	byte ptr [rbp - 0x35], cl
.label_641:
	mov	al, byte ptr [rbp - 0x35]
	test	al, 1
	jne	.label_643
	jmp	.label_634
.label_643:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax + 8], 0
	je	.label_639
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_642
.label_634:
	jmp	.label_638
.label_638:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x28]
	call	rax
	mov	dword ptr [rbp - 0x34], eax
	cmp	dword ptr [rbp - 0x34], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rsi, eax
	cmp	rsi, 0
	je	.label_644
	mov	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_636
.label_645:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x28], rax
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rcx + 0x10]
	cmp	rcx, qword ptr [rbp - 0x30]
	mov	byte ptr [rbp - 0x36], al
	je	.label_640
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax + 0x10], 0
	sete	cl
	mov	byte ptr [rbp - 0x36], cl
.label_640:
	mov	al, byte ptr [rbp - 0x36]
	test	al, 1
	jne	.label_638
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_637
.label_639:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x28], rax
.label_642:
	jmp	.label_635
.label_644:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax], 0
	jne	.label_645
	mov	dword ptr [rbp - 4], 0
	jmp	.label_636
	.section	.text
	.align	16
	#Procedure 0x408d80

	.globl bkm_scale
	.type bkm_scale, @function
bkm_scale:
	push	rbp
	mov	rbp, rsp
	movabs	rax, 0x8000000000000000
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi]
	movsxd	rcx, dword ptr [rbp - 0x14]
	cqo	
	idiv	rcx
	cmp	rdi, rax
	jge	.label_646
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 1
	jmp	.label_647
.label_646:
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx, dword ptr [rbp - 0x14]
	cqo	
	idiv	rcx
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx]
	jge	.label_648
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 1
	jmp	.label_647
.label_648:
	movsxd	rax, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, qword ptr [rcx]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 0
.label_647:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408e23
	.globl sub_408e23
	.type sub_408e23, @function
sub_408e23:

	nop	word ptr cs:[rax + rax]
.label_658:
	mov	dword ptr [rbp - 4], 0
.label_651:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408e40
	.globl sub_408e40
	.type sub_408e40, @function
sub_408e40:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408e47

	.globl calc_inveclosure
	.type calc_inveclosure, @function
calc_inveclosure:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x20], 0
.label_652:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x10]
	jae	.label_650
	xor	esi, esi
	mov	eax, 0x18
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x38]
	imul	rdi, qword ptr [rbp - 0x20], 0x18
	add	rcx, rdi
	mov	rdi, rcx
	call	memset
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_652
.label_654:
	jmp	.label_657
.label_657:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_655
.label_650:
	mov	qword ptr [rbp - 0x18], 0
.label_649:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x10]
	jae	.label_658
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x30]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0x20], 0
.label_655:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x10]
	imul	rcx, rcx, 0x18
	add	rcx, qword ptr [rdx + 0x30]
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_653
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x38]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x30]
	imul	rcx, qword ptr [rdx + rcx*8], 0x18
	add	rax, rcx
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	re_node_set_insert_last
	and	al, 1
	mov	byte ptr [rbp - 0x21], al
	mov	al, byte ptr [rbp - 0x21]
	xor	al, 0xff
	and	al, 1
	movzx	r8d, al
	movsxd	rcx, r8d
	cmp	rcx, 0
	je	.label_654
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_651
.label_653:
	jmp	.label_656
.label_656:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_649
.label_660:
	mov	byte ptr [rbp - 1], 0
.label_661:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408f7e
	.globl sub_408f7e
	.type sub_408f7e, @function
sub_408f7e:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408f8c
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x20
	sub	edi, 0x5e
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_660
	jmp	.label_659
.label_659:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_661
.label_665:
	jmp	.label_662
.label_662:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_663
	.section	.text
	.align	16
	#Procedure 0x408fc6
	.globl argmatch_to_argument
	.type argmatch_to_argument, @function
argmatch_to_argument:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], 0
.label_663:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_666
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	imul	rcx, qword ptr [rbp - 0x30]
	add	rax, rcx
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsi, rax
	call	memcmp
	cmp	eax, 0
	jne	.label_665
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_664
.label_666:
	mov	qword ptr [rbp - 8], 0
.label_664:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409049
	.globl sub_409049
	.type sub_409049, @function
sub_409049:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409050

	.globl build_wcs_buffer
	.type build_wcs_buffer, @function
build_wcs_buffer:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xa0
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 0x40]
	mov	rax, qword ptr [rbp - 8]
	cmp	rdi, qword ptr [rax + 0x58]
	jle	.label_675
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x58]
	mov	qword ptr [rbp - 0x98], rax
	jmp	.label_682
.label_680:
	jmp	.label_677
.label_677:
	mov	eax, dword ptr [rbp - 0x7c]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rbp - 0x60], rdx
	mov	rdx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	dword ptr [rdx + rcx*4], eax
	mov	rcx, qword ptr [rbp - 0x60]
	add	rcx, qword ptr [rbp - 0x78]
	sub	rcx, 1
	mov	qword ptr [rbp - 0x70], rcx
.label_679:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x70]
	jge	.label_683
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x60], rcx
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	dword ptr [rcx + rax*4], 0xffffffff
	jmp	.label_679
.label_678:
	cmp	qword ptr [rbp - 0x78], -2
	sete	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_680
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	qword ptr [rax + 0x20], rcx
	jmp	.label_670
.label_675:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x40]
	mov	qword ptr [rbp - 0x98], rax
.label_682:
	mov	rax, qword ptr [rbp - 0x98]
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x30]
	mov	qword ptr [rbp - 0x60], rax
.label_671:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x68]
	jge	.label_670
	mov	rax, qword ptr [rbp - 0x68]
	sub	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x70], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x20]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x78], 0
	setne	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_672
	mov	dword ptr [rbp - 0x8c], 0
.label_676:
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 0x8c]
	mov	rdx, qword ptr [rbp - 8]
	cmp	eax, dword ptr [rdx + 0x90]
	mov	byte ptr [rbp - 0x99], cl
	jge	.label_673
	movsxd	rax, dword ptr [rbp - 0x8c]
	cmp	rax, qword ptr [rbp - 0x70]
	setl	cl
	mov	byte ptr [rbp - 0x99], cl
.label_673:
	mov	al, byte ptr [rbp - 0x99]
	test	al, 1
	jne	.label_668
	jmp	.label_674
.label_668:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x28]
	add	rax, qword ptr [rbp - 0x60]
	movsxd	rcx, dword ptr [rbp - 0x8c]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx]
	movzx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 0x90], edx
	movsxd	rax, dword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 0x78]
	mov	sil, byte ptr [rcx + rax]
	mov	rax, qword ptr [rbp - 0x60]
	movsxd	rcx, dword ptr [rbp - 0x8c]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 8]
	mov	byte ptr [rcx + rax], sil
	movsxd	rax, dword ptr [rbp - 0x8c]
	mov	byte ptr [rbp + rax - 0x50], sil
	mov	eax, dword ptr [rbp - 0x8c]
	add	eax, 1
	mov	dword ptr [rbp - 0x8c], eax
	jmp	.label_676
.label_672:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	add	rax, qword ptr [rcx + 0x28]
	add	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x88], rax
.label_681:
	lea	rdi, [rbp - 0x7c]
	mov	rsi, qword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x20
	mov	rcx, rax
	call	rpl_mbrtowc
	mov	r8b, 1
	mov	qword ptr [rbp - 0x78], rax
	cmp	qword ptr [rbp - 0x78], -1
	mov	byte ptr [rbp - 0x9a], r8b
	je	.label_667
	mov	al, 1
	cmp	qword ptr [rbp - 0x78], 0
	mov	byte ptr [rbp - 0x9a], al
	je	.label_667
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x78], -2
	mov	byte ptr [rbp - 0x9b], cl
	jne	.label_669
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 0x58]
	setge	dl
	mov	byte ptr [rbp - 0x9b], dl
.label_669:
	mov	al, byte ptr [rbp - 0x9b]
	mov	byte ptr [rbp - 0x9a], al
.label_667:
	mov	al, byte ptr [rbp - 0x9a]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_678
	mov	qword ptr [rbp - 0x78], 1
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x28]
	add	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx]
	movzx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 0x7c], edx
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x78], 0
	setne	sil
	and	sil, 1
	movzx	edx, sil
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_684
	movsxd	rax, dword ptr [rbp - 0x7c]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 0x78]
	movzx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 0x7c], edx
.label_684:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	qword ptr [rax + 0x20], rcx
	jmp	.label_677
.label_683:
	jmp	.label_671
.label_670:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x30], rax
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x38], rax
	add	rsp, 0xa0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40938c
	.globl sub_40938c
	.type sub_40938c, @function
sub_40938c:

	nop	dword ptr [rax]
.label_674:
	lea	rax, [rbp - 0x50]
	mov	qword ptr [rbp - 0x88], rax
	jmp	.label_681
	.section	.text
	.align	16
	#Procedure 0x4093a0
	.globl xmem_cd_iconv
	.type xmem_cd_iconv, @function
xmem_cd_iconv:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	r8, qword ptr [rbp - 0x28]
	call	mem_cd_iconv
	mov	dword ptr [rbp - 0x2c], eax
	cmp	dword ptr [rbp - 0x2c], 0
	jge	.label_685
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	jne	.label_685
	call	xalloc_die
.label_685:
	mov	eax, dword ptr [rbp - 0x2c]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4093fe
	.globl sub_4093fe
	.type sub_4093fe, @function
sub_4093fe:

	nop	
.label_688:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	realloc
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_686
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_686
	call	xalloc_die
.label_686:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_687:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40943e
	.globl sub_40943e
	.type sub_40943e, @function
sub_40943e:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409444

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_688
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_688
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	mov	qword ptr [rbp - 8], 0
	jmp	.label_687
	.section	.text
	.align	16
	#Procedure 0x409480

	.globl sift_ctx_init
	.type sift_ctx_init, @function
sift_ctx_init:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	xor	eax, eax
	mov	r9d, 0x18
	mov	r10d, r9d
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx], rcx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx + 8], rcx
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx + 0x10], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx + 0x18], rcx
	mov	rcx, qword ptr [rbp - 8]
	add	rcx, 0x20
	mov	rdi, rcx
	mov	esi, eax
	mov	rdx, r10
	call	memset
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4094f1
	.globl sub_4094f1
	.type sub_4094f1, @function
sub_4094f1:

	nop	word ptr cs:[rax + rax]
.label_718:
	jmp	.label_689
.label_697:
	mov	rax, qword ptr [rbp - 0x88]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi + 0xb8]
	cmp	qword ptr [rdi + rax*8], 0
	jne	.label_693
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0xe8], rcx
	jmp	.label_701
.label_723:
	lea	rsi, [rbp - 0x98]
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x58]
	mov	ecx, dword ptr [rbp - 0x3c]
	call	check_arrival_expand_ecl
	mov	dword ptr [rbp - 0x4c], eax
	cmp	dword ptr [rbp - 0x4c], 0
	setne	r8b
	and	r8b, 1
	movzx	eax, r8b
	movsxd	rdx, eax
	cmp	rdx, 0
	je	.label_718
	mov	rax, qword ptr [rbp - 0x88]
	mov	rdi, rax
	call	free
	mov	ecx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_690
.label_713:
	jmp	.label_691
.label_691:
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_708
	lea	rcx, [rbp - 0x98]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x68]
	mov	rax, qword ptr [rbp - 0x78]
	add	rax, 0x20
	mov	rdx, rax
	call	check_arrival_add_next_nodes
	mov	dword ptr [rbp - 0x4c], eax
	cmp	dword ptr [rbp - 0x4c], 0
	setne	r8b
	and	r8b, 1
	movzx	eax, r8b
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_702
	mov	rax, qword ptr [rbp - 0x88]
	mov	rdi, rax
	call	free
	mov	ecx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_690
.label_722:
	movabs	rax, 0x1fffffffffffffff
	mov	rcx, qword ptr [rbp - 0xb8]
	add	rcx, qword ptr [rbp - 0xc0]
	mov	qword ptr [rbp - 0xc8], rcx
	cmp	rax, qword ptr [rbp - 0xc8]
	setb	dl
	and	dl, 1
	movzx	esi, dl
	movsxd	rax, esi
	cmp	rax, 0
	je	.label_725
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_690
.label_706:
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0xb8]
	mov	qword ptr [rdx + rcx*8], rax
.label_707:
	mov	qword ptr [rbp - 0x70], 0
.label_714:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x68]
	cmp	rdx, qword ptr [rbp - 0x38]
	mov	byte ptr [rbp - 0xd2], cl
	jge	.label_709
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x10]
	movsxd	rcx, dword ptr [rcx + 0xe0]
	cmp	rax, rcx
	setle	dl
	mov	byte ptr [rbp - 0xd2], dl
.label_709:
	mov	al, byte ptr [rbp - 0xd2]
	test	al, 1
	jne	.label_692
	jmp	.label_697
.label_692:
	mov	qword ptr [rbp - 0x90], 0
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0xb8]
	cmp	qword ptr [rcx + rax*8 + 8], 0
	je	.label_691
	lea	rdi, [rbp - 0x98]
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0xb8]
	mov	rax, qword ptr [rcx + rax*8 + 8]
	add	rax, 8
	mov	rsi, rax
	call	re_node_set_merge
	mov	dword ptr [rbp - 0x4c], eax
	cmp	dword ptr [rbp - 0x4c], 0
	setne	dl
	and	dl, 1
	movzx	eax, dl
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_713
	mov	rax, qword ptr [rbp - 0x88]
	mov	rdi, rax
	call	free
	mov	ecx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_690
.label_717:
	xor	esi, esi
	mov	eax, 0x18
	mov	edx, eax
	lea	rcx, [rbp - 0x98]
	mov	rdi, rcx
	call	memset
.label_726:
	jmp	.label_689
.label_689:
	mov	rax, qword ptr [rbp - 0x68]
	cmp	rax, qword ptr [rbp - 0x28]
	je	.label_705
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_707
	mov	rax, qword ptr [rbp - 0x78]
	mov	cl, byte ptr [rax + 0x68]
	shr	cl, 6
	and	cl, 1
	movzx	edx, cl
	cmp	edx, 0
	je	.label_707
.label_705:
	cmp	qword ptr [rbp - 0x90], 0
	je	.label_696
	lea	rsi, [rbp - 0x98]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	r8d, dword ptr [rbp - 0x3c]
	call	expand_bkref_cache
	mov	dword ptr [rbp - 0x4c], eax
	cmp	dword ptr [rbp - 0x4c], 0
	setne	r9b
	and	r9b, 1
	movzx	eax, r9b
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_698
	mov	rax, qword ptr [rbp - 0x88]
	mov	rdi, rax
	call	free
	mov	ecx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_690
.label_702:
	jmp	.label_708
.label_708:
	mov	rax, qword ptr [rbp - 0x68]
	add	rax, 1
	mov	qword ptr [rbp - 0x68], rax
	cmp	qword ptr [rbp - 0x90], 0
	je	.label_710
	lea	rsi, [rbp - 0x98]
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x58]
	mov	ecx, dword ptr [rbp - 0x3c]
	call	check_arrival_expand_ecl
	mov	dword ptr [rbp - 0x4c], eax
	cmp	dword ptr [rbp - 0x4c], 0
	setne	r8b
	and	r8b, 1
	movzx	eax, r8b
	movsxd	rdx, eax
	cmp	rdx, 0
	je	.label_712
	mov	rax, qword ptr [rbp - 0x88]
	mov	rdi, rax
	call	free
	mov	ecx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_690
.label_715:
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0xb8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x78], rax
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_717
	mov	rax, qword ptr [rbp - 0x78]
	mov	cl, byte ptr [rax + 0x68]
	shr	cl, 6
	and	cl, 1
	movzx	edx, cl
	cmp	edx, 0
	je	.label_717
	lea	rdi, [rbp - 0x98]
	mov	rax, qword ptr [rbp - 0x78]
	add	rax, 8
	mov	rsi, rax
	call	re_node_set_init_copy
	mov	dword ptr [rbp - 0x4c], eax
	cmp	dword ptr [rbp - 0x4c], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rsi, eax
	cmp	rsi, 0
	je	.label_721
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_690
.label_720:
	xor	esi, esi
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rcx, qword ptr [rbp - 0xb8]
	shl	rcx, 3
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 8]
	sub	rcx, qword ptr [rbp - 0xb8]
	shl	rcx, 3
	mov	rdi, rax
	mov	rdx, rcx
	call	memset
.label_716:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax], 0
	je	.label_719
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0xd0], rax
	jmp	.label_724
.label_721:
	jmp	.label_726
.label_725:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0xc8]
	shl	rcx, 3
	mov	rdi, rax
	mov	rsi, rcx
	call	realloc
	mov	qword ptr [rbp - 0xb0], rax
	cmp	qword ptr [rbp - 0xb0], 0
	sete	dl
	and	dl, 1
	movzx	r8d, dl
	movsxd	rax, r8d
	cmp	rax, 0
	je	.label_720
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_690
.label_693:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0xb8]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, 8
	mov	qword ptr [rbp - 0xe8], rax
.label_701:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	qword ptr [rbp - 0x80], rax
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0xb8], rax
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x48], rax
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_700
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rbp - 0x30]
	call	re_node_set_contains
	cmp	rax, 0
	je	.label_700
	mov	dword ptr [rbp - 4], 0
	jmp	.label_690
.label_695:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0xe0], rcx
	jmp	.label_694
.label_694:
	mov	rax, qword ptr [rbp - 0xe0]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_714
.label_712:
	lea	rsi, [rbp - 0x98]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	r8d, dword ptr [rbp - 0x3c]
	call	expand_bkref_cache
	mov	dword ptr [rbp - 0x4c], eax
	cmp	dword ptr [rbp - 0x4c], 0
	setne	r9b
	and	r9b, 1
	movzx	eax, r9b
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_704
	mov	rax, qword ptr [rbp - 0x88]
	mov	rdi, rax
	call	free
	mov	ecx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_690
	.section	.text
	.align	16
	#Procedure 0x409a85

	.globl check_arrival
	.type check_arrival, @function
check_arrival:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xf0
	mov	eax, dword ptr [rbp + 0x10]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	qword ptr [rbp - 0x38], r9
	mov	dword ptr [rbp - 0x3c], eax
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x98]
	mov	qword ptr [rbp - 0x48], rcx
	mov	dword ptr [rbp - 0x4c], 0
	mov	qword ptr [rbp - 0x78], 0
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x48]
	shl	rcx, 4
	add	rcx, qword ptr [rdx]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 0x58], rcx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 8]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x10]
	movsxd	rsi, dword ptr [rsi + 0xe0]
	add	rdx, rsi
	add	rdx, 1
	cmp	rcx, rdx
	setl	r10b
	and	r10b, 1
	movzx	eax, r10b
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_716
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rbp - 0xb8], rcx
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x10]
	movsxd	rdx, dword ptr [rdx + 0xe0]
	add	rcx, rdx
	add	rcx, 1
	mov	qword ptr [rbp - 0xc0], rcx
	sub	rax, qword ptr [rbp - 0xb8]
	cmp	rax, qword ptr [rbp - 0xc0]
	setl	sil
	and	sil, 1
	movzx	edi, sil
	movsxd	rax, edi
	cmp	rax, 0
	je	.label_722
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_690
.label_698:
	jmp	.label_696
.label_696:
	lea	rdi, [rbp - 0x4c]
	lea	rdx, [rbp - 0x98]
	mov	rsi, qword ptr [rbp - 0x48]
	mov	ecx, dword ptr [rbp - 0xa4]
	call	re_acquire_state_context
	xor	ecx, ecx
	mov	r8b, cl
	mov	qword ptr [rbp - 0x78], rax
	cmp	qword ptr [rbp - 0x78], 0
	mov	byte ptr [rbp - 0xd1], r8b
	jne	.label_699
	cmp	dword ptr [rbp - 0x4c], 0
	setne	al
	mov	byte ptr [rbp - 0xd1], al
.label_699:
	mov	al, byte ptr [rbp - 0xd1]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_706
	mov	rax, qword ptr [rbp - 0x88]
	mov	rdi, rax
	call	free
	mov	ecx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_690
.label_704:
	jmp	.label_710
.label_710:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x68]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rcx + 0xa0]
	mov	rsi, rax
	call	re_string_context_at
	lea	rdi, [rbp - 0x4c]
	lea	rdx, [rbp - 0x98]
	mov	dword ptr [rbp - 0xa4], eax
	mov	rsi, qword ptr [rbp - 0x48]
	mov	ecx, dword ptr [rbp - 0xa4]
	call	re_acquire_state_context
	xor	ecx, ecx
	mov	r8b, cl
	mov	qword ptr [rbp - 0x78], rax
	cmp	qword ptr [rbp - 0x78], 0
	mov	byte ptr [rbp - 0xd3], r8b
	jne	.label_703
	cmp	dword ptr [rbp - 0x4c], 0
	setne	al
	mov	byte ptr [rbp - 0xd3], al
.label_703:
	mov	al, byte ptr [rbp - 0xd3]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_711
	mov	rax, qword ptr [rbp - 0x88]
	mov	rdi, rax
	call	free
	mov	ecx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_690
.label_711:
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0xb8]
	mov	qword ptr [rdx + rcx*8], rax
	cmp	qword ptr [rbp - 0x78], 0
	jne	.label_695
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0xe0], rax
	jmp	.label_694
.label_719:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0xd0], rax
.label_724:
	mov	rax, qword ptr [rbp - 0xd0]
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0xb8]
	mov	qword ptr [rbp - 0xa0], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x48]
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0xb8], rax
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x48], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x68]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rcx + 0xa0]
	mov	rsi, rax
	call	re_string_context_at
	mov	dword ptr [rbp - 0xa4], eax
	mov	rcx, qword ptr [rbp - 0x68]
	cmp	rcx, qword ptr [rbp - 0x28]
	jne	.label_715
	lea	rdi, [rbp - 0x98]
	mov	rsi, qword ptr [rbp - 0x20]
	call	re_node_set_init_1
	mov	dword ptr [rbp - 0x4c], eax
	cmp	dword ptr [rbp - 0x4c], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rsi, eax
	cmp	rsi, 0
	je	.label_723
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_690
.label_700:
	mov	dword ptr [rbp - 4], 1
.label_690:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xf0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409da1
	.globl sub_409da1
	.type sub_409da1, @function
sub_409da1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409db0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_727
	mov	eax,  dword ptr [dword ptr [exit_failure]]
	mov	dword ptr [rbp - 4], eax
	call	gettext
	xor	esi, esi
	movabs	rdx, OFFSET FLAT:label_605
	mov	edi, dword ptr [rbp - 4]
	mov	rcx, rax
	mov	al, 0
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x409def
	.globl sub_409def
	.type sub_409def, @function
sub_409def:

	nop	
.label_728:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x30], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x38], rax
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409e0a
	.globl sub_409e0a
	.type sub_409e0a, @function
sub_409e0a:

	nop	word ptr cs:[rax + rax]
.label_730:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x40]
	mov	qword ptr [rbp - 0x28], rax
.label_731:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x30]
	mov	qword ptr [rbp - 0x10], rax
.label_729:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x18]
	jge	.label_728
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x28]
	add	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx]
	movzx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 0x1c], edx
	movsxd	rax, dword ptr [rbp - 0x1c]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 0x78]
	mov	sil, byte ptr [rcx + rax]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 8]
	mov	byte ptr [rcx + rax], sil
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_729
	.section	.text
	.align	16
	#Procedure 0x409e91

	.globl re_string_translate_buffer
	.type re_string_translate_buffer, @function
re_string_translate_buffer:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 0x40]
	mov	rax, qword ptr [rbp - 8]
	cmp	rdi, qword ptr [rax + 0x58]
	jle	.label_730
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x58]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_731
.label_732:
	mov	qword ptr [rbp - 0x38], 0
	mov	rdi, qword ptr [rbp - 0x18]
	call	strlen
	mov	qword ptr [rbp - 0x40], rax
.label_735:
	mov	rax, qword ptr [rbp - 0x10]
	mov	cl, byte ptr [rax + 0x38]
	shr	cl, 4
	and	cl, 1
	movzx	edx, cl
	cmp	edx, 0
	je	.label_734
	xor	eax, eax
	mov	ecx, eax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	r8, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rbp - 0x40]
	mov	r10, qword ptr [rbp - 0x40]
	mov	eax, dword ptr [rbp - 0x2c]
	mov	qword ptr [rbp - 0x50], rcx
	mov	rcx, r8
	mov	r8, r9
	mov	r9, r10
	mov	qword ptr [rsp], 0
	mov	qword ptr [rsp + 8], 0
	mov	dword ptr [rsp + 0x10], eax
	call	re_search_internal
	mov	dword ptr [rbp - 0x30], eax
	jmp	.label_733
.label_734:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rbp - 0x40]
	mov	r9, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rbp - 0x20]
	mov	r10, qword ptr [rbp - 0x28]
	mov	r11d, dword ptr [rbp - 0x2c]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	dword ptr [rsp + 0x10], r11d
	call	re_search_internal
	mov	dword ptr [rbp - 0x30], eax
.label_733:
	cmp	dword ptr [rbp - 0x30], 0
	setne	al
	and	al, 1
	movzx	ecx, al
	mov	dword ptr [rbp - 4], ecx
.label_737:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409f8e
	.globl sub_409f8e
	.type sub_409f8e, @function
sub_409f8e:

	nop	
.label_736:
	mov	eax, dword ptr [rbp - 0x2c]
	and	eax, 4
	cmp	eax, 0
	je	.label_732
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_735
	.section	.text
	.align	16
	#Procedure 0x409fbb
	.globl rpl_regexec
	.type rpl_regexec, @function
rpl_regexec:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	dword ptr [rbp - 0x2c], r8d
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 0x48], rcx
	mov	r8d, dword ptr [rbp - 0x2c]
	and	r8d, 0xfffffff8
	cmp	r8d, 0
	je	.label_736
	mov	dword ptr [rbp - 4], 2
	jmp	.label_737
.label_739:
	xor	esi, esi
	mov	eax, 0x18
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, rcx
	call	memset
.label_741:
	mov	dword ptr [rbp - 4], 0
.label_738:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a025
	.globl sub_40a025
	.type sub_40a025, @function
sub_40a025:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40a029

	.globl re_node_set_init_copy
	.type re_node_set_init_copy, @function
re_node_set_init_copy:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rsi + 8]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 8], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	cmp	qword ptr [rsi + 8], 0
	jle	.label_739
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	shl	rax, 3
	mov	rdi, rax
	call	malloc
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x10], 0
	sete	dl
	and	dl, 1
	movzx	esi, dl
	movsxd	rax, esi
	cmp	rax, 0
	je	.label_740
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 8], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax], 0
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_738
.label_740:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 8]
	shl	rdx, 3
	mov	rdi, rax
	mov	rsi, rcx
	call	memcpy
	jmp	.label_741
	.section	.text
	.align	16
	#Procedure 0x40a0f0

	.globl usage
	.type usage, @function
usage:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0
	je	.label_752
	jmp	.label_744
.label_744:
	movabs	rdi, OFFSET FLAT:label_746
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x10], rax
	call	gettext
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_754
.label_752:
	movabs	rdi, OFFSET FLAT:label_743
	call	gettext
	mov	rsi,  qword ptr [word ptr [program_name]]
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_751
	mov	dword ptr [rbp - 0x18], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x1c], eax
	call	emit_stdin_note
	call	emit_mandatory_arg_note
	movabs	rdi, OFFSET FLAT:label_747
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_753
	mov	dword ptr [rbp - 0x20], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_748
	mov	dword ptr [rbp - 0x24], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_755
	mov	dword ptr [rbp - 0x28], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_749
	mov	dword ptr [rbp - 0x2c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_742
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_750
	mov	dword ptr [rbp - 0x34], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_745
	mov	dword ptr [rbp - 0x38], eax
	call	emit_ancillary_info
.label_754:
	mov	edi, dword ptr [rbp - 4]
	call	exit
.label_764:
	mov	rax, qword ptr [rbp - 0x20]
	mov	cl, byte ptr [rax + 0x68]
	shr	cl, 6
	and	cl, 1
	movzx	edx, cl
	cmp	edx, 0
	je	.label_761
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 8
	mov	rsi, rax
	call	transit_state_bkref
	mov	rsi, qword ptr [rbp - 0x10]
	mov	dword ptr [rsi], eax
	mov	rsi, qword ptr [rbp - 0x10]
	cmp	dword ptr [rsi], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rsi, eax
	cmp	rsi, 0
	je	.label_759
	mov	qword ptr [rbp - 8], 0
	jmp	.label_760
.label_759:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0xb8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x20], rax
.label_761:
	jmp	.label_756
.label_756:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_760:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a32b
	.globl sub_40a32b
	.type sub_40a32b, @function
sub_40a32b:

	nop	dword ptr [rax]
.label_767:
	mov	qword ptr [rbp - 0x68], 0
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0xb8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 0x50]
	mov	qword ptr [rbp - 0x60], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_763
	lea	rdi, [rbp - 0x58]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x50]
	mov	qword ptr [rbp - 0x68], rax
	mov	rsi, qword ptr [rbp - 0x68]
	mov	rdx, qword ptr [rbp - 0x60]
	call	re_node_set_init_union
	mov	rdx, qword ptr [rbp - 0x10]
	mov	dword ptr [rdx], eax
	mov	rdx, qword ptr [rbp - 0x10]
	cmp	dword ptr [rdx], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rdx, eax
	cmp	rdx, 0
	je	.label_757
	mov	qword ptr [rbp - 8], 0
	jmp	.label_760
.label_763:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rax]
	mov	qword ptr [rbp - 0x58], rcx
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x50], rcx
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x48], rax
.label_762:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x48]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rcx + 0xa0]
	mov	rsi, rax
	call	re_string_context_at
	lea	rdx, [rbp - 0x58]
	mov	dword ptr [rbp - 0x3c], eax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rbp - 0x3c]
	call	re_acquire_state_context
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rsi + 0xb8]
	mov	qword ptr [rsi + rdx*8], rax
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_758
	mov	rax, qword ptr [rbp - 0x48]
	mov	rdi, rax
	call	free
.label_758:
	jmp	.label_765
.label_765:
	jmp	.label_766
.label_766:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax + 0x98], 0
	je	.label_756
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_756
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 8
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rsi, rax
	call	check_subexp_matching_top
	mov	rdx, qword ptr [rbp - 0x10]
	mov	dword ptr [rdx], eax
	mov	rdx, qword ptr [rbp - 0x10]
	cmp	dword ptr [rdx], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rdx, eax
	cmp	rdx, 0
	je	.label_764
	mov	qword ptr [rbp - 8], 0
	jmp	.label_760
.label_757:
	jmp	.label_762
	.section	.text
	.align	16
	#Procedure 0x40a4ab

	.globl merge_state_with_log
	.type merge_state_with_log, @function
merge_state_with_log:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x98]
	mov	qword ptr [rbp - 0x28], rdx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x48]
	mov	qword ptr [rbp - 0x30], rdx
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x18]
	cmp	rdx, qword ptr [rsi + 0xc0]
	jle	.label_768
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0xb8]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0xc0], rax
	jmp	.label_766
.label_768:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0xb8]
	cmp	qword ptr [rcx + rax*8], 0
	jne	.label_767
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0xb8]
	mov	qword ptr [rdx + rcx*8], rax
	jmp	.label_765
	.section	.text
	.align	16
	#Procedure 0x40a550

	.globl calc_state_hash
	.type calc_state_hash, @function
calc_state_hash:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 8]
	mov	esi, dword ptr [rbp - 0xc]
	mov	eax, esi
	add	rdi, rax
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x20], 0
.label_769:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_770
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_769
.label_770:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a5b8
	.globl sub_40a5b8
	.type sub_40a5b8, @function
sub_40a5b8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a5c0
	.globl quotearg_style
	.type quotearg_style, @function
quotearg_style:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	esi, dword ptr [rbp - 4]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	edi, eax
	call	quotearg_n_style
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a5e5
	.globl sub_40a5e5
	.type sub_40a5e5, @function
sub_40a5e5:

	nop	word ptr cs:[rax + rax]
.label_820:
	movabs	rdi, OFFSET FLAT:label_813
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x54], eax
	jmp	.label_775
.label_815:
	mov	edi, 0x22
	call	putchar_unlocked
	mov	edi, 0x22
	mov	dword ptr [rbp - 0xc4], eax
	call	putchar_unlocked
	mov	dword ptr [rbp - 0xc8], eax
	jmp	.label_786
.label_798:
	mov	edi, 0x20
	call	putchar_unlocked
	mov	dword ptr [rbp - 0xdc], eax
.label_786:
	jmp	.label_791
.label_791:
	jmp	.label_794
.label_3890:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	ecx, eax
	sub	ecx, 0x41
	mov	dword ptr [rbp - 0x38], eax
	mov	dword ptr [rbp - 0x3c], ecx
	je	.label_796
	jmp	.label_801
.label_801:
	mov	eax, dword ptr [rbp - 0x38]
	sub	eax, 0x4f
	mov	dword ptr [rbp - 0x40], eax
	je	.label_803
	jmp	.label_806
.label_806:
	mov	eax, dword ptr [rbp - 0x38]
	sub	eax, 0x61
	mov	dword ptr [rbp - 0x44], eax
	je	.label_820
	jmp	.label_809
.label_809:
	mov	eax, dword ptr [rbp - 0x38]
	sub	eax, 0x6f
	mov	dword ptr [rbp - 0x48], eax
	jne	.label_810
	jmp	.label_812
.label_812:
	movabs	rdi, OFFSET FLAT:label_818
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x4c], eax
	jmp	.label_775
.label_3897:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	ecx, eax
	sub	ecx, 0x41
	mov	dword ptr [rbp - 0x78], eax
	mov	dword ptr [rbp - 0x7c], ecx
	je	.label_817
	jmp	.label_773
.label_773:
	mov	eax, dword ptr [rbp - 0x78]
	sub	eax, 0x61
	mov	dword ptr [rbp - 0x80], eax
	jne	.label_822
	jmp	.label_823
.label_823:
	movabs	rdi, OFFSET FLAT:label_824
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_778
.label_795:
	mov	edi, 0x20
	call	putchar_unlocked
	mov	dword ptr [rbp - 0xa4], eax
.label_807:
	jmp	.label_779
.label_779:
	jmp	.label_791
.label_3898:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	ecx, eax
	sub	ecx, 0x4f
	mov	dword ptr [rbp - 0x90], eax
	mov	dword ptr [rbp - 0x94], ecx
	je	.label_771
	jmp	.label_792
.label_792:
	mov	eax, dword ptr [rbp - 0x90]
	sub	eax, 0x6f
	mov	dword ptr [rbp - 0x98], eax
	jne	.label_795
	jmp	.label_799
.label_799:
	movabs	rdi, OFFSET FLAT:label_802
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x9c], eax
	jmp	.label_807
.label_804:
	add	rsp, 0xe0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a78f
	.globl sub_40a78f
	.type sub_40a78f, @function
sub_40a78f:

	nop	word ptr cs:[rax + rax]
.label_771:
	movabs	rdi, OFFSET FLAT:label_811
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	dword ptr [rbp - 0xa0], eax
	jmp	.label_807
.label_796:
	movabs	rdi, OFFSET FLAT:label_816
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_775
	.section	.text
	.align	16
	#Procedure 0x40a7de

	.globl print_field
	.type print_field, @function
print_field:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xe0
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 8], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rsi
.label_777:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 8]
	jae	.label_804
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x21], cl
	movzx	edx, byte ptr [rbp - 0x21]
	mov	eax, edx
	cmp	byte ptr [byte ptr [+ (rax * 1) + edited_flag]],  0
	je	.label_787
	movzx	eax, byte ptr [rbp - 0x21]
	mov	ecx, eax
	movsx	eax,  byte ptr [byte ptr [+ (rcx * 1) + diacrit_diac]]
	mov	dword ptr [rbp - 0x20], eax
	cmp	dword ptr [rbp - 0x20], 0
	je	.label_781
	cmp	dword ptr [dword ptr [output_format]],  3
	jne	.label_781
	movzx	eax, byte ptr [rbp - 0x21]
	mov	ecx, eax
	movsx	eax,  byte ptr [byte ptr [rcx + diacrit_base]]
	mov	dword ptr [rbp - 0x1c], eax
	mov	eax, dword ptr [rbp - 0x20]
	dec	eax
	mov	ecx, eax
	sub	eax, 8
	mov	qword ptr [rbp - 0x30], rcx
	mov	dword ptr [rbp - 0x34], eax
	ja	.label_779
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_805]]
	jmp	rcx
.label_3893:
	movabs	rdi, OFFSET FLAT:label_808
	movabs	rax, OFFSET FLAT:label_783
	movabs	rcx, OFFSET FLAT:label_784
	cmp	dword ptr [rbp - 0x1c], 0x69
	cmove	rax, rcx
	mov	edx, dword ptr [rbp - 0x1c]
	mov	rsi, rax
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_779
.label_810:
	mov	edi, 0x20
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x5c], eax
.label_775:
	jmp	.label_779
.label_822:
	mov	edi, 0x20
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x8c], eax
.label_778:
	jmp	.label_779
.label_788:
	movabs	rdi, OFFSET FLAT:label_821
	movzx	esi, byte ptr [rbp - 0x21]
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0xd4], eax
	jmp	.label_786
.label_817:
	movabs	rdi, OFFSET FLAT:label_772
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x88], eax
	jmp	.label_778
.label_3894:
	movabs	rdi, OFFSET FLAT:label_782
	movabs	rax, OFFSET FLAT:label_783
	movabs	rcx, OFFSET FLAT:label_784
	cmp	dword ptr [rbp - 0x1c], 0x69
	cmove	rax, rcx
	mov	edx, dword ptr [rbp - 0x1c]
	mov	rsi, rax
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x6c], eax
	jmp	.label_779
.label_3891:
	movabs	rdi, OFFSET FLAT:label_800
	movabs	rax, OFFSET FLAT:label_783
	movabs	rcx, OFFSET FLAT:label_784
	cmp	dword ptr [rbp - 0x1c], 0x69
	cmove	rax, rcx
	mov	edx, dword ptr [rbp - 0x1c]
	mov	rsi, rax
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x60], eax
	jmp	.label_779
.label_3892:
	movabs	rdi, OFFSET FLAT:label_800
	movabs	rax, OFFSET FLAT:label_783
	movabs	rcx, OFFSET FLAT:label_784
	cmp	dword ptr [rbp - 0x1c], 0x69
	cmove	rax, rcx
	mov	edx, dword ptr [rbp - 0x1c]
	mov	rsi, rax
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x64], eax
	jmp	.label_779
.label_774:
	mov	edi, 0x5c
	call	putchar_unlocked
	movzx	edi, byte ptr [rbp - 0x21]
	mov	dword ptr [rbp - 0xcc], eax
	call	putchar_unlocked
	mov	dword ptr [rbp - 0xd0], eax
	jmp	.label_786
.label_787:
	mov	rax, qword ptr [rbp - 0x18]
	movsx	edi, byte ptr [rax]
	call	putchar_unlocked
	mov	dword ptr [rbp - 0xe0], eax
.label_794:
	jmp	.label_776
.label_776:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_777
.label_3896:
	movabs	rdi, OFFSET FLAT:label_780
	mov	esi, dword ptr [rbp - 0x1c]
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x74], eax
	jmp	.label_779
.label_826:
	movabs	rdi, OFFSET FLAT:label_789
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	dword ptr [rbp - 0xd8], eax
	jmp	.label_786
.label_3895:
	movabs	rdi, OFFSET FLAT:label_793
	movabs	rax, OFFSET FLAT:label_783
	movabs	rcx, OFFSET FLAT:label_784
	cmp	dword ptr [rbp - 0x1c], 0x69
	cmove	rax, rcx
	mov	edx, dword ptr [rbp - 0x1c]
	mov	rsi, rax
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x70], eax
	jmp	.label_779
.label_803:
	movabs	rdi, OFFSET FLAT:label_814
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x50], eax
	jmp	.label_775
.label_781:
	movzx	eax, byte ptr [rbp - 0x21]
	mov	ecx, eax
	sub	ecx, 0x22
	mov	dword ptr [rbp - 0xa8], eax
	mov	dword ptr [rbp - 0xac], ecx
	je	.label_815
	jmp	.label_819
.label_819:
	mov	eax, dword ptr [rbp - 0xa8]
	add	eax, -0x23
	sub	eax, 4
	mov	dword ptr [rbp - 0xb0], eax
	jb	.label_774
	jmp	.label_825
.label_825:
	mov	eax, dword ptr [rbp - 0xa8]
	sub	eax, 0x5c
	mov	dword ptr [rbp - 0xb4], eax
	je	.label_826
	jmp	.label_797
.label_797:
	mov	eax, dword ptr [rbp - 0xa8]
	sub	eax, 0x5f
	mov	dword ptr [rbp - 0xb8], eax
	je	.label_774
	jmp	.label_785
.label_785:
	mov	eax, dword ptr [rbp - 0xa8]
	sub	eax, 0x7b
	mov	dword ptr [rbp - 0xbc], eax
	je	.label_788
	jmp	.label_790
.label_790:
	mov	eax, dword ptr [rbp - 0xa8]
	sub	eax, 0x7d
	mov	dword ptr [rbp - 0xc0], eax
	je	.label_788
	jmp	.label_798
.label_829:
	test	byte ptr [byte ptr [gnu_extensions]],  1
	jne	.label_827
	mov	byte ptr [byte ptr [label_830]],  0
	mov	byte ptr [byte ptr [label_831]],  0
	mov	byte ptr [byte ptr [label_832]],  0
.label_827:
	mov	rdi, qword ptr [rbp - 0x18]
	call	free
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ab95
	.globl sub_40ab95
	.type sub_40ab95, @function
sub_40ab95:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40ab9c

	.globl digest_break_file
	.type digest_break_file, @function
digest_break_file:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	lea	rsi, [rbp - 0x18]
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	swallow_file_in_memory
	movabs	rdi, OFFSET FLAT:word_fastmap
	mov	esi, 1
	mov	eax, 0x100
	mov	edx, eax
	call	memset
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rdx
.label_828:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_829
	mov	rax, qword ptr [rbp - 0x20]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	mov	byte ptr [byte ptr [+ (rcx * 1) + word_fastmap]],  0
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_828
	.section	.text
	.align	16
	#Procedure 0x40ac10
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x21
	sub	edi, 0x5d
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_833
	jmp	.label_835
.label_835:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_834
.label_833:
	mov	byte ptr [rbp - 1], 0
.label_834:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ac42
	.globl sub_40ac42
	.type sub_40ac42, @function
sub_40ac42:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ac50

	.globl re_node_set_merge
	.type re_node_set_merge, @function
re_node_set_merge:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_842
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 8], 0
	jne	.label_852
.label_842:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_841
.label_850:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rcx + 8]
	mov	qword ptr [rcx + 8], rax
.label_856:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x10]
	cmp	rax, qword ptr [rdx + rcx*8]
	jle	.label_843
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x20], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rsi, rdx
	add	rsi, -1
	mov	qword ptr [rbp - 0x38], rsi
	add	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	qword ptr [rdx + rcx*8], rax
	cmp	qword ptr [rbp - 0x38], 0
	jne	.label_857
	jmp	.label_837
.label_852:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 8]
	shl	rcx, 1
	mov	rdx, qword ptr [rbp - 0x10]
	add	rcx, qword ptr [rdx + 8]
	cmp	rax, rcx
	jge	.label_838
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rcx]
	shl	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x40]
	shl	rcx, 3
	mov	rdi, rax
	mov	rsi, rcx
	call	realloc
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x48], 0
	sete	dl
	and	dl, 1
	movzx	r8d, dl
	movsxd	rax, r8d
	cmp	rax, 0
	je	.label_848
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_841
.label_848:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
.label_838:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0
	sete	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_851
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 8]
	shl	rdx, 3
	mov	rdi, rax
	mov	rsi, rcx
	call	memcpy
	mov	dword ptr [rbp - 4], 0
	jmp	.label_841
.label_854:
	jmp	.label_846
.label_846:
	jmp	.label_856
.label_847:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x10]
	cmp	rax, qword ptr [rdx + rcx*8]
	jge	.label_840
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x20], rcx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, rcx
	add	rdx, -1
	mov	qword ptr [rbp - 0x30], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	qword ptr [rdx + rcx*8 - 8], rax
	jmp	.label_855
.label_857:
	jmp	.label_846
.label_851:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 8]
	shl	rcx, 1
	add	rax, rcx
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	sub	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	sub	rax, 1
	mov	qword ptr [rbp - 0x28], rax
.label_844:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x20], 0
	mov	byte ptr [rbp - 0x49], cl
	jl	.label_853
	cmp	qword ptr [rbp - 0x28], 0
	setge	al
	mov	byte ptr [rbp - 0x49], al
.label_853:
	mov	al, byte ptr [rbp - 0x49]
	test	al, 1
	jne	.label_839
	jmp	.label_845
.label_839:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x10]
	cmp	rax, qword ptr [rdx + rcx*8]
	jne	.label_847
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, -1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, -1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_836
.label_845:
	cmp	qword ptr [rbp - 0x20], 0
	jl	.label_849
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x30], rcx
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x30]
	shl	rcx, 3
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rdx, qword ptr [rbp - 0x20]
	add	rdx, 1
	shl	rdx, 3
	mov	rdi, rax
	mov	rsi, rcx
	call	memcpy
.label_849:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	sub	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 8]
	shl	rcx, 1
	add	rax, rcx
	sub	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	cmp	qword ptr [rbp - 0x38], 0
	jne	.label_850
	mov	dword ptr [rbp - 4], 0
	jmp	.label_841
.label_840:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, -1
	mov	qword ptr [rbp - 0x28], rax
.label_855:
	jmp	.label_836
.label_836:
	jmp	.label_844
.label_837:
	mov	dword ptr [rbp - 4], 0
.label_841:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40afec
	.globl sub_40afec
	.type sub_40afec, @function
sub_40afec:

	nop	dword ptr [rax]
.label_843:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x28]
	add	rcx, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, -1
	mov	qword ptr [rbp - 0x28], rax
	cmp	rax, 0
	jge	.label_854
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rdx, qword ptr [rbp - 0x30]
	shl	rdx, 3
	add	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x38]
	shl	rdx, 3
	mov	rdi, rax
	mov	rsi, rcx
	call	memcpy
	jmp	.label_837
.label_858:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x70], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax + 0x80], 0xf
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x68], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x20]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x20], 0
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b0a8
	.globl sub_40b0a8
	.type sub_40b0a8, @function
sub_40b0a8:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b0ae

	.globl free_workarea_compile
	.type free_workarea_compile, @function
free_workarea_compile:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi + 0x70]
	mov	qword ptr [rbp - 0x18], rdi
.label_859:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_858
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_859
	.section	.text
	.align	16
	#Procedure 0x40b100

	.globl re_string_wchar_at
	.type re_string_wchar_at, @function
re_string_wchar_at:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	cmp	dword ptr [rsi + 0x90], 1
	jne	.label_860
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 8]
	movzx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 4], edx
	jmp	.label_861
.label_860:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	edx, dword ptr [rcx + rax*4]
	mov	dword ptr [rbp - 4], edx
.label_861:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b14c
	.globl sub_40b14c
	.type sub_40b14c, @function
sub_40b14c:

	nop	dword ptr [rax]
.label_866:
	mov	dword ptr [rbp - 4], 0
.label_873:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x90
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b163
	.globl sub_40b163
	.type sub_40b163, @function
sub_40b163:

	nop	dword ptr [rax]
.label_885:
	xor	eax, eax
	mov	dword ptr [rbp - 0x7c], eax
	jmp	.label_876
.label_876:
	mov	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x78], eax
.label_886:
	mov	eax, dword ptr [rbp - 0x78]
	mov	dword ptr [rbp - 0x40], eax
	mov	rcx, qword ptr [rbp - 0x30]
	cmp	dword ptr [rcx], 0
	je	.label_880
	mov	rax, qword ptr [rbp - 0x30]
	cmp	dword ptr [rax], 3
	jne	.label_867
.label_880:
	mov	eax, dword ptr [rbp - 0x3c]
	mov	cl, al
	mov	rsi, qword ptr [rbp - 0x20]
	movzx	edi, cl
	call	parse_byte
	mov	dword ptr [rbp - 0x80], eax
	jmp	.label_877
.label_863:
	jmp	.label_878
.label_878:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_879
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rcx + 0x40]
	sete	dl
	and	dl, 1
	movzx	esi, dl
	movsxd	rax, esi
	cmp	rax, 0
	je	.label_862
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x40]
	shl	rax, 1
	add	rax, 1
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x68]
	shl	rcx, 2
	mov	rdi, rax
	mov	rsi, rcx
	call	realloc
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x68]
	shl	rcx, 2
	mov	rdi, rax
	mov	rsi, rcx
	call	realloc
	mov	dl, 1
	mov	qword ptr [rbp - 0x60], rax
	cmp	qword ptr [rbp - 0x58], 0
	mov	byte ptr [rbp - 0x86], dl
	je	.label_869
	cmp	qword ptr [rbp - 0x60], 0
	sete	al
	mov	byte ptr [rbp - 0x86], al
.label_869:
	mov	al, byte ptr [rbp - 0x86]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_872
	mov	rax, qword ptr [rbp - 0x58]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdi, rax
	call	free
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_873
.label_875:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x10]
	and	rdx, 0x10000
	cmp	rdx, 0
	mov	byte ptr [rbp - 0x85], cl
	je	.label_871
	mov	eax, dword ptr [rbp - 0x48]
	cmp	eax, dword ptr [rbp - 0x4c]
	seta	cl
	mov	byte ptr [rbp - 0x85], cl
.label_871:
	mov	al, byte ptr [rbp - 0x85]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_863
	mov	dword ptr [rbp - 4], 0xb
	jmp	.label_873
.label_884:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	dword ptr [rax], 3
	jne	.label_891
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 8]
	movzx	ecx, byte ptr [rax]
	mov	dword ptr [rbp - 0x74], ecx
	jmp	.label_893
.label_874:
	mov	rax, qword ptr [rbp - 0x38]
	mov	ecx, dword ptr [rax + 8]
	mov	dword ptr [rbp - 0x84], ecx
.label_882:
	mov	eax, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x4c], eax
	cmp	dword ptr [rbp - 0x48], -1
	je	.label_870
	cmp	dword ptr [rbp - 0x4c], -1
	jne	.label_875
.label_870:
	mov	dword ptr [rbp - 4], 3
	jmp	.label_873
.label_890:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	dword ptr [rax], 3
	jne	.label_894
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdi, qword ptr [rcx + 8]
	mov	byte ptr [rbp - 0x6a], al
	call	strlen
	cmp	rax, 1
	mov	dl, byte ptr [rbp - 0x6a]
	mov	byte ptr [rbp - 0x6b], dl
	ja	.label_888
.label_894:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x38]
	cmp	dword ptr [rdx], 3
	mov	byte ptr [rbp - 0x6c], cl
	jne	.label_892
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rax + 8]
	call	strlen
	cmp	rax, 1
	seta	cl
	mov	byte ptr [rbp - 0x6c], cl
.label_892:
	mov	al, byte ptr [rbp - 0x6c]
	mov	byte ptr [rbp - 0x6b], al
.label_888:
	mov	al, byte ptr [rbp - 0x6b]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_889
	mov	dword ptr [rbp - 4], 3
	jmp	.label_873
	.section	.text
	.align	16
	#Procedure 0x40b3bd

	.globl build_range_exp
	.type build_range_exp, @function
build_range_exp:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x90
	mov	al, 1
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	qword ptr [rbp - 0x38], r9
	mov	rcx, qword ptr [rbp - 0x30]
	cmp	dword ptr [rcx], 2
	mov	byte ptr [rbp - 0x69], al
	je	.label_883
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x30]
	cmp	dword ptr [rcx], 4
	mov	byte ptr [rbp - 0x69], al
	je	.label_883
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	dword ptr [rcx], 2
	mov	byte ptr [rbp - 0x69], al
	je	.label_883
	mov	rax, qword ptr [rbp - 0x38]
	cmp	dword ptr [rax], 4
	sete	cl
	mov	byte ptr [rbp - 0x69], cl
.label_883:
	mov	al, byte ptr [rbp - 0x69]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_890
	mov	dword ptr [rbp - 4], 0xb
	jmp	.label_873
.label_867:
	mov	rax, qword ptr [rbp - 0x30]
	mov	ecx, dword ptr [rax + 8]
	mov	dword ptr [rbp - 0x80], ecx
.label_877:
	mov	eax, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0x48], eax
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	dword ptr [rcx], 0
	je	.label_868
	mov	rax, qword ptr [rbp - 0x38]
	cmp	dword ptr [rax], 3
	jne	.label_874
.label_868:
	mov	eax, dword ptr [rbp - 0x40]
	mov	cl, al
	mov	rsi, qword ptr [rbp - 0x20]
	movzx	edi, cl
	call	parse_byte
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_882
.label_889:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	dword ptr [rax], 0
	jne	.label_884
	mov	rax, qword ptr [rbp - 0x30]
	movzx	ecx, byte ptr [rax + 8]
	mov	dword ptr [rbp - 0x70], ecx
	jmp	.label_887
.label_872:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
.label_862:
	mov	eax, dword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 0x40]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rdx + 8]
	mov	dword ptr [rdx + rcx*4], eax
	mov	eax, dword ptr [rbp - 0x4c]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rcx + 0x40]
	mov	rsi, rdx
	add	rsi, 1
	mov	qword ptr [rcx + 0x40], rsi
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	dword ptr [rcx + rdx*4], eax
.label_879:
	mov	dword ptr [rbp - 0x44], 0
.label_864:
	cmp	dword ptr [rbp - 0x44], 0x100
	jge	.label_866
	mov	eax, dword ptr [rbp - 0x48]
	cmp	eax, dword ptr [rbp - 0x44]
	ja	.label_865
	mov	eax, dword ptr [rbp - 0x44]
	cmp	eax, dword ptr [rbp - 0x4c]
	ja	.label_865
	mov	rdi, qword ptr [rbp - 0x18]
	movsxd	rsi, dword ptr [rbp - 0x44]
	call	bitset_set
.label_865:
	jmp	.label_881
.label_881:
	mov	eax, dword ptr [rbp - 0x44]
	add	eax, 1
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_864
.label_895:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	dword ptr [rax], 3
	jne	.label_885
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 8]
	movzx	ecx, byte ptr [rax]
	mov	dword ptr [rbp - 0x7c], ecx
	jmp	.label_876
.label_891:
	xor	eax, eax
	mov	dword ptr [rbp - 0x74], eax
	jmp	.label_893
.label_893:
	mov	eax, dword ptr [rbp - 0x74]
	mov	dword ptr [rbp - 0x70], eax
.label_887:
	mov	eax, dword ptr [rbp - 0x70]
	mov	dword ptr [rbp - 0x3c], eax
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	dword ptr [rcx], 0
	jne	.label_895
	mov	rax, qword ptr [rbp - 0x38]
	movzx	ecx, byte ptr [rax + 8]
	mov	dword ptr [rbp - 0x78], ecx
	jmp	.label_886
	.section	.text
	.align	16
	#Procedure 0x40b5a0

	.globl is_basic
	.type is_basic, @function
is_basic:
	push	rbp
	mov	rbp, rsp
	mov	al, dil
	mov	byte ptr [rbp - 1], al
	movzx	edi, byte ptr [rbp - 1]
	sar	edi, 5
	movsxd	rcx, edi
	mov	edi,  dword ptr [dword ptr [+ (rcx * 4) + is_basic_table]]
	movzx	edx, byte ptr [rbp - 1]
	and	edx, 0x1f
	mov	ecx, edx
	shr	edi, cl
	and	edi, 1
	cmp	edi, 0
	setne	al
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b5d6
	.globl sub_40b5d6
	.type sub_40b5d6, @function
sub_40b5d6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b5e0

	.globl digest_word_file
	.type digest_word_file, @function
digest_word_file:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	lea	rax, [rbp - 0x20]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, rax
	call	swallow_file_in_memory
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 8], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x10], 0
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x28], rax
.label_902:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_899
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x30], rax
.label_896:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x28]
	cmp	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rbp - 0x31], cl
	jae	.label_898
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0xa
	setne	dl
	mov	byte ptr [rbp - 0x31], dl
.label_898:
	mov	al, byte ptr [rbp - 0x31]
	test	al, 1
	jne	.label_897
	jmp	.label_901
.label_897:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_896
.label_901:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x30]
	jbe	.label_900
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	jne	.label_903
	mov	eax, 0x10
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	mov	rsi, qword ptr [rbp - 0x10]
	add	rsi, 8
	mov	rdi, rcx
	call	x2nrealloc
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
.label_903:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rdx, qword ptr [rbp - 0x10]
	shl	rcx, 4
	add	rcx, qword ptr [rdx]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rax, rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rdx, qword ptr [rbp - 0x10]
	shl	rcx, 4
	add	rcx, qword ptr [rdx]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x10]
	add	rcx, 1
	mov	qword ptr [rax + 0x10], rcx
.label_900:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_904
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
.label_904:
	jmp	.label_902
.label_899:
	mov	eax, 0x10
	mov	edx, eax
	movabs	rcx, OFFSET FLAT:compare_words
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi + 0x10]
	mov	qword ptr [rbp - 0x40], rdi
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 0x40]
	call	qsort
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b771
	.globl sub_40b771
	.type sub_40b771, @function
sub_40b771:

	nop	word ptr cs:[rax + rax]
.label_925:
	cmp	dword ptr [rbp - 0x24], 1
	jne	.label_905
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx]
	seta	dl
	and	dl, 1
	movzx	esi, dl
	movsxd	rax, esi
	cmp	rax, 0
	je	.label_912
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x38]
	shl	rcx, 3
	mov	rdi, rax
	mov	rsi, rcx
	call	realloc
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x40], 0
	sete	dl
	and	dl, 1
	movzx	r8d, dl
	movsxd	rax, r8d
	cmp	rax, 0
	je	.label_908
	mov	dword ptr [rbp - 4], 0
	jmp	.label_918
.label_919:
	mov	dword ptr [rbp - 0x28], 2
.label_915:
	jmp	.label_920
.label_920:
	mov	qword ptr [rbp - 0x30], 0
.label_914:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x20]
	jge	.label_921
	mov	rax, qword ptr [rbp - 0x30]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 8]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x30]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_914
.label_924:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	jmp	.label_920
.label_916:
	mov	eax, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 4], eax
.label_918:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b883
	.globl sub_40b883
	.type sub_40b883, @function
sub_40b883:

	nop	dword ptr [rax]
.label_917:
	movabs	rdi, OFFSET FLAT:label_909
	movabs	rsi, OFFSET FLAT:label_491
	mov	edx, 0x1fb
	movabs	rcx, OFFSET FLAT:label_910
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x40b8af

	.globl re_copy_regs
	.type re_copy_regs, @function
re_copy_regs:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	dword ptr [rbp - 0x24], ecx
	mov	dword ptr [rbp - 0x28], 1
	mov	rdx, qword ptr [rbp - 0x20]
	add	rdx, 1
	mov	qword ptr [rbp - 0x38], rdx
	cmp	dword ptr [rbp - 0x24], 0
	jne	.label_925
	mov	rax, qword ptr [rbp - 0x38]
	shl	rax, 3
	mov	rdi, rax
	call	malloc
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0
	sete	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_923
	mov	dword ptr [rbp - 4], 0
	jmp	.label_918
.label_913:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x20]
	jb	.label_917
	jmp	.label_919
.label_906:
	movabs	rdi, OFFSET FLAT:label_922
	movabs	rsi, OFFSET FLAT:label_491
	mov	edx, 0x1f9
	movabs	rcx, OFFSET FLAT:label_910
	call	__assert_fail
.label_921:
	jmp	.label_907
.label_907:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx]
	jae	.label_916
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	qword ptr [rcx + rax*8], -1
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rcx + rax*8], -1
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_907
.label_911:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
.label_912:
	jmp	.label_915
.label_923:
	mov	rax, qword ptr [rbp - 0x38]
	shl	rax, 3
	mov	rdi, rax
	call	malloc
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x10], 0
	sete	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_924
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	rdi, rax
	call	free
	mov	dword ptr [rbp - 4], 0
	jmp	.label_918
.label_908:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x38]
	shl	rcx, 3
	mov	rdi, rax
	mov	rsi, rcx
	call	realloc
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x48], 0
	sete	dl
	and	dl, 1
	movzx	r8d, dl
	movsxd	rax, r8d
	cmp	rax, 0
	je	.label_911
	mov	rax, qword ptr [rbp - 0x40]
	mov	rdi, rax
	call	free
	mov	dword ptr [rbp - 4], 0
	jmp	.label_918
.label_905:
	cmp	dword ptr [rbp - 0x24], 2
	jne	.label_906
	jmp	.label_913
	.section	.text
	.align	16
	#Procedure 0x40ba90

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_926
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	jne	.label_927
.label_926:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
	jmp	.label_928
.label_927:
	mov	rdi, qword ptr [rbp - 0x10]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
.label_928:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40bae8
	.globl sub_40bae8
	.type sub_40bae8, @function
sub_40bae8:

	nop	dword ptr [rax + rax]
.label_988:
	mov	eax, 6
	mov	ecx, eax
	mov	qword ptr [rbp - 0xe0], rcx
	jmp	.label_960
.label_960:
	mov	rax, qword ptr [rbp - 0xe0]
	mov	ecx, eax
	mov	dword ptr [rbp - 0xa4], ecx
.label_949:
	mov	eax, dword ptr [rbp - 0xa4]
	add	eax, -1
	mov	dword ptr [rbp - 0xa4], eax
	cmp	eax, 0
	jl	.label_933
	movsxd	rax, dword ptr [rbp - 0xa4]
	mov	rcx, qword ptr [rbp - 0x68]
	movzx	edx, byte ptr [rcx + rax]
	mov	eax, edx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x78]
	mov	sil, byte ptr [rcx + rax]
	movsxd	rax, dword ptr [rbp - 0xa4]
	mov	byte ptr [rbp + rax - 0x8e], sil
	jmp	.label_949
.label_934:
	jmp	.label_953
.label_953:
	cmp	dword ptr [rbp - 0x54], -1
	jne	.label_954
	lea	rdx, [rbp - 0x54]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	re_string_skip_chars
	sub	rax, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x30], rax
.label_954:
	cmp	dword ptr [rbp - 0x54], -1
	jne	.label_930
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x48]
	sub	rax, 1
	mov	edx, dword ptr [rbp - 0x1c]
	mov	rsi, rax
	call	re_string_context_at
	mov	rsi, qword ptr [rbp - 0x10]
	mov	dword ptr [rsi + 0x70], eax
	jmp	.label_939
.label_971:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	sub	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x30], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x30], 0
	je	.label_973
	mov	qword ptr [rbp - 0x30], 0
.label_1003:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x30]
	jge	.label_1006
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	dword ptr [rcx + rax*4], 0xffffffff
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1003
.label_946:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x78], 0
	je	.label_942
	mov	rdi, qword ptr [rbp - 0x10]
	call	re_string_translate_buffer
.label_942:
	jmp	.label_932
.label_932:
	jmp	.label_944
.label_956:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	byte ptr [rax + 0x8b], 0
	je	.label_945
	mov	esi, 0xff
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax + 8]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rax + 0x30]
	call	memset
.label_945:
	jmp	.label_952
.label_952:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x38], rax
	jmp	.label_955
.label_1002:
	jmp	.label_964
.label_940:
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [rbp - 0x54], 0xa
	mov	byte ptr [rbp - 0xf5], cl
	jne	.label_931
	mov	rax, qword ptr [rbp - 0x10]
	movzx	ecx, byte ptr [rax + 0x8d]
	cmp	ecx, 0
	setne	dl
	mov	byte ptr [rbp - 0xf5], dl
.label_931:
	mov	al, byte ptr [rbp - 0xf5]
	xor	ecx, ecx
	mov	edx, 2
	test	al, 1
	cmovne	ecx, edx
	mov	dword ptr [rbp - 0xf4], ecx
.label_943:
	mov	eax, dword ptr [rbp - 0xf4]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	dword ptr [rcx + 0x70], eax
.label_939:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x30], 0
	je	.label_952
	mov	qword ptr [rbp - 0x50], 0
.label_929:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x30]
	jge	.label_956
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	dword ptr [rcx + rax*4], 0xffffffff
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_929
.label_933:
	lea	rax, [rbp - 0x8e]
	mov	qword ptr [rbp - 0xa0], rax
.label_1005:
	lea	rdi, [rbp - 0x7c]
	lea	rax, [rbp - 0x78]
	xor	esi, esi
	mov	ecx, 8
	mov	edx, ecx
	mov	r8, rax
	mov	qword ptr [rbp - 0xe8], rdi
	mov	rdi, r8
	mov	qword ptr [rbp - 0xf0], rax
	call	memset
	mov	rsi, qword ptr [rbp - 0xa0]
	mov	rdx, qword ptr [rbp - 0x88]
	mov	rdi, qword ptr [rbp - 0xe8]
	mov	rcx, qword ptr [rbp - 0xf0]
	call	rpl_mbrtowc
	mov	qword ptr [rbp - 0x98], rax
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x68]
	sub	rax, rcx
	cmp	rax, qword ptr [rbp - 0x98]
	ja	.label_937
	cmp	qword ptr [rbp - 0x98], -2
	jae	.label_937
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x10]
	add	rcx, 0x20
	mov	rdi, rcx
	call	memset
	mov	rcx, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rbp - 0x60]
	add	rdx, qword ptr [rbp - 0x28]
	mov	rdi, qword ptr [rbp - 0x68]
	sub	rdx, rdi
	sub	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x30], rcx
	mov	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x54], eax
.label_937:
	jmp	.label_934
.label_930:
	mov	rax, qword ptr [rbp - 0x10]
	movzx	ecx, byte ptr [rax + 0x8e]
	cmp	ecx, 0
	setne	dl
	and	dl, 1
	movzx	ecx, dl
	movsxd	rax, ecx
	cmp	rax, 0
	je	.label_940
	mov	edi, dword ptr [rbp - 0x54]
	call	iswalnum
	cmp	eax, 0
	jne	.label_936
	cmp	dword ptr [rbp - 0x54], 0x5f
	jne	.label_940
.label_936:
	mov	eax, 1
	mov	dword ptr [rbp - 0xf4], eax
	jmp	.label_943
.label_978:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x28]
	sub	rax, 1
	mov	edx, dword ptr [rbp - 0x1c]
	mov	rsi, rax
	call	re_string_context_at
	mov	rsi, qword ptr [rbp - 0x10]
	mov	dword ptr [rsi + 0x70], eax
	mov	rsi, qword ptr [rbp - 0x10]
	cmp	dword ptr [rsi + 0x90], 1
	jle	.label_997
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rdx, qword ptr [rbp - 0x28]
	shl	rdx, 2
	add	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x30]
	sub	rdx, qword ptr [rbp - 0x28]
	shl	rdx, 2
	mov	rdi, rax
	mov	rsi, rcx
	call	memmove
	mov	qword ptr [rbp - 0xd0], rax
.label_997:
	mov	rax, qword ptr [rbp - 0x10]
	movzx	ecx, byte ptr [rax + 0x8b]
	mov	eax, ecx
	cmp	rax, 0
	je	.label_986
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax + 8]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	add	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x30]
	sub	rcx, qword ptr [rbp - 0x28]
	mov	rsi, rax
	mov	rdx, rcx
	call	memmove
	mov	qword ptr [rbp - 0xd8], rax
.label_986:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rcx + 0x30]
	sub	rdx, rax
	mov	qword ptr [rcx + 0x30], rdx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rcx + 0x38]
	sub	rdx, rax
	mov	qword ptr [rcx + 0x38], rdx
.label_976:
	jmp	.label_947
.label_938:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x58]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x30], rax
.label_944:
	jmp	.label_935
.label_935:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x48], 0
	mov	dword ptr [rbp - 4], 0
.label_959:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x100
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40bf58
	.globl sub_40bf58
	.type sub_40bf58, @function
sub_40bf58:

	nop	word ptr [rax + rax]
.label_951:
	mov	rdi, qword ptr [rbp - 0x10]
	call	build_wcs_buffer
.label_941:
	jmp	.label_935
.label_1006:
	mov	esi, 0xff
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax + 8]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rax + 0x30]
	call	memset
.label_973:
	jmp	.label_966
.label_966:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x38], rax
.label_999:
	jmp	.label_976
.label_975:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	dword ptr [rax + 0x90], 1
	jle	.label_980
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x10]
	add	rcx, 0x20
	mov	rdi, rcx
	call	memset
.label_980:
	mov	eax, 6
	mov	ecx, 4
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x50]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + 0x58], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x60]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + 0x68], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x30], 0
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x28], 0
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x38], 0
	mov	rdx, qword ptr [rbp - 0x10]
	mov	byte ptr [rdx + 0x8c], 0
	mov	edi, dword ptr [rbp - 0x1c]
	and	edi, 1
	cmp	edi, 0
	cmovne	eax, ecx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	dword ptr [rdx + 0x70], eax
	mov	rdx, qword ptr [rbp - 0x10]
	cmp	byte ptr [rdx + 0x8b], 0
	jne	.label_992
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 8], rax
.label_992:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x28], rax
.label_995:
	cmp	qword ptr [rbp - 0x28], 0
	setne	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_957
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x38]
	setl	dl
	and	dl, 1
	movzx	esi, dl
	movsxd	rax, esi
	cmp	rax, 0
	je	.label_985
	mov	rax, qword ptr [rbp - 0x10]
	movzx	ecx, byte ptr [rax + 0x8c]
	mov	eax, ecx
	cmp	rax, 0
	je	.label_978
	mov	qword ptr [rbp - 0x30], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x30]
	mov	qword ptr [rbp - 0x38], rax
.label_969:
	mov	eax, 2
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x38]
	add	rdx, qword ptr [rbp - 0x30]
	mov	rax, rdx
	cqo	
	idiv	rcx
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	cmp	rax, qword ptr [rbp - 0x28]
	jle	.label_990
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_979
.label_950:
	jmp	.label_941
.label_989:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	add	rax, qword ptr [rbp - 0x28]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	movzx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 0xa8], edx
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x38], 0
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x78], 0
	je	.label_968
	movsxd	rax, dword ptr [rbp - 0xa8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x78]
	movzx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 0xa8], edx
.label_968:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax + 0x80]
	movsxd	rsi, dword ptr [rbp - 0xa8]
	call	bitset_contain
	test	al, 1
	jne	.label_981
	jmp	.label_961
.label_981:
	mov	eax, 1
	mov	dword ptr [rbp - 0xfc], eax
	jmp	.label_965
.label_987:
	jmp	.label_999
	.section	.text
	.align	16
	#Procedure 0x40c19a

	.globl re_string_reconstruct
	.type re_string_reconstruct, @function
re_string_reconstruct:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x100
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0x28]
	cmp	rsi, qword ptr [rbp - 0x18]
	setle	al
	and	al, 1
	movzx	edx, al
	movsxd	rsi, edx
	cmp	rsi, 0
	je	.label_975
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rax, qword ptr [rcx + 0x28]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_995
.label_990:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	cmp	rax, qword ptr [rbp - 0x28]
	jge	.label_1002
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_962
.label_983:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x50]
	sub	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x58], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x60]
	sub	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x68], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax + 0x8c], 0
.label_972:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x40], 0
	mov	byte ptr [rbp - 0xc1], cl
	jle	.label_993
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	cmp	rax, qword ptr [rbp - 0x28]
	sete	dl
	mov	byte ptr [rbp - 0xc1], dl
.label_993:
	mov	al, byte ptr [rbp - 0xc1]
	test	al, 1
	jne	.label_963
	jmp	.label_970
.label_963:
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, -1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_972
.label_958:
	mov	rax, qword ptr [rbp - 0x10]
	movzx	ecx, byte ptr [rax + 0x8b]
	mov	eax, ecx
	cmp	rax, 0
	je	.label_938
	mov	rax, qword ptr [rbp - 0x10]
	cmp	byte ptr [rax + 0x88], 0
	je	.label_946
	mov	rdi, qword ptr [rbp - 0x10]
	call	build_upper_buffer
	jmp	.label_932
.label_1000:
	jmp	.label_998
.label_998:
	mov	rax, qword ptr [rbp - 0x68]
	add	rax, -1
	mov	qword ptr [rbp - 0x68], rax
	jmp	.label_974
.label_961:
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [rbp - 0xa8], 0xa
	mov	byte ptr [rbp - 0xfd], cl
	jne	.label_984
	mov	rax, qword ptr [rbp - 0x10]
	movzx	ecx, byte ptr [rax + 0x8d]
	cmp	ecx, 0
	setne	dl
	mov	byte ptr [rbp - 0xfd], dl
.label_984:
	mov	al, byte ptr [rbp - 0xfd]
	xor	ecx, ecx
	mov	edx, 2
	test	al, 1
	cmovne	ecx, edx
	mov	dword ptr [rbp - 0xfc], ecx
.label_965:
	mov	eax, dword ptr [rbp - 0xfc]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	dword ptr [rcx + 0x70], eax
.label_955:
	jmp	.label_947
.label_947:
	mov	rax, qword ptr [rbp - 0x10]
	movzx	ecx, byte ptr [rax + 0x8b]
	mov	eax, ecx
	cmp	rax, 0
	jne	.label_948
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rcx + 8]
	mov	qword ptr [rcx + 8], rax
.label_948:
	jmp	.label_957
.label_957:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x28], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rcx + 0x58]
	sub	rdx, rax
	mov	qword ptr [rcx + 0x58], rdx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rcx + 0x68]
	sub	rdx, rax
	mov	qword ptr [rcx + 0x68], rdx
	mov	rax, qword ptr [rbp - 0x10]
	cmp	dword ptr [rax + 0x90], 1
	jle	.label_958
	mov	rax, qword ptr [rbp - 0x10]
	cmp	byte ptr [rax + 0x88], 0
	je	.label_951
	mov	rdi, qword ptr [rbp - 0x10]
	call	build_wcs_upper_buffer
	mov	dword ptr [rbp - 0xac], eax
	cmp	dword ptr [rbp - 0xac], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rdi, eax
	cmp	rdi, 0
	je	.label_950
	mov	eax, dword ptr [rbp - 0xac]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_959
.label_962:
	jmp	.label_979
.label_979:
	jmp	.label_967
.label_967:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x38]
	jl	.label_969
.label_964:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	cmp	rax, qword ptr [rbp - 0x28]
	jge	.label_977
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
.label_977:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, 1
	mov	edx, dword ptr [rbp - 0x1c]
	mov	rsi, rax
	call	re_string_context_at
	mov	rsi, qword ptr [rbp - 0x10]
	mov	dword ptr [rsi + 0x70], eax
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0x30]
	cmp	rsi, qword ptr [rbp - 0x28]
	jle	.label_983
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x28]
	jne	.label_983
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	cmp	rax, qword ptr [rbp - 0x28]
	jne	.label_983
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rdx, qword ptr [rbp - 0x28]
	shl	rdx, 2
	add	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x30]
	sub	rdx, qword ptr [rbp - 0x28]
	shl	rdx, 2
	mov	rdi, rax
	mov	rsi, rcx
	call	memmove
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rcx + 8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 8]
	add	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x30]
	sub	rdx, qword ptr [rbp - 0x28]
	mov	rsi, rcx
	mov	qword ptr [rbp - 0xb8], rax
	call	memmove
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rdx + 0x30]
	sub	rsi, rcx
	mov	qword ptr [rdx + 0x30], rsi
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rdx + 0x38]
	sub	rsi, rcx
	mov	qword ptr [rdx + 0x38], rsi
	mov	qword ptr [rbp - 0x30], 0
	mov	qword ptr [rbp - 0xc0], rax
.label_991:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x30]
	jge	.label_987
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	sub	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x18]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_991
.label_994:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x30]
	jne	.label_971
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x30], 0
	jmp	.label_966
.label_970:
	jmp	.label_982
.label_982:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x30]
	jge	.label_994
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	cmp	dword ptr [rcx + rax*4], -1
	je	.label_996
	jmp	.label_994
.label_996:
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_982
.label_985:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x30]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x10]
	movzx	ecx, byte ptr [rax + 0x8c]
	mov	eax, ecx
	cmp	rax, 0
	je	.label_1001
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x50]
	sub	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x58], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x60]
	sub	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x68], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax + 0x8c], 0
.label_1001:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x30], 0
	mov	rax, qword ptr [rbp - 0x10]
	cmp	dword ptr [rax + 0x90], 1
	jle	.label_989
	mov	dword ptr [rbp - 0x54], 0xffffffff
	mov	rax, qword ptr [rbp - 0x10]
	cmp	byte ptr [rax + 0x89], 0
	je	.label_953
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rcx + 0x28]
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	movsxd	rdx, dword ptr [rdx + 0x90]
	sub	rcx, rdx
	add	rax, rcx
	mov	qword ptr [rbp - 0x70], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx]
	jae	.label_1004
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x70], rax
.label_1004:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, qword ptr [rbp - 0x28]
	add	rax, -1
	mov	qword ptr [rbp - 0x68], rax
.label_974:
	mov	rax, qword ptr [rbp - 0x68]
	cmp	rax, qword ptr [rbp - 0x70]
	jb	.label_934
	mov	rax, qword ptr [rbp - 0x68]
	movzx	ecx, byte ptr [rax]
	and	ecx, 0xc0
	cmp	ecx, 0x80
	je	.label_1000
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rcx + 0x58]
	mov	rcx, qword ptr [rbp - 0x68]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x88], rax
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0xa0], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x78], 0
	setne	dl
	and	dl, 1
	movzx	esi, dl
	movsxd	rax, esi
	cmp	rax, 0
	je	.label_1005
	cmp	qword ptr [rbp - 0x88], 6
	jge	.label_988
	mov	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0xe0], rax
	jmp	.label_960
.label_1018:
	mov	rax, qword ptr [rbp - 0xf8]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_1014
.label_1013:
	mov	rax, qword ptr [rbp - 0xd0]
	mov	rcx, qword ptr [rbp - 0x28]
	sub	rcx, 1
	cmp	rax, rcx
	jae	.label_1015
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0xd0]
	add	rax, 1
	mov	rsi, rax
	call	realloc
	mov	qword ptr [rbp - 0xf0], rax
	cmp	qword ptr [rbp - 0xf0], 0
	je	.label_1020
	mov	rax, qword ptr [rbp - 0xf0]
	mov	qword ptr [rbp - 0x20], rax
.label_1020:
	jmp	.label_1015
.label_1015:
	mov	rax, qword ptr [rbp - 0xd0]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	byte ptr [rcx + rax], 0
	mov	rax, qword ptr [rbp - 0xd0]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1007
.label_1021:
	cmp	qword ptr [rbp - 0x28], -1
	jne	.label_1017
	mov	dword ptr [rbp - 0xd4], 0xc
	jmp	.label_1012
.label_1012:
	mov	rdi, qword ptr [rbp - 0x20]
	call	free
	mov	eax, dword ptr [rbp - 0xd4]
	mov	dword ptr [rbp - 0x104], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x104]
	mov	dword ptr [rax], ecx
	mov	qword ptr [rbp - 8], 0
.label_1007:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x110
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c83f
	.globl sub_40c83f
	.type sub_40c83f, @function
sub_40c83f:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c849

	.globl fread_file
	.type fread_file, @function
fread_file:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x110
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], 0
	mov	qword ptr [rbp - 0x28], 0x2000
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	lea	rsi, [rbp - 0xb8]
	mov	edi, eax
	call	fstat
	cmp	eax, 0
	jl	.label_1009
	mov	eax, dword ptr [rbp - 0xa0]
	and	eax, 0xf000
	cmp	eax, 0x8000
	jne	.label_1009
	mov	rdi, qword ptr [rbp - 0x10]
	call	ftello
	mov	qword ptr [rbp - 0xc0], rax
	cmp	qword ptr [rbp - 0xc0], 0
	jl	.label_1008
	mov	rax, qword ptr [rbp - 0xc0]
	cmp	rax, qword ptr [rbp - 0x88]
	jge	.label_1008
	mov	rax, -2
	mov	rcx, qword ptr [rbp - 0x88]
	sub	rcx, qword ptr [rbp - 0xc0]
	mov	qword ptr [rbp - 0xc8], rcx
	cmp	rax, qword ptr [rbp - 0xc8]
	jae	.label_1011
	call	__errno_location
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1007
.label_1011:
	mov	rax, qword ptr [rbp - 0xc8]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
.label_1008:
	jmp	.label_1009
.label_1009:
	mov	rdi, qword ptr [rbp - 0x28]
	call	malloc
	mov	qword ptr [rbp - 0x20], rax
	cmp	rax, 0
	jne	.label_1016
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1007
.label_1019:
	mov	qword ptr [rbp - 0x28], -1
.label_1010:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x28]
	call	realloc
	mov	qword ptr [rbp - 0xf8], rax
	cmp	rax, 0
	jne	.label_1018
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0xd4], ecx
	jmp	.label_1012
.label_1016:
	mov	qword ptr [rbp - 0xd0], 0
.label_1014:
	mov	eax, 1
	mov	esi, eax
	mov	rcx, qword ptr [rbp - 0x28]
	sub	rcx, qword ptr [rbp - 0xd0]
	mov	qword ptr [rbp - 0xe0], rcx
	mov	rcx, qword ptr [rbp - 0x20]
	add	rcx, qword ptr [rbp - 0xd0]
	mov	rdx, qword ptr [rbp - 0xe0]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x100], rdi
	mov	rdi, rcx
	mov	rcx, qword ptr [rbp - 0x100]
	call	fread
	mov	qword ptr [rbp - 0xe8], rax
	mov	rax, qword ptr [rbp - 0xe8]
	add	rax, qword ptr [rbp - 0xd0]
	mov	qword ptr [rbp - 0xd0], rax
	mov	rax, qword ptr [rbp - 0xe8]
	cmp	rax, qword ptr [rbp - 0xe0]
	je	.label_1021
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0xd4], ecx
	mov	rdi, qword ptr [rbp - 0x10]
	call	ferror
	cmp	eax, 0
	je	.label_1013
	jmp	.label_1012
.label_1017:
	mov	rax, -1
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x28]
	shr	rdx, 1
	sub	rax, rdx
	cmp	rcx, rax
	jae	.label_1019
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x28]
	shr	rcx, 1
	add	rax, rcx
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1010
	.section	.text
	.align	16
	#Procedure 0x40ca60

	.globl c_tolower
	.type c_tolower, @function
c_tolower:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1022
	jmp	.label_1024
.label_1024:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x41
	add	eax, 0x61
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1023
.label_1022:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_1023:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ca97
	.globl sub_40ca97
	.type sub_40ca97, @function
sub_40ca97:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40caa0
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x30
	sub	edi, 9
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1025
	jmp	.label_1027
.label_1027:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1026
.label_1025:
	mov	byte ptr [rbp - 1], 0
.label_1026:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40cad2
	.globl sub_40cad2
	.type sub_40cad2, @function
sub_40cad2:

	nop	word ptr cs:[rax + rax]
.label_1028:
	mov	qword ptr [rbp - 8], -1
.label_1030:
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40caee
	.globl sub_40caee
	.type sub_40caee, @function
sub_40caee:

	nop	
.label_1029:
	jmp	.label_1032
.label_1032:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1031
	.section	.text
	.align	16
	#Procedure 0x40cb05

	.globl find_subexp_node
	.type find_subexp_node, @function
find_subexp_node:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	dword ptr [rbp - 0x24], ecx
	mov	qword ptr [rbp - 0x30], 0
.label_1031:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_1028
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x38]
	shl	rcx, 4
	add	rax, rcx
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rax + 8]
	and	edx, 0xff
	cmp	edx, dword ptr [rbp - 0x24]
	jne	.label_1029
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x20]
	jne	.label_1029
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1030
	.section	.text
	.align	16
	#Procedure 0x40cb90
	.globl mbuiter_multi_reloc
	.type mbuiter_multi_reloc, @function
mbuiter_multi_reloc:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 8]
	add	rsi, qword ptr [rdi + 0x10]
	mov	qword ptr [rdi + 0x10], rsi
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40cbae
	.globl sub_40cbae
	.type sub_40cbae, @function
sub_40cbae:

	nop	
.label_1038:
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 0x16
	sete	dl
	and	dl, 1
	movzx	ecx, dl
	movsxd	rax, ecx
	cmp	rax, 0
	je	.label_1033
	test	byte ptr [rbp - 0x39], 1
	jne	.label_1033
	lea	rdi, [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x38]
	call	peek_token_bracket
	mov	ecx, dword ptr [rbp - 0x48]
	and	ecx, 0xff
	cmp	ecx, 0x15
	mov	dword ptr [rbp - 0x54], eax
	je	.label_1035
	mov	dword ptr [rbp - 4], 0xb
	jmp	.label_1034
.label_1036:
	movsxd	rax, dword ptr [rbp - 0x24]
	mov	rcx, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rcx + 0x48]
	mov	qword ptr [rcx + 0x48], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	edx, dword ptr [rax + 8]
	and	edx, 0xff
	cmp	edx, 0x1a
	je	.label_1037
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 0x1e
	je	.label_1037
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 0x1c
	jne	.label_1038
.label_1037:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	call	parse_bracket_symbol
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1034
.label_1035:
	jmp	.label_1033
.label_1033:
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x20]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax + 8], cl
	mov	dword ptr [rbp - 4], 0
.label_1034:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40cca9
	.globl sub_40cca9
	.type sub_40cca9, @function
sub_40cca9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40ccad

	.globl parse_bracket_element
	.type parse_bracket_element, @function
parse_bracket_element:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	al, byte ptr [rbp + 0x10]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	dword ptr [rbp - 0x24], ecx
	mov	qword ptr [rbp - 0x30], r8
	mov	qword ptr [rbp - 0x38], r9
	and	al, 1
	mov	byte ptr [rbp - 0x39], al
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rdx + 0x48]
	call	re_string_char_size_at
	mov	dword ptr [rbp - 0x40], eax
	cmp	dword ptr [rbp - 0x40], 1
	jle	.label_1036
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 1
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax + 0x48]
	call	re_string_wchar_at
	mov	rsi, qword ptr [rbp - 0x10]
	mov	dword ptr [rsi + 8], eax
	movsxd	rsi, dword ptr [rbp - 0x40]
	mov	rdi, qword ptr [rbp - 0x18]
	add	rsi, qword ptr [rdi + 0x48]
	mov	qword ptr [rdi + 0x48], rsi
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1034
	.section	.text
	.align	16
	#Procedure 0x40cd30

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx]
	mov	qword ptr [rbp - 0x20], rdx
	cmp	qword ptr [rbp - 8], 0
	jne	.label_1039
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_1043
	mov	eax, 0x80
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	setne	sil
	xor	sil, 0xff
	and	sil, 1
	movzx	ecx, sil
	movsxd	rax, ecx
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_1043:
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1040
	call	xalloc_die
.label_1039:
	movabs	rax, 0x5555555555555554
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_1041
	call	xalloc_die
.label_1040:
	jmp	.label_1042
.label_1041:
	mov	rax, qword ptr [rbp - 0x20]
	shr	rax, 1
	add	rax, 1
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_1042:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x20]
	imul	rax, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	xrealloc
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ce17
	.globl sub_40ce17
	.type sub_40ce17, @function
sub_40ce17:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ce20

	.globl argmatch_invalid
	.type argmatch_invalid, @function
argmatch_invalid:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	cmp	qword ptr [rbp - 0x18], -1
	jne	.label_1044
	movabs	rdi, OFFSET FLAT:label_1047
	call	gettext
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1046
.label_1044:
	movabs	rdi, OFFSET FLAT:label_1045
	call	gettext
	mov	qword ptr [rbp - 0x28], rax
.label_1046:
	mov	rax, qword ptr [rbp - 0x28]
	xor	edi, edi
	mov	esi, 8
	mov	qword ptr [rbp - 0x20], rax
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x30], rdx
	mov	rdx, rax
	call	quotearg_n_style
	mov	edi, 1
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x38], rax
	call	quote_n
	xor	edi, edi
	mov	dword ptr [rbp - 0x3c], edi
	mov	esi, dword ptr [rbp - 0x3c]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	r8, rax
	mov	al, 0
	call	error
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40cebf
	.globl sub_40cebf
	.type sub_40cebf, @function
sub_40cebf:

	nop	
	.section	.text
	.align	16
	#Procedure 0x40cec0
	.globl rpl_re_search_2
	.type rpl_re_search_2, @function
rpl_re_search_2:

	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 0x78
	mov	rax, qword ptr [rbp + 0x20]
	mov	r10, qword ptr [rbp + 0x18]
	mov	r11, qword ptr [rbp + 0x10]
	xor	ebx, ebx
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	qword ptr [rbp - 0x38], r9
	mov	qword ptr [rbp - 0x40], r11
	mov	qword ptr [rbp - 0x48], r10
	mov	qword ptr [rbp - 0x50], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	r9, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x40]
	mov	r10, qword ptr [rbp - 0x48]
	mov	r11, qword ptr [rbp - 0x50]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	mov	dword ptr [rsp + 0x18], 0
	mov	dword ptr [rbp - 0x54], ebx
	call	re_search_2_stub
	add	rsp, 0x78
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40cf44
	.globl sub_40cf44
	.type sub_40cf44, @function
sub_40cf44:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40cf50

	.globl fix_output_parameters
	.type fix_output_parameters, @function
fix_output_parameters:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	test	byte ptr [byte ptr [auto_reference]],  1
	je	.label_1064
	mov	qword ptr [word ptr [reference_max_width]],  0
	mov	qword ptr [rbp - 8], 0
.label_1063:
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx,  dword ptr [dword ptr [number_input_files]]
	cmp	rax, rcx
	jae	.label_1077
	mov	rax, qword ptr [rbp - 8]
	mov	rcx,  qword ptr [word ptr [file_line_count]]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 8], 0
	jbe	.label_1050
	mov	rax, qword ptr [rbp - 8]
	sub	rax, 1
	mov	rcx,  qword ptr [word ptr [file_line_count]]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x10], rcx
.label_1050:
	movabs	rsi, OFFSET FLAT:label_1065
	lea	rdi, [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	al, 0
	call	sprintf
	movsxd	rdx, eax
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 8]
	mov	rsi,  qword ptr [word ptr [input_file_name]]
	cmp	qword ptr [rsi + rdx*8], 0
	je	.label_1073
	mov	rax, qword ptr [rbp - 8]
	mov	rcx,  qword ptr [word ptr [input_file_name]]
	mov	rdi, qword ptr [rcx + rax*8]
	call	strlen
	add	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x18], rax
.label_1073:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax,  qword ptr [word ptr [reference_max_width]]
	jle	.label_1054
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [word ptr [reference_max_width]],  rax
.label_1054:
	jmp	.label_1060
.label_1060:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1063
.label_1074:
	mov	byte ptr [byte ptr [rip + label_1068]],  1
	mov	eax,  dword ptr [dword ptr [rip + output_format]]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0x4c], eax
	mov	dword ptr [rbp - 0x50], ecx
	jb	.label_1069
	jmp	.label_1076
.label_1076:
	mov	eax, dword ptr [rbp - 0x4c]
	sub	eax, 2
	mov	dword ptr [rbp - 0x54], eax
	je	.label_1078
	jmp	.label_1049
.label_1049:
	mov	eax, dword ptr [rbp - 0x4c]
	sub	eax, 3
	mov	dword ptr [rbp - 0x58], eax
	je	.label_1051
	jmp	.label_1052
.label_1077:
	mov	rax,  qword ptr [word ptr [reference_max_width]]
	add	rax, 1
	mov	qword ptr [word ptr [reference_max_width]],  rax
	mov	rax,  qword ptr [word ptr [reference_max_width]]
	add	rax, 1
	mov	rdi, rax
	call	xmalloc
	mov	qword ptr [word ptr [reference]],  rax
.label_1064:
	test	byte ptr [byte ptr [auto_reference]],  1
	jne	.label_1066
	test	byte ptr [byte ptr [input_reference]],  1
	je	.label_1071
.label_1066:
	test	byte ptr [byte ptr [right_reference]],  1
	jne	.label_1071
	mov	rax,  qword ptr [word ptr [reference_max_width]]
	add	rax,  qword ptr [word ptr [gap_size]]
	mov	rcx,  qword ptr [word ptr [line_width]]
	sub	rcx, rax
	mov	qword ptr [word ptr [line_width]],  rcx
.label_1071:
	cmp	qword ptr [word ptr [line_width]],  0
	jge	.label_1053
	mov	qword ptr [word ptr [line_width]],  0
.label_1053:
	mov	eax, 2
	mov	ecx, eax
	mov	rax,  qword ptr [word ptr [line_width]]
	cqo	
	idiv	rcx
	mov	qword ptr [word ptr [half_line_width]],  rax
	mov	rax,  qword ptr [word ptr [half_line_width]]
	sub	rax,  qword ptr [word ptr [gap_size]]
	mov	qword ptr [word ptr [before_max_width]],  rax
	mov	rax,  qword ptr [word ptr [half_line_width]]
	mov	qword ptr [word ptr [keyafter_max_width]],  rax
	cmp	qword ptr [word ptr [truncation_string]],  0
	je	.label_1059
	mov	rax,  qword ptr [word ptr [truncation_string]]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_1059
	mov	rdi,  qword ptr [word ptr [truncation_string]]
	call	strlen
	mov	qword ptr [word ptr [truncation_string_length]],  rax
	jmp	.label_1058
.label_1070:
	mov	rax,  qword ptr [word ptr [truncation_string_length]]
	shl	rax, 1
	add	rax, 1
	mov	rcx,  qword ptr [word ptr [keyafter_max_width]]
	sub	rcx, rax
	mov	qword ptr [word ptr [keyafter_max_width]],  rcx
.label_1055:
	mov	dword ptr [rbp - 0x1c], 0
.label_1048:
	cmp	dword ptr [rbp - 0x1c], 0x100
	jge	.label_1074
	movsxd	rax, dword ptr [rbp - 0x1c]
	mov	qword ptr [rbp - 0x48], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x48]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x2000
	cmp	edx, 0
	setne	sil
	xor	sil, 0xff
	xor	sil, 0xff
	and	sil, 1
	movzx	edx, sil
	mov	sil, dl
	movsxd	rax, dword ptr [rbp - 0x1c]
	mov	byte ptr [byte ptr [+ (rax * 1) + edited_flag]],  sil
	mov	eax, dword ptr [rbp - 0x1c]
	add	eax, 1
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_1048
.label_1078:
	mov	byte ptr [byte ptr [label_1062]],  1
	jmp	.label_1052
.label_1059:
	mov	qword ptr [word ptr [truncation_string]],  0
.label_1058:
	test	byte ptr [byte ptr [gnu_extensions]],  1
	je	.label_1070
	mov	rax,  qword ptr [word ptr [truncation_string_length]]
	shl	rax, 1
	mov	rcx,  qword ptr [word ptr [before_max_width]]
	sub	rcx, rax
	mov	qword ptr [word ptr [before_max_width]],  rcx
	cmp	qword ptr [word ptr [before_max_width]],  0
	jge	.label_1075
	mov	qword ptr [word ptr [before_max_width]],  0
.label_1075:
	mov	rax,  qword ptr [word ptr [truncation_string_length]]
	shl	rax, 1
	mov	rcx,  qword ptr [word ptr [keyafter_max_width]]
	sub	rcx, rax
	mov	qword ptr [word ptr [keyafter_max_width]],  rcx
	jmp	.label_1055
.label_1069:
	jmp	.label_1052
.label_1056:
	mov	dword ptr [rbp - 0x1c], 0x80
.label_1072:
	cmp	dword ptr [rbp - 0x1c], 0x100
	jge	.label_1067
	mov	eax, dword ptr [rbp - 0x1c]
	mov	cl, al
	movzx	eax, cl
	mov	edx, eax
	movsx	eax,  byte ptr [byte ptr [+ (rdx * 1) + diacrit_diac]]
	cmp	eax, 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	mov	cl, al
	movsxd	rdx, dword ptr [rbp - 0x1c]
	mov	byte ptr [byte ptr [+ (rdx * 1) + edited_flag]],  cl
	mov	eax, dword ptr [rbp - 0x1c]
	add	eax, 1
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_1072
.label_1051:
	movabs	rax, OFFSET FLAT:label_1057
	mov	qword ptr [rbp - 0x28], rax
.label_1061:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	byte ptr [rax], 0
	je	.label_1056
	mov	rax, qword ptr [rbp - 0x28]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	mov	byte ptr [byte ptr [+ (rcx * 1) + edited_flag]],  1
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1061
.label_1067:
	jmp	.label_1052
.label_1052:
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d36d
	.globl sub_40d36d
	.type sub_40d36d, @function
sub_40d36d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40d370
	.globl quotearg_buffer
	.type quotearg_buffer, @function
quotearg_buffer:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_1079
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_1080
.label_1079:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_1080
.label_1080:
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x30], rax
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x34], ecx
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x30]
	mov	r8d, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x30]
	mov	r9d, dword ptr [rax + 4]
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 8
	mov	r10, qword ptr [rbp - 0x30]
	mov	r10, qword ptr [r10 + 0x28]
	mov	r11, qword ptr [rbp - 0x30]
	mov	r11, qword ptr [r11 + 0x30]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	qword ptr [rbp - 0x40], rax
	mov	r8d, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 0x4c], r8d
	call	__errno_location
	mov	r8d, dword ptr [rbp - 0x4c]
	mov	dword ptr [rax], r8d
	mov	rax, qword ptr [rbp - 0x40]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d435
	.globl sub_40d435
	.type sub_40d435, @function
sub_40d435:

	nop	word ptr cs:[rax + rax]
.label_1083:
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 8]
	add	rcx, 0xc
	mov	rdi, rcx
	call	memset
.label_1081:
	mov	rax, qword ptr [rbp - 0x10]
	mov	cl, byte ptr [rax + 0x14]
	mov	rax, qword ptr [rbp - 8]
	and	cl, 1
	mov	byte ptr [rax + 0x14], cl
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x18
	mov	rdx, qword ptr [rbp - 0x10]
	add	rdx, 0x18
	mov	rdi, rax
	mov	rsi, rdx
	call	mb_copy
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d48b
	.globl sub_40d48b
	.type sub_40d48b, @function
sub_40d48b:

	nop	
	.section	.text
	.align	16
	#Procedure 0x40d48d
	.globl mbiter_multi_copy
	.type mbiter_multi_copy, @function
mbiter_multi_copy:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	al, byte ptr [rsi + 8]
	mov	rsi, qword ptr [rbp - 8]
	mov	cl, al
	and	cl, 1
	mov	byte ptr [rsi + 8], cl
	test	al, 1
	jne	.label_1082
	jmp	.label_1083
.label_1082:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0xc]
	mov	qword ptr [rax + 0xc], rcx
	jmp	.label_1081
.label_1084:
	mov	edi, dword ptr [rbp - 4]
	call	iswcntrl
	mov	edi, 1
	xor	ecx, ecx
	cmp	eax, 0
	cmovne	edi, ecx
	mov	dword ptr [rbp - 0xc], edi
.label_1085:
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d501
	.globl sub_40d501
	.type sub_40d501, @function
sub_40d501:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40d505
	.globl mb_width_aux
	.type mb_width_aux, @function
mb_width_aux:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 4], edi
	mov	edi, dword ptr [rbp - 4]
	call	wcwidth
	mov	dword ptr [rbp - 8], eax
	cmp	dword ptr [rbp - 8], 0
	jl	.label_1084
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_1085
	.section	.text
	.align	16
	#Procedure 0x40d530

	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	lea	rax, [rbp - 0x60]
	movabs	r9, OFFSET FLAT:default_quoting_options
	mov	r10d, 0x38
	mov	r11d, r10d
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	rcx, rax
	mov	rdi, rcx
	mov	rsi, r9
	mov	rdx, r11
	mov	qword ptr [rbp - 0x68], rax
	call	memcpy
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 0x68]
	call	set_custom_quoting
	lea	rcx, [rbp - 0x60]
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	call	quotearg_n_options
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d5a2
	.globl sub_40d5a2
	.type sub_40d5a2, @function
sub_40d5a2:

	nop	word ptr cs:[rax + rax]
.label_3780:
	movabs	rdi, OFFSET FLAT:label_1086
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xe8], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0x38]
	mov	r10, qword ptr [r10 + 0x30]
	mov	r11, qword ptr [rbp - 0xe8]
	mov	qword ptr [rbp - 0xf0], rdi
	mov	rdi, r11
	mov	qword ptr [rbp - 0xf8], rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0xf0]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rbp - 0xf8]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xfc], eax
	jmp	.label_1087
.label_3777:
	movabs	rdi, OFFSET FLAT:label_1090
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xa0], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xa4], eax
	jmp	.label_1087
.label_3774:
	movabs	rdi, OFFSET FLAT:label_1094
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x70], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x74], eax
	jmp	.label_1087
	.section	.text
	.align	16
	#Procedure 0x40d6d3

	.globl version_etc_arn
	.type version_etc_arn, @function
version_etc_arn:
	push	rbp
	mov	rbp, rsp
	push	r14
	push	rbx
	sub	rsp, 0x180
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x28], rdx
	mov	qword ptr [rbp - 0x30], rcx
	mov	qword ptr [rbp - 0x38], r8
	mov	qword ptr [rbp - 0x40], r9
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1092
	movabs	rsi, OFFSET FLAT:label_1089
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_1097
.label_3779:
	movabs	rdi, OFFSET FLAT:label_1098
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xc8], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0xc8]
	mov	qword ptr [rbp - 0xd0], rdi
	mov	rdi, r10
	mov	qword ptr [rbp - 0xd8], rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0xd0]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rbp - 0xd8]
	mov	qword ptr [rsp + 8], rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xdc], eax
	jmp	.label_1087
.label_1091:
	movabs	rdi, OFFSET FLAT:label_1103
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x148], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0x38]
	mov	r10, qword ptr [r10 + 0x30]
	mov	r11, qword ptr [rbp - 0x38]
	mov	r11, qword ptr [r11 + 0x38]
	mov	rbx, qword ptr [rbp - 0x38]
	mov	rbx, qword ptr [rbx + 0x40]
	mov	r14, qword ptr [rbp - 0x148]
	mov	qword ptr [rbp - 0x150], rdi
	mov	rdi, r14
	mov	qword ptr [rbp - 0x158], rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0x150]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rbp - 0x158]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	mov	qword ptr [rsp + 0x18], r11
	mov	qword ptr [rsp + 0x20], rbx
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x15c], eax
.label_1087:
	add	rsp, 0x180
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d875
	.globl sub_40d875
	.type sub_40d875, @function
sub_40d875:

	nop	
.label_3775:
	movabs	rdi, OFFSET FLAT:label_1101
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x80], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_1087
.label_3781:
	movabs	rdi, OFFSET FLAT:label_1100
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x108], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0x38]
	mov	r10, qword ptr [r10 + 0x30]
	mov	r11, qword ptr [rbp - 0x38]
	mov	r11, qword ptr [r11 + 0x38]
	mov	rbx, qword ptr [rbp - 0x108]
	mov	qword ptr [rbp - 0x110], rdi
	mov	rdi, rbx
	mov	qword ptr [rbp - 0x118], rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0x110]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rbp - 0x118]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	mov	qword ptr [rsp + 0x18], r11
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x11c], eax
	jmp	.label_1087
.label_3773:
	jmp	.label_1087
.label_3776:
	movabs	rdi, OFFSET FLAT:label_1096
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x90], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x90]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x94], eax
	jmp	.label_1087
.label_3778:
	movabs	rdi, OFFSET FLAT:label_1093
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xb0], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0xb0]
	mov	qword ptr [rbp - 0xb8], rdi
	mov	rdi, rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0xb8]
	mov	qword ptr [rsp], rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xbc], eax
	jmp	.label_1087
.label_1092:
	movabs	rsi, OFFSET FLAT:label_1095
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x48], eax
.label_1097:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	eax, OFFSET FLAT:label_1088
	mov	ecx, eax
	mov	qword ptr [rbp - 0x50], rdi
	mov	rdi, rcx
	call	gettext
	mov	edx, OFFSET FLAT:version_etc_copyright
	mov	esi, edx
	xor	edx, edx
	mov	r8b, dl
	mov	ecx, 0x7e3
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rdx, rax
	mov	al, r8b
	call	fprintf
	mov	ecx, OFFSET FLAT:label_1102
	mov	edi, ecx
	mov	dword ptr [rbp - 0x54], eax
	call	gettext
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rsi, rdx
	sub	rsi, 9
	mov	dword ptr [rbp - 0x58], eax
	mov	qword ptr [rbp - 0x60], rdx
	mov	qword ptr [rbp - 0x68], rsi
	ja	.label_1091
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1099]]
	jmp	rcx
.label_3782:
	movabs	rdi, OFFSET FLAT:label_1104
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x128], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0x38]
	mov	r10, qword ptr [r10 + 0x30]
	mov	r11, qword ptr [rbp - 0x38]
	mov	r11, qword ptr [r11 + 0x38]
	mov	rbx, qword ptr [rbp - 0x38]
	mov	rbx, qword ptr [rbx + 0x40]
	mov	r14, qword ptr [rbp - 0x128]
	mov	qword ptr [rbp - 0x130], rdi
	mov	rdi, r14
	mov	qword ptr [rbp - 0x138], rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0x130]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rbp - 0x138]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	mov	qword ptr [rsp + 0x18], r11
	mov	qword ptr [rsp + 0x20], rbx
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x13c], eax
	jmp	.label_1087
.label_1108:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 8]
	imul	rax, rax, 0x30
	add	rax, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 8]
	imul	rcx, rcx, 0x30
	add	rcx, qword ptr [rdx + 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	shl	rdx, 4
	mov	rdi, rax
	mov	rsi, rcx
	call	memcpy
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x10]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 8]
	imul	rax, rax, 0x30
	add	rax, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 8]
	imul	rcx, rcx, 0x30
	add	rcx, qword ptr [rdx + 0x10]
	mov	rdx, qword ptr [rcx + 0x18]
	mov	qword ptr [rax], rdx
	mov	rdx, qword ptr [rcx + 0x20]
	mov	qword ptr [rax + 8], rdx
	mov	rcx, qword ptr [rcx + 0x28]
	mov	qword ptr [rax + 0x10], rcx
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 8]
	imul	rax, rax, 0x30
	add	rax, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rax + 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40dc26
	.globl sub_40dc26
	.type sub_40dc26, @function
sub_40dc26:

	nop	dword ptr [rax]
.label_1107:
	movabs	rdi, OFFSET FLAT:label_1105
	movabs	rsi, OFFSET FLAT:label_491
	mov	edx, 0x555
	movabs	rcx, OFFSET FLAT:label_1106
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x40dc52

	.globl pop_fail_stack
	.type pop_fail_stack, @function
pop_fail_stack:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rcx]
	add	rdx, -1
	mov	qword ptr [rcx], rdx
	mov	qword ptr [rbp - 0x30], rdx
	cmp	qword ptr [rbp - 0x30], 0
	jl	.label_1107
	jmp	.label_1108
	.section	.text
	.align	16
	#Procedure 0x40dc90
	.globl rpl_re_set_registers
	.type rpl_re_set_registers, @function
rpl_re_set_registers:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1109
	mov	rax, qword ptr [rbp - 8]
	mov	cl, byte ptr [rax + 0x38]
	and	cl, 0xf9
	or	cl, 2
	mov	byte ptr [rax + 0x38], cl
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 8], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x10], rax
	jmp	.label_1110
.label_1109:
	mov	rax, qword ptr [rbp - 8]
	mov	cl, byte ptr [rax + 0x38]
	and	cl, 0xf9
	mov	byte ptr [rax + 0x38], cl
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x10], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 8], 0
.label_1110:
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40dd1d
	.globl sub_40dd1d
	.type sub_40dd1d, @function
sub_40dd1d:

	nop	dword ptr [rax]
.label_1112:
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x18]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x30]
	cmp	qword ptr [rax + 8], 0
	jne	.label_1121
	lea	rdi, [rbp - 0x68]
	xor	ecx, ecx
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x70]
	call	calc_eclosure_iter
	mov	dword ptr [rbp - 0x28], eax
	cmp	dword ptr [rbp - 0x28], 0
	setne	r8b
	and	r8b, 1
	movzx	eax, r8b
	movsxd	rdx, eax
	cmp	rdx, 0
	je	.label_1116
	mov	eax, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1123
.label_1119:
	test	byte ptr [rbp - 0x4a], 1
	je	.label_1117
	test	byte ptr [rbp - 0x21], 1
	jne	.label_1117
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x30]
	mov	qword ptr [rax + 8], 0
	jmp	.label_1115
.label_1113:
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x18]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x30]
	cmp	qword ptr [rax + 8], 0
	jne	.label_1124
	mov	byte ptr [rbp - 0x4a], 1
	mov	rax, qword ptr [rbp - 0x58]
	mov	rdi, rax
	call	free
.label_1124:
	jmp	.label_1118
.label_1118:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1120
.label_1127:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x30]
	mov	qword ptr [rax + 8], -1
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	shr	edx, 8
	and	edx, 0x3ff
	cmp	edx, 0
	je	.label_1125
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x28]
	cmp	qword ptr [rax + 8], 0
	je	.label_1125
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x28]
	mov	rax, qword ptr [rax + 0x10]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x18]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	shr	edx, 0x12
	and	edx, 1
	cmp	edx, 0
	jne	.label_1125
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x20]
	mov	r8, qword ptr [rbp - 0x18]
	shl	rax, 4
	add	rax, qword ptr [r8]
	mov	r9d, dword ptr [rax + 8]
	shr	r9d, 8
	and	r9d, 0x3ff
	mov	r8d, r9d
	call	duplicate_node_closure
	mov	dword ptr [rbp - 0x28], eax
	cmp	dword ptr [rbp - 0x28], 0
	setne	r10b
	and	r10b, 1
	movzx	eax, r10b
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_1126
	mov	eax, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1123
.label_1121:
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x18]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x30]
	mov	rcx, qword ptr [rax]
	mov	qword ptr [rbp - 0x68], rcx
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x60], rcx
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x58], rax
.label_1111:
	lea	rdi, [rbp - 0x48]
	lea	rsi, [rbp - 0x68]
	call	re_node_set_merge
	mov	dword ptr [rbp - 0x28], eax
	cmp	dword ptr [rbp - 0x28], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rsi, eax
	cmp	rsi, 0
	je	.label_1113
	mov	eax, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1123
.label_1126:
	jmp	.label_1125
.label_1125:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	and	edx, 0xff
	and	edx, 8
	cmp	edx, 0
	je	.label_1114
	mov	qword ptr [rbp - 0x30], 0
.label_1120:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x18]
	imul	rcx, rcx, 0x18
	add	rcx, qword ptr [rdx + 0x28]
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_1122
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x18]
	imul	rcx, rcx, 0x18
	add	rcx, qword ptr [rdx + 0x28]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x70], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x18]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x30]
	cmp	qword ptr [rax + 8], -1
	jne	.label_1112
	mov	byte ptr [rbp - 0x4a], 1
	jmp	.label_1118
.label_1122:
	jmp	.label_1114
.label_1114:
	lea	rdi, [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x20]
	call	re_node_set_insert
	and	al, 1
	mov	byte ptr [rbp - 0x49], al
	mov	al, byte ptr [rbp - 0x49]
	xor	al, 0xff
	and	al, 1
	movzx	ecx, al
	movsxd	rsi, ecx
	cmp	rsi, 0
	je	.label_1119
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_1123
.label_1116:
	jmp	.label_1111
	.section	.text
	.align	16
	#Procedure 0x40e005

	.globl calc_eclosure_iter
	.type calc_eclosure_iter, @function
calc_eclosure_iter:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	al, cl
	lea	r8, [rbp - 0x48]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	and	al, 1
	mov	byte ptr [rbp - 0x21], al
	mov	byte ptr [rbp - 0x4a], 0
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x18]
	imul	rdx, rdx, 0x18
	add	rdx, qword ptr [rsi + 0x28]
	mov	rdx, qword ptr [rdx + 8]
	add	rdx, 1
	mov	rdi, r8
	mov	rsi, rdx
	call	re_node_set_alloc
	mov	dword ptr [rbp - 0x28], eax
	cmp	dword ptr [rbp - 0x28], 0
	setne	r9b
	and	r9b, 1
	movzx	eax, r9b
	movsxd	rdx, eax
	cmp	rdx, 0
	je	.label_1127
	mov	eax, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1123
.label_1117:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x30]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rax], rcx
	mov	rcx, qword ptr [rbp - 0x40]
	mov	qword ptr [rax + 8], rcx
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rax + 0x10], rcx
.label_1115:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rax], rcx
	mov	rcx, qword ptr [rbp - 0x40]
	mov	qword ptr [rax + 8], rcx
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rax + 0x10], rcx
	mov	dword ptr [rbp - 4], 0
.label_1123:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e0c8
	.globl sub_40e0c8
	.type sub_40e0c8, @function
sub_40e0c8:

	nop	dword ptr [rax + rax]
.label_1131:
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + 8], rax
	je	.label_1128
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	movabs	rax, OFFSET FLAT:slot0
	mov	qword ptr [word ptr [slotvec0]],  0x100
	mov	qword ptr [word ptr [label_166]],  rax
.label_1128:
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 8], rax
	je	.label_1129
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	free
	movabs	rax, OFFSET FLAT:slotvec0
	mov	qword ptr [word ptr [slotvec]],  rax
.label_1129:
	mov	dword ptr [dword ptr [nslots]],  1
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e156
	.globl sub_40e156
	.type sub_40e156, @function
sub_40e156:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e162
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rax,  qword ptr [word ptr [slotvec]]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 0xc], 1
.label_1130:
	mov	eax, dword ptr [rbp - 0xc]
	cmp	eax,  dword ptr [dword ptr [nslots]]
	jge	.label_1131
	movsxd	rax, dword ptr [rbp - 0xc]
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, 1
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_1130
.label_1136:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 8]
	movzx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 0x20], edx
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax + 0x80]
	movsxd	rsi, dword ptr [rbp - 0x20]
	call	bitset_contain
	test	al, 1
	jne	.label_1140
	jmp	.label_1144
.label_1140:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1133
.label_1144:
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [rbp - 0x20], 0xa
	mov	byte ptr [rbp - 0x32], cl
	jne	.label_1139
	mov	rax, qword ptr [rbp - 0x10]
	movzx	ecx, byte ptr [rax + 0x8d]
	cmp	ecx, 0
	setne	dl
	mov	byte ptr [rbp - 0x32], dl
.label_1139:
	mov	al, byte ptr [rbp - 0x32]
	xor	ecx, ecx
	mov	edx, 2
	test	al, 1
	cmovne	ecx, edx
	mov	dword ptr [rbp - 4], ecx
.label_1133:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e230
	.globl sub_40e230
	.type sub_40e230, @function
sub_40e230:

	nop	word ptr cs:[rax + rax]
.label_1141:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	edx, dword ptr [rcx + rax*4]
	mov	dword ptr [rbp - 0x24], edx
	mov	rax, qword ptr [rbp - 0x10]
	movzx	edx, byte ptr [rax + 0x8e]
	cmp	edx, 0
	setne	sil
	and	sil, 1
	movzx	edx, sil
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_1132
	mov	edi, dword ptr [rbp - 0x24]
	call	iswalnum
	cmp	eax, 0
	jne	.label_1135
	cmp	dword ptr [rbp - 0x24], 0x5f
	jne	.label_1132
.label_1135:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1133
.label_1137:
	jmp	.label_1143
.label_1132:
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [rbp - 0x24], 0xa
	mov	byte ptr [rbp - 0x31], cl
	jne	.label_1134
	mov	rax, qword ptr [rbp - 0x10]
	movzx	ecx, byte ptr [rax + 0x8d]
	cmp	ecx, 0
	setne	dl
	mov	byte ptr [rbp - 0x31], dl
.label_1134:
	mov	al, byte ptr [rbp - 0x31]
	xor	ecx, ecx
	mov	edx, 2
	test	al, 1
	cmovne	ecx, edx
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_1133
.label_1138:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x58]
	sete	dl
	and	dl, 1
	movzx	esi, dl
	movsxd	rax, esi
	cmp	rax, 0
	je	.label_1142
	mov	eax, 0xa
	mov	ecx, 8
	mov	edx, dword ptr [rbp - 0x1c]
	and	edx, 2
	cmp	edx, 0
	cmovne	eax, ecx
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1133
.label_1142:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	dword ptr [rax + 0x90], 1
	jle	.label_1136
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rax
.label_1143:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	cmp	dword ptr [rcx + rax*4], -1
	jne	.label_1141
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, -1
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 0
	jge	.label_1137
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x70]
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_1133
	.section	.text
	.align	16
	#Procedure 0x40e374

	.globl re_string_context_at
	.type re_string_context_at, @function
re_string_context_at:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	cmp	qword ptr [rbp - 0x18], 0
	setl	al
	and	al, 1
	movzx	edx, al
	movsxd	rsi, edx
	cmp	rsi, 0
	je	.label_1138
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x70]
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_1133
.label_1146:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x28]
	movzx	ecx, byte ptr [rax]
	mov	esi, ecx
	call	bitset_set
	mov	dword ptr [rbp - 4], 0
.label_1145:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e3d2
	.globl sub_40e3d2
	.type sub_40e3d2, @function
sub_40e3d2:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40e3d6

	.globl build_equiv_class
	.type build_equiv_class, @function
build_equiv_class:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	cmp	rax, 1
	setne	r8b
	and	r8b, 1
	movzx	r9d, r8b
	movsxd	rax, r9d
	cmp	rax, 0
	je	.label_1146
	mov	dword ptr [rbp - 4], 3
	jmp	.label_1145
	.section	.text
	.align	16
	#Procedure 0x40e420

	.globl expand_bkref_cache
	.type expand_bkref_cache, @function
expand_bkref_cache:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xb0
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	dword ptr [rbp - 0x2c], r8d
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x98]
	mov	qword ptr [rbp - 0x38], rcx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	call	search_cur_bkref_entry
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x48], -1
	jne	.label_1168
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1158
.label_1168:
	jmp	.label_1171
.label_1171:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0xd8]
	imul	rcx, qword ptr [rbp - 0x48], 0x28
	add	rax, rcx
	mov	qword ptr [rbp - 0x50], rax
.label_1161:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rax]
	call	re_node_set_contains
	cmp	rax, 0
	jne	.label_1155
	jmp	.label_1151
.label_1152:
	lea	rdi, [rbp - 0x78]
	mov	rsi, qword ptr [rbp - 0x60]
	call	re_node_set_init_1
	lea	rsi, [rbp - 0x78]
	mov	dword ptr [rbp - 0x3c], eax
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rbp - 0x2c]
	call	check_arrival_expand_ecl
	lea	rsi, [rbp - 0x78]
	mov	dword ptr [rbp - 0x7c], eax
	mov	rdi, qword ptr [rbp - 0x18]
	call	re_node_set_merge
	mov	dword ptr [rbp - 0x80], eax
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rdi, rdx
	call	free
	mov	r8b, 1
	cmp	dword ptr [rbp - 0x3c], 0
	mov	byte ptr [rbp - 0x9a], r8b
	jne	.label_1148
	mov	al, 1
	cmp	dword ptr [rbp - 0x7c], 0
	mov	byte ptr [rbp - 0x9a], al
	jne	.label_1148
	cmp	dword ptr [rbp - 0x80], 0
	setne	al
	mov	byte ptr [rbp - 0x9a], al
.label_1148:
	mov	al, byte ptr [rbp - 0x9a]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1157
	cmp	dword ptr [rbp - 0x3c], 0
	je	.label_1150
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0xa0], eax
	jmp	.label_1166
.label_1153:
	mov	eax, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0xa4], eax
.label_1163:
	mov	eax, dword ptr [rbp - 0xa4]
	mov	dword ptr [rbp - 0xa0], eax
.label_1166:
	mov	eax, dword ptr [rbp - 0xa0]
	mov	dword ptr [rbp - 0x3c], eax
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1158
.label_1167:
	jmp	.label_1147
.label_1170:
	mov	eax, 0xc
	mov	dword ptr [rbp - 0xac], eax
	jmp	.label_1165
.label_1165:
	mov	eax, dword ptr [rbp - 0xac]
	mov	dword ptr [rbp - 0x3c], eax
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1158
.label_1157:
	jmp	.label_1171
.label_1169:
	jmp	.label_1159
.label_1159:
	jmp	.label_1151
.label_1151:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, rax
	add	rcx, 0x28
	mov	qword ptr [rbp - 0x50], rcx
	cmp	byte ptr [rax + 0x20], 0
	jne	.label_1161
	mov	dword ptr [rbp - 4], 0
.label_1158:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xb0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e5e4
	.globl sub_40e5e4
	.type sub_40e5e4, @function
sub_40e5e4:

	nop	dword ptr [rax + rax]
.label_1149:
	lea	rdi, [rbp - 0x98]
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0xb8]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, 8
	mov	rsi, rax
	call	re_node_set_init_copy
	lea	rdi, [rbp - 0x98]
	mov	dword ptr [rbp - 0x3c], eax
	mov	rsi, qword ptr [rbp - 0x60]
	call	re_node_set_insert
	mov	dl, 1
	and	al, 1
	mov	byte ptr [rbp - 0x99], al
	cmp	dword ptr [rbp - 0x3c], 0
	mov	byte ptr [rbp - 0xa5], dl
	jne	.label_1156
	mov	al, byte ptr [rbp - 0x99]
	xor	al, 0xff
	mov	byte ptr [rbp - 0xa5], al
.label_1156:
	mov	al, byte ptr [rbp - 0xa5]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1167
	mov	rax, qword ptr [rbp - 0x88]
	mov	rdi, rax
	call	free
	cmp	dword ptr [rbp - 0x3c], 0
	je	.label_1170
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0xac], eax
	jmp	.label_1165
.label_1160:
	lea	rdi, [rbp - 0x98]
	mov	rsi, qword ptr [rbp - 0x60]
	call	re_node_set_init_1
	mov	dword ptr [rbp - 0x3c], eax
	cmp	dword ptr [rbp - 0x3c], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rsi, eax
	cmp	rsi, 0
	je	.label_1154
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1158
.label_1155:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x50]
	add	rax, qword ptr [rcx + 0x18]
	mov	rcx, qword ptr [rbp - 0x50]
	sub	rax, qword ptr [rcx + 0x10]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x20]
	jne	.label_1164
	mov	rax, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x38]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x28]
	mov	rax, qword ptr [rax + 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x60], rax
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x60]
	call	re_node_set_contains
	cmp	rax, 0
	je	.label_1152
	jmp	.label_1151
.label_1154:
	jmp	.label_1147
.label_1147:
	lea	rdi, [rbp - 0x3c]
	lea	rdx, [rbp - 0x98]
	mov	rsi, qword ptr [rbp - 0x38]
	call	re_acquire_state
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0xb8]
	mov	qword ptr [rsi + rdx*8], rax
	mov	rax, qword ptr [rbp - 0x88]
	mov	rdi, rax
	call	free
	xor	ecx, ecx
	mov	r8b, cl
	mov	rax, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0xb8]
	cmp	qword ptr [rdx + rax*8], 0
	mov	byte ptr [rbp - 0xad], r8b
	jne	.label_1162
	cmp	dword ptr [rbp - 0x3c], 0
	setne	al
	mov	byte ptr [rbp - 0xad], al
.label_1162:
	mov	al, byte ptr [rbp - 0xad]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1169
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1158
.label_1164:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0xb8]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_1160
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0xb8]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, 8
	mov	rsi, qword ptr [rbp - 0x60]
	mov	rdi, rax
	call	re_node_set_contains
	cmp	rax, 0
	je	.label_1149
	jmp	.label_1151
.label_1150:
	cmp	dword ptr [rbp - 0x7c], 0
	je	.label_1153
	mov	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0xa4], eax
	jmp	.label_1163
	.section	.text
	.align	16
	#Procedure 0x40e830

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	esi, 0x3a
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	quotearg_char
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e850

	.globl bitset_set
	.type bitset_set, @function
bitset_set:
	push	rbp
	mov	rbp, rsp
	mov	eax, 0x40
	mov	ecx, eax
	mov	eax, 1
	mov	edx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rdx
	cqo	
	idiv	rcx
	mov	qword ptr [rbp - 0x20], rcx
	mov	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x18]
	shl	rdx, cl
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rax, rsi
	mov	qword ptr [rbp - 0x28], rdx
	cqo	
	mov	rsi, qword ptr [rbp - 0x20]
	idiv	rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	r8, qword ptr [rbp - 0x28]
	or	r8, qword ptr [rdi + rax*8]
	mov	qword ptr [rdi + rax*8], r8
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e8ab
	.globl sub_40e8ab
	.type sub_40e8ab, @function
sub_40e8ab:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e8b0
	.globl quotearg
	.type quotearg, @function
quotearg:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rsi, qword ptr [rbp - 8]
	mov	edi, eax
	call	quotearg_n
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e8cf
	.globl sub_40e8cf
	.type sub_40e8cf, @function
sub_40e8cf:

	nop	
.label_1186:
	jmp	.label_1183
.label_1200:
	imul	rdi, qword ptr [rbp - 0x28], 0x38
	call	mmalloca
	mov	qword ptr [rbp - 0x148], rax
.label_1205:
	mov	rax, qword ptr [rbp - 0x148]
	mov	qword ptr [rbp - 0x140], rax
.label_1192:
	mov	rax, qword ptr [rbp - 0x140]
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x40], 0
	jne	.label_1201
	mov	byte ptr [rbp - 1], 0
	jmp	.label_1207
.label_1177:
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, qword ptr [rbp - 0xe0]
	mov	qword ptr [rbp - 0xe0], rax
	mov	byte ptr [rbp - 0xe4], 0
	mov	rax, qword ptr [rbp - 0x118]
	add	rax, qword ptr [rbp - 0x120]
	mov	qword ptr [rbp - 0x120], rax
	mov	byte ptr [rbp - 0x124], 0
.label_1183:
	jmp	.label_1173
.label_1173:
	jmp	.label_1175
	.section	.text
	.align	16
	#Procedure 0x40e955

	.globl knuth_morris_pratt_multibyte
	.type knuth_morris_pratt_multibyte, @function
knuth_morris_pratt_multibyte:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x170
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdi, qword ptr [rbp - 0x18]
	call	mbslen
	movabs	rdx, 0x249249249249249
	mov	qword ptr [rbp - 0x28], rax
	cmp	rdx, qword ptr [rbp - 0x28]
	jae	.label_1202
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x140], rcx
	jmp	.label_1192
.label_1188:
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, qword ptr [rbp - 0xe0]
	mov	qword ptr [rbp - 0xe0], rax
	mov	byte ptr [rbp - 0xe4], 0
	mov	rax, qword ptr [rbp - 0x138]
	add	rax, -1
	mov	qword ptr [rbp - 0x138], rax
	jmp	.label_1181
.label_1201:
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	lea	rcx, [rbp - 0x88]
	mov	rdi, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x30], rdi
	mov	rdi, qword ptr [rbp - 0x30]
	imul	r8, qword ptr [rbp - 0x28], 0x30
	add	rdi, r8
	mov	qword ptr [rbp - 0x48], rdi
	mov	rdi, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x38], rdi
	mov	qword ptr [rbp - 0x90], 0
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x78], rdi
	mov	byte ptr [rbp - 0x88], 0
	add	rcx, 4
	mov	rdi, rcx
	call	memset
	mov	byte ptr [rbp - 0x7c], 0
.label_1194:
	lea	rdi, [rbp - 0x88]
	call	mbuiter_multi_next
	xor	eax, eax
	mov	cl, al
	test	byte ptr [rbp - 0x68], 1
	mov	byte ptr [rbp - 0x149], cl
	je	.label_1203
	cmp	dword ptr [rbp - 0x64], 0
	sete	al
	mov	byte ptr [rbp - 0x149], al
.label_1203:
	mov	al, byte ptr [rbp - 0x149]
	xor	al, 0xff
	test	al, 1
	jne	.label_1198
	jmp	.label_1199
.label_1198:
	lea	rax, [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x90]
	imul	rcx, rcx, 0x30
	add	rcx, qword ptr [rbp - 0x30]
	add	rax, 0x10
	mov	rdi, rcx
	mov	rsi, rax
	call	mb_copy
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	mov	byte ptr [rbp - 0x7c], 0
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_1194
.label_1191:
	cmp	qword ptr [rbp - 0xa0], 0
	jne	.label_1204
	mov	rax, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	qword ptr [rdx + rcx*8], rax
	jmp	.label_1189
.label_1187:
	lea	rdi, [rbp - 0xf0]
	call	mbuiter_multi_next
	xor	eax, eax
	mov	cl, al
	test	byte ptr [rbp - 0xd0], 1
	mov	byte ptr [rbp - 0x167], cl
	je	.label_1184
	cmp	dword ptr [rbp - 0xcc], 0
	sete	al
	mov	byte ptr [rbp - 0x167], al
.label_1184:
	mov	al, byte ptr [rbp - 0x167]
	xor	al, 0xff
	test	al, 1
	jne	.label_1177
	call	abort
.label_1202:
	imul	rax, qword ptr [rbp - 0x28], 0x38
	cmp	rax, 0xfa1
	jae	.label_1200
	mov	rax, qword ptr [rbp - 0x28]
	imul	rax, rax, 0x38
	add	rax, 0x2e
	and	rax, 0xfffffffffffffff0
	mov	rcx, rsp
	sub	rcx, rax
	mov	rsp, rcx
	add	rcx, 0x1f
	and	rcx, 0xffffffffffffffe0
	mov	qword ptr [rbp - 0x148], rcx
	jmp	.label_1205
.label_1193:
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0xa0]
	imul	rcx, rcx, 0x30
	add	rcx, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rcx + 8]
	jne	.label_1191
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rdi, qword ptr [rax]
	mov	rax, qword ptr [rbp - 0xa0]
	imul	rax, rax, 0x30
	add	rax, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rax]
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rdx, qword ptr [rax + 8]
	call	memcmp
	cmp	eax, 0
	jne	.label_1191
.label_1206:
	mov	rax, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rbp - 0xa0]
	add	rcx, 1
	mov	qword ptr [rbp - 0xa0], rcx
	sub	rax, rcx
	mov	rcx, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	qword ptr [rdx + rcx*8], rax
	jmp	.label_1189
.label_1199:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rax + 8], 1
	mov	qword ptr [rbp - 0xa0], 0
	mov	qword ptr [rbp - 0x98], 2
.label_1196:
	mov	rax, qword ptr [rbp - 0x98]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1195
	mov	rax, qword ptr [rbp - 0x98]
	sub	rax, 1
	imul	rax, rax, 0x30
	add	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xa8], rax
.label_1197:
	mov	rax, qword ptr [rbp - 0xa8]
	test	byte ptr [rax + 0x10], 1
	je	.label_1193
	mov	rax, qword ptr [rbp - 0xa0]
	imul	rax, rax, 0x30
	add	rax, qword ptr [rbp - 0x30]
	test	byte ptr [rax + 0x10], 1
	je	.label_1193
	mov	rax, qword ptr [rbp - 0xa8]
	mov	ecx, dword ptr [rax + 0x14]
	mov	rax, qword ptr [rbp - 0xa0]
	imul	rax, rax, 0x30
	add	rax, qword ptr [rbp - 0x30]
	cmp	ecx, dword ptr [rax + 0x14]
	je	.label_1206
	jmp	.label_1191
.label_1189:
	jmp	.label_1190
.label_1190:
	mov	rax, qword ptr [rbp - 0x98]
	add	rax, 1
	mov	qword ptr [rbp - 0x98], rax
	jmp	.label_1196
.label_1174:
	mov	rax, qword ptr [rbp - 0xb0]
	imul	rax, rax, 0x30
	add	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 8]
	cmp	rax, qword ptr [rbp - 0x118]
	jne	.label_1185
	mov	rax, qword ptr [rbp - 0xb0]
	imul	rax, rax, 0x30
	add	rax, qword ptr [rbp - 0x30]
	mov	rdi, qword ptr [rax]
	mov	rsi, qword ptr [rbp - 0x120]
	mov	rax, qword ptr [rbp - 0xb0]
	imul	rax, rax, 0x30
	add	rax, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rax + 8]
	call	memcmp
	cmp	eax, 0
	jne	.label_1185
.label_1180:
	mov	rax, qword ptr [rbp - 0xb0]
	add	rax, 1
	mov	qword ptr [rbp - 0xb0], rax
	mov	rax, qword ptr [rbp - 0x118]
	add	rax, qword ptr [rbp - 0x120]
	mov	qword ptr [rbp - 0x120], rax
	mov	byte ptr [rbp - 0x124], 0
	mov	rax, qword ptr [rbp - 0xb0]
	cmp	rax, qword ptr [rbp - 0x28]
	jne	.label_1172
	mov	rax, qword ptr [rbp - 0xe0]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
	jmp	.label_1176
.label_1204:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rdx, qword ptr [rbp - 0x38]
	sub	rax, qword ptr [rdx + rcx*8]
	mov	qword ptr [rbp - 0xa0], rax
	jmp	.label_1197
.label_1185:
	cmp	qword ptr [rbp - 0xb0], 0
	jbe	.label_1187
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x138], rax
	mov	rax, qword ptr [rbp - 0x138]
	mov	rcx, qword ptr [rbp - 0xb0]
	sub	rcx, rax
	mov	qword ptr [rbp - 0xb0], rcx
.label_1181:
	cmp	qword ptr [rbp - 0x138], 0
	jbe	.label_1186
	lea	rdi, [rbp - 0xf0]
	call	mbuiter_multi_next
	xor	eax, eax
	mov	cl, al
	test	byte ptr [rbp - 0xd0], 1
	mov	byte ptr [rbp - 0x166], cl
	je	.label_1178
	cmp	dword ptr [rbp - 0xcc], 0
	sete	al
	mov	byte ptr [rbp - 0x166], al
.label_1178:
	mov	al, byte ptr [rbp - 0x166]
	xor	al, 0xff
	test	al, 1
	jne	.label_1188
	call	abort
.label_1172:
	jmp	.label_1173
.label_1195:
	xor	eax, eax
	mov	ecx, 8
	mov	edx, ecx
	lea	rsi, [rbp - 0x130]
	lea	rdi, [rbp - 0xf0]
	mov	r8, qword ptr [rbp - 0x20]
	mov	qword ptr [r8], 0
	mov	qword ptr [rbp - 0xb0], 0
	mov	r8, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0xe0], r8
	mov	byte ptr [rbp - 0xf0], 0
	add	rdi, 4
	mov	qword ptr [rbp - 0x158], rsi
	mov	esi, eax
	mov	qword ptr [rbp - 0x160], rdx
	mov	dword ptr [rbp - 0x164], eax
	call	memset
	mov	byte ptr [rbp - 0xe4], 0
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x120], rdx
	mov	byte ptr [rbp - 0x130], 0
	mov	rdx, qword ptr [rbp - 0x158]
	add	rdx, 4
	mov	rdi, rdx
	mov	esi, dword ptr [rbp - 0x164]
	mov	rdx, qword ptr [rbp - 0x160]
	call	memset
	mov	byte ptr [rbp - 0x124], 0
.label_1175:
	lea	rdi, [rbp - 0x130]
	call	mbuiter_multi_next
	xor	eax, eax
	mov	cl, al
	test	byte ptr [rbp - 0x110], 1
	mov	byte ptr [rbp - 0x165], cl
	je	.label_1179
	cmp	dword ptr [rbp - 0x10c], 0
	sete	al
	mov	byte ptr [rbp - 0x165], al
.label_1179:
	mov	al, byte ptr [rbp - 0x165]
	xor	al, 0xff
	test	al, 1
	jne	.label_1182
	jmp	.label_1176
.label_1182:
	mov	rax, qword ptr [rbp - 0xb0]
	imul	rax, rax, 0x30
	add	rax, qword ptr [rbp - 0x30]
	test	byte ptr [rax + 0x10], 1
	je	.label_1174
	test	byte ptr [rbp - 0x110], 1
	je	.label_1174
	mov	rax, qword ptr [rbp - 0xb0]
	imul	rax, rax, 0x30
	add	rax, qword ptr [rbp - 0x30]
	mov	ecx, dword ptr [rax + 0x14]
	cmp	ecx, dword ptr [rbp - 0x10c]
	je	.label_1180
	jmp	.label_1185
.label_1176:
	mov	rdi, qword ptr [rbp - 0x40]
	call	freea
	mov	byte ptr [rbp - 1], 1
.label_1207:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	mov	rsp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ef58
	.globl sub_40ef58
	.type sub_40ef58, @function
sub_40ef58:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ef60

	.globl create_tree
	.type create_tree, @function
create_tree:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	lea	rax, [rbp - 0x30]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	dword ptr [rbp - 0x1c], ecx
	mov	ecx, dword ptr [rbp - 0x1c]
	mov	r8d, dword ptr [rbp - 0x28]
	and	ecx, 0xff
	and	r8d, 0xffffff00
	or	r8d, ecx
	mov	dword ptr [rbp - 0x28], r8d
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, rax
	call	create_token_tree
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40efb0
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rax, 0x7fffffffffffffff
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_1208
	call	xalloc_die
.label_1208:
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x10]
	imul	rax, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	xrealloc
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f000

	.globl bitset_copy
	.type bitset_copy, @function
bitset_copy:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rdi]
	mov	qword ptr [rsi], rax
	mov	rax, qword ptr [rdi + 8]
	mov	qword ptr [rsi + 8], rax
	mov	rax, qword ptr [rdi + 0x10]
	mov	qword ptr [rsi + 0x10], rax
	mov	rax, qword ptr [rdi + 0x18]
	mov	qword ptr [rsi + 0x18], rax
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f034
	.globl sub_40f034
	.type sub_40f034, @function
sub_40f034:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f040

	.globl check_node_accept
	.type check_node_accept, @function
check_node_accept:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 8]
	mov	al, byte ptr [rsi + rdx]
	mov	byte ptr [rbp - 0x21], al
	mov	rdx, qword ptr [rbp - 0x18]
	movzx	ecx, byte ptr [rdx + 8]
	dec	ecx
	mov	edx, ecx
	sub	ecx, 6
	mov	qword ptr [rbp - 0x30], rdx
	mov	dword ptr [rbp - 0x34], ecx
	ja	.label_1209
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1210]]
	jmp	rcx
	.section	.text
	.align	16
	#Procedure 0x40f08c

	.globl sub_40f08c
	.type sub_40f08c, @function
sub_40f08c:
	jmp	.label_1216
.label_1213:
	jmp	.label_1214
.label_1214:
	mov	byte ptr [rbp - 1], 1
.label_1211:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f0a8
	.globl sub_40f0a8
	.type sub_40f0a8, @function
sub_40f0a8:

	nop	word ptr cs:[rax + rax]
.label_1223:
	jmp	.label_1220
.label_1220:
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, 0xa
	jne	.label_1221
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x98]
	mov	rax, qword ptr [rax + 0xd8]
	and	rax, 0x40
	cmp	rax, 0
	je	.label_1222
.label_1221:
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, 0
	jne	.label_1219
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x98]
	mov	rax, qword ptr [rax + 0xd8]
	and	rax, 0x80
	cmp	rax, 0
	je	.label_1219
.label_1222:
	mov	byte ptr [rbp - 1], 0
	jmp	.label_1211
	.section	.text
	.align	16
	#Procedure 0x40f11c

	.globl sub_40f11c
	.type sub_40f11c, @function
sub_40f11c:
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, 0x80
	jl	.label_1223
	mov	byte ptr [rbp - 1], 0
	jmp	.label_1211
	.section	.text
	.align	16
	#Procedure 0x40f134

	.globl sub_40f134
	.type sub_40f134, @function
sub_40f134:
	mov	rax, qword ptr [rbp - 0x18]
	movzx	ecx, byte ptr [rax]
	movzx	edx, byte ptr [rbp - 0x21]
	cmp	ecx, edx
	je	.label_1224
	mov	byte ptr [rbp - 1], 0
	jmp	.label_1211
.label_1216:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rax + 8]
	shr	ecx, 8
	and	ecx, 0x3ff
	cmp	ecx, 0
	je	.label_1214
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rax + 0xa0]
	call	re_string_context_at
	mov	dword ptr [rbp - 0x28], eax
	mov	rsi, qword ptr [rbp - 0x18]
	mov	eax, dword ptr [rsi + 8]
	shr	eax, 8
	and	eax, 0x3ff
	and	eax, 4
	cmp	eax, 0
	je	.label_1212
	mov	eax, dword ptr [rbp - 0x28]
	and	eax, 1
	cmp	eax, 0
	je	.label_1215
.label_1212:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rax + 8]
	shr	ecx, 8
	and	ecx, 0x3ff
	and	ecx, 8
	cmp	ecx, 0
	je	.label_1217
	mov	eax, dword ptr [rbp - 0x28]
	and	eax, 1
	cmp	eax, 0
	jne	.label_1215
.label_1217:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rax + 8]
	shr	ecx, 8
	and	ecx, 0x3ff
	and	ecx, 0x20
	cmp	ecx, 0
	je	.label_1218
	mov	eax, dword ptr [rbp - 0x28]
	and	eax, 2
	cmp	eax, 0
	je	.label_1215
.label_1218:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rax + 8]
	shr	ecx, 8
	and	ecx, 0x3ff
	and	ecx, 0x80
	cmp	ecx, 0
	je	.label_1213
	mov	eax, dword ptr [rbp - 0x28]
	and	eax, 8
	cmp	eax, 0
	jne	.label_1213
.label_1215:
	mov	byte ptr [rbp - 1], 0
	jmp	.label_1211
.label_1219:
	jmp	.label_1216
.label_1209:
	mov	byte ptr [rbp - 1], 0
	jmp	.label_1211
	.section	.text
	.align	16
	#Procedure 0x40f248

	.globl sub_40f248
	.type sub_40f248, @function
sub_40f248:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rax]
	movzx	ecx, byte ptr [rbp - 0x21]
	mov	esi, ecx
	call	bitset_contain
	test	al, 1
	jne	sub_40f08c
	mov	byte ptr [rbp - 1], 0
	jmp	.label_1211
.label_1224:
	jmp	.label_1216
	.section	.text
	.align	16
	#Procedure 0x40f270
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	je	.label_1225
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1226
.label_1225:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1226
.label_1226:
	mov	rax, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rax]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f2ab
	.globl sub_40f2ab
	.type sub_40f2ab, @function
sub_40f2ab:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f2b0
	.globl rpl_re_match_2
	.type rpl_re_match_2, @function
rpl_re_match_2:

	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 0x78
	mov	rax, qword ptr [rbp + 0x18]
	mov	r10, qword ptr [rbp + 0x10]
	xor	r11d, r11d
	mov	ebx, r11d
	mov	r11d, 1
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	qword ptr [rbp - 0x38], r9
	mov	qword ptr [rbp - 0x40], r10
	mov	qword ptr [rbp - 0x48], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	r9, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x40]
	mov	r10, qword ptr [rbp - 0x48]
	mov	qword ptr [rsp], 0
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	mov	dword ptr [rsp + 0x18], 1
	mov	qword ptr [rbp - 0x50], rbx
	mov	dword ptr [rbp - 0x54], r11d
	call	re_search_2_stub
	add	rsp, 0x78
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f33b
	.globl sub_40f33b
	.type sub_40f33b, @function
sub_40f33b:

	nop	dword ptr [rax + rax]
.label_1238:
	jmp	.label_1227
.label_1227:
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x20], 1
	mov	rax, qword ptr [rbp - 8]
	add	rax, 4
	mov	rdi, rax
	call	mbsinit
	cmp	eax, 0
	je	.label_1230
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax], 0
.label_1230:
	jmp	.label_1231
.label_1231:
	jmp	.label_1228
.label_1228:
	jmp	.label_1229
.label_1229:
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0xc], 1
.label_1244:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f38a
	.globl sub_40f38a
	.type sub_40f38a, @function
sub_40f38a:

	nop	dword ptr [rax]
.label_1240:
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x18], 0
	jne	.label_1227
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x18], 1
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_1232
	jmp	.label_1233
.label_1232:
	movabs	rdi, OFFSET FLAT:label_1234
	movabs	rsi, OFFSET FLAT:label_1235
	mov	edx, 0xb2
	movabs	rcx, OFFSET FLAT:label_1236
	call	__assert_fail
.label_1243:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 4
	mov	rdi, rax
	call	mbsinit
	cmp	eax, 0
	je	.label_1249
	jmp	.label_1242
.label_1233:
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 0x24], 0
	jne	.label_1239
	jmp	.label_1238
.label_1246:
	mov	rax, qword ptr [rbp - 8]
	test	byte ptr [rax], 1
	je	.label_1247
	jmp	.label_1241
	.section	.text
	.align	16
	#Procedure 0x40f430

	.globl mbuiter_multi_next
	.type mbuiter_multi_next, @function
mbuiter_multi_next:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	test	byte ptr [rdi + 0xc], 1
	je	.label_1246
	jmp	.label_1244
.label_1247:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x10]
	movsx	edi, byte ptr [rax]
	call	is_basic
	test	al, 1
	jne	.label_1250
	jmp	.label_1243
.label_1250:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x18], 1
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x10]
	movsx	ecx, byte ptr [rax]
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x24], ecx
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x20], 1
	jmp	.label_1229
.label_1242:
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax], 1
.label_1241:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x10
	add	rax, 0x14
	mov	rcx, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rcx + 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rcx + 0x10]
	mov	qword ptr [rbp - 0x10], rax
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdi
	call	__ctype_get_mb_cur_max
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, rax
	call	strnlen1
	mov	rcx, qword ptr [rbp - 8]
	add	rcx, 4
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, rax
	call	rpl_mbrtowc
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x18], rax
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x18], -1
	jne	.label_1248
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x18], 1
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x20], 0
	jmp	.label_1228
.label_1249:
	movabs	rdi, OFFSET FLAT:label_1245
	movabs	rsi, OFFSET FLAT:label_1235
	mov	edx, 0x96
	movabs	rcx, OFFSET FLAT:label_1236
	call	__assert_fail
.label_1248:
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x18], -2
	jne	.label_1240
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 0x10]
	call	strlen
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + 0x18], rax
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x20], 0
	jmp	.label_1231
.label_1239:
	movabs	rdi, OFFSET FLAT:label_1237
	movabs	rsi, OFFSET FLAT:label_1235
	mov	edx, 0xb3
	movabs	rcx, OFFSET FLAT:label_1236
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x40f5a0

	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rax, 0x7fffffffffffffff
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 8]
	jae	.label_1251
	call	xalloc_die
.label_1251:
	mov	rax, qword ptr [rbp - 8]
	imul	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	xmalloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f5e8
	.globl sub_40f5e8
	.type sub_40f5e8, @function
sub_40f5e8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f5f0

	.globl bitset_clear
	.type bitset_clear, @function
bitset_clear:
	push	rbp
	mov	rbp, rsp
	mov	eax, 0x40
	mov	ecx, eax
	mov	eax, 1
	mov	edx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rdx
	cqo	
	idiv	rcx
	mov	qword ptr [rbp - 0x20], rcx
	mov	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x18]
	shl	rdx, cl
	xor	rdx, 0xffffffffffffffff
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rax, rsi
	mov	qword ptr [rbp - 0x28], rdx
	cqo	
	mov	rsi, qword ptr [rbp - 0x20]
	idiv	rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	r8, qword ptr [rbp - 0x28]
	and	r8, qword ptr [rdi + rax*8]
	mov	qword ptr [rdi + rax*8], r8
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f64f
	.globl sub_40f64f
	.type sub_40f64f, @function
sub_40f64f:

	nop	
.label_1262:
	mov	dword ptr [rbp - 4], 0
.label_1269:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xa0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f663
	.globl sub_40f663
	.type sub_40f663, @function
sub_40f663:

	nop	dword ptr [rax + rax]
.label_1280:
	mov	qword ptr [rbp - 0x48], 0
.label_1278:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_1279
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x90], rax
	mov	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x10]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	and	edx, 0xff
	mov	dword ptr [rbp - 0x94], edx
	cmp	dword ptr [rbp - 0x94], 9
	je	.label_1253
	cmp	dword ptr [rbp - 0x94], 8
	jne	.label_1266
.label_1253:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x90]
	mov	rdx, qword ptr [rbp - 0x10]
	shl	rcx, 4
	add	rcx, qword ptr [rdx]
	cmp	rax, qword ptr [rcx]
	je	.label_1274
	jmp	.label_1276
.label_1277:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x10]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x60]
	mov	rax, qword ptr [rax + 0x18]
	cmp	rax, qword ptr [rbp - 0x38]
	jne	.label_1280
	mov	qword ptr [rbp - 0x68], -1
	mov	qword ptr [rbp - 0x70], -1
	mov	qword ptr [rbp - 0x48], 0
.label_1256:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_1270
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x78], rax
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x10]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	and	edx, 0xff
	mov	dword ptr [rbp - 0x7c], edx
	cmp	dword ptr [rbp - 0x7c], 8
	jne	.label_1254
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rdx, qword ptr [rbp - 0x10]
	shl	rcx, 4
	add	rcx, qword ptr [rdx]
	cmp	rax, qword ptr [rcx]
	jne	.label_1254
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x68], rax
	jmp	.label_1257
.label_1271:
	jmp	.label_1258
.label_1258:
	jmp	.label_1268
.label_1279:
	jmp	.label_1268
.label_1268:
	jmp	.label_1263
.label_1263:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1272
.label_1254:
	cmp	dword ptr [rbp - 0x7c], 9
	jne	.label_1275
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rdx, qword ptr [rbp - 0x10]
	shl	rcx, 4
	add	rcx, qword ptr [rdx]
	cmp	rax, qword ptr [rcx]
	jne	.label_1275
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x70], rax
.label_1275:
	jmp	.label_1257
.label_1257:
	jmp	.label_1255
.label_1255:
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_1256
.label_1259:
	jmp	.label_1261
.label_1261:
	cmp	qword ptr [rbp - 0x70], 0
	jl	.label_1258
	mov	qword ptr [rbp - 0x48], 0
.label_1264:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_1271
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x88], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x38]
	imul	rcx, qword ptr [rbp - 0x88], 0x18
	add	rax, rcx
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdi, rax
	call	re_node_set_contains
	cmp	rax, 0
	jne	.label_1265
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x30]
	imul	rcx, qword ptr [rbp - 0x88], 0x18
	add	rax, rcx
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdi, rax
	call	re_node_set_contains
	cmp	rax, 0
	jne	.label_1265
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	call	sub_epsilon_src_nodes
	mov	dword ptr [rbp - 0x3c], eax
	cmp	dword ptr [rbp - 0x3c], 0
	setne	r8b
	and	r8b, 1
	movzx	eax, r8b
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_1273
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1269
	.section	.text
	.align	16
	#Procedure 0x40f8f3

	.globl check_subexp_limits
	.type check_subexp_limits, @function
check_subexp_limits:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xa0
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	qword ptr [rbp - 0x38], r9
	mov	qword ptr [rbp - 0x50], 0
.label_1272:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_1262
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rdx + 0x10]
	imul	rcx, qword ptr [rdx + rcx*8], 0x28
	add	rax, rcx
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rcx + 0x10]
	jle	.label_1267
	mov	rax, qword ptr [rbp - 0x60]
	mov	rax, qword ptr [rax + 8]
	cmp	rax, qword ptr [rbp - 0x38]
	jge	.label_1277
.label_1267:
	jmp	.label_1263
.label_1273:
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, -1
	mov	qword ptr [rbp - 0x48], rax
.label_1265:
	jmp	.label_1252
.label_1252:
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_1264
.label_1274:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x90]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	call	sub_epsilon_src_nodes
	mov	dword ptr [rbp - 0x3c], eax
	cmp	dword ptr [rbp - 0x3c], 0
	setne	r8b
	and	r8b, 1
	movzx	eax, r8b
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_1260
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1269
.label_1260:
	jmp	.label_1266
.label_1266:
	jmp	.label_1276
.label_1276:
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_1278
.label_1270:
	cmp	qword ptr [rbp - 0x68], 0
	jl	.label_1261
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x68]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	call	sub_epsilon_src_nodes
	mov	dword ptr [rbp - 0x3c], eax
	cmp	dword ptr [rbp - 0x3c], 0
	setne	r8b
	and	r8b, 1
	movzx	eax, r8b
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_1259
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1269
	.section	.text
	.align	16
	#Procedure 0x40fa40

	.globl free_state
	.type free_state, @function
free_state:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 0x30]
	call	free
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 0x48]
	call	free
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 0x50]
	mov	rax, qword ptr [rbp - 8]
	add	rax, 8
	cmp	rdi, rax
	je	.label_1281
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x50]
	mov	rax, qword ptr [rax + 0x10]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x50]
	mov	rdi, rax
	call	free
.label_1281:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x18]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x60]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x58]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	free
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40fae5
	.globl sub_40fae5
	.type sub_40fae5, @function
sub_40fae5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40faf0

	.globl create_cd_newstate
	.type create_cd_newstate, @function
create_cd_newstate:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	eax, 0x70
	mov	r8d, eax
	mov	eax, 1
	mov	r9d, eax
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x38], 0
	mov	rdi, r8
	mov	rsi, r9
	call	calloc
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x48], 0
	sete	r10b
	and	r10b, 1
	movzx	edx, r10b
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_1292
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1289
.label_1286:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	dl, al
	mov	sil, byte ptr [rcx + 0x68]
	and	dl, 0xf
	and	sil, 0xf0
	or	sil, dl
	mov	byte ptr [rcx + 0x68], sil
	mov	rcx, qword ptr [rbp - 0x48]
	add	rcx, 8
	mov	rdi, qword ptr [rbp - 0x48]
	mov	qword ptr [rdi + 0x50], rcx
	mov	qword ptr [rbp - 0x30], 0
.label_1300:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_1283
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	rcx, qword ptr [rdx + rcx*8]
	shl	rcx, 4
	add	rax, rcx
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x50]
	mov	esi, dword ptr [rax + 8]
	and	esi, 0xff
	mov	dword ptr [rbp - 0x54], esi
	mov	rax, qword ptr [rbp - 0x50]
	mov	esi, dword ptr [rax + 8]
	shr	esi, 8
	and	esi, 0x3ff
	mov	dword ptr [rbp - 0x58], esi
	cmp	dword ptr [rbp - 0x54], 1
	jne	.label_1287
	cmp	dword ptr [rbp - 0x58], 0
	jne	.label_1287
	jmp	.label_1299
.label_1293:
	cmp	dword ptr [rbp - 0x54], 4
	jne	.label_1301
	mov	rax, qword ptr [rbp - 0x48]
	mov	cl, byte ptr [rax + 0x68]
	and	cl, 0xbf
	or	cl, 0x40
	mov	byte ptr [rax + 0x68], cl
.label_1301:
	jmp	.label_1285
.label_1285:
	cmp	dword ptr [rbp - 0x58], 0
	je	.label_1290
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 0x50]
	mov	rcx, qword ptr [rbp - 0x48]
	add	rcx, 8
	cmp	rax, rcx
	jne	.label_1291
	mov	eax, 0x18
	mov	edi, eax
	call	malloc
	mov	rdi, qword ptr [rbp - 0x48]
	mov	qword ptr [rdi + 0x50], rax
	mov	rax, qword ptr [rbp - 0x48]
	cmp	qword ptr [rax + 0x50], 0
	sete	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_1296
	mov	rdi, qword ptr [rbp - 0x48]
	call	free_state
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1289
.label_1292:
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 8
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	re_node_set_init_copy
	mov	dword ptr [rbp - 0x3c], eax
	cmp	dword ptr [rbp - 0x3c], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rsi, eax
	cmp	rsi, 0
	je	.label_1286
	mov	rax, qword ptr [rbp - 0x48]
	mov	rdi, rax
	call	free
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1289
.label_1283:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x28]
	call	register_state
	mov	dword ptr [rbp - 0x3c], eax
	cmp	dword ptr [rbp - 0x3c], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rdx, eax
	cmp	rdx, 0
	je	.label_1297
	mov	rdi, qword ptr [rbp - 0x48]
	call	free_state
	mov	qword ptr [rbp - 0x48], 0
.label_1297:
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 8], rax
.label_1289:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40fd22
	.globl sub_40fd22
	.type sub_40fd22, @function
sub_40fd22:

	nop	word ptr cs:[rax + rax]
.label_1287:
	mov	rax, qword ptr [rbp - 0x50]
	mov	ecx, dword ptr [rax + 8]
	shr	ecx, 0x14
	and	ecx, 1
	mov	rax, qword ptr [rbp - 0x48]
	mov	dl, byte ptr [rax + 0x68]
	shr	dl, 5
	and	dl, 1
	movzx	esi, dl
	or	esi, ecx
	mov	dl, sil
	mov	dil, byte ptr [rax + 0x68]
	and	dl, 1
	shl	dl, 5
	and	dil, 0xdf
	or	dil, dl
	mov	byte ptr [rax + 0x68], dil
	cmp	dword ptr [rbp - 0x54], 2
	jne	.label_1293
	mov	rax, qword ptr [rbp - 0x48]
	mov	cl, byte ptr [rax + 0x68]
	and	cl, 0xef
	or	cl, 0x10
	mov	byte ptr [rax + 0x68], cl
	jmp	.label_1285
.label_1296:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rdi, qword ptr [rax + 0x50]
	mov	rsi, qword ptr [rbp - 0x18]
	call	re_node_set_init_copy
	cmp	eax, 0
	je	.label_1294
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1289
.label_1294:
	mov	qword ptr [rbp - 0x38], 0
	mov	rax, qword ptr [rbp - 0x48]
	mov	cl, byte ptr [rax + 0x68]
	and	cl, 0x7f
	or	cl, 0x80
	mov	byte ptr [rax + 0x68], cl
.label_1291:
	mov	eax, dword ptr [rbp - 0x58]
	and	eax, 1
	cmp	eax, 0
	je	.label_1295
	mov	eax, dword ptr [rbp - 0x1c]
	and	eax, 1
	cmp	eax, 0
	je	.label_1284
.label_1295:
	mov	eax, dword ptr [rbp - 0x58]
	and	eax, 2
	cmp	eax, 0
	je	.label_1298
	mov	eax, dword ptr [rbp - 0x1c]
	and	eax, 1
	cmp	eax, 0
	jne	.label_1284
.label_1298:
	mov	eax, dword ptr [rbp - 0x58]
	and	eax, 0x10
	cmp	eax, 0
	je	.label_1282
	mov	eax, dword ptr [rbp - 0x1c]
	and	eax, 2
	cmp	eax, 0
	je	.label_1284
.label_1282:
	mov	eax, dword ptr [rbp - 0x58]
	and	eax, 0x40
	cmp	eax, 0
	je	.label_1288
	mov	eax, dword ptr [rbp - 0x1c]
	and	eax, 4
	cmp	eax, 0
	jne	.label_1288
.label_1284:
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 8
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x38]
	mov	rdi, rax
	mov	rsi, rcx
	call	re_node_set_remove_at
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
.label_1288:
	jmp	.label_1290
.label_1290:
	jmp	.label_1299
.label_1299:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1300
.label_1309:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0xb8], 0
	je	.label_1302
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0xb8]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 0x40]
	add	rcx, 1
	shl	rcx, 3
	mov	rdi, rax
	mov	rsi, rcx
	call	realloc
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	sete	dl
	and	dl, 1
	movzx	r8d, dl
	movsxd	rax, r8d
	cmp	rax, 0
	je	.label_1319
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_1311
.label_1318:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x40]
	shl	rax, 1
	mov	qword ptr [rbp - 0x40], rax
.label_1314:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	rcx, rax
	jge	.label_1317
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x58]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 0x40]
	shl	rcx, 1
	cmp	rax, rcx
	jge	.label_1307
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x58]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_1308
.label_1307:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x40]
	shl	rax, 1
	mov	qword ptr [rbp - 0x48], rax
.label_1308:
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1305
	.section	.text
	.align	16
	#Procedure 0x40ff50

	.globl extend_buffers
	.type extend_buffers, @function
extend_buffers:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	movabs	rax, 0xfffffffffffffff
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rdi
	mov	rdi, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rdi + 0x40]
	setbe	cl
	and	cl, 1
	movzx	esi, cl
	movsxd	rax, esi
	cmp	rax, 0
	je	.label_1310
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_1311
.label_1313:
	jmp	.label_1315
.label_1319:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0xb8], rax
.label_1302:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	byte ptr [rax + 0x88], 0
	je	.label_1316
	mov	rax, qword ptr [rbp - 0x20]
	cmp	dword ptr [rax + 0x90], 1
	jle	.label_1306
	mov	rdi, qword ptr [rbp - 0x20]
	call	build_wcs_upper_buffer
	mov	dword ptr [rbp - 0x18], eax
	cmp	dword ptr [rbp - 0x18], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rdi, eax
	cmp	rdi, 0
	je	.label_1313
	mov	eax, dword ptr [rbp - 0x18]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1311
.label_3817:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 0x78], 0
	je	.label_1304
	mov	rdi, qword ptr [rbp - 0x20]
	call	re_string_translate_buffer
.label_1304:
	jmp	.label_1312
.label_1312:
	jmp	.label_1320
.label_1320:
	mov	dword ptr [rbp - 4], 0
.label_1311:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410034
	.globl sub_410034
	.type sub_410034, @function
sub_410034:

	nop	
.label_1317:
	movsxd	rax, dword ptr [rbp - 0x14]
	mov	qword ptr [rbp - 0x50], rax
.label_1305:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, rax
	call	re_string_realloc_buffers
	mov	dword ptr [rbp - 0x18], eax
	cmp	dword ptr [rbp - 0x18], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rsi, eax
	cmp	rsi, 0
	je	.label_1309
	mov	eax, dword ptr [rbp - 0x18]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1311
.label_1310:
	mov	rdi, qword ptr [rbp - 0x20]
	movsxd	rax, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 0x58]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rdx + 0x40]
	shl	rdx, 1
	cmp	rcx, rdx
	mov	qword ptr [rbp - 0x30], rdi
	mov	qword ptr [rbp - 0x38], rax
	jge	.label_1318
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x58]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_1314
.label_1306:
	mov	rdi, qword ptr [rbp - 0x20]
	call	build_upper_buffer
.label_1315:
	jmp	.label_1320
.label_1316:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	dword ptr [rax + 0x90], 1
	jle	.label_3817
	mov	rdi, qword ptr [rbp - 0x20]
	call	build_wcs_buffer
	jmp	.label_1312
.label_1321:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	qword ptr [rcx + 8], rax
.label_1322:
	jmp	.label_1323
.label_1323:
	mov	dword ptr [rbp - 4], 0
.label_1324:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410114
	.globl sub_410114
	.type sub_410114, @function
sub_410114:

	nop	word ptr cs:[rax + rax]
.label_1326:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 8], 2
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	jge	.label_1321
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	qword ptr [rcx + 8], rax
	jmp	.label_1322
.label_1325:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	jne	.label_1326
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 8], 1
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	qword ptr [rcx], rax
	jmp	.label_1323
	.section	.text
	.align	16
	#Procedure 0x41018c

	.globl re_node_set_init_2
	.type re_node_set_init_2, @function
re_node_set_init_2:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	eax, 0x10
	mov	ecx, eax
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx], 2
	mov	rdi, rcx
	call	malloc
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x10], 0
	sete	r8b
	and	r8b, 1
	movzx	r9d, r8b
	movsxd	rax, r9d
	cmp	rax, 0
	je	.label_1325
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_1324
	.section	.text
	.align	16
	#Procedure 0x4101f0

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	push	rbp
	mov	rbp, rsp
	mov	edi, 1
	call	usage
	.section	.text
	.align	16
	#Procedure 0x4101fe
	.globl sub_4101fe
	.type sub_4101fe, @function
sub_4101fe:

	pop	rbp
	ret	
.label_1358:
	mov	rax, qword ptr [rbp - 0x40]
	cmp	qword ptr [rax + 0xb8], 0
	je	.label_1327
	mov	rax, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rdx + 0xb8]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x58]
	cmp	qword ptr [rax + 0x98], 0
	je	.label_1333
	xor	eax, eax
	mov	edx, eax
	mov	byte ptr [rbp - 0x81], 0
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x80]
	add	rcx, 8
	mov	rsi, rcx
	call	check_subexp_matching_top
	mov	dword ptr [rbp - 0x5c], eax
	cmp	dword ptr [rbp - 0x5c], 0
	setne	r8b
	and	r8b, 1
	movzx	eax, r8b
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_1347
	movsxd	rax, dword ptr [rbp - 0x5c]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1338
.label_1352:
	mov	byte ptr [rbp - 0x81], 0
.label_1336:
	jmp	.label_1345
.label_1345:
	mov	rax, qword ptr [rbp - 0x80]
	mov	cl, byte ptr [rax + 0x68]
	shr	cl, 4
	and	cl, 1
	movzx	edx, cl
	cmp	edx, 0
	je	.label_1349
	mov	rax, qword ptr [rbp - 0x80]
	mov	cl, byte ptr [rax + 0x68]
	shr	cl, 7
	movzx	edx, cl
	cmp	edx, 0
	je	.label_1362
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rax + 0x48]
	call	check_halt_state_context
	cmp	rax, 0
	je	.label_1350
.label_1362:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + 0x48]
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x68], 1
	mov	qword ptr [rbp - 0x50], 0
	test	byte ptr [rbp - 0x41], 1
	jne	.label_1371
	jmp	.label_1329
.label_1340:
	mov	eax, dword ptr [rbp - 0x2c]
	and	eax, 2
	cmp	eax, 0
	je	.label_1332
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x58]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1337
.label_1356:
	mov	qword ptr [rbp - 0x38], -2
	jmp	.label_1338
.label_1363:
	movabs	rdi, OFFSET FLAT:label_1334
	movabs	rsi, OFFSET FLAT:label_491
	mov	edx, 0x435
	movabs	rcx, OFFSET FLAT:label_1335
	call	__assert_fail
.label_1353:
	jmp	.label_1328
.label_1328:
	test	byte ptr [rbp - 0x81], 1
	je	.label_1345
	mov	rax, qword ptr [rbp - 0x98]
	cmp	rax, qword ptr [rbp - 0x80]
	jne	.label_1352
	mov	rax, qword ptr [rbp - 0xa0]
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_1336
	.section	.text
	.align	16
	#Procedure 0x410397

	.globl check_matching
	.type check_matching, @function
check_matching:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xa0
	mov	al, sil
	lea	rcx, [rbp - 0x5c]
	mov	qword ptr [rbp - 0x40], rdi
	and	al, 1
	mov	byte ptr [rbp - 0x41], al
	mov	qword ptr [rbp - 0x50], rdx
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rdx + 0x98]
	mov	qword ptr [rbp - 0x58], rdx
	mov	qword ptr [rbp - 0x68], 0
	mov	qword ptr [rbp - 0x70], -1
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rdx + 0x48]
	mov	qword ptr [rbp - 0x78], rdx
	cmp	qword ptr [rbp - 0x50], 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x81], al
	mov	rdx, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x90], rdx
	mov	dword ptr [rbp - 0x5c], 0
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rdi, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x10], rcx
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rdi
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x98]
	mov	qword ptr [rbp - 0x28], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rcx + 0x48]
	mov	al, byte ptr [rcx + 0x68]
	shr	al, 7
	movzx	esi, al
	cmp	esi, 0
	je	.label_1360
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rcx + 0xa0]
	mov	rsi, rax
	call	re_string_context_at
	mov	dword ptr [rbp - 0x2c], eax
	mov	eax, dword ptr [rbp - 0x2c]
	and	eax, 1
	cmp	eax, 0
	je	.label_1341
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x50]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1337
.label_1360:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x48]
	mov	qword ptr [rbp - 8], rax
.label_1337:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x80], rax
	cmp	qword ptr [rbp - 0x80], 0
	sete	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_1358
	cmp	dword ptr [rbp - 0x5c], 0xc
	jne	.label_1363
	jmp	.label_1366
.label_1348:
	jmp	.label_1331
.label_1331:
	lea	rdi, [rbp - 0x5c]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x80]
	call	transit_state
	mov	qword ptr [rbp - 0x80], rax
	mov	rax, qword ptr [rbp - 0x40]
	cmp	qword ptr [rax + 0xb8], 0
	je	.label_1369
	lea	rdi, [rbp - 0x5c]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x80]
	call	merge_state_with_log
	mov	qword ptr [rbp - 0x80], rax
.label_1369:
	cmp	qword ptr [rbp - 0x80], 0
	jne	.label_1328
	cmp	dword ptr [rbp - 0x5c], 0
	setne	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1342
	mov	qword ptr [rbp - 0x38], -2
	jmp	.label_1338
.label_1367:
	mov	eax, dword ptr [rbp - 0x2c]
	and	eax, 4
	cmp	eax, 0
	je	.label_1340
	mov	eax, dword ptr [rbp - 0x2c]
	and	eax, 2
	cmp	eax, 0
	je	.label_1340
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x60]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1337
.label_1371:
	jmp	.label_1350
.label_1350:
	jmp	.label_1349
.label_1349:
	jmp	.label_1351
.label_1346:
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x68], 1
	jmp	.label_1344
.label_1344:
	jmp	.label_1330
.label_1330:
	jmp	.label_1351
.label_1351:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + 0x68]
	mov	rcx, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rcx + 0x48]
	setle	dl
	xor	dl, 0xff
	test	dl, 1
	jne	.label_1359
	jmp	.label_1329
.label_1359:
	mov	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x98], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0xa0], rax
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rcx, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rcx + 0x40]
	setge	dl
	and	dl, 1
	movzx	esi, dl
	movsxd	rax, esi
	cmp	rax, 0
	je	.label_1364
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rcx + 0x58]
	jl	.label_1368
.label_1364:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rcx, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rcx + 0x30]
	setge	dl
	and	dl, 1
	movzx	esi, dl
	movsxd	rax, esi
	cmp	rax, 0
	je	.label_1331
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + 0x30]
	mov	rcx, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rcx + 0x58]
	jge	.label_1331
.label_1368:
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rbp - 0xa0]
	add	rax, 1
	mov	ecx, eax
	mov	esi, ecx
	call	extend_buffers
	mov	dword ptr [rbp - 0x5c], eax
	cmp	dword ptr [rbp - 0x5c], 0
	setne	dl
	and	dl, 1
	movzx	eax, dl
	movsxd	rdi, eax
	cmp	rdi, 0
	je	.label_1348
	cmp	dword ptr [rbp - 0x5c], 0xc
	jne	.label_1355
	jmp	.label_1356
.label_1332:
	mov	eax, dword ptr [rbp - 0x2c]
	and	eax, 4
	cmp	eax, 0
	je	.label_1357
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x48]
	mov	rdx, qword ptr [rax + 0x50]
	mov	ecx, dword ptr [rbp - 0x2c]
	call	re_acquire_state_context
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1337
.label_1341:
	cmp	dword ptr [rbp - 0x2c], 0
	jne	.label_1367
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x48]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1337
.label_1329:
	cmp	qword ptr [rbp - 0x50], 0
	je	.label_1370
	mov	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x50]
	add	rax, qword ptr [rcx]
	mov	qword ptr [rcx], rax
.label_1370:
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x38], rax
.label_1338:
	mov	rax, qword ptr [rbp - 0x38]
	add	rsp, 0xa0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41070a
	.globl sub_41070a
	.type sub_41070a, @function
sub_41070a:

	nop	word ptr cs:[rax + rax]
.label_1355:
	movabs	rdi, OFFSET FLAT:label_1334
	movabs	rsi, OFFSET FLAT:label_491
	mov	edx, 0x46c
	movabs	rcx, OFFSET FLAT:label_1335
	call	__assert_fail
.label_1366:
	mov	qword ptr [rbp - 0x38], -2
	jmp	.label_1338
.label_1347:
	mov	rax, qword ptr [rbp - 0x80]
	mov	cl, byte ptr [rax + 0x68]
	shr	cl, 6
	and	cl, 1
	movzx	edx, cl
	cmp	edx, 0
	je	.label_1343
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rbp - 0x80]
	add	rax, 8
	mov	rsi, rax
	call	transit_state_bkref
	mov	dword ptr [rbp - 0x5c], eax
	cmp	dword ptr [rbp - 0x5c], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rsi, eax
	cmp	rsi, 0
	je	.label_1354
	movsxd	rax, dword ptr [rbp - 0x5c]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1338
.label_1342:
	mov	rax, qword ptr [rbp - 0x40]
	cmp	qword ptr [rax + 0xb8], 0
	je	.label_1361
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_1365
	test	byte ptr [rbp - 0x41], 1
	je	.label_1361
.label_1365:
	lea	rdi, [rbp - 0x5c]
	mov	rsi, qword ptr [rbp - 0x40]
	call	find_recover_state
	mov	qword ptr [rbp - 0x80], rax
	cmp	rax, 0
	jne	.label_1353
.label_1361:
	jmp	.label_1329
.label_1357:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x48]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1337
.label_1354:
	jmp	.label_1343
.label_1343:
	jmp	.label_1333
.label_1333:
	jmp	.label_1327
.label_1327:
	mov	rax, qword ptr [rbp - 0x80]
	mov	cl, byte ptr [rax + 0x68]
	shr	cl, 4
	and	cl, 1
	movzx	edx, cl
	mov	edx, edx
	mov	eax, edx
	cmp	rax, 0
	je	.label_1330
	mov	rax, qword ptr [rbp - 0x80]
	mov	cl, byte ptr [rax + 0x68]
	shr	cl, 7
	movzx	edx, cl
	cmp	edx, 0
	je	.label_1339
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x78]
	call	check_halt_state_context
	cmp	rax, 0
	je	.label_1344
.label_1339:
	test	byte ptr [rbp - 0x41], 1
	jne	.label_1346
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1338
	.section	.text
	.align	16
	#Procedure 0x410870
	.globl xstr_cd_iconv
	.type xstr_cd_iconv, @function
xstr_cd_iconv:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	str_cd_iconv
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_1372
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	jne	.label_1372
	call	xalloc_die
.label_1372:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4108b9
	.globl sub_4108b9
	.type sub_4108b9, @function
sub_4108b9:

	nop	dword ptr [rax]
.label_1386:
	jmp	.label_1373
.label_1373:
	lea	rdi, [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x80]
	call	re_node_set_insert
	and	al, 1
	mov	byte ptr [rbp - 0x31], al
	mov	al, byte ptr [rbp - 0x31]
	xor	al, 0xff
	and	al, 1
	movzx	ecx, al
	movsxd	rsi, ecx
	cmp	rsi, 0
	je	.label_1377
	mov	rax, qword ptr [rbp - 0x50]
	mov	rdi, rax
	call	free
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_1375
.label_1385:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rdi, rax
	call	free
	mov	dword ptr [rbp - 4], 0
.label_1375:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x90
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410925
	.globl sub_410925
	.type sub_410925, @function
sub_410925:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x410929

	.globl check_arrival_add_next_nodes
	.type check_arrival_add_next_nodes, @function
check_arrival_add_next_nodes:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x90
	xor	eax, eax
	mov	r8d, 0x18
	mov	r9d, r8d
	lea	r10, [rbp - 0x60]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x98]
	mov	qword ptr [rbp - 0x30], rcx
	mov	dword ptr [rbp - 0x44], 0
	mov	rdi, r10
	mov	esi, eax
	mov	rdx, r9
	call	memset
	mov	qword ptr [rbp - 0x40], 0
.label_1383:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_1385
	mov	dword ptr [rbp - 0x64], 0
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x70], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x30]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	shr	edx, 0x14
	and	edx, 1
	cmp	edx, 0
	je	.label_1379
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	call	check_node_accept_bytes
	mov	dword ptr [rbp - 0x64], eax
	cmp	dword ptr [rbp - 0x64], 1
	jle	.label_1374
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x80], rax
	mov	rax, qword ptr [rbp - 0x18]
	movsxd	rcx, dword ptr [rbp - 0x64]
	add	rax, rcx
	mov	qword ptr [rbp - 0x88], rax
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0xb8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x78], rax
	mov	qword ptr [rbp - 0x58], 0
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_1373
	lea	rdi, [rbp - 0x60]
	mov	rax, qword ptr [rbp - 0x78]
	add	rax, 8
	mov	rsi, rax
	call	re_node_set_merge
	mov	dword ptr [rbp - 0x44], eax
	cmp	dword ptr [rbp - 0x44], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rsi, eax
	cmp	rsi, 0
	je	.label_1386
	mov	rax, qword ptr [rbp - 0x50]
	mov	rdi, rax
	call	free
	mov	ecx, dword ptr [rbp - 0x44]
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_1375
.label_1377:
	lea	rdi, [rbp - 0x44]
	lea	rdx, [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x30]
	call	re_acquire_state
	xor	ecx, ecx
	mov	r8b, cl
	mov	rdx, qword ptr [rbp - 0x88]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0xb8]
	mov	qword ptr [rsi + rdx*8], rax
	mov	rax, qword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0xb8]
	cmp	qword ptr [rdx + rax*8], 0
	mov	byte ptr [rbp - 0x89], r8b
	jne	.label_1380
	cmp	dword ptr [rbp - 0x44], 0
	setne	al
	mov	byte ptr [rbp - 0x89], al
.label_1380:
	mov	al, byte ptr [rbp - 0x89]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1381
	mov	rax, qword ptr [rbp - 0x50]
	mov	rdi, rax
	call	free
	mov	ecx, dword ptr [rbp - 0x44]
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_1375
.label_1381:
	jmp	.label_1374
.label_1374:
	jmp	.label_1379
.label_1379:
	cmp	dword ptr [rbp - 0x64], 0
	jne	.label_1376
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x70]
	shl	rcx, 4
	add	rax, rcx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	check_node_accept
	test	al, 1
	jne	.label_1376
	jmp	.label_1378
.label_1376:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rsi, qword ptr [rcx + rax*8]
	call	re_node_set_insert
	and	al, 1
	mov	byte ptr [rbp - 0x31], al
	mov	al, byte ptr [rbp - 0x31]
	xor	al, 0xff
	and	al, 1
	movzx	edx, al
	movsxd	rcx, edx
	cmp	rcx, 0
	je	.label_1384
	mov	rax, qword ptr [rbp - 0x50]
	mov	rdi, rax
	call	free
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_1375
.label_1384:
	jmp	.label_1378
.label_1378:
	jmp	.label_1382
.label_1382:
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_1383
.label_1390:
	mov	byte ptr [rbp - 1], 1
.label_1389:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410bd2
	.globl sub_410bd2
	.type sub_410bd2, @function
sub_410bd2:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x410bd6

	.globl protect_fd
	.type protect_fd, @function
protect_fd:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rax, OFFSET FLAT:label_1387
	xor	esi, esi
	mov	dword ptr [rbp - 8], edi
	mov	rdi, rax
	mov	al, 0
	call	open
	mov	dword ptr [rbp - 0xc], eax
	mov	eax, dword ptr [rbp - 0xc]
	cmp	eax, dword ptr [rbp - 8]
	je	.label_1390
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0xc]
	jg	.label_1388
	mov	edi, dword ptr [rbp - 0xc]
	call	close
	mov	dword ptr [rbp - 0x10], eax
	call	__errno_location
	mov	dword ptr [rax], 9
.label_1388:
	mov	byte ptr [rbp - 1], 0
	jmp	.label_1389
.label_1392:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1391
.label_1391:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x10]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410c4e
	.globl sub_410c4e
	.type sub_410c4e, @function
sub_410c4e:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410c57
	.globl set_quoting_style
	.type set_quoting_style, @function
set_quoting_style:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	esi, dword ptr [rbp - 0xc]
	cmp	qword ptr [rbp - 8], 0
	mov	dword ptr [rbp - 0x10], esi
	je	.label_1392
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1391
.label_1414:
	mov	rax, qword ptr [rbp - 0x60]
	mov	ecx, dword ptr [rax + 8]
	shr	ecx, 8
	and	ecx, 0x3ff
	cmp	ecx, 0
	je	.label_1393
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 8]
	mov	edx, dword ptr [rax + 0xa0]
	call	re_string_context_at
	mov	dword ptr [rbp - 0x54], eax
	mov	rsi, qword ptr [rbp - 0x60]
	mov	eax, dword ptr [rsi + 8]
	shr	eax, 8
	and	eax, 0x3ff
	and	eax, 4
	cmp	eax, 0
	je	.label_1408
	mov	eax, dword ptr [rbp - 0x54]
	and	eax, 1
	cmp	eax, 0
	je	.label_1403
.label_1408:
	mov	rax, qword ptr [rbp - 0x60]
	mov	ecx, dword ptr [rax + 8]
	shr	ecx, 8
	and	ecx, 0x3ff
	and	ecx, 8
	cmp	ecx, 0
	je	.label_1407
	mov	eax, dword ptr [rbp - 0x54]
	and	eax, 1
	cmp	eax, 0
	jne	.label_1403
.label_1407:
	mov	rax, qword ptr [rbp - 0x60]
	mov	ecx, dword ptr [rax + 8]
	shr	ecx, 8
	and	ecx, 0x3ff
	and	ecx, 0x20
	cmp	ecx, 0
	je	.label_1396
	mov	eax, dword ptr [rbp - 0x54]
	and	eax, 2
	cmp	eax, 0
	je	.label_1403
.label_1396:
	mov	rax, qword ptr [rbp - 0x60]
	mov	ecx, dword ptr [rax + 8]
	shr	ecx, 8
	and	ecx, 0x3ff
	and	ecx, 0x80
	cmp	ecx, 0
	je	.label_1394
	mov	eax, dword ptr [rbp - 0x54]
	and	eax, 8
	cmp	eax, 0
	jne	.label_1394
.label_1403:
	jmp	.label_1395
.label_1409:
	mov	dword ptr [rbp - 0x1c], 0
.label_1402:
	mov	eax, dword ptr [rbp - 0x1c]
	add	rsp, 0xb0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410d79
	.globl sub_410d79
	.type sub_410d79, @function
sub_410d79:

	nop	word ptr cs:[rax + rax]
.label_1420:
	lea	rdi, [rbp - 0x1c]
	lea	rdx, [rbp - 0x98]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x54]
	call	re_acquire_state_context
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 0xb8]
	mov	qword ptr [rsi + rdx*8], rax
	mov	rax, qword ptr [rbp - 0x88]
	mov	rdi, rax
	call	free
	xor	ecx, ecx
	mov	r8b, cl
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rdx + 0xb8]
	cmp	qword ptr [rdx + rax*8], 0
	mov	byte ptr [rbp - 0xaa], r8b
	jne	.label_1412
	cmp	dword ptr [rbp - 0x1c], 0
	setne	al
	mov	byte ptr [rbp - 0xaa], al
.label_1412:
	mov	al, byte ptr [rbp - 0xaa]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1419
	jmp	.label_1402
.label_1394:
	jmp	.label_1393
.label_1393:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0xc8]
	mov	qword ptr [rbp - 0x48], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x30]
	call	get_subexp
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rdx, eax
	cmp	rdx, 0
	je	.label_1410
	jmp	.label_1402
.label_1418:
	mov	rax, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rax + 0x18]
	mov	rcx, qword ptr [rbp - 0x80]
	sub	rax, qword ptr [rcx + 0x10]
	mov	qword ptr [rbp - 0x70], rax
	cmp	qword ptr [rbp - 0x70], 0
	jne	.label_1416
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x30]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x18]
	imul	rcx, rcx, 0x18
	add	rcx, qword ptr [rdx + 0x28]
	mov	rcx, qword ptr [rcx + 0x10]
	imul	rcx, qword ptr [rcx], 0x18
	add	rax, rcx
	mov	qword ptr [rbp - 0xa0], rax
	jmp	.label_1413
.label_1410:
	jmp	.label_1400
.label_1400:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 0xc8]
	jge	.label_1404
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0xd8]
	imul	rcx, qword ptr [rbp - 0x48], 0x28
	add	rax, rcx
	mov	qword ptr [rbp - 0x80], rax
	mov	rax, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x50]
	jne	.label_1417
	mov	rax, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rax + 8]
	cmp	rax, qword ptr [rbp - 0x30]
	je	.label_1418
.label_1417:
	jmp	.label_1398
	.section	.text
	.align	16
	#Procedure 0x410efe

	.globl transit_state_bkref
	.type transit_state_bkref, @function
transit_state_bkref:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xb0
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 0x98]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 0x48]
	mov	qword ptr [rbp - 0x30], rsi
	mov	qword ptr [rbp - 0x28], 0
.label_1415:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_1409
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x50]
	shl	rcx, 4
	add	rax, rcx
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x60]
	mov	edx, dword ptr [rax + 8]
	and	edx, 0xff
	cmp	edx, 4
	je	.label_1414
	jmp	.label_1395
.label_1422:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x68]
	call	transit_state_bkref
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rsi, eax
	cmp	rsi, 0
	je	.label_1401
	jmp	.label_1402
.label_1419:
	jmp	.label_1405
.label_1405:
	cmp	qword ptr [rbp - 0x70], 0
	jne	.label_1397
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 0xb8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rax, qword ptr [rax + 0x10]
	cmp	rax, qword ptr [rbp - 0x40]
	jle	.label_1397
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x68]
	mov	rdx, qword ptr [rbp - 0x30]
	call	check_subexp_matching_top
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rdx, eax
	cmp	rdx, 0
	je	.label_1422
	jmp	.label_1402
.label_1399:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 0xb8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0xa8], rax
.label_1421:
	mov	rax, qword ptr [rbp - 0xa8]
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x78], 0
	jne	.label_1411
	lea	rdi, [rbp - 0x1c]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x68]
	mov	ecx, dword ptr [rbp - 0x54]
	call	re_acquire_state_context
	xor	ecx, ecx
	mov	r8b, cl
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 0xb8]
	mov	qword ptr [rsi + rdx*8], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rdx + 0xb8]
	cmp	qword ptr [rdx + rax*8], 0
	mov	byte ptr [rbp - 0xa9], r8b
	jne	.label_1423
	cmp	dword ptr [rbp - 0x1c], 0
	setne	al
	mov	byte ptr [rbp - 0xa9], al
.label_1423:
	mov	al, byte ptr [rbp - 0xa9]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1406
	jmp	.label_1402
.label_1404:
	jmp	.label_1395
.label_1395:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1415
.label_1416:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x30]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x18]
	imul	rcx, qword ptr [rdx + rcx*8], 0x18
	add	rax, rcx
	mov	qword ptr [rbp - 0xa0], rax
.label_1413:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x80]
	add	rax, qword ptr [rcx + 0x18]
	mov	rcx, qword ptr [rbp - 0x80]
	sub	rax, qword ptr [rcx + 0x10]
	mov	qword ptr [rbp - 0x38], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x38]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 8]
	mov	edx, dword ptr [rcx + 0xa0]
	mov	rsi, rax
	call	re_string_context_at
	mov	dword ptr [rbp - 0x54], eax
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 0xb8]
	mov	rcx, qword ptr [rsi + rcx*8]
	mov	qword ptr [rbp - 0x78], rcx
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 0xb8]
	cmp	qword ptr [rsi + rcx*8], 0
	jne	.label_1399
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0xa8], rcx
	jmp	.label_1421
.label_1406:
	jmp	.label_1405
.label_1401:
	jmp	.label_1397
.label_1397:
	jmp	.label_1398
.label_1398:
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_1400
.label_1411:
	lea	rdi, [rbp - 0x98]
	mov	rax, qword ptr [rbp - 0x78]
	mov	rsi, qword ptr [rax + 0x50]
	mov	rdx, qword ptr [rbp - 0x68]
	call	re_node_set_init_union
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rdx, eax
	cmp	rdx, 0
	je	.label_1420
	mov	rax, qword ptr [rbp - 0x88]
	mov	rdi, rax
	call	free
	jmp	.label_1402
	.section	.text
	.align	16
	#Procedure 0x4111f0

	.globl re_string_construct_common
	.type re_string_construct_common, @function
re_string_construct_common:
	push	rbp
	mov	rbp, rsp
	mov	al, r8b
	mov	r10b, 1
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	and	al, 1
	mov	byte ptr [rbp - 0x21], al
	mov	qword ptr [rbp - 0x30], r9
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rdx], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rdx + 0x58], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rdx + 0x50], rcx
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rdx + 0x78], rcx
	mov	al, byte ptr [rbp - 0x21]
	and	al, 1
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + 0x88], al
	cmp	qword ptr [rbp - 0x20], 0
	mov	byte ptr [rbp - 0x31], r10b
	jne	.label_1424
	mov	al, byte ptr [rbp - 0x21]
	mov	byte ptr [rbp - 0x31], al
.label_1424:
	mov	al, byte ptr [rbp - 0x31]
	and	al, 1
	movzx	ecx, al
	mov	al, cl
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + 0x8b], al
	mov	rdx, qword ptr [rbp - 0x30]
	mov	ecx, dword ptr [rdx + 0xb4]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	dword ptr [rdx + 0x90], ecx
	mov	rdx, qword ptr [rbp - 0x30]
	mov	al, byte ptr [rdx + 0xb0]
	shr	al, 2
	and	al, 1
	movzx	ecx, al
	mov	al, cl
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + 0x89], al
	mov	rdx, qword ptr [rbp - 0x30]
	mov	al, byte ptr [rdx + 0xb0]
	shr	al, 3
	and	al, 1
	movzx	ecx, al
	mov	al, cl
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + 0x8a], al
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x58]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rsi + 0x68], rdx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x68]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rsi + 0x60], rdx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4112ec
	.globl sub_4112ec
	.type sub_4112ec, @function
sub_4112ec:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4112f0
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x21
	mov	eax, edi
	sub	edi, 0x5d
	mov	qword ptr [rbp - 0x10], rax
	mov	dword ptr [rbp - 0x14], edi
	ja	.label_1425
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1427]]
	jmp	rcx
.label_1425:
	mov	byte ptr [rbp - 1], 0
.label_1426:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
.label_3810:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1426
.label_1430:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx + 0x28], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 8], rax
.label_1429:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41135e
	.globl sub_41135e
	.type sub_41135e, @function
sub_41135e:

	nop	dword ptr [rax]
.label_1436:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	r9, qword ptr [rbp - 0x38]
	call	parse_reg_exp
	xor	r10d, r10d
	mov	r11b, r10b
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x38]
	cmp	dword ptr [rax], 0
	mov	byte ptr [rbp - 0x51], r11b
	jne	.label_1435
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 9
	setne	dl
	mov	byte ptr [rbp - 0x51], dl
.label_1435:
	mov	al, byte ptr [rbp - 0x51]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1432
	cmp	qword ptr [rbp - 0x48], 0
	je	.label_1428
	movabs	rsi, OFFSET FLAT:free_tree
	xor	eax, eax
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x48]
	call	postorder
	mov	dword ptr [rbp - 0x58], eax
.label_1428:
	mov	rax, qword ptr [rbp - 0x38]
	mov	dword ptr [rax], 8
.label_1432:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	dword ptr [rax], 0
	setne	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_1433
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1429
	.section	.text
	.align	16
	#Procedure 0x41141e

	.globl parse_sub_exp
	.type parse_sub_exp, @function
parse_sub_exp:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	qword ptr [rbp - 0x38], r9
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 0x40], rcx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rcx + 0x30]
	mov	rsi, rdx
	add	rsi, 1
	mov	qword ptr [rcx + 0x30], rsi
	mov	qword ptr [rbp - 0x50], rdx
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x28]
	or	rcx, 0x800000
	mov	rdx, rcx
	call	fetch_token
	mov	rcx, qword ptr [rbp - 0x20]
	mov	eax, dword ptr [rcx + 8]
	and	eax, 0xff
	cmp	eax, 9
	jne	.label_1436
	mov	qword ptr [rbp - 0x48], 0
	jmp	.label_1434
.label_1433:
	jmp	.label_1434
.label_1434:
	cmp	qword ptr [rbp - 0x50], 8
	ja	.label_1431
	mov	eax, 1
	mov	rcx, qword ptr [rbp - 0x50]
	mov	edx, ecx
	mov	ecx, edx
	shl	eax, cl
	movsxd	rsi, eax
	mov	rdi, qword ptr [rbp - 0x40]
	or	rsi, qword ptr [rdi + 0xa8]
	mov	qword ptr [rdi + 0xa8], rsi
.label_1431:
	xor	eax, eax
	mov	edx, eax
	mov	ecx, 0x11
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rbp - 0x48]
	call	create_tree
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x48], 0
	sete	r8b
	and	r8b, 1
	movzx	ecx, r8b
	movsxd	rax, ecx
	cmp	rax, 0
	je	.label_1430
	mov	rax, qword ptr [rbp - 0x38]
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1429
.label_1442:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	cmp	rax, qword ptr [rbp - 0x18]
	jne	.label_1437
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1439
.label_1437:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x38], rcx
	jmp	.label_1439
.label_1439:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 8], rax
.label_1444:
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x411566
	.globl sub_411566
	.type sub_411566, @function
sub_411566:

	nop	dword ptr [rax]
.label_1441:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x28], rax
.label_1440:
	jmp	.label_1438
.label_1443:
	mov	qword ptr [rbp - 0x20], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	sub	rax, 1
	mov	qword ptr [rbp - 0x28], rax
.label_1438:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1442
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rbp - 0x28]
	shr	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	cmp	rax, qword ptr [rbp - 0x18]
	jge	.label_1441
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_1440
	.section	.text
	.align	16
	#Procedure 0x4115d8

	.globl re_node_set_contains
	.type re_node_set_contains, @function
re_node_set_contains:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	cmp	qword ptr [rsi + 8], 0
	jg	.label_1443
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1444
	.section	.text
	.align	16
	#Procedure 0x411600

	.globl match_ctx_add_subtop
	.type match_ctx_add_subtop, @function
match_ctx_add_subtop:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0xe8]
	mov	rsi, qword ptr [rbp - 0x10]
	cmp	rdx, qword ptr [rsi + 0xf0]
	sete	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1445
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0xf0]
	shl	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0xf8]
	mov	rcx, qword ptr [rbp - 0x28]
	shl	rcx, 3
	mov	rdi, rax
	mov	rsi, rcx
	call	realloc
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 0
	sete	dl
	and	dl, 1
	movzx	r8d, dl
	movsxd	rax, r8d
	cmp	rax, 0
	je	.label_1446
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_1447
.label_1448:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0xe8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0xf8]
	mov	rcx, qword ptr [rdx + rcx*8]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rcx + 0xe8]
	mov	rsi, rdx
	add	rsi, 1
	mov	qword ptr [rcx + 0xe8], rsi
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0xf8]
	mov	rcx, qword ptr [rcx + rdx*8]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 0
.label_1447:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4116fd
	.globl sub_4116fd
	.type sub_4116fd, @function
sub_4116fd:

	nop	word ptr cs:[rax + rax]
.label_1446:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0xf8], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0xf0], rax
.label_1445:
	mov	eax, 1
	mov	edi, eax
	mov	eax, 0x30
	mov	esi, eax
	call	calloc
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0xe8]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi + 0xf8]
	mov	qword ptr [rdi + rsi*8], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0xe8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0xf8]
	cmp	qword ptr [rsi + rax*8], 0
	sete	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_1448
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_1447
.label_1451:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rax + 8]
	add	rcx, -1
	mov	qword ptr [rax + 8], rcx
.label_1452:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_1449
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8 + 8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1452
.label_1449:
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4117e6
	.globl sub_4117e6
	.type sub_4117e6, @function
sub_4117e6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4117f2

	.globl re_node_set_remove_at
	.type re_node_set_remove_at, @function
re_node_set_remove_at:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	cmp	qword ptr [rbp - 0x10], 0
	jl	.label_1450
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 8]
	jl	.label_1451
.label_1450:
	jmp	.label_1449
.label_1526:
	jmp	.label_1464
.label_1464:
	jmp	.label_1463
.label_1458:
	jmp	.label_1467
.label_1490:
	jmp	.label_1505
.label_1505:
	jmp	.label_1471
.label_1471:
	jmp	.label_1459
.label_1459:
	mov	rax, qword ptr [rbp - 0x100]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x78]
	cmp	qword ptr [rax + 0x98], 0
	je	.label_1479
	lea	rdi, [rbp - 0x1b8]
	call	match_ctx_free
.label_1479:
	lea	rdi, [rbp - 0x1b8]
	call	re_string_destruct
	mov	eax, dword ptr [rbp - 0x70]
	mov	dword ptr [rbp - 0x24], eax
.label_1533:
	mov	eax, dword ptr [rbp - 0x24]
	add	rsp, 0x270
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x411890
	.globl sub_411890
	.type sub_411890, @function
sub_411890:

	nop	dword ptr [rax + rax]
.label_1516:
	mov	rax, qword ptr [rbp - 0xa0]
	sub	rax, qword ptr [rbp - 0x190]
	mov	qword ptr [rbp - 0x1d0], rax
.label_1495:
	mov	rax, qword ptr [rbp - 0xa0]
	cmp	rax, qword ptr [rbp - 0x40]
	jl	.label_1532
	xor	eax, eax
	mov	dword ptr [rbp - 0x234], eax
	jmp	.label_1511
.label_3866:
	jmp	.label_1504
.label_1504:
	mov	rax, qword ptr [rbp - 0xa0]
	cmp	rax, qword ptr [rbp - 0x80]
	jl	.label_1491
	mov	rax, qword ptr [rbp - 0xa0]
	cmp	rax, qword ptr [rbp - 0x40]
	jl	.label_1521
	xor	eax, eax
	mov	dword ptr [rbp - 0x22c], eax
	jmp	.label_1527
.label_1522:
	jmp	.label_1531
.label_1531:
	jmp	.label_1453
.label_1453:
	lea	rdi, [rbp - 0x1b8]
	call	match_ctx_clean
.label_1519:
	movsxd	rax, dword ptr [rbp - 0x8c]
	add	rax, qword ptr [rbp - 0xa0]
	mov	qword ptr [rbp - 0xa0], rax
	jmp	.label_1456
.label_1470:
	cmp	dword ptr [rbp - 0x70], 1
	setne	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1468
	jmp	.label_1459
.label_3869:
	jmp	.label_1463
.label_1489:
	mov	eax, dword ptr [rbp - 0xb8]
	mov	dword ptr [rbp - 0x230], eax
.label_1499:
	mov	eax, dword ptr [rbp - 0x230]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x1c0]
	cmp	byte ptr [rdx + rcx], 0
	je	.label_1484
	jmp	.label_1491
.label_1544:
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x200], rax
.label_1552:
	mov	rax, qword ptr [rbp - 0x200]
	mov	qword ptr [rbp - 0x80], rax
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x48]
	jge	.label_1534
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x208], rax
	jmp	.label_1547
.label_1460:
	jmp	.label_1463
.label_1463:
	lea	rdi, [rbp - 0x1b8]
	mov	rsi, qword ptr [rbp - 0xa0]
	mov	edx, dword ptr [rbp - 0x6c]
	call	re_string_reconstruct
	mov	dword ptr [rbp - 0x70], eax
	cmp	dword ptr [rbp - 0x70], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rsi, eax
	cmp	rsi, 0
	je	.label_1515
	jmp	.label_1459
.label_1457:
	jmp	.label_1473
.label_3867:
	jmp	.label_1488
.label_1488:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0xa0]
	cmp	rdx, qword ptr [rbp - 0x88]
	setl	sil
	and	sil, 1
	movzx	eax, sil
	movsxd	rdx, eax
	cmp	rdx, 0
	mov	byte ptr [rbp - 0x21e], cl
	je	.label_1528
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rcx, qword ptr [rbp - 0x38]
	movzx	edx, byte ptr [rcx + rax]
	mov	eax, edx
	mov	rcx, qword ptr [rbp - 0x1c0]
	cmp	byte ptr [rcx + rax], 0
	setne	sil
	xor	sil, 0xff
	mov	byte ptr [rbp - 0x21e], sil
.label_1528:
	mov	al, byte ptr [rbp - 0x21e]
	test	al, 1
	jne	.label_1480
	jmp	.label_1472
.label_1480:
	mov	rax, qword ptr [rbp - 0xa0]
	add	rax, 1
	mov	qword ptr [rbp - 0xa0], rax
	jmp	.label_1488
.label_1543:
	jmp	.label_1558
.label_1469:
	jmp	.label_1476
.label_1476:
	mov	qword ptr [rbp - 0x1e0], 0
.label_1494:
	mov	rax, qword ptr [rbp - 0x1e0]
	cmp	rax, qword ptr [rbp - 0x60]
	jae	.label_1487
	mov	rax, qword ptr [rbp - 0x1e0]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x68]
	cmp	qword ptr [rax], -1
	je	.label_1514
	movzx	eax, byte ptr [rbp - 0x12c]
	cmp	eax, 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rdx, eax
	cmp	rdx, 0
	je	.label_1485
	mov	rax, qword ptr [rbp - 0x1e0]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x68]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x188]
	jne	.label_1518
	mov	rax, qword ptr [rbp - 0x180]
	mov	qword ptr [rbp - 0x278], rax
	jmp	.label_1529
.label_1510:
	mov	dword ptr [rbp - 0xd8], 0
	mov	qword ptr [rbp - 0xf0], 0
	mov	qword ptr [rbp - 0xf8], 0
	mov	al, byte ptr [rbp - 0x8d]
	mov	rcx, qword ptr [rbp - 0x48]
	cmp	rcx, qword ptr [rbp - 0x50]
	mov	byte ptr [rbp - 0x235], al
	jg	.label_1454
	lea	rax, [rbp - 0xa0]
	mov	qword ptr [rbp - 0x240], rax
	jmp	.label_1477
.label_1523:
	mov	rax, qword ptr [rbp - 0xa8]
	mov	qword ptr [rbp - 0x110], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	cl, byte ptr [rax + 0x38]
	shr	cl, 4
	and	cl, 1
	movzx	edx, cl
	cmp	edx, 0
	jne	.label_1483
	cmp	qword ptr [rbp - 0x60], 1
	ja	.label_1497
.label_1483:
	mov	rax, qword ptr [rbp - 0x78]
	cmp	qword ptr [rax + 0x98], 0
	je	.label_1501
.label_1497:
	lea	rdi, [rbp - 0x1b8]
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rcx, qword ptr [rbp - 0x100]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x1d8], rax
	mov	rsi, qword ptr [rbp - 0x1d8]
	mov	rdx, qword ptr [rbp - 0xa8]
	call	check_halt_state_context
	mov	qword ptr [rbp - 0x108], rax
.label_1501:
	mov	rax, qword ptr [rbp - 0x30]
	mov	cl, byte ptr [rax + 0x38]
	shr	cl, 4
	and	cl, 1
	movzx	edx, cl
	cmp	edx, 0
	jne	.label_1508
	cmp	qword ptr [rbp - 0x60], 1
	jbe	.label_1508
	mov	rax, qword ptr [rbp - 0x78]
	mov	cl, byte ptr [rax + 0xb0]
	and	cl, 1
	movzx	edx, cl
	cmp	edx, 0
	jne	.label_1530
.label_1508:
	mov	rax, qword ptr [rbp - 0x78]
	cmp	qword ptr [rax + 0x98], 0
	je	.label_1457
.label_1530:
	lea	rdi, [rbp - 0x1b8]
	call	prune_impossible_nodes
	mov	dword ptr [rbp - 0x70], eax
	cmp	dword ptr [rbp - 0x70], 0
	jne	.label_1470
	jmp	.label_1473
.label_1553:
	mov	eax, 8
	mov	dword ptr [rbp - 0x210], eax
	jmp	.label_1549
.label_1549:
	mov	eax, dword ptr [rbp - 0x210]
	mov	dword ptr [rbp - 0x94], eax
.label_1456:
	mov	dword ptr [rbp - 0x70], 1
	mov	rax, qword ptr [rbp - 0xa0]
	cmp	rax, qword ptr [rbp - 0x80]
	jl	.label_1486
	mov	rax, qword ptr [rbp - 0x88]
	cmp	rax, qword ptr [rbp - 0xa0]
	jge	.label_1492
.label_1486:
	jmp	.label_1459
.label_1493:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rcx, qword ptr [rbp - 0x38]
	movzx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 0x224], edx
.label_1502:
	mov	eax, dword ptr [rbp - 0x224]
	mov	dword ptr [rbp - 0xb8], eax
	cmp	qword ptr [rbp - 0x1c8], 0
	je	.label_1509
	movsxd	rax, dword ptr [rbp - 0xb8]
	mov	rcx, qword ptr [rbp - 0x1c8]
	movzx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 0x228], edx
	jmp	.label_1498
.label_1532:
	mov	rax, qword ptr [rbp - 0x1d0]
	mov	rcx, qword ptr [rbp - 0x1b0]
	movzx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 0x234], edx
.label_1511:
	mov	eax, dword ptr [rbp - 0x234]
	mov	dword ptr [rbp - 0xb8], eax
	movsxd	rcx, dword ptr [rbp - 0xb8]
	mov	rdx, qword ptr [rbp - 0x1c0]
	cmp	byte ptr [rdx + rcx], 0
	je	.label_1512
	jmp	.label_1460
.label_1537:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x1e8], rcx
	jmp	.label_1542
.label_1542:
	mov	rax, qword ptr [rbp - 0x1e8]
	mov	qword ptr [rbp - 0x1c0], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 0x28]
	mov	qword ptr [rbp - 0x1c8], rax
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rcx + 0x30]
	jbe	.label_1539
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rcx + 0x30]
	add	rcx, 1
	sub	rax, rcx
	mov	qword ptr [rbp - 0x1f0], rax
	jmp	.label_1551
.label_1539:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x1f0], rcx
	jmp	.label_1551
.label_1551:
	mov	rax, qword ptr [rbp - 0x1f0]
	mov	cl, 1
	mov	qword ptr [rbp - 0xb0], rax
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rdx, qword ptr [rbp - 0x60]
	sub	rdx, rax
	mov	qword ptr [rbp - 0x60], rdx
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax + 0x10], 0
	mov	byte ptr [rbp - 0x1f1], cl
	je	.label_1536
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x78]
	cmp	qword ptr [rcx + 0x48], 0
	mov	byte ptr [rbp - 0x1f1], al
	je	.label_1536
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x78]
	cmp	qword ptr [rcx + 0x50], 0
	mov	byte ptr [rbp - 0x1f1], al
	je	.label_1536
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x78]
	cmp	qword ptr [rcx + 0x58], 0
	mov	byte ptr [rbp - 0x1f1], al
	je	.label_1536
	mov	rax, qword ptr [rbp - 0x78]
	cmp	qword ptr [rax + 0x60], 0
	sete	cl
	mov	byte ptr [rbp - 0x1f1], cl
.label_1536:
	mov	al, byte ptr [rbp - 0x1f1]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1540
	mov	dword ptr [rbp - 0x24], 1
	jmp	.label_1533
.label_1554:
	cmp	qword ptr [rbp - 0x60], 1
	ja	.label_1548
	mov	rax, qword ptr [rbp - 0x78]
	mov	cl, byte ptr [rax + 0xb0]
	shr	cl, 1
	and	cl, 1
	movzx	edx, cl
	cmp	edx, 0
	je	.label_1550
.label_1548:
	movabs	rax, 0x1fffffffffffffff
	cmp	rax, qword ptr [rbp - 0x178]
	setbe	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_1555
	mov	dword ptr [rbp - 0x70], 0xc
	jmp	.label_1459
.label_1546:
	lea	rdi, [rbp - 0x1b8]
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x150], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x158], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	cl, byte ptr [rax + 0x38]
	shr	cl, 7
	movzx	edx, cl
	mov	cl, dl
	mov	byte ptr [rbp - 0x12b], cl
	mov	esi, dword ptr [rbp - 0x6c]
	mov	rax, qword ptr [rbp - 0x78]
	mov	rax, qword ptr [rax + 0x98]
	shl	rax, 1
	mov	rdx, rax
	call	match_ctx_init
	mov	dword ptr [rbp - 0x70], eax
	cmp	dword ptr [rbp - 0x70], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rdx, eax
	cmp	rdx, 0
	je	.label_1554
	jmp	.label_1459
.label_1491:
	mov	rax, qword ptr [rbp - 0xa0]
	cmp	rax, qword ptr [rbp - 0x80]
	jge	.label_1466
	jmp	.label_1459
.label_1466:
	jmp	.label_1463
.label_1492:
	mov	eax, dword ptr [rbp - 0x94]
	add	eax, -4
	mov	ecx, eax
	sub	eax, 4
	mov	qword ptr [rbp - 0x218], rcx
	mov	dword ptr [rbp - 0x21c], eax
	ja	.label_1465
	mov	rax, qword ptr [rbp - 0x218]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1475]]
	jmp	rcx
.label_1521:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rcx, qword ptr [rbp - 0x38]
	movzx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 0x22c], edx
.label_1527:
	mov	eax, dword ptr [rbp - 0x22c]
	mov	dword ptr [rbp - 0xb8], eax
	cmp	qword ptr [rbp - 0x1c8], 0
	je	.label_1489
	movsxd	rax, dword ptr [rbp - 0xb8]
	mov	rcx, qword ptr [rbp - 0x1c8]
	movzx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 0x230], edx
	jmp	.label_1499
.label_1556:
	mov	qword ptr [rbp - 0x50], 0
	mov	qword ptr [rbp - 0x48], 0
.label_1541:
	mov	al, 1
	cmp	qword ptr [rbp - 0x60], 0
	mov	byte ptr [rbp - 0x1f2], al
	jne	.label_1545
	mov	rax, qword ptr [rbp - 0x78]
	cmp	qword ptr [rax + 0x98], 0
	setne	cl
	mov	byte ptr [rbp - 0x1f2], cl
.label_1545:
	mov	al, byte ptr [rbp - 0x1f2]
	lea	rdi, [rbp - 0x1b8]
	and	al, 1
	mov	byte ptr [rbp - 0x8d], al
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rcx + 0x10]
	add	rcx, 1
	mov	r8, qword ptr [rbp - 0x30]
	mov	r8, qword ptr [r8 + 0x28]
	mov	r9, qword ptr [rbp - 0x30]
	mov	r9, qword ptr [r9 + 0x18]
	and	r9, 0x400000
	cmp	r9, 0
	setne	al
	mov	r9, qword ptr [rbp - 0x78]
	mov	r10, rsp
	mov	qword ptr [r10], r9
	and	al, 1
	movzx	r9d, al
	call	re_string_allocate
	mov	dword ptr [rbp - 0x70], eax
	cmp	dword ptr [rbp - 0x70], 0
	setne	r11b
	and	r11b, 1
	movzx	eax, r11b
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_1546
	jmp	.label_1459
.label_1513:
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x110]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	dl, byte ptr [rax + 0x38]
	shr	dl, 4
	and	dl, 1
	movzx	esi, dl
	cmp	esi, 0
	jne	.label_1476
	cmp	qword ptr [rbp - 0x60], 1
	jbe	.label_1476
	xor	eax, eax
	mov	cl, al
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x68]
	mov	r8, qword ptr [rbp - 0x78]
	mov	r9b, byte ptr [r8 + 0xb0]
	and	r9b, 1
	movzx	eax, r9b
	cmp	eax, 0
	mov	qword ptr [rbp - 0x250], rsi
	mov	qword ptr [rbp - 0x258], rdi
	mov	qword ptr [rbp - 0x260], rdx
	mov	byte ptr [rbp - 0x261], cl
	je	.label_1507
	mov	rax, qword ptr [rbp - 0x78]
	cmp	qword ptr [rax + 0x98], 0
	setg	cl
	mov	byte ptr [rbp - 0x261], cl
.label_1507:
	mov	al, byte ptr [rbp - 0x261]
	lea	rcx, [rbp - 0x1b8]
	and	al, 1
	movzx	r8d, al
	lea	rsi, [rbp - 0x1b8]
	mov	rdi, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rbp - 0x260]
	mov	r9, qword ptr [rbp - 0x250]
	mov	qword ptr [rbp - 0x270], rcx
	mov	rcx, r9
	call	set_regs
	mov	dword ptr [rbp - 0x70], eax
	cmp	dword ptr [rbp - 0x70], 0
	setne	r10b
	and	r10b, 1
	movzx	eax, r10b
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_1469
	jmp	.label_1459
.label_1534:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x208], rax
.label_1547:
	mov	rax, qword ptr [rbp - 0x208]
	mov	qword ptr [rbp - 0x88], rax
	mov	rax, qword ptr [rbp - 0x78]
	cmp	dword ptr [rax + 0xb4], 1
	sete	cl
	and	cl, 1
	mov	byte ptr [rbp - 0xb1], cl
	cmp	qword ptr [rbp - 0x1c0], 0
	je	.label_1553
	mov	al, 1
	test	byte ptr [rbp - 0xb1], 1
	mov	byte ptr [rbp - 0x209], al
	jne	.label_1538
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rcx + 0x18]
	and	rcx, 0x400000
	cmp	rcx, 0
	mov	byte ptr [rbp - 0x20a], al
	jne	.label_1557
	cmp	qword ptr [rbp - 0x1c8], 0
	setne	al
	mov	byte ptr [rbp - 0x20a], al
.label_1557:
	mov	al, byte ptr [rbp - 0x20a]
	xor	al, 0xff
	mov	byte ptr [rbp - 0x209], al
.label_1538:
	mov	al, byte ptr [rbp - 0x209]
	xor	ecx, ecx
	mov	edx, 1
	mov	esi, 2
	mov	edi, 4
	test	al, 1
	mov	r8d, ecx
	cmovne	r8d, edi
	mov	r9, qword ptr [rbp - 0x48]
	cmp	r9, qword ptr [rbp - 0x50]
	mov	edi, ecx
	cmovle	edi, esi
	or	r8d, edi
	cmp	qword ptr [rbp - 0x1c8], 0
	cmovne	ecx, edx
	or	r8d, ecx
	mov	dword ptr [rbp - 0x210], r8d
	jmp	.label_1549
.label_1518:
	mov	rax, qword ptr [rbp - 0x1e0]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x68]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x1a0]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x278], rax
.label_1529:
	mov	rax, qword ptr [rbp - 0x278]
	mov	rcx, qword ptr [rbp - 0x1e0]
	shl	rcx, 4
	add	rcx, qword ptr [rbp - 0x68]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x1e0]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x68]
	mov	rax, qword ptr [rax + 8]
	cmp	rax, qword ptr [rbp - 0x188]
	jne	.label_1482
	mov	rax, qword ptr [rbp - 0x180]
	mov	qword ptr [rbp - 0x280], rax
	jmp	.label_1520
.label_1550:
	mov	qword ptr [rbp - 0x100], 0
.label_1558:
	mov	eax, 1
	mov	ecx, 0xffffffff
	mov	edx, 6
	mov	esi, 4
	mov	rdi, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0xa0], rdi
	mov	r8d, dword ptr [rbp - 0x6c]
	and	r8d, 1
	cmp	r8d, 0
	cmovne	edx, esi
	mov	dword ptr [rbp - 0x148], edx
	mov	rdi, qword ptr [rbp - 0x50]
	cmp	rdi, qword ptr [rbp - 0x48]
	cmovl	eax, ecx
	mov	dword ptr [rbp - 0x8c], eax
	mov	rdi, qword ptr [rbp - 0x50]
	cmp	rdi, qword ptr [rbp - 0x48]
	jge	.label_1544
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x200], rax
	jmp	.label_1552
.label_1503:
	jmp	.label_1455
.label_1474:
	mov	rax, qword ptr [rbp - 0x78]
	cmp	qword ptr [rax + 0xe0], 0
	je	.label_1505
	mov	qword ptr [rbp - 0x1e0], 0
.label_1525:
	mov	rax, qword ptr [rbp - 0x1e0]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x60]
	jae	.label_1490
	mov	rax, qword ptr [rbp - 0x1e0]
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rcx + 0xe0]
	mov	rax, qword ptr [rcx + rax*8]
	cmp	rax, qword ptr [rbp - 0x1e0]
	je	.label_1478
	mov	rax, qword ptr [rbp - 0x1e0]
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rcx + 0xe0]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, 1
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x68]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x1e0]
	add	rcx, 1
	shl	rcx, 4
	add	rcx, qword ptr [rbp - 0x68]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x1e0]
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rcx + 0xe0]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, 1
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x68]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x1e0]
	add	rcx, 1
	shl	rcx, 4
	add	rcx, qword ptr [rbp - 0x68]
	mov	qword ptr [rcx + 8], rax
.label_1478:
	jmp	.label_1524
.label_1524:
	mov	rax, qword ptr [rbp - 0x1e0]
	add	rax, 1
	mov	qword ptr [rbp - 0x1e0], rax
	jmp	.label_1525
.label_1482:
	mov	rax, qword ptr [rbp - 0x1e0]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x68]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x1a0]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x280], rax
.label_1520:
	mov	rax, qword ptr [rbp - 0x280]
	mov	rcx, qword ptr [rbp - 0x1e0]
	shl	rcx, 4
	add	rcx, qword ptr [rbp - 0x68]
	mov	qword ptr [rcx + 8], rax
.label_1485:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rcx, qword ptr [rbp - 0x1e0]
	shl	rcx, 4
	add	rcx, qword ptr [rbp - 0x68]
	add	rax, qword ptr [rcx]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rcx, qword ptr [rbp - 0x1e0]
	shl	rcx, 4
	add	rcx, qword ptr [rbp - 0x68]
	add	rax, qword ptr [rcx + 8]
	mov	qword ptr [rcx + 8], rax
.label_1514:
	jmp	.label_1462
.label_1462:
	mov	rax, qword ptr [rbp - 0x1e0]
	add	rax, 1
	mov	qword ptr [rbp - 0x1e0], rax
	jmp	.label_1494
.label_1484:
	mov	rax, qword ptr [rbp - 0xa0]
	add	rax, -1
	mov	qword ptr [rbp - 0xa0], rax
	jmp	.label_1504
.label_1473:
	cmp	qword ptr [rbp - 0x60], 0
	jbe	.label_1471
	mov	qword ptr [rbp - 0x1e0], 1
.label_1517:
	mov	rax, qword ptr [rbp - 0x1e0]
	cmp	rax, qword ptr [rbp - 0x60]
	jae	.label_1513
	mov	rax, qword ptr [rbp - 0x1e0]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rax + 8], -1
	mov	rax, qword ptr [rbp - 0x1e0]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rax], -1
	mov	rax, qword ptr [rbp - 0x1e0]
	add	rax, 1
	mov	qword ptr [rbp - 0x1e0], rax
	jmp	.label_1517
.label_3868:
	jmp	.label_1496
.label_1496:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0xa0]
	cmp	rdx, qword ptr [rbp - 0x88]
	setl	sil
	and	sil, 1
	movzx	eax, sil
	movsxd	rdx, eax
	cmp	rdx, 0
	mov	byte ptr [rbp - 0x21d], cl
	je	.label_1461
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rcx, qword ptr [rbp - 0x38]
	movzx	edx, byte ptr [rcx + rax]
	mov	eax, edx
	mov	rcx, qword ptr [rbp - 0x1c8]
	movzx	edx, byte ptr [rcx + rax]
	mov	eax, edx
	mov	rcx, qword ptr [rbp - 0x1c0]
	cmp	byte ptr [rcx + rax], 0
	setne	sil
	xor	sil, 0xff
	mov	byte ptr [rbp - 0x21d], sil
.label_1461:
	mov	al, byte ptr [rbp - 0x21d]
	test	al, 1
	jne	.label_1500
	jmp	.label_1503
.label_1500:
	mov	rax, qword ptr [rbp - 0xa0]
	add	rax, 1
	mov	qword ptr [rbp - 0xa0], rax
	jmp	.label_1496
.label_1515:
	test	byte ptr [rbp - 0xb1], 1
	jne	.label_1510
	xor	eax, eax
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x188]
	je	.label_1510
	mov	rax, qword ptr [rbp - 0x1a8]
	cmp	dword ptr [rax], -1
	jne	.label_1510
	jmp	.label_1519
.label_1468:
	mov	qword ptr [rbp - 0xa8], -1
	jmp	.label_1522
.label_1509:
	mov	eax, dword ptr [rbp - 0xb8]
	mov	dword ptr [rbp - 0x228], eax
.label_1498:
	mov	eax, dword ptr [rbp - 0x228]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x1c0]
	cmp	byte ptr [rdx + rcx], 0
	jne	.label_1526
	jmp	.label_1459
.label_1540:
	mov	rax, qword ptr [rbp - 0x78]
	mov	rax, qword ptr [rax + 0x48]
	cmp	qword ptr [rax + 0x10], 0
	jne	.label_1541
	mov	rax, qword ptr [rbp - 0x78]
	mov	rax, qword ptr [rax + 0x50]
	cmp	qword ptr [rax + 0x10], 0
	jne	.label_1541
	mov	rax, qword ptr [rbp - 0x78]
	mov	rax, qword ptr [rax + 0x58]
	cmp	qword ptr [rax + 0x10], 0
	je	.label_1535
	mov	rax, qword ptr [rbp - 0x30]
	mov	cl, byte ptr [rax + 0x38]
	shr	cl, 7
	movzx	edx, cl
	cmp	edx, 0
	jne	.label_1541
.label_1535:
	cmp	qword ptr [rbp - 0x48], 0
	je	.label_1556
	cmp	qword ptr [rbp - 0x50], 0
	je	.label_1556
	mov	dword ptr [rbp - 0x24], 1
	jmp	.label_1533
.label_1454:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x240], rcx
	jmp	.label_1477
.label_1477:
	mov	rax, qword ptr [rbp - 0x240]
	lea	rcx, [rbp - 0x1b8]
	mov	dl, byte ptr [rbp - 0x235]
	and	dl, 1
	movzx	esi, dl
	lea	rdi, [rbp - 0x1b8]
	mov	rdx, rax
	mov	qword ptr [rbp - 0x248], rcx
	call	check_matching
	mov	qword ptr [rbp - 0xa8], rax
	cmp	qword ptr [rbp - 0xa8], -1
	je	.label_1453
	cmp	qword ptr [rbp - 0xa8], -2
	sete	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1523
	mov	dword ptr [rbp - 0x70], 0xc
	jmp	.label_1459
.label_1555:
	mov	rax, qword ptr [rbp - 0x178]
	add	rax, 1
	shl	rax, 3
	mov	rdi, rax
	call	malloc
	mov	qword ptr [rbp - 0x100], rax
	cmp	qword ptr [rbp - 0x100], 0
	sete	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_1543
	mov	dword ptr [rbp - 0x70], 0xc
	jmp	.label_1459
.label_1472:
	jmp	.label_1455
.label_1455:
	mov	rax, qword ptr [rbp - 0xa0]
	cmp	rax, qword ptr [rbp - 0x88]
	sete	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_1464
	mov	rax, qword ptr [rbp - 0xa0]
	cmp	rax, qword ptr [rbp - 0x40]
	jl	.label_1493
	xor	eax, eax
	mov	dword ptr [rbp - 0x224], eax
	jmp	.label_1502
	.section	.text
	.align	16
	#Procedure 0x412799

	.globl re_search_internal
	.type re_search_internal, @function
re_search_internal:
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x270
	mov	eax, dword ptr [rbp + 0x20]
	mov	r10, qword ptr [rbp + 0x18]
	mov	r11, qword ptr [rbp + 0x10]
	xor	ebx, ebx
	mov	r14d, 0x100
	mov	r15d, r14d
	lea	r12, [rbp - 0x1b8]
	mov	qword ptr [rbp - 0x30], rdi
	mov	qword ptr [rbp - 0x38], rsi
	mov	qword ptr [rbp - 0x40], rdx
	mov	qword ptr [rbp - 0x48], rcx
	mov	qword ptr [rbp - 0x50], r8
	mov	qword ptr [rbp - 0x58], r9
	mov	qword ptr [rbp - 0x60], r11
	mov	qword ptr [rbp - 0x68], r10
	mov	dword ptr [rbp - 0x6c], eax
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 0x78], rcx
	mov	qword ptr [rbp - 0xa8], -1
	mov	rdi, r12
	mov	esi, ebx
	mov	rdx, r15
	call	memset
	mov	rcx, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x120], rcx
	mov	rcx, qword ptr [rbp - 0x30]
	cmp	qword ptr [rcx + 0x20], 0
	je	.label_1537
	mov	rax, qword ptr [rbp - 0x30]
	mov	cl, byte ptr [rax + 0x38]
	shr	cl, 3
	and	cl, 1
	movzx	edx, cl
	cmp	edx, 0
	je	.label_1537
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x50]
	je	.label_1537
	mov	rax, qword ptr [rbp - 0x30]
	mov	cl, byte ptr [rax + 0x38]
	and	cl, 1
	movzx	edx, cl
	cmp	edx, 0
	jne	.label_1537
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 0x20]
	mov	qword ptr [rbp - 0x1e8], rax
	jmp	.label_1542
.label_1465:
	jmp	.label_1467
.label_1467:
	mov	rax, qword ptr [rbp - 0xa0]
	sub	rax, qword ptr [rbp - 0x190]
	mov	qword ptr [rbp - 0x1d0], rax
	mov	rax, qword ptr [rbp - 0x1d0]
	cmp	rax, qword ptr [rbp - 0x180]
	setae	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_1495
	lea	rdi, [rbp - 0x1b8]
	mov	rsi, qword ptr [rbp - 0xa0]
	mov	edx, dword ptr [rbp - 0x6c]
	call	re_string_reconstruct
	mov	dword ptr [rbp - 0x70], eax
	cmp	dword ptr [rbp - 0x70], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rsi, eax
	cmp	rsi, 0
	je	.label_1516
	jmp	.label_1459
.label_1512:
	movsxd	rax, dword ptr [rbp - 0x8c]
	add	rax, qword ptr [rbp - 0xa0]
	mov	qword ptr [rbp - 0xa0], rax
	mov	rax, qword ptr [rbp - 0xa0]
	cmp	rax, qword ptr [rbp - 0x80]
	jl	.label_1506
	mov	rax, qword ptr [rbp - 0xa0]
	cmp	rax, qword ptr [rbp - 0x88]
	jle	.label_1458
.label_1506:
	mov	dword ptr [rbp - 0x70], 1
	jmp	.label_1459
.label_1487:
	mov	qword ptr [rbp - 0x1e0], 0
.label_1481:
	mov	rax, qword ptr [rbp - 0x1e0]
	cmp	rax, qword ptr [rbp - 0xb0]
	jge	.label_1474
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, qword ptr [rbp - 0x1e0]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rax], -1
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, qword ptr [rbp - 0x1e0]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rax + 8], -1
	mov	rax, qword ptr [rbp - 0x1e0]
	add	rax, 1
	mov	qword ptr [rbp - 0x1e0], rax
	jmp	.label_1481
	.section	.text
	.align	16
	#Procedure 0x4129a0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	push	rbp
	mov	rbp, rsp
	mov	al, dil
	and	al, 1
	mov	byte ptr [rbp - 1], al
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	mov	byte ptr [byte ptr [ignore_EPIPE]],  al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4129ba
	.globl sub_4129ba
	.type sub_4129ba, @function
sub_4129ba:

	nop	word ptr [rax + rax]
.label_1573:
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_1570
	lea	rsi, [rbp - 0x40]
	lea	r8, [rbp - 0x60]
	mov	rdi, qword ptr [rbp - 0x68]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	call	pop_fail_stack
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_1575
.label_1585:
	mov	rax, qword ptr [rbp - 0x20]
	shl	rax, 4
	mov	rdi, rax
	call	malloc
	mov	qword ptr [rbp - 0x88], rax
	cmp	qword ptr [rbp - 0x88], 0
	jne	.label_1587
	mov	rdi, qword ptr [rbp - 0x68]
	call	free_fail_stack_return
	mov	dword ptr [rbp - 4], 0xc
	mov	dword ptr [rbp - 0x9c], eax
	jmp	.label_1562
.label_1584:
	mov	qword ptr [rbp - 0x68], 0
.label_1579:
	xor	esi, esi
	mov	eax, 0x18
	mov	edx, eax
	lea	rcx, [rbp - 0x60]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x90]
	mov	qword ptr [rbp - 0x48], rdi
	mov	rdi, rcx
	call	memset
	mov	rcx, qword ptr [rbp - 0x20]
	shl	rcx, 4
	cmp	rcx, 0xfc0
	jae	.label_1585
	mov	rax, qword ptr [rbp - 0x20]
	shl	rax, 4
	mov	rcx, rsp
	sub	rcx, rax
	mov	rsp, rcx
	mov	qword ptr [rbp - 0x88], rcx
	jmp	.label_1580
.label_1586:
	jmp	.label_1579
.label_1570:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rdi, rax
	call	free
	test	byte ptr [rbp - 0x89], 1
	je	.label_1563
	mov	rax, qword ptr [rbp - 0x88]
	mov	rdi, rax
	call	free
.label_1563:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1562
.label_1561:
	lea	rsi, [rbp - 0x40]
	lea	r8, [rbp - 0x60]
	mov	rdi, qword ptr [rbp - 0x68]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	call	pop_fail_stack
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_1571
.label_1560:
	jmp	.label_1576
.label_1576:
	mov	rax, qword ptr [rbp - 0x98]
	add	rax, 1
	mov	qword ptr [rbp - 0x98], rax
	jmp	.label_1577
.label_1575:
	jmp	.label_1559
.label_1559:
	jmp	.label_1564
.label_1568:
	mov	rax, qword ptr [rbp - 0x98]
	cmp	rax, qword ptr [rbp - 0x20]
	jne	.label_1561
	mov	rax, qword ptr [rbp - 0x50]
	mov	rdi, rax
	call	free
	test	byte ptr [rbp - 0x89], 1
	je	.label_1565
	mov	rax, qword ptr [rbp - 0x88]
	mov	rdi, rax
	call	free
.label_1565:
	mov	rdi, qword ptr [rbp - 0x68]
	call	free_fail_stack_return
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1562
	.section	.text
	.align	16
	#Procedure 0x412b56

	.globl set_regs
	.type set_regs, @function
set_regs:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xa0
	mov	al, r8b
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	and	al, 1
	mov	byte ptr [rbp - 0x29], al
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 0x38], rcx
	mov	rcx,  qword ptr [word ptr [label_1581]]
	mov	qword ptr [rbp - 0x80], rcx
	mov	rcx,  qword ptr [word ptr [label_1582]]
	mov	qword ptr [rbp - 0x78], rcx
	mov	rcx,  qword ptr [word ptr [label_1583]]
	mov	qword ptr [rbp - 0x70], rcx
	mov	byte ptr [rbp - 0x89], 0
	test	byte ptr [rbp - 0x29], 1
	je	.label_1584
	lea	rax, [rbp - 0x80]
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x68]
	imul	rdi, qword ptr [rax + 8], 0x30
	call	malloc
	mov	rdi, qword ptr [rbp - 0x68]
	mov	qword ptr [rdi + 0x10], rax
	mov	rax, qword ptr [rbp - 0x68]
	cmp	qword ptr [rax + 0x10], 0
	jne	.label_1586
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_1562
.label_1571:
	jmp	.label_1567
.label_1567:
	lea	rcx, [rbp - 0x40]
	lea	r9, [rbp - 0x60]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rbp - 0x68]
	sub	rsp, 0x10
	mov	qword ptr [rsp], rax
	call	proceed_next_node
	add	rsp, 0x10
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x48], 0
	setl	r10b
	and	r10b, 1
	movzx	r11d, r10b
	movsxd	rax, r11d
	cmp	rax, 0
	je	.label_1559
	cmp	qword ptr [rbp - 0x48], -2
	sete	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1573
	mov	rax, qword ptr [rbp - 0x50]
	mov	rdi, rax
	call	free
	test	byte ptr [rbp - 0x89], 1
	je	.label_1578
	mov	rax, qword ptr [rbp - 0x88]
	mov	rdi, rax
	call	free
.label_1578:
	mov	rdi, qword ptr [rbp - 0x68]
	call	free_fail_stack_return
	mov	dword ptr [rbp - 4], 0xc
	mov	dword ptr [rbp - 0xa0], eax
	jmp	.label_1562
.label_1574:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rdi, rax
	call	free
	test	byte ptr [rbp - 0x89], 1
	je	.label_1566
	mov	rax, qword ptr [rbp - 0x88]
	mov	rdi, rax
	call	free
.label_1566:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1562
.label_1587:
	mov	byte ptr [rbp - 0x89], 1
.label_1580:
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x20]
	shl	rdx, 4
	mov	rdi, rax
	mov	rsi, rcx
	call	memcpy
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x40], rax
.label_1564:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rcx + 8]
	jg	.label_1569
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	r8, qword ptr [rbp - 0x40]
	mov	r9, qword ptr [rbp - 0x20]
	call	update_regs
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x28]
	cmp	rcx, qword ptr [rdx + 8]
	jne	.label_1567
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 0xb0]
	jne	.label_1567
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_1574
	mov	qword ptr [rbp - 0x98], 0
.label_1577:
	mov	rax, qword ptr [rbp - 0x98]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1568
	mov	rax, qword ptr [rbp - 0x98]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax], -1
	jle	.label_1560
	mov	rax, qword ptr [rbp - 0x98]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax + 8], -1
	jne	.label_1560
	jmp	.label_1568
.label_1569:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rdi, rax
	call	free
	test	byte ptr [rbp - 0x89], 1
	je	.label_1572
	mov	rax, qword ptr [rbp - 0x88]
	mov	rdi, rax
	call	free
.label_1572:
	mov	rdi, qword ptr [rbp - 0x68]
	call	free_fail_stack_return
	mov	dword ptr [rbp - 4], eax
.label_1562:
	mov	eax, dword ptr [rbp - 4]
	mov	rsp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x412dfb
	.globl sub_412dfb
	.type sub_412dfb, @function
sub_412dfb:

	nop	dword ptr [rax + rax]
.label_1621:
	call	matcher_error
.label_1631:
	jmp	.label_1588
.label_1588:
	cmp	qword ptr [word ptr [word_regex]],  0
	je	.label_1590
	movabs	rax, OFFSET FLAT:word_regex
	add	rax, 8
	xor	ecx, ecx
	movabs	r9, OFFSET FLAT:word_regs
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rdi, qword ptr [rbp - 0x10]
	sub	rdx, rdi
	mov	rdi, qword ptr [rbp - 0x58]
	mov	r8, qword ptr [rbp - 0x10]
	sub	rdi, r8
	mov	qword ptr [rbp - 0xe8], rdi
	mov	rdi, rax
	mov	r8, qword ptr [rbp - 0xe8]
	call	rpl_re_search
	mov	qword ptr [rbp - 0x80], rax
	cmp	qword ptr [rbp - 0x80], -2
	jne	.label_1613
	call	matcher_error
.label_1651:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x58]
	jne	.label_1622
	jmp	.label_1629
.label_1599:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
.label_1603:
	jmp	.label_1591
.label_1592:
	jmp	.label_1602
.label_1602:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	qword ptr [rax], rcx
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rax + 8], rcx
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x40]
	sub	rax, rcx
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x40]
	sub	rax, rcx
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx + 0x18], rax
	mov	edx, dword ptr [rbp - 4]
	mov	rax, qword ptr [rbp - 0x48]
	mov	dword ptr [rax + 0x28], edx
	mov	rax,  qword ptr [word ptr [number_of_occurs]]
	add	rax, 1
	mov	qword ptr [word ptr [number_of_occurs]],  rax
	jmp	.label_1588
.label_1645:
	mov	rax,  qword ptr [word ptr [number_of_occurs]]
	cmp	rax,  qword ptr [word ptr [occurs_alloc]]
	jne	.label_1659
	movabs	rsi, OFFSET FLAT:occurs_alloc
	mov	eax, 0x30
	mov	edx, eax
	mov	rcx,  qword ptr [word ptr [occurs_table]]
	mov	rdi, rcx
	call	x2nrealloc
	mov	qword ptr [word ptr [occurs_table]],  rax
.label_1659:
	mov	rax,  qword ptr [word ptr [occurs_table]]
	imul	rcx,  qword ptr [word ptr [number_of_occurs]],  0x30
	add	rax, rcx
	mov	qword ptr [rbp - 0x48], rax
	test	byte ptr [byte ptr [auto_reference]],  1
	je	.label_1618
	jmp	.label_1617
.label_1617:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x40]
	jae	.label_1620
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0xa
	jne	.label_1623
	mov	rax,  qword ptr [word ptr [total_line_count]]
	add	rax, 1
	mov	qword ptr [word ptr [total_line_count]],  rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x20], rax
.label_1600:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x78]
	cmp	rdx, qword ptr [rsi + 8]
	mov	byte ptr [rbp - 0xf9], cl
	jae	.label_1641
	mov	rax, qword ptr [rbp - 0x28]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	movsxd	rcx, edi
	mov	qword ptr [rbp - 0x108], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x108]
	movzx	edi, word ptr [rax + rcx*2]
	and	edi, 0x2000
	cmp	edi, 0
	setne	dl
	xor	dl, 0xff
	mov	byte ptr [rbp - 0xf9], dl
.label_1641:
	mov	al, byte ptr [rbp - 0xf9]
	test	al, 1
	jne	.label_1633
	jmp	.label_1597
.label_1633:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1600
.label_1657:
	add	rsp, 0x130
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x413036
	.globl sub_413036
	.type sub_413036, @function
sub_413036:

	nop	word ptr [rax + rax]
.label_1638:
	movabs	rdi, OFFSET FLAT:label_1605
	call	gettext
	mov	rdi,  qword ptr [word ptr [context_regex]]
	mov	qword ptr [rbp - 0xd0], rax
	call	quote
	mov	edi, 1
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0xd0]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_1590:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rax
.label_1653:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	rdx, qword ptr [rbp - 0x58]
	mov	byte ptr [rbp - 0xe9], cl
	jae	.label_1625
	mov	rax, qword ptr [rbp - 0x18]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	cmp	byte ptr [byte ptr [+ (rcx * 1) + word_fastmap]],  0
	setne	al
	xor	al, 0xff
	mov	byte ptr [rbp - 0xe9], al
.label_1625:
	mov	al, byte ptr [rbp - 0xe9]
	test	al, 1
	jne	.label_1646
	jmp	.label_1651
.label_1646:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1653
.label_1597:
	jmp	.label_1654
.label_1642:
	jmp	.label_1656
.label_1656:
	cmp	qword ptr [word ptr [ignore_file]],  0
	je	.label_1595
	lea	rdi, [rbp - 0x40]
	movabs	rsi, OFFSET FLAT:ignore_table
	call	search_table
	test	al, 1
	jne	.label_1607
	jmp	.label_1595
.label_1607:
	jmp	.label_1588
.label_1616:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x68], rax
.label_1611:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x68]
	cmp	rax, qword ptr [rbp - 0x60]
	jne	.label_1601
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1588
.label_1637:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx,  qword ptr [word ptr [label_1609]]
	add	rax, qword ptr [rcx]
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx,  qword ptr [word ptr [label_1610]]
	add	rax, qword ptr [rcx]
	mov	qword ptr [rbp - 0x68], rax
	jmp	.label_1611
.label_1630:
	jmp	.label_1652
.label_1660:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x30], rax
.label_1663:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x78]
	cmp	rdx, qword ptr [rsi + 8]
	mov	byte ptr [rbp - 0x91], cl
	jae	.label_1664
	mov	rax, qword ptr [rbp - 0x28]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	movsxd	rcx, edi
	mov	qword ptr [rbp - 0xa0], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0xa0]
	movzx	edi, word ptr [rax + rcx*2]
	and	edi, 0x2000
	cmp	edi, 0
	setne	dl
	mov	byte ptr [rbp - 0x91], dl
.label_1664:
	mov	al, byte ptr [rbp - 0x91]
	test	al, 1
	jne	.label_1661
	jmp	.label_1668
.label_1661:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1663
.label_1606:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx,  qword ptr [word ptr [label_1627]]
	add	rax, qword ptr [rcx]
	mov	qword ptr [rbp - 0x70], rax
.label_1652:
	jmp	.label_1640
.label_1640:
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x58], rax
.label_1632:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x58]
	cmp	rdx, qword ptr [rbp - 0x50]
	mov	byte ptr [rbp - 0xd1], cl
	jbe	.label_1619
	mov	rax, qword ptr [rbp - 0x58]
	movsx	edi, byte ptr [rax - 1]
	call	to_uchar
	movzx	edi, al
	movsxd	rcx, edi
	mov	qword ptr [rbp - 0xe0], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0xe0]
	movzx	edi, word ptr [rax + rcx*2]
	and	edi, 0x2000
	cmp	edi, 0
	setne	dl
	mov	byte ptr [rbp - 0xd1], dl
.label_1619:
	mov	al, byte ptr [rbp - 0xd1]
	test	al, 1
	jne	.label_1626
	jmp	.label_1631
.label_1626:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, -1
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_1632
.label_1613:
	cmp	qword ptr [rbp - 0x80], -1
	jne	.label_1637
	jmp	.label_1629
.label_1595:
	cmp	qword ptr [word ptr [only_file]],  0
	je	.label_1645
	lea	rdi, [rbp - 0x40]
	movabs	rsi, OFFSET FLAT:only_table
	call	search_table
	test	al, 1
	jne	.label_1645
	jmp	.label_1588
.label_1648:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1603
.label_1629:
	jmp	.label_1658
.label_1658:
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1589
.label_1622:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x60], rax
.label_1608:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	rdx, qword ptr [rbp - 0x58]
	mov	byte ptr [rbp - 0xea], cl
	jae	.label_1594
	mov	rax, qword ptr [rbp - 0x18]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	movsx	edi,  byte ptr [byte ptr [+ (rcx * 1) + word_fastmap]]
	cmp	edi, 0
	setne	al
	mov	byte ptr [rbp - 0xea], al
.label_1594:
	mov	al, byte ptr [rbp - 0xea]
	test	al, 1
	jne	.label_1612
	jmp	.label_1616
.label_1612:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1608
.label_1593:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x40]
	jbe	.label_1642
	jmp	.label_1588
	.section	.text
	.align	16
	#Procedure 0x413385

	.globl find_occurs_in_text
	.type find_occurs_in_text, @function
find_occurs_in_text:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x130
	mov	dword ptr [rbp - 4], edi
	movsxd	rax, dword ptr [rbp - 4]
	shl	rax, 4
	add	rax,  qword ptr [word ptr [text_buffers]]
	mov	qword ptr [rbp - 0x78], rax
	mov	qword ptr [rbp - 0x30], 0
	mov	rax, qword ptr [rbp - 0x78]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x28], rax
	test	byte ptr [byte ptr [input_reference]],  1
	je	.label_1662
	jmp	.label_1665
.label_1665:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x78]
	cmp	rdx, qword ptr [rsi + 8]
	mov	byte ptr [rbp - 0x81], cl
	jae	.label_1667
	mov	rax, qword ptr [rbp - 0x28]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	movsxd	rcx, edi
	mov	qword ptr [rbp - 0x90], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x90]
	movzx	edi, word ptr [rax + rcx*2]
	and	edi, 0x2000
	cmp	edi, 0
	setne	dl
	xor	dl, 0xff
	mov	byte ptr [rbp - 0x81], dl
.label_1667:
	mov	al, byte ptr [rbp - 0x81]
	test	al, 1
	jne	.label_1666
	jmp	.label_1660
.label_1666:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1665
.label_1639:
	jmp	.label_1649
.label_1649:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x50]
	cmp	rdx, qword ptr [rbp - 0x58]
	mov	byte ptr [rbp - 0x119], cl
	jae	.label_1615
	mov	rax, qword ptr [rbp - 0x50]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	movsxd	rcx, edi
	mov	qword ptr [rbp - 0x128], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x128]
	movzx	edi, word ptr [rax + rcx*2]
	and	edi, 0x2000
	cmp	edi, 0
	setne	dl
	mov	byte ptr [rbp - 0x119], dl
.label_1615:
	mov	al, byte ptr [rbp - 0x119]
	test	al, 1
	jne	.label_1643
	jmp	.label_1592
.label_1643:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1649
.label_1618:
	test	byte ptr [byte ptr [input_reference]],  1
	je	.label_1596
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x40]
	sub	rax, rcx
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx + 0x20], rax
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax,  qword ptr [word ptr [reference_max_width]]
	jle	.label_1655
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [word ptr [reference_max_width]],  rax
.label_1655:
	jmp	.label_1596
.label_1596:
	jmp	.label_1635
.label_1635:
	test	byte ptr [byte ptr [input_reference]],  1
	je	.label_1602
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x50]
	jne	.label_1602
	jmp	.label_1604
.label_1604:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x50]
	cmp	rdx, qword ptr [rbp - 0x58]
	mov	byte ptr [rbp - 0x109], cl
	jae	.label_1624
	mov	rax, qword ptr [rbp - 0x50]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	movsxd	rcx, edi
	mov	qword ptr [rbp - 0x118], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x118]
	movzx	edi, word ptr [rax + rcx*2]
	and	edi, 0x2000
	cmp	edi, 0
	setne	dl
	xor	dl, 0xff
	mov	byte ptr [rbp - 0x109], dl
.label_1624:
	mov	al, byte ptr [rbp - 0x109]
	test	al, 1
	jne	.label_1634
	jmp	.label_1639
.label_1634:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1604
.label_1601:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x60]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x38]
	cmp	rax,  qword ptr [word ptr [maximum_word_length]]
	jle	.label_1647
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [word ptr [maximum_word_length]],  rax
.label_1647:
	test	byte ptr [byte ptr [input_reference]],  1
	je	.label_1656
	jmp	.label_1591
.label_1591:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x40]
	jae	.label_1593
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0xa
	jne	.label_1599
	mov	rax,  qword ptr [word ptr [total_line_count]]
	add	rax, 1
	mov	qword ptr [word ptr [total_line_count]],  rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x20], rax
.label_1650:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x78]
	cmp	rdx, qword ptr [rsi + 8]
	mov	byte ptr [rbp - 0xeb], cl
	jae	.label_1614
	mov	rax, qword ptr [rbp - 0x28]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	movsxd	rcx, edi
	mov	qword ptr [rbp - 0xf8], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0xf8]
	movzx	edi, word ptr [rax + rcx*2]
	and	edi, 0x2000
	cmp	edi, 0
	setne	dl
	xor	dl, 0xff
	mov	byte ptr [rbp - 0xeb], dl
.label_1614:
	mov	al, byte ptr [rbp - 0xeb]
	test	al, 1
	jne	.label_1644
	jmp	.label_1648
.label_1644:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1650
.label_1668:
	jmp	.label_1662
.label_1662:
	mov	rax, qword ptr [rbp - 0x78]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x10], rax
.label_1589:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x78]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1657
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x78]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x70], rax
	cmp	qword ptr [word ptr [context_regex]],  0
	je	.label_1640
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rcx + 8]
	sub	rcx, rax
	mov	edx, OFFSET FLAT:context_regs
	mov	r9d, edx
	mov	edx, OFFSET FLAT:label_1598
	mov	edi, edx
	xor	edx, edx
	mov	esi, edx
	mov	qword ptr [rbp - 0xa8], rsi
	mov	rsi, rax
	mov	rdx, rcx
	mov	rax, qword ptr [rbp - 0xa8]
	mov	qword ptr [rbp - 0xb0], rcx
	mov	rcx, rax
	mov	r8, qword ptr [rbp - 0xb0]
	call	rpl_re_search
	mov	rcx, rax
	sub	rax, -2
	mov	qword ptr [rbp - 0xb8], rcx
	mov	qword ptr [rbp - 0xc0], rax
	je	.label_1621
	jmp	.label_1628
.label_1628:
	mov	rax, qword ptr [rbp - 0xb8]
	sub	rax, -1
	mov	qword ptr [rbp - 0xc8], rax
	je	.label_1630
	jmp	.label_1636
.label_1636:
	mov	rax, qword ptr [rbp - 0xb8]
	test	rax, rax
	je	.label_1638
	jmp	.label_1606
.label_1620:
	mov	rax,  qword ptr [word ptr [total_line_count]]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx + 0x20], rax
	jmp	.label_1635
.label_1623:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
.label_1654:
	jmp	.label_1617
.label_1675:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rax, qword ptr [rax + 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rcx + 0x20], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	qword ptr [rcx + 0x20], rax
	jmp	.label_1669
	.section	.text
	.align	16
	#Procedure 0x413811

	.globl calc_next
	.type calc_next, @function
calc_next:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	movzx	eax, byte ptr [rsi + 0x30]
	mov	ecx, eax
	sub	ecx, 0xb
	mov	dword ptr [rbp - 0x14], eax
	mov	dword ptr [rbp - 0x18], ecx
	je	.label_1673
	jmp	.label_1674
.label_1674:
	mov	eax, dword ptr [rbp - 0x14]
	sub	eax, 0x10
	mov	dword ptr [rbp - 0x1c], eax
	je	.label_1675
	jmp	.label_1670
.label_1670:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0
	je	.label_1671
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rcx + 0x20], rax
.label_1671:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x10], 0
	je	.label_1672
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	qword ptr [rcx + 0x20], rax
.label_1672:
	jmp	.label_1669
.label_1669:
	xor	eax, eax
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41389a
	.globl sub_41389a
	.type sub_41389a, @function
sub_41389a:

	nop	
.label_1673:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rcx + 0x20], rax
	jmp	.label_1669
	.section	.text
	.align	16
	#Procedure 0x4138b0

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	al, sil
	mov	rsi, -1
	mov	qword ptr [rbp - 8], rdi
	mov	byte ptr [rbp - 9], al
	mov	rdi, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rbp - 9]
	call	quotearg_char_mem
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4138dc
	.globl sub_4138dc
	.type sub_4138dc, @function
sub_4138dc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4138e0

	.globl free_dfa_content
	.type free_dfa_content, @function
free_dfa_content:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	cmp	qword ptr [rdi], 0
	je	.label_1678
	mov	qword ptr [rbp - 0x10], 0
.label_1685:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 0x10]
	jae	.label_1677
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x10]
	shl	rcx, 4
	add	rax, rcx
	mov	rdi, rax
	call	free_token
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1685
.label_1684:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x10]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1680
.label_1676:
	jmp	.label_1683
.label_1683:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x40]
	mov	rdi, rax
	call	free
	movabs	rax, OFFSET FLAT:utf8_sb_map
	mov	rdi, qword ptr [rbp - 8]
	cmp	qword ptr [rdi + 0x78], rax
	je	.label_1688
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x78]
	mov	rdi, rax
	call	free
.label_1688:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0xe0]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	free
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4139c2
	.globl sub_4139c2
	.type sub_4139c2, @function
sub_4139c2:

	nop	
.label_1677:
	jmp	.label_1678
.label_1678:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x18]
	mov	rdi, rax
	call	free
	mov	qword ptr [rbp - 0x10], 0
.label_1690:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 0x10]
	jae	.label_1682
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x30], 0
	je	.label_1686
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x30]
	imul	rcx, qword ptr [rbp - 0x10], 0x18
	add	rax, rcx
	mov	rax, qword ptr [rax + 0x10]
	mov	rdi, rax
	call	free
.label_1686:
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x38], 0
	je	.label_1681
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x38]
	imul	rcx, qword ptr [rbp - 0x10], 0x18
	add	rax, rcx
	mov	rax, qword ptr [rax + 0x10]
	mov	rdi, rax
	call	free
.label_1681:
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x28], 0
	je	.label_1689
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x28]
	imul	rcx, qword ptr [rbp - 0x10], 0x18
	add	rax, rcx
	mov	rax, qword ptr [rax + 0x10]
	mov	rdi, rax
	call	free
.label_1689:
	jmp	.label_1687
.label_1687:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1690
.label_1682:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x28]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x30]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x38]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x40], 0
	je	.label_1683
	mov	qword ptr [rbp - 0x10], 0
.label_1680:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 0x88]
	ja	.label_1676
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x40]
	imul	rcx, qword ptr [rbp - 0x10], 0x18
	add	rax, rcx
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x18], 0
.label_1679:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rcx]
	jge	.label_1684
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x28]
	call	free_state
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1679
	.section	.text
	.align	16
	#Procedure 0x413b50
	.globl clone_quoting_options
	.type clone_quoting_options, @function
clone_quoting_options:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0xc], ecx
	cmp	qword ptr [rbp - 8], 0
	je	.label_1691
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_1692
.label_1691:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_1692
.label_1692:
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, 0x38
	mov	esi, ecx
	mov	rdi, rax
	call	xmemdup
	mov	qword ptr [rbp - 0x18], rax
	mov	ecx, dword ptr [rbp - 0xc]
	mov	dword ptr [rbp - 0x24], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x24]
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x413bc2
	.globl sub_413bc2
	.type sub_413bc2, @function
sub_413bc2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x413bd0

	.globl internal_read_file
	.type internal_read_file, @function
internal_read_file:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	call	fopen
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_1695
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1693
.label_1694:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
.label_1693:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x413c1f
	.globl sub_413c1f
	.type sub_413c1f, @function
sub_413c1f:

	nop	word ptr [rax + rax]
.label_1695:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x18]
	call	fread_file
	mov	qword ptr [rbp - 0x30], rax
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x34], ecx
	mov	rdi, qword ptr [rbp - 0x28]
	call	rpl_fclose
	cmp	eax, 0
	je	.label_1694
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_1696
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x34], ecx
	mov	rdi, qword ptr [rbp - 0x30]
	call	free
.label_1696:
	mov	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 0x38], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x38]
	mov	dword ptr [rax], ecx
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1693
	.section	.text
	.align	16
	#Procedure 0x413c90

	.globl __xargmatch_internal
	.type __xargmatch_internal, @function
__xargmatch_internal:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	qword ptr [rbp - 0x38], r9
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	call	argmatch
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x40], 0
	jl	.label_1698
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1697
.label_1698:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x40]
	call	argmatch_invalid
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x30]
	call	argmatch_valid
	call	qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 8], -1
.label_1697:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x413d18
	.globl sub_413d18
	.type sub_413d18, @function
sub_413d18:

	nop	dword ptr [rax + rax]
.label_1700:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 8]
	setg	dl
	and	dl, 1
	movzx	esi, dl
	mov	dword ptr [rbp - 0x44], esi
.label_1707:
	mov	eax, dword ptr [rbp - 0x44]
	mov	dword ptr [rbp - 4], eax
.label_1713:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x413d4b
	.globl sub_413d4b
	.type sub_413d4b, @function
sub_413d4b:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x413d4e

	.globl compare_words
	.type compare_words, @function
compare_words:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 8]
	mov	rdi, qword ptr [rbp - 0x18]
	cmp	rsi, qword ptr [rdi + 8]
	jge	.label_1701
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1711
.label_1710:
	jmp	.label_1699
.label_1699:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_1700
	mov	eax, 0xffffffff
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_1707
.label_1701:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x38], rax
.label_1711:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x20], rax
	test	byte ptr [byte ptr [ignore_case]],  1
	je	.label_1708
	mov	qword ptr [rbp - 0x28], 0
.label_1702:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x20]
	jge	.label_1703
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	movsx	edi, byte ptr [rcx + rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	movzx	edi,  byte ptr [byte ptr [+ (rcx * 1) + folded_chars]]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx]
	movsx	esi, byte ptr [rdx + rcx]
	mov	dword ptr [rbp - 0x3c], edi
	mov	edi, esi
	call	to_uchar
	movzx	esi, al
	mov	ecx, esi
	movzx	esi,  byte ptr [byte ptr [+ (rcx * 1) + folded_chars]]
	mov	edi, dword ptr [rbp - 0x3c]
	sub	edi, esi
	mov	dword ptr [rbp - 0x2c], edi
	cmp	dword ptr [rbp - 0x2c], 0
	je	.label_1706
	mov	eax, dword ptr [rbp - 0x2c]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1713
.label_1703:
	jmp	.label_1699
.label_1706:
	jmp	.label_1705
.label_1705:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1702
.label_1708:
	mov	qword ptr [rbp - 0x28], 0
.label_1704:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x20]
	jge	.label_1710
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	movsx	edi, byte ptr [rcx + rax]
	call	to_uchar
	movzx	edi, al
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx]
	movsx	esi, byte ptr [rdx + rcx]
	mov	dword ptr [rbp - 0x40], edi
	mov	edi, esi
	call	to_uchar
	movzx	esi, al
	mov	edi, dword ptr [rbp - 0x40]
	sub	edi, esi
	mov	dword ptr [rbp - 0x2c], edi
	cmp	dword ptr [rbp - 0x2c], 0
	je	.label_1709
	mov	eax, dword ptr [rbp - 0x2c]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1713
.label_1709:
	jmp	.label_1712
.label_1712:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1704
.label_1717:
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 8], rax
.label_1715:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x413ef2
	.globl sub_413ef2
	.type sub_413ef2, @function
sub_413ef2:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x413ef5

	.globl parse
	.type parse, @function
parse:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	lea	rax, [rbp - 0x58]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 0x30], rcx
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	qword ptr [rdx + 0xd8], rcx
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x20]
	or	rcx, 0x800000
	mov	rdi, rax
	mov	rdx, rcx
	call	fetch_token
	lea	rdx, [rbp - 0x58]
	xor	r8d, r8d
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	r9, qword ptr [rbp - 0x28]
	call	parse_reg_exp
	xor	r10d, r10d
	mov	r11b, r10b
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x28]
	cmp	dword ptr [rax], 0
	mov	byte ptr [rbp - 0x59], r11b
	je	.label_1714
	cmp	qword ptr [rbp - 0x38], 0
	sete	al
	mov	byte ptr [rbp - 0x59], al
.label_1714:
	mov	al, byte ptr [rbp - 0x59]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1716
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1715
.label_1719:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x48], rax
.label_1720:
	mov	al, 1
	cmp	qword ptr [rbp - 0x40], 0
	mov	byte ptr [rbp - 0x5a], al
	je	.label_1718
	cmp	qword ptr [rbp - 0x48], 0
	sete	al
	mov	byte ptr [rbp - 0x5a], al
.label_1718:
	mov	al, byte ptr [rbp - 0x5a]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1717
	mov	rax, qword ptr [rbp - 0x28]
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1715
.label_1716:
	xor	eax, eax
	mov	ecx, eax
	mov	eax, 2
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, rcx
	mov	rdx, rcx
	mov	ecx, eax
	call	create_tree
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_1719
	mov	ecx, 0x10
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x40]
	call	create_tree
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_1720
	.section	.text
	.align	16
	#Procedure 0x414040

	.globl read_file
	.type read_file, @function
read_file:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdx, OFFSET FLAT:label_1721
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	internal_read_file
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41406d
	.globl sub_41406d
	.type sub_41406d, @function
sub_41406d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x414070

	.globl quotearg_n_style_colon
	.type quotearg_n_style_colon, @function
quotearg_n_style_colon:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xa0
	lea	rax, [rbp - 0x80]
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	qword ptr [rbp - 0x10], rdx
	mov	esi, dword ptr [rbp - 8]
	mov	rdi, rax
	call	quoting_options_from_style
	lea	rax, [rbp - 0x48]
	mov	esi, 0x3a
	mov	edx, 1
	mov	ecx, 0x38
	mov	edi, ecx
	lea	r8, [rbp - 0x80]
	mov	r9, rax
	mov	qword ptr [rbp - 0x88], rdi
	mov	rdi, r9
	mov	dword ptr [rbp - 0x8c], esi
	mov	rsi, r8
	mov	r8, qword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x90], edx
	mov	rdx, r8
	mov	qword ptr [rbp - 0x98], rax
	call	memcpy
	mov	rdi, qword ptr [rbp - 0x98]
	mov	esi, dword ptr [rbp - 0x8c]
	mov	edx, dword ptr [rbp - 0x90]
	call	set_char_quoting
	mov	rdx, -1
	lea	rcx, [rbp - 0x48]
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x9c], eax
	call	quotearg_n_options
	add	rsp, 0xa0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41411d
	.globl sub_41411d
	.type sub_41411d, @function
sub_41411d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x414120

	.globl rpl_re_match
	.type rpl_re_match, @function
rpl_re_match:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	xor	eax, eax
	mov	r9d, eax
	mov	eax, 1
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	r8, qword ptr [rbp - 0x18]
	mov	r10, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x30], r8
	mov	r8, r9
	mov	r9, qword ptr [rbp - 0x30]
	mov	qword ptr [rsp], r10
	mov	dword ptr [rsp + 8], 1
	mov	dword ptr [rbp - 0x34], eax
	call	re_search_stub
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x414183
	.globl sub_414183
	.type sub_414183, @function
sub_414183:

	nop	word ptr cs:[rax + rax]
.label_1754:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x58], 0
	mov	byte ptr [rbp - 0xa1], cl
	jne	.label_1725
	cmp	qword ptr [rbp - 0x60], 0
	sete	al
	mov	byte ptr [rbp - 0xa1], al
.label_1725:
	mov	al, byte ptr [rbp - 0xa1]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1729
	movabs	rsi, OFFSET FLAT:free_tree
	xor	eax, eax
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x10]
	call	postorder
	mov	qword ptr [rbp - 8], 0
	mov	dword ptr [rbp - 0xa8], eax
	jmp	.label_1730
.label_1728:
	xor	eax, eax
	mov	edx, eax
	mov	ecx, 0xa
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x40]
	call	create_tree
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x40], 0
	sete	r8b
	and	r8b, 1
	movzx	ecx, r8b
	movsxd	rax, ecx
	cmp	rax, 0
	je	.label_1735
	jmp	.label_1733
.label_1733:
	mov	rax, qword ptr [rbp - 0x38]
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 8], 0
.label_1730:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0xc0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x414251
	.globl sub_414251
	.type sub_414251, @function
sub_414251:

	nop	dword ptr [rax + rax]
.label_1735:
	jmp	.label_1739
.label_1739:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1741
.label_1737:
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x60]
	jne	.label_1743
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1730
.label_1751:
	jmp	.label_1745
.label_1722:
	cmp	qword ptr [rbp - 0x48], 0
	je	.label_1724
	mov	ecx, 0x10
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x40]
	call	create_tree
	mov	qword ptr [rbp - 0x40], rax
.label_1724:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1730
.label_1749:
	mov	rax, qword ptr [rbp - 0x38]
	mov	dword ptr [rax], 0xa
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1730
.label_1748:
	cmp	qword ptr [rbp - 0x60], -1
	jne	.label_1750
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0xa0], rax
	jmp	.label_1760
.label_1765:
	jmp	.label_1746
.label_1746:
	cmp	qword ptr [rbp - 0x58], -2
	setne	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1761
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 0x18
	jne	.label_1763
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x88], rax
	jmp	.label_1755
.label_1729:
	cmp	qword ptr [rbp - 0x58], 0
	setg	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1732
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x40], rax
	mov	qword ptr [rbp - 0x50], 2
.label_1731:
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x58]
	jg	.label_1737
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	call	duplicate_tree
	mov	ecx, 0x10
	mov	qword ptr [rbp - 0x10], rax
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x10]
	call	create_tree
	mov	r8b, 1
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x10], 0
	mov	byte ptr [rbp - 0xa9], r8b
	je	.label_1726
	cmp	qword ptr [rbp - 0x40], 0
	sete	al
	mov	byte ptr [rbp - 0xa9], al
.label_1726:
	mov	al, byte ptr [rbp - 0xa9]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1734
	jmp	.label_1733
.label_1732:
	mov	qword ptr [rbp - 0x48], 0
.label_1740:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x30]
	and	ecx, 0xff
	cmp	ecx, 0x11
	jne	.label_1742
	movabs	rsi, OFFSET FLAT:mark_opt_subexp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	qword ptr [rbp - 0x80], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x80]
	call	postorder
	mov	dword ptr [rbp - 0xb0], eax
.label_1742:
	xor	eax, eax
	mov	edx, eax
	mov	eax, 0xa
	mov	ecx, 0xb
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x10]
	cmp	qword ptr [rbp - 0x60], -1
	cmove	eax, ecx
	mov	ecx, eax
	call	create_tree
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x40], 0
	sete	r8b
	and	r8b, 1
	movzx	ecx, r8b
	movsxd	rax, ecx
	cmp	rax, 0
	je	.label_1736
	jmp	.label_1733
.label_1763:
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 1
	jne	.label_1744
	mov	rax, qword ptr [rbp - 0x28]
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x2c
	jne	.label_1744
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x30]
	call	fetch_number
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_1747
.label_1734:
	jmp	.label_1727
.label_1727:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1731
	.section	.text
	.align	16
	#Procedure 0x4144c7

	.globl parse_dup_op
	.type parse_dup_op, @function
parse_dup_op:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xc0
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	qword ptr [rbp - 0x38], r9
	mov	qword ptr [rbp - 0x40], 0
	mov	qword ptr [rbp - 0x48], 0
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x48]
	mov	qword ptr [rbp - 0x68], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rcx]
	mov	qword ptr [rbp - 0x78], rdx
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rbp - 0x70], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	eax, dword ptr [rcx + 8]
	and	eax, 0xff
	cmp	eax, 0x17
	jne	.label_1757
	mov	qword ptr [rbp - 0x60], 0
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x30]
	call	fetch_number
	mov	qword ptr [rbp - 0x58], rax
	cmp	qword ptr [rbp - 0x58], -1
	jne	.label_1746
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 1
	jne	.label_1749
	mov	rax, qword ptr [rbp - 0x28]
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x2c
	jne	.label_1749
	mov	qword ptr [rbp - 0x58], 0
	jmp	.label_1765
.label_1759:
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x48], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x78]
	mov	qword ptr [rax], rcx
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rax + 8], rcx
	mov	rax, qword ptr [rbp - 0x28]
	mov	edx, dword ptr [rax + 8]
	and	edx, 0xffffff00
	or	edx, 1
	mov	dword ptr [rax + 8], edx
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1730
.label_1743:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	call	duplicate_tree
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	sete	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_1738
	jmp	.label_1733
.label_1750:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0xa0], rax
.label_1760:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	ecx, 0x7fff
	mov	edx, ecx
	cmp	rdx, rax
	setl	sil
	and	sil, 1
	movzx	ecx, sil
	movsxd	rax, ecx
	cmp	rax, 0
	je	.label_1751
	mov	rax, qword ptr [rbp - 0x38]
	mov	dword ptr [rax], 0xf
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1730
.label_1752:
	mov	rax, qword ptr [rbp - 0x38]
	mov	dword ptr [rax], 0xa
.label_1758:
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1730
.label_1738:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_1740
.label_1753:
	cmp	qword ptr [rbp - 0x60], -1
	je	.label_1756
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x58]
	cmp	rcx, qword ptr [rbp - 0x60]
	mov	byte ptr [rbp - 0x92], al
	jg	.label_1762
.label_1756:
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 0x18
	setne	dl
	mov	byte ptr [rbp - 0x92], dl
.label_1762:
	mov	al, byte ptr [rbp - 0x92]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1748
	mov	rax, qword ptr [rbp - 0x38]
	mov	dword ptr [rax], 0xa
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1730
.label_1757:
	mov	eax, 0xffffffff
	mov	ecx, 1
	xor	edx, edx
	mov	rsi, qword ptr [rbp - 0x28]
	mov	edi, dword ptr [rsi + 8]
	and	edi, 0xff
	cmp	edi, 0x12
	cmove	edx, ecx
	movsxd	rsi, edx
	mov	qword ptr [rbp - 0x58], rsi
	mov	rsi, qword ptr [rbp - 0x28]
	mov	edx, dword ptr [rsi + 8]
	and	edx, 0xff
	cmp	edx, 0x13
	cmove	eax, ecx
	movsxd	rsi, eax
	mov	qword ptr [rbp - 0x60], rsi
.label_1745:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x30]
	call	fetch_token
	cmp	qword ptr [rbp - 0x10], 0
	sete	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1754
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1730
.label_1736:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	mov	qword ptr [rbp - 0x50], rax
.label_1741:
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x60]
	jg	.label_1722
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	call	duplicate_tree
	mov	ecx, 0x10
	mov	qword ptr [rbp - 0x10], rax
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x10]
	call	create_tree
	mov	r8b, 1
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x10], 0
	mov	byte ptr [rbp - 0xb1], r8b
	je	.label_1723
	cmp	qword ptr [rbp - 0x40], 0
	sete	al
	mov	byte ptr [rbp - 0xb1], al
.label_1723:
	mov	al, byte ptr [rbp - 0xb1]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1728
	jmp	.label_1733
.label_1744:
	mov	rax, -2
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_1747
.label_1747:
	mov	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x88], rax
.label_1755:
	mov	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x60], rax
.label_1761:
	mov	al, 1
	cmp	qword ptr [rbp - 0x58], -2
	mov	byte ptr [rbp - 0x91], al
	je	.label_1764
	cmp	qword ptr [rbp - 0x60], -2
	sete	al
	mov	byte ptr [rbp - 0x91], al
.label_1764:
	mov	al, byte ptr [rbp - 0x91]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1753
	mov	rax, qword ptr [rbp - 0x30]
	and	rax, 0x200000
	cmp	rax, 0
	setne	cl
	xor	cl, 0xff
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_1759
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 2
	jne	.label_1752
	mov	rax, qword ptr [rbp - 0x38]
	mov	dword ptr [rax], 9
	jmp	.label_1758
	.section	.text
	.align	16
	#Procedure 0x414880
	.globl mbiter_multi_reloc
	.type mbiter_multi_reloc, @function
mbiter_multi_reloc:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 8]
	add	rsi, qword ptr [rdi + 0x18]
	mov	qword ptr [rdi + 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 8]
	add	rsi, qword ptr [rdi]
	mov	qword ptr [rdi], rsi
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4148ac
	.globl sub_4148ac
	.type sub_4148ac, @function
sub_4148ac:

	nop	dword ptr [rax]
.label_1769:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x30]
	cmp	qword ptr [rax + 8], 0
	jne	.label_1771
	mov	byte ptr [rbp - 0x19], 1
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdi, rax
	call	free
.label_1771:
	jmp	.label_1772
.label_1772:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1766
.label_1767:
	mov	byte ptr [rbp - 0x19], 0
	mov	qword ptr [rbp - 0x18], 0
.label_1770:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x30]
	cmp	qword ptr [rax + 8], 0
	je	.label_1774
	jmp	.label_1772
.label_1768:
	mov	dword ptr [rbp - 4], 0
.label_1773:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41492d
	.globl sub_41492d
	.type sub_41492d, @function
sub_41492d:

	nop	word ptr [rax + rax]
.label_1774:
	lea	rdi, [rbp - 0x38]
	mov	ecx, 1
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	calc_eclosure_iter
	mov	dword ptr [rbp - 0x20], eax
	cmp	dword ptr [rbp - 0x20], 0
	setne	r8b
	and	r8b, 1
	movzx	eax, r8b
	movsxd	rdx, eax
	cmp	rdx, 0
	je	.label_1769
	mov	eax, dword ptr [rbp - 0x20]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1773
	.section	.text
	.align	16
	#Procedure 0x414977

	.globl calc_eclosure
	.type calc_eclosure, @function
calc_eclosure:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	byte ptr [rbp - 0x19], 0
	mov	qword ptr [rbp - 0x18], 0
.label_1766:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x10]
	jne	.label_1770
	test	byte ptr [rbp - 0x19], 1
	jne	.label_1767
	jmp	.label_1768
.label_1775:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	rpl_freopen
	mov	qword ptr [rbp - 0x18], rax
.label_1781:
	jmp	.label_1776
.label_1776:
	jmp	.label_1778
.label_1778:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x20], ecx
	test	byte ptr [rbp - 0x1b], 1
	je	.label_1779
	mov	edi, 2
	call	close
	mov	dword ptr [rbp - 0x30], eax
.label_1779:
	test	byte ptr [rbp - 0x1a], 1
	je	.label_1782
	mov	edi, 1
	call	close
	mov	dword ptr [rbp - 0x34], eax
.label_1782:
	test	byte ptr [rbp - 0x19], 1
	je	.label_1777
	xor	edi, edi
	call	close
	mov	dword ptr [rbp - 0x38], eax
.label_1777:
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_1780
	mov	eax, dword ptr [rbp - 0x20]
	mov	dword ptr [rbp - 0x3c], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x3c]
	mov	dword ptr [rax], ecx
.label_1780:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x414a40
	.globl sub_414a40
	.type sub_414a40, @function
sub_414a40:

	nop	dword ptr [rax]
.label_1784:
	test	byte ptr [rbp - 0x1b], 1
	je	.label_1775
	mov	edi, 2
	call	protect_fd
	test	al, 1
	jne	.label_1775
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_1781
	.section	.text
	.align	16
	#Procedure 0x414a6c

	.globl freopen_safer
	.type freopen_safer, @function
freopen_safer:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	byte ptr [rbp - 0x19], 0
	mov	byte ptr [rbp - 0x1a], 0
	mov	byte ptr [rbp - 0x1b], 0
	mov	rdi, qword ptr [rbp - 0x18]
	call	fileno
	mov	ecx, eax
	test	eax, eax
	mov	dword ptr [rbp - 0x24], ecx
	je	.label_1786
	jmp	.label_1789
.label_1789:
	mov	eax, dword ptr [rbp - 0x24]
	sub	eax, 1
	mov	dword ptr [rbp - 0x28], eax
	je	.label_1785
	jmp	.label_1793
.label_1793:
	mov	eax, dword ptr [rbp - 0x24]
	sub	eax, 2
	mov	dword ptr [rbp - 0x2c], eax
	je	.label_1790
	jmp	.label_1794
.label_1794:
	mov	eax, 2
	mov	edi, eax
	mov	esi, eax
	call	dup2
	cmp	eax, 2
	je	.label_1788
	mov	byte ptr [rbp - 0x1b], 1
.label_1788:
	jmp	.label_1790
.label_1790:
	mov	eax, 1
	mov	edi, eax
	mov	esi, eax
	call	dup2
	cmp	eax, 1
	je	.label_1792
	mov	byte ptr [rbp - 0x1a], 1
.label_1792:
	jmp	.label_1785
.label_1785:
	xor	eax, eax
	mov	edi, eax
	mov	esi, eax
	call	dup2
	cmp	eax, 0
	je	.label_1787
	mov	byte ptr [rbp - 0x19], 1
.label_1787:
	jmp	.label_1786
.label_1786:
	jmp	.label_1791
.label_1791:
	test	byte ptr [rbp - 0x19], 1
	je	.label_1783
	xor	edi, edi
	call	protect_fd
	test	al, 1
	jne	.label_1783
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_1778
.label_1783:
	test	byte ptr [rbp - 0x1a], 1
	je	.label_1784
	mov	edi, 1
	call	protect_fd
	test	al, 1
	jne	.label_1784
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_1776
.label_1814:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 8], 0
	je	.label_1795
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax + 8]
	mov	rdx, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	rcx, rax
	call	merge_state_array
	mov	dword ptr [rbp - 0x34], eax
	cmp	dword ptr [rbp - 0x34], 0
	setne	r8b
	and	r8b, 1
	movzx	eax, r8b
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_1802
	jmp	.label_1804
.label_1808:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0xd8]
	imul	rcx, qword ptr [rbp - 0x88], 0x28
	add	rax, rcx
	mov	qword ptr [rbp - 0xa0], rax
	mov	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x90], rax
.label_1799:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x48]
	je	.label_1816
	jmp	.label_1800
.label_1811:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x30]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x28]
	mov	rax, qword ptr [rax + 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0xd0], rax
.label_1798:
	mov	rax, qword ptr [rbp - 0xd0]
	mov	qword ptr [rbp - 0xb8], rax
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 0x18]
	jg	.label_1806
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_1806
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_1806
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, 8
	mov	rsi, qword ptr [rbp - 0xb8]
	mov	rdi, rax
	call	re_node_set_contains
	cmp	rax, 0
	je	.label_1806
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x20
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	r8, qword ptr [rbp - 0xb8]
	mov	r9, qword ptr [rbp - 0xb0]
	mov	rsi, rax
	call	check_dst_limits
	test	al, 1
	jne	.label_1806
	jmp	.label_1815
.label_1806:
	jmp	.label_1800
.label_1815:
	cmp	qword ptr [rbp - 0x80], 0
	jne	.label_1813
	lea	rax, [rbp - 0x80]
	mov	ecx, 0x38
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, rax
	mov	qword ptr [rbp - 0xd8], rax
	call	memcpy
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, 0x20
	mov	rdx, qword ptr [rbp - 0x18]
	add	rdx, 0x20
	mov	rdi, rax
	mov	rsi, rdx
	call	re_node_set_init_copy
	mov	dword ptr [rbp - 0x34], eax
	cmp	dword ptr [rbp - 0x34], 0
	setne	r8b
	and	r8b, 1
	movzx	eax, r8b
	movsxd	rdx, eax
	cmp	rdx, 0
	je	.label_1809
	jmp	.label_1804
	.section	.text
	.align	16
	#Procedure 0x414d62

	.globl sift_states_bkref
	.type sift_states_bkref, @function
sift_states_bkref:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xe0
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x98]
	mov	qword ptr [rbp - 0x30], rcx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	call	search_cur_bkref_entry
	mov	qword ptr [rbp - 0x88], rax
	cmp	qword ptr [rbp - 0x88], -1
	jne	.label_1801
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1805
.label_1796:
	lea	rsi, [rbp - 0x80]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0xc8], rax
	mov	rdi, qword ptr [rbp - 0x10]
	call	sift_states_backward
	mov	dword ptr [rbp - 0x34], eax
	cmp	dword ptr [rbp - 0x34], 0
	setne	dl
	and	dl, 1
	movzx	eax, dl
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_1814
	jmp	.label_1804
.label_1812:
	mov	dword ptr [rbp - 0x34], 0
.label_1804:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_1797
	mov	rax, qword ptr [rbp - 0x50]
	mov	rdi, rax
	call	free
.label_1797:
	mov	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 4], eax
.label_1805:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xe0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x414e2c
	.globl sub_414e2c
	.type sub_414e2c, @function
sub_414e2c:

	nop	word ptr cs:[rax + rax]
.label_1801:
	mov	qword ptr [rbp - 0x80], 0
	mov	qword ptr [rbp - 0x40], 0
.label_1810:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_1812
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x30]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	and	edx, 0xff
	mov	dword ptr [rbp - 0x94], edx
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 0x10]
	jne	.label_1803
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 0x18]
	jne	.label_1803
	jmp	.label_1807
.label_1803:
	cmp	dword ptr [rbp - 0x94], 4
	je	.label_1808
	jmp	.label_1807
.label_1816:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rax, qword ptr [rax + 0x18]
	mov	rcx, qword ptr [rbp - 0xa0]
	sub	rax, qword ptr [rcx + 0x10]
	mov	qword ptr [rbp - 0xa8], rax
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rbp - 0xa8]
	mov	qword ptr [rbp - 0xb0], rax
	cmp	qword ptr [rbp - 0xa8], 0
	je	.label_1811
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0xd0], rax
	jmp	.label_1798
.label_1802:
	jmp	.label_1795
.label_1795:
	lea	rax, [rbp - 0x80]
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x80]
	mov	qword ptr [rsi + rdx*8], rcx
	mov	rcx, rax
	add	rcx, 0x20
	add	rax, 0x20
	mov	rsi, qword ptr [rbp - 0x90]
	mov	rdi, rax
	mov	qword ptr [rbp - 0xe0], rcx
	call	re_node_set_contains
	sub	rax, 1
	mov	rdi, qword ptr [rbp - 0xe0]
	mov	rsi, rax
	call	re_node_set_remove_at
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0xd8]
	imul	rcx, qword ptr [rbp - 0x90], 0x28
	add	rax, rcx
	mov	qword ptr [rbp - 0xa0], rax
.label_1800:
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rcx, rax
	add	rcx, 0x28
	mov	qword ptr [rbp - 0xa0], rcx
	cmp	byte ptr [rax + 0x20], 0
	jne	.label_1799
	jmp	.label_1807
.label_1807:
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_1810
.label_1809:
	jmp	.label_1813
.label_1813:
	lea	rax, [rbp - 0x80]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x70], rcx
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x68], rcx
	add	rax, 0x20
	mov	rsi, qword ptr [rbp - 0x90]
	mov	rdi, rax
	call	re_node_set_insert
	and	al, 1
	mov	byte ptr [rbp - 0xb9], al
	mov	al, byte ptr [rbp - 0xb9]
	xor	al, 0xff
	and	al, 1
	movzx	edx, al
	movsxd	rcx, edx
	cmp	rcx, 0
	je	.label_1796
	mov	dword ptr [rbp - 0x34], 0xc
	jmp	.label_1804
	.section	.text
	.align	16
	#Procedure 0x415030

	.globl build_collating_symbol
	.type build_collating_symbol, @function
build_collating_symbol:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 1
	setne	r8b
	and	r8b, 1
	movzx	r9d, r8b
	movsxd	rax, r9d
	cmp	rax, 0
	je	.label_1817
	mov	dword ptr [rbp - 4], 3
	jmp	.label_1818
.label_1817:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x28]
	movzx	ecx, byte ptr [rax]
	mov	esi, ecx
	call	bitset_set
	mov	dword ptr [rbp - 4], 0
.label_1818:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4150a1
	.globl sub_4150a1
	.type sub_4150a1, @function
sub_4150a1:

	nop	word ptr cs:[rax + rax]
.label_1819:
	mov	eax, dword ptr [rbp - 0x34]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	dword ptr [rcx], eax
	mov	rax, qword ptr [rbp - 0x28]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4150c3
	.globl sub_4150c3
	.type sub_4150c3, @function
sub_4150c3:

	nop	dword ptr [rax]
.label_1821:
	mov	eax, dword ptr [rbp - 0x38]
	mov	dword ptr [rbp - 0x34], eax
.label_1825:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1822
	.section	.text
	.align	16
	#Procedure 0x4150e1

	.globl re_string_skip_chars
	.type re_string_skip_chars, @function
re_string_skip_chars:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	dword ptr [rbp - 0x34], 0xffffffff
	mov	rdx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rdx + 0x28]
	mov	rsi, qword ptr [rbp - 8]
	add	rdx, qword ptr [rsi + 0x38]
	mov	qword ptr [rbp - 0x28], rdx
.label_1822:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x10]
	jge	.label_1819
	lea	rdi, [rbp - 0x38]
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x50]
	sub	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x20]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	add	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 8]
	add	rcx, 0x20
	mov	rsi, rax
	call	rpl_mbrtowc
	mov	r8b, 1
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], -2
	mov	byte ptr [rbp - 0x41], r8b
	je	.label_1820
	mov	al, 1
	cmp	qword ptr [rbp - 0x30], -1
	mov	byte ptr [rbp - 0x41], al
	je	.label_1820
	cmp	qword ptr [rbp - 0x30], 0
	sete	al
	mov	byte ptr [rbp - 0x41], al
.label_1820:
	mov	al, byte ptr [rbp - 0x41]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1821
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_1823
	cmp	qword ptr [rbp - 0x40], 0
	jne	.label_1824
.label_1823:
	mov	dword ptr [rbp - 0x34], 0
	jmp	.label_1826
.label_1824:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x28]
	movzx	edx, byte ptr [rax + rcx]
	mov	dword ptr [rbp - 0x34], edx
.label_1826:
	mov	qword ptr [rbp - 0x30], 1
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rax + 0x20], rcx
	jmp	.label_1825
	.section	.text
	.align	16
	#Procedure 0x4151f0

	.globl main
	.type main, @function
main:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xf0
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rsi]
	call	set_program_name
	mov	edi, 6
	movabs	rsi, OFFSET FLAT:label_783
	call	setlocale
	movabs	rdi, OFFSET FLAT:label_1839
	movabs	rsi, OFFSET FLAT:label_1840
	mov	qword ptr [rbp - 0x38], rax
	call	bindtextdomain
	movabs	rdi, OFFSET FLAT:label_1839
	mov	qword ptr [rbp - 0x40], rax
	call	textdomain
	movabs	rdi, OFFSET FLAT:close_stdout
	mov	qword ptr [rbp - 0x48], rax
	call	atexit
	mov	dword ptr [rbp - 0x4c], eax
.label_1830:
	movabs	rdx, OFFSET FLAT:label_1856
	movabs	rcx, OFFSET FLAT:long_options
	xor	eax, eax
	mov	r8d, eax
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	getopt_long
	mov	dword ptr [rbp - 0x14], eax
	cmp	dword ptr [rbp - 0x14], -1
	je	.label_1869
	mov	eax, dword ptr [rbp - 0x14]
	mov	ecx, eax
	sub	ecx, 0xffffff7d
	mov	dword ptr [rbp - 0x50], eax
	mov	dword ptr [rbp - 0x54], ecx
	je	.label_1874
	jmp	.label_1883
.label_1883:
	mov	eax, dword ptr [rbp - 0x50]
	sub	eax, 0xffffff7e
	mov	dword ptr [rbp - 0x58], eax
	je	.label_1885
	jmp	.label_1892
.label_1892:
	mov	eax, dword ptr [rbp - 0x50]
	sub	eax, 0xa
	mov	dword ptr [rbp - 0x5c], eax
	je	.label_1906
	jmp	.label_1900
.label_1900:
	mov	eax, dword ptr [rbp - 0x50]
	sub	eax, 0x41
	mov	dword ptr [rbp - 0x60], eax
	je	.label_1901
	jmp	.label_1907
.label_1907:
	mov	eax, dword ptr [rbp - 0x50]
	sub	eax, 0x46
	mov	dword ptr [rbp - 0x64], eax
	je	.label_1909
	jmp	.label_1844
.label_1844:
	mov	eax, dword ptr [rbp - 0x50]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0x68], eax
	je	.label_1851
	jmp	.label_1882
.label_1882:
	mov	eax, dword ptr [rbp - 0x50]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0x6c], eax
	je	.label_1894
	jmp	.label_1884
.label_1884:
	mov	eax, dword ptr [rbp - 0x50]
	sub	eax, 0x4f
	mov	dword ptr [rbp - 0x70], eax
	je	.label_1845
	jmp	.label_1895
.label_1895:
	mov	eax, dword ptr [rbp - 0x50]
	sub	eax, 0x52
	mov	dword ptr [rbp - 0x74], eax
	je	.label_1887
	jmp	.label_1835
.label_1835:
	mov	eax, dword ptr [rbp - 0x50]
	sub	eax, 0x53
	mov	dword ptr [rbp - 0x78], eax
	je	.label_1843
	jmp	.label_1855
.label_1855:
	mov	eax, dword ptr [rbp - 0x50]
	sub	eax, 0x54
	mov	dword ptr [rbp - 0x7c], eax
	je	.label_1859
	jmp	.label_1865
.label_1865:
	mov	eax, dword ptr [rbp - 0x50]
	sub	eax, 0x57
	mov	dword ptr [rbp - 0x80], eax
	je	.label_1866
	jmp	.label_1870
.label_1870:
	mov	eax, dword ptr [rbp - 0x50]
	sub	eax, 0x62
	mov	dword ptr [rbp - 0x84], eax
	je	.label_1872
	jmp	.label_1903
.label_1903:
	mov	eax, dword ptr [rbp - 0x50]
	sub	eax, 0x66
	mov	dword ptr [rbp - 0x88], eax
	je	.label_1880
	jmp	.label_1888
.label_1888:
	mov	eax, dword ptr [rbp - 0x50]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0x8c], eax
	je	.label_1890
	jmp	.label_1846
.label_1846:
	mov	eax, dword ptr [rbp - 0x50]
	sub	eax, 0x69
	mov	dword ptr [rbp - 0x90], eax
	je	.label_1829
	jmp	.label_1905
.label_1905:
	mov	eax, dword ptr [rbp - 0x50]
	sub	eax, 0x6f
	mov	dword ptr [rbp - 0x94], eax
	je	.label_1891
	jmp	.label_1898
.label_1898:
	mov	eax, dword ptr [rbp - 0x50]
	sub	eax, 0x72
	mov	dword ptr [rbp - 0x98], eax
	je	.label_1849
	jmp	.label_1837
.label_1837:
	mov	eax, dword ptr [rbp - 0x50]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0x9c], eax
	je	.label_1838
	jmp	.label_1834
.label_1834:
	mov	eax, dword ptr [rbp - 0x50]
	sub	eax, 0x77
	mov	dword ptr [rbp - 0xa0], eax
	je	.label_1854
	jmp	.label_1848
.label_1848:
	mov	edi, 1
	call	usage
.label_1875:
	jmp	.label_1831
.label_1887:
	mov	byte ptr [byte ptr [right_reference]],  1
	jmp	.label_1827
.label_1890:
	xor	eax, eax
	mov	ecx, eax
	xor	edx, edx
	lea	rsi, [rbp - 0x20]
	mov	rdi,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0xa8], rsi
	mov	rsi, rcx
	mov	r8, qword ptr [rbp - 0xa8]
	mov	qword ptr [rbp - 0xb0], rcx
	mov	rcx, r8
	mov	r8, qword ptr [rbp - 0xb0]
	call	xstrtoimax
	cmp	eax, 0
	jne	.label_1832
	xor	eax, eax
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x20]
	jge	.label_1832
	movabs	rax, 0x7fffffffffffffff
	cmp	qword ptr [rbp - 0x20], rax
	jle	.label_1886
.label_1832:
	movabs	rdi, OFFSET FLAT:label_1852
	call	gettext
	mov	rdi,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0xb8], rax
	call	quote
	mov	edi, 1
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0xb8]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_1849:
	mov	byte ptr [byte ptr [input_reference]],  1
	jmp	.label_1827
.label_1878:
	mov	eax, 8
	mov	edi, eax
	mov	dword ptr [dword ptr [number_input_files]],  1
	call	xmalloc
	mov	ecx, 8
	mov	edi, ecx
	mov	qword ptr [word ptr [input_file_name]],  rax
	call	xmalloc
	mov	ecx, 0x10
	mov	edi, ecx
	mov	qword ptr [word ptr [file_line_count]],  rax
	call	xmalloc
	mov	qword ptr [word ptr [text_buffers]],  rax
	movsxd	rax,  dword ptr [dword ptr [optind]]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rdi + rax*8]
	cmp	byte ptr [rax], 0
	je	.label_1850
	movsxd	rax,  dword ptr [dword ptr [optind]]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	edx, OFFSET FLAT:label_1861
	mov	esi, edx
	call	strcmp
	cmp	eax, 0
	jne	.label_1871
.label_1850:
	mov	rax,  qword ptr [word ptr [input_file_name]]
	mov	qword ptr [rax], 0
	jmp	.label_1873
.label_1836:
	mov	eax,  dword ptr [dword ptr [optind]]
	add	eax, 1
	mov	dword ptr [dword ptr [optind]],  eax
.label_1897:
	mov	eax,  dword ptr [dword ptr [optind]]
	cmp	eax, dword ptr [rbp - 8]
	jge	.label_1889
	movabs	rdi, OFFSET FLAT:label_1896
	call	gettext
	movsxd	rdi,  dword ptr [dword ptr [optind]]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rcx + rdi*8]
	mov	qword ptr [rbp - 0xf0], rax
	call	quote
	xor	edx, edx
	mov	edi, edx
	mov	esi, edx
	mov	rdx, qword ptr [rbp - 0xf0]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_1862:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [word ptr [line_width]],  rax
	jmp	.label_1827
.label_1901:
	mov	byte ptr [byte ptr [auto_reference]],  1
	jmp	.label_1827
.label_1854:
	xor	eax, eax
	mov	ecx, eax
	xor	edx, edx
	lea	rsi, [rbp - 0x28]
	mov	rdi,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0xc0], rsi
	mov	rsi, rcx
	mov	r8, qword ptr [rbp - 0xc0]
	mov	qword ptr [rbp - 0xc8], rcx
	mov	rcx, r8
	mov	r8, qword ptr [rbp - 0xc8]
	call	xstrtoimax
	cmp	eax, 0
	jne	.label_1828
	xor	eax, eax
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x28]
	jge	.label_1828
	movabs	rax, 0x7fffffffffffffff
	cmp	qword ptr [rbp - 0x28], rax
	jle	.label_1862
.label_1828:
	movabs	rdi, OFFSET FLAT:label_1863
	call	gettext
	mov	rdi,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0xd0], rax
	call	quote
	mov	edi, 1
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0xd0]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_1906:
	movabs	rdi, OFFSET FLAT:label_1899
	movabs	rdx, OFFSET FLAT:format_args
	movabs	rax, OFFSET FLAT:format_vals
	mov	ecx, 4
	mov	r8d, ecx
	mov	rsi,  qword ptr [word ptr [optarg]]
	mov	r9,  qword ptr [word ptr [argmatch_die]]
	mov	rcx, rax
	call	__xargmatch_internal
	mov	r10d,  dword ptr [dword ptr [+ (rax * 4) + format_vals]]
	mov	dword ptr [dword ptr [output_format]],  r10d
	jmp	.label_1827
.label_1869:
	mov	eax,  dword ptr [dword ptr [optind]]
	cmp	eax, dword ptr [rbp - 8]
	jne	.label_1842
	mov	eax, 8
	mov	edi, eax
	call	xmalloc
	mov	ecx, 8
	mov	edi, ecx
	mov	qword ptr [word ptr [input_file_name]],  rax
	call	xmalloc
	mov	ecx, 0x10
	mov	edi, ecx
	mov	qword ptr [word ptr [file_line_count]],  rax
	call	xmalloc
	mov	qword ptr [word ptr [text_buffers]],  rax
	mov	dword ptr [dword ptr [number_input_files]],  1
	mov	rax,  qword ptr [word ptr [input_file_name]]
	mov	qword ptr [rax], 0
	jmp	.label_1833
.label_1829:
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [word ptr [ignore_file]],  rax
	jmp	.label_1827
.label_1845:
	mov	dword ptr [dword ptr [output_format]],  2
	jmp	.label_1827
.label_1843:
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	copy_unescaped_string
	mov	qword ptr [word ptr [context_regex]],  rax
	jmp	.label_1827
.label_1872:
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [word ptr [break_file]],  rax
	jmp	.label_1827
.label_1894:
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [word ptr [macro_name]],  rax
	jmp	.label_1827
.label_1880:
	mov	byte ptr [byte ptr [ignore_case]],  1
	jmp	.label_1827
.label_1889:
	jmp	.label_1831
.label_1831:
	jmp	.label_1833
.label_1833:
	cmp	dword ptr [dword ptr [output_format]],  0
	jne	.label_1877
	mov	eax, 2
	mov	ecx, 1
	mov	dl,  byte ptr [byte ptr [gnu_extensions]]
	test	dl, 1
	cmovne	eax, ecx
	mov	dword ptr [dword ptr [output_format]],  eax
.label_1877:
	call	initialize_regex
	cmp	qword ptr [word ptr [break_file]],  0
	je	.label_1893
	mov	rdi,  qword ptr [word ptr [break_file]]
	call	digest_break_file
.label_1893:
	cmp	qword ptr [word ptr [ignore_file]],  0
	je	.label_1853
	movabs	rsi, OFFSET FLAT:ignore_table
	mov	rdi,  qword ptr [word ptr [ignore_file]]
	call	digest_word_file
	cmp	qword ptr [word ptr [label_1867]],  0
	jne	.label_1868
	mov	qword ptr [word ptr [ignore_file]],  0
.label_1868:
	jmp	.label_1853
.label_1853:
	cmp	qword ptr [word ptr [only_file]],  0
	je	.label_1879
	movabs	rsi, OFFSET FLAT:only_table
	mov	rdi,  qword ptr [word ptr [only_file]]
	call	digest_word_file
	cmp	qword ptr [word ptr [label_1910]],  0
	jne	.label_1911
	mov	qword ptr [word ptr [only_file]],  0
.label_1911:
	jmp	.label_1879
.label_1879:
	mov	qword ptr [word ptr [number_of_occurs]],  0
	mov	qword ptr [word ptr [total_line_count]],  0
	mov	qword ptr [word ptr [maximum_word_length]],  0
	mov	qword ptr [word ptr [reference_max_width]],  0
	mov	dword ptr [rbp - 0x18], 0
.label_1860:
	mov	eax, dword ptr [rbp - 0x18]
	cmp	eax,  dword ptr [dword ptr [number_input_files]]
	jge	.label_1841
	mov	rax,  qword ptr [word ptr [text_buffers]]
	movsxd	rcx, dword ptr [rbp - 0x18]
	shl	rcx, 4
	add	rax, rcx
	mov	qword ptr [rbp - 0x30], rax
	movsxd	rax, dword ptr [rbp - 0x18]
	mov	rcx,  qword ptr [word ptr [input_file_name]]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	rsi, qword ptr [rbp - 0x30]
	call	swallow_file_in_memory
	mov	edi, dword ptr [rbp - 0x18]
	call	find_occurs_in_text
	mov	rax,  qword ptr [word ptr [total_line_count]]
	add	rax, 1
	mov	qword ptr [word ptr [total_line_count]],  rax
	mov	rax,  qword ptr [word ptr [total_line_count]]
	movsxd	rcx, dword ptr [rbp - 0x18]
	mov	rsi,  qword ptr [word ptr [file_line_count]]
	mov	qword ptr [rsi + rcx*8], rax
	mov	eax, dword ptr [rbp - 0x18]
	add	eax, 1
	mov	dword ptr [rbp - 0x18], eax
	jmp	.label_1860
.label_1851:
	mov	byte ptr [byte ptr [gnu_extensions]],  0
	jmp	.label_1827
.label_1871:
	movsxd	rax,  dword ptr [dword ptr [optind]]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx,  qword ptr [word ptr [input_file_name]]
	mov	qword ptr [rcx], rax
.label_1873:
	mov	eax,  dword ptr [dword ptr [optind]]
	add	eax, 1
	mov	dword ptr [dword ptr [optind]],  eax
	mov	eax,  dword ptr [dword ptr [optind]]
	cmp	eax, dword ptr [rbp - 8]
	jge	.label_1897
	movabs	rsi, OFFSET FLAT:label_1908
	movsxd	rax,  dword ptr [dword ptr [optind]]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	rdx,  qword ptr [word ptr [stdout]]
	call	freopen_safer
	cmp	rax, 0
	jne	.label_1836
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	movsxd	rax,  dword ptr [dword ptr [optind]]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + rax*8]
	mov	dword ptr [rbp - 0xe4], ecx
	call	quotearg_n_style_colon
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:label_605
	mov	esi, dword ptr [rbp - 0xe4]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_1874:
	movabs	rdi, OFFSET FLAT:label_1857
	movabs	rsi, OFFSET FLAT:label_1858
	mov	rax,  qword ptr [word ptr [stdout]]
	mov	rcx,  qword ptr [word ptr [Version]]
	mov	qword ptr [rbp - 0xd8], rcx
	mov	qword ptr [rbp - 0xe0], rax
	call	proper_name_utf8
	movabs	rsi, OFFSET FLAT:label_745
	movabs	rdx, OFFSET FLAT:label_1876
	xor	r8d, r8d
	mov	r9d, r8d
	mov	rdi, qword ptr [rbp - 0xe0]
	mov	rcx, qword ptr [rbp - 0xd8]
	mov	r8, rax
	mov	al, 0
	call	version_etc
	xor	edi, edi
	call	exit
.label_1841:
	call	sort_found_occurs
	call	fix_output_parameters
	call	generate_all_output
	xor	eax, eax
	add	rsp, 0xf0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x415afa
	.globl sub_415afa
	.type sub_415afa, @function
sub_415afa:

	nop	word ptr cs:[rax + rax]
.label_1859:
	mov	dword ptr [dword ptr [output_format]],  3
	jmp	.label_1827
.label_1886:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [word ptr [gap_size]],  rax
	jmp	.label_1827
.label_1842:
	test	byte ptr [byte ptr [gnu_extensions]],  1
	je	.label_1878
	mov	eax, 8
	mov	esi, eax
	mov	eax, dword ptr [rbp - 8]
	sub	eax,  dword ptr [dword ptr [optind]]
	mov	dword ptr [dword ptr [number_input_files]],  eax
	movsxd	rdi,  dword ptr [dword ptr [number_input_files]]
	call	xnmalloc
	mov	ecx, 8
	mov	esi, ecx
	mov	qword ptr [word ptr [input_file_name]],  rax
	movsxd	rdi,  dword ptr [dword ptr [number_input_files]]
	call	xnmalloc
	mov	ecx, 0x10
	mov	esi, ecx
	mov	qword ptr [word ptr [file_line_count]],  rax
	movsxd	rdi,  dword ptr [dword ptr [number_input_files]]
	call	xnmalloc
	mov	qword ptr [word ptr [text_buffers]],  rax
	mov	dword ptr [rbp - 0x18], 0
.label_1847:
	mov	eax, dword ptr [rbp - 0x18]
	cmp	eax,  dword ptr [dword ptr [number_input_files]]
	jge	.label_1875
	movsxd	rax,  dword ptr [dword ptr [optind]]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	cmp	byte ptr [rax], 0
	je	.label_1881
	movsxd	rax,  dword ptr [dword ptr [optind]]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	edx, OFFSET FLAT:label_1861
	mov	esi, edx
	call	strcmp
	cmp	eax, 0
	jne	.label_1902
.label_1881:
	movsxd	rax, dword ptr [rbp - 0x18]
	mov	rcx,  qword ptr [word ptr [input_file_name]]
	mov	qword ptr [rcx + rax*8], 0
	jmp	.label_1904
.label_1827:
	jmp	.label_1830
.label_1885:
	xor	edi, edi
	call	usage
.label_1909:
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	copy_unescaped_string
	mov	qword ptr [word ptr [truncation_string]],  rax
	jmp	.label_1827
.label_1902:
	movsxd	rax,  dword ptr [dword ptr [optind]]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	movsxd	rcx, dword ptr [rbp - 0x18]
	mov	rdx,  qword ptr [word ptr [input_file_name]]
	mov	qword ptr [rdx + rcx*8], rax
.label_1904:
	mov	eax,  dword ptr [dword ptr [optind]]
	add	eax, 1
	mov	dword ptr [dword ptr [optind]],  eax
	mov	eax, dword ptr [rbp - 0x18]
	add	eax, 1
	mov	dword ptr [rbp - 0x18], eax
	jmp	.label_1847
.label_1838:
	jmp	.label_1827
.label_1866:
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	copy_unescaped_string
	mov	qword ptr [word ptr [word_regex]],  rax
	mov	rax,  qword ptr [word ptr [word_regex]]
	cmp	byte ptr [rax], 0
	jne	.label_1864
	mov	qword ptr [word ptr [word_regex]],  0
.label_1864:
	jmp	.label_1827
.label_1891:
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [word ptr [only_file]],  rax
	jmp	.label_1827
	.section	.text
	.align	16
	#Procedure 0x415cc0

	.globl re_node_set_insert_last
	.type re_node_set_insert_last, @function
re_node_set_insert_last:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	rsi, qword ptr [rdi + 8]
	jne	.label_1912
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	add	rax, 1
	shl	rax, 1
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	shl	rcx, 3
	mov	rdi, rax
	mov	rsi, rcx
	call	realloc
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	sete	dl
	and	dl, 1
	movzx	r8d, dl
	movsxd	rax, r8d
	cmp	rax, 0
	je	.label_1914
	mov	byte ptr [rbp - 1], 0
	jmp	.label_1913
.label_1914:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x10], rax
.label_1912:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rcx + 8]
	mov	rsi, rdx
	add	rsi, 1
	mov	qword ptr [rcx + 8], rsi
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	qword ptr [rcx + rdx*8], rax
	mov	byte ptr [rbp - 1], 1
.label_1913:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x415d83
	.globl sub_415d83
	.type sub_415d83, @function
sub_415d83:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x415d90

	.globl c_strcasecmp
	.type c_strcasecmp, @function
c_strcasecmp:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsi, qword ptr [rbp - 0x20]
	cmp	rsi, qword ptr [rbp - 0x28]
	jne	.label_1915
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1919
.label_1917:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	cmp	eax, ecx
	je	.label_1916
.label_1918:
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_1919:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x415e08
	.globl sub_415e08
	.type sub_415e08, @function
sub_415e08:

	nop	word ptr cs:[rax + rax]
.label_1915:
	jmp	.label_1916
.label_1916:
	mov	rax, qword ptr [rbp - 0x20]
	movzx	edi, byte ptr [rax]
	call	c_tolower
	mov	cl, al
	mov	byte ptr [rbp - 0x29], cl
	mov	rdx, qword ptr [rbp - 0x28]
	movzx	edi, byte ptr [rdx]
	call	c_tolower
	mov	cl, al
	mov	byte ptr [rbp - 0x2a], cl
	movzx	eax, byte ptr [rbp - 0x29]
	cmp	eax, 0
	jne	.label_1917
	jmp	.label_1918
.label_1922:
	jmp	.label_1933
.label_1933:
	jmp	.label_1936
.label_1936:
	jmp	.label_1938
.label_1938:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_1940
.label_1923:
	jmp	.label_1933
.label_1941:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	imul	rcx, qword ptr [rbp - 0x40], 0x18
	add	rax, rcx
	mov	rsi, qword ptr [rbp - 0x58]
	mov	rdi, rax
	call	re_node_set_insert
	and	al, 1
	mov	byte ptr [rbp - 0x41], al
	mov	al, byte ptr [rbp - 0x41]
	xor	al, 0xff
	and	al, 1
	movzx	edx, al
	movsxd	rcx, edx
	cmp	rcx, 0
	je	.label_1923
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_1920
.label_1927:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x18]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	imul	rcx, qword ptr [rbp - 0x40], 0x18
	add	rax, rcx
	mov	rsi, qword ptr [rbp - 0x58]
	mov	rdi, rax
	call	re_node_set_insert
	and	al, 1
	mov	byte ptr [rbp - 0x41], al
	mov	al, byte ptr [rbp - 0x41]
	xor	al, 0xff
	and	al, 1
	movzx	r8d, al
	movsxd	rcx, r8d
	cmp	rcx, 0
	je	.label_1937
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_1920
.label_1929:
	mov	dword ptr [rbp - 4], 0
.label_1920:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x415f32
	.globl sub_415f32
	.type sub_415f32, @function
sub_415f32:

	nop	dword ptr [rax]
.label_1926:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x28]
	cmp	qword ptr [rax + 8], 1
	jne	.label_1930
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x28]
	mov	rax, qword ptr [rax + 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	imul	rcx, qword ptr [rbp - 0x40], 0x18
	add	rax, rcx
	mov	qword ptr [rax + 8], 0
	mov	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x28]
	jne	.label_1935
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x38]
	je	.label_1935
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	imul	rcx, qword ptr [rbp - 0x40], 0x18
	add	rax, rcx
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rdi, rax
	call	re_node_set_insert
	and	al, 1
	mov	byte ptr [rbp - 0x41], al
	mov	al, byte ptr [rbp - 0x41]
	xor	al, 0xff
	and	al, 1
	movzx	edx, al
	movsxd	rcx, edx
	cmp	rcx, 0
	je	.label_1931
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_1920
.label_1942:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	imul	rcx, qword ptr [rbp - 0x40], 0x18
	add	rax, rcx
	mov	rsi, qword ptr [rbp - 0x58]
	mov	rdi, rax
	call	re_node_set_insert
	and	al, 1
	mov	byte ptr [rbp - 0x41], al
	mov	al, byte ptr [rbp - 0x41]
	xor	al, 0xff
	and	al, 1
	movzx	edx, al
	movsxd	rcx, edx
	cmp	rcx, 0
	je	.label_1921
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_1920
.label_1934:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x28]
	cmp	qword ptr [rax + 8], 0
	jne	.label_1926
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x18]
	mov	qword ptr [rdx + rcx*8], rax
	jmp	.label_1929
.label_1925:
	jmp	.label_1928
.label_1924:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	imul	rcx, qword ptr [rbp - 0x40], 0x18
	add	rax, rcx
	mov	rsi, qword ptr [rbp - 0x58]
	mov	rdi, rax
	call	re_node_set_insert
	and	al, 1
	mov	byte ptr [rbp - 0x41], al
	mov	al, byte ptr [rbp - 0x41]
	xor	al, 0xff
	and	al, 1
	movzx	edx, al
	movsxd	rcx, edx
	cmp	rcx, 0
	je	.label_1932
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_1920
.label_1931:
	jmp	.label_1929
.label_1937:
	jmp	.label_1938
.label_1935:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	shr	edx, 8
	and	edx, 0x3ff
	or	edx, dword ptr [rbp - 0x48]
	mov	dword ptr [rbp - 0x48], edx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x50]
	mov	edx, dword ptr [rbp - 0x48]
	call	duplicate_node
	mov	qword ptr [rbp - 0x58], rax
	cmp	qword ptr [rbp - 0x58], -1
	sete	r8b
	and	r8b, 1
	movzx	edx, r8b
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_1941
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_1920
	.section	.text
	.align	16
	#Procedure 0x41611d

	.globl duplicate_node_closure
	.type duplicate_node_closure, @function
duplicate_node_closure:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	dword ptr [rbp - 0x2c], r8d
	mov	r8d, dword ptr [rbp - 0x2c]
	mov	dword ptr [rbp - 0x48], r8d
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x38], rcx
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x40], rcx
.label_1940:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	and	edx, 0xff
	cmp	edx, 4
	jne	.label_1934
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	imul	rcx, qword ptr [rbp - 0x40], 0x18
	add	rax, rcx
	mov	qword ptr [rax + 8], 0
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x50]
	mov	edx, dword ptr [rbp - 0x48]
	call	duplicate_node
	mov	qword ptr [rbp - 0x58], rax
	cmp	qword ptr [rbp - 0x58], -1
	sete	r8b
	and	r8b, 1
	movzx	edx, r8b
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_1927
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_1920
.label_1930:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x28]
	mov	rax, qword ptr [rax + 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	imul	rcx, qword ptr [rbp - 0x40], 0x18
	add	rax, rcx
	mov	qword ptr [rax + 8], 0
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x50]
	mov	edx, dword ptr [rbp - 0x48]
	call	search_duplicated_node
	mov	qword ptr [rbp - 0x58], rax
	cmp	qword ptr [rbp - 0x58], -1
	jne	.label_1924
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x50]
	mov	edx, dword ptr [rbp - 0x48]
	call	duplicate_node
	mov	qword ptr [rbp - 0x58], rax
	cmp	qword ptr [rbp - 0x58], -1
	sete	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_1942
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_1920
.label_1939:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	imul	rcx, qword ptr [rbp - 0x40], 0x18
	add	rax, rcx
	mov	rsi, qword ptr [rbp - 0x58]
	mov	rdi, rax
	call	re_node_set_insert
	and	al, 1
	mov	byte ptr [rbp - 0x41], al
	mov	al, byte ptr [rbp - 0x41]
	xor	al, 0xff
	and	al, 1
	movzx	edx, al
	movsxd	rcx, edx
	cmp	rcx, 0
	je	.label_1922
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_1920
.label_1932:
	jmp	.label_1928
.label_1928:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x28]
	mov	rax, qword ptr [rax + 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x50], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x50]
	mov	edx, dword ptr [rbp - 0x48]
	call	duplicate_node
	mov	qword ptr [rbp - 0x58], rax
	cmp	qword ptr [rbp - 0x58], -1
	sete	r8b
	and	r8b, 1
	movzx	edx, r8b
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_1939
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_1920
.label_1921:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8d, dword ptr [rbp - 0x48]
	call	duplicate_node_closure
	mov	dword ptr [rbp - 0x5c], eax
	cmp	dword ptr [rbp - 0x5c], 0
	setne	r9b
	and	r9b, 1
	movzx	eax, r9b
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_1925
	mov	eax, dword ptr [rbp - 0x5c]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1920
	.section	.text
	.align	16
	#Procedure 0x416350

	.globl re_string_fetch_byte_case
	.type re_string_fetch_byte_case, @function
re_string_fetch_byte_case:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	byte ptr [rdi + 0x8b], 0
	setne	al
	xor	al, 0xff
	and	al, 1
	movzx	ecx, al
	movsxd	rdi, ecx
	cmp	rdi, 0
	je	.label_1946
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x48]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rax + 0x48], rdx
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	sil, byte ptr [rax + rcx]
	mov	byte ptr [rbp - 1], sil
	jmp	.label_1943
.label_1944:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	add	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	movzx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 0x1c], edx
	mov	edx, dword ptr [rbp - 0x1c]
	and	edx, 0xffffff80
	cmp	edx, 0
	je	.label_1945
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x48]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rax + 0x48], rdx
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	sil, byte ptr [rax + rcx]
	mov	byte ptr [rbp - 1], sil
	jmp	.label_1943
.label_1945:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rax + 0x48]
	call	re_string_char_size_at
	movsxd	rsi, eax
	mov	rdi, qword ptr [rbp - 0x10]
	add	rsi, qword ptr [rdi + 0x48]
	mov	qword ptr [rdi + 0x48], rsi
	mov	eax, dword ptr [rbp - 0x1c]
	mov	cl, al
	mov	byte ptr [rbp - 1], cl
	jmp	.label_1943
.label_1946:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	byte ptr [rax + 0x8c], 0
	je	.label_1947
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x30]
	je	.label_1944
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	cmp	dword ptr [rcx + rax*4], -1
	jne	.label_1944
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x48]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rax + 0x48], rdx
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	sil, byte ptr [rax + rcx]
	mov	byte ptr [rbp - 1], sil
	jmp	.label_1943
.label_1947:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rcx + 0x48]
	mov	rsi, rdx
	add	rsi, 1
	mov	qword ptr [rcx + 0x48], rsi
	add	rax, rdx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	mov	dil, byte ptr [rcx + rax]
	mov	byte ptr [rbp - 1], dil
.label_1943:
	movzx	eax, byte ptr [rbp - 1]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4164dc
	.globl sub_4164dc
	.type sub_4164dc, @function
sub_4164dc:

	nop	dword ptr [rax]
.label_1951:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x60], rax
.label_1952:
	mov	rax, qword ptr [rbp - 0x60]
	mov	ecx, 0x10
	mov	qword ptr [rbp - 0x48], rax
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x48]
	call	create_tree
	mov	r8b, 1
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x50], 0
	mov	byte ptr [rbp - 0x61], r8b
	je	.label_1949
	mov	al, 1
	cmp	qword ptr [rbp - 0x48], 0
	mov	byte ptr [rbp - 0x61], al
	je	.label_1949
	mov	al, 1
	cmp	qword ptr [rbp - 0x38], 0
	mov	byte ptr [rbp - 0x61], al
	je	.label_1949
	cmp	qword ptr [rbp - 0x40], 0
	sete	al
	mov	byte ptr [rbp - 0x61], al
.label_1949:
	mov	al, byte ptr [rbp - 0x61]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1950
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1948
.label_1950:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	qword ptr [rcx + 0x28], rax
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x28], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	edx, dword ptr [rax + 0x30]
	shr	edx, 0x13
	and	edx, 1
	mov	rax, qword ptr [rbp - 0x40]
	mov	esi, dword ptr [rax + 0x30]
	and	edx, 1
	mov	edi, edx
	shl	edi, 0x13
	and	esi, 0xfff7ffff
	or	esi, edi
	mov	dword ptr [rax + 0x30], esi
	mov	rax, qword ptr [rbp - 0x38]
	mov	esi, dword ptr [rax + 0x30]
	and	edx, 1
	shl	edx, 0x13
	and	esi, 0xfff7ffff
	or	esi, edx
	mov	dword ptr [rax + 0x30], esi
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 8], rax
.label_1948:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4165dc
	.globl sub_4165dc
	.type sub_4165dc, @function
sub_4165dc:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4165e8

	.globl lower_subexp
	.type lower_subexp, @function
lower_subexp:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx]
	mov	qword ptr [rbp - 0x28], rdx
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rdx + 8]
	mov	qword ptr [rbp - 0x30], rdx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	al, byte ptr [rdx + 0x38]
	shr	al, 4
	and	al, 1
	movzx	ecx, al
	cmp	ecx, 0
	je	.label_1953
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 8], 0
	je	.label_1953
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 0x28], 0x40
	jge	.label_1954
	mov	eax, 1
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rdx + 0xa0]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	qword ptr [rbp - 0x58], rcx
	mov	rcx, rsi
	mov	rsi, qword ptr [rbp - 0x58]
	shl	rsi, cl
	and	rdx, rsi
	cmp	rdx, 0
	jne	.label_1953
.label_1954:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1948
.label_1953:
	xor	eax, eax
	mov	ecx, eax
	mov	eax, 8
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, rcx
	mov	rdx, rcx
	mov	ecx, eax
	call	create_tree
	xor	ecx, ecx
	mov	edx, ecx
	mov	ecx, 9
	mov	qword ptr [rbp - 0x38], rax
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, rdx
	call	create_tree
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_1951
	mov	ecx, 0x10
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x40]
	call	create_tree
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1952
	.section	.text
	.align	16
	#Procedure 0x4166f0

	.globl match_ctx_add_sublast
	.type match_ctx_add_sublast, @function
match_ctx_add_sublast:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x20]
	mov	rsi, qword ptr [rbp - 0x10]
	cmp	rdx, qword ptr [rsi + 0x18]
	sete	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1955
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x18]
	shl	rax, 1
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	shl	rcx, 3
	mov	rdi, rax
	mov	rsi, rcx
	call	realloc
	mov	qword ptr [rbp - 0x38], rax
	cmp	qword ptr [rbp - 0x38], 0
	sete	dl
	and	dl, 1
	movzx	r8d, dl
	movsxd	rax, r8d
	cmp	rax, 0
	je	.label_1957
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1958
.label_1957:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x28], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x18], rax
.label_1955:
	mov	eax, 1
	mov	edi, eax
	mov	eax, 0x28
	mov	esi, eax
	call	calloc
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	setne	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_1956
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x20]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x28]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x20]
	add	rcx, 1
	mov	qword ptr [rax + 0x20], rcx
.label_1956:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
.label_1958:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
.label_1961:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rcx + 8]
	mov	rcx, qword ptr [rbp - 0x18]
	sub	rax, qword ptr [rcx]
	mov	qword ptr [rbp - 0x40], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x40]
	call	clean_state_log_if_needed
	mov	dword ptr [rbp - 4], eax
.label_1959:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x416850
	.globl sub_416850
	.type sub_416850, @function
sub_416850:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x41685f

	.globl get_subexp_sub
	.type get_subexp_sub, @function
get_subexp_sub:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	eax, 8
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x20]
	add	rcx, 0x10
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rdx]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rsi + 8]
	mov	r8, qword ptr [rbp - 0x28]
	mov	r9, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x48], rsi
	mov	rsi, rcx
	mov	rcx, qword ptr [rbp - 0x48]
	mov	dword ptr [rsp], 8
	mov	dword ptr [rbp - 0x4c], eax
	call	check_arrival
	mov	dword ptr [rbp - 0x34], eax
	cmp	dword ptr [rbp - 0x34], 0
	je	.label_1960
	mov	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1959
.label_1960:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rax]
	mov	rax, qword ptr [rbp - 0x20]
	mov	r8, qword ptr [rax + 8]
	call	match_ctx_add_entry
	mov	dword ptr [rbp - 0x34], eax
	cmp	dword ptr [rbp - 0x34], 0
	setne	r9b
	and	r9b, 1
	movzx	eax, r9b
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_1961
	mov	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1959
	.section	.text
	.align	16
	#Procedure 0x416920
	.globl read_binary_file
	.type read_binary_file, @function
read_binary_file:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdx, OFFSET FLAT:label_1962
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	internal_read_file
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41694d
	.globl sub_41694d
	.type sub_41694d, @function
sub_41694d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x416950

	.globl free_charset
	.type free_charset, @function
free_charset:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi]
	call	free
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 8]
	call	free
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 0x10]
	call	free
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 0x18]
	call	free
	mov	rdi, qword ptr [rbp - 8]
	call	free
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41699e
	.globl sub_41699e
	.type sub_41699e, @function
sub_41699e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4169a0

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	movabs	rax, OFFSET FLAT:emit_ancillary_info.infomap
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rax
.label_1965:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx], 0
	mov	byte ptr [rbp - 0x21], cl
	je	.label_1964
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax]
	call	strcmp
	cmp	eax, 0
	sete	cl
	xor	cl, 0xff
	mov	byte ptr [rbp - 0x21], cl
.label_1964:
	mov	al, byte ptr [rbp - 0x21]
	test	al, 1
	jne	.label_1972
	jmp	.label_1975
.label_1972:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1965
.label_1975:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 8], 0
	je	.label_1967
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
.label_1967:
	movabs	rdi, OFFSET FLAT:label_1971
	call	gettext
	movabs	rsi, OFFSET FLAT:label_1876
	movabs	rdx, OFFSET FLAT:label_1966
	mov	rdi, rax
	mov	al, 0
	call	printf
	mov	edi, 5
	xor	ecx, ecx
	mov	esi, ecx
	mov	dword ptr [rbp - 0x28], eax
	call	setlocale
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1968
	movabs	rsi, OFFSET FLAT:label_1974
	mov	eax, 3
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x20]
	call	strncmp
	cmp	eax, 0
	je	.label_1968
	movabs	rdi, OFFSET FLAT:label_1969
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x2c], eax
.label_1968:
	movabs	rdi, OFFSET FLAT:label_1963
	call	gettext
	movabs	rsi, OFFSET FLAT:label_1966
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_1970
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	movabs	rdx, OFFSET FLAT:label_783
	movabs	rsi, OFFSET FLAT:label_1973
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rcx, qword ptr [rbp - 8]
	cmove	rdx, rsi
	mov	qword ptr [rbp - 0x38], rdi
	mov	rdi, rax
	mov	rsi, qword ptr [rbp - 0x38]
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x3c], eax
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x416b39
	.globl sub_416b39
	.type sub_416b39, @function
sub_416b39:

	nop	dword ptr [rax]
.label_1994:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x30]
	call	peek_token_bracket
	mov	dword ptr [rbp - 0x94], eax
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x20]
	cmp	dword ptr [rdx + 0xb4], 1
	mov	qword ptr [rbp - 0x148], rdi
	mov	qword ptr [rbp - 0x150], rsi
	jle	.label_1991
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x158], rax
	jmp	.label_1999
.label_2014:
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 0x15
	jne	.label_2003
	jmp	.label_2007
.label_3786:
	lea	rdx, [rbp - 0x78]
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0xa0]
	call	build_equiv_class
	mov	rcx, qword ptr [rbp - 0x38]
	mov	dword ptr [rcx], eax
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	dword ptr [rcx], 0
	setne	r8b
	and	r8b, 1
	movzx	eax, r8b
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_2010
	jmp	.label_1982
.label_1992:
	mov	byte ptr [rbp - 0x109], 1
.label_1998:
	jmp	.label_1981
.label_1981:
	jmp	.label_1993
.label_1993:
	mov	al, byte ptr [rbp - 0x109]
	and	al, 1
	movzx	ecx, al
	cmp	ecx, 1
	jne	.label_1977
	lea	rdi, [rbp - 0xb8]
	lea	rdx, [rbp - 0x120]
	mov	eax, 1
	lea	rcx, [rbp - 0x100]
	mov	qword ptr [rbp - 0xb0], rcx
	mov	dword ptr [rbp - 0xb8], 3
	mov	rsi, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x108]
	mov	r8, qword ptr [rbp - 0x20]
	mov	r9, qword ptr [rbp - 0x30]
	mov	dword ptr [rsp], 1
	mov	dword ptr [rbp - 0x13c], eax
	call	parse_bracket_element
	mov	dword ptr [rbp - 0x104], eax
	cmp	dword ptr [rbp - 0x104], 0
	setne	r10b
	and	r10b, 1
	movzx	eax, r10b
	movsxd	rdx, eax
	cmp	rdx, 0
	je	.label_1994
	mov	eax, dword ptr [rbp - 0x104]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	dword ptr [rcx], eax
	jmp	.label_1982
.label_3785:
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rcx + 0x28]
	sete	dl
	and	dl, 1
	movzx	esi, dl
	movsxd	rax, esi
	cmp	rax, 0
	je	.label_2006
	mov	rax, qword ptr [rbp - 0x58]
	mov	rax, qword ptr [rax + 0x28]
	shl	rax, 1
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x70]
	shl	rcx, 2
	mov	rdi, rax
	mov	rsi, rcx
	call	realloc
	mov	qword ptr [rbp - 0x128], rax
	cmp	qword ptr [rbp - 0x128], 0
	sete	dl
	and	dl, 1
	movzx	r8d, dl
	movsxd	rax, r8d
	cmp	rax, 0
	je	.label_2000
	jmp	.label_1978
.label_2019:
	mov	dword ptr [rbp - 0x134], 0
.label_2013:
	cmp	dword ptr [rbp - 0x134], 4
	jge	.label_1979
	movsxd	rax, dword ptr [rbp - 0x134]
	mov	rcx, qword ptr [rbp - 0x50]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_1983
	jmp	.label_1979
.label_1995:
	mov	rdi, qword ptr [rbp - 0x58]
	call	free_charset
	xor	eax, eax
	mov	edi, eax
	lea	rcx, [rbp - 0x48]
	mov	eax, dword ptr [rbp - 0x40]
	and	eax, 0xffffff00
	or	eax, 3
	mov	dword ptr [rbp - 0x40], eax
	mov	rdx, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x48], rdx
	mov	rdx, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x180], rdi
	mov	rdi, rdx
	mov	rsi, qword ptr [rbp - 0x180]
	mov	rdx, qword ptr [rbp - 0x180]
	call	create_token_tree
	mov	qword ptr [rbp - 0x90], rax
	cmp	qword ptr [rbp - 0x90], 0
	sete	r8b
	and	r8b, 1
	movzx	r9d, r8b
	movsxd	rax, r9d
	cmp	rax, 0
	je	.label_2002
	jmp	.label_1978
.label_2015:
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 0x16
	jne	.label_1981
	lea	rdi, [rbp - 0x120]
	movsxd	rax, dword ptr [rbp - 0x94]
	mov	rcx, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rcx + 0x48]
	mov	qword ptr [rcx + 0x48], rax
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x30]
	call	peek_token_bracket
	mov	dword ptr [rbp - 0x108], eax
	mov	eax, dword ptr [rbp - 0x118]
	and	eax, 0xff
	cmp	eax, 2
	sete	r8b
	and	r8b, 1
	movzx	eax, r8b
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_2020
	mov	rax, qword ptr [rbp - 0x38]
	mov	dword ptr [rax], 7
	jmp	.label_1982
.label_3787:
	lea	rdx, [rbp - 0x60]
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0xa0]
	call	build_collating_symbol
	mov	rcx, qword ptr [rbp - 0x38]
	mov	dword ptr [rcx], eax
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	dword ptr [rcx], 0
	setne	r8b
	and	r8b, 1
	movzx	eax, r8b
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_1988
	jmp	.label_1982
.label_2002:
	jmp	.label_1996
.label_1996:
	mov	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1997
.label_2003:
	jmp	.label_2001
.label_2010:
	jmp	.label_1987
.label_1977:
	mov	eax, dword ptr [rbp - 0xa8]
	mov	ecx, eax
	mov	rdx, rcx
	sub	rdx, 4
	mov	qword ptr [rbp - 0x160], rcx
	mov	qword ptr [rbp - 0x168], rdx
	ja	.label_2005
	mov	rax, qword ptr [rbp - 0x160]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_2009]]
	jmp	rcx
	.section	.text
	.align	16
	#Procedure 0x416ec8

	.globl parse_bracket_exp
	.type parse_bracket_exp, @function
parse_bracket_exp:
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 0x188
	mov	eax, 0x20
	mov	r9d, eax
	mov	eax, 1
	mov	r10d, eax
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x28], rdx
	mov	qword ptr [rbp - 0x30], rcx
	mov	qword ptr [rbp - 0x38], r8
	mov	qword ptr [rbp - 0x60], 0
	mov	qword ptr [rbp - 0x68], 0
	mov	qword ptr [rbp - 0x70], 0
	mov	qword ptr [rbp - 0x78], 0
	mov	qword ptr [rbp - 0x80], 0
	mov	byte ptr [rbp - 0x81], 0
	mov	byte ptr [rbp - 0x95], 1
	mov	rdi, r9
	mov	rsi, r10
	call	calloc
	mov	r11d, 0x50
	mov	edi, r11d
	mov	r11d, 1
	mov	esi, r11d
	mov	qword ptr [rbp - 0x50], rax
	call	calloc
	mov	bl, 1
	mov	qword ptr [rbp - 0x58], rax
	cmp	qword ptr [rbp - 0x50], 0
	mov	byte ptr [rbp - 0x135], bl
	je	.label_2024
	cmp	qword ptr [rbp - 0x58], 0
	sete	al
	mov	byte ptr [rbp - 0x135], al
.label_2024:
	mov	al, byte ptr [rbp - 0x135]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_2025
	mov	rax, qword ptr [rbp - 0x50]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x58]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x38]
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 0x10], 0
	jmp	.label_1997
.label_2021:
	jmp	.label_2022
.label_2022:
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 0x15
	jne	.label_2023
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 1
	mov	dword ptr [rax + 8], ecx
.label_2023:
	jmp	.label_2001
.label_2001:
	lea	rdi, [rbp - 0xa8]
	lea	rax, [rbp - 0xe0]
	mov	dword ptr [rbp - 0x108], 0
	mov	byte ptr [rbp - 0x109], 0
	mov	qword ptr [rbp - 0xa0], rax
	mov	dword ptr [rbp - 0xa8], 3
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rbp - 0x94]
	mov	r8, qword ptr [rbp - 0x20]
	mov	r9, qword ptr [rbp - 0x30]
	mov	r10b, byte ptr [rbp - 0x95]
	and	r10b, 1
	movzx	r11d, r10b
	mov	dword ptr [rsp], r11d
	call	parse_bracket_element
	mov	dword ptr [rbp - 0x104], eax
	cmp	dword ptr [rbp - 0x104], 0
	setne	r10b
	and	r10b, 1
	movzx	eax, r10b
	movsxd	rdx, eax
	cmp	rdx, 0
	je	.label_2018
	mov	eax, dword ptr [rbp - 0x104]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	dword ptr [rcx], eax
	jmp	.label_1982
.label_2025:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x30]
	call	peek_token_bracket
	mov	dword ptr [rbp - 0x94], eax
	mov	rdx, qword ptr [rbp - 0x28]
	mov	eax, dword ptr [rdx + 8]
	and	eax, 0xff
	cmp	eax, 2
	sete	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rdx, eax
	cmp	rdx, 0
	je	.label_2026
	mov	rax, qword ptr [rbp - 0x38]
	mov	dword ptr [rax], 2
	jmp	.label_1982
.label_2026:
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 0x19
	jne	.label_2022
	mov	rax, qword ptr [rbp - 0x58]
	mov	cl, byte ptr [rax + 0x20]
	and	cl, 0xfe
	or	cl, 1
	mov	byte ptr [rax + 0x20], cl
	mov	byte ptr [rbp - 0x81], 1
	mov	rax, qword ptr [rbp - 0x30]
	and	rax, 0x100
	cmp	rax, 0
	je	.label_2027
	mov	eax, 0xa
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x50]
	call	bitset_set
.label_2027:
	movsxd	rax, dword ptr [rbp - 0x94]
	mov	rcx, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rcx + 0x48]
	mov	qword ptr [rcx + 0x48], rax
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x30]
	call	peek_token_bracket
	mov	dword ptr [rbp - 0x94], eax
	mov	rcx, qword ptr [rbp - 0x28]
	mov	eax, dword ptr [rcx + 8]
	and	eax, 0xff
	cmp	eax, 2
	sete	r8b
	and	r8b, 1
	movzx	eax, r8b
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_2021
	mov	rax, qword ptr [rbp - 0x38]
	mov	dword ptr [rax], 2
	jmp	.label_1982
.label_3788:
	lea	rcx, [rbp - 0x80]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rax + 0x78]
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x58]
	mov	r8, qword ptr [rbp - 0xa0]
	mov	r9, qword ptr [rbp - 0x30]
	call	build_charclass
	mov	rcx, qword ptr [rbp - 0x38]
	mov	dword ptr [rcx], eax
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	dword ptr [rcx], 0
	setne	r10b
	and	r10b, 1
	movzx	eax, r10b
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_2008
	jmp	.label_1982
.label_1990:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x130]
	mov	qword ptr [rbp - 0x90], rax
.label_1989:
	jmp	.label_1996
.label_1978:
	mov	rax, qword ptr [rbp - 0x38]
	mov	dword ptr [rax], 0xc
.label_1982:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rdi, rax
	call	free
	mov	rdi, qword ptr [rbp - 0x58]
	call	free_charset
	mov	qword ptr [rbp - 0x10], 0
.label_1997:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x188
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x417228
	.globl sub_417228
	.type sub_417228, @function
sub_417228:

	nop	word ptr [rax + rax]
.label_2005:
	movabs	rdi, OFFSET FLAT:label_1985
	movabs	rsi, OFFSET FLAT:label_567
	mov	edx, 0xced
	movabs	rcx, OFFSET FLAT:label_1986
	call	__assert_fail
.label_2020:
	mov	eax, dword ptr [rbp - 0x118]
	and	eax, 0xff
	cmp	eax, 0x15
	jne	.label_1992
	xor	eax, eax
	sub	eax, dword ptr [rbp - 0x94]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x18]
	add	rcx, qword ptr [rdx + 0x48]
	mov	qword ptr [rdx + 0x48], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	eax, dword ptr [rcx + 8]
	and	eax, 0xffffff00
	or	eax, 1
	mov	dword ptr [rcx + 8], eax
	jmp	.label_1998
.label_1991:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x158], rcx
	jmp	.label_1999
.label_1999:
	mov	rax, qword ptr [rbp - 0x158]
	lea	rcx, [rbp - 0x68]
	lea	r8, [rbp - 0xa8]
	lea	r9, [rbp - 0xb8]
	mov	rdi, qword ptr [rbp - 0x148]
	mov	rsi, qword ptr [rbp - 0x150]
	mov	rdx, rax
	call	build_range_exp
	mov	rcx, qword ptr [rbp - 0x38]
	mov	dword ptr [rcx], eax
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	dword ptr [rcx], 0
	setne	r10b
	and	r10b, 1
	movzx	eax, r10b
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_2016
	jmp	.label_1982
.label_2004:
	mov	ecx, 0xa
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x90]
	mov	rdx, qword ptr [rbp - 0x130]
	call	create_tree
	mov	qword ptr [rbp - 0x90], rax
	cmp	qword ptr [rbp - 0x90], 0
	sete	r8b
	and	r8b, 1
	movzx	ecx, r8b
	movsxd	rax, ecx
	cmp	rax, 0
	je	.label_1980
	jmp	.label_1978
.label_1980:
	jmp	.label_1989
.label_1979:
	cmp	dword ptr [rbp - 0x134], 4
	jge	.label_1990
	xor	eax, eax
	mov	ecx, eax
	lea	rdx, [rbp - 0x48]
	mov	eax, dword ptr [rbp - 0x40]
	and	eax, 0xffffff00
	or	eax, 3
	mov	dword ptr [rbp - 0x40], eax
	mov	rsi, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x48], rsi
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, rcx
	mov	qword ptr [rbp - 0x178], rdx
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x178]
	call	create_token_tree
	mov	qword ptr [rbp - 0x90], rax
	cmp	qword ptr [rbp - 0x90], 0
	sete	r8b
	and	r8b, 1
	movzx	r9d, r8b
	movsxd	rax, r9d
	cmp	rax, 0
	je	.label_2004
	jmp	.label_1978
.label_1987:
	jmp	.label_2012
.label_2012:
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 2
	sete	dl
	and	dl, 1
	movzx	ecx, dl
	movsxd	rax, ecx
	cmp	rax, 0
	je	.label_2014
	mov	rax, qword ptr [rbp - 0x38]
	mov	dword ptr [rax], 7
	jmp	.label_1982
.label_2016:
	jmp	.label_2012
.label_2000:
	mov	rax, qword ptr [rbp - 0x128]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	qword ptr [rcx], rax
.label_2006:
	mov	eax, dword ptr [rbp - 0xa0]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rcx + 0x28]
	mov	rsi, rdx
	add	rsi, 1
	mov	qword ptr [rcx + 0x28], rsi
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rcx]
	mov	dword ptr [rcx + rdx*4], eax
	jmp	.label_1987
.label_1988:
	jmp	.label_1987
.label_2018:
	mov	byte ptr [rbp - 0x95], 0
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x30]
	call	peek_token_bracket
	mov	dword ptr [rbp - 0x94], eax
	cmp	dword ptr [rbp - 0xa8], 4
	je	.label_1993
	cmp	dword ptr [rbp - 0xa8], 2
	je	.label_1993
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 2
	sete	dl
	and	dl, 1
	movzx	ecx, dl
	movsxd	rax, ecx
	cmp	rax, 0
	je	.label_2015
	mov	rax, qword ptr [rbp - 0x38]
	mov	dword ptr [rax], 7
	jmp	.label_1982
.label_3784:
	mov	rdi, qword ptr [rbp - 0x50]
	movzx	eax, byte ptr [rbp - 0xa0]
	mov	esi, eax
	call	bitset_set
	jmp	.label_1987
.label_1983:
	jmp	.label_2011
.label_2011:
	mov	eax, dword ptr [rbp - 0x134]
	add	eax, 1
	mov	dword ptr [rbp - 0x134], eax
	jmp	.label_2013
.label_2008:
	jmp	.label_1987
.label_2007:
	movsxd	rax, dword ptr [rbp - 0x94]
	mov	rcx, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rcx + 0x48]
	mov	qword ptr [rcx + 0x48], rax
	test	byte ptr [rbp - 0x81], 1
	je	.label_2017
	mov	rdi, qword ptr [rbp - 0x50]
	call	bitset_not
.label_2017:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	dword ptr [rax + 0xb4], 1
	jle	.label_1976
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rax + 0x78]
	call	bitset_mask
.label_1976:
	mov	rax, qword ptr [rbp - 0x58]
	cmp	qword ptr [rax + 0x28], 0
	jne	.label_1984
	mov	rax, qword ptr [rbp - 0x58]
	cmp	qword ptr [rax + 0x30], 0
	jne	.label_1984
	mov	rax, qword ptr [rbp - 0x58]
	cmp	qword ptr [rax + 0x38], 0
	jne	.label_1984
	mov	rax, qword ptr [rbp - 0x58]
	cmp	qword ptr [rax + 0x40], 0
	jne	.label_1984
	mov	rax, qword ptr [rbp - 0x20]
	cmp	dword ptr [rax + 0xb4], 1
	jle	.label_1995
	mov	rax, qword ptr [rbp - 0x58]
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_1984
	mov	rax, qword ptr [rbp - 0x58]
	mov	cl, byte ptr [rax + 0x20]
	and	cl, 1
	movzx	edx, cl
	cmp	edx, 0
	je	.label_1995
.label_1984:
	xor	eax, eax
	mov	ecx, eax
	lea	rdx, [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	dil, byte ptr [rsi + 0xb0]
	and	dil, 0xfd
	or	dil, 2
	mov	byte ptr [rsi + 0xb0], dil
	mov	eax, dword ptr [rbp - 0x40]
	and	eax, 0xffffff00
	or	eax, 6
	mov	dword ptr [rbp - 0x40], eax
	mov	rsi, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x48], rsi
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, rcx
	mov	qword ptr [rbp - 0x170], rdx
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x170]
	call	create_token_tree
	mov	qword ptr [rbp - 0x130], rax
	cmp	qword ptr [rbp - 0x130], 0
	sete	r8b
	and	r8b, 1
	movzx	r9d, r8b
	movsxd	rax, r9d
	cmp	rax, 0
	je	.label_2019
	jmp	.label_1978
	.section	.text
	.align	16
	#Procedure 0x417620

	.globl sift_states_iter_mb
	.type sift_states_iter_mb, @function
sift_states_iter_mb:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 0x98]
	mov	qword ptr [rbp - 0x30], rcx
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x20]
	call	check_node_accept_bytes
	mov	dword ptr [rbp - 0x34], eax
	cmp	dword ptr [rbp - 0x34], 0
	jle	.label_2028
	mov	rax, qword ptr [rbp - 0x20]
	movsxd	rcx, dword ptr [rbp - 0x34]
	add	rax, rcx
	cmp	rax, qword ptr [rbp - 0x28]
	jg	.label_2028
	mov	rax, qword ptr [rbp - 0x20]
	movsxd	rcx, dword ptr [rbp - 0x34]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_2029
	mov	rax, qword ptr [rbp - 0x20]
	movsxd	rcx, dword ptr [rbp - 0x34]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, 8
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rdx + 0x18]
	mov	rsi, qword ptr [rdx + rcx*8]
	mov	rdi, rax
	call	re_node_set_contains
	cmp	rax, 0
	jne	.label_2028
.label_2029:
	mov	dword ptr [rbp - 0x34], 0
.label_2028:
	mov	eax, dword ptr [rbp - 0x34]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4176eb
	.globl sub_4176eb
	.type sub_4176eb, @function
sub_4176eb:

	nop	dword ptr [rax + rax]
.label_2039:
	movabs	rsi, OFFSET FLAT:calc_first
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rax + 0x68]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdx, rax
	call	postorder
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rdx, eax
	cmp	rdx, 0
	je	.label_2032
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2033
.label_2032:
	movabs	rsi, OFFSET FLAT:calc_next
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rax + 0x68]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdx, rax
	call	preorder
	movabs	rsi, OFFSET FLAT:link_nfa_nodes
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rdx + 0x68]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	dword ptr [rbp - 0x34], eax
	call	preorder
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rdx, eax
	cmp	rdx, 0
	je	.label_2036
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2033
.label_2031:
	mov	rdi, qword ptr [rbp - 0x18]
	call	calc_inveclosure
	mov	dword ptr [rbp - 0x1c], eax
.label_2035:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
.label_2033:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4177b5
	.globl sub_4177b5
	.type sub_4177b5, @function
sub_4177b5:

	nop	word ptr cs:[rax + rax]
.label_2048:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x30]
	shl	rax, 3
	mov	rdi, rax
	call	malloc
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rdi + 0xe0], rax
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0xe0], 0
	je	.label_2042
	mov	qword ptr [rbp - 0x28], 0
.label_2040:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x30]
	jae	.label_2046
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0xe0]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_2040
.label_2046:
	movabs	rsi, OFFSET FLAT:optimize_subexps
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rax + 0x68]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdx, rax
	call	preorder
	mov	qword ptr [rbp - 0x28], 0
	mov	dword ptr [rbp - 0x30], eax
.label_2045:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x30]
	jae	.label_2041
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0xe0]
	mov	rax, qword ptr [rcx + rax*8]
	cmp	rax, qword ptr [rbp - 0x28]
	je	.label_2043
	jmp	.label_2041
	.section	.text
	.align	16
	#Procedure 0x417892

	.globl analyze
	.type analyze, @function
analyze:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rdi + 8]
	shl	rdi, 3
	call	malloc
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rdi + 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	shl	rax, 3
	mov	rdi, rax
	call	malloc
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rdi + 0x20], rax
	mov	rax, qword ptr [rbp - 0x18]
	imul	rdi, qword ptr [rax + 8], 0x18
	call	malloc
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rdi + 0x28], rax
	mov	rax, qword ptr [rbp - 0x18]
	imul	rdi, qword ptr [rax + 8], 0x18
	call	malloc
	mov	cl, 1
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rdi + 0x30], rax
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0x18], 0
	mov	byte ptr [rbp - 0x29], cl
	je	.label_2047
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rcx + 0x20], 0
	mov	byte ptr [rbp - 0x29], al
	je	.label_2047
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rcx + 0x28], 0
	mov	byte ptr [rbp - 0x29], al
	je	.label_2047
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0x30], 0
	sete	cl
	mov	byte ptr [rbp - 0x29], cl
.label_2047:
	mov	al, byte ptr [rbp - 0x29]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_2048
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_2033
.label_2036:
	mov	rdi, qword ptr [rbp - 0x18]
	call	calc_eclosure
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rdi, eax
	cmp	rdi, 0
	je	.label_2037
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2033
.label_2037:
	mov	rax, qword ptr [rbp - 0x10]
	mov	cl, byte ptr [rax + 0x38]
	shr	cl, 4
	and	cl, 1
	movzx	edx, cl
	cmp	edx, 0
	jne	.label_2030
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x30], 0
	jbe	.label_2030
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax + 0xb0]
	and	cl, 1
	movzx	edx, cl
	cmp	edx, 0
	jne	.label_2034
.label_2030:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0x98], 0
	je	.label_2035
.label_2034:
	mov	rax, qword ptr [rbp - 0x18]
	imul	rdi, qword ptr [rax + 0x10], 0x18
	call	malloc
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rdi + 0x38], rax
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0x38], 0
	sete	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_2031
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_2033
.label_2043:
	jmp	.label_2038
.label_2038:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_2045
.label_2041:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x30]
	jne	.label_2044
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0xe0]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rax + 0xe0], 0
.label_2044:
	jmp	.label_2042
.label_2042:
	movabs	rsi, OFFSET FLAT:lower_subexps
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rax + 0x68]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdx, rax
	call	postorder
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rdx, eax
	cmp	rdx, 0
	je	.label_2039
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2033
.label_2055:
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x30]
	add	rcx, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x80], rcx
	mov	dword ptr [rbp - 0x90], eax
.label_2062:
	mov	eax, dword ptr [rbp - 0x90]
	cmp	eax, 0
	setne	cl
	mov	byte ptr [rbp - 0x89], cl
.label_2049:
	mov	al, byte ptr [rbp - 0x89]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_2051
	mov	qword ptr [rbp - 0x18], -2
	jmp	.label_2054
	.section	.text
	.align	16
	#Procedure 0x417b1b

	.globl re_search_2_stub
	.type re_search_2_stub, @function
re_search_2_stub:
	push	rbp
	mov	rbp, rsp
	push	r14
	push	rbx
	sub	rsp, 0xa0
	mov	al, byte ptr [rbp + 0x28]
	mov	r10, qword ptr [rbp + 0x20]
	mov	r11, qword ptr [rbp + 0x18]
	mov	rbx, qword ptr [rbp + 0x10]
	mov	r14b, 1
	mov	qword ptr [rbp - 0x20], rdi
	mov	qword ptr [rbp - 0x28], rsi
	mov	qword ptr [rbp - 0x30], rdx
	mov	qword ptr [rbp - 0x38], rcx
	mov	qword ptr [rbp - 0x40], r8
	mov	qword ptr [rbp - 0x48], r9
	mov	qword ptr [rbp - 0x50], rbx
	mov	qword ptr [rbp - 0x58], r11
	mov	qword ptr [rbp - 0x60], r10
	and	al, 1
	mov	byte ptr [rbp - 0x61], al
	mov	qword ptr [rbp - 0x88], 0
	cmp	qword ptr [rbp - 0x30], 0
	mov	byte ptr [rbp - 0x89], r14b
	jl	.label_2049
	mov	al, 1
	cmp	qword ptr [rbp - 0x40], 0
	mov	byte ptr [rbp - 0x89], al
	jl	.label_2049
	mov	al, 1
	cmp	qword ptr [rbp - 0x60], 0
	mov	byte ptr [rbp - 0x89], al
	jl	.label_2049
	mov	al, 1
	test	al, 1
	jne	.label_2058
	jmp	.label_2061
.label_2058:
	cmp	qword ptr [rbp - 0x40], 0
	jge	.label_2063
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rax, qword ptr [rbp - 0x40]
	cmp	rcx, rax
	jl	.label_2052
	jmp	.label_2050
.label_2061:
	cmp	qword ptr [rbp - 0x30], 0
	jge	.label_2056
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x30]
	add	rcx, qword ptr [rbp - 0x40]
	cmp	rax, rcx
	jle	.label_2052
	jmp	.label_2050
.label_2063:
	movabs	rax, 0x7fffffffffffffff
	sub	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x30]
	jl	.label_2052
	jmp	.label_2050
.label_2051:
	cmp	qword ptr [rbp - 0x40], 0
	jle	.label_2057
	cmp	qword ptr [rbp - 0x30], 0
	jle	.label_2060
	mov	rax, qword ptr [rbp - 0x80]
	shl	rax, 0
	mov	rdi, rax
	call	malloc
	mov	qword ptr [rbp - 0x88], rax
	cmp	qword ptr [rbp - 0x88], 0
	sete	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_2053
	mov	qword ptr [rbp - 0x18], -2
	jmp	.label_2054
.label_2053:
	mov	rdi, qword ptr [rbp - 0x88]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x30]
	call	memcpy
	mov	rdx, qword ptr [rbp - 0x88]
	add	rdx, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x98], rdi
	mov	rdi, rdx
	mov	rdx, qword ptr [rbp - 0x98]
	call	memcpy
	mov	rdx, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x70], rdx
	jmp	.label_2064
.label_2057:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x70], rax
.label_2059:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	r8, qword ptr [rbp - 0x50]
	mov	r9, qword ptr [rbp - 0x60]
	mov	rax, qword ptr [rbp - 0x58]
	mov	r10b, byte ptr [rbp - 0x61]
	and	r10b, 1
	mov	qword ptr [rsp], rax
	movzx	r11d, r10b
	mov	dword ptr [rsp + 8], r11d
	call	re_search_stub
	mov	qword ptr [rbp - 0x78], rax
	mov	rdi, qword ptr [rbp - 0x88]
	call	free
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x18], rax
.label_2054:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0xa0
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x417d2e
	.globl sub_417d2e
	.type sub_417d2e, @function
sub_417d2e:

	nop	word ptr cs:[rax + rax]
.label_2056:
	cmp	qword ptr [rbp - 0x40], 0
	jge	.label_2065
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x30]
	add	rcx, qword ptr [rbp - 0x40]
	cmp	rax, rcx
	jle	.label_2052
	jmp	.label_2050
.label_2060:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x70], rax
.label_2064:
	jmp	.label_2059
.label_2065:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x40]
	jl	.label_2052
.label_2050:
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x30]
	add	rcx, qword ptr [rbp - 0x40]
	cmp	rcx, rax
	jl	.label_2052
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x30]
	add	rcx, qword ptr [rbp - 0x40]
	cmp	rax, rcx
	jge	.label_2055
.label_2052:
	mov	eax, 1
	mov	rcx, qword ptr [rbp - 0x30]
	add	rcx, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x80], rcx
	mov	dword ptr [rbp - 0x90], eax
	jmp	.label_2062
.label_2074:
	jmp	.label_2069
.label_2069:
	jmp	.label_2067
.label_2075:
	jmp	.label_2071
.label_2071:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x28]
	mov	rax, qword ptr [rax + 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_2072
.label_2067:
	mov	dword ptr [rbp - 4], 0
.label_2066:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x417e0f
	.globl sub_417e0f
	.type sub_417e0f, @function
sub_417e0f:

	nop	dword ptr [rax]
.label_2070:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x38]
	call	re_node_set_insert
	and	al, 1
	mov	byte ptr [rbp - 0x39], al
	mov	al, byte ptr [rbp - 0x39]
	xor	al, 0xff
	and	al, 1
	movzx	ecx, al
	movsxd	rsi, ecx
	cmp	rsi, 0
	je	.label_2073
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_2066
	.section	.text
	.align	16
	#Procedure 0x417e48

	.globl check_arrival_expand_ecl_sub
	.type check_arrival_expand_ecl_sub, @function
check_arrival_expand_ecl_sub:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	dword ptr [rbp - 0x2c], r8d
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x38], rcx
.label_2072:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x38]
	call	re_node_set_contains
	cmp	rax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_2076
	jmp	.label_2067
.label_2076:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	and	edx, 0xff
	cmp	edx, dword ptr [rbp - 0x2c]
	jne	.label_2070
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x28]
	jne	.label_2070
	cmp	dword ptr [rbp - 0x2c], 9
	jne	.label_2069
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x38]
	call	re_node_set_insert
	and	al, 1
	mov	byte ptr [rbp - 0x39], al
	mov	al, byte ptr [rbp - 0x39]
	xor	al, 0xff
	and	al, 1
	movzx	ecx, al
	movsxd	rsi, ecx
	cmp	rsi, 0
	je	.label_2074
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_2066
.label_2073:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x28]
	cmp	qword ptr [rax + 8], 0
	jne	.label_2068
	jmp	.label_2067
.label_2068:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x28]
	cmp	qword ptr [rax + 8], 2
	jne	.label_2071
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x28]
	mov	rax, qword ptr [rax + 0x10]
	mov	rdx, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8d, dword ptr [rbp - 0x2c]
	call	check_arrival_expand_ecl_sub
	mov	dword ptr [rbp - 0x40], eax
	cmp	dword ptr [rbp - 0x40], 0
	setne	r9b
	and	r9b, 1
	movzx	eax, r9b
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_2075
	mov	eax, dword ptr [rbp - 0x40]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2066
	.section	.text
	.align	16
	#Procedure 0x417fa0
	.globl xzalloc
	.type xzalloc, @function
xzalloc:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	xmalloc
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	qword ptr [rbp - 0x10], rax
	call	memset
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x417fd1
	.globl sub_417fd1
	.type sub_417fd1, @function
sub_417fd1:

	nop	word ptr cs:[rax + rax]
.label_2142:
	mov	dword ptr [rbp - 0x3c], 0
.label_2090:
	cmp	dword ptr [rbp - 0x3c], 0x100
	jge	.label_2086
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	qword ptr [rbp - 0x118], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x118]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x1000
	cmp	edx, 0
	je	.label_2078
	mov	rdi, qword ptr [rbp - 0x18]
	movsxd	rsi, dword ptr [rbp - 0x3c]
	call	bitset_set
.label_2078:
	jmp	.label_2088
.label_2088:
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_2090
.label_2191:
	jmp	.label_2112
.label_2132:
	mov	rdi, qword ptr [rbp - 0x48]
	mov	eax, OFFSET FLAT:label_2116
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_2097
	jmp	.label_2127
.label_2127:
	cmp	qword ptr [rbp - 0x10], 0
	setne	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_2130
	mov	dword ptr [rbp - 0x3c], 0
.label_2192:
	cmp	dword ptr [rbp - 0x3c], 0x100
	jge	.label_2191
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	qword ptr [rbp - 0xc0], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0xc0]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x4000
	cmp	edx, 0
	je	.label_2149
	mov	rdi, qword ptr [rbp - 0x18]
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	rcx, qword ptr [rbp - 0x10]
	movzx	edx, byte ptr [rcx + rax]
	mov	esi, edx
	call	bitset_set
.label_2149:
	jmp	.label_2165
.label_2165:
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_2192
.label_2217:
	mov	rdi, qword ptr [rbp - 0x48]
	mov	eax, OFFSET FLAT:label_2171
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_2178
	jmp	.label_2181
.label_2181:
	cmp	qword ptr [rbp - 0x10], 0
	setne	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_2182
	mov	dword ptr [rbp - 0x3c], 0
.label_2222:
	cmp	dword ptr [rbp - 0x3c], 0x100
	jge	.label_2194
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	qword ptr [rbp - 0x80], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x80]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x200
	cmp	edx, 0
	je	.label_2200
	mov	rdi, qword ptr [rbp - 0x18]
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	rcx, qword ptr [rbp - 0x10]
	movzx	edx, byte ptr [rcx + rax]
	mov	esi, edx
	call	bitset_set
.label_2200:
	jmp	.label_2219
.label_2219:
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_2222
	.section	.text
	.align	16
	#Procedure 0x418186

	.globl build_charclass
	.type build_charclass, @function
build_charclass:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x120
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	qword ptr [rbp - 0x38], r9
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x48], rcx
	mov	rcx, qword ptr [rbp - 0x38]
	and	rcx, 0x400000
	cmp	rcx, 0
	je	.label_2225
	mov	rdi, qword ptr [rbp - 0x48]
	mov	eax, OFFSET FLAT:label_2207
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	je	.label_2249
	mov	rdi, qword ptr [rbp - 0x48]
	mov	eax, OFFSET FLAT:label_2171
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_2225
.label_2249:
	movabs	rax, OFFSET FLAT:label_2197
	mov	qword ptr [rbp - 0x48], rax
.label_2225:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rcx + 0x48]
	sete	dl
	and	dl, 1
	movzx	esi, dl
	movsxd	rax, esi
	cmp	rax, 0
	je	.label_2098
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x48]
	shl	rax, 1
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x18]
	mov	rcx, qword ptr [rbp - 0x50]
	shl	rcx, 3
	mov	rdi, rax
	mov	rsi, rcx
	call	realloc
	mov	qword ptr [rbp - 0x58], rax
	cmp	qword ptr [rbp - 0x58], 0
	sete	dl
	and	dl, 1
	movzx	r8d, dl
	movsxd	rax, r8d
	cmp	rax, 0
	je	.label_2124
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_2136
.label_2147:
	jmp	.label_2139
.label_2139:
	jmp	.label_2141
.label_2141:
	jmp	.label_2081
.label_2223:
	mov	dword ptr [rbp - 0x3c], 0
.label_2168:
	cmp	dword ptr [rbp - 0x3c], 0x100
	jge	.label_2147
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	qword ptr [rbp - 0x78], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x78]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 2
	cmp	edx, 0
	je	.label_2115
	mov	rdi, qword ptr [rbp - 0x18]
	movsxd	rsi, dword ptr [rbp - 0x3c]
	call	bitset_set
.label_2115:
	jmp	.label_2166
.label_2166:
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_2168
.label_2210:
	mov	dword ptr [rbp - 0x3c], 0
.label_2199:
	cmp	dword ptr [rbp - 0x3c], 0x100
	jge	.label_2176
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	qword ptr [rbp - 0xa8], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0xa8]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x400
	cmp	edx, 0
	je	.label_2185
	mov	rdi, qword ptr [rbp - 0x18]
	movsxd	rsi, dword ptr [rbp - 0x3c]
	call	bitset_set
.label_2185:
	jmp	.label_2196
.label_2196:
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_2199
.label_2176:
	jmp	.label_2205
.label_2205:
	jmp	.label_2208
.label_2208:
	jmp	.label_2077
.label_2245:
	mov	rdi, qword ptr [rbp - 0x48]
	mov	eax, OFFSET FLAT:label_2212
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_2217
	jmp	.label_2221
.label_2221:
	cmp	qword ptr [rbp - 0x10], 0
	setne	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_2223
	mov	dword ptr [rbp - 0x3c], 0
.label_2255:
	cmp	dword ptr [rbp - 0x3c], 0x100
	jge	.label_2233
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	qword ptr [rbp - 0x70], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x70]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 2
	cmp	edx, 0
	je	.label_2239
	mov	rdi, qword ptr [rbp - 0x18]
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	rcx, qword ptr [rbp - 0x10]
	movzx	edx, byte ptr [rcx + rax]
	mov	esi, edx
	call	bitset_set
.label_2239:
	jmp	.label_2253
.label_2253:
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_2255
.label_2170:
	jmp	.label_2205
.label_2182:
	mov	dword ptr [rbp - 0x3c], 0
.label_2122:
	cmp	dword ptr [rbp - 0x3c], 0x100
	jge	.label_2096
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	qword ptr [rbp - 0x88], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x88]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x200
	cmp	edx, 0
	je	.label_2106
	mov	rdi, qword ptr [rbp - 0x18]
	movsxd	rsi, dword ptr [rbp - 0x3c]
	call	bitset_set
.label_2106:
	jmp	.label_2120
.label_2120:
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_2122
.label_2183:
	mov	rdi, qword ptr [rbp - 0x48]
	mov	eax, OFFSET FLAT:label_2126
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_2133
	jmp	.label_2135
.label_2135:
	cmp	qword ptr [rbp - 0x10], 0
	setne	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_2142
	mov	dword ptr [rbp - 0x3c], 0
.label_2175:
	cmp	dword ptr [rbp - 0x3c], 0x100
	jge	.label_2134
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	qword ptr [rbp - 0x110], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x110]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x1000
	cmp	edx, 0
	je	.label_2158
	mov	rdi, qword ptr [rbp - 0x18]
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	rcx, qword ptr [rbp - 0x10]
	movzx	edx, byte ptr [rcx + rax]
	mov	esi, edx
	call	bitset_set
.label_2158:
	jmp	.label_2228
.label_2228:
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_2175
.label_2178:
	mov	rdi, qword ptr [rbp - 0x48]
	mov	eax, OFFSET FLAT:label_2180
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_2184
	jmp	.label_2143
.label_2143:
	cmp	qword ptr [rbp - 0x10], 0
	setne	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_2190
	mov	dword ptr [rbp - 0x3c], 0
.label_2224:
	cmp	dword ptr [rbp - 0x3c], 0x100
	jge	.label_2198
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	qword ptr [rbp - 0x90], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x90]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x2000
	cmp	edx, 0
	je	.label_2107
	mov	rdi, qword ptr [rbp - 0x18]
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	rcx, qword ptr [rbp - 0x10]
	movzx	edx, byte ptr [rcx + rax]
	mov	esi, edx
	call	bitset_set
.label_2107:
	jmp	.label_2229
.label_2229:
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_2224
.label_2202:
	jmp	.label_2100
.label_2100:
	jmp	.label_2232
.label_2232:
	jmp	.label_2085
.label_2244:
	mov	rdi, qword ptr [rbp - 0x48]
	mov	eax, OFFSET FLAT:label_2238
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_2241
	jmp	.label_2243
.label_2243:
	cmp	qword ptr [rbp - 0x10], 0
	setne	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_2246
	mov	dword ptr [rbp - 0x3c], 0
.label_2236:
	cmp	dword ptr [rbp - 0x3c], 0x100
	jge	.label_2257
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	qword ptr [rbp - 0xf0], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0xf0]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x8000
	cmp	edx, 0
	je	.label_2099
	mov	rdi, qword ptr [rbp - 0x18]
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	rcx, qword ptr [rbp - 0x10]
	movzx	edx, byte ptr [rcx + rax]
	mov	esi, edx
	call	bitset_set
.label_2099:
	jmp	.label_2113
.label_2113:
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_2236
.label_2124:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x18], rax
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
.label_2098:
	mov	rdi, qword ptr [rbp - 0x48]
	call	wctype
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rdi + 0x48]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rdi + 0x48], rdx
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rdx + 0x18]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rdi, qword ptr [rbp - 0x48]
	mov	esi, OFFSET FLAT:label_2159
	call	strcmp
	cmp	eax, 0
	jne	.label_2245
	jmp	.label_2151
.label_2151:
	cmp	qword ptr [rbp - 0x10], 0
	setne	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_2154
	mov	dword ptr [rbp - 0x3c], 0
.label_2156:
	cmp	dword ptr [rbp - 0x3c], 0x100
	jge	.label_2164
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	qword ptr [rbp - 0x60], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x60]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 8
	cmp	edx, 0
	je	.label_2172
	mov	rdi, qword ptr [rbp - 0x18]
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	rcx, qword ptr [rbp - 0x10]
	movzx	edx, byte ptr [rcx + rax]
	mov	esi, edx
	call	bitset_set
.label_2172:
	jmp	.label_2188
.label_2188:
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_2156
.label_2233:
	jmp	.label_2139
.label_2086:
	jmp	.label_2089
.label_2089:
	jmp	.label_2091
.label_2091:
	jmp	.label_2093
.label_2189:
	mov	dword ptr [rbp - 0x3c], 0
.label_2213:
	cmp	dword ptr [rbp - 0x3c], 0x100
	jge	.label_2202
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	qword ptr [rbp - 0x108], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x108]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 4
	cmp	edx, 0
	je	.label_2215
	mov	rdi, qword ptr [rbp - 0x18]
	movsxd	rsi, dword ptr [rbp - 0x3c]
	call	bitset_set
.label_2215:
	jmp	.label_2226
.label_2226:
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_2213
.label_2104:
	jmp	.label_2153
.label_2153:
	jmp	.label_2234
.label_2234:
	jmp	.label_2087
.label_2137:
	jmp	.label_2112
.label_2112:
	jmp	.label_2108
.label_2108:
	jmp	.label_2092
.label_2214:
	mov	rdi, qword ptr [rbp - 0x48]
	mov	eax, OFFSET FLAT:label_2240
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_2244
	jmp	.label_2248
.label_2248:
	cmp	qword ptr [rbp - 0x10], 0
	setne	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_2250
	mov	dword ptr [rbp - 0x3c], 0
.label_2121:
	cmp	dword ptr [rbp - 0x3c], 0x100
	jge	.label_2252
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	qword ptr [rbp - 0xe0], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0xe0]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 1
	cmp	edx, 0
	je	.label_2102
	mov	rdi, qword ptr [rbp - 0x18]
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	rcx, qword ptr [rbp - 0x10]
	movzx	edx, byte ptr [rcx + rax]
	mov	esi, edx
	call	bitset_set
.label_2102:
	jmp	.label_2119
.label_2119:
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_2121
.label_2204:
	mov	rdi, qword ptr [rbp - 0x48]
	mov	eax, OFFSET FLAT:label_2125
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_2132
	jmp	.label_2261
.label_2261:
	cmp	qword ptr [rbp - 0x10], 0
	setne	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_2167
	mov	dword ptr [rbp - 0x3c], 0
.label_2174:
	cmp	dword ptr [rbp - 0x3c], 0x100
	jge	.label_2146
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	qword ptr [rbp - 0xb0], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0xb0]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x800
	cmp	edx, 0
	je	.label_2157
	mov	rdi, qword ptr [rbp - 0x18]
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	rcx, qword ptr [rbp - 0x10]
	movzx	edx, byte ptr [rcx + rax]
	mov	esi, edx
	call	bitset_set
.label_2157:
	jmp	.label_2173
.label_2173:
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_2174
.label_2241:
	mov	rdi, qword ptr [rbp - 0x48]
	mov	eax, OFFSET FLAT:label_2259
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_2183
	jmp	.label_2187
.label_2187:
	cmp	qword ptr [rbp - 0x10], 0
	setne	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_2189
	mov	dword ptr [rbp - 0x3c], 0
.label_2206:
	cmp	dword ptr [rbp - 0x3c], 0x100
	jge	.label_2220
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	qword ptr [rbp - 0x100], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x100]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 4
	cmp	edx, 0
	je	.label_2211
	mov	rdi, qword ptr [rbp - 0x18]
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	rcx, qword ptr [rbp - 0x10]
	movzx	edx, byte ptr [rcx + rax]
	mov	esi, edx
	call	bitset_set
.label_2211:
	jmp	.label_2227
.label_2227:
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_2206
.label_2190:
	mov	dword ptr [rbp - 0x3c], 0
.label_2258:
	cmp	dword ptr [rbp - 0x3c], 0x100
	jge	.label_2235
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	qword ptr [rbp - 0x98], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x98]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x2000
	cmp	edx, 0
	je	.label_2242
	mov	rdi, qword ptr [rbp - 0x18]
	movsxd	rsi, dword ptr [rbp - 0x3c]
	call	bitset_set
.label_2242:
	jmp	.label_2256
.label_2256:
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_2258
.label_2101:
	jmp	.label_2095
.label_2095:
	jmp	.label_2105
.label_2105:
	jmp	.label_2082
.label_2220:
	jmp	.label_2100
.label_2246:
	mov	dword ptr [rbp - 0x3c], 0
.label_2131:
	cmp	dword ptr [rbp - 0x3c], 0x100
	jge	.label_2104
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	qword ptr [rbp - 0xf8], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0xf8]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x8000
	cmp	edx, 0
	je	.label_2111
	mov	rdi, qword ptr [rbp - 0x18]
	movsxd	rsi, dword ptr [rbp - 0x3c]
	call	bitset_set
.label_2111:
	jmp	.label_2129
.label_2129:
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_2131
.label_2130:
	mov	dword ptr [rbp - 0x3c], 0
.label_2162:
	cmp	dword ptr [rbp - 0x3c], 0x100
	jge	.label_2137
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	qword ptr [rbp - 0xc8], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0xc8]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x4000
	cmp	edx, 0
	je	.label_2145
	mov	rdi, qword ptr [rbp - 0x18]
	movsxd	rsi, dword ptr [rbp - 0x3c]
	call	bitset_set
.label_2145:
	jmp	.label_2161
.label_2161:
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_2162
.label_2230:
	jmp	.label_2144
.label_2167:
	mov	dword ptr [rbp - 0x3c], 0
.label_2186:
	cmp	dword ptr [rbp - 0x3c], 0x100
	jge	.label_2169
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	qword ptr [rbp - 0xb8], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0xb8]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x800
	cmp	edx, 0
	je	.label_2179
	mov	rdi, qword ptr [rbp - 0x18]
	movsxd	rsi, dword ptr [rbp - 0x3c]
	call	bitset_set
.label_2179:
	jmp	.label_2195
.label_2195:
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_2186
.label_2184:
	mov	rdi, qword ptr [rbp - 0x48]
	mov	eax, OFFSET FLAT:label_2197
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_2204
	jmp	.label_2209
.label_2209:
	cmp	qword ptr [rbp - 0x10], 0
	setne	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_2210
	mov	dword ptr [rbp - 0x3c], 0
.label_2247:
	cmp	dword ptr [rbp - 0x3c], 0x100
	jge	.label_2170
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	qword ptr [rbp - 0xa0], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0xa0]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x400
	cmp	edx, 0
	je	.label_2231
	mov	rdi, qword ptr [rbp - 0x18]
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	rcx, qword ptr [rbp - 0x10]
	movzx	edx, byte ptr [rcx + rax]
	mov	esi, edx
	call	bitset_set
.label_2231:
	jmp	.label_2163
.label_2163:
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_2247
.label_2164:
	jmp	.label_2201
.label_2093:
	jmp	.label_2085
.label_2085:
	jmp	.label_2087
.label_2087:
	jmp	.label_2082
.label_2082:
	jmp	.label_2084
.label_2084:
	jmp	.label_2092
.label_2092:
	jmp	.label_2094
.label_2094:
	jmp	.label_2077
.label_2077:
	jmp	.label_2079
.label_2079:
	jmp	.label_2080
.label_2080:
	jmp	.label_2081
.label_2081:
	jmp	.label_2083
.label_2083:
	mov	dword ptr [rbp - 4], 0
.label_2136:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x120
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x418c2e
	.globl sub_418c2e
	.type sub_418c2e, @function
sub_418c2e:

	nop	dword ptr [rax]
.label_2235:
	jmp	.label_2109
.label_2109:
	jmp	.label_2110
.label_2110:
	jmp	.label_2079
.label_2154:
	mov	dword ptr [rbp - 0x3c], 0
.label_2140:
	cmp	dword ptr [rbp - 0x3c], 0x100
	jge	.label_2117
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	qword ptr [rbp - 0x68], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x68]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 8
	cmp	edx, 0
	je	.label_2128
	mov	rdi, qword ptr [rbp - 0x18]
	movsxd	rsi, dword ptr [rbp - 0x3c]
	call	bitset_set
.label_2128:
	jmp	.label_2138
.label_2138:
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_2140
.label_2260:
	jmp	.label_2144
.label_2144:
	jmp	.label_2148
.label_2148:
	jmp	.label_2084
.label_2096:
	jmp	.label_2150
.label_2150:
	jmp	.label_2152
.label_2152:
	jmp	.label_2080
.label_2198:
	jmp	.label_2109
.label_2169:
	jmp	.label_2123
.label_2123:
	jmp	.label_2160
.label_2160:
	jmp	.label_2094
.label_2134:
	jmp	.label_2089
.label_2257:
	jmp	.label_2153
.label_2250:
	mov	dword ptr [rbp - 0x3c], 0
.label_2193:
	cmp	dword ptr [rbp - 0x3c], 0x100
	jge	.label_2101
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	qword ptr [rbp - 0xe8], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0xe8]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 1
	cmp	edx, 0
	je	.label_2177
	mov	rdi, qword ptr [rbp - 0x18]
	movsxd	rsi, dword ptr [rbp - 0x3c]
	call	bitset_set
.label_2177:
	jmp	.label_2155
.label_2155:
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_2193
.label_2133:
	mov	dword ptr [rbp - 4], 4
	jmp	.label_2136
.label_2194:
	jmp	.label_2150
.label_2117:
	jmp	.label_2201
.label_2201:
	jmp	.label_2203
.label_2203:
	jmp	.label_2083
.label_2097:
	mov	rdi, qword ptr [rbp - 0x48]
	mov	eax, OFFSET FLAT:label_2207
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_2214
	jmp	.label_2216
.label_2216:
	cmp	qword ptr [rbp - 0x10], 0
	setne	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_2218
	mov	dword ptr [rbp - 0x3c], 0
.label_2254:
	cmp	dword ptr [rbp - 0x3c], 0x100
	jge	.label_2230
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	qword ptr [rbp - 0xd0], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0xd0]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x100
	cmp	edx, 0
	je	.label_2237
	mov	rdi, qword ptr [rbp - 0x18]
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	rcx, qword ptr [rbp - 0x10]
	movzx	edx, byte ptr [rcx + rax]
	mov	esi, edx
	call	bitset_set
.label_2237:
	jmp	.label_2251
.label_2251:
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_2254
.label_2218:
	mov	dword ptr [rbp - 0x3c], 0
.label_2118:
	cmp	dword ptr [rbp - 0x3c], 0x100
	jge	.label_2260
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	qword ptr [rbp - 0xd8], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0xd8]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x100
	cmp	edx, 0
	je	.label_2103
	mov	rdi, qword ptr [rbp - 0x18]
	movsxd	rsi, dword ptr [rbp - 0x3c]
	call	bitset_set
.label_2103:
	jmp	.label_2114
.label_2114:
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_2118
.label_2146:
	jmp	.label_2123
.label_2252:
	jmp	.label_2095
	.section	.text
	.align	16
	#Procedure 0x418e60
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_2262
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_2262:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 4]
	mov	dword ptr [rbp - 0x10], ecx
	mov	ecx, dword ptr [rbp - 0xc]
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 4], ecx
	mov	eax, dword ptr [rbp - 0x10]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x418e9d
	.globl sub_418e9d
	.type sub_418e9d, @function
sub_418e9d:

	nop	dword ptr [rax]
.label_2274:
	jmp	.label_2263
.label_2263:
	jmp	.label_2265
.label_2265:
	jmp	.label_2268
.label_2268:
	cmp	qword ptr [rbp - 0x80], 0
	jne	.label_2270
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x30]
	shl	rcx, 4
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rcx]
	mov	rsi, rax
	call	check_node_accept
	test	al, 1
	jne	.label_2270
	jmp	.label_2267
.label_2270:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0xa8], rax
	cmp	qword ptr [rbp - 0x80], 0
	jne	.label_2269
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	add	rax, 1
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_2273
.label_2281:
	jmp	.label_2289
.label_2289:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_2279
	.section	.text
	.align	16
	#Procedure 0x418f3b

	.globl proceed_next_node
	.type proceed_next_node, @function
proceed_next_node:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xb0
	mov	rax, qword ptr [rbp + 0x10]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	qword ptr [rbp - 0x38], r9
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x98]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x48]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	r10d, dword ptr [rax + 8]
	and	r10d, 0xff
	and	r10d, 8
	cmp	r10d, 0
	je	.label_2292
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0xb8]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, 8
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x48]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x28]
	mov	qword ptr [rbp - 0x68], rax
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x30]
	call	re_node_set_insert
	and	al, 1
	mov	byte ptr [rbp - 0x51], al
	mov	al, byte ptr [rbp - 0x51]
	xor	al, 0xff
	and	al, 1
	movzx	edx, al
	movsxd	rcx, edx
	cmp	rcx, 0
	je	.label_2290
	mov	qword ptr [rbp - 8], -2
	jmp	.label_2271
.label_2290:
	mov	qword ptr [rbp - 0x70], -1
	mov	qword ptr [rbp - 0x50], 0
.label_2279:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x68]
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_2275
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x78], rax
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x78]
	call	re_node_set_contains
	cmp	rax, 0
	jne	.label_2288
	jmp	.label_2289
.label_2276:
	jmp	.label_2284
.label_2284:
	jmp	.label_2278
.label_2278:
	jmp	.label_2291
.label_2291:
	cmp	qword ptr [rbp - 0x80], 0
	jne	.label_2263
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x30]
	call	re_node_set_insert
	and	al, 1
	mov	byte ptr [rbp - 0x51], al
	mov	al, byte ptr [rbp - 0x51]
	xor	al, 0xff
	and	al, 1
	movzx	ecx, al
	movsxd	rsi, ecx
	cmp	rsi, 0
	je	.label_2294
	mov	qword ptr [rbp - 8], -2
	jmp	.label_2271
.label_2288:
	cmp	qword ptr [rbp - 0x70], -1
	jne	.label_2293
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_2281
.label_2294:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x48]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x28]
	mov	rax, qword ptr [rax + 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0xa0], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0xb8]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, 8
	mov	rsi, qword ptr [rbp - 0xa0]
	mov	rdi, rax
	call	re_node_set_contains
	cmp	rax, 0
	je	.label_2274
	mov	rax, qword ptr [rbp - 0xa0]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2271
.label_2264:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rax + 8], 0
	mov	rax, qword ptr [rbp - 0xa8]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2271
.label_2287:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_2284
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x98], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	sub	rax, qword ptr [rcx]
	cmp	rax, qword ptr [rbp - 0x80]
	jl	.label_2280
	mov	rax, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rbp - 0x90]
	shl	rcx, 4
	add	rcx, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rbp - 0x28]
	add	rcx, qword ptr [rdx]
	mov	rdx, qword ptr [rbp - 0x80]
	mov	rdi, rax
	mov	rsi, rcx
	call	memcmp
	cmp	eax, 0
	je	.label_2276
.label_2280:
	mov	qword ptr [rbp - 8], -1
	jmp	.label_2271
.label_2292:
	mov	qword ptr [rbp - 0x80], 0
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x48]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	and	edx, 0xff
	mov	dword ptr [rbp - 0x84], edx
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x48]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	shr	edx, 0x14
	and	edx, 1
	cmp	edx, 0
	je	.label_2283
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rax]
	call	check_node_accept_bytes
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x80], rcx
	jmp	.label_2268
.label_2267:
	jmp	.label_2266
.label_2266:
	mov	qword ptr [rbp - 8], -1
.label_2271:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0xb0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x419240
	.globl sub_419240
	.type sub_419240, @function
sub_419240:

	nop	word ptr [rax + rax]
.label_2285:
	jmp	.label_2286
.label_2286:
	jmp	.label_2275
.label_2283:
	cmp	dword ptr [rbp - 0x84], 4
	jne	.label_2265
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x48]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	rax, qword ptr [rax]
	add	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	mov	rax, qword ptr [rbp - 0x90]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x90]
	shl	rcx, 4
	add	rcx, qword ptr [rbp - 0x20]
	sub	rax, qword ptr [rcx]
	mov	qword ptr [rbp - 0x80], rax
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_2291
	mov	rax, qword ptr [rbp - 0x90]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax], -1
	je	.label_2282
	mov	rax, qword ptr [rbp - 0x90]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 8], -1
	jne	.label_2287
.label_2282:
	mov	qword ptr [rbp - 8], -1
	jmp	.label_2271
.label_2269:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	add	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0xb0], rax
.label_2273:
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_2264
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0xa8]
	jg	.label_2272
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0xb8]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_2272
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0xb8]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, 8
	mov	rsi, qword ptr [rbp - 0xa8]
	mov	rdi, rax
	call	re_node_set_contains
	cmp	rax, 0
	jne	.label_2264
.label_2272:
	mov	qword ptr [rbp - 8], -1
	jmp	.label_2271
.label_2275:
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2271
.label_2293:
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x70]
	call	re_node_set_contains
	cmp	rax, 0
	je	.label_2277
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2271
.label_2277:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_2285
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	r8, qword ptr [rbp - 0x20]
	mov	r9, qword ptr [rbp - 0x38]
	call	push_fail_stack
	cmp	eax, 0
	je	.label_2285
	mov	qword ptr [rbp - 8], -2
	jmp	.label_2271
	.section	.text
	.align	16
	#Procedure 0x419400

	.globl push_fail_stack
	.type push_fail_stack, @function
push_fail_stack:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	qword ptr [rbp - 0x38], r9
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rcx]
	mov	rsi, rdx
	add	rsi, 1
	mov	qword ptr [rcx], rsi
	mov	qword ptr [rbp - 0x48], rdx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	mov	rdx, qword ptr [rbp - 0x10]
	cmp	rcx, qword ptr [rdx + 8]
	jne	.label_2295
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 8]
	shl	rcx, 1
	imul	rsi, rcx, 0x30
	mov	rdi, rax
	call	realloc
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x50], 0
	jne	.label_2298
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_2297
.label_2296:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, rax, 0x30
	add	rax, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x28]
	shl	rdx, 4
	mov	rdi, rax
	mov	rsi, rcx
	call	memcpy
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, rax, 0x30
	add	rax, qword ptr [rcx + 0x10]
	add	rax, 0x18
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdi, rax
	call	re_node_set_init_copy
	mov	dword ptr [rbp - 0x3c], eax
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 4], eax
.label_2297:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4194e2
	.globl sub_4194e2
	.type sub_4194e2, @function
sub_4194e2:

	nop	dword ptr [rax + rax]
.label_2298:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 8]
	shl	rcx, 1
	mov	qword ptr [rax + 8], rcx
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x10], rax
.label_2295:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x10]
	imul	rcx, rcx, 0x30
	add	rcx, qword ptr [rdx + 0x10]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x10]
	imul	rcx, rcx, 0x30
	add	rcx, qword ptr [rdx + 0x10]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x28]
	shl	rax, 4
	mov	rdi, rax
	call	malloc
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x10]
	imul	rcx, rcx, 0x30
	add	rcx, qword ptr [rdx + 0x10]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, rax, 0x30
	add	rax, qword ptr [rcx + 0x10]
	cmp	qword ptr [rax + 0x10], 0
	jne	.label_2296
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_2297
	.section	.text
	.align	16
	#Procedure 0x419580

	.globl create_initial_state
	.type create_initial_state, @function
create_initial_state:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	lea	rax, [rbp - 0x40]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi + 0x68]
	mov	rdi, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rdi + 0x38]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x90], rdi
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x30]
	imul	rdi, qword ptr [rbp - 0x18], 0x18
	add	rcx, rdi
	mov	rdi, rax
	mov	rsi, rcx
	call	re_node_set_init_copy
	mov	dword ptr [rbp - 0x24], eax
	cmp	dword ptr [rbp - 0x24], 0
	setne	dl
	and	dl, 1
	movzx	eax, dl
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_2311
	mov	eax, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2299
.label_2309:
	jmp	.label_2315
.label_2315:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_2317
.label_2310:
	cmp	dword ptr [rbp - 0x4c], 4
	jne	.label_2301
	lea	rdi, [rbp - 0x40]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x28]
	mov	rax, qword ptr [rax + 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x68], rax
	mov	rsi, qword ptr [rbp - 0x68]
	call	re_node_set_contains
	cmp	rax, 0
	jne	.label_2308
	lea	rdi, [rbp - 0x40]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x30]
	imul	rcx, qword ptr [rbp - 0x68], 0x18
	add	rax, rcx
	mov	rsi, rax
	call	re_node_set_merge
	mov	dword ptr [rbp - 0x6c], eax
	cmp	dword ptr [rbp - 0x6c], 0
	je	.label_2313
	mov	eax, dword ptr [rbp - 0x6c]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2299
.label_2314:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x48]
	mov	cl, byte ptr [rax + 0x68]
	shr	cl, 7
	movzx	edx, cl
	cmp	edx, 0
	je	.label_2318
	lea	rdi, [rbp - 0x24]
	lea	rdx, [rbp - 0x40]
	mov	ecx, 1
	mov	rsi, qword ptr [rbp - 0x10]
	call	re_acquire_state_context
	lea	rdi, [rbp - 0x24]
	lea	rdx, [rbp - 0x40]
	mov	ecx, 2
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + 0x50], rax
	mov	rsi, qword ptr [rbp - 0x10]
	call	re_acquire_state_context
	lea	rdi, [rbp - 0x24]
	lea	rdx, [rbp - 0x40]
	mov	ecx, 6
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + 0x58], rax
	mov	rsi, qword ptr [rbp - 0x10]
	call	re_acquire_state_context
	mov	r8b, 1
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x60], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x50], 0
	mov	byte ptr [rbp - 0x6d], r8b
	je	.label_2300
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	qword ptr [rcx + 0x58], 0
	mov	byte ptr [rbp - 0x6d], al
	je	.label_2300
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x60], 0
	sete	cl
	mov	byte ptr [rbp - 0x6d], cl
.label_2300:
	mov	al, byte ptr [rbp - 0x6d]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_2306
	mov	eax, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2299
.label_2302:
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x38]
	jne	.label_2310
	jmp	.label_2304
.label_2303:
	jmp	.label_2312
.label_2312:
	lea	rdi, [rbp - 0x24]
	lea	rdx, [rbp - 0x40]
	xor	ecx, ecx
	mov	rsi, qword ptr [rbp - 0x10]
	call	re_acquire_state_context
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x48], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x48], 0
	sete	r8b
	and	r8b, 1
	movzx	ecx, r8b
	movsxd	rax, ecx
	cmp	rax, 0
	je	.label_2314
	mov	eax, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2299
.label_2305:
	mov	qword ptr [rbp - 0x58], 0
.label_2317:
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x38]
	jge	.label_2302
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rdx + rcx*8]
	shl	rcx, 4
	add	rax, rcx
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x60]
	mov	esi, dword ptr [rax + 8]
	and	esi, 0xff
	cmp	esi, 9
	jne	.label_2309
	mov	rax, qword ptr [rbp - 0x60]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x10]
	shl	rcx, 4
	add	rcx, qword ptr [rdx]
	cmp	rax, qword ptr [rcx]
	jne	.label_2309
	jmp	.label_2302
.label_2313:
	mov	qword ptr [rbp - 0x20], 0
.label_2308:
	jmp	.label_2301
.label_2301:
	jmp	.label_2304
.label_2304:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_2316
.label_2306:
	jmp	.label_2307
.label_2318:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x60], rax
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x58], rax
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x50], rax
.label_2307:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rdi, rax
	call	free
	mov	dword ptr [rbp - 4], 0
.label_2299:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41987b
	.globl sub_41987b
	.type sub_41987b, @function
sub_41987b:

	nop	dword ptr [rax]
.label_2311:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x98], 0
	jle	.label_2312
	mov	qword ptr [rbp - 0x20], 0
.label_2316:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x38]
	jge	.label_2303
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	and	edx, 0xff
	mov	dword ptr [rbp - 0x4c], edx
	cmp	dword ptr [rbp - 0x4c], 4
	je	.label_2305
	jmp	.label_2304
.label_2319:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	add	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 8], rax
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4198f9
	.globl sub_4198f9
	.type sub_4198f9, @function
sub_4198f9:

	nop	word ptr cs:[rax + rax]
.label_2322:
	lea	rsi, [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 8]
	call	read_file
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi], rax
.label_2324:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax], 0
	jne	.label_2319
	call	__errno_location
	mov	esi, dword ptr [rax]
	test	byte ptr [rbp - 0x19], 1
	mov	dword ptr [rbp - 0x20], esi
	je	.label_2321
	movabs	rax, OFFSET FLAT:label_1861
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_2320
.label_2321:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rax
.label_2320:
	mov	rax, qword ptr [rbp - 0x28]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rax
	call	quotearg_n_style_colon
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:label_605
	mov	esi, dword ptr [rbp - 0x20]
	mov	rcx, rax
	mov	al, 0
	call	error
	.section	.text
	.align	16
	#Procedure 0x419986

	.globl swallow_file_in_memory
	.type swallow_file_in_memory, @function
swallow_file_in_memory:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	al, 1
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	cmp	qword ptr [rbp - 8], 0
	mov	byte ptr [rbp - 0x1a], al
	je	.label_2323
	mov	al, 1
	mov	rcx, qword ptr [rbp - 8]
	cmp	byte ptr [rcx], 0
	mov	byte ptr [rbp - 0x1a], al
	je	.label_2323
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, OFFSET FLAT:label_1861
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	sete	cl
	mov	byte ptr [rbp - 0x1a], cl
.label_2323:
	mov	al, byte ptr [rbp - 0x1a]
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	test	byte ptr [rbp - 0x19], 1
	je	.label_2322
	lea	rsi, [rbp - 0x18]
	mov	rdi,  qword ptr [word ptr [stdin]]
	call	fread_file
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi], rax
	jmp	.label_2324
	.section	.text
	.align	16
	#Procedure 0x419a00

	.globl re_node_set_alloc
	.type re_node_set_alloc, @function
re_node_set_alloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + 8], 0
	mov	rsi, qword ptr [rbp - 0x18]
	shl	rsi, 3
	mov	rdi, rsi
	call	malloc
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x10], 0
	sete	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_2326
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_2325
.label_2326:
	mov	dword ptr [rbp - 4], 0
.label_2325:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x419a7a
	.globl sub_419a7a
	.type sub_419a7a, @function
sub_419a7a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x419a80

	.globl quote_n
	.type quote_n, @function
quote_n:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rdx, -1
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	call	quote_n_mem
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x419aa8
	.globl sub_419aa8
	.type sub_419aa8, @function
sub_419aa8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x419ab0

	.globl search_duplicated_node
	.type search_duplicated_node, @function
search_duplicated_node:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0x10]
	sub	rsi, 1
	mov	qword ptr [rbp - 0x28], rsi
.label_2328:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x10]
	shl	rdx, 4
	add	rdx, qword ptr [rsi]
	mov	eax, dword ptr [rdx + 8]
	shr	eax, 0x12
	and	eax, 1
	cmp	eax, 0
	mov	byte ptr [rbp - 0x29], cl
	je	.label_2331
	cmp	qword ptr [rbp - 0x28], 0
	setg	al
	mov	byte ptr [rbp - 0x29], al
.label_2331:
	mov	al, byte ptr [rbp - 0x29]
	test	al, 1
	jne	.label_2327
	jmp	.label_2330
.label_2327:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x20]
	cmp	rax, qword ptr [rdx + rcx*8]
	jne	.label_2329
	mov	eax, dword ptr [rbp - 0x1c]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	shl	rcx, 4
	add	rcx, qword ptr [rdx]
	mov	esi, dword ptr [rcx + 8]
	shr	esi, 8
	and	esi, 0x3ff
	cmp	eax, esi
	jne	.label_2329
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2332
.label_2329:
	jmp	.label_2333
.label_2333:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, -1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_2328
.label_2330:
	mov	qword ptr [rbp - 8], -1
.label_2332:
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x419b83
	.globl sub_419b83
	.type sub_419b83, @function
sub_419b83:

	nop	word ptr cs:[rax + rax]
.label_2339:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
.label_2336:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, -1
	mov	qword ptr [rbp - 0x20], rax
	cmp	rax, 0
	jl	.label_2337
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x10]
	cmp	rax, qword ptr [rdx + rcx*8]
	je	.label_2334
	mov	byte ptr [rbp - 1], 0
	jmp	.label_2335
.label_2337:
	mov	byte ptr [rbp - 1], 1
.label_2335:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x419bef
	.globl sub_419bef
	.type sub_419bef, @function
sub_419bef:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x419bfa

	.globl re_node_set_compare
	.type re_node_set_compare, @function
re_node_set_compare:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_2338
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_2338
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 8]
	je	.label_2339
.label_2338:
	mov	byte ptr [rbp - 1], 0
	jmp	.label_2335
.label_2334:
	jmp	.label_2336
	.section	.text
	.align	16
	#Procedure 0x419c40

	.globl bkm_scale_by_power
	.type bkm_scale_by_power, @function
bkm_scale_by_power:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	dword ptr [rbp - 0x10], edx
	mov	dword ptr [rbp - 0x14], 0
.label_2341:
	mov	eax, dword ptr [rbp - 0x10]
	mov	ecx, eax
	add	ecx, -1
	mov	dword ptr [rbp - 0x10], ecx
	cmp	eax, 0
	je	.label_2340
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	call	bkm_scale
	or	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_2341
.label_2340:
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x419c8d
	.globl sub_419c8d
	.type sub_419c8d, @function
sub_419c8d:

	nop	dword ptr [rax]
.label_2343:
	mov	rax, qword ptr [rbp - 8]
	and	rax, 0x10
	cmp	rax, 0
	je	.label_2342
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 8]
	movzx	eax, byte ptr [rsi - 1]
	movsxd	rsi, eax
	sub	rcx, rsi
	add	rdx, rcx
	mov	qword ptr [rbp - 0x10], rdx
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
.label_2342:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x419cce
	.globl sub_419cce
	.type sub_419cce, @function
sub_419cce:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x419cdd

	.globl freea
	.type freea, @function
freea:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	and	rdi, 0xf
	cmp	rdi, 0
	je	.label_2343
	call	abort
	.section	.text
	.align	16
	#Procedure 0x419d00

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	xmalloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x419d1b
	.globl sub_419d1b
	.type sub_419d1b, @function
sub_419d1b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x419d20

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	esi, eax
	mov	dword ptr [rbp - 4], edi
	mov	byte ptr [rbp - 5], 1
	mov	edi, dword ptr [rbp - 4]
	call	setlocale
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_2344
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_2346
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	je	.label_2347
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_2345
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_2348
.label_2347:
	mov	byte ptr [rbp - 5], 0
.label_2348:
	jmp	.label_2344
.label_2344:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x419d93
	.globl sub_419d93
	.type sub_419d93, @function
sub_419d93:

	nop	word ptr cs:[rax + rax]
.label_2351:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rax + 0x30]
	and	ecx, 0xff
	cmp	ecx, 0xc
	jne	.label_2349
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rax + 0x28]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x38]
	mov	rdx, qword ptr [rbp - 0x20]
	shl	rax, 4
	add	rax, qword ptr [rdx]
	mov	esi, dword ptr [rax + 8]
	and	ecx, 0x3ff
	shl	ecx, 8
	and	esi, 0xfffc00ff
	or	esi, ecx
	mov	dword ptr [rax + 8], esi
.label_2349:
	jmp	.label_2350
.label_2350:
	mov	dword ptr [rbp - 4], 0
.label_2352:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x419dfc
	.globl sub_419dfc
	.type sub_419dfc, @function
sub_419dfc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x419dff

	.globl calc_first
	.type calc_first, @function
calc_first:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	eax, dword ptr [rsi + 0x30]
	and	eax, 0xff
	cmp	eax, 0x10
	jne	.label_2353
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	rax, qword ptr [rax + 0x18]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	rax, qword ptr [rax + 0x38]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x38], rax
	jmp	.label_2350
.label_2353:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x18], rax
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax + 0x28]
	mov	rdx, qword ptr [rax + 0x30]
	call	re_dfa_add_node
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x38], rax
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0x38], -1
	sete	r8b
	and	r8b, 1
	movzx	r9d, r8b
	movsxd	rax, r9d
	cmp	rax, 0
	je	.label_2351
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_2352
.label_2361:
	call	locale_charset
	movabs	rsi, OFFSET FLAT:label_113
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_2360
	movabs	rax, OFFSET FLAT:label_2363
	movabs	rcx, OFFSET FLAT:label_2364
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2356
	.section	.text
	.align	16
	#Procedure 0x419f00

	.globl gettext_quote
	.type gettext_quote, @function
gettext_quote:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	rdi, qword ptr [rbp - 0x10]
	call	gettext
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x10]
	je	.label_2361
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2356
.label_2362:
	movabs	rax, OFFSET FLAT:label_2358
	movabs	rcx, OFFSET FLAT:label_2359
	cmp	dword ptr [rbp - 0x14], 9
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
.label_2356:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x419f61
	.globl sub_419f61
	.type sub_419f61, @function
sub_419f61:

	nop	dword ptr [rax + rax]
.label_2360:
	movabs	rsi, OFFSET FLAT:label_2357
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_2362
	movabs	rax, OFFSET FLAT:label_2354
	movabs	rcx, OFFSET FLAT:label_2355
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2356
	.section	.text
	.align	16
	#Procedure 0x419fb0

	.globl sort_found_occurs
	.type sort_found_occurs, @function
sort_found_occurs:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	cmp	qword ptr [word ptr [number_of_occurs]],  0
	je	.label_2365
	mov	eax, 0x30
	mov	edx, eax
	movabs	rcx, OFFSET FLAT:compare_occurs
	mov	rsi,  qword ptr [word ptr [occurs_table]]
	mov	rdi,  qword ptr [word ptr [number_of_occurs]]
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 8]
	call	qsort
.label_2365:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x419ffe
	.globl sub_419ffe
	.type sub_419ffe, @function
sub_419ffe:

	nop	
.label_2369:
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 3
	jmp	.label_2366
.label_2378:
	jmp	.label_2366
.label_2366:
	mov	dword ptr [rbp - 4], 0
.label_2372:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41a024
	.globl sub_41a024
	.type sub_41a024, @function
sub_41a024:

	nop	word ptr cs:[rax + rax]
.label_2374:
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 4
	jmp	.label_2366
	.section	.text
	.align	16
	#Procedure 0x41a03d

	.globl parse_bracket_symbol
	.type parse_bracket_symbol, @function
parse_bracket_symbol:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x20]
	mov	al, byte ptr [rdx]
	mov	byte ptr [rbp - 0x22], al
	mov	dword ptr [rbp - 0x28], 0
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x68]
	mov	rsi, qword ptr [rbp - 0x18]
	cmp	rdx, qword ptr [rsi + 0x48]
	jg	.label_2381
	mov	dword ptr [rbp - 4], 7
	jmp	.label_2372
.label_2381:
	jmp	.label_2373
.label_2373:
	cmp	dword ptr [rbp - 0x28], 0x20
	jl	.label_2370
	mov	dword ptr [rbp - 4], 7
	jmp	.label_2372
.label_2376:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rax + 0x48]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rax + 0x48], rdx
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	sil, byte ptr [rax + rcx]
	mov	byte ptr [rbp - 0x21], sil
.label_2379:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x68]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 0x48]
	jg	.label_2368
	mov	dword ptr [rbp - 4], 7
	jmp	.label_2372
.label_2377:
	mov	al, byte ptr [rbp - 0x21]
	movsxd	rcx, dword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 8]
	mov	byte ptr [rdx + rcx], al
	mov	eax, dword ptr [rbp - 0x28]
	add	eax, 1
	mov	dword ptr [rbp - 0x28], eax
	jmp	.label_2373
.label_2375:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rax + 0x48]
	inc	rcx
	mov	qword ptr [rax + 0x48], rcx
	movsxd	rax, dword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 8]
	mov	byte ptr [rcx + rax], 0
	mov	rax, qword ptr [rbp - 0x20]
	movzx	edx, byte ptr [rax + 8]
	mov	esi, edx
	sub	esi, 0x1a
	mov	dword ptr [rbp - 0x2c], edx
	mov	dword ptr [rbp - 0x30], esi
	je	.label_2369
	jmp	.label_2380
.label_2380:
	mov	eax, dword ptr [rbp - 0x2c]
	sub	eax, 0x1c
	mov	dword ptr [rbp - 0x34], eax
	je	.label_2367
	jmp	.label_2371
.label_2371:
	mov	eax, dword ptr [rbp - 0x2c]
	sub	eax, 0x1e
	mov	dword ptr [rbp - 0x38], eax
	je	.label_2374
	jmp	.label_2378
.label_2368:
	movzx	eax, byte ptr [rbp - 0x21]
	movzx	ecx, byte ptr [rbp - 0x22]
	cmp	eax, ecx
	jne	.label_2377
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 8]
	movzx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x5d
	jne	.label_2377
	jmp	.label_2375
.label_2370:
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 0x1e
	jne	.label_2376
	mov	rdi, qword ptr [rbp - 0x18]
	call	re_string_fetch_byte_case
	mov	byte ptr [rbp - 0x21], al
	jmp	.label_2379
.label_2367:
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 2
	jmp	.label_2366
.label_2382:
	mov	qword ptr [rbp - 8], 0
.label_2385:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41a1e2
	.globl sub_41a1e2
	.type sub_41a1e2, @function
sub_41a1e2:

	nop	dword ptr [rax]
.label_2386:
	jmp	.label_2383
.label_2383:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_2387
	.section	.text
	.align	16
	#Procedure 0x41a1ff

	.globl check_halt_state_context
	.type check_halt_state_context, @function
check_halt_state_context:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rdx + 0xa0]
	call	re_string_context_at
	mov	dword ptr [rbp - 0x2c], eax
	mov	qword ptr [rbp - 0x28], 0
.label_2387:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 0x10]
	jge	.label_2382
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax + 0x98]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rsi, qword ptr [rcx + rax*8]
	mov	edx, dword ptr [rbp - 0x2c]
	call	check_halt_node_context
	test	al, 1
	jne	.label_2384
	jmp	.label_2386
.label_2384:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2385
	.section	.text
	.align	16
	#Procedure 0x41a290

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rcx, OFFSET FLAT:quote_quoting_options
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	quotearg_n_options
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41a2c3
	.globl sub_41a2c3
	.type sub_41a2c3, @function
sub_41a2c3:

	nop	word ptr cs:[rax + rax]
.label_2499:
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
.label_2482:
	jmp	.label_2446
.label_2446:
	jmp	.label_2455
.label_2491:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0xa8], rax
.label_2513:
	mov	rax, qword ptr [rbp - 0xa8]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_2496
.label_2457:
	cmp	qword ptr [rbp - 0x70], -1
	jne	.label_2438
	mov	eax, 1
	mov	ecx, eax
	mov	qword ptr [rbp - 0xf8], rcx
	jmp	.label_2439
.label_2450:
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x148], rax
.label_2405:
	mov	rax, qword ptr [rbp - 0x148]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_2449
.label_2396:
	mov	rax,  qword ptr [word ptr [before]]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	cmp	byte ptr [byte ptr [+ (rcx * 1) + word_fastmap]],  0
	je	.label_2456
	jmp	.label_2458
.label_2458:
	xor	eax, eax
	mov	cl, al
	mov	rdx,  qword ptr [word ptr [before]]
	cmp	rdx,  qword ptr [word ptr [label_447]]
	mov	byte ptr [rbp - 0xf9], cl
	jae	.label_2460
	mov	rax,  qword ptr [word ptr [before]]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	movsx	edi,  byte ptr [byte ptr [+ (rcx * 1) + word_fastmap]]
	cmp	edi, 0
	setne	al
	mov	byte ptr [rbp - 0xf9], al
.label_2460:
	mov	al, byte ptr [rbp - 0xf9]
	test	al, 1
	jne	.label_2470
	jmp	.label_2474
.label_2470:
	mov	rax,  qword ptr [word ptr [before]]
	add	rax, 1
	mov	qword ptr [word ptr [before]],  rax
	jmp	.label_2458
.label_2400:
	mov	rax,  qword ptr [word ptr [head]]
	add	rax, 1
	mov	qword ptr [word ptr [head]],  rax
.label_2475:
	jmp	.label_2412
.label_2412:
	jmp	.label_2480
.label_2445:
	jmp	.label_2424
.label_2424:
	mov	rax,  qword ptr [word ptr [before]]
	add	rax,  qword ptr [word ptr [before_max_width]]
	cmp	rax,  qword ptr [word ptr [label_447]]
	jae	.label_2389
	cmp	qword ptr [word ptr [word_regex]],  0
	je	.label_2396
	movabs	rax, OFFSET FLAT:word_regex
	add	rax, 8
	xor	ecx, ecx
	mov	edx, ecx
	mov	rsi,  qword ptr [word ptr [before]]
	mov	rdi,  qword ptr [word ptr [label_447]]
	mov	r8,  qword ptr [word ptr [before]]
	sub	rdi, r8
	mov	qword ptr [rbp - 0xe8], rdi
	mov	rdi, rax
	mov	rax, qword ptr [rbp - 0xe8]
	mov	qword ptr [rbp - 0xf0], rdx
	mov	rdx, rax
	mov	rcx, qword ptr [rbp - 0xf0]
	mov	r8, qword ptr [rbp - 0xf0]
	call	rpl_re_match
	mov	qword ptr [rbp - 0x70], rax
	cmp	qword ptr [rbp - 0x70], -2
	jne	.label_2457
	call	matcher_error
.label_2456:
	mov	rax,  qword ptr [word ptr [before]]
	add	rax, 1
	mov	qword ptr [word ptr [before]],  rax
.label_2406:
	jmp	.label_2421
.label_2421:
	jmp	.label_2424
.label_2501:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 8]
	sub	rcx, qword ptr [rdx + 0x10]
	mov	rdx,  qword ptr [word ptr [half_line_width]]
	add	rdx,  qword ptr [word ptr [maximum_word_length]]
	cmp	rcx, rdx
	jle	.label_2493
	xor	eax, eax
	mov	ecx, eax
	mov	rdx,  qword ptr [word ptr [keyafter]]
	mov	rsi,  qword ptr [word ptr [half_line_width]]
	add	rsi,  qword ptr [word ptr [maximum_word_length]]
	sub	rcx, rsi
	add	rdx, rcx
	mov	qword ptr [rbp - 0x38], rdx
	cmp	qword ptr [word ptr [word_regex]],  0
	je	.label_2503
	movabs	rax, OFFSET FLAT:word_regex
	add	rax, 8
	xor	ecx, ecx
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdi,  qword ptr [word ptr [keyafter]]
	mov	r8, qword ptr [rbp - 0x38]
	sub	rdi, r8
	mov	qword ptr [rbp - 0xc0], rdi
	mov	rdi, rax
	mov	rax, qword ptr [rbp - 0xc0]
	mov	qword ptr [rbp - 0xc8], rdx
	mov	rdx, rax
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	r8, qword ptr [rbp - 0xc8]
	call	rpl_re_match
	mov	qword ptr [rbp - 0x68], rax
	cmp	qword ptr [rbp - 0x68], -2
	jne	.label_2510
	call	matcher_error
.label_2476:
	mov	byte ptr [byte ptr [tail_truncation]],  0
.label_2395:
	jmp	.label_2388
.label_2388:
	xor	eax, eax
	mov	cl, al
	mov	rdx,  qword ptr [word ptr [label_175]]
	cmp	rdx,  qword ptr [word ptr [tail]]
	mov	byte ptr [rbp - 0x14b], cl
	jbe	.label_2452
	mov	rax,  qword ptr [word ptr [label_175]]
	movsx	edi, byte ptr [rax - 1]
	call	to_uchar
	movzx	edi, al
	movsxd	rcx, edi
	mov	qword ptr [rbp - 0x158], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x158]
	movzx	edi, word ptr [rax + rcx*2]
	and	edi, 0x2000
	cmp	edi, 0
	setne	dl
	mov	byte ptr [rbp - 0x14b], dl
.label_2452:
	mov	al, byte ptr [rbp - 0x14b]
	test	al, 1
	jne	.label_2478
	jmp	.label_2481
.label_2478:
	mov	rax,  qword ptr [word ptr [label_175]]
	add	rax, -1
	mov	qword ptr [word ptr [label_175]],  rax
	jmp	.label_2388
.label_2436:
	mov	rax,  qword ptr [word ptr [head]]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	cmp	byte ptr [byte ptr [+ (rcx * 1) + word_fastmap]],  0
	je	.label_2400
	jmp	.label_2404
.label_2404:
	xor	eax, eax
	mov	cl, al
	mov	rdx,  qword ptr [word ptr [head]]
	cmp	rdx,  qword ptr [word ptr [label_176]]
	mov	byte ptr [rbp - 0x181], cl
	jae	.label_2407
	mov	rax,  qword ptr [word ptr [head]]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	movsx	edi,  byte ptr [byte ptr [+ (rcx * 1) + word_fastmap]]
	cmp	edi, 0
	setne	al
	mov	byte ptr [rbp - 0x181], al
.label_2407:
	mov	al, byte ptr [rbp - 0x181]
	test	al, 1
	jne	.label_2417
	jmp	.label_2418
.label_2417:
	mov	rax,  qword ptr [word ptr [head]]
	add	rax, 1
	mov	qword ptr [word ptr [head]],  rax
	jmp	.label_2404
.label_2485:
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0xd0], rax
.label_2487:
	mov	rax, qword ptr [rbp - 0xd0]
	add	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_2446
.label_2428:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [word ptr [head]],  rax
.label_2480:
	mov	rax,  qword ptr [word ptr [head]]
	add	rax, qword ptr [rbp - 0x18]
	cmp	rax,  qword ptr [word ptr [label_176]]
	jae	.label_2431
	cmp	qword ptr [word ptr [word_regex]],  0
	je	.label_2436
	movabs	rax, OFFSET FLAT:word_regex
	add	rax, 8
	xor	ecx, ecx
	mov	edx, ecx
	mov	rsi,  qword ptr [word ptr [head]]
	mov	rdi,  qword ptr [word ptr [label_176]]
	mov	r8,  qword ptr [word ptr [head]]
	sub	rdi, r8
	mov	qword ptr [rbp - 0x170], rdi
	mov	rdi, rax
	mov	rax, qword ptr [rbp - 0x170]
	mov	qword ptr [rbp - 0x178], rdx
	mov	rdx, rax
	mov	rcx, qword ptr [rbp - 0x178]
	mov	r8, qword ptr [rbp - 0x178]
	call	rpl_re_match
	mov	qword ptr [rbp - 0x80], rax
	cmp	qword ptr [rbp - 0x80], -2
	jne	.label_2411
	call	matcher_error
.label_2462:
	jmp	.label_2463
.label_2397:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x28]
	seta	cl
	and	cl, 1
	mov	byte ptr [byte ptr [before_truncation]],  cl
	jmp	.label_2464
.label_2440:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
.label_2463:
	jmp	.label_2449
.label_2449:
	jmp	.label_2467
.label_2471:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx,  qword ptr [word ptr [tail]]
	add	rcx, qword ptr [rbp - 0x10]
	cmp	rax, rcx
	jae	.label_2469
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [word ptr [label_175]],  rax
.label_2469:
	mov	rax,  qword ptr [word ptr [label_175]]
	cmp	rax,  qword ptr [word ptr [tail]]
	jbe	.label_2476
	xor	eax, eax
	mov	cl, al
	mov	byte ptr [byte ptr [keyafter_truncation]],  0
	cmp	qword ptr [word ptr [truncation_string]],  0
	mov	byte ptr [rbp - 0x14a], cl
	je	.label_2477
	mov	rax,  qword ptr [word ptr [label_175]]
	cmp	rax, qword ptr [rbp - 0x30]
	setb	cl
	mov	byte ptr [rbp - 0x14a], cl
.label_2477:
	mov	al, byte ptr [rbp - 0x14a]
	and	al, 1
	mov	byte ptr [byte ptr [tail_truncation]],  al
	jmp	.label_2395
.label_2398:
	cmp	qword ptr [rbp - 0x78], -1
	jne	.label_2450
	mov	eax, 1
	mov	ecx, eax
	mov	qword ptr [rbp - 0x148], rcx
	jmp	.label_2405
.label_2402:
	mov	qword ptr [word ptr [tail]],  0
	mov	qword ptr [word ptr [label_175]],  0
	mov	byte ptr [byte ptr [tail_truncation]],  0
.label_2420:
	mov	rax,  qword ptr [word ptr [keyafter_max_width]]
	mov	rcx,  qword ptr [word ptr [label_440]]
	mov	rdx,  qword ptr [word ptr [keyafter]]
	sub	rcx, rdx
	sub	rax, rcx
	sub	rax,  qword ptr [word ptr [gap_size]]
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], 0
	jle	.label_2419
	mov	rax,  qword ptr [word ptr [before]]
	mov	qword ptr [word ptr [label_176]],  rax
.label_2435:
	xor	eax, eax
	mov	cl, al
	mov	rdx,  qword ptr [word ptr [label_176]]
	cmp	rdx, qword ptr [rbp - 0x50]
	mov	byte ptr [rbp - 0x159], cl
	jbe	.label_2423
	mov	rax,  qword ptr [word ptr [label_176]]
	movsx	edi, byte ptr [rax - 1]
	call	to_uchar
	movzx	edi, al
	movsxd	rcx, edi
	mov	qword ptr [rbp - 0x168], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x168]
	movzx	edi, word ptr [rax + rcx*2]
	and	edi, 0x2000
	cmp	edi, 0
	setne	dl
	mov	byte ptr [rbp - 0x159], dl
.label_2423:
	mov	al, byte ptr [rbp - 0x159]
	test	al, 1
	jne	.label_2441
	jmp	.label_2428
.label_2441:
	mov	rax,  qword ptr [word ptr [label_176]]
	add	rax, -1
	mov	qword ptr [word ptr [label_176]],  rax
	jmp	.label_2435
.label_2432:
	jmp	.label_2408
.label_2408:
	jmp	.label_2425
.label_2425:
	add	rsp, 0x1b0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41a954
	.globl sub_41a954
	.type sub_41a954, @function
sub_41a954:

	nop	word ptr [rax + rax]
.label_2429:
	mov	rax,  qword ptr [word ptr [tail]]
	mov	qword ptr [word ptr [label_175]],  rax
	mov	rax,  qword ptr [word ptr [label_175]]
	mov	qword ptr [rbp - 0x20], rax
.label_2467:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x20]
	cmp	rdx, qword ptr [rbp - 0x30]
	mov	byte ptr [rbp - 0x129], cl
	jae	.label_2461
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx,  qword ptr [word ptr [tail]]
	add	rcx, qword ptr [rbp - 0x10]
	cmp	rax, rcx
	setb	dl
	mov	byte ptr [rbp - 0x129], dl
.label_2461:
	mov	al, byte ptr [rbp - 0x129]
	test	al, 1
	jne	.label_2454
	jmp	.label_2471
.label_2454:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [word ptr [label_175]],  rax
	cmp	qword ptr [word ptr [word_regex]],  0
	je	.label_2472
	movabs	rax, OFFSET FLAT:word_regex
	add	rax, 8
	xor	ecx, ecx
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rbp - 0x30]
	mov	r8, qword ptr [rbp - 0x20]
	sub	rdi, r8
	mov	qword ptr [rbp - 0x138], rdi
	mov	rdi, rax
	mov	rax, qword ptr [rbp - 0x138]
	mov	qword ptr [rbp - 0x140], rdx
	mov	rdx, rax
	mov	rcx, qword ptr [rbp - 0x140]
	mov	r8, qword ptr [rbp - 0x140]
	call	rpl_re_match
	mov	qword ptr [rbp - 0x78], rax
	cmp	qword ptr [rbp - 0x78], -2
	jne	.label_2398
	call	matcher_error
.label_2443:
	jmp	.label_2403
.label_2474:
	jmp	.label_2406
.label_2479:
	test	byte ptr [byte ptr [input_reference]],  1
	je	.label_2408
	mov	rax,  qword ptr [word ptr [keyafter]]
	mov	rcx, qword ptr [rbp - 8]
	add	rax, qword ptr [rcx + 0x20]
	mov	qword ptr [word ptr [reference]],  rax
	mov	rax,  qword ptr [word ptr [reference]]
	mov	qword ptr [word ptr [label_445]],  rax
.label_2434:
	xor	eax, eax
	mov	cl, al
	mov	rdx,  qword ptr [word ptr [label_445]]
	cmp	rdx, qword ptr [rbp - 0x30]
	mov	byte ptr [rbp - 0x1a1], cl
	jae	.label_2414
	mov	rax,  qword ptr [word ptr [label_445]]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	movsxd	rcx, edi
	mov	qword ptr [rbp - 0x1b0], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x1b0]
	movzx	edi, word ptr [rax + rcx*2]
	and	edi, 0x2000
	cmp	edi, 0
	setne	dl
	xor	dl, 0xff
	mov	byte ptr [rbp - 0x1a1], dl
.label_2414:
	mov	al, byte ptr [rbp - 0x1a1]
	test	al, 1
	jne	.label_2430
	jmp	.label_2432
.label_2430:
	mov	rax,  qword ptr [word ptr [label_445]]
	add	rax, 1
	mov	qword ptr [word ptr [label_445]],  rax
	jmp	.label_2434
.label_2422:
	mov	byte ptr [byte ptr [head_truncation]],  0
.label_2437:
	jmp	.label_2453
.label_2453:
	xor	eax, eax
	mov	cl, al
	mov	rdx,  qword ptr [word ptr [head]]
	cmp	rdx,  qword ptr [word ptr [label_176]]
	mov	byte ptr [rbp - 0x183], cl
	jae	.label_2416
	mov	rax,  qword ptr [word ptr [head]]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	movsxd	rcx, edi
	mov	qword ptr [rbp - 0x190], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x190]
	movzx	edi, word ptr [rax + rcx*2]
	and	edi, 0x2000
	cmp	edi, 0
	setne	dl
	mov	byte ptr [rbp - 0x183], dl
.label_2416:
	mov	al, byte ptr [rbp - 0x183]
	test	al, 1
	jne	.label_2427
	jmp	.label_2443
.label_2427:
	mov	rax,  qword ptr [word ptr [head]]
	add	rax, 1
	mov	qword ptr [word ptr [head]],  rax
	jmp	.label_2453
.label_2389:
	cmp	qword ptr [word ptr [truncation_string]],  0
	je	.label_2466
	mov	rax,  qword ptr [word ptr [before]]
	mov	qword ptr [rbp - 0x20], rax
.label_2399:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x20]
	cmp	rdx, qword ptr [rbp - 0x50]
	mov	byte ptr [rbp - 0xfa], cl
	jbe	.label_2473
	mov	rax, qword ptr [rbp - 0x20]
	movsx	edi, byte ptr [rax - 1]
	call	to_uchar
	movzx	edi, al
	movsxd	rcx, edi
	mov	qword ptr [rbp - 0x108], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x108]
	movzx	edi, word ptr [rax + rcx*2]
	and	edi, 0x2000
	cmp	edi, 0
	setne	dl
	mov	byte ptr [rbp - 0xfa], dl
.label_2473:
	mov	al, byte ptr [rbp - 0xfa]
	test	al, 1
	jne	.label_2392
	jmp	.label_2397
.label_2392:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, -1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_2399
.label_2393:
	mov	rax,  qword ptr [word ptr [before_max_width]]
	mov	rcx,  qword ptr [word ptr [label_447]]
	mov	rdx,  qword ptr [word ptr [before]]
	sub	rcx, rdx
	sub	rax, rcx
	sub	rax,  qword ptr [word ptr [gap_size]]
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jle	.label_2402
	mov	rax,  qword ptr [word ptr [label_440]]
	mov	qword ptr [word ptr [tail]],  rax
.label_2465:
	xor	eax, eax
	mov	cl, al
	mov	rdx,  qword ptr [word ptr [tail]]
	cmp	rdx, qword ptr [rbp - 0x58]
	mov	byte ptr [rbp - 0x119], cl
	jae	.label_2415
	mov	rax,  qword ptr [word ptr [tail]]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	movsxd	rcx, edi
	mov	qword ptr [rbp - 0x128], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x128]
	movzx	edi, word ptr [rax + rcx*2]
	and	edi, 0x2000
	cmp	edi, 0
	setne	dl
	mov	byte ptr [rbp - 0x119], dl
.label_2415:
	mov	al, byte ptr [rbp - 0x119]
	test	al, 1
	jne	.label_2451
	jmp	.label_2429
.label_2451:
	mov	rax,  qword ptr [word ptr [tail]]
	add	rax, 1
	mov	qword ptr [word ptr [tail]],  rax
	jmp	.label_2465
.label_2472:
	mov	rax, qword ptr [rbp - 0x20]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	cmp	byte ptr [byte ptr [+ (rcx * 1) + word_fastmap]],  0
	je	.label_2440
	jmp	.label_2444
.label_2444:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x20]
	cmp	rdx, qword ptr [rbp - 0x30]
	mov	byte ptr [rbp - 0x149], cl
	jae	.label_2447
	mov	rax, qword ptr [rbp - 0x20]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	movsx	edi,  byte ptr [byte ptr [+ (rcx * 1) + word_fastmap]]
	cmp	edi, 0
	setne	al
	mov	byte ptr [rbp - 0x149], al
.label_2447:
	mov	al, byte ptr [rbp - 0x149]
	test	al, 1
	jne	.label_2459
	jmp	.label_2462
.label_2459:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_2444
.label_2507:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx,  qword ptr [word ptr [keyafter]]
	add	rcx,  qword ptr [word ptr [keyafter_max_width]]
	cmp	rax, rcx
	ja	.label_2484
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [word ptr [label_440]],  rax
.label_2484:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [word ptr [truncation_string]],  0
	mov	byte ptr [rbp - 0xaa], cl
	je	.label_2497
	mov	rax,  qword ptr [word ptr [label_440]]
	cmp	rax, qword ptr [rbp - 0x30]
	setb	cl
	mov	byte ptr [rbp - 0xaa], cl
.label_2497:
	mov	al, byte ptr [rbp - 0xaa]
	and	al, 1
	mov	byte ptr [byte ptr [keyafter_truncation]],  al
.label_2505:
	xor	eax, eax
	mov	cl, al
	mov	rdx,  qword ptr [word ptr [label_440]]
	cmp	rdx,  qword ptr [word ptr [keyafter]]
	mov	byte ptr [rbp - 0xab], cl
	jbe	.label_2508
	mov	rax,  qword ptr [word ptr [label_440]]
	movsx	edi, byte ptr [rax - 1]
	call	to_uchar
	movzx	edi, al
	movsxd	rcx, edi
	mov	qword ptr [rbp - 0xb8], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0xb8]
	movzx	edi, word ptr [rax + rcx*2]
	and	edi, 0x2000
	cmp	edi, 0
	setne	dl
	mov	byte ptr [rbp - 0xab], dl
.label_2508:
	mov	al, byte ptr [rbp - 0xab]
	test	al, 1
	jne	.label_2500
	jmp	.label_2501
.label_2500:
	mov	rax,  qword ptr [word ptr [label_440]]
	add	rax, -1
	mov	qword ptr [word ptr [label_440]],  rax
	jmp	.label_2505
.label_2492:
	jmp	.label_2482
.label_2493:
	mov	rax,  qword ptr [word ptr [keyafter]]
	mov	rcx, qword ptr [rbp - 8]
	add	rax, qword ptr [rcx + 0x10]
	mov	qword ptr [rbp - 0x38], rax
.label_2455:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [word ptr [before]],  rax
	mov	rax,  qword ptr [word ptr [keyafter]]
	mov	qword ptr [word ptr [label_447]],  rax
.label_2448:
	xor	eax, eax
	mov	cl, al
	mov	rdx,  qword ptr [word ptr [label_447]]
	cmp	rdx,  qword ptr [word ptr [before]]
	mov	byte ptr [rbp - 0xd2], cl
	jbe	.label_2433
	mov	rax,  qword ptr [word ptr [label_447]]
	movsx	edi, byte ptr [rax - 1]
	call	to_uchar
	movzx	edi, al
	movsxd	rcx, edi
	mov	qword ptr [rbp - 0xe0], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0xe0]
	movzx	edi, word ptr [rax + rcx*2]
	and	edi, 0x2000
	cmp	edi, 0
	setne	dl
	mov	byte ptr [rbp - 0xd2], dl
.label_2433:
	mov	al, byte ptr [rbp - 0xd2]
	test	al, 1
	jne	.label_2442
	jmp	.label_2445
.label_2442:
	mov	rax,  qword ptr [word ptr [label_447]]
	add	rax, -1
	mov	qword ptr [word ptr [label_447]],  rax
	jmp	.label_2448
.label_2503:
	mov	rax, qword ptr [rbp - 0x38]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	cmp	byte ptr [byte ptr [+ (rcx * 1) + word_fastmap]],  0
	je	.label_2499
	jmp	.label_2495
.label_2495:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x38]
	cmp	rdx,  qword ptr [word ptr [keyafter]]
	mov	byte ptr [rbp - 0xd1], cl
	jae	.label_2506
	mov	rax, qword ptr [rbp - 0x38]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	movsx	edi,  byte ptr [byte ptr [+ (rcx * 1) + word_fastmap]]
	cmp	edi, 0
	setne	al
	mov	byte ptr [rbp - 0xd1], al
.label_2506:
	mov	al, byte ptr [rbp - 0xd1]
	test	al, 1
	jne	.label_2490
	jmp	.label_2492
.label_2490:
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_2495
.label_2418:
	jmp	.label_2475
.label_2419:
	mov	qword ptr [word ptr [head]],  0
	mov	qword ptr [word ptr [label_176]],  0
	mov	byte ptr [byte ptr [head_truncation]],  0
.label_2403:
	test	byte ptr [byte ptr [auto_reference]],  1
	je	.label_2479
	mov	rax, qword ptr [rbp - 8]
	movsxd	rax, dword ptr [rax + 0x28]
	mov	rcx,  qword ptr [word ptr [input_file_name]]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x40], 0
	jne	.label_2391
	movabs	rax, OFFSET FLAT:label_783
	mov	qword ptr [rbp - 0x40], rax
.label_2391:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 0x28], 0
	jle	.label_2401
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x28]
	sub	ecx, 1
	movsxd	rax, ecx
	mov	rdx,  qword ptr [word ptr [file_line_count]]
	mov	rax, qword ptr [rdx + rax*8]
	mov	rdx, qword ptr [rbp - 0x48]
	sub	rdx, rax
	mov	qword ptr [rbp - 0x48], rdx
.label_2401:
	movabs	rsi, OFFSET FLAT:label_2413
	mov	rdi,  qword ptr [word ptr [reference]]
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x198], rsi
	mov	rsi, rax
	call	stpcpy
	mov	qword ptr [rbp - 0x88], rax
	mov	rax, qword ptr [rbp - 0x88]
	mov	rdi, qword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x198]
	mov	qword ptr [rbp - 0x1a0], rax
	mov	al, 0
	call	sprintf
	movsxd	rdx, eax
	mov	rsi, qword ptr [rbp - 0x1a0]
	add	rsi, rdx
	mov	qword ptr [word ptr [label_445]],  rsi
	jmp	.label_2425
.label_2438:
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0xf8], rax
.label_2439:
	mov	rax, qword ptr [rbp - 0xf8]
	add	rax,  qword ptr [word ptr [before]]
	mov	qword ptr [word ptr [before]],  rax
	jmp	.label_2421
	.section	.text
	.align	16
	#Procedure 0x41b109

	.globl define_all_fields
	.type define_all_fields, @function
define_all_fields:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x1b0
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi]
	mov	qword ptr [word ptr [keyafter]],  rdi
	mov	rdi,  qword ptr [word ptr [keyafter]]
	mov	rax, qword ptr [rbp - 8]
	add	rdi, qword ptr [rax + 8]
	mov	qword ptr [word ptr [label_440]],  rdi
	mov	rax,  qword ptr [word ptr [keyafter]]
	mov	rdi, qword ptr [rbp - 8]
	add	rax, qword ptr [rdi + 0x10]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax,  qword ptr [word ptr [keyafter]]
	mov	rdi, qword ptr [rbp - 8]
	add	rax, qword ptr [rdi + 0x18]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 8]
	movsxd	rax, dword ptr [rax + 0x28]
	shl	rax, 4
	add	rax,  qword ptr [word ptr [text_buffers]]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 8]
	movsxd	rax, dword ptr [rax + 0x28]
	shl	rax, 4
	add	rax,  qword ptr [word ptr [text_buffers]]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax,  qword ptr [word ptr [label_440]]
	mov	qword ptr [rbp - 0x20], rax
.label_2498:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x20]
	cmp	rdx, qword ptr [rbp - 0x30]
	mov	byte ptr [rbp - 0x89], cl
	jae	.label_2512
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx,  qword ptr [word ptr [keyafter]]
	add	rcx,  qword ptr [word ptr [keyafter_max_width]]
	cmp	rax, rcx
	setbe	dl
	mov	byte ptr [rbp - 0x89], dl
.label_2512:
	mov	al, byte ptr [rbp - 0x89]
	test	al, 1
	jne	.label_2504
	jmp	.label_2507
.label_2504:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [word ptr [label_440]],  rax
	cmp	qword ptr [word ptr [word_regex]],  0
	je	.label_2509
	movabs	rax, OFFSET FLAT:word_regex
	add	rax, 8
	xor	ecx, ecx
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rbp - 0x30]
	mov	r8, qword ptr [rbp - 0x20]
	sub	rdi, r8
	mov	qword ptr [rbp - 0x98], rdi
	mov	rdi, rax
	mov	rax, qword ptr [rbp - 0x98]
	mov	qword ptr [rbp - 0xa0], rdx
	mov	rdx, rax
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	r8, qword ptr [rbp - 0xa0]
	call	rpl_re_match
	mov	qword ptr [rbp - 0x60], rax
	cmp	qword ptr [rbp - 0x60], -2
	jne	.label_2502
	call	matcher_error
.label_2502:
	cmp	qword ptr [rbp - 0x60], -1
	jne	.label_2491
	mov	eax, 1
	mov	ecx, eax
	mov	qword ptr [rbp - 0xa8], rcx
	jmp	.label_2513
.label_2510:
	cmp	qword ptr [rbp - 0x68], -1
	jne	.label_2485
	mov	eax, 1
	mov	ecx, eax
	mov	qword ptr [rbp - 0xd0], rcx
	jmp	.label_2487
.label_2481:
	jmp	.label_2420
.label_2431:
	mov	rax,  qword ptr [word ptr [label_176]]
	cmp	rax,  qword ptr [word ptr [head]]
	jbe	.label_2422
	xor	eax, eax
	mov	cl, al
	mov	byte ptr [byte ptr [before_truncation]],  0
	cmp	qword ptr [word ptr [truncation_string]],  0
	mov	byte ptr [rbp - 0x182], cl
	je	.label_2426
	mov	rax,  qword ptr [word ptr [head]]
	cmp	rax, qword ptr [rbp - 0x28]
	seta	cl
	mov	byte ptr [rbp - 0x182], cl
.label_2426:
	mov	al, byte ptr [rbp - 0x182]
	and	al, 1
	mov	byte ptr [byte ptr [head_truncation]],  al
	jmp	.label_2437
.label_2483:
	jmp	.label_2486
.label_2509:
	mov	rax, qword ptr [rbp - 0x20]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	cmp	byte ptr [byte ptr [+ (rcx * 1) + word_fastmap]],  0
	je	.label_2488
	jmp	.label_2489
.label_2489:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x20]
	cmp	rdx, qword ptr [rbp - 0x30]
	mov	byte ptr [rbp - 0xa9], cl
	jae	.label_2494
	mov	rax, qword ptr [rbp - 0x20]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	movsx	edi,  byte ptr [byte ptr [+ (rcx * 1) + word_fastmap]]
	cmp	edi, 0
	setne	al
	mov	byte ptr [rbp - 0xa9], al
.label_2494:
	mov	al, byte ptr [rbp - 0xa9]
	test	al, 1
	jne	.label_2511
	jmp	.label_2483
.label_2511:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_2489
.label_2466:
	mov	byte ptr [byte ptr [before_truncation]],  0
.label_2464:
	jmp	.label_2394
.label_2394:
	xor	eax, eax
	mov	cl, al
	mov	rdx,  qword ptr [word ptr [before]]
	cmp	rdx, qword ptr [rbp - 0x58]
	mov	byte ptr [rbp - 0x109], cl
	jae	.label_2468
	mov	rax,  qword ptr [word ptr [before]]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	movsxd	rcx, edi
	mov	qword ptr [rbp - 0x118], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x118]
	movzx	edi, word ptr [rax + rcx*2]
	and	edi, 0x2000
	cmp	edi, 0
	setne	dl
	mov	byte ptr [rbp - 0x109], dl
.label_2468:
	mov	al, byte ptr [rbp - 0x109]
	test	al, 1
	jne	.label_2390
	jmp	.label_2393
.label_2390:
	mov	rax,  qword ptr [word ptr [before]]
	add	rax, 1
	mov	qword ptr [word ptr [before]],  rax
	jmp	.label_2394
.label_2488:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
.label_2486:
	jmp	.label_2496
.label_2496:
	jmp	.label_2498
.label_2411:
	cmp	qword ptr [rbp - 0x80], -1
	jne	.label_2409
	mov	eax, 1
	mov	ecx, eax
	mov	qword ptr [rbp - 0x180], rcx
	jmp	.label_2410
.label_2409:
	mov	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x180], rax
.label_2410:
	mov	rax, qword ptr [rbp - 0x180]
	add	rax,  qword ptr [word ptr [head]]
	mov	qword ptr [word ptr [head]],  rax
	jmp	.label_2412
.label_2536:
	jmp	.label_2519
.label_2525:
	jmp	.label_2518
.label_2518:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rdx, qword ptr [rbp - 0x50]
	shl	rdx, 3
	add	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x48]
	shl	rdx, 3
	mov	rdi, rax
	mov	rsi, rcx
	call	memcpy
	mov	dword ptr [rbp - 4], 0
.label_2521:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x70
	pop	rbp
	ret	
.label_2522:
	jmp	.label_2523
.label_2528:
	jmp	.label_2529
	.section	.text
	.align	16
	#Procedure 0x41b4e2

	.globl re_node_set_add_intersect
	.type re_node_set_add_intersect, @function
re_node_set_add_intersect:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx + 8], 0
	je	.label_2539
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 8], 0
	jne	.label_2516
.label_2539:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_2521
.label_2535:
	jmp	.label_2519
.label_2519:
	jmp	.label_2527
.label_2538:
	jmp	.label_2529
.label_2529:
	jmp	.label_2523
.label_2523:
	jmp	.label_2533
.label_2537:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
.label_2540:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rcx + 8]
	mov	rcx, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rcx + 8]
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	sub	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	sub	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	sub	rax, 1
	mov	qword ptr [rbp - 0x40], rax
.label_2533:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rdx + 0x10]
	cmp	rax, qword ptr [rdx + rcx*8]
	jne	.label_2524
	jmp	.label_2520
.label_2520:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x40], 0
	mov	byte ptr [rbp - 0x61], cl
	jl	.label_2534
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x10]
	cmp	rax, qword ptr [rdx + rcx*8]
	setg	sil
	mov	byte ptr [rbp - 0x61], sil
.label_2534:
	mov	al, byte ptr [rbp - 0x61]
	test	al, 1
	jne	.label_2514
	jmp	.label_2517
.label_2514:
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, -1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_2520
.label_2532:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x40]
	add	rcx, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, -1
	mov	qword ptr [rbp - 0x40], rax
	cmp	rax, 0
	jge	.label_2535
	jmp	.label_2525
.label_2515:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, -1
	mov	qword ptr [rbp - 0x28], rax
	cmp	rax, 0
	jge	.label_2538
	jmp	.label_2530
.label_2516:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rcx + 8]
	mov	rcx, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rcx + 8]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx]
	jle	.label_2540
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rcx + 8]
	mov	rcx, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rcx]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x58]
	shl	rcx, 3
	mov	rdi, rax
	mov	rsi, rcx
	call	realloc
	mov	qword ptr [rbp - 0x60], rax
	cmp	qword ptr [rbp - 0x60], 0
	sete	dl
	and	dl, 1
	movzx	r8d, dl
	movsxd	rax, r8d
	cmp	rax, 0
	je	.label_2537
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_2521
.label_2524:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rdx + 0x10]
	cmp	rax, qword ptr [rdx + rcx*8]
	jge	.label_2515
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, -1
	mov	qword ptr [rbp - 0x30], rax
	cmp	rax, 0
	jge	.label_2528
	jmp	.label_2530
.label_2530:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	sub	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rcx + 8]
	mov	rcx, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rcx + 8]
	sub	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x38]
	sub	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rcx + 8]
	mov	qword ptr [rcx + 8], rax
	cmp	qword ptr [rbp - 0x48], 0
	jle	.label_2518
	cmp	qword ptr [rbp - 0x40], 0
	jl	.label_2518
	jmp	.label_2527
.label_2527:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x10]
	cmp	rax, qword ptr [rdx + rcx*8]
	jle	.label_2532
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x38], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rsi, rdx
	add	rsi, -1
	mov	qword ptr [rbp - 0x48], rsi
	add	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	qword ptr [rdx + rcx*8], rax
	cmp	qword ptr [rbp - 0x48], 0
	jne	.label_2536
	jmp	.label_2525
.label_2517:
	cmp	qword ptr [rbp - 0x40], 0
	jl	.label_2526
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x10]
	cmp	rax, qword ptr [rdx + rcx*8]
	je	.label_2531
.label_2526:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rdx, rcx
	add	rdx, -1
	mov	qword ptr [rbp - 0x50], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	qword ptr [rdx + rcx*8 - 8], rax
.label_2531:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, -1
	mov	qword ptr [rbp - 0x28], rax
	cmp	rax, 0
	jl	.label_2541
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, -1
	mov	qword ptr [rbp - 0x30], rax
	cmp	rax, 0
	jge	.label_2522
.label_2541:
	jmp	.label_2530
	.section	.text
	.align	16
	#Procedure 0x41b8b0
	.globl c_isblank
	.type c_isblank, @function
c_isblank:

	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0x20
	mov	byte ptr [rbp - 5], al
	je	.label_2542
	cmp	dword ptr [rbp - 4], 9
	sete	al
	mov	byte ptr [rbp - 5], al
.label_2542:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41b8da
	.globl sub_41b8da
	.type sub_41b8da, @function
sub_41b8da:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x41b8e0

	.globl output_one_roff_line
	.type output_one_roff_line, @function
output_one_roff_line:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	movabs	rdi, OFFSET FLAT:label_2547
	mov	rsi,  qword ptr [word ptr [macro_name]]
	mov	al, 0
	call	printf
	mov	rdi,  qword ptr [word ptr [tail]]
	mov	rsi,  qword ptr [word ptr [label_175]]
	mov	dword ptr [rbp - 4], eax
	call	print_field
	test	byte ptr [byte ptr [tail_truncation]],  1
	je	.label_2544
	mov	rdi,  qword ptr [word ptr [truncation_string]]
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	dword ptr [rbp - 8], eax
.label_2544:
	mov	edi, 0x22
	call	putchar_unlocked
	movabs	rdi, OFFSET FLAT:label_2543
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	dword ptr [rbp - 0xc], eax
	call	fputs_unlocked
	test	byte ptr [byte ptr [before_truncation]],  1
	mov	dword ptr [rbp - 0x10], eax
	je	.label_2548
	mov	rdi,  qword ptr [word ptr [truncation_string]]
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x14], eax
.label_2548:
	mov	rdi,  qword ptr [word ptr [before]]
	mov	rsi,  qword ptr [word ptr [label_447]]
	call	print_field
	mov	edi, 0x22
	call	putchar_unlocked
	movabs	rdi, OFFSET FLAT:label_2543
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	dword ptr [rbp - 0x18], eax
	call	fputs_unlocked
	mov	rdi,  qword ptr [word ptr [keyafter]]
	mov	rsi,  qword ptr [word ptr [label_440]]
	mov	dword ptr [rbp - 0x1c], eax
	call	print_field
	test	byte ptr [byte ptr [keyafter_truncation]],  1
	je	.label_2546
	mov	rdi,  qword ptr [word ptr [truncation_string]]
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x20], eax
.label_2546:
	mov	edi, 0x22
	call	putchar_unlocked
	movabs	rdi, OFFSET FLAT:label_2543
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	dword ptr [rbp - 0x24], eax
	call	fputs_unlocked
	test	byte ptr [byte ptr [head_truncation]],  1
	mov	dword ptr [rbp - 0x28], eax
	je	.label_2549
	mov	rdi,  qword ptr [word ptr [truncation_string]]
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x2c], eax
.label_2549:
	mov	rdi,  qword ptr [word ptr [head]]
	mov	rsi,  qword ptr [word ptr [label_176]]
	call	print_field
	mov	edi, 0x22
	call	putchar_unlocked
	test	byte ptr [byte ptr [auto_reference]],  1
	mov	dword ptr [rbp - 0x30], eax
	jne	.label_2550
	test	byte ptr [byte ptr [input_reference]],  1
	je	.label_2545
.label_2550:
	movabs	rdi, OFFSET FLAT:label_2543
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	rdi,  qword ptr [word ptr [reference]]
	mov	rsi,  qword ptr [word ptr [label_445]]
	mov	dword ptr [rbp - 0x34], eax
	call	print_field
	mov	edi, 0x22
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x38], eax
.label_2545:
	mov	edi, 0xa
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x3c], eax
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41badd
	.globl sub_41badd
	.type sub_41badd, @function
sub_41badd:

	nop	dword ptr [rax]
.label_2551:
	lea	rdi, [rbp - 0x48]
	mov	rax, qword ptr [rbp - 0x78]
	mov	rsi, qword ptr [rax + 0x50]
	mov	rdx, qword ptr [rbp - 0x50]
	call	re_node_set_init_union
	mov	dword ptr [rbp - 0x24], eax
	cmp	dword ptr [rbp - 0x24], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rdx, eax
	cmp	rdx, 0
	je	.label_2569
	mov	eax, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2555
.label_2566:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x48]
	movsxd	rcx, dword ptr [rbp - 0x5c]
	add	rax, rcx
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rax + 0xe0]
	cmp	edx, dword ptr [rbp - 0x5c]
	jge	.label_2567
	mov	eax, dword ptr [rbp - 0x5c]
	mov	dword ptr [rbp - 0x7c], eax
	jmp	.label_2559
.label_2556:
	jmp	.label_2558
.label_2558:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x48]
	call	check_node_accept_bytes
	mov	dword ptr [rbp - 0x5c], eax
	cmp	dword ptr [rbp - 0x5c], 0
	jne	.label_2566
	jmp	.label_2560
.label_2568:
	mov	dword ptr [rbp - 4], 0
.label_2555:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x80
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41bb91
	.globl sub_41bb91
	.type sub_41bb91, @function
sub_41bb91:

	nop	
.label_2569:
	jmp	.label_2553
.label_2553:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x68]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rcx + 0xa0]
	mov	rsi, rax
	call	re_string_context_at
	lea	rdi, [rbp - 0x24]
	lea	rdx, [rbp - 0x48]
	mov	dword ptr [rbp - 0x6c], eax
	mov	rsi, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x6c]
	call	re_acquire_state_context
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0xb8]
	mov	qword ptr [rsi + rdx*8], rax
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_2557
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdi, rax
	call	free
.label_2557:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0xb8]
	cmp	qword ptr [rsi + rdx*8], 0
	mov	byte ptr [rbp - 0x7d], cl
	jne	.label_2570
	cmp	dword ptr [rbp - 0x24], 0
	setne	al
	mov	byte ptr [rbp - 0x7d], al
.label_2570:
	mov	al, byte ptr [rbp - 0x7d]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_2563
	mov	eax, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2555
.label_2564:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x30]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rdx + 0x18]
	imul	rcx, qword ptr [rdx + rcx*8], 0x18
	add	rax, rcx
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0xb8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x78], rax
	cmp	qword ptr [rbp - 0x78], 0
	jne	.label_2551
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rax]
	mov	qword ptr [rbp - 0x48], rcx
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x40], rcx
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_2553
.label_2563:
	jmp	.label_2560
.label_2560:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_2565
.label_2567:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0xe0]
	mov	dword ptr [rbp - 0x7c], ecx
.label_2559:
	mov	eax, dword ptr [rbp - 0x7c]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	dword ptr [rcx + 0xe0], eax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x68]
	call	clean_state_log_if_needed
	mov	dword ptr [rbp - 0x24], eax
	cmp	dword ptr [rbp - 0x24], 0
	setne	dl
	and	dl, 1
	movzx	eax, dl
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_2564
	mov	eax, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2555
	.section	.text
	.align	16
	#Procedure 0x41bd09

	.globl transit_state_mb
	.type transit_state_mb, @function
transit_state_mb:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x80
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0x98]
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x30], 0
.label_2565:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 0x10]
	jge	.label_2568
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x20]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	shr	edx, 0x14
	and	edx, 1
	cmp	edx, 0
	jne	.label_2562
	jmp	.label_2560
.label_2562:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x20]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	shr	edx, 8
	and	edx, 0x3ff
	cmp	edx, 0
	je	.label_2558
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rax + 0x48]
	mov	rax, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rax + 0xa0]
	call	re_string_context_at
	mov	dword ptr [rbp - 0x6c], eax
	mov	rsi, qword ptr [rbp - 0x58]
	mov	rdi, qword ptr [rbp - 0x20]
	shl	rsi, 4
	add	rsi, qword ptr [rdi]
	mov	eax, dword ptr [rsi + 8]
	shr	eax, 8
	and	eax, 0x3ff
	and	eax, 4
	cmp	eax, 0
	je	.label_2552
	mov	eax, dword ptr [rbp - 0x6c]
	and	eax, 1
	cmp	eax, 0
	je	.label_2561
.label_2552:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x20]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	shr	edx, 8
	and	edx, 0x3ff
	and	edx, 8
	cmp	edx, 0
	je	.label_2554
	mov	eax, dword ptr [rbp - 0x6c]
	and	eax, 1
	cmp	eax, 0
	jne	.label_2561
.label_2554:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x20]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	shr	edx, 8
	and	edx, 0x3ff
	and	edx, 0x20
	cmp	edx, 0
	je	.label_2571
	mov	eax, dword ptr [rbp - 0x6c]
	and	eax, 2
	cmp	eax, 0
	je	.label_2561
.label_2571:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x20]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	shr	edx, 8
	and	edx, 0x3ff
	and	edx, 0x80
	cmp	edx, 0
	je	.label_2556
	mov	eax, dword ptr [rbp - 0x6c]
	and	eax, 8
	cmp	eax, 0
	jne	.label_2556
.label_2561:
	jmp	.label_2560
	.section	.text
	.align	16
	#Procedure 0x41bea0
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	eax, edi
	add	eax, -9
	sub	eax, 5
	mov	dword ptr [rbp - 0xc], edi
	mov	dword ptr [rbp - 0x10], eax
	jb	.label_2572
	jmp	.label_2574
.label_2574:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x20
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_2575
	jmp	.label_2572
.label_2572:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2573
.label_2575:
	mov	byte ptr [rbp - 1], 0
.label_2573:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41beeb
	.globl sub_41beeb
	.type sub_41beeb, @function
sub_41beeb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x41bef0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	qword ptr [rbp - 0x30], 0
.label_2578:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_2576
	jmp	.label_2577
.label_2577:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_2578
.label_2576:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	r8, qword ptr [rbp - 0x28]
	mov	r9, qword ptr [rbp - 0x30]
	call	version_etc_arn
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41bf60
	.globl rpl_regerror
	.type rpl_regerror, @function
rpl_regerror:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	al, 1
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	dword ptr [rbp - 0x34], 0x11
	cmp	dword ptr [rbp - 4], 0
	mov	byte ptr [rbp - 0x41], al
	jl	.label_2579
	mov	eax, dword ptr [rbp - 4]
	cmp	eax, dword ptr [rbp - 0x34]
	setge	cl
	mov	byte ptr [rbp - 0x41], cl
.label_2579:
	mov	al, byte ptr [rbp - 0x41]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_2582
	call	abort
.label_2582:
	movabs	rax, OFFSET FLAT:__re_error_msgid
	movsxd	rcx, dword ptr [rbp - 4]
	add	rax,  qword ptr [word ptr [+ (rcx * 8) + __re_error_msgid_idx]]
	mov	rdi, rax
	call	gettext
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x20], 0
	setne	dl
	and	dl, 1
	movzx	esi, dl
	movsxd	rax, esi
	cmp	rax, 0
	je	.label_2580
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x20]
	seta	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_2581
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0
.label_2581:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x40]
	call	memcpy
.label_2580:
	mov	rax, qword ptr [rbp - 0x30]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41c05a
	.globl sub_41c05a
	.type sub_41c05a, @function
sub_41c05a:

	nop	word ptr [rax + rax]
.label_2598:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rax, qword ptr [rcx + rax*8]
	mov	dl, byte ptr [rax + 0x68]
	shr	dl, 7
	movzx	esi, dl
	cmp	esi, 0
	je	.label_2607
	lea	rdi, [rbp - 0x1c]
	lea	rdx, [rbp - 0x90]
	mov	ecx, 1
	mov	rsi, qword ptr [rbp - 0x10]
	call	re_acquire_state_context
	xor	ecx, ecx
	mov	r8b, cl
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	qword ptr [rsi + rdx*8], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x70]
	cmp	qword ptr [rdx + rax*8], 0
	mov	byte ptr [rbp - 0xda], r8b
	jne	.label_2619
	cmp	dword ptr [rbp - 0x1c], 0
	setne	al
	mov	byte ptr [rbp - 0xda], al
.label_2619:
	mov	al, byte ptr [rbp - 0xda]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_2635
	jmp	.label_2591
.label_2632:
	lea	rdi, [rbp - 0x1c]
	lea	rdx, [rbp - 0x90]
	xor	ecx, ecx
	mov	rsi, qword ptr [rbp - 0x10]
	call	re_acquire_state_context
	xor	ecx, ecx
	mov	r8b, cl
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x68]
	mov	qword ptr [rsi + rdx*8], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x68]
	cmp	qword ptr [rdx + rax*8], 0
	mov	byte ptr [rbp - 0xd9], r8b
	jne	.label_2583
	cmp	dword ptr [rbp - 0x1c], 0
	setne	al
	mov	byte ptr [rbp - 0xd9], al
.label_2583:
	mov	al, byte ptr [rbp - 0xd9]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_2598
	jmp	.label_2591
.label_2603:
	jmp	.label_2604
.label_2604:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_2606
.label_2644:
	mov	byte ptr [rbp - 0x4a], 1
.label_2650:
	lea	rdi, [rbp - 0xc0]
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x58]
	shl	rcx, 3
	add	rax, rcx
	mov	qword ptr [rbp - 0x70], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x58]
	shl	rcx, 3
	add	rax, rcx
	mov	qword ptr [rbp - 0x78], rax
	call	bitset_empty
	mov	qword ptr [rbp - 0x28], 0
.label_2615:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x58]
	jge	.label_2623
	mov	qword ptr [rbp - 0x88], 0
	mov	qword ptr [rbp - 0x30], 0
.label_2641:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	imul	rcx, rcx, 0x18
	add	rcx, qword ptr [rbp - 0x98]
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_2632
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	imul	rcx, rcx, 0x18
	add	rcx, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0xd8], rax
	cmp	qword ptr [rbp - 0xd8], -1
	je	.label_2616
	lea	rdi, [rbp - 0x90]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x30]
	imul	rcx, qword ptr [rbp - 0xd8], 0x18
	add	rax, rcx
	mov	rsi, rax
	call	re_node_set_merge
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], 0
	setne	dl
	and	dl, 1
	movzx	eax, dl
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_2599
	jmp	.label_2591
.label_2626:
	test	byte ptr [rbp - 0x49], 1
	je	.label_2612
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rdi, rax
	call	free
.label_2612:
	mov	byte ptr [rbp - 1], 1
.label_2624:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	mov	rsp, rbp
	pop	rbp
	ret	
.label_2637:
	test	byte ptr [rbp - 0x49], 1
	je	.label_2618
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rdi, rax
	call	free
.label_2618:
	mov	byte ptr [rbp - 1], 0
	jmp	.label_2624
.label_2640:
	mov	qword ptr [rbp - 0x28], 0
.label_2629:
	cmp	qword ptr [rbp - 0x28], 4
	jge	.label_2630
	mov	rax, qword ptr [rbp - 0x28]
	shl	rax, 6
	mov	ecx, eax
	mov	dword ptr [rbp - 0x34], ecx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp + rax*8 - 0xc0]
	mov	qword ptr [rbp - 0x40], rax
	mov	qword ptr [rbp - 0x48], 1
.label_2595:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_2638
	mov	rax, qword ptr [rbp - 0x40]
	and	rax, 1
	cmp	rax, 0
	je	.label_2590
	mov	qword ptr [rbp - 0x30], 0
.label_2610:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	shl	rcx, 5
	add	rcx, qword ptr [rbp - 0xa0]
	mov	rax, qword ptr [rcx + rax*8]
	and	rax, qword ptr [rbp - 0x48]
	cmp	rax, 0
	jne	.label_2587
	jmp	.label_2617
.label_2617:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_2610
.label_2638:
	jmp	.label_2601
.label_2601:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_2629
.label_2589:
	jmp	.label_2608
.label_2608:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_2609
.label_2645:
	mov	byte ptr [rbp - 1], 0
	jmp	.label_2624
.label_2646:
	imul	rax, qword ptr [rbp - 0x58], 3
	shl	rax, 3
	mov	rdi, rax
	call	malloc
	mov	qword ptr [rbp - 0x68], rax
	cmp	qword ptr [rbp - 0x68], 0
	sete	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_2644
	jmp	.label_2591
.label_2591:
	test	byte ptr [rbp - 0x4a], 1
	je	.label_2627
	mov	rax, qword ptr [rbp - 0x68]
	mov	rdi, rax
	call	free
.label_2627:
	mov	rax, qword ptr [rbp - 0x80]
	mov	rdi, rax
	call	free
	mov	qword ptr [rbp - 0x28], 0
.label_2585:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x58]
	jge	.label_2637
	mov	rax, qword ptr [rbp - 0x98]
	imul	rcx, qword ptr [rbp - 0x28], 0x18
	add	rax, rcx
	mov	rax, qword ptr [rax + 0x10]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_2585
.label_2630:
	jmp	.label_2592
.label_2647:
	lea	rdi, [rbp - 0x90]
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	mov	rsi, rax
	call	re_node_set_alloc
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rsi, eax
	cmp	rsi, 0
	je	.label_2649
	jmp	.label_2591
.label_2652:
	imul	rax, qword ptr [rbp - 0x58], 3
	shl	rax, 3
	add	rax, 0x3800
	cmp	rax, 0xfc0
	jae	.label_2646
	mov	rax, qword ptr [rbp - 0x58]
	lea	rax, [rax + rax*2]
	lea	rax, [rax*8 + 0xf]
	and	rax, 0xfffffffffffffff0
	mov	rcx, rsp
	sub	rcx, rax
	mov	rsp, rcx
	mov	qword ptr [rbp - 0x68], rcx
	jmp	.label_2650
.label_2587:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rcx + rax*8 + 0xb8]
	and	rax, qword ptr [rbp - 0x48]
	cmp	rax, 0
	je	.label_2620
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rcx + rax*8]
	movsxd	rcx, dword ptr [rbp - 0x34]
	mov	rdx, qword ptr [rbp - 0x60]
	mov	qword ptr [rdx + rcx*8], rax
	jmp	.label_2628
.label_2623:
	test	byte ptr [rbp - 0x35], 1
	jne	.label_2634
	mov	eax, 8
	mov	edi, eax
	mov	eax, 0x100
	mov	esi, eax
	call	calloc
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rsi + 0x58], rax
	mov	qword ptr [rbp - 0x60], rax
	cmp	qword ptr [rbp - 0x60], 0
	sete	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_2640
	jmp	.label_2591
.label_2635:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x70]
	cmp	rax, qword ptr [rdx + rcx*8]
	je	.label_2593
	mov	rax, qword ptr [rbp - 0x10]
	cmp	dword ptr [rax + 0xb4], 1
	jle	.label_2593
	mov	byte ptr [rbp - 0x35], 1
.label_2593:
	lea	rdi, [rbp - 0x1c]
	lea	rdx, [rbp - 0x90]
	mov	ecx, 2
	mov	rsi, qword ptr [rbp - 0x10]
	call	re_acquire_state_context
	xor	ecx, ecx
	mov	r8b, cl
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x78]
	mov	qword ptr [rsi + rdx*8], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x78]
	cmp	qword ptr [rdx + rax*8], 0
	mov	byte ptr [rbp - 0xdb], r8b
	jne	.label_2611
	cmp	dword ptr [rbp - 0x1c], 0
	setne	al
	mov	byte ptr [rbp - 0xdb], al
.label_2611:
	mov	al, byte ptr [rbp - 0xdb]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_2622
	jmp	.label_2591
.label_2649:
	movabs	rax, 0xaaaaaaaaaaaa855
	mov	qword ptr [rbp - 0xd0], rax
	mov	rax, qword ptr [rbp - 0xd0]
	cmp	rax, qword ptr [rbp - 0x58]
	setb	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_2652
	jmp	.label_2591
.label_2584:
	mov	qword ptr [rbp - 0x28], 0
.label_2609:
	cmp	qword ptr [rbp - 0x28], 4
	jge	.label_2642
	mov	rax, qword ptr [rbp - 0x28]
	shl	rax, 6
	mov	ecx, eax
	mov	dword ptr [rbp - 0x34], ecx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp + rax*8 - 0xc0]
	mov	qword ptr [rbp - 0x40], rax
	mov	qword ptr [rbp - 0x48], 1
.label_2633:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_2589
	mov	rax, qword ptr [rbp - 0x40]
	and	rax, 1
	cmp	rax, 0
	je	.label_2597
	mov	qword ptr [rbp - 0x30], 0
.label_2614:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	shl	rcx, 5
	add	rcx, qword ptr [rbp - 0xa0]
	mov	rax, qword ptr [rcx + rax*8]
	and	rax, qword ptr [rbp - 0x48]
	cmp	rax, 0
	jne	.label_2602
	jmp	.label_2613
.label_2613:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_2614
	.section	.text
	.align	16
	#Procedure 0x41c68e

	.globl build_trtable
	.type build_trtable, @function
build_trtable:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xe0
	mov	eax, 0x3800
	mov	ecx, eax
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	byte ptr [rbp - 0x35], 0
	mov	byte ptr [rbp - 0x49], 0
	mov	byte ptr [rbp - 0x4a], 0
	mov	qword ptr [rbp - 0x68], 0
	mov	rdi, rcx
	call	malloc
	mov	qword ptr [rbp - 0xc8], rax
	cmp	qword ptr [rbp - 0xc8], 0
	sete	dl
	and	dl, 1
	movzx	r8d, dl
	movsxd	rax, r8d
	cmp	rax, 0
	je	.label_2643
	mov	byte ptr [rbp - 1], 0
	jmp	.label_2624
.label_2642:
	jmp	.label_2592
.label_2592:
	mov	eax, 0xa
	mov	esi, eax
	lea	rdi, [rbp - 0xc0]
	call	bitset_contain
	test	al, 1
	jne	.label_2586
	jmp	.label_2588
.label_2586:
	mov	qword ptr [rbp - 0x30], 0
.label_2606:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x58]
	jge	.label_2594
	mov	eax, 0xa
	mov	esi, eax
	mov	rcx, qword ptr [rbp - 0x30]
	shl	rcx, 5
	add	rcx, qword ptr [rbp - 0xa0]
	mov	rdi, rcx
	call	bitset_contain
	test	al, 1
	jne	.label_2600
	jmp	.label_2603
.label_2600:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	qword ptr [rcx + 0x50], rax
	test	byte ptr [rbp - 0x35], 1
	je	.label_2605
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	qword ptr [rcx + 0x850], rax
.label_2605:
	jmp	.label_2594
.label_2602:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rax, qword ptr [rcx + rax*8]
	movsxd	rcx, dword ptr [rbp - 0x34]
	mov	rdx, qword ptr [rbp - 0x60]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rcx + rax*8]
	mov	esi, dword ptr [rbp - 0x34]
	add	esi, 0x100
	movsxd	rcx, esi
	mov	rdx, qword ptr [rbp - 0x60]
	mov	qword ptr [rdx + rcx*8], rax
.label_2597:
	jmp	.label_2631
.label_2631:
	mov	rax, qword ptr [rbp - 0x48]
	shl	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x40]
	shr	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	mov	ecx, dword ptr [rbp - 0x34]
	add	ecx, 1
	mov	dword ptr [rbp - 0x34], ecx
	jmp	.label_2633
.label_2634:
	mov	eax, 8
	mov	edi, eax
	mov	eax, 0x200
	mov	esi, eax
	call	calloc
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rsi + 0x60], rax
	mov	qword ptr [rbp - 0x60], rax
	cmp	qword ptr [rbp - 0x60], 0
	sete	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_2584
	jmp	.label_2591
.label_2622:
	jmp	.label_2596
.label_2607:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x70]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	qword ptr [rdx + rcx*8], rax
.label_2596:
	lea	rdi, [rbp - 0xc0]
	mov	rax, qword ptr [rbp - 0x28]
	shl	rax, 5
	add	rax, qword ptr [rbp - 0xa0]
	mov	rsi, rax
	call	bitset_merge
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_2615
.label_2594:
	jmp	.label_2588
.label_2588:
	test	byte ptr [rbp - 0x4a], 1
	je	.label_2621
	mov	rax, qword ptr [rbp - 0x68]
	mov	rdi, rax
	call	free
.label_2621:
	mov	rax, qword ptr [rbp - 0x80]
	mov	rdi, rax
	call	free
	mov	qword ptr [rbp - 0x28], 0
.label_2639:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x58]
	jge	.label_2626
	mov	rax, qword ptr [rbp - 0x98]
	imul	rcx, qword ptr [rbp - 0x28], 0x18
	add	rax, rcx
	mov	rax, qword ptr [rax + 0x10]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_2639
.label_2643:
	mov	byte ptr [rbp - 0x49], 1
	mov	rax, qword ptr [rbp - 0xc8]
	mov	qword ptr [rbp - 0x98], rax
	mov	rax, qword ptr [rbp - 0xc8]
	add	rax, 0x1800
	mov	qword ptr [rbp - 0xa0], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rax + 0x58], 0
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rax + 0x60], 0
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rbp - 0xa0]
	call	group_nodes_into_DFAstates
	mov	qword ptr [rbp - 0x58], rax
	cmp	qword ptr [rbp - 0x58], 0
	setle	r8b
	and	r8b, 1
	movzx	r9d, r8b
	movsxd	rax, r9d
	cmp	rax, 0
	je	.label_2647
	test	byte ptr [rbp - 0x49], 1
	je	.label_2651
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rdi, rax
	call	free
.label_2651:
	cmp	qword ptr [rbp - 0x58], 0
	jne	.label_2645
	mov	eax, 8
	mov	edi, eax
	mov	eax, 0x100
	mov	esi, eax
	call	calloc
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rsi + 0x58], rax
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0x58], 0
	sete	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_2648
	mov	byte ptr [rbp - 1], 0
	jmp	.label_2624
.label_2648:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2624
.label_2599:
	jmp	.label_2616
.label_2616:
	jmp	.label_2625
.label_2625:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_2641
.label_2620:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rax, qword ptr [rcx + rax*8]
	movsxd	rcx, dword ptr [rbp - 0x34]
	mov	rdx, qword ptr [rbp - 0x60]
	mov	qword ptr [rdx + rcx*8], rax
.label_2628:
	jmp	.label_2590
.label_2590:
	jmp	.label_2636
.label_2636:
	mov	rax, qword ptr [rbp - 0x48]
	shl	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x40]
	shr	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	mov	ecx, dword ptr [rbp - 0x34]
	add	ecx, 1
	mov	dword ptr [rbp - 0x34], ecx
	jmp	.label_2595
	.section	.text
	.align	16
	#Procedure 0x41ca50

	.globl compile_regex
	.type compile_regex, @function
compile_regex:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	xor	eax, eax
	mov	ecx, eax
	movabs	rdx, OFFSET FLAT:folded_chars
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	add	rdi, 8
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi], 0
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 8], 0
	mov	rdi, qword ptr [rbp - 8]
	add	rdi, 0x48
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + 0x20], rdi
	mov	r8b,  byte ptr [byte ptr [ignore_case]]
	test	r8b, 1
	cmovne	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x28], rcx
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x28], rdi
	mov	rdi, rcx
	call	strlen
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, rax
	call	rpl_re_compile_pattern
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_2654
	movabs	rdi, OFFSET FLAT:label_2653
	call	gettext
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0x38], rcx
	call	quote
	mov	edi, 1
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	r8, rax
	mov	al, 0
	call	error
.label_2654:
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_re_compile_fastmap
	mov	dword ptr [rbp - 0x3c], eax
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41cb42
	.globl sub_41cb42
	.type sub_41cb42, @function
sub_41cb42:

	nop	word ptr cs:[rax + rax]
.label_2658:
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_2655
.label_2656:
	mov	byte ptr [rbp - 1], 0
.label_2657:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x80
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41cb76
	.globl sub_41cb76
	.type sub_41cb76, @function
sub_41cb76:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x41cb7a

	.globl check_dst_limits
	.type check_dst_limits, @function
check_dst_limits:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x80
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	qword ptr [rbp - 0x38], r9
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x98]
	mov	qword ptr [rbp - 0x40], rcx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x28]
	call	search_cur_bkref_entry
	mov	qword ptr [rbp - 0x60], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x38]
	call	search_cur_bkref_entry
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0x48], 0
.label_2655:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_2656
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0xd8]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x10]
	imul	rcx, qword ptr [rdx + rcx*8], 0x28
	add	rax, rcx
	mov	qword ptr [rbp - 0x78], rax
	mov	rax, qword ptr [rbp - 0x78]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x40]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x70], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rsi, qword ptr [rcx + rax*8]
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	r8, qword ptr [rbp - 0x28]
	mov	r9, qword ptr [rbp - 0x60]
	call	check_dst_limits_calc_pos
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x58], rcx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	rsi, qword ptr [rdx + rcx*8]
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	r8, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rbp - 0x68]
	call	check_dst_limits_calc_pos
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x50], rcx
	mov	rcx, qword ptr [rbp - 0x50]
	cmp	rcx, qword ptr [rbp - 0x58]
	jne	.label_2659
	jmp	.label_2658
.label_2659:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2657
.label_2669:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 1
	mov	dword ptr [rax + 8], ecx
.label_2660:
	mov	dword ptr [rbp - 4], 1
.label_2664:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41ccbf
	.globl sub_41ccbf
	.type sub_41ccbf, @function
sub_41ccbf:

	nop	word ptr [rax + rax]
.label_2679:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0x15
	mov	dword ptr [rax + 8], ecx
	jmp	.label_2660
	.section	.text
	.align	16
	#Procedure 0x41ccdd

	.globl peek_token_bracket
	.type peek_token_bracket, @function
peek_token_bracket:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x68]
	mov	rsi, qword ptr [rbp - 0x18]
	cmp	rdx, qword ptr [rsi + 0x48]
	jg	.label_2675
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 2
	mov	dword ptr [rax + 8], ecx
	mov	dword ptr [rbp - 4], 0
	jmp	.label_2664
.label_2673:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0x1c
	mov	dword ptr [rax + 8], ecx
	jmp	.label_2672
.label_2680:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0x1a
	mov	dword ptr [rax + 8], ecx
	jmp	.label_2672
.label_2662:
	movzx	eax, byte ptr [rbp - 0x21]
	mov	ecx, eax
	sub	ecx, 0x2d
	mov	dword ptr [rbp - 0x3c], eax
	mov	dword ptr [rbp - 0x40], ecx
	je	.label_2670
	jmp	.label_2676
.label_2676:
	mov	eax, dword ptr [rbp - 0x3c]
	sub	eax, 0x5d
	mov	dword ptr [rbp - 0x44], eax
	je	.label_2679
	jmp	.label_2681
.label_2681:
	mov	eax, dword ptr [rbp - 0x3c]
	sub	eax, 0x5e
	mov	dword ptr [rbp - 0x48], eax
	je	.label_2661
	jmp	.label_2669
.label_2670:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0x16
	mov	dword ptr [rax + 8], ecx
	jmp	.label_2660
.label_2668:
	mov	byte ptr [rbp - 0x23], 0
.label_2677:
	mov	al, byte ptr [rbp - 0x23]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	byte ptr [rcx], al
	mov	dword ptr [rbp - 0x28], 2
	movzx	edx, byte ptr [rbp - 0x23]
	mov	esi, edx
	sub	esi, 0x2e
	mov	dword ptr [rbp - 0x2c], edx
	mov	dword ptr [rbp - 0x30], esi
	je	.label_2680
	jmp	.label_2671
.label_2671:
	mov	eax, dword ptr [rbp - 0x2c]
	sub	eax, 0x3a
	mov	dword ptr [rbp - 0x34], eax
	je	.label_2674
	jmp	.label_2678
.label_2678:
	mov	eax, dword ptr [rbp - 0x2c]
	sub	eax, 0x3d
	mov	dword ptr [rbp - 0x38], eax
	je	.label_2673
	jmp	.label_2667
.label_2675:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 8]
	mov	dl, byte ptr [rcx + rax]
	mov	byte ptr [rbp - 0x21], dl
	mov	dl, byte ptr [rbp - 0x21]
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax], dl
	mov	rax, qword ptr [rbp - 0x18]
	cmp	dword ptr [rax + 0x90], 1
	jle	.label_2663
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 0x30]
	je	.label_2663
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x10]
	cmp	dword ptr [rcx + rax*4], -1
	jne	.label_2663
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 1
	mov	dword ptr [rax + 8], ecx
	mov	dword ptr [rbp - 4], 1
	jmp	.label_2664
.label_2666:
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, 0x5b
	jne	.label_2662
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x48]
	add	rax, 1
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 0x58]
	jge	.label_2668
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 8]
	mov	dl, byte ptr [rcx + rax + 1]
	mov	byte ptr [rbp - 0x23], dl
	jmp	.label_2677
.label_2674:
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 4
	cmp	rax, 0
	je	.label_2665
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0x1e
	mov	dword ptr [rax + 8], ecx
	jmp	.label_2672
.label_2661:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0x19
	mov	dword ptr [rax + 8], ecx
	jmp	.label_2660
.label_2663:
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, 0x5c
	jne	.label_2666
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 1
	cmp	rax, 0
	je	.label_2666
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x48]
	add	rax, 1
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 0x58]
	jge	.label_2666
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rax + 0x48]
	add	rcx, 1
	mov	qword ptr [rax + 0x48], rcx
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 8]
	mov	dl, byte ptr [rcx + rax]
	mov	byte ptr [rbp - 0x22], dl
	mov	dl, byte ptr [rbp - 0x22]
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax], dl
	mov	rax, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rax + 8]
	and	esi, 0xffffff00
	or	esi, 1
	mov	dword ptr [rax + 8], esi
	mov	dword ptr [rbp - 4], 1
	jmp	.label_2664
.label_2665:
	jmp	.label_2667
.label_2667:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 1
	mov	dword ptr [rax + 8], ecx
	mov	dl, byte ptr [rbp - 0x21]
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax], dl
	mov	dword ptr [rbp - 0x28], 1
.label_2672:
	mov	eax, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2664
	.section	.text
	.align	16
	#Procedure 0x41cfc0

	.globl free_tree
	.type free_tree, @function
free_tree:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	add	rsi, 0x28
	mov	rdi, rsi
	call	free_token
	xor	eax, eax
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41cfe8
	.globl sub_41cfe8
	.type sub_41cfe8, @function
sub_41cfe8:

	nop	dword ptr [rax + rax]
.label_2688:
	mov	rax, -1
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x38], rax
.label_2687:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x20]
	setb	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_2683
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_2682
	.section	.text
	.align	16
	#Procedure 0x41d02d

	.globl match_ctx_init
	.type match_ctx_init, @function
match_ctx_init:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	qword ptr [rbp - 0x20], rdx
	mov	esi, dword ptr [rbp - 0x14]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	dword ptr [rdx + 0xa0], esi
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0xa8], -1
	cmp	qword ptr [rbp - 0x20], 0
	jle	.label_2685
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, -1
	mov	qword ptr [rbp - 0x28], 0x28
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, rcx
	xor	edx, edx
	div	qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	cmp	rcx, rax
	jae	.label_2688
	movabs	rax, 0x7fffffffffffffff
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_2687
.label_2683:
	imul	rdi, qword ptr [rbp - 0x20], 0x28
	call	malloc
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 0xd8], rax
	mov	rax, qword ptr [rbp - 0x20]
	shl	rax, 3
	mov	rdi, rax
	call	malloc
	mov	cl, 1
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 0xf8], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0xd8], 0
	mov	byte ptr [rbp - 0x39], cl
	je	.label_2686
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0xf8], 0
	sete	cl
	mov	byte ptr [rbp - 0x39], cl
.label_2686:
	mov	al, byte ptr [rbp - 0x39]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_2684
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_2682
.label_2684:
	jmp	.label_2685
.label_2685:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0xd0], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax + 0xe0], 1
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0xf0], rax
	mov	dword ptr [rbp - 4], 0
.label_2682:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41d168
	.globl sub_41d168
	.type sub_41d168, @function
sub_41d168:

	nop	dword ptr [rax + rax]
.label_2690:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rax
.label_2689:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41d182
	.globl sub_41d182
	.type sub_41d182, @function
sub_41d182:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x41d18a

	.globl strnlen1
	.type strnlen1, @function
strnlen1:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	xor	esi, esi
	call	memchr
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_2690
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rax, rcx
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2689
.label_2691:
	mov	eax, 0x38
	mov	edx, eax
	lea	rcx, [rbp - 0x40]
	mov	eax, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 0x40], eax
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdi, rsi
	mov	rsi, rcx
	call	memcpy
	mov	rax, qword ptr [rbp - 0x50]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41d1fa
	.globl sub_41d1fa
	.type sub_41d1fa, @function
sub_41d1fa:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x41d206

	.globl quoting_options_from_style
	.type quoting_options_from_style, @function
quoting_options_from_style:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	rax, rdi
	xor	ecx, ecx
	mov	edx, 0x38
	lea	r8, [rbp - 0x40]
	mov	dword ptr [rbp - 4], esi
	mov	qword ptr [rbp - 0x48], rdi
	mov	rdi, r8
	mov	esi, ecx
	mov	qword ptr [rbp - 0x50], rax
	call	memset
	cmp	dword ptr [rbp - 4], 0xa
	jne	.label_2691
	call	abort
	.section	.text
	.align	16
	#Procedure 0x41d240
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	eax, edi
	sub	edi, 0x20
	mov	dword ptr [rbp - 0xc], eax
	mov	dword ptr [rbp - 0x10], edi
	jb	.label_2692
	jmp	.label_2694
.label_2694:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x7f
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_2695
	jmp	.label_2692
.label_2692:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2693
.label_2695:
	mov	byte ptr [rbp - 1], 0
.label_2693:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41d288
	.globl sub_41d288
	.type sub_41d288, @function
sub_41d288:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x41d290

	.globl quote
	.type quote, @function
quote:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rsi, qword ptr [rbp - 8]
	mov	edi, eax
	call	quote_n
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41d2af
	.globl sub_41d2af
	.type sub_41d2af, @function
sub_41d2af:

	nop	
.label_2702:
	cmp	qword ptr [rbp - 8], 0
	je	.label_2697
	mov	rdi, qword ptr [rbp - 0x20]
	call	fileno
	mov	dword ptr [rbp - 0x2c], eax
	mov	edi, dword ptr [rbp - 0x2c]
	mov	esi, dword ptr [rbp - 0x2c]
	call	dup2
	cmp	eax, 0
	jge	.label_2696
	call	__errno_location
	cmp	dword ptr [rax], 9
	jne	.label_2696
	mov	esi, 0x80000
	mov	rdi, qword ptr [rbp - 0x28]
	mov	al, 0
	call	open
	mov	dword ptr [rbp - 0x30], eax
	mov	dword ptr [rbp - 0x34], 0
	mov	eax, dword ptr [rbp - 0x30]
	cmp	eax, dword ptr [rbp - 0x2c]
	je	.label_2698
	mov	edi, dword ptr [rbp - 0x30]
	mov	esi, dword ptr [rbp - 0x2c]
	call	dup2
	cmp	eax, 0
	jge	.label_2699
	mov	dword ptr [rbp - 0x34], 1
.label_2699:
	mov	edi, dword ptr [rbp - 0x30]
	call	close
	mov	dword ptr [rbp - 0x38], eax
.label_2698:
	cmp	dword ptr [rbp - 0x34], 0
	jne	.label_2701
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x20]
	call	orig_freopen
	mov	qword ptr [rbp - 0x20], rax
.label_2701:
	jmp	.label_2696
.label_2696:
	jmp	.label_2697
.label_2697:
	jmp	.label_2700
.label_2700:
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41d36d
	.globl sub_41d36d
	.type sub_41d36d, @function
sub_41d36d:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x41d379

	.globl rpl_freopen
	.type rpl_freopen, @function
rpl_freopen:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	movabs	rax, OFFSET FLAT:label_1387
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	orig_freopen
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_2702
	jmp	.label_2700
.label_2703:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 8], rax
.label_2708:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x40], rax
	mov	dword ptr [rbp - 4], 0
.label_2706:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41d3e8
	.globl sub_41d3e8
	.type sub_41d3e8, @function
sub_41d3e8:

	nop	
.label_2710:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x18], 0
	je	.label_2704
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x18]
	mov	rcx, qword ptr [rbp - 0x18]
	shl	rcx, 3
	mov	rdi, rax
	mov	rsi, rcx
	call	realloc
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 0
	sete	dl
	and	dl, 1
	movzx	r8d, dl
	movsxd	rax, r8d
	cmp	rax, 0
	je	.label_2707
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_2706
	.section	.text
	.align	16
	#Procedure 0x41d44b

	.globl re_string_realloc_buffers
	.type re_string_realloc_buffers, @function
re_string_realloc_buffers:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	cmp	dword ptr [rsi + 0x90], 1
	jle	.label_2705
	movabs	rax, 0x1fffffffffffffff
	mov	qword ptr [rbp - 0x28], 8
	cmp	rax, qword ptr [rbp - 0x18]
	setb	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_2709
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_2706
.label_2709:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	shl	rcx, 2
	mov	rdi, rax
	mov	rsi, rcx
	call	realloc
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	sete	dl
	and	dl, 1
	movzx	r8d, dl
	movsxd	rax, r8d
	cmp	rax, 0
	je	.label_2710
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_2706
.label_2707:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x18], rax
.label_2704:
	jmp	.label_2705
.label_2705:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	byte ptr [rax + 0x8b], 0
	je	.label_2708
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax + 8]
	mov	rax, qword ptr [rbp - 0x18]
	shl	rax, 0
	mov	rsi, rax
	call	realloc
	mov	qword ptr [rbp - 0x38], rax
	cmp	qword ptr [rbp - 0x38], 0
	sete	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_2703
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_2706
.label_2712:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_2711:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41d562
	.globl sub_41d562
	.type sub_41d562, @function
sub_41d562:

	nop	
	.section	.text
	.align	16
	#Procedure 0x41d563
	.globl proper_name
	.type proper_name, @function
proper_name:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	call	gettext
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x10]
	je	.label_2712
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x10]
	call	mbsstr_trimmed_wordbounded
	test	al, 1
	jne	.label_2713
	jmp	.label_2714
.label_2713:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2711
.label_2714:
	mov	rdi, qword ptr [rbp - 0x18]
	call	strlen
	add	rax, 2
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rax
	call	strlen
	mov	rdi, qword ptr [rbp - 0x28]
	add	rdi, rax
	add	rdi, 1
	add	rdi, 1
	call	xmalloc
	movabs	rsi, OFFSET FLAT:label_100
	mov	qword ptr [rbp - 0x20], rax
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	al, 0
	call	sprintf
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rcx
	mov	dword ptr [rbp - 0x2c], eax
	jmp	.label_2711
	.section	.text
	.align	16
	#Procedure 0x41d610

	.globl fetch_token
	.type fetch_token, @function
fetch_token:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	peek_token
	movsxd	rdx, eax
	mov	rsi, qword ptr [rbp - 0x10]
	add	rdx, qword ptr [rsi + 0x48]
	mov	qword ptr [rsi + 0x48], rdx
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41d64a
	.globl sub_41d64a
	.type sub_41d64a, @function
sub_41d64a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x41d650

	.globl xmemdup
	.type xmemdup, @function
xmemdup:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	call	xmalloc
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdi, rax
	mov	qword ptr [rbp - 0x18], rax
	call	memcpy
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41d687
	.globl sub_41d687
	.type sub_41d687, @function
sub_41d687:

	nop	word ptr [rax + rax]
.label_2726:
	jmp	.label_2719
.label_2719:
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_2721
.label_2723:
	mov	dword ptr [rbp - 4], 0
.label_2724:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41d6b6
	.globl sub_41d6b6
	.type sub_41d6b6, @function
sub_41d6b6:

	nop	word ptr cs:[rax + rax]
.label_2720:
	jmp	.label_2716
.label_2716:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x48]
	call	re_node_set_insert
	and	al, 1
	mov	byte ptr [rbp - 0x4d], al
	mov	al, byte ptr [rbp - 0x4d]
	xor	al, 0xff
	and	al, 1
	movzx	ecx, al
	movsxd	rsi, ecx
	cmp	rsi, 0
	je	.label_2726
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_2724
.label_2722:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0x28], 0
	je	.label_2716
	mov	rax, qword ptr [rbp - 0x20]
	movsxd	rcx, dword ptr [rbp - 0x4c]
	add	rax, rcx
	mov	qword ptr [rbp - 0x58], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x20
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rdx + 0x18]
	mov	rdx, qword ptr [rdx + rcx*8]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	r8, qword ptr [rbp - 0x48]
	mov	r9, qword ptr [rbp - 0x20]
	mov	rsi, rax
	call	check_dst_limits
	test	al, 1
	jne	.label_2718
	jmp	.label_2720
.label_2718:
	jmp	.label_2719
	.section	.text
	.align	16
	#Procedure 0x41d75c

	.globl build_sifted_states
	.type build_sifted_states, @function
build_sifted_states:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x98]
	mov	qword ptr [rbp - 0x30], rcx
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0xb8]
	mov	rcx, qword ptr [rdx + rcx*8]
	add	rcx, 0x20
	mov	qword ptr [rbp - 0x38], rcx
	mov	qword ptr [rbp - 0x40], 0
.label_2721:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_2723
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x48], rax
	mov	dword ptr [rbp - 0x4c], 0
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x30]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	shr	edx, 0x14
	and	edx, 1
	cmp	edx, 0
	je	.label_2725
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x18]
	mov	r8, qword ptr [rax + 0x18]
	call	sift_states_iter_mb
	mov	dword ptr [rbp - 0x4c], eax
.label_2725:
	cmp	dword ptr [rbp - 0x4c], 0
	jne	.label_2717
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x48]
	shl	rcx, 4
	add	rax, rcx
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsi, rax
	call	check_node_accept
	test	al, 1
	jne	.label_2715
	jmp	.label_2717
.label_2715:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx]
	cmp	qword ptr [rcx + rax*8 + 8], 0
	je	.label_2717
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx]
	mov	rax, qword ptr [rcx + rax*8 + 8]
	add	rax, 8
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rdx + 0x18]
	mov	rsi, qword ptr [rdx + rcx*8]
	mov	rdi, rax
	call	re_node_set_contains
	cmp	rax, 0
	je	.label_2717
	mov	dword ptr [rbp - 0x4c], 1
.label_2717:
	cmp	dword ptr [rbp - 0x4c], 0
	jne	.label_2722
	jmp	.label_2719
.label_2730:
	jmp	.label_2727
.label_2727:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rdi, rax
	call	free
	mov	rdi, qword ptr [rbp - 0x50]
	call	free_charset
	mov	rax, qword ptr [rbp - 0x40]
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 0x10], 0
.label_2728:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x88
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41d8ea
	.globl sub_41d8ea
	.type sub_41d8ea, @function
sub_41d8ea:

	nop	word ptr cs:[rax + rax]
.label_2734:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	dword ptr [rax + 0xb4], 1
	jle	.label_2729
	xor	eax, eax
	mov	ecx, eax
	lea	rdx, [rbp - 0x70]
	mov	eax, dword ptr [rbp - 0x68]
	and	eax, 0xffffff00
	or	eax, 6
	mov	dword ptr [rbp - 0x68], eax
	mov	rsi, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x70], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	dil, byte ptr [rsi + 0xb0]
	and	dil, 0xfd
	or	dil, 2
	mov	byte ptr [rsi + 0xb0], dil
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, rcx
	mov	qword ptr [rbp - 0x90], rdx
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x90]
	call	create_token_tree
	mov	qword ptr [rbp - 0x80], rax
	cmp	qword ptr [rbp - 0x80], 0
	sete	r8b
	and	r8b, 1
	movzx	r9d, r8b
	movsxd	rax, r9d
	cmp	rax, 0
	je	.label_2732
	jmp	.label_2727
.label_2732:
	mov	ecx, 0xa
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x78]
	mov	rdx, qword ptr [rbp - 0x80]
	call	create_tree
	mov	qword ptr [rbp - 0x78], rax
	cmp	qword ptr [rbp - 0x80], 0
	setne	r8b
	and	r8b, 1
	movzx	ecx, r8b
	movsxd	rax, ecx
	cmp	rax, 0
	je	.label_2731
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_2728
.label_2729:
	mov	rdi, qword ptr [rbp - 0x50]
	call	free_charset
	mov	rdi, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x10], rdi
	jmp	.label_2728
.label_2739:
	jmp	.label_2733
.label_2733:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	byte ptr [rax], 0
	je	.label_2737
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rbp - 0x30]
	movsx	rsi, byte ptr [rax]
	call	bitset_set
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_2733
.label_2737:
	test	byte ptr [rbp - 0x31], 1
	je	.label_2736
	mov	rdi, qword ptr [rbp - 0x48]
	call	bitset_not
.label_2736:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	dword ptr [rax + 0xb4], 1
	jle	.label_2738
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax + 0x78]
	call	bitset_mask
.label_2738:
	xor	eax, eax
	mov	ecx, eax
	lea	rdx, [rbp - 0x70]
	mov	eax, dword ptr [rbp - 0x68]
	and	eax, 0xffffff00
	or	eax, 3
	mov	dword ptr [rbp - 0x68], eax
	mov	rsi, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x70], rsi
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, rcx
	mov	qword ptr [rbp - 0x88], rdx
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x88]
	call	create_token_tree
	mov	qword ptr [rbp - 0x78], rax
	cmp	qword ptr [rbp - 0x78], 0
	sete	r8b
	and	r8b, 1
	movzx	r9d, r8b
	movsxd	rax, r9d
	cmp	rax, 0
	je	.label_2734
	jmp	.label_2727
	.section	.text
	.align	16
	#Procedure 0x41daa8

	.globl build_charclass_op
	.type build_charclass_op, @function
build_charclass_op:
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 0x88
	mov	al, r8b
	mov	r8d, 0x20
	mov	r10d, r8d
	mov	r8d, 1
	mov	r11d, r8d
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x28], rdx
	mov	qword ptr [rbp - 0x30], rcx
	and	al, 1
	mov	byte ptr [rbp - 0x31], al
	mov	qword ptr [rbp - 0x40], r9
	mov	qword ptr [rbp - 0x58], 0
	mov	rdi, r10
	mov	rsi, r11
	call	calloc
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x48], 0
	sete	bl
	and	bl, 1
	movzx	r8d, bl
	movsxd	rax, r8d
	cmp	rax, 0
	je	.label_2740
	mov	rax, qword ptr [rbp - 0x40]
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 0x10], 0
	jmp	.label_2728
.label_2735:
	lea	rcx, [rbp - 0x58]
	xor	eax, eax
	mov	r9d, eax
	mov	dl, byte ptr [rbp - 0x31]
	and	dl, 1
	movzx	eax, dl
	mov	rsi, qword ptr [rbp - 0x50]
	mov	dl, al
	mov	dil, byte ptr [rsi + 0x20]
	and	dl, 1
	and	dil, 0xfe
	or	dil, dl
	mov	byte ptr [rsi + 0x20], dil
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x50]
	mov	r8, qword ptr [rbp - 0x28]
	call	build_charclass
	mov	dword ptr [rbp - 0x5c], eax
	cmp	dword ptr [rbp - 0x5c], 0
	setne	r10b
	and	r10b, 1
	movzx	eax, r10b
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_2739
	mov	rax, qword ptr [rbp - 0x48]
	mov	rdi, rax
	call	free
	mov	rdi, qword ptr [rbp - 0x50]
	call	free_charset
	mov	ecx, dword ptr [rbp - 0x5c]
	mov	rax, qword ptr [rbp - 0x40]
	mov	dword ptr [rax], ecx
	mov	qword ptr [rbp - 0x10], 0
	jmp	.label_2728
.label_2731:
	jmp	.label_2730
.label_2740:
	mov	eax, 0x50
	mov	edi, eax
	mov	eax, 1
	mov	esi, eax
	call	calloc
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x50], 0
	sete	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_2735
	mov	rax, qword ptr [rbp - 0x48]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x40]
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 0x10], 0
	jmp	.label_2728
.label_2745:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_2742
	cmp	qword ptr [rbp - 0x48], 0
	je	.label_2742
	mov	ecx, 0x10
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x48]
	call	create_tree
	mov	qword ptr [rbp - 0x58], rax
	cmp	qword ptr [rbp - 0x58], 0
	jne	.label_2753
	movabs	rsi, OFFSET FLAT:free_tree
	xor	eax, eax
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x48]
	call	postorder
	movabs	rsi, OFFSET FLAT:free_tree
	xor	ecx, ecx
	mov	edx, ecx
	mov	rdi, qword ptr [rbp - 0x40]
	mov	dword ptr [rbp - 0x64], eax
	call	postorder
	mov	rdx, qword ptr [rbp - 0x38]
	mov	dword ptr [rdx], 0xc
	mov	qword ptr [rbp - 8], 0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2744
.label_2750:
	jmp	.label_2747
.label_2747:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x20]
	mov	eax, dword ptr [rdx + 8]
	and	eax, 0xff
	cmp	eax, 0xa
	mov	byte ptr [rbp - 0x5a], cl
	je	.label_2749
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x20]
	mov	eax, dword ptr [rdx + 8]
	and	eax, 0xff
	cmp	eax, 2
	mov	byte ptr [rbp - 0x5a], cl
	je	.label_2749
	mov	al, 1
	cmp	qword ptr [rbp - 0x30], 0
	mov	byte ptr [rbp - 0x5b], al
	je	.label_2746
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 9
	setne	dl
	mov	byte ptr [rbp - 0x5b], dl
.label_2746:
	mov	al, byte ptr [rbp - 0x5b]
	mov	byte ptr [rbp - 0x5a], al
.label_2749:
	mov	al, byte ptr [rbp - 0x5a]
	test	al, 1
	jne	.label_2755
	jmp	.label_2743
.label_2755:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	r9, qword ptr [rbp - 0x38]
	call	parse_expression
	xor	r10d, r10d
	mov	r11b, r10b
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x38]
	cmp	dword ptr [rax], 0
	mov	byte ptr [rbp - 0x5c], r11b
	je	.label_2752
	cmp	qword ptr [rbp - 0x48], 0
	sete	al
	mov	byte ptr [rbp - 0x5c], al
.label_2752:
	mov	al, byte ptr [rbp - 0x5c]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_2745
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_2751
	movabs	rsi, OFFSET FLAT:free_tree
	xor	eax, eax
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x40]
	call	postorder
	mov	dword ptr [rbp - 0x60], eax
.label_2751:
	mov	qword ptr [rbp - 8], 0
	jmp	.label_2744
.label_2743:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 8], rax
.label_2744:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41ddab
	.globl sub_41ddab
	.type sub_41ddab, @function
sub_41ddab:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x41ddb6

	.globl parse_branch
	.type parse_branch, @function
parse_branch:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	qword ptr [rbp - 0x38], r9
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 0x50], rcx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	r9, qword ptr [rbp - 0x38]
	call	parse_expression
	xor	r10d, r10d
	mov	r11b, r10b
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x38]
	cmp	dword ptr [rax], 0
	mov	byte ptr [rbp - 0x59], r11b
	je	.label_2754
	cmp	qword ptr [rbp - 0x40], 0
	sete	al
	mov	byte ptr [rbp - 0x59], al
.label_2754:
	mov	al, byte ptr [rbp - 0x59]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_2750
	mov	qword ptr [rbp - 8], 0
	jmp	.label_2744
.label_2742:
	cmp	qword ptr [rbp - 0x40], 0
	jne	.label_2741
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x40], rax
.label_2741:
	jmp	.label_2748
.label_2748:
	jmp	.label_2747
.label_2753:
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_2748
.label_2760:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rax + 0x48]
	add	rcx, 1
	mov	qword ptr [rax + 0x48], rcx
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0xb8]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_2756
	xor	eax, eax
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	merge_state_with_log
	mov	qword ptr [rbp - 0x20], rax
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x10]
	cmp	dword ptr [rdx], 0
	mov	byte ptr [rbp - 0x31], cl
	jne	.label_2758
	cmp	qword ptr [rbp - 0x20], 0
	sete	al
	mov	byte ptr [rbp - 0x31], al
.label_2758:
	mov	al, byte ptr [rbp - 0x31]
	test	al, 1
	jne	.label_2759
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_2757:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41deeb
	.globl sub_41deeb
	.type sub_41deeb, @function
sub_41deeb:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x41def2

	.globl find_recover_state
	.type find_recover_state, @function
find_recover_state:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
.label_2759:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0xc0]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x48]
	mov	qword ptr [rbp - 0x30], rax
.label_2756:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	cmp	rax, qword ptr [rbp - 0x28]
	jle	.label_2760
	mov	qword ptr [rbp - 8], 0
	jmp	.label_2757
	.section	.text
	.align	16
	#Procedure 0x41df40

	.globl re_node_set_insert
	.type re_node_set_insert, @function
re_node_set_insert:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	cmp	qword ptr [rsi], 0
	jne	.label_2761
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	re_node_set_init_1
	cmp	eax, 0
	sete	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rsi, eax
	cmp	rsi, 0
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 1], cl
	jmp	.label_2763
.label_2770:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	jne	.label_2765
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	shl	rax, 1
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	shl	rcx, 3
	mov	rdi, rax
	mov	rsi, rcx
	call	realloc
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	sete	dl
	and	dl, 1
	movzx	r8d, dl
	movsxd	rax, r8d
	cmp	rax, 0
	je	.label_2762
	mov	byte ptr [rbp - 1], 0
	jmp	.label_2763
.label_2768:
	jmp	.label_2764
.label_2764:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 8]
	add	rcx, 1
	mov	qword ptr [rax + 8], rcx
	mov	byte ptr [rbp - 1], 1
.label_2763:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41e035
	.globl sub_41e035
	.type sub_41e035, @function
sub_41e035:

	nop	word ptr cs:[rax + rax]
.label_2767:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
.label_2766:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	cmp	rax, qword ptr [rbp - 0x18]
	jle	.label_2768
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, -1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_2766
.label_2762:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x10], rax
.label_2765:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	cmp	rax, qword ptr [rcx]
	jge	.label_2767
	mov	qword ptr [rbp - 0x20], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
.label_2771:
	cmp	qword ptr [rbp - 0x20], 0
	jle	.label_2769
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, -1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_2771
.label_2769:
	jmp	.label_2764
.label_2761:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0
	jne	.label_2770
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 8]
	add	rcx, 1
	mov	qword ptr [rax + 8], rcx
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2763
.label_2777:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	dword ptr [rax + 0x90], 1
	jle	.label_2775
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x48]
	add	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	cmp	dword ptr [rcx + rax*4], -1
	je	.label_2772
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x48]
	add	rcx, qword ptr [rbp - 0x18]
	add	rcx, 1
	cmp	rax, rcx
	je	.label_2775
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x48]
	add	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	cmp	dword ptr [rcx + rax*4 + 4], -1
	jne	.label_2775
.label_2772:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x48]
	add	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 8]
	mov	dl, byte ptr [rcx + rax]
	mov	byte ptr [rbp - 1], dl
	jmp	.label_2774
	.section	.text
	.align	16
	#Procedure 0x41e1de

	.globl re_string_peek_byte_case
	.type re_string_peek_byte_case, @function
re_string_peek_byte_case:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	cmp	byte ptr [rsi + 0x8b], 0
	setne	al
	xor	al, 0xff
	and	al, 1
	movzx	ecx, al
	movsxd	rsi, ecx
	cmp	rsi, 0
	je	.label_2777
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x48]
	add	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 8]
	mov	dl, byte ptr [rcx + rax]
	mov	byte ptr [rbp - 1], dl
	jmp	.label_2774
.label_2773:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	cl, al
	mov	byte ptr [rbp - 1], cl
.label_2774:
	movzx	eax, byte ptr [rbp - 1]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41e239
	.globl sub_41e239
	.type sub_41e239, @function
sub_41e239:

	nop	word ptr [rax + rax]
.label_2775:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x48]
	add	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	byte ptr [rax + 0x8c], 0
	je	.label_2776
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x28], rax
.label_2776:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	add	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	movzx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 0x1c], edx
	mov	rax, qword ptr [rbp - 0x10]
	movzx	edx, byte ptr [rax + 0x8c]
	cmp	edx, 0
	je	.label_2773
	mov	eax, dword ptr [rbp - 0x1c]
	and	eax, 0xffffff80
	cmp	eax, 0
	je	.label_2773
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x48]
	add	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 8]
	mov	dl, byte ptr [rcx + rax]
	mov	byte ptr [rbp - 1], dl
	jmp	.label_2774
	.section	.text
	.align	16
	#Procedure 0x41e2d0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [file_name]],  rdi
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41e2e6
	.globl sub_41e2e6
	.type sub_41e2e6, @function
sub_41e2e6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x41e2f0

	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	al, dl
	lea	rcx, [rbp - 0x50]
	mov	edx, 1
	movabs	r8, OFFSET FLAT:default_quoting_options
	mov	r9d, 0x38
	mov	r10d, r9d
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	byte ptr [rbp - 0x11], al
	mov	rsi, rcx
	mov	rdi, rsi
	mov	rsi, r8
	mov	dword ptr [rbp - 0x54], edx
	mov	rdx, r10
	mov	qword ptr [rbp - 0x60], rcx
	call	memcpy
	mov	rdi, qword ptr [rbp - 0x60]
	movsx	esi, byte ptr [rbp - 0x11]
	mov	edx, dword ptr [rbp - 0x54]
	call	set_char_quoting
	xor	edi, edi
	lea	rcx, [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x64], eax
	call	quotearg_n_options
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41e365
	.globl sub_41e365
	.type sub_41e365, @function
sub_41e365:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x41e370
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	r8, qword ptr [rbp - 0x20]
	mov	edi, eax
	call	quotearg_n_custom_mem
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41e3a7
	.globl sub_41e3a7
	.type sub_41e3a7, @function
sub_41e3a7:

	nop	word ptr [rax + rax]
.label_2952:
	cmp	qword ptr [rbp - 0xb0], -1
	jne	.label_2975
	mov	byte ptr [rbp - 0x91], 0
	jmp	.label_2911
.label_2915:
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x30]
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	dword ptr [rbp - 0xd4], edx
.label_2917:
	mov	eax, dword ptr [rbp - 0xd4]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_2969
	jmp	.label_2782
.label_2969:
	mov	byte ptr [rbp - 0x81], 0
	mov	byte ptr [rbp - 0x82], 0
	mov	byte ptr [rbp - 0x83], 0
	test	byte ptr [rbp - 0x79], 1
	je	.label_2783
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_2783
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_2783
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x78]
	cmp	qword ptr [rbp - 0x30], -1
	mov	qword ptr [rbp - 0xe0], rax
	jne	.label_2851
	mov	eax, 1
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x78]
	jae	.label_2851
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_2799
.label_2955:
	jmp	.label_2792
.label_2822:
	jmp	.label_2803
.label_2921:
	jmp	.label_2806
.label_2806:
	jmp	.label_2792
.label_3978:
	mov	byte ptr [rbp - 0x80], 0x72
	jmp	.label_2787
.label_2960:
	jmp	.label_2810
.label_2870:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_2811
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_2811
	jmp	.label_2821
.label_2821:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2824
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_2824:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_2830
.label_2830:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2836
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_2836:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_2841
.label_2841:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2844
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_2844:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_2811:
	jmp	.label_2853
.label_2853:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2963
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_2963:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_2860
.label_2860:
	jmp	.label_2862
.label_2862:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2864
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 6
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_2864:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_2872
.label_2872:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2876
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 3
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_2876:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	movzx	eax, byte ptr [rbp - 0x7f]
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	byte ptr [rbp - 0x7f], cl
	jmp	.label_2937
.label_2880:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + rax + 2]
	mov	byte ptr [rbp - 0x7f], dl
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2895
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_2895:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_2907
.label_2907:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2913
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_2913:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_2916
.label_2916:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2918
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_2918:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_2922
.label_2922:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2926
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_2926:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_2817
.label_2851:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xe8], rax
.label_2799:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rcx, qword ptr [rbp - 0xe0]
	cmp	rcx, rax
	ja	.label_2783
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rdi, rax
	call	memcmp
	cmp	eax, 0
	jne	.label_2783
	test	byte ptr [rbp - 0x7b], 1
	je	.label_2947
	jmp	.label_2795
.label_2978:
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_2906
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_2906
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x60], 0
	jmp	.label_2951
.label_2928:
	call	abort
.label_2823:
	jmp	.label_2810
.label_2810:
	jmp	.label_2792
.label_2782:
	cmp	qword ptr [rbp - 0x60], 0
	jne	.label_2957
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_2957
	test	byte ptr [rbp - 0x7b], 1
	je	.label_2957
	jmp	.label_2795
.label_3910:
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_2800
.label_2849:
	jmp	.label_2962
.label_2962:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_2964
	test	byte ptr [rbp - 0x82], 1
	jne	.label_2964
	jmp	.label_2850
.label_2850:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2971
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_2971:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_2973
.label_2973:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2901
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_2901:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_2964:
	jmp	.label_2976
.label_2976:
	jmp	.label_2961
.label_2961:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2979
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_2979:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x58], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + rax + 1]
	mov	byte ptr [rbp - 0x7f], dl
	jmp	.label_2779
.label_2905:
	jmp	.label_2792
.label_2892:
	cmp	qword ptr [rbp - 0x30], 1
	je	.label_2857
.label_2899:
	jmp	.label_2792
.label_2906:
	jmp	.label_2794
.label_2794:
	jmp	.label_2796
.label_2796:
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_2797
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_2797
	jmp	.label_2820
.label_2820:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_2801
	jmp	.label_2802
.label_2802:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2805
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_2805:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_2813
.label_2813:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_2820
.label_3981:
	mov	byte ptr [rbp - 0x7d], 1
	mov	byte ptr [rbp - 0x83], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_2826
	test	byte ptr [rbp - 0x7b], 1
	je	.label_2831
	jmp	.label_2795
.label_2816:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 4
	cmp	eax, 0
	je	.label_2835
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_2835
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x3f
	jne	.label_2835
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 2]
	mov	esi, edx
	sub	esi, 0x21
	mov	dword ptr [rbp - 0x108], edx
	mov	dword ptr [rbp - 0x10c], esi
	je	.label_2845
	jmp	.label_2855
.label_2855:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x110], eax
	jb	.label_2845
	jmp	.label_2861
.label_2861:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x114], eax
	je	.label_2845
	jmp	.label_2867
.label_2867:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2f
	mov	dword ptr [rbp - 0x118], eax
	je	.label_2845
	jmp	.label_2871
.label_2871:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0x11c], eax
	ja	.label_2873
	jmp	.label_2845
.label_2845:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_2880
	jmp	.label_2795
.label_3915:
	mov	dword ptr [rbp - 0x34], 5
	mov	byte ptr [rbp - 0x7b], 1
.label_3914:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_2886
	jmp	.label_2889
.label_2889:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2891
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_2891:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_2886
.label_2886:
	movabs	rax, OFFSET FLAT:label_2359
	mov	byte ptr [rbp - 0x79], 1
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_2800
.label_2900:
	jmp	.label_2908
.label_2908:
	jmp	.label_2910
.label_2910:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_2912
	jmp	.label_2795
.label_2884:
	test	byte ptr [rbp - 0x79], 1
	je	.label_2914
	test	byte ptr [rbp - 0x7b], 1
	je	.label_2914
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_2914
	jmp	.label_2803
.label_2970:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_2919
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_2919
	jmp	.label_2923
.label_2923:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2925
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_2925:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_2930
.label_2930:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2931
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_2931:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_2938
.label_2938:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2941
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_2941:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_2919:
	jmp	.label_2948
.label_2948:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2949
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_2949:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_2953
.label_2953:
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_2954
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_2954
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x28]
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_2954
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x39
	jg	.label_2954
	jmp	.label_2966
.label_2966:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2967
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_2967:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_2972
.label_2972:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2904
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_2904:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_2954
.label_2954:
	mov	byte ptr [rbp - 0x7f], 0x30
	jmp	.label_2806
.label_2801:
	jmp	.label_2797
.label_2797:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2977
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0
.label_2977:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_2786
.label_3912:
	mov	byte ptr [rbp - 0x79], 1
.label_3911:
	mov	byte ptr [rbp - 0x7b], 1
.label_3913:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_2781
	mov	byte ptr [rbp - 0x79], 1
.label_2781:
	jmp	.label_2784
.label_2784:
	mov	dword ptr [rbp - 0x34], 2
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_2785
	jmp	.label_2790
.label_2790:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2791
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_2791:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_2785
.label_2785:
	movabs	rax, OFFSET FLAT:label_2358
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_2800
.label_3982:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0xfc], eax
	mov	dword ptr [rbp - 0x100], ecx
	je	.label_2808
	jmp	.label_2814
.label_2814:
	mov	eax, dword ptr [rbp - 0xfc]
	sub	eax, 5
	mov	dword ptr [rbp - 0x104], eax
	je	.label_2816
	jmp	.label_2823
.label_2920:
	jmp	.label_2825
.label_2825:
	mov	edi, dword ptr [rbp - 0xa4]
	call	iswprint
	cmp	eax, 0
	jne	.label_2828
	mov	byte ptr [rbp - 0x91], 0
.label_2828:
	mov	rax, qword ptr [rbp - 0xb0]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_2833
.label_2833:
	jmp	.label_2839
.label_2839:
	jmp	.label_2840
.label_2840:
	lea	rdi, [rbp - 0xa0]
	call	mbsinit
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_2843
.label_2911:
	jmp	.label_2846
.label_2846:
	mov	eax, 1
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x91]
	and	dl, 1
	mov	byte ptr [rbp - 0x83], dl
	cmp	rcx, qword ptr [rbp - 0x90]
	jb	.label_2848
	test	byte ptr [rbp - 0x79], 1
	je	.label_2856
	test	byte ptr [rbp - 0x91], 1
	jne	.label_2856
.label_2848:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0xc0], rax
.label_2779:
	test	byte ptr [rbp - 0x79], 1
	je	.label_2865
	test	byte ptr [rbp - 0x91], 1
	jne	.label_2865
	jmp	.label_2869
.label_2869:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_2870
	jmp	.label_2795
.label_2945:
	jmp	.label_2874
.label_2874:
	jmp	.label_2875
.label_2875:
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, 1
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_2877
.label_3983:
	mov	al, byte ptr [rbp - 0x7f]
	mov	byte ptr [rbp - 0x80], al
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_2884
	test	byte ptr [rbp - 0x7b], 1
	je	.label_2887
	jmp	.label_2795
.label_3984:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_2892
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	je	.label_2857
	jmp	.label_2899
	.section	.text
	.align	16
	#Procedure 0x41edfb

	.globl quotearg_buffer_restyled
	.type quotearg_buffer_restyled, @function
quotearg_buffer_restyled:
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 0x158
	mov	rax, qword ptr [rbp + 0x20]
	mov	r10, qword ptr [rbp + 0x18]
	mov	r11, qword ptr [rbp + 0x10]
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x28], rdx
	mov	qword ptr [rbp - 0x30], rcx
	mov	dword ptr [rbp - 0x34], r8d
	mov	dword ptr [rbp - 0x38], r9d
	mov	qword ptr [rbp - 0x40], r11
	mov	qword ptr [rbp - 0x48], r10
	mov	qword ptr [rbp - 0x50], rax
	mov	qword ptr [rbp - 0x60], 0
	mov	qword ptr [rbp - 0x68], 0
	mov	qword ptr [rbp - 0x70], 0
	mov	qword ptr [rbp - 0x78], 0
	mov	byte ptr [rbp - 0x79], 0
	call	__ctype_get_mb_cur_max
	cmp	rax, 1
	sete	bl
	and	bl, 1
	mov	byte ptr [rbp - 0x7a], bl
	mov	r8d, dword ptr [rbp - 0x38]
	and	r8d, 2
	cmp	r8d, 0
	setne	bl
	and	bl, 1
	mov	byte ptr [rbp - 0x7b], bl
	mov	byte ptr [rbp - 0x7c], 0
	mov	byte ptr [rbp - 0x7d], 0
	mov	byte ptr [rbp - 0x7e], 1
.label_2951:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0xc8], rcx
	mov	qword ptr [rbp - 0xd0], rdx
	ja	.label_2928
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_2932]]
	jmp	rcx
.label_3976:
	mov	byte ptr [rbp - 0x80], 0x76
	jmp	.label_2936
.label_2831:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_2939
	cmp	qword ptr [rbp - 0x68], 0
	jne	.label_2939
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0x20], 0
.label_2939:
	jmp	.label_2944
.label_2944:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2946
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_2946:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_2950
.label_2950:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2933
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_2933:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_2956
.label_2956:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2958
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_2958:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_2826:
	jmp	.label_2792
.label_3971:
	test	byte ptr [rbp - 0x79], 1
	je	.label_2965
	jmp	.label_2968
.label_2968:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_2970
	jmp	.label_2795
.label_3916:
	mov	byte ptr [rbp - 0x79], 1
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_2800
.label_3972:
	mov	byte ptr [rbp - 0x80], 0x61
	jmp	.label_2936
.label_2778:
	test	byte ptr [rbp - 0x7a], 1
	je	.label_2974
	mov	qword ptr [rbp - 0x90], 1
	movzx	eax, byte ptr [rbp - 0x7f]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x128], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x128]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x4000
	cmp	edx, 0
	setne	sil
	and	sil, 1
	mov	byte ptr [rbp - 0x91], sil
	jmp	.label_2846
.label_2947:
	mov	byte ptr [rbp - 0x81], 1
.label_2783:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + rax]
	mov	byte ptr [rbp - 0x7f], dl
	movzx	esi, byte ptr [rbp - 0x7f]
	mov	eax, esi
	mov	rcx, rax
	sub	rcx, 0x7e
	mov	qword ptr [rbp - 0xf0], rax
	mov	qword ptr [rbp - 0xf8], rcx
	ja	.label_2778
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_2788]]
	jmp	rcx
.label_3917:
	cmp	dword ptr [rbp - 0x34], 0xa
	je	.label_2793
	movabs	rdi, OFFSET FLAT:label_2893
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	movabs	rdi, OFFSET FLAT:label_2358
	mov	qword ptr [rbp - 0x48], rax
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	mov	qword ptr [rbp - 0x50], rax
.label_2793:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_2804
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x70], rax
.label_2829:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_2809
	jmp	.label_2881
.label_2881:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2815
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_2815:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_2827
.label_2827:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_2829
.label_2865:
	test	byte ptr [rbp - 0x81], 1
	je	.label_2834
	jmp	.label_2837
.label_2837:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2838
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_2838:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x81], 0
.label_2834:
	jmp	.label_2937
.label_2937:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	cmp	rax, rcx
	ja	.label_2849
	jmp	.label_2822
.label_3973:
	mov	byte ptr [rbp - 0x80], 0x62
	jmp	.label_2936
.label_3977:
	mov	byte ptr [rbp - 0x80], 0x66
	jmp	.label_2936
.label_2975:
	cmp	qword ptr [rbp - 0xb0], -2
	jne	.label_2859
	mov	byte ptr [rbp - 0x91], 0
.label_2885:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x58]
	add	rdx, qword ptr [rbp - 0x90]
	cmp	rdx, qword ptr [rbp - 0x30]
	mov	byte ptr [rbp - 0x129], cl
	jae	.label_2863
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x129], sil
.label_2863:
	mov	al, byte ptr [rbp - 0x129]
	test	al, 1
	jne	.label_2878
	jmp	.label_2883
.label_2878:
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_2885
.label_2856:
	jmp	.label_2792
.label_2792:
	test	byte ptr [rbp - 0x79], 1
	je	.label_2890
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_2894
.label_2890:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_2896
.label_2894:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_2896
	movzx	eax, byte ptr [rbp - 0x7f]
	mov	ecx, eax
	shr	rcx, 5
	mov	rdx, qword ptr [rbp - 0x40]
	mov	eax, dword ptr [rdx + rcx*4]
	movzx	esi, byte ptr [rbp - 0x7f]
	mov	ecx, esi
	and	rcx, 0x1f
	mov	esi, ecx
	mov	ecx, esi
	shr	eax, cl
	and	eax, 1
	cmp	eax, 0
	jne	.label_2900
.label_2896:
	test	byte ptr [rbp - 0x81], 1
	jne	.label_2900
	jmp	.label_2803
.label_3974:
	mov	byte ptr [rbp - 0x80], 0x74
	jmp	.label_2787
.label_2859:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_2825
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_2825
	mov	qword ptr [rbp - 0xb8], 1
.label_2877:
	mov	rax, qword ptr [rbp - 0xb8]
	cmp	rax, qword ptr [rbp - 0xb0]
	jae	.label_2920
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x90]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0xb8]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	mov	esi, edx
	add	esi, -0x5b
	sub	esi, 2
	mov	dword ptr [rbp - 0x130], edx
	mov	dword ptr [rbp - 0x134], esi
	jb	.label_2924
	jmp	.label_2934
.label_2934:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x5e
	mov	dword ptr [rbp - 0x138], eax
	je	.label_2924
	jmp	.label_2940
.label_2940:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x60
	mov	dword ptr [rbp - 0x13c], eax
	je	.label_2924
	jmp	.label_2943
.label_2943:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x140], eax
	jne	.label_2945
	jmp	.label_2924
.label_2924:
	jmp	.label_2795
.label_2809:
	jmp	.label_2804
.label_2804:
	mov	byte ptr [rbp - 0x79], 1
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x70], rax
	mov	rdi, qword ptr [rbp - 0x70]
	call	strlen
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_2800
.label_2789:
	jmp	.label_2936
.label_2936:
	test	byte ptr [rbp - 0x79], 1
	je	.label_2955
	mov	al, byte ptr [rbp - 0x80]
	mov	byte ptr [rbp - 0x7f], al
	jmp	.label_2908
.label_2795:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_2959
	test	byte ptr [rbp - 0x79], 1
	je	.label_2959
	mov	dword ptr [rbp - 0x34], 4
.label_2959:
	xor	eax, eax
	mov	ecx, eax
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	eax, dword ptr [rbp - 0x34]
	mov	r9d, dword ptr [rbp - 0x38]
	and	r9d, 0xfffffffd
	mov	r10, qword ptr [rbp - 0x48]
	mov	r11, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x148], rcx
	mov	rcx, r8
	mov	r8d, eax
	mov	qword ptr [rsp], 0
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	qword ptr [rbp - 0x10], rax
.label_2786:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x158
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41f3c3
	.globl sub_41f3c3
	.type sub_41f3c3, @function
sub_41f3c3:

	nop	dword ptr [rax + rax]
.label_2957:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_2796
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_2796
	test	byte ptr [rbp - 0x7d], 1
	je	.label_2796
	test	byte ptr [rbp - 0x7e], 1
	je	.label_2978
	mov	r8d, 5
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x68]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	r9d, dword ptr [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x40]
	mov	r10, qword ptr [rbp - 0x48]
	mov	r11, qword ptr [rbp - 0x50]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_2786
.label_2914:
	jmp	.label_2787
.label_2787:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_2789
	test	byte ptr [rbp - 0x7b], 1
	je	.label_2789
	jmp	.label_2795
.label_3980:
	mov	byte ptr [rbp - 0x83], 1
	jmp	.label_2792
.label_2883:
	jmp	.label_2911
.label_2912:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_2798
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_2798
	jmp	.label_2942
.label_2942:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2807
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_2807:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_2812
.label_2812:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2819
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_2819:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_2818
.label_2818:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2832
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_2832:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_2798:
	jmp	.label_2903
.label_2903:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2842
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_2842:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_2847
.label_2847:
	jmp	.label_2803
.label_2803:
	jmp	.label_2852
.label_2852:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_2854
	test	byte ptr [rbp - 0x82], 1
	jne	.label_2854
	jmp	.label_2858
.label_2858:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2780
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_2780:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_2866
.label_2866:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2868
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_2868:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_2854:
	jmp	.label_2879
.label_2879:
	jmp	.label_2909
.label_2909:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2882
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_2882:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	test	byte ptr [rbp - 0x83], 1
	jne	.label_2888
	mov	byte ptr [rbp - 0x7e], 0
.label_2888:
	jmp	.label_2897
.label_2897:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_2898
.label_2929:
	jmp	.label_2902
.label_2902:
	mov	byte ptr [rbp - 0x83], 1
.label_3979:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_2905
	test	byte ptr [rbp - 0x7b], 1
	je	.label_2905
	jmp	.label_2795
.label_2873:
	jmp	.label_2817
.label_2817:
	jmp	.label_2835
.label_2835:
	jmp	.label_2810
.label_2800:
	mov	qword ptr [rbp - 0x58], 0
.label_2898:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_2915
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	sete	sil
	and	sil, 1
	movzx	edx, sil
	mov	dword ptr [rbp - 0xd4], edx
	jmp	.label_2917
.label_2965:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 1
	cmp	eax, 0
	je	.label_2921
	jmp	.label_2897
.label_2887:
	jmp	.label_2803
.label_2857:
	jmp	.label_2927
.label_2927:
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_2929
	jmp	.label_2792
.label_2974:
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	lea	rcx, [rbp - 0xa0]
	mov	rdi, rcx
	call	memset
	mov	qword ptr [rbp - 0x90], 0
	mov	byte ptr [rbp - 0x91], 1
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_2935
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
.label_2935:
	jmp	.label_2843
.label_2843:
	lea	rdi, [rbp - 0xa4]
	lea	rcx, [rbp - 0xa0]
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	add	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x58]
	add	rsi, qword ptr [rbp - 0x90]
	sub	rdx, rsi
	mov	rsi, rax
	call	rpl_mbrtowc
	mov	qword ptr [rbp - 0xb0], rax
	cmp	qword ptr [rbp - 0xb0], 0
	jne	.label_2952
	jmp	.label_2911
.label_2808:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_2960
	jmp	.label_2795
.label_3975:
	mov	byte ptr [rbp - 0x80], 0x6e
	jmp	.label_2787
.label_2988:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x48]
	shl	rcx, 4
	add	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 8], rax
.label_2983:
	jmp	.label_2987
.label_2987:
	jmp	.label_2981
.label_2981:
	jmp	.label_2985
.label_2985:
	jmp	.label_2986
.label_2986:
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41f77e
	.globl sub_41f77e
	.type sub_41f77e, @function
sub_41f77e:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x41f782

	.globl update_regs
	.type update_regs, @function
update_regs:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	qword ptr [rbp - 0x30], r9
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 8]
	shl	rcx, 4
	add	rcx, qword ptr [rdx]
	mov	eax, dword ptr [rcx + 8]
	and	eax, 0xff
	mov	dword ptr [rbp - 0x34], eax
	cmp	dword ptr [rbp - 0x34], 8
	jne	.label_2980
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	rax, qword ptr [rax]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x30]
	jge	.label_2982
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x40]
	shl	rcx, 4
	add	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x40]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 8], -1
.label_2982:
	jmp	.label_2986
.label_2980:
	cmp	dword ptr [rbp - 0x34], 9
	jne	.label_2985
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	rax, qword ptr [rax]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x30]
	jge	.label_2981
	mov	rax, qword ptr [rbp - 0x48]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x28]
	jge	.label_2984
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x48]
	shl	rcx, 4
	add	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x30]
	shl	rdx, 4
	mov	rdi, rax
	mov	rsi, rcx
	call	memcpy
	jmp	.label_2987
.label_2984:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	shr	edx, 0x13
	and	edx, 1
	cmp	edx, 0
	je	.label_2988
	mov	rax, qword ptr [rbp - 0x48]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax], -1
	je	.label_2988
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x30]
	shl	rdx, 4
	mov	rdi, rax
	mov	rsi, rcx
	call	memcpy
	jmp	.label_2983
.label_2992:
	mov	qword ptr [rbp - 0x30], 0
.label_2996:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_2993
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 0x38
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x38]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rsi + 0x10]
	imul	rdx, qword ptr [rsi + rdx*8], 0x18
	add	rcx, rdx
	mov	rdi, rax
	mov	rsi, rcx
	call	re_node_set_merge
	mov	dword ptr [rbp - 0x24], eax
	cmp	dword ptr [rbp - 0x24], 0
	setne	r8b
	and	r8b, 1
	movzx	eax, r8b
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_2995
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_2990
.label_2995:
	jmp	.label_2991
.label_2991:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_2996
.label_2993:
	jmp	.label_2989
.label_2989:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 0x38
	mov	rdx, rax
	call	re_node_set_add_intersect
	mov	dword ptr [rbp - 4], eax
.label_2990:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41f9a4
	.globl sub_41f9a4
	.type sub_41f9a4, @function
sub_41f9a4:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x41f9a7

	.globl add_epsilon_src_nodes
	.type add_epsilon_src_nodes, @function
add_epsilon_src_nodes:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	lea	rax, [rbp - 0x24]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	dword ptr [rbp - 0x24], 0
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	re_acquire_state
	mov	qword ptr [rbp - 0x38], rax
	cmp	dword ptr [rbp - 0x24], 0
	setne	cl
	and	cl, 1
	movzx	r8d, cl
	movsxd	rax, r8d
	cmp	rax, 0
	je	.label_2994
	mov	eax, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2990
.label_2994:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax + 0x38], 0
	jne	.label_2989
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 0x38
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rcx + 8]
	mov	rdi, rax
	call	re_node_set_alloc
	mov	dword ptr [rbp - 0x24], eax
	cmp	dword ptr [rbp - 0x24], 0
	setne	dl
	and	dl, 1
	movzx	eax, dl
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_2992
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_2990
.label_2999:
	jmp	.label_2997
.label_2997:
	mov	edi, dword ptr [rbp - 4]
	call	nl_langinfo
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41fa63
	.globl sub_41fa63
	.type sub_41fa63, @function
sub_41fa63:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x41fa69

	.globl rpl_nl_langinfo
	.type rpl_nl_langinfo, @function
rpl_nl_langinfo:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 4], edi
	add	edi, 0xffffd828
	sub	edi, 0xb
	mov	dword ptr [rbp - 8], edi
	ja	.label_2999
	jmp	.label_2998
.label_2998:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x27d8
	add	eax, 0x2001a
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2997
.label_3001:
	mov	byte ptr [rbp - 1], 0
.label_3002:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41faae
	.globl sub_41faae
	.type sub_41faae, @function
sub_41faae:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x41fabc
	.globl c_isupper
	.type c_isupper, @function
c_isupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_3001
	jmp	.label_3000
.label_3000:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_3002
	.section	.text
	.align	16
	#Procedure 0x41fae0

	.globl register_state
	.type register_state, @function
register_state:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rsi], rdx
	mov	rdx, qword ptr [rbp - 0x18]
	add	rdx, 0x20
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rsi + 0x10]
	mov	rdi, rdx
	call	re_node_set_alloc
	mov	dword ptr [rbp - 0x2c], eax
	cmp	dword ptr [rbp - 0x2c], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rdx, eax
	cmp	rdx, 0
	je	.label_3005
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_3007
.label_3003:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx + 8], rax
.label_3006:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rcx]
	mov	rsi, rdx
	add	rsi, 1
	mov	qword ptr [rcx], rsi
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	qword ptr [rcx + rdx*8], rax
	mov	dword ptr [rbp - 4], 0
.label_3007:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41fb89
	.globl sub_41fb89
	.type sub_41fb89, @function
sub_41fb89:

	nop	word ptr cs:[rax + rax]
.label_3005:
	mov	qword ptr [rbp - 0x38], 0
.label_3009:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 0x10]
	jge	.label_3011
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	and	edx, 0xff
	and	edx, 8
	cmp	edx, 0
	jne	.label_3004
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x20
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdi, rax
	call	re_node_set_insert_last
	test	al, 1
	jne	.label_3010
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_3007
.label_3010:
	jmp	.label_3004
.label_3004:
	jmp	.label_3008
.label_3008:
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_3009
.label_3011:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x10]
	and	rcx, qword ptr [rdx + 0x88]
	imul	rcx, rcx, 0x18
	add	rax, rcx
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rcx]
	setle	sil
	and	sil, 1
	movzx	edi, sil
	movsxd	rax, edi
	cmp	rax, 0
	je	.label_3006
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	shl	rax, 1
	add	rax, 2
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x48]
	shl	rcx, 3
	mov	rdi, rax
	mov	rsi, rcx
	call	realloc
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x50], 0
	sete	dl
	and	dl, 1
	movzx	r8d, dl
	movsxd	rax, r8d
	cmp	rax, 0
	je	.label_3003
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_3007
.label_3025:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax], 0
	jne	.label_3028
	mov	dword ptr [rbp - 0x2c], 1
	jmp	.label_3017
.label_3028:
	jmp	.label_3023
.label_3023:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0xb8]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 0xb8], rax
	mov	qword ptr [rbp - 0x38], 0
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 0xb0], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 0xa8], rax
	mov	dword ptr [rbp - 0x2c], 0
.label_3017:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x40]
	mov	rdi, rax
	call	free
	mov	ecx, dword ptr [rbp - 0x2c]
	mov	dword ptr [rbp - 4], ecx
.label_3024:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x90
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41fd68
	.globl sub_41fd68
	.type sub_41fd68, @function
sub_41fd68:

	nop	word ptr cs:[rax + rax]
.label_3013:
	jmp	.label_3022
.label_3022:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, -1
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	jge	.label_3018
	mov	dword ptr [rbp - 0x2c], 1
	jmp	.label_3017
	.section	.text
	.align	16
	#Procedure 0x41fd9d

	.globl prune_impossible_nodes
	.type prune_impossible_nodes, @function
prune_impossible_nodes:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x90
	movabs	rax, 0x1fffffffffffffff
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi + 0x98]
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x40], 0
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi + 0xa8]
	mov	qword ptr [rbp - 0x28], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi + 0xb0]
	mov	qword ptr [rbp - 0x20], rdi
	cmp	rax, qword ptr [rbp - 0x28]
	setbe	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_3029
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_3024
.label_3027:
	lea	rdi, [rbp - 0x78]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	r8, qword ptr [rbp - 0x28]
	call	sift_ctx_init
	lea	rsi, [rbp - 0x78]
	mov	rdi, qword ptr [rbp - 0x10]
	call	sift_states_backward
	mov	dword ptr [rbp - 0x2c], eax
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdi, rcx
	call	free
	cmp	dword ptr [rbp - 0x2c], 0
	setne	r9b
	and	r9b, 1
	movzx	eax, r9b
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_3025
	jmp	.label_3017
.label_3018:
	jmp	.label_3020
.label_3020:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0xb8]
	cmp	qword ptr [rdx + rcx*8], 0
	mov	byte ptr [rbp - 0x81], al
	je	.label_3015
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0xb8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	dl, byte ptr [rax + 0x68]
	shr	dl, 4
	and	dl, 1
	movzx	esi, dl
	cmp	esi, 0
	setne	dl
	xor	dl, 0xff
	mov	byte ptr [rbp - 0x81], dl
.label_3015:
	mov	al, byte ptr [rbp - 0x81]
	test	al, 1
	jne	.label_3022
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0xb8]
	mov	rsi, qword ptr [rcx + rax*8]
	mov	rdx, qword ptr [rbp - 0x28]
	call	check_halt_state_context
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_3019
.label_3014:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax], 0
	jne	.label_3021
	mov	rax, qword ptr [rbp - 0x40]
	cmp	qword ptr [rax], 0
	je	.label_3013
.label_3021:
	jmp	.label_3016
.label_3016:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	rcx, rax
	call	merge_state_array
	mov	dword ptr [rbp - 0x2c], eax
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdi, rcx
	call	free
	mov	qword ptr [rbp - 0x40], 0
	cmp	dword ptr [rbp - 0x2c], 0
	setne	r8b
	and	r8b, 1
	movzx	eax, r8b
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_3012
	jmp	.label_3017
.label_3026:
	jmp	.label_3019
.label_3019:
	lea	rdi, [rbp - 0x78]
	xor	esi, esi
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x28]
	add	rcx, 1
	shl	rcx, 3
	mov	qword ptr [rbp - 0x80], rdi
	mov	rdi, rax
	mov	rdx, rcx
	call	memset
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	r8, qword ptr [rbp - 0x28]
	mov	rdi, qword ptr [rbp - 0x80]
	call	sift_ctx_init
	lea	rsi, [rbp - 0x78]
	mov	rdi, qword ptr [rbp - 0x10]
	call	sift_states_backward
	mov	dword ptr [rbp - 0x2c], eax
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdi, rcx
	call	free
	cmp	dword ptr [rbp - 0x2c], 0
	setne	r9b
	and	r9b, 1
	movzx	eax, r9b
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_3014
	jmp	.label_3017
.label_3030:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0x98], 0
	je	.label_3027
	mov	rax, qword ptr [rbp - 0x28]
.label_3809:
	add	rax, 1
	shl	rax, 3
	mov	rdi, rax
	call	malloc
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x40], 0
	sete	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_3026
	mov	dword ptr [rbp - 0x2c], 0xc
	jmp	.label_3017
.label_3012:
	jmp	.label_3023
.label_3029:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	shl	rax, 3
	mov	rdi, rax
	call	malloc
	mov	qword ptr [rbp - 0x38], rax
	cmp	qword ptr [rbp - 0x38], 0
	sete	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_3030
	mov	dword ptr [rbp - 0x2c], 0xc
	jmp	.label_3017
.label_3038:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0xb8]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, 8
	mov	qword ptr [rbp - 0x48], rax
.label_3042:
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax + 8], 0
	jne	.label_3035
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rcx + rax*8], 0
	jmp	.label_3039
.label_3041:
	jmp	.label_3039
.label_3039:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_3032
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0xb8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	dl, byte ptr [rax + 0x68]
	shr	dl, 6
	and	dl, 1
	movzx	esi, dl
	cmp	esi, 0
	je	.label_3032
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x40]
	call	sift_states_bkref
	mov	dword ptr [rbp - 0x34], eax
	cmp	dword ptr [rbp - 0x34], 0
	setne	r8b
	and	r8b, 1
	movzx	eax, r8b
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_3034
	mov	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_3031
.label_3034:
	jmp	.label_3032
.label_3032:
	mov	dword ptr [rbp - 4], 0
.label_3031:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x420157
	.globl sub_420157
	.type sub_420157, @function
sub_420157:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x420162

	.globl update_cur_sifted_state
	.type update_cur_sifted_state, @function
update_cur_sifted_state:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x98]
	mov	qword ptr [rbp - 0x30], rcx
	mov	dword ptr [rbp - 0x34], 0
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0xb8]
	cmp	qword ptr [rdx + rcx*8], 0
	jne	.label_3038
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x48], rcx
	jmp	.label_3042
.label_3035:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_3036
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x40]
	call	add_epsilon_src_nodes
	mov	dword ptr [rbp - 0x34], eax
	cmp	dword ptr [rbp - 0x34], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rdx, eax
	cmp	rdx, 0
	je	.label_3033
	mov	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_3031
.label_3033:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0x28], 0
	je	.label_3037
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x20
	mov	rcx, qword ptr [rbp - 0x10]
	mov	r8, qword ptr [rcx + 0xd8]
	mov	r9, qword ptr [rbp - 0x20]
	mov	rcx, rax
	call	check_subexp_limits
	mov	dword ptr [rbp - 0x34], eax
	cmp	dword ptr [rbp - 0x34], 0
	setne	r10b
	and	r10b, 1
	movzx	eax, r10b
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_3040
	mov	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_3031
.label_3040:
	jmp	.label_3037
.label_3037:
	jmp	.label_3036
.label_3036:
	lea	rdi, [rbp - 0x34]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x28]
	call	re_acquire_state
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rsi]
	mov	qword ptr [rsi + rdx*8], rax
	cmp	dword ptr [rbp - 0x34], 0
	setne	cl
	and	cl, 1
	movzx	r8d, cl
	movsxd	rax, r8d
	cmp	rax, 0
	je	.label_3041
	mov	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_3031
	.section	.text
	.align	16
	#Procedure 0x4202b0

	.globl optimize_utf8
	.type optimize_utf8, @function
optimize_utf8:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 8], rdi
	mov	byte ptr [rbp - 0x15], 0
	mov	byte ptr [rbp - 0x16], 0
	mov	qword ptr [rbp - 0x10], 0
.label_3050:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 0x10]
	jae	.label_3062
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx]
	shl	rax, 4
	movzx	edx, byte ptr [rcx + rax + 8]
	dec	edx
	mov	eax, edx
	sub	edx, 0xb
	mov	qword ptr [rbp - 0x28], rax
	mov	dword ptr [rbp - 0x2c], edx
	ja	.label_3064
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_3054]]
	jmp	rcx
.label_3059:
	mov	dword ptr [rbp - 0x1c], 0
	mov	eax, dword ptr [rbp - 0x14]
	add	eax, 1
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_3049
.label_3873:
	mov	byte ptr [rbp - 0x16], 1
	jmp	.label_3044
.label_3066:
	jmp	.label_3046
.label_3057:
	jmp	.label_3044
.label_3061:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	and	edx, 0xff
	cmp	edx, 5
	jne	.label_3060
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	and	edx, 0xffffff00
	or	edx, 7
	mov	dword ptr [rax + 8], edx
.label_3060:
	jmp	.label_3043
.label_3043:
	jmp	.label_3053
.label_3053:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_3045
.label_3875:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx]
	shl	rax, 4
	mov	edx, dword ptr [rcx + rax]
	mov	esi, edx
	sub	esi, 0x10
	mov	dword ptr [rbp - 0x30], edx
	mov	dword ptr [rbp - 0x34], esi
	je	.label_3051
	jmp	.label_3058
.label_3058:
	mov	eax, dword ptr [rbp - 0x30]
	sub	eax, 0x20
	mov	dword ptr [rbp - 0x38], eax
	je	.label_3051
	jmp	.label_3063
.label_3063:
	mov	eax, dword ptr [rbp - 0x30]
	sub	eax, 0x40
	mov	dword ptr [rbp - 0x3c], eax
	je	.label_3051
	jmp	.label_3065
.label_3065:
	mov	eax, dword ptr [rbp - 0x30]
	sub	eax, 0x80
	mov	dword ptr [rbp - 0x40], eax
	jne	.label_3066
	jmp	.label_3051
.label_3051:
	jmp	.label_3068
.label_3871:
	jmp	.label_3044
.label_3874:
	jmp	.label_3046
.label_3068:
	jmp	.label_3044
.label_3044:
	jmp	.label_3047
.label_3047:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_3050
.label_3056:
	jmp	.label_3052
.label_3052:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 8]
	mov	dword ptr [rcx + 0xb4], 1
	mov	rcx, qword ptr [rbp - 8]
	mov	dl, byte ptr [rcx + 0xb0]
	and	dl, 0xfb
	mov	byte ptr [rcx + 0xb0], dl
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + 0x98], 0
	mov	byte ptr [rbp - 0x41], al
	jg	.label_3055
	mov	al, byte ptr [rbp - 0x16]
	mov	byte ptr [rbp - 0x41], al
.label_3055:
	mov	al, byte ptr [rbp - 0x41]
	and	al, 1
	movzx	ecx, al
	mov	rdx, qword ptr [rbp - 8]
	mov	al, cl
	mov	sil, byte ptr [rdx + 0xb0]
	and	al, 1
	shl	al, 1
	and	sil, 0xfd
	or	sil, al
	mov	byte ptr [rdx + 0xb0], sil
.label_3046:
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x420497
	.globl sub_420497
	.type sub_420497, @function
sub_420497:

	nop	dword ptr [rax]
.label_3064:
	call	abort
.label_3872:
	mov	dword ptr [rbp - 0x1c], 0
	mov	dword ptr [rbp - 0x14], 2
.label_3049:
	cmp	dword ptr [rbp - 0x14], 4
	jge	.label_3057
	movsxd	rax, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	shl	rcx, 4
	add	rcx, qword ptr [rdx]
	mov	rcx, qword ptr [rcx]
	mov	rax, qword ptr [rcx + rax*8]
	mov	esi, dword ptr [rbp - 0x1c]
	mov	ecx, esi
	shr	rax, cl
	cmp	rax, 0
	je	.label_3059
	jmp	.label_3046
.label_3870:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	movzx	edx, byte ptr [rax]
	cmp	edx, 0x80
	jl	.label_3067
	mov	byte ptr [rbp - 0x15], 1
.label_3067:
	jmp	.label_3044
.label_3062:
	test	byte ptr [rbp - 0x15], 1
	jne	.label_3048
	test	byte ptr [rbp - 0x16], 1
	je	.label_3052
.label_3048:
	mov	qword ptr [rbp - 0x10], 0
.label_3045:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 0x10]
	jae	.label_3056
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	and	edx, 0xff
	cmp	edx, 1
	jne	.label_3061
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	movzx	edx, byte ptr [rax]
	cmp	edx, 0x80
	jl	.label_3061
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	and	edx, 0xffdfffff
	mov	dword ptr [rax + 8], edx
	jmp	.label_3043
.label_3070:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4205a6
	.globl sub_4205a6
	.type sub_4205a6, @function
sub_4205a6:

	nop
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4205b3

	.globl print_spaces
	.type print_spaces, @function
print_spaces:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rdi
.label_3069:
	cmp	qword ptr [rbp - 0x10], 0
	jle	.label_3070
	mov	edi, 0x20
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x14], eax
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, -1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_3069
	.section	.text
	.align	16
	#Procedure 0x4205f0
	.globl quote_mem
	.type quote_mem, @function
quote_mem:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	edi, eax
	call	quote_n_mem
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x420617
	.globl sub_420617
	.type sub_420617, @function
sub_420617:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x420620

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rcx, OFFSET FLAT:default_quoting_options
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	quotearg_n_options
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x420653
	.globl sub_420653
	.type sub_420653, @function
sub_420653:

	nop	word ptr cs:[rax + rax]
.label_3072:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_3094
	.section	.text
	.align	16
	#Procedure 0x420671

	.globl mbsstr_trimmed_wordbounded
	.type mbsstr_trimmed_wordbounded, @function
mbsstr_trimmed_wordbounded:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x170
	mov	eax, 2
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, eax
	call	trim2
	mov	qword ptr [rbp - 0x18], rax
	mov	byte ptr [rbp - 0x19], 0
.label_3093:
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_3077
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x18]
	call	mbsstr
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_3098
	jmp	.label_3077
.label_3079:
	lea	rax, [rbp - 0x68]
	xor	esi, esi
	mov	ecx, 8
	mov	edx, ecx
	mov	rdi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x58], rdi
	mov	byte ptr [rbp - 0x68], 0
	mov	rdi, rax
	add	rdi, 4
	mov	qword ptr [rbp - 0x148], rax
	call	memset
	mov	byte ptr [rbp - 0x5c], 0
	mov	rdi, qword ptr [rbp - 0x148]
	call	mbuiter_multi_next
	xor	ecx, ecx
	mov	r8b, cl
	test	byte ptr [rbp - 0x48], 1
	mov	byte ptr [rbp - 0x149], r8b
	je	.label_3086
	cmp	dword ptr [rbp - 0x44], 0
	sete	al
	mov	byte ptr [rbp - 0x149], al
.label_3086:
	mov	al, byte ptr [rbp - 0x149]
	xor	al, 0xff
	test	al, 1
	jne	.label_3072
	jmp	.label_3077
.label_3077:
	mov	rdi, qword ptr [rbp - 0x18]
	call	free
	mov	al, byte ptr [rbp - 0x19]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x170
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x42075b
	.globl sub_42075b
	.type sub_42075b, @function
sub_42075b:

	nop	dword ptr [rax]
.label_3082:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x58], rax
	mov	byte ptr [rbp - 0x5c], 0
	mov	rax, qword ptr [rbp - 0xc8]
	add	rax, qword ptr [rbp - 0xd0]
	mov	qword ptr [rbp - 0xd0], rax
	mov	byte ptr [rbp - 0xd4], 0
	jmp	.label_3095
.label_3089:
	lea	rdi, [rbp - 0x68]
	mov	byte ptr [rbp - 0x6a], 1
	call	mbuiter_multi_next
	xor	eax, eax
	mov	cl, al
	test	byte ptr [rbp - 0x48], 1
	mov	byte ptr [rbp - 0x13f], cl
	je	.label_3081
	cmp	dword ptr [rbp - 0x44], 0
	sete	al
	mov	byte ptr [rbp - 0x13f], al
.label_3081:
	mov	al, byte ptr [rbp - 0x13f]
	xor	al, 0xff
	test	al, 1
	jne	.label_3073
	jmp	.label_3083
.label_3073:
	mov	eax, 0x30
	mov	edx, eax
	lea	rcx, [rbp - 0x110]
	lea	rsi, [rbp - 0x68]
	add	rsi, 0x10
	mov	rdi, rcx
	call	memcpy
	test	byte ptr [rbp - 0x100], 1
	je	.label_3075
	mov	edi, dword ptr [rbp - 0xfc]
	call	iswalnum
	cmp	eax, 0
	je	.label_3075
	mov	byte ptr [rbp - 0x6a], 0
.label_3075:
	jmp	.label_3083
.label_3083:
	test	byte ptr [rbp - 0x69], 1
	je	.label_3079
	test	byte ptr [rbp - 0x6a], 1
	je	.label_3079
	mov	byte ptr [rbp - 0x19], 1
	jmp	.label_3077
.label_3080:
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_3096
	jmp	.label_3077
.label_3087:
	mov	eax, 0x30
	mov	edx, eax
	lea	rcx, [rbp - 0xa0]
	lea	rsi, [rbp - 0x68]
	add	rsi, 0x10
	mov	rdi, rcx
	call	memcpy
	mov	rcx, qword ptr [rbp - 0x50]
	add	rcx, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x58], rcx
	mov	byte ptr [rbp - 0x5c], 0
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x28]
	jb	.label_3074
	test	byte ptr [rbp - 0x90], 1
	je	.label_3092
	mov	edi, dword ptr [rbp - 0x8c]
	call	iswalnum
	cmp	eax, 0
	je	.label_3092
	mov	byte ptr [rbp - 0x69], 0
.label_3092:
	jmp	.label_3085
.label_3085:
	xor	eax, eax
	mov	ecx, 8
	mov	edx, ecx
	lea	rsi, [rbp - 0xe0]
	lea	rdi, [rbp - 0x68]
	mov	r8, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x58], r8
	mov	byte ptr [rbp - 0x68], 0
	add	rdi, 4
	mov	qword ptr [rbp - 0x130], rsi
	mov	esi, eax
	mov	qword ptr [rbp - 0x138], rdx
	mov	dword ptr [rbp - 0x13c], eax
	call	memset
	mov	byte ptr [rbp - 0x5c], 0
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xd0], rdx
	mov	byte ptr [rbp - 0xe0], 0
	mov	rdx, qword ptr [rbp - 0x130]
	add	rdx, 4
	mov	rdi, rdx
	mov	esi, dword ptr [rbp - 0x13c]
	mov	rdx, qword ptr [rbp - 0x138]
	call	memset
	mov	byte ptr [rbp - 0xd4], 0
.label_3095:
	lea	rdi, [rbp - 0xe0]
	call	mbuiter_multi_next
	xor	eax, eax
	mov	cl, al
	test	byte ptr [rbp - 0xc0], 1
	mov	byte ptr [rbp - 0x13d], cl
	je	.label_3088
	cmp	dword ptr [rbp - 0xbc], 0
	sete	al
	mov	byte ptr [rbp - 0x13d], al
.label_3088:
	mov	al, byte ptr [rbp - 0x13d]
	xor	al, 0xff
	test	al, 1
	jne	.label_3097
	jmp	.label_3089
.label_3097:
	lea	rdi, [rbp - 0x68]
	call	mbuiter_multi_next
	xor	eax, eax
	mov	cl, al
	test	byte ptr [rbp - 0x48], 1
	mov	byte ptr [rbp - 0x13e], cl
	je	.label_3071
	cmp	dword ptr [rbp - 0x44], 0
	sete	al
	mov	byte ptr [rbp - 0x13e], al
.label_3071:
	mov	al, byte ptr [rbp - 0x13e]
	xor	al, 0xff
	test	al, 1
	jne	.label_3082
	call	abort
.label_3096:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
.label_3094:
	jmp	.label_3090
.label_3090:
	jmp	.label_3093
.label_3091:
	mov	byte ptr [rbp - 0x111], 1
	mov	rax, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_3084
	mov	rax, qword ptr [rbp - 0x28]
	movzx	ecx, byte ptr [rax - 1]
	movsxd	rax, ecx
	mov	qword ptr [rbp - 0x158], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x158]
	movzx	ecx, word ptr [rax + rdx*2]
	and	ecx, 8
	cmp	ecx, 0
	je	.label_3100
	mov	byte ptr [rbp - 0x111], 0
.label_3100:
	jmp	.label_3084
.label_3084:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x160], rax
	call	strlen
	mov	rdi, qword ptr [rbp - 0x160]
	add	rdi, rax
	mov	qword ptr [rbp - 0x120], rdi
	mov	byte ptr [rbp - 0x121], 1
	mov	rax, qword ptr [rbp - 0x120]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_3078
	mov	rax, qword ptr [rbp - 0x120]
	movzx	ecx, byte ptr [rax]
	movsxd	rax, ecx
	mov	qword ptr [rbp - 0x168], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x168]
	movzx	ecx, word ptr [rax + rdx*2]
	and	ecx, 8
	cmp	ecx, 0
	je	.label_3099
	mov	byte ptr [rbp - 0x121], 0
.label_3099:
	jmp	.label_3078
.label_3078:
	test	byte ptr [rbp - 0x111], 1
	je	.label_3080
	test	byte ptr [rbp - 0x121], 1
	je	.label_3080
	mov	byte ptr [rbp - 0x19], 1
	jmp	.label_3077
.label_3098:
	call	__ctype_get_mb_cur_max
	cmp	rax, 1
	jbe	.label_3091
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	lea	rcx, [rbp - 0x68]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x58], rdi
	mov	byte ptr [rbp - 0x68], 0
	add	rcx, 4
	mov	rdi, rcx
	call	memset
	mov	byte ptr [rbp - 0x5c], 0
	mov	byte ptr [rbp - 0x69], 1
	mov	rcx, qword ptr [rbp - 0x58]
	cmp	rcx, qword ptr [rbp - 0x28]
	jae	.label_3085
	jmp	.label_3074
.label_3074:
	lea	rdi, [rbp - 0x68]
	call	mbuiter_multi_next
	xor	eax, eax
	mov	cl, al
	test	byte ptr [rbp - 0x48], 1
	mov	byte ptr [rbp - 0x122], cl
	je	.label_3076
	cmp	dword ptr [rbp - 0x44], 0
	sete	al
	mov	byte ptr [rbp - 0x122], al
.label_3076:
	mov	al, byte ptr [rbp - 0x122]
	xor	al, 0xff
	test	al, 1
	jne	.label_3087
	call	abort
	.section	.text
	.align	16
	#Procedure 0x420b50
	.globl rpl_regfree
	.type rpl_regfree, @function
rpl_regfree:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	cmp	qword ptr [rbp - 0x10], 0
	setne	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdi, ecx
	cmp	rdi, 0
	je	.label_3101
	mov	rdi, qword ptr [rbp - 0x10]
	call	free_dfa_content
.label_3101:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax], 0
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 8], 0
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 0x20]
	call	free
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x20], 0
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 0x28]
	call	free
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x28], 0
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x420bd9
	.globl sub_420bd9
	.type sub_420bd9, @function
sub_420bd9:

	nop	dword ptr [rax]
.label_3107:
	jmp	.label_3102
.label_3102:
	jmp	.label_3103
.label_3106:
	cmp	dword ptr [rbp - 0x34], 0
	jle	.label_3105
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_3107
.label_3105:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_3108
.label_3104:
	mov	byte ptr [rbp - 1], 0
.label_3108:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x420c20

	.globl search_table
	.type search_table, @function
search_table:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], 0
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rsi + 0x10]
	sub	rsi, 1
	mov	qword ptr [rbp - 0x28], rsi
.label_3103:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x28]
	jg	.label_3104
	mov	eax, 2
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x20]
	add	rdx, qword ptr [rbp - 0x28]
	mov	rax, rdx
	cqo	
	idiv	rcx
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx]
	mov	rsi, qword ptr [rbp - 0x30]
	shl	rsi, 4
	add	rcx, rsi
	mov	rdi, rax
	mov	rsi, rcx
	call	compare_words
	mov	dword ptr [rbp - 0x34], eax
	cmp	dword ptr [rbp - 0x34], 0
	jge	.label_3106
	mov	rax, qword ptr [rbp - 0x30]
	sub	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_3102
	.section	.text
	.align	16
	#Procedure 0x420cb0

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	r8, -1
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	call	quotearg_n_custom_mem
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x420ce8
	.globl sub_420ce8
	.type sub_420ce8, @function
sub_420ce8:

	nop	dword ptr [rax + rax]
.label_3109:
	mov	qword ptr [rbp - 8], -1
.label_3111:
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x420cfe
	.globl sub_420cfe
	.type sub_420cfe, @function
sub_420cfe:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x420d05

	.globl search_cur_bkref_entry
	.type search_cur_bkref_entry, @function
search_cur_bkref_entry:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0xc8]
	mov	qword ptr [rbp - 0x28], rsi
	mov	qword ptr [rbp - 0x38], rsi
	mov	qword ptr [rbp - 0x20], 0
.label_3113:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x28]
	jge	.label_3114
	mov	eax, 2
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x20]
	add	rdx, qword ptr [rbp - 0x28]
	mov	rax, rdx
	cqo	
	idiv	rcx
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, rax, 0x28
	add	rax, qword ptr [rcx + 0xd8]
	mov	rax, qword ptr [rax + 8]
	cmp	rax, qword ptr [rbp - 0x18]
	jge	.label_3112
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_3110
.label_3114:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x38]
	jge	.label_3109
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, rax, 0x28
	add	rax, qword ptr [rcx + 0xd8]
	mov	rax, qword ptr [rax + 8]
	cmp	rax, qword ptr [rbp - 0x18]
	jne	.label_3109
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_3111
.label_3112:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x28], rax
.label_3110:
	jmp	.label_3113
.label_3116:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_3117:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x420ddb
	.globl sub_420ddb
	.type sub_420ddb, @function
sub_420ddb:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x420de4
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_3116
	jmp	.label_3115
.label_3115:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x61
	add	eax, 0x41
	mov	dword ptr [rbp - 4], eax
	jmp	.label_3117
.label_3151:
	test	byte ptr [rbp - 0x59], 1
	je	.label_3136
	cmp	qword ptr [rbp - 0x68], 0xa
	jb	.label_3136
	mov	rax, qword ptr [rbp - 0x70]
	imul	rcx, qword ptr [rbp - 0x68], 5
	cmp	rax, rcx
	jb	.label_3136
	mov	rax, qword ptr [rbp - 0x70]
	sub	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x100], rax
.label_3149:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x100], 0
	mov	byte ptr [rbp - 0x206], cl
	jbe	.label_3147
	lea	rdi, [rbp - 0xb8]
	call	mbuiter_multi_next
	xor	eax, eax
	mov	cl, al
	test	byte ptr [rbp - 0x98], 1
	mov	byte ptr [rbp - 0x207], cl
	je	.label_3162
	cmp	dword ptr [rbp - 0x94], 0
	sete	al
	mov	byte ptr [rbp - 0x207], al
.label_3162:
	mov	al, byte ptr [rbp - 0x207]
	xor	al, 0xff
	mov	byte ptr [rbp - 0x206], al
.label_3147:
	mov	al, byte ptr [rbp - 0x206]
	test	al, 1
	jne	.label_3142
	jmp	.label_3148
.label_3142:
	mov	rax, qword ptr [rbp - 0xa0]
	add	rax, qword ptr [rbp - 0xa8]
	mov	qword ptr [rbp - 0xa8], rax
	mov	byte ptr [rbp - 0xac], 0
	mov	rax, qword ptr [rbp - 0x100]
	add	rax, -1
	mov	qword ptr [rbp - 0x100], rax
	jmp	.label_3149
.label_3122:
	mov	byte ptr [rbp - 0x191], 0
.label_3133:
	jmp	.label_3118
.label_3118:
	mov	rax, qword ptr [rbp - 0x1a0]
	add	rax, 1
	mov	qword ptr [rbp - 0x1a0], rax
	mov	rax, qword ptr [rbp - 0x1a8]
	add	rax, 1
	mov	qword ptr [rbp - 0x1a8], rax
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	movsx	edx, byte ptr [rbp - 0x1b9]
	cmp	ecx, edx
	jne	.label_3131
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x1d8], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x1e0], rax
.label_3126:
	mov	rax, qword ptr [rbp - 0x1e0]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_3121
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_3127
.label_3120:
	test	byte ptr [rbp - 0x191], 1
	je	.label_3118
	cmp	qword ptr [rbp - 0x1a0], 0xa
	jb	.label_3118
	mov	rax, qword ptr [rbp - 0x1a8]
	imul	rcx, qword ptr [rbp - 0x1a0], 5
	cmp	rax, rcx
	jb	.label_3118
	cmp	qword ptr [rbp - 0x1b8], 0
	je	.label_3124
	mov	rdi, qword ptr [rbp - 0x1b8]
	mov	rax, qword ptr [rbp - 0x1a8]
	sub	rax, qword ptr [rbp - 0x1b0]
	mov	rsi, rax
	call	strnlen
	add	rax, qword ptr [rbp - 0x1b8]
	mov	qword ptr [rbp - 0x1b8], rax
	mov	rax, qword ptr [rbp - 0x1b8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_3125
	mov	qword ptr [rbp - 0x1b8], 0
.label_3125:
	mov	rax, qword ptr [rbp - 0x1a8]
	mov	qword ptr [rbp - 0x1b0], rax
.label_3124:
	cmp	qword ptr [rbp - 0x1b8], 0
	jne	.label_3133
	lea	rcx, [rbp - 0x1c8]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, -1
	mov	rdx, qword ptr [rbp - 0x18]
	add	rdx, -1
	mov	qword ptr [rbp - 0x238], rdi
	mov	rdi, rdx
	mov	qword ptr [rbp - 0x240], rcx
	mov	qword ptr [rbp - 0x248], rax
	call	strlen
	mov	rdi, qword ptr [rbp - 0x238]
	mov	rsi, qword ptr [rbp - 0x248]
	mov	rdx, rax
	mov	rcx, qword ptr [rbp - 0x240]
	call	knuth_morris_pratt
	and	al, 1
	mov	byte ptr [rbp - 0x1c9], al
	test	byte ptr [rbp - 0x1c9], 1
	je	.label_3122
	mov	rax, qword ptr [rbp - 0x1c8]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_3127
.label_3152:
	mov	byte ptr [rbp - 0x59], 0
.label_3140:
	jmp	.label_3136
.label_3136:
	mov	rax, qword ptr [rbp - 0x68]
	add	rax, 1
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	test	byte ptr [rbp - 0xd8], 1
	je	.label_3137
	test	byte ptr [rbp - 0x38], 1
	je	.label_3137
	mov	eax, dword ptr [rbp - 0xd4]
	cmp	eax, dword ptr [rbp - 0x34]
	je	.label_3150
	jmp	.label_3145
.label_3166:
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_3156
	mov	byte ptr [rbp - 0x191], 1
	mov	qword ptr [rbp - 0x1a0], 0
	mov	qword ptr [rbp - 0x1a8], 0
	mov	qword ptr [rbp - 0x1b0], 0
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x1b8], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	dl, byte ptr [rax]
	mov	byte ptr [rbp - 0x1b9], dl
.label_3119:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_3120
	mov	qword ptr [rbp - 8], 0
	jmp	.label_3127
.label_3165:
	jmp	.label_3145
.label_3145:
	jmp	.label_3155
.label_3155:
	mov	rax, qword ptr [rbp - 0xe0]
	add	rax, qword ptr [rbp - 0xe8]
	mov	qword ptr [rbp - 0xe8], rax
	mov	byte ptr [rbp - 0xec], 0
	jmp	.label_3163
.label_3134:
	lea	rdi, [rbp - 0x150]
	call	mbuiter_multi_next
	xor	eax, eax
	mov	cl, al
	test	byte ptr [rbp - 0x130], 1
	mov	byte ptr [rbp - 0x22b], cl
	je	.label_3158
	cmp	dword ptr [rbp - 0x12c], 0
	sete	al
	mov	byte ptr [rbp - 0x22b], al
.label_3158:
	mov	al, byte ptr [rbp - 0x22b]
	xor	al, 0xff
	test	al, 1
	jne	.label_3144
	mov	qword ptr [rbp - 8], 0
	jmp	.label_3127
.label_3143:
	mov	rax, qword ptr [rbp - 0x138]
	cmp	rax, qword ptr [rbp - 0x178]
	jne	.label_3146
	mov	rdi, qword ptr [rbp - 0x140]
	mov	rsi, qword ptr [rbp - 0x180]
	mov	rdx, qword ptr [rbp - 0x138]
	call	memcmp
	cmp	eax, 0
	je	.label_3154
.label_3146:
	jmp	.label_3165
.label_3137:
	mov	rax, qword ptr [rbp - 0xe0]
	cmp	rax, qword ptr [rbp - 0x40]
	jne	.label_3145
	mov	rdi, qword ptr [rbp - 0xe8]
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0xe0]
	call	memcmp
	cmp	eax, 0
	jne	.label_3145
.label_3150:
	lea	rax, [rbp - 0x190]
	xor	esi, esi
	mov	ecx, 8
	mov	edx, ecx
	mov	ecx, 0x40
	mov	edi, ecx
	lea	r8, [rbp - 0xf8]
	lea	r9, [rbp - 0x150]
	mov	qword ptr [rbp - 0x210], rdi
	mov	rdi, r9
	mov	dword ptr [rbp - 0x214], esi
	mov	rsi, r8
	mov	r8, qword ptr [rbp - 0x210]
	mov	qword ptr [rbp - 0x220], rdx
	mov	rdx, r8
	mov	qword ptr [rbp - 0x228], rax
	call	memcpy
	mov	rax, qword ptr [rbp - 0x138]
	add	rax, qword ptr [rbp - 0x140]
	mov	qword ptr [rbp - 0x140], rax
	mov	byte ptr [rbp - 0x144], 0
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x180], rax
	mov	byte ptr [rbp - 0x190], 0
	mov	rax, qword ptr [rbp - 0x228]
	add	rax, 4
	mov	rdi, rax
	mov	esi, dword ptr [rbp - 0x214]
	mov	rdx, qword ptr [rbp - 0x220]
	call	memset
	mov	byte ptr [rbp - 0x184], 0
	mov	rdi, qword ptr [rbp - 0x228]
	call	mbuiter_multi_next
	xor	ecx, ecx
	mov	r10b, cl
	test	byte ptr [rbp - 0x170], 1
	mov	byte ptr [rbp - 0x229], r10b
	je	.label_3161
	cmp	dword ptr [rbp - 0x16c], 0
	sete	al
	mov	byte ptr [rbp - 0x229], al
.label_3161:
	mov	al, byte ptr [rbp - 0x229]
	xor	al, 0xff
	test	al, 1
	jne	.label_3159
	call	abort
.label_3144:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	test	byte ptr [rbp - 0x130], 1
	je	.label_3143
	test	byte ptr [rbp - 0x170], 1
	je	.label_3143
	mov	eax, dword ptr [rbp - 0x12c]
	cmp	eax, dword ptr [rbp - 0x16c]
	je	.label_3154
	jmp	.label_3146
.label_3130:
	jmp	.label_3129
.label_3129:
	mov	rax, qword ptr [rbp - 0x1d8]
	add	rax, 1
	mov	qword ptr [rbp - 0x1d8], rax
	mov	rax, qword ptr [rbp - 0x1e0]
	add	rax, 1
	mov	qword ptr [rbp - 0x1e0], rax
	jmp	.label_3126
.label_3160:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_3127
.label_3159:
	mov	rax, qword ptr [rbp - 0x178]
	add	rax, qword ptr [rbp - 0x180]
	mov	qword ptr [rbp - 0x180], rax
	mov	byte ptr [rbp - 0x184], 0
.label_3135:
	lea	rdi, [rbp - 0x190]
	call	mbuiter_multi_next
	xor	eax, eax
	mov	cl, al
	test	byte ptr [rbp - 0x170], 1
	mov	byte ptr [rbp - 0x22a], cl
	je	.label_3153
	cmp	dword ptr [rbp - 0x16c], 0
	sete	al
	mov	byte ptr [rbp - 0x22a], al
.label_3153:
	mov	al, byte ptr [rbp - 0x22a]
	xor	al, 0xff
	test	al, 1
	jne	.label_3134
	mov	rax, qword ptr [rbp - 0xe8]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_3127
.label_3154:
	jmp	.label_3139
.label_3139:
	mov	rax, qword ptr [rbp - 0x138]
	add	rax, qword ptr [rbp - 0x140]
	mov	qword ptr [rbp - 0x140], rax
	mov	byte ptr [rbp - 0x144], 0
	mov	rax, qword ptr [rbp - 0x178]
	add	rax, qword ptr [rbp - 0x180]
	mov	qword ptr [rbp - 0x180], rax
	mov	byte ptr [rbp - 0x184], 0
	jmp	.label_3135
.label_3121:
	mov	rax, qword ptr [rbp - 0x1d8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_3123
	mov	qword ptr [rbp - 8], 0
	jmp	.label_3127
.label_3123:
	mov	rax, qword ptr [rbp - 0x1a8]
	add	rax, 1
	mov	qword ptr [rbp - 0x1a8], rax
	mov	rax, qword ptr [rbp - 0x1d8]
	movsx	ecx, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x1e0]
	movsx	edx, byte ptr [rax]
	cmp	ecx, edx
	je	.label_3130
	jmp	.label_3128
.label_3156:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_3127:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x250
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4214b5
	.globl sub_4214b5
	.type sub_4214b5, @function
sub_4214b5:

	nop	
.label_3128:
	jmp	.label_3131
.label_3131:
	jmp	.label_3132
.label_3132:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_3119
	.section	.text
	.align	16
	#Procedure 0x4214d2

	.globl mbsstr
	.type mbsstr, @function
mbsstr:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x250
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	call	__ctype_get_mb_cur_max
	cmp	rax, 1
	jbe	.label_3166
	lea	rax, [rbp - 0x58]
	xor	esi, esi
	mov	ecx, 8
	mov	edx, ecx
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x48], rdi
	mov	byte ptr [rbp - 0x58], 0
	mov	rdi, rax
	add	rdi, 4
	mov	qword ptr [rbp - 0x1e8], rax
	call	memset
	mov	byte ptr [rbp - 0x4c], 0
	mov	rdi, qword ptr [rbp - 0x1e8]
	call	mbuiter_multi_next
	xor	ecx, ecx
	mov	r8b, cl
	test	byte ptr [rbp - 0x38], 1
	mov	byte ptr [rbp - 0x1e9], r8b
	je	.label_3138
	cmp	dword ptr [rbp - 0x34], 0
	sete	al
	mov	byte ptr [rbp - 0x1e9], al
.label_3138:
	mov	al, byte ptr [rbp - 0x1e9]
	xor	al, 0xff
	test	al, 1
	jne	.label_3157
	jmp	.label_3160
.label_3157:
	xor	eax, eax
	mov	ecx, 8
	mov	edx, ecx
	lea	rsi, [rbp - 0xf8]
	lea	rdi, [rbp - 0xb8]
	mov	byte ptr [rbp - 0x59], 1
	mov	qword ptr [rbp - 0x68], 0
	mov	qword ptr [rbp - 0x70], 0
	mov	qword ptr [rbp - 0x78], 0
	mov	r8, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xa8], r8
	mov	byte ptr [rbp - 0xb8], 0
	add	rdi, 4
	mov	qword ptr [rbp - 0x1f8], rsi
	mov	esi, eax
	mov	qword ptr [rbp - 0x200], rdx
	mov	dword ptr [rbp - 0x204], eax
	call	memset
	mov	byte ptr [rbp - 0xac], 0
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0xe8], rdx
	mov	byte ptr [rbp - 0xf8], 0
	mov	rdx, qword ptr [rbp - 0x1f8]
	add	rdx, 4
	mov	rdi, rdx
	mov	esi, dword ptr [rbp - 0x204]
	mov	rdx, qword ptr [rbp - 0x200]
	call	memset
	mov	byte ptr [rbp - 0xec], 0
.label_3163:
	lea	rdi, [rbp - 0xf8]
	call	mbuiter_multi_next
	xor	eax, eax
	mov	cl, al
	test	byte ptr [rbp - 0xd8], 1
	mov	byte ptr [rbp - 0x205], cl
	je	.label_3141
	cmp	dword ptr [rbp - 0xd4], 0
	sete	al
	mov	byte ptr [rbp - 0x205], al
.label_3141:
	mov	al, byte ptr [rbp - 0x205]
	xor	al, 0xff
	test	al, 1
	jne	.label_3151
	mov	qword ptr [rbp - 8], 0
	jmp	.label_3127
.label_3148:
	lea	rdi, [rbp - 0xb8]
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x78], rax
	call	mbuiter_multi_next
	xor	ecx, ecx
	mov	dl, cl
	test	byte ptr [rbp - 0x98], 1
	mov	byte ptr [rbp - 0x208], dl
	je	.label_3164
	cmp	dword ptr [rbp - 0x94], 0
	sete	al
	mov	byte ptr [rbp - 0x208], al
.label_3164:
	mov	al, byte ptr [rbp - 0x208]
	xor	al, 0xff
	test	al, 1
	jne	.label_3140
	lea	rdx, [rbp - 0x108]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	knuth_morris_pratt_multibyte
	and	al, 1
	mov	byte ptr [rbp - 0x109], al
	test	byte ptr [rbp - 0x109], 1
	je	.label_3152
	mov	rax, qword ptr [rbp - 0x108]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_3127
.label_3186:
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 2
	cmp	eax, 0
	je	.label_3180
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x38]
	shl	rcx, 4
	add	rcx, qword ptr [rdx]
	cmp	rax, qword ptr [rcx]
	jne	.label_3180
	mov	dword ptr [rbp - 4], 0
	jmp	.label_3167
.label_3178:
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 1
	cmp	eax, 0
	je	.label_3172
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x38]
	shl	rcx, 4
	add	rcx, qword ptr [rdx]
	cmp	rax, qword ptr [rcx]
	jne	.label_3172
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_3167
.label_3181:
	cmp	qword ptr [rbp - 0x30], -1
	je	.label_3173
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0xd8]
	imul	rcx, qword ptr [rbp - 0x30], 0x28
	add	rax, rcx
	mov	qword ptr [rbp - 0x58], rax
.label_3182:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x50]
	je	.label_3185
	jmp	.label_3171
.label_3187:
	cmp	dword ptr [rbp - 0x64], 0
	jne	.label_3174
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 2
	cmp	eax, 0
	je	.label_3174
	mov	dword ptr [rbp - 4], 0
	jmp	.label_3167
.label_3170:
	xor	eax, eax
	mov	ecx, 1
	mov	edx, dword ptr [rbp - 0x14]
	and	edx, 2
	cmp	edx, 0
	cmovne	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_3167:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x90
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4217cd
	.globl sub_4217cd
	.type sub_4217cd, @function
sub_4217cd:

	nop	dword ptr [rax]
.label_3179:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_3167
.label_3174:
	cmp	qword ptr [rbp - 0x20], 0x40
	jge	.label_3177
	mov	eax, 1
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x88], rcx
	mov	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x88]
	shl	rdx, cl
	xor	rdx, 0xffffffffffffffff
	mov	rsi, qword ptr [rbp - 0x58]
	movzx	eax, word ptr [rsi + 0x22]
	mov	edi, eax
	and	rdi, rdx
	mov	r8w, di
	mov	word ptr [rsi + 0x22], r8w
.label_3177:
	jmp	.label_3171
.label_3171:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, rax
	add	rcx, 0x28
	mov	qword ptr [rbp - 0x58], rcx
	cmp	byte ptr [rax + 0x20], 0
	jne	.label_3182
	jmp	.label_3173
.label_3173:
	jmp	.label_3169
	.section	.text
	.align	16
	#Procedure 0x421849

	.globl check_dst_limits_calc_pos_1
	.type check_dst_limits_calc_pos_1, @function
check_dst_limits_calc_pos_1:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x90
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x98]
	mov	qword ptr [rbp - 0x38], rcx
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rcx + 0x30]
	imul	rdx, qword ptr [rbp - 0x28], 0x18
	add	rcx, rdx
	mov	qword ptr [rbp - 0x40], rcx
	mov	qword ptr [rbp - 0x48], 0
.label_3168:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_3170
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x50], rax
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rcx]
	shl	rax, 4
	movzx	edx, byte ptr [rcx + rax + 8]
	mov	esi, edx
	sub	esi, 4
	mov	dword ptr [rbp - 0x68], edx
	mov	dword ptr [rbp - 0x6c], esi
	je	.label_3181
	jmp	.label_3188
.label_3188:
	mov	eax, dword ptr [rbp - 0x68]
	sub	eax, 8
	mov	dword ptr [rbp - 0x70], eax
	je	.label_3178
	jmp	.label_3184
.label_3184:
	mov	eax, dword ptr [rbp - 0x68]
	sub	eax, 9
	mov	dword ptr [rbp - 0x74], eax
	je	.label_3186
	jmp	.label_3183
.label_3176:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x14]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	r8, qword ptr [rbp - 0x30]
	call	check_dst_limits_calc_pos_1
	mov	dword ptr [rbp - 0x64], eax
	cmp	dword ptr [rbp - 0x64], -1
	jne	.label_3187
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_3167
.label_3183:
	jmp	.label_3169
.label_3169:
	jmp	.label_3189
.label_3189:
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_3168
.label_3172:
	jmp	.label_3169
.label_3185:
	cmp	qword ptr [rbp - 0x20], 0x40
	jge	.label_3175
	mov	eax, 1
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x58]
	movzx	eax, word ptr [rdx + 0x22]
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x80], rcx
	mov	rcx, rsi
	mov	rsi, qword ptr [rbp - 0x80]
	shl	rsi, cl
	and	rdx, rsi
	cmp	rdx, 0
	jne	.label_3175
	jmp	.label_3171
.label_3180:
	jmp	.label_3169
.label_3175:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x38]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x28]
	mov	rax, qword ptr [rax + 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x28]
	jne	.label_3176
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 1
	cmp	eax, 0
	je	.label_3179
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_3167
	.section	.text
	.align	16
	#Procedure 0x4219e0

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rdi]
	and	eax, 0x100
	cmp	eax, 0
	je	.label_3190
	xor	eax, eax
	mov	esi, eax
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 8]
	call	rpl_fseeko
	mov	dword ptr [rbp - 0xc], eax
.label_3190:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x421a1b
	.globl sub_421a1b
	.type sub_421a1b, @function
sub_421a1b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x421a20

	.globl bitset_not
	.type bitset_not, @function
bitset_not:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], 0
.label_3191:
	cmp	dword ptr [rbp - 0xc], 4
	jge	.label_3192
	movsxd	rax, dword ptr [rbp - 0xc]
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	xor	rax, 0xffffffffffffffff
	movsxd	rcx, dword ptr [rbp - 0xc]
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx + rcx*8], rax
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, 1
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_3191
.label_3192:
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x421a65
	.globl sub_421a65
	.type sub_421a65, @function
sub_421a65:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x421a70
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	edx, 0x3a
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	quotearg_char_mem
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x421a98
	.globl sub_421a98
	.type sub_421a98, @function
sub_421a98:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x421aa0

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	cmp	qword ptr [rbp - 8], 0
	jne	.label_3193
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_3193:
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 0xa
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_3195
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_3194
.label_3195:
	call	abort
.label_3194:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x28], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x30], rax
	add	rsp, 0x20
	pop	rbp
	ret	
.label_3199:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x60], rcx
	jmp	.label_3204
.label_3204:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x58]
	sub	rcx, rax
	mov	rdi, rcx
	call	print_spaces
	test	byte ptr [byte ptr [head_truncation]],  1
	je	.label_3196
	mov	rdi,  qword ptr [word ptr [truncation_string]]
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x64], eax
.label_3196:
	mov	rdi,  qword ptr [word ptr [head]]
	mov	rsi,  qword ptr [word ptr [label_176]]
	call	print_field
	jmp	.label_3200
.label_3198:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x78], rcx
	jmp	.label_3197
.label_3197:
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x70]
	sub	rcx, rax
	mov	rdi, rcx
	call	print_spaces
.label_3208:
	jmp	.label_3200
.label_3200:
	test	byte ptr [byte ptr [auto_reference]],  1
	jne	.label_3201
	test	byte ptr [byte ptr [input_reference]],  1
	je	.label_3206
.label_3201:
	test	byte ptr [byte ptr [right_reference]],  1
	je	.label_3206
	mov	rdi,  qword ptr [word ptr [gap_size]]
	call	print_spaces
	mov	rdi,  qword ptr [word ptr [reference]]
	mov	rsi,  qword ptr [word ptr [label_445]]
	call	print_field
.label_3206:
	mov	edi, 0xa
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x7c], eax
	add	rsp, 0x80
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x421bf7
	.globl sub_421bf7
	.type sub_421bf7, @function
sub_421bf7:

	nop	
.label_3213:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x38], rcx
	jmp	.label_3211
.label_3211:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, rax
	mov	rdi, rcx
	call	print_spaces
.label_3220:
	test	byte ptr [byte ptr [before_truncation]],  1
	je	.label_3202
	mov	rdi,  qword ptr [word ptr [truncation_string]]
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x3c], eax
.label_3202:
	mov	rdi,  qword ptr [word ptr [before]]
	mov	rsi,  qword ptr [word ptr [label_447]]
	call	print_field
	mov	rdi,  qword ptr [word ptr [gap_size]]
	call	print_spaces
	mov	rdi,  qword ptr [word ptr [keyafter]]
	mov	rsi,  qword ptr [word ptr [label_440]]
	call	print_field
	test	byte ptr [byte ptr [keyafter_truncation]],  1
	je	.label_3210
	mov	rdi,  qword ptr [word ptr [truncation_string]]
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x40], eax
.label_3210:
	mov	rax,  qword ptr [word ptr [head]]
	cmp	rax,  qword ptr [word ptr [label_176]]
	jae	.label_3207
	mov	rax,  qword ptr [word ptr [half_line_width]]
	mov	rcx,  qword ptr [word ptr [label_440]]
	mov	rdx,  qword ptr [word ptr [keyafter]]
	sub	rcx, rdx
	sub	rax, rcx
	test	byte ptr [byte ptr [keyafter_truncation]],  1
	mov	qword ptr [rbp - 0x48], rax
	je	.label_3209
	mov	rax,  qword ptr [word ptr [truncation_string_length]]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_3205
.label_3221:
	mov	rdi,  qword ptr [word ptr [reference]]
	mov	rsi,  qword ptr [word ptr [label_445]]
	call	print_field
	mov	rsi,  qword ptr [word ptr [reference_max_width]]
	add	rsi,  qword ptr [word ptr [gap_size]]
	mov	rdi,  qword ptr [word ptr [label_445]]
	mov	rax,  qword ptr [word ptr [reference]]
	sub	rdi, rax
	sub	rsi, rdi
	mov	rdi, rsi
	call	print_spaces
.label_3216:
	jmp	.label_3218
.label_3218:
	mov	rax,  qword ptr [word ptr [tail]]
	cmp	rax,  qword ptr [word ptr [label_175]]
	jae	.label_3222
	mov	rdi,  qword ptr [word ptr [tail]]
	mov	rsi,  qword ptr [word ptr [label_175]]
	call	print_field
	test	byte ptr [byte ptr [tail_truncation]],  1
	je	.label_3219
	mov	rdi,  qword ptr [word ptr [truncation_string]]
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	dword ptr [rbp - 8], eax
.label_3219:
	mov	rax,  qword ptr [word ptr [half_line_width]]
	sub	rax,  qword ptr [word ptr [gap_size]]
	mov	rcx,  qword ptr [word ptr [label_447]]
	mov	rdx,  qword ptr [word ptr [before]]
	sub	rcx, rdx
	sub	rax, rcx
	test	byte ptr [byte ptr [before_truncation]],  1
	mov	qword ptr [rbp - 0x10], rax
	je	.label_3214
	mov	rax,  qword ptr [word ptr [truncation_string_length]]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_3212
.label_3217:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x28], rcx
	jmp	.label_3215
.label_3215:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	sub	rcx, rax
	mov	rdi, rcx
	call	print_spaces
	jmp	.label_3220
.label_3209:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x50], rcx
	jmp	.label_3205
.label_3205:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x48]
	sub	rcx, rax
	mov	rax,  qword ptr [word ptr [label_176]]
	mov	rdx,  qword ptr [word ptr [head]]
	sub	rax, rdx
	sub	rcx, rax
	test	byte ptr [byte ptr [head_truncation]],  1
	mov	qword ptr [rbp - 0x58], rcx
	je	.label_3199
	mov	rax,  qword ptr [word ptr [truncation_string_length]]
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_3204
.label_3214:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x18], rcx
	jmp	.label_3212
.label_3212:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rcx, rax
	mov	rax,  qword ptr [word ptr [label_175]]
	mov	rdx,  qword ptr [word ptr [tail]]
	sub	rax, rdx
	sub	rcx, rax
	test	byte ptr [byte ptr [tail_truncation]],  1
	mov	qword ptr [rbp - 0x20], rcx
	je	.label_3217
	mov	rax,  qword ptr [word ptr [truncation_string_length]]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_3215
	.section	.text
	.align	16
	#Procedure 0x421e9c

	.globl output_one_dumb_line
	.type output_one_dumb_line, @function
output_one_dumb_line:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x80
	test	byte ptr [byte ptr [right_reference]],  1
	jne	.label_3218
	test	byte ptr [byte ptr [auto_reference]],  1
	je	.label_3221
	mov	rdi,  qword ptr [word ptr [reference]]
	mov	rsi,  qword ptr [word ptr [label_445]]
	call	print_field
	mov	edi, 0x3a
	call	putchar_unlocked
	mov	rsi,  qword ptr [word ptr [reference_max_width]]
	add	rsi,  qword ptr [word ptr [gap_size]]
	mov	rcx,  qword ptr [word ptr [label_445]]
	mov	rdx,  qword ptr [word ptr [reference]]
	sub	rcx, rdx
	sub	rsi, rcx
	sub	rsi, 1
	mov	rdi, rsi
	mov	dword ptr [rbp - 4], eax
	call	print_spaces
	jmp	.label_3216
.label_3207:
	test	byte ptr [byte ptr [auto_reference]],  1
	jne	.label_3203
	test	byte ptr [byte ptr [input_reference]],  1
	je	.label_3208
.label_3203:
	test	byte ptr [byte ptr [right_reference]],  1
	je	.label_3208
	mov	rax,  qword ptr [word ptr [half_line_width]]
	mov	rcx,  qword ptr [word ptr [label_440]]
	mov	rdx,  qword ptr [word ptr [keyafter]]
	sub	rcx, rdx
	sub	rax, rcx
	test	byte ptr [byte ptr [keyafter_truncation]],  1
	mov	qword ptr [rbp - 0x70], rax
	je	.label_3198
	mov	rax,  qword ptr [word ptr [truncation_string_length]]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_3197
.label_3222:
	mov	rax,  qword ptr [word ptr [half_line_width]]
	sub	rax,  qword ptr [word ptr [gap_size]]
	mov	rcx,  qword ptr [word ptr [label_447]]
	mov	rdx,  qword ptr [word ptr [before]]
	sub	rcx, rdx
	sub	rax, rcx
	test	byte ptr [byte ptr [before_truncation]],  1
	mov	qword ptr [rbp - 0x30], rax
	je	.label_3213
	mov	rax,  qword ptr [word ptr [truncation_string_length]]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_3211
.label_3270:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 2
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rcx + 0x58]
	jle	.label_3269
	mov	dword ptr [rbp - 4], 0
	jmp	.label_3223
.label_3232:
	mov	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_3223
.label_3255:
	mov	qword ptr [rbp - 0x40], 1
.label_3241:
	mov	rax, qword ptr [rbp - 0x40]
	movsxd	rcx, dword ptr [rbp - 0x34]
	cmp	rax, rcx
	jge	.label_3258
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 8]
	mov	dl, byte ptr [rcx + rax]
	mov	byte ptr [rbp - 0x42], dl
	movzx	esi, byte ptr [rbp - 0x42]
	cmp	esi, 0x80
	jl	.label_3227
	movzx	eax, byte ptr [rbp - 0x42]
	cmp	eax, 0xbf
	jle	.label_3237
.label_3227:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_3223
.label_3265:
	jmp	.label_3224
.label_3224:
	mov	rax, qword ptr [rbp - 0x50]
	mov	cl, byte ptr [rax + 0x20]
	and	cl, 1
	movzx	edx, cl
	cmp	edx, 0
	jne	.label_3243
	mov	eax, dword ptr [rbp - 0x54]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_3223
	.section	.text
	.align	16
	#Procedure 0x42207d

	.globl check_node_accept_bytes
	.type check_node_accept_bytes, @function
check_node_accept_bytes:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	mov	rdx, qword ptr [rbp - 0x18]
	shl	rdx, 4
	add	rcx, rdx
	mov	qword ptr [rbp - 0x30], rcx
	mov	rcx, qword ptr [rbp - 0x30]
	mov	eax, dword ptr [rcx + 8]
	and	eax, 0xff
	cmp	eax, 7
	sete	r8b
	and	r8b, 1
	movzx	eax, r8b
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_3262
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 8]
	mov	dl, byte ptr [rcx + rax]
	mov	byte ptr [rbp - 0x41], dl
	movzx	esi, byte ptr [rbp - 0x41]
	cmp	esi, 0xc2
	setl	dl
	and	dl, 1
	movzx	esi, dl
	movsxd	rax, esi
	cmp	rax, 0
	je	.label_3270
	mov	dword ptr [rbp - 4], 0
	jmp	.label_3223
.label_3245:
	mov	rax, qword ptr [rbp - 0x30]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 6
	jne	.label_3225
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x50], rax
	mov	dword ptr [rbp - 0x54], 0
	mov	rax, qword ptr [rbp - 0x50]
	cmp	qword ptr [rax + 0x40], 0
	jne	.label_3230
	mov	rax, qword ptr [rbp - 0x50]
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_3230
	mov	rax, qword ptr [rbp - 0x50]
	cmp	qword ptr [rax + 0x28], 0
	je	.label_3242
.label_3230:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x28]
	call	re_string_wchar_at
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_3248
.label_3259:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_3223
.label_3267:
	jmp	.label_3252
.label_3252:
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_3254
.label_3272:
	movzx	eax, byte ptr [rbp - 0x41]
	cmp	eax, 0xfe
	jge	.label_3259
	mov	dword ptr [rbp - 0x34], 6
	movzx	eax, byte ptr [rbp - 0x41]
	cmp	eax, 0xfc
	jne	.label_3261
	movzx	eax, byte ptr [rbp - 0x42]
	cmp	eax, 0x84
	jge	.label_3261
	mov	dword ptr [rbp - 4], 0
	jmp	.label_3223
.label_3276:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0xd8]
	and	rax, 0x40
	cmp	rax, 0
	jne	.label_3271
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 8]
	movzx	edx, byte ptr [rcx + rax]
	cmp	edx, 0xa
	je	.label_3274
.label_3271:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0xd8]
	and	rax, 0x80
	cmp	rax, 0
	je	.label_3232
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 8]
	movzx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	jne	.label_3232
.label_3274:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_3223
.label_3256:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x28]
	call	re_string_elem_size_at
	mov	dword ptr [rbp - 0x38], eax
	cmp	dword ptr [rbp - 0x38], 1
	jg	.label_3231
	cmp	dword ptr [rbp - 0x34], 1
	jle	.label_3246
.label_3231:
	cmp	dword ptr [rbp - 0x34], 0
	jne	.label_3245
.label_3246:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_3223
.label_3237:
	jmp	.label_3235
.label_3235:
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_3241
.label_3242:
	xor	eax, eax
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_3248
.label_3248:
	mov	eax, dword ptr [rbp - 0x68]
	mov	dword ptr [rbp - 0x58], eax
	mov	qword ptr [rbp - 0x40], 0
.label_3254:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rcx + 0x28]
	jge	.label_3263
	mov	eax, dword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rdx]
	cmp	eax, dword ptr [rdx + rcx*4]
	jne	.label_3267
	mov	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 0x54], eax
	jmp	.label_3224
.label_3263:
	mov	qword ptr [rbp - 0x40], 0
.label_3249:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rcx + 0x48]
	jge	.label_3273
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x60], rax
	mov	edi, dword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x60]
	call	iswctype
	cmp	eax, 0
	je	.label_3229
	mov	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 0x54], eax
	jmp	.label_3224
.label_3268:
	jmp	.label_3236
.label_3236:
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_3250
.label_3226:
	jmp	.label_3251
.label_3261:
	jmp	.label_3275
.label_3258:
	mov	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_3223
.label_3243:
	cmp	dword ptr [rbp - 0x54], 0
	jle	.label_3244
	mov	dword ptr [rbp - 4], 0
	jmp	.label_3223
.label_3275:
	jmp	.label_3251
.label_3251:
	jmp	.label_3239
.label_3239:
	jmp	.label_3228
.label_3228:
	jmp	.label_3253
.label_3253:
	mov	rax, qword ptr [rbp - 0x28]
	movsxd	rcx, dword ptr [rbp - 0x34]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rcx + 0x58]
	jle	.label_3255
	mov	dword ptr [rbp - 4], 0
	jmp	.label_3223
.label_3273:
	mov	qword ptr [rbp - 0x40], 0
.label_3250:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rcx + 0x40]
	jge	.label_3265
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rcx + 8]
	mov	edx, dword ptr [rcx + rax*4]
	cmp	edx, dword ptr [rbp - 0x58]
	jg	.label_3268
	mov	eax, dword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rdx + 0x10]
	cmp	eax, dword ptr [rdx + rcx*4]
	jg	.label_3268
	mov	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 0x54], eax
	jmp	.label_3224
.label_3225:
	mov	dword ptr [rbp - 4], 0
.label_3223:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x422418
	.globl sub_422418
	.type sub_422418, @function
sub_422418:

	nop	dword ptr [rax]
.label_3244:
	mov	eax, dword ptr [rbp - 0x38]
	cmp	eax, dword ptr [rbp - 0x34]
	jle	.label_3266
	mov	eax, dword ptr [rbp - 0x38]
	mov	dword ptr [rbp - 0x6c], eax
	jmp	.label_3233
.label_3266:
	mov	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 0x6c], eax
.label_3233:
	mov	eax, dword ptr [rbp - 0x6c]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_3223
.label_3238:
	jmp	.label_3239
.label_3269:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 8]
	mov	dl, byte ptr [rcx + rax + 1]
	mov	byte ptr [rbp - 0x42], dl
	movzx	esi, byte ptr [rbp - 0x41]
	cmp	esi, 0xe0
	jge	.label_3240
	mov	al, 1
	movzx	ecx, byte ptr [rbp - 0x42]
	cmp	ecx, 0x80
	mov	byte ptr [rbp - 0x61], al
	jl	.label_3257
	movzx	eax, byte ptr [rbp - 0x42]
	cmp	eax, 0xbf
	setg	cl
	mov	byte ptr [rbp - 0x61], cl
.label_3257:
	mov	al, byte ptr [rbp - 0x61]
	mov	ecx, 2
	xor	edx, edx
	test	al, 1
	cmovne	ecx, edx
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_3223
.label_3240:
	movzx	eax, byte ptr [rbp - 0x41]
	cmp	eax, 0xf0
	jge	.label_3260
	mov	dword ptr [rbp - 0x34], 3
	movzx	eax, byte ptr [rbp - 0x41]
	cmp	eax, 0xe0
	jne	.label_3264
	movzx	eax, byte ptr [rbp - 0x42]
	cmp	eax, 0xa0
	jge	.label_3264
	mov	dword ptr [rbp - 4], 0
	jmp	.label_3223
.label_3264:
	jmp	.label_3228
.label_3234:
	movzx	eax, byte ptr [rbp - 0x41]
	cmp	eax, 0xfc
	jge	.label_3272
	mov	dword ptr [rbp - 0x34], 5
	movzx	eax, byte ptr [rbp - 0x41]
	cmp	eax, 0xf8
	jne	.label_3226
	movzx	eax, byte ptr [rbp - 0x42]
	cmp	eax, 0x88
	jge	.label_3226
	mov	dword ptr [rbp - 4], 0
	jmp	.label_3223
.label_3260:
	movzx	eax, byte ptr [rbp - 0x41]
	cmp	eax, 0xf8
	jge	.label_3234
	mov	dword ptr [rbp - 0x34], 4
	movzx	eax, byte ptr [rbp - 0x41]
	cmp	eax, 0xf0
	jne	.label_3238
	movzx	eax, byte ptr [rbp - 0x42]
	cmp	eax, 0x90
	jge	.label_3238
	mov	dword ptr [rbp - 4], 0
	jmp	.label_3223
.label_3229:
	jmp	.label_3247
.label_3247:
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_3249
.label_3262:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x28]
	call	re_string_char_size_at
	mov	dword ptr [rbp - 0x34], eax
	mov	rsi, qword ptr [rbp - 0x30]
	mov	eax, dword ptr [rsi + 8]
	and	eax, 0xff
	cmp	eax, 5
	jne	.label_3256
	cmp	dword ptr [rbp - 0x34], 1
	jg	.label_3276
	mov	dword ptr [rbp - 4], 0
	jmp	.label_3223
	.section	.text
	.align	16
	#Procedure 0x4225c0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_3277
	movabs	rdi, OFFSET FLAT:label_3284
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	dword ptr [rbp - 0x1c], eax
	call	abort
.label_3277:
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 8]
	call	strrchr
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_3278
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_3282
.label_3278:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rax
.label_3282:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	sub	rax, rcx
	cmp	rax, 7
	jl	.label_3279
	movabs	rsi, OFFSET FLAT:label_3280
	mov	eax, 7
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, -7
	mov	rdi, rcx
	call	strncmp
	cmp	eax, 0
	jne	.label_3279
	movabs	rsi, OFFSET FLAT:label_3281
	mov	eax, 3
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rcx
	mov	rdi, qword ptr [rbp - 0x18]
	call	strncmp
	cmp	eax, 0
	jne	.label_3283
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 3
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname]],  rax
.label_3283:
	jmp	.label_3279
.label_3279:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [program_name]],  rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname_full]],  rax
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4226d9
	.globl sub_4226d9
	.type sub_4226d9, @function
sub_4226d9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4226e0

	.globl optimize_subexps
	.type optimize_subexps, @function
optimize_subexps:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rsi + 0x30]
	and	eax, 0xff
	cmp	eax, 4
	jne	.label_3285
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0xe0], 0
	je	.label_3285
	mov	eax, 1
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x28]
	mov	edx, ecx
	mov	dword ptr [rbp - 0x1c], edx
	movsxd	rcx, dword ptr [rbp - 0x1c]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rsi + 0xe0]
	mov	rcx, qword ptr [rsi + rcx*8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + 0x28], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x28]
	mov	edx, ecx
	mov	ecx, edx
	shl	eax, cl
	movsxd	rsi, eax
	mov	rdi, qword ptr [rbp - 0x18]
	or	rsi, qword ptr [rdi + 0xa0]
	mov	qword ptr [rdi + 0xa0], rsi
	jmp	.label_3289
.label_3285:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x30]
	and	ecx, 0xff
	cmp	ecx, 0x11
	jne	.label_3286
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0
	je	.label_3286
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	ecx, dword ptr [rax + 0x30]
	and	ecx, 0xff
	cmp	ecx, 0x11
	jne	.label_3286
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	rax, qword ptr [rax + 0x28]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0
	je	.label_3287
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rcx], rax
.label_3287:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0xe0]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0xe0]
	mov	qword ptr [rdx + rcx*8], rax
	cmp	qword ptr [rbp - 0x28], 0x40
	jge	.label_3288
	mov	eax, 1
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x30], rcx
	mov	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x30]
	shl	rdx, cl
	xor	rdx, 0xffffffffffffffff
	mov	rsi, qword ptr [rbp - 0x18]
	and	rdx, qword ptr [rsi + 0xa0]
	mov	qword ptr [rsi + 0xa0], rdx
.label_3288:
	jmp	.label_3286
.label_3286:
	jmp	.label_3289
.label_3289:
	xor	eax, eax
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x422863
	.globl sub_422863
	.type sub_422863, @function
sub_422863:

	nop	word ptr cs:[rax + rax]
.label_3297:
	mov	edi, 0xa
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	putc_unlocked
	mov	dword ptr [rbp - 0x50], eax
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x42288b

	.globl argmatch_valid
	.type argmatch_valid, @function
argmatch_valid:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	movabs	rax, OFFSET FLAT:label_3293
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x28], 0
	mov	rdi, rax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stderr]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	qword ptr [rbp - 0x20], 0
	mov	dword ptr [rbp - 0x2c], eax
.label_3298:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_3297
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_3291
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	imul	rcx, qword ptr [rbp - 0x20]
	add	rax, rcx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	memcmp
	cmp	eax, 0
	je	.label_3294
.label_3291:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x38], rdi
	mov	rdi, rax
	call	quote
	movabs	rsi, OFFSET FLAT:label_3290
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	imul	rdx, qword ptr [rbp - 0x20]
	add	rcx, rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_3296
.label_3294:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x48], rdi
	mov	rdi, rax
	call	quote
	movabs	rsi, OFFSET FLAT:label_3295
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x4c], eax
.label_3296:
	jmp	.label_3292
.label_3292:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_3298
	.section	.text
	.align	16
	#Procedure 0x4229c0

	.globl sub_4229c0
	.type sub_4229c0, @function
sub_4229c0:
	xor	eax, eax
	mov	ecx, eax
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsi, rcx
	mov	qword ptr [rbp - 0x88], rdx
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x88]
	call	create_token_tree
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x50], 0
	sete	r8b
	and	r8b, 1
	movzx	r9d, r8b
	movsxd	rax, r9d
	cmp	rax, 0
	je	.label_3315
	mov	rax, qword ptr [rbp - 0x40]
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 0x10], 0
	jmp	.label_3300
	.section	.text
	.align	16
	#Procedure 0x422a1e

	.globl sub_422a1e
	.type sub_422a1e, @function
sub_422a1e:
	mov	rax, qword ptr [rbp - 0x40]
	mov	dword ptr [rax], 5
	mov	qword ptr [rbp - 0x10], 0
	jmp	.label_3300
	.section	.text
	.align	16
	#Procedure 0x422a35

	.globl sub_422a35
	.type sub_422a35, @function
sub_422a35:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x28]
	mov	dword ptr [rdx], 5
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsi, rcx
	mov	qword ptr [rbp - 0xb8], rdx
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0xb8]
	call	create_token_tree
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	dword ptr [rax], 0xa
.label_3332:
	xor	eax, eax
	mov	ecx, eax
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsi, rcx
	mov	qword ptr [rbp - 0xc0], rdx
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0xc0]
	call	create_token_tree
	mov	ecx, 0xa
	mov	qword ptr [rbp - 0x68], rax
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x68]
	call	create_tree
	mov	r8b, 1
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x60], 0
	mov	byte ptr [rbp - 0xc1], r8b
	je	.label_3321
	mov	al, 1
	cmp	qword ptr [rbp - 0x68], 0
	mov	byte ptr [rbp - 0xc1], al
	je	.label_3321
	cmp	qword ptr [rbp - 0x50], 0
	sete	al
	mov	byte ptr [rbp - 0xc1], al
.label_3321:
	mov	al, byte ptr [rbp - 0xc1]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_3322
	mov	rax, qword ptr [rbp - 0x40]
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 0x10], 0
	jmp	.label_3300
	.section	.text
	.align	16
	#Procedure 0x422b1a

	.globl sub_422b1a
	.type sub_422b1a, @function
sub_422b1a:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rax + 0x98]
	add	rcx, 1
	mov	qword ptr [rax + 0x98], rcx
	mov	rax, qword ptr [rbp - 0x48]
	mov	dl, byte ptr [rax + 0xb0]
	and	dl, 0xfd
	or	dl, 2
	mov	byte ptr [rax + 0xb0], dl
	jmp	.label_3305
	.section	.text
	.align	16
	#Procedure 0x422b4b

	.globl sub_422b4b
	.type sub_422b4b, @function
sub_422b4b:
	xor	eax, eax
	mov	ecx, eax
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsi, rcx
	mov	qword ptr [rbp - 0xd0], rdx
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0xd0]
	call	create_token_tree
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x50], 0
	sete	r8b
	and	r8b, 1
	movzx	r9d, r8b
	movsxd	rax, r9d
	cmp	rax, 0
	je	.label_3323
	mov	rax, qword ptr [rbp - 0x40]
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 0x10], 0
	jmp	.label_3300
	.section	.text
	.align	16
	#Procedure 0x422ba9

	.globl sub_422ba9
	.type sub_422ba9, @function
sub_422ba9:
	jmp	.label_3325
.label_3325:
	mov	rax, qword ptr [rbp - 0x30]
	and	rax, 0x20
	cmp	rax, 0
	je	.label_3327
	mov	rax, qword ptr [rbp - 0x40]
	mov	dword ptr [rax], 0xd
	mov	qword ptr [rbp - 0x10], 0
	jmp	.label_3300
.label_3323:
	jmp	.label_3320
.label_3320:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x30]
	call	fetch_token
	mov	rdx, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x10], rdx
	jmp	.label_3300
	.section	.text
	.align	16
	#Procedure 0x422bfa

	.globl sub_422bfa
	.type sub_422bfa, @function
sub_422bfa:
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax]
	and	ecx, 0x30f
	cmp	ecx, 0
	je	.label_3334
	mov	rax, qword ptr [rbp - 0x48]
	mov	cl, byte ptr [rax + 0xb0]
	shr	cl, 4
	and	cl, 1
	movzx	edx, cl
	cmp	edx, 0
	jne	.label_3334
	mov	rdi, qword ptr [rbp - 0x48]
	call	init_word_char
.label_3334:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	dword ptr [rax], 0x100
	je	.label_3333
	mov	rax, qword ptr [rbp - 0x28]
	cmp	dword ptr [rax], 0x200
	jne	sub_422b4b
.label_3333:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	dword ptr [rax], 0x100
	jne	sub_422a35
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x28]
	mov	dword ptr [rdx], 6
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsi, rcx
	mov	qword ptr [rbp - 0xb0], rdx
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0xb0]
	call	create_token_tree
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	dword ptr [rax], 9
	jmp	.label_3332
.label_3330:
	jmp	.label_3305
.label_3314:
	jmp	.label_3308
	.section	.text
	.align	16
	#Procedure 0x422cb0

	.globl sub_422cb0
	.type sub_422cb0, @function
sub_422cb0:
	xor	eax, eax
	mov	ecx, eax
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsi, rcx
	mov	qword ptr [rbp - 0xd8], rdx
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0xd8]
	call	create_token_tree
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x50], 0
	sete	r8b
	and	r8b, 1
	movzx	r9d, r8b
	movsxd	rax, r9d
	cmp	rax, 0
	je	.label_3336
	mov	rax, qword ptr [rbp - 0x40]
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 0x10], 0
	jmp	.label_3300
	.section	.text
	.align	16
	#Procedure 0x422d0e

	.globl sub_422d0e
	.type sub_422d0e, @function
sub_422d0e:
	jmp	.label_3305
.label_3319:
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x30]
	and	rax, 0x1000000
	cmp	rax, 0
	je	.label_3303
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 0xb
	je	.label_3311
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 0x17
	jne	.label_3303
.label_3311:
	cmp	qword ptr [rbp - 0x50], 0
	je	.label_3313
	movabs	rsi, OFFSET FLAT:free_tree
	xor	eax, eax
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x50]
	call	postorder
	mov	dword ptr [rbp - 0x11c], eax
.label_3313:
	mov	rax, qword ptr [rbp - 0x40]
	mov	dword ptr [rax], 0xd
	mov	qword ptr [rbp - 0x10], 0
	jmp	.label_3300
	.section	.text
	.align	16
	#Procedure 0x422d9a

	.globl sub_422d9a
	.type sub_422d9a, @function
sub_422d9a:
	mov	eax, 1
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rcx + 0xa8]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rdx]
	mov	esi, edx
	mov	qword ptr [rbp - 0x98], rcx
	mov	ecx, esi
	shl	eax, cl
	movsxd	rdx, eax
	mov	rdi, qword ptr [rbp - 0x98]
	and	rdi, rdx
	cmp	rdi, 0
	jne	.label_3337
	mov	rax, qword ptr [rbp - 0x40]
	mov	dword ptr [rax], 6
	mov	qword ptr [rbp - 0x10], 0
	jmp	.label_3300
.label_3324:
	jmp	.label_3331
.label_3331:
	jmp	.label_3328
.label_3328:
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 9
	jne	.label_3326
	mov	rax, qword ptr [rbp - 0x30]
	and	rax, 0x20000
	cmp	rax, 0
	jne	.label_3326
	mov	rax, qword ptr [rbp - 0x40]
	mov	dword ptr [rax], 0x10
	mov	qword ptr [rbp - 0x10], 0
	jmp	.label_3300
	.section	.text
	.align	16
	#Procedure 0x422e37

	.globl sub_422e37
	.type sub_422e37, @function
sub_422e37:
	jmp	.label_3305
.label_3322:
	jmp	.label_3320
	.section	.text
	.align	16
	#Procedure 0x422e41

	.globl sub_422e41
	.type sub_422e41, @function
sub_422e41:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	r9, qword ptr [rbp - 0x40]
	mov	r8, rax
	call	parse_sub_exp
	xor	r10d, r10d
	mov	r11b, r10b
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x40]
	cmp	dword ptr [rax], 0
	mov	byte ptr [rbp - 0x8c], r11b
	je	.label_3338
	cmp	qword ptr [rbp - 0x50], 0
	sete	al
	mov	byte ptr [rbp - 0x8c], al
.label_3338:
	mov	al, byte ptr [rbp - 0x8c]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	sub_422d0e
	mov	qword ptr [rbp - 0x10], 0
	jmp	.label_3300
	.section	.text
	.align	16
	#Procedure 0x422eb6

	.globl sub_422eb6
	.type sub_422eb6, @function
sub_422eb6:
	jmp	.label_3305
	.section	.text
	.align	16
	#Procedure 0x422ebb

	.globl sub_422ebb
	.type sub_422ebb, @function
sub_422ebb:
	mov	rax, qword ptr [rbp - 0x30]
	and	rax, 0x1000000
	cmp	rax, 0
	je	sub_422ba9
	mov	rax, qword ptr [rbp - 0x40]
	mov	dword ptr [rax], 0xd
	mov	qword ptr [rbp - 0x10], 0
	jmp	.label_3300
.label_3343:
	mov	qword ptr [rbp - 0x10], 0
	jmp	.label_3300
	.section	.text
	.align	16
	#Procedure 0x422ef3

	.globl sub_422ef3
	.type sub_422ef3, @function
sub_422ef3:
	movabs	rax, OFFSET FLAT:label_2159
	movabs	rcx, OFFSET FLAT:label_3339
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rdx + 0x78]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	r8d, dword ptr [rdx + 8]
	and	r8d, 0xff
	cmp	r8d, 0x21
	sete	r9b
	mov	rdx, qword ptr [rbp - 0x40]
	mov	r8d, OFFSET FLAT:label_2159
	mov	r10d, r8d
	mov	r8d, OFFSET FLAT:label_3339
	mov	r11d, r8d
	and	r9b, 1
	movzx	r8d, r9b
	mov	qword ptr [rbp - 0xe0], rdx
	mov	rdx, r10
	mov	qword ptr [rbp - 0xe8], rcx
	mov	rcx, r11
	mov	r9, qword ptr [rbp - 0xe0]
	mov	qword ptr [rbp - 0xf0], rax
	call	build_charclass_op
	xor	r8d, r8d
	mov	bl, r8b
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x40]
	cmp	dword ptr [rax], 0
	mov	byte ptr [rbp - 0xf1], bl
	je	.label_3340
	cmp	qword ptr [rbp - 0x50], 0
	sete	al
	mov	byte ptr [rbp - 0xf1], al
.label_3340:
	mov	al, byte ptr [rbp - 0xf1]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	sub_422eb6
	mov	qword ptr [rbp - 0x10], 0
	jmp	.label_3300
	.section	.text
	.align	16
	#Procedure 0x422fbf

	.globl parse_expression
	.type parse_expression, @function
parse_expression:
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 0x118
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x28], rdx
	mov	qword ptr [rbp - 0x30], rcx
	mov	qword ptr [rbp - 0x38], r8
	mov	qword ptr [rbp - 0x40], r9
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 0x48], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	movzx	eax, byte ptr [rcx + 8]
	dec	eax
	mov	ecx, eax
	sub	eax, 0x23
	mov	qword ptr [rbp - 0x78], rcx
	mov	dword ptr [rbp - 0x7c], eax
	ja	.label_3343
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_3342]]
	jmp	rcx
.label_3345:
	jmp	.label_3305
.label_3999:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	r8, qword ptr [rbp - 0x40]
	call	parse_bracket_exp
	xor	r9d, r9d
	mov	r10b, r9b
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x40]
	cmp	dword ptr [rax], 0
	mov	byte ptr [rbp - 0x8d], r10b
	je	.label_3341
	cmp	qword ptr [rbp - 0x50], 0
	sete	al
	mov	byte ptr [rbp - 0x8d], al
.label_3341:
	mov	al, byte ptr [rbp - 0x8d]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	sub_422e37
	mov	qword ptr [rbp - 0x10], 0
	jmp	.label_3300
.label_3337:
	xor	eax, eax
	mov	ecx, eax
	mov	eax, 1
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rdx]
	mov	esi, edx
	mov	qword ptr [rbp - 0xa0], rcx
	mov	ecx, esi
	shl	eax, cl
	movsxd	rdx, eax
	mov	rdi, qword ptr [rbp - 0x48]
	or	rdx, qword ptr [rdi + 0xa0]
	mov	qword ptr [rdi + 0xa0], rdx
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0xa0]
	mov	rdx, qword ptr [rbp - 0xa0]
	call	create_token_tree
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x50], 0
	sete	r8b
	and	r8b, 1
	movzx	r9d, r8b
	movsxd	rax, r9d
	cmp	rax, 0
	je	sub_422b1a
	mov	rax, qword ptr [rbp - 0x40]
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 0x10], 0
	jmp	.label_3300
.label_3303:
	jmp	.label_3301
.label_3317:
	jmp	.label_3302
.label_3302:
	jmp	.label_3305
.label_3305:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x30]
	call	fetch_token
.label_3301:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x28]
	mov	edx, dword ptr [rcx + 8]
	and	edx, 0xff
	cmp	edx, 0xb
	mov	byte ptr [rbp - 0x112], al
	je	.label_3309
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x28]
	mov	edx, dword ptr [rcx + 8]
	and	edx, 0xff
	cmp	edx, 0x12
	mov	byte ptr [rbp - 0x112], al
	je	.label_3309
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x28]
	mov	edx, dword ptr [rcx + 8]
	and	edx, 0xff
	cmp	edx, 0x13
	mov	byte ptr [rbp - 0x112], al
	je	.label_3309
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 0x17
	sete	dl
	mov	byte ptr [rbp - 0x112], dl
.label_3309:
	mov	al, byte ptr [rbp - 0x112]
	test	al, 1
	jne	.label_3306
	jmp	.label_3310
.label_3306:
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	r9, qword ptr [rbp - 0x40]
	call	parse_dup_op
	xor	r10d, r10d
	mov	r11b, r10b
	mov	qword ptr [rbp - 0x70], rax
	mov	rax, qword ptr [rbp - 0x40]
	cmp	dword ptr [rax], 0
	mov	byte ptr [rbp - 0x113], r11b
	je	.label_3312
	cmp	qword ptr [rbp - 0x70], 0
	sete	al
	mov	byte ptr [rbp - 0x113], al
.label_3312:
	mov	al, byte ptr [rbp - 0x113]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_3319
	cmp	qword ptr [rbp - 0x50], 0
	je	.label_3304
	movabs	rsi, OFFSET FLAT:free_tree
	xor	eax, eax
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x50]
	call	postorder
	mov	dword ptr [rbp - 0x118], eax
.label_3304:
	mov	qword ptr [rbp - 0x10], 0
	jmp	.label_3300
.label_3310:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x10], rax
.label_3300:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x118
	pop	rbx
	pop	rbp
	ret	
	nop	dword ptr [rax]
.label_3998:
	mov	qword ptr [rbp - 0x10], 0
	jmp	.label_3300
.label_3336:
	mov	rax, qword ptr [rbp - 0x48]
	cmp	dword ptr [rax + 0xb4], 1
	jle	.label_3335
	mov	rax, qword ptr [rbp - 0x48]
	mov	cl, byte ptr [rax + 0xb0]
	and	cl, 0xfd
	or	cl, 2
	mov	byte ptr [rax + 0xb0], cl
.label_3335:
	jmp	.label_3305
	.section	.text
	.align	16
	#Procedure 0x42329f

	.globl sub_42329f
	.type sub_42329f, @function
sub_42329f:
	movabs	rax, OFFSET FLAT:label_2180
	movabs	rcx, OFFSET FLAT:label_783
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rdx + 0x78]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	r8d, dword ptr [rdx + 8]
	and	r8d, 0xff
	cmp	r8d, 0x23
	sete	r9b
	mov	rdx, qword ptr [rbp - 0x40]
	mov	r8d, OFFSET FLAT:label_2180
	mov	r10d, r8d
	mov	r8d, OFFSET FLAT:label_783
	mov	r11d, r8d
	and	r9b, 1
	movzx	r8d, r9b
	mov	qword ptr [rbp - 0x100], rdx
	mov	rdx, r10
	mov	qword ptr [rbp - 0x108], rcx
	mov	rcx, r11
	mov	r9, qword ptr [rbp - 0x100]
	mov	qword ptr [rbp - 0x110], rax
	call	build_charclass_op
	xor	r8d, r8d
	mov	bl, r8b
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x40]
	cmp	dword ptr [rax], 0
	mov	byte ptr [rbp - 0x111], bl
	je	.label_3344
	cmp	qword ptr [rbp - 0x50], 0
	sete	al
	mov	byte ptr [rbp - 0x111], al
.label_3344:
	mov	al, byte ptr [rbp - 0x111]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_3345
	mov	qword ptr [rbp - 0x10], 0
	jmp	.label_3300
.label_3315:
	mov	rax, qword ptr [rbp - 0x48]
	cmp	dword ptr [rax + 0xb4], 1
	jle	.label_3302
	jmp	.label_3308
.label_3308:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x68]
	mov	rsi, qword ptr [rbp - 0x18]
	cmp	rdx, qword ptr [rsi + 0x48]
	mov	byte ptr [rbp - 0x89], cl
	jle	.label_3299
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x48]
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	rcx, qword ptr [rdx + 0x30]
	mov	byte ptr [rbp - 0x8a], al
	je	.label_3307
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x10]
	cmp	dword ptr [rcx + rax*4], -1
	setne	dl
	mov	byte ptr [rbp - 0x8a], dl
.label_3307:
	mov	al, byte ptr [rbp - 0x8a]
	xor	al, 0xff
	mov	byte ptr [rbp - 0x89], al
.label_3299:
	mov	al, byte ptr [rbp - 0x89]
	test	al, 1
	jne	.label_3316
	jmp	.label_3317
.label_3316:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x30]
	call	fetch_token
	xor	eax, eax
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsi, rdx
	call	create_token_tree
	mov	ecx, 0x10
	mov	qword ptr [rbp - 0x58], rax
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x58]
	call	create_tree
	mov	r8b, 1
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x58], 0
	mov	byte ptr [rbp - 0x8b], r8b
	je	.label_3318
	cmp	qword ptr [rbp - 0x50], 0
	sete	al
	mov	byte ptr [rbp - 0x8b], al
.label_3318:
	mov	al, byte ptr [rbp - 0x8b]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_3314
	mov	rax, qword ptr [rbp - 0x40]
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 0x10], 0
	jmp	.label_3300
.label_3326:
	jmp	.label_3329
.label_3329:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x28]
	mov	eax, dword ptr [rdx + 8]
	and	eax, 0xffffff00
	or	eax, 1
	mov	dword ptr [rdx + 8], eax
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsi, rcx
	mov	qword ptr [rbp - 0xa8], rdx
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0xa8]
	call	create_token_tree
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x50], 0
	sete	r8b
	and	r8b, 1
	movzx	r9d, r8b
	movsxd	rax, r9d
	cmp	rax, 0
	je	.label_3330
	mov	rax, qword ptr [rbp - 0x40]
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 0x10], 0
	jmp	.label_3300
.label_3327:
	mov	rax, qword ptr [rbp - 0x30]
	and	rax, 0x10
	cmp	rax, 0
	je	.label_3324
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x30]
	call	fetch_token
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	r8, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rbp - 0x40]
	call	parse_expression
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_3300
.label_3346:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x42355a
	.globl sub_42355a
	.type sub_42355a, @function
sub_42355a:

	nop	
	.section	.text
	.align	16
	#Procedure 0x42355c

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	malloc
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_3346
	cmp	qword ptr [rbp - 8], 0
	je	.label_3346
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x423590

	.globl re_string_destruct
	.type re_string_destruct, @function
re_string_destruct:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 0x10]
	call	free
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 0x18]
	call	free
	mov	rdi, qword ptr [rbp - 8]
	cmp	byte ptr [rdi + 0x8b], 0
	je	.label_3347
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
.label_3347:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4235da
	.globl sub_4235da
	.type sub_4235da, @function
sub_4235da:

	nop	word ptr [rax + rax]
.label_3354:
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 0xb8
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x80], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	dl, byte ptr [rax + 0xb0]
	shr	dl, 4
	and	dl, 1
	movzx	esi, dl
	mov	dl, sil
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax + 0x8e], dl
	mov	rax, qword ptr [rbp - 0x10]
	movzx	esi, byte ptr [rax + 0x8b]
	cmp	esi, 0
	je	.label_3348
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_3350
.label_3351:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x68], rax
.label_3349:
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x30], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x38], rax
	mov	dword ptr [rbp - 4], 0
.label_3353:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x42366e
	.globl sub_42366e
	.type sub_42366e, @function
sub_42366e:

	nop	word ptr [rax + rax]
.label_3348:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x60], rax
.label_3350:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	movzx	edx, byte ptr [rax + 0x8b]
	cmp	edx, 0
	jne	.label_3352
	mov	rax, qword ptr [rbp - 0x40]
	cmp	dword ptr [rax + 0xb4], 1
	jle	.label_3351
.label_3352:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x68], rcx
	jmp	.label_3349
.label_3357:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x58], rax
.label_3356:
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x50], rax
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	r8b, byte ptr [rbp - 0x31]
	mov	r9, qword ptr [rbp - 0x40]
	and	r8b, 1
	movzx	r8d, r8b
	call	re_string_construct_common
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x50]
	call	re_string_realloc_buffers
	mov	dword ptr [rbp - 0x44], eax
	cmp	dword ptr [rbp - 0x44], 0
	setne	r10b
	and	r10b, 1
	movzx	eax, r10b
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_3354
	mov	eax, dword ptr [rbp - 0x44]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_3353
	.section	.text
	.align	16
	#Procedure 0x42372a

	.globl re_string_allocate
	.type re_string_allocate, @function
re_string_allocate:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	al, r9b
	mov	r10, qword ptr [rbp + 0x10]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	and	al, 1
	mov	byte ptr [rbp - 0x31], al
	mov	qword ptr [rbp - 0x40], r10
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x40]
	movsxd	rdx, dword ptr [rdx + 0xb4]
	cmp	rcx, rdx
	jge	.label_3355
	mov	rax, qword ptr [rbp - 0x40]
	movsxd	rax, dword ptr [rax + 0xb4]
	mov	qword ptr [rbp - 0x28], rax
.label_3355:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x28]
	jge	.label_3357
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_3356
.label_3358:
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4237a2
	.globl sub_4237a2
	.type sub_4237a2, @function
sub_4237a2:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4237a9

	.globl bitset_merge
	.type bitset_merge, @function
bitset_merge:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x14], 0
.label_3359:
	cmp	dword ptr [rbp - 0x14], 4
	jge	.label_3358
	movsxd	rax, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	movsxd	rcx, dword ptr [rbp - 0x14]
	mov	rdx, qword ptr [rbp - 8]
	or	rax, qword ptr [rdx + rcx*8]
	mov	qword ptr [rdx + rcx*8], rax
	mov	eax, dword ptr [rbp - 0x14]
	add	eax, 1
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_3359
.label_3361:
	mov	rdi, qword ptr [rbp - 0x10]
	call	strlen
	mov	qword ptr [rbp - 8], rax
.label_3364:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x423807
	.globl sub_423807
	.type sub_423807, @function
sub_423807:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x423810

	.globl mbslen
	.type mbslen, @function
mbslen:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	qword ptr [rbp - 0x10], rdi
	call	__ctype_get_mb_cur_max
	cmp	rax, 1
	jbe	.label_3361
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	lea	rcx, [rbp - 0x58]
	mov	qword ptr [rbp - 0x18], 0
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x48], rdi
	mov	byte ptr [rbp - 0x58], 0
	add	rcx, 4
	mov	rdi, rcx
	call	memset
	mov	byte ptr [rbp - 0x4c], 0
.label_3363:
	lea	rdi, [rbp - 0x58]
	call	mbuiter_multi_next
	xor	eax, eax
	mov	cl, al
	test	byte ptr [rbp - 0x38], 1
	mov	byte ptr [rbp - 0x59], cl
	je	.label_3365
	cmp	dword ptr [rbp - 0x34], 0
	sete	al
	mov	byte ptr [rbp - 0x59], al
.label_3365:
	mov	al, byte ptr [rbp - 0x59]
	xor	al, 0xff
	test	al, 1
	jne	.label_3360
	jmp	.label_3362
.label_3360:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rax
	mov	byte ptr [rbp - 0x4c], 0
	jmp	.label_3363
.label_3362:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_3364
	.section	.text
	.align	16
	#Procedure 0x4238c0
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	eax, edi
	add	eax, -0x30
	sub	eax, 0xa
	mov	dword ptr [rbp - 0xc], edi
	mov	dword ptr [rbp - 0x10], eax
	jb	.label_3366
	jmp	.label_3369
.label_3369:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 0x1a
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_3366
	jmp	.label_3367
.label_3367:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_3368
	jmp	.label_3366
.label_3366:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_3370
.label_3368:
	mov	byte ptr [rbp - 1], 0
.label_3370:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x423925
	.globl sub_423925
	.type sub_423925, @function
sub_423925:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x423930

	.globl quotearg_n_style
	.type quotearg_n_style, @function
quotearg_n_style:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	lea	rax, [rbp - 0x48]
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	qword ptr [rbp - 0x10], rdx
	mov	esi, dword ptr [rbp - 8]
	mov	rdi, rax
	call	quoting_options_from_style
	mov	rdx, -1
	lea	rcx, [rbp - 0x48]
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	call	quotearg_n_options
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x42396e
	.globl sub_42396e
	.type sub_42396e, @function
sub_42396e:

	nop	
.label_3390:
	mov	rax, qword ptr [rbp - 8]
	test	byte ptr [rax + 8], 1
	je	.label_3386
	jmp	.label_3389
.label_3385:
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 8], 1
.label_3389:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x18
	add	rax, 0x14
	mov	rcx, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rcx + 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx]
	mov	rdx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rdx + 0x18]
	sub	rcx, rdx
	mov	rdx, qword ptr [rbp - 8]
	add	rdx, 0xc
	mov	rdi, rax
	mov	qword ptr [rbp - 0x10], rdx
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x10]
	call	rpl_mbrtowc
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x20], rax
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x20], -1
	jne	.label_3374
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x20], 1
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x28], 0
	jmp	.label_3383
.label_3377:
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 0x2c], 0
	jne	.label_3387
	jmp	.label_3372
.label_3373:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0xc
	mov	rdi, rax
	call	mbsinit
	cmp	eax, 0
	je	.label_3382
	jmp	.label_3385
.label_3382:
	movabs	rdi, OFFSET FLAT:label_1245
	movabs	rsi, OFFSET FLAT:label_3378
	mov	edx, 0x8e
	movabs	rcx, OFFSET FLAT:label_3379
	call	__assert_fail
.label_3375:
	movabs	rdi, OFFSET FLAT:label_1234
	movabs	rsi, OFFSET FLAT:label_3378
	mov	edx, 0xa9
	movabs	rcx, OFFSET FLAT:label_3379
	call	__assert_fail
.label_3372:
	jmp	.label_3388
.label_3388:
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x28], 1
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0xc
	mov	rdi, rax
	call	mbsinit
	cmp	eax, 0
	je	.label_3381
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 8], 0
.label_3381:
	jmp	.label_3384
.label_3384:
	jmp	.label_3383
.label_3383:
	jmp	.label_3376
.label_3376:
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x14], 1
.label_3391:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x423ac8
	.globl sub_423ac8
	.type sub_423ac8, @function
sub_423ac8:

	nop	word ptr cs:[rax + rax]
.label_3387:
	movabs	rdi, OFFSET FLAT:label_1237
	movabs	rsi, OFFSET FLAT:label_3378
	mov	edx, 0xaa
	movabs	rcx, OFFSET FLAT:label_3379
	call	__assert_fail
.label_3380:
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x20], 0
	jne	.label_3388
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x20], 1
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_3375
	jmp	.label_3377
.label_3386:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x18]
	movsx	edi, byte ptr [rax]
	call	is_basic
	test	al, 1
	jne	.label_3371
	jmp	.label_3373
.label_3371:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x20], 1
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x18]
	movsx	ecx, byte ptr [rax]
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x2c], ecx
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x28], 1
	jmp	.label_3376
	.section	.text
	.align	16
	#Procedure 0x423b7b

	.globl mbiter_multi_next
	.type mbiter_multi_next, @function
mbiter_multi_next:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	test	byte ptr [rdi + 0x14], 1
	je	.label_3390
	jmp	.label_3391
.label_3374:
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x20], -2
	jne	.label_3380
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 0x18]
	sub	rax, rcx
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x20], rax
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x28], 0
	jmp	.label_3384
.label_3393:
	mov	dword ptr [rbp - 4], 0
.label_3398:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x423be0
	.globl sub_423be0
	.type sub_423be0, @function
sub_423be0:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x423be6

	.globl merge_state_array
	.type merge_state_array, @function
merge_state_array:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], 0
.label_3396:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x28]
	jge	.label_3393
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rcx + rax*8], 0
	jne	.label_3397
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rdx + rcx*8], rax
	jmp	.label_3394
.label_3397:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_3392
	lea	rdi, [rbp - 0x50]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, 8
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rdx + rcx*8]
	add	rcx, 8
	mov	rsi, rax
	mov	rdx, rcx
	call	re_node_set_init_union
	mov	dword ptr [rbp - 0x34], eax
	cmp	dword ptr [rbp - 0x34], 0
	setne	r8b
	and	r8b, 1
	movzx	eax, r8b
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_3400
	mov	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_3398
.label_3400:
	lea	rdi, [rbp - 0x34]
	lea	rdx, [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0x10]
	call	re_acquire_state
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rsi + rdx*8], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rdi, rax
	call	free
	cmp	dword ptr [rbp - 0x34], 0
	setne	cl
	and	cl, 1
	movzx	r8d, cl
	movsxd	rax, r8d
	cmp	rax, 0
	je	.label_3399
	mov	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_3398
.label_3399:
	jmp	.label_3392
.label_3392:
	jmp	.label_3394
.label_3394:
	jmp	.label_3395
.label_3395:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_3396
.label_3410:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x70]
	call	realloc
	mov	qword ptr [rbp - 0x78], rax
	cmp	qword ptr [rbp - 0x78], 0
	jne	.label_3414
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_3403
.label_3423:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x90]
	call	realloc
	mov	qword ptr [rbp - 0x98], rax
	cmp	qword ptr [rbp - 0x98], 0
	jne	.label_3419
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_3403
	.section	.text
	.align	16
	#Procedure 0x423d81

	.globl str_cd_iconv
	.type str_cd_iconv, @function
str_cd_iconv:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xd0
	mov	eax, 0xffffffff
	mov	ecx, eax
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x38], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0xb0], rcx
	call	strlen
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0xb0]
	mov	qword ptr [rbp - 0x48], rax
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x48]
	shr	rsi, 4
	cmp	rcx, rsi
	ja	.label_3413
	mov	rax, qword ptr [rbp - 0x28]
	shl	rax, 4
	mov	qword ptr [rbp - 0x28], rax
.label_3413:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x28]
	call	malloc
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_3401
	call	__errno_location
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 8], 0
	jmp	.label_3404
.label_3418:
	jmp	.label_3409
.label_3403:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0xa4], ecx
	mov	rdi, qword ptr [rbp - 0x20]
	call	free
	mov	ecx, dword ptr [rbp - 0xa4]
	mov	dword ptr [rbp - 0xcc], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0xcc]
	mov	dword ptr [rax], ecx
	mov	qword ptr [rbp - 8], 0
.label_3404:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0xd0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x423e70
	.globl sub_423e70
	.type sub_423e70, @function
sub_423e70:

	nop	
.label_3409:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x50], rcx
	mov	byte ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x20]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_3417
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x30]
	call	realloc
	mov	qword ptr [rbp - 0xa0], rax
	cmp	qword ptr [rbp - 0xa0], 0
	je	.label_3412
	mov	rax, qword ptr [rbp - 0xa0]
	mov	qword ptr [rbp - 0x20], rax
.label_3412:
	jmp	.label_3417
.label_3417:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_3404
.label_3414:
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x28]
	sub	rax, 1
	sub	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_3420
.label_3422:
	jmp	.label_3403
.label_3421:
	jmp	.label_3405
.label_3406:
	call	__errno_location
	cmp	dword ptr [rax], 7
	jne	.label_3408
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x20]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x28]
	shl	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	mov	rax, qword ptr [rbp - 0x70]
	cmp	rax, qword ptr [rbp - 0x28]
	ja	.label_3410
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_3403
.label_3419:
	mov	rax, qword ptr [rbp - 0x98]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x28]
	sub	rax, 1
	sub	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_3421
.label_3402:
	jmp	.label_3407
.label_3408:
	jmp	.label_3403
.label_3405:
	jmp	.label_3411
.label_3424:
	jmp	.label_3416
.label_3401:
	xor	eax, eax
	mov	ecx, eax
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, rcx
	mov	rdx, rcx
	mov	qword ptr [rbp - 0xb8], rcx
	mov	r8, qword ptr [rbp - 0xb8]
	call	iconv
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x50], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	sub	rcx, 1
	mov	qword ptr [rbp - 0x58], rcx
	mov	qword ptr [rbp - 0xc0], rax
.label_3416:
	lea	rsi, [rbp - 0x38]
	lea	rdx, [rbp - 0x40]
	lea	rcx, [rbp - 0x50]
	lea	r8, [rbp - 0x58]
	mov	rdi, qword ptr [rbp - 0x18]
	call	iconv
	mov	qword ptr [rbp - 0x60], rax
	cmp	qword ptr [rbp - 0x60], -1
	jne	.label_3402
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_3406
	jmp	.label_3407
.label_3407:
	jmp	.label_3411
.label_3411:
	xor	eax, eax
	mov	ecx, eax
	lea	rdx, [rbp - 0x50]
	lea	r8, [rbp - 0x58]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, rcx
	mov	qword ptr [rbp - 0xc8], rdx
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0xc8]
	call	iconv
	mov	qword ptr [rbp - 0x80], rax
	cmp	qword ptr [rbp - 0x80], -1
	jne	.label_3418
	call	__errno_location
	cmp	dword ptr [rax], 7
	jne	.label_3422
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x20]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x88], rax
	mov	rax, qword ptr [rbp - 0x28]
	shl	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	mov	rax, qword ptr [rbp - 0x90]
	cmp	rax, qword ptr [rbp - 0x28]
	ja	.label_3423
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_3403
.label_3420:
	jmp	.label_3415
.label_3415:
	jmp	.label_3424
.label_3427:
	cmp	dword ptr [rbp - 0x9c], 3
	jne	.label_3461
	mov	dword ptr [rbp - 0xcc], 0
	mov	dword ptr [rbp - 0xd0], 0
.label_3454:
	cmp	dword ptr [rbp - 0xcc], 4
	jge	.label_3464
	movsxd	rax, dword ptr [rbp - 0xcc]
	mov	rcx, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rbp - 0x80]
	shl	rcx, 4
	add	rcx, qword ptr [rdx]
	mov	rcx, qword ptr [rcx]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0xe0], rax
	mov	dword ptr [rbp - 0xd4], 0
.label_3458:
	cmp	dword ptr [rbp - 0xd4], 0x40
	jge	.label_3430
	mov	eax, 1
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0xe0]
	mov	eax, dword ptr [rbp - 0xd4]
	mov	esi, eax
	mov	qword ptr [rbp - 0x238], rcx
	mov	rcx, rsi
	mov	rsi, qword ptr [rbp - 0x238]
	shl	rsi, cl
	and	rdx, rsi
	cmp	rdx, 0
	je	.label_3426
	mov	rax, qword ptr [rbp - 0x78]
	mov	cl, byte ptr [rbp - 0x89]
	mov	edx, dword ptr [rbp - 0xd0]
	mov	qword ptr [rbp - 0x38], rax
	and	cl, 1
	mov	byte ptr [rbp - 0x39], cl
	mov	dword ptr [rbp - 0x40], edx
	movsxd	rax, dword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	byte ptr [rsi + rax], 1
	test	byte ptr [rbp - 0x39], 1
	je	.label_3442
	mov	edi, dword ptr [rbp - 0x40]
	call	tolower
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x38]
	mov	byte ptr [rdx + rcx], 1
.label_3442:
	jmp	.label_3426
.label_3426:
	jmp	.label_3456
.label_3456:
	mov	eax, dword ptr [rbp - 0xd4]
	add	eax, 1
	mov	dword ptr [rbp - 0xd4], eax
	mov	eax, dword ptr [rbp - 0xd0]
	add	eax, 1
	mov	dword ptr [rbp - 0xd0], eax
	jmp	.label_3458
.label_3466:
	jmp	.label_3452
.label_3452:
	jmp	.label_3432
	.section	.text
	.align	16
	#Procedure 0x4241e0

	.globl re_compile_fastmap_iter
	.type re_compile_fastmap_iter, @function
re_compile_fastmap_iter:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x270
	xor	eax, eax
	mov	cl, al
	mov	qword ptr [rbp - 0x68], rdi
	mov	qword ptr [rbp - 0x70], rsi
	mov	qword ptr [rbp - 0x78], rdx
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rdx, qword ptr [rdx]
	mov	qword ptr [rbp - 0x80], rdx
	mov	rdx, qword ptr [rbp - 0x80]
	cmp	dword ptr [rdx + 0xb4], 1
	mov	byte ptr [rbp - 0x209], cl
	jne	.label_3463
	mov	rax, qword ptr [rbp - 0x68]
	mov	rax, qword ptr [rax + 0x18]
	and	rax, 0x400000
	cmp	rax, 0
	setne	cl
	mov	byte ptr [rbp - 0x209], cl
.label_3463:
	mov	al, byte ptr [rbp - 0x209]
	and	al, 1
	mov	byte ptr [rbp - 0x89], al
	mov	qword ptr [rbp - 0x88], 0
.label_3435:
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x70]
	cmp	rax, qword ptr [rcx + 0x10]
	jge	.label_3438
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x98], rax
	mov	rax, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rbp - 0x80]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	and	edx, 0xff
	mov	dword ptr [rbp - 0x9c], edx
	cmp	dword ptr [rbp - 0x9c], 1
	jne	.label_3427
	mov	rax, qword ptr [rbp - 0x78]
	mov	cl, byte ptr [rbp - 0x89]
	mov	rdx, qword ptr [rbp - 0x98]
	mov	rsi, qword ptr [rbp - 0x80]
	shl	rdx, 4
	add	rdx, qword ptr [rsi]
	movzx	edi, byte ptr [rdx]
	mov	qword ptr [rbp - 0x58], rax
	and	cl, 1
	mov	byte ptr [rbp - 0x59], cl
	mov	dword ptr [rbp - 0x60], edi
	movsxd	rax, dword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x58]
	mov	byte ptr [rdx + rax], 1
	test	byte ptr [rbp - 0x59], 1
	je	.label_3428
	mov	edi, dword ptr [rbp - 0x60]
	call	tolower
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x58]
	mov	byte ptr [rdx + rcx], 1
.label_3428:
	mov	rax, qword ptr [rbp - 0x68]
	mov	rax, qword ptr [rax + 0x18]
	and	rax, 0x400000
	cmp	rax, 0
	je	.label_3425
	mov	rax, qword ptr [rbp - 0x80]
	cmp	dword ptr [rax + 0xb4], 1
	jle	.label_3425
	lea	rax, [rbp - 0xb0]
	mov	qword ptr [rbp - 0xb8], rax
	mov	rax, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rbp - 0x80]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	dl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0xb8]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0xb8], rcx
	mov	byte ptr [rax], dl
.label_3467:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x98]
	add	rdx, 1
	mov	qword ptr [rbp - 0x98], rdx
	mov	rsi, qword ptr [rbp - 0x80]
	cmp	rdx, qword ptr [rsi + 0x10]
	mov	byte ptr [rbp - 0x20a], cl
	jae	.label_3440
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x98]
	mov	rsi, qword ptr [rbp - 0x80]
	shl	rdx, 4
	add	rdx, qword ptr [rsi]
	mov	eax, dword ptr [rdx + 8]
	and	eax, 0xff
	cmp	eax, 1
	mov	byte ptr [rbp - 0x20a], cl
	jne	.label_3440
	mov	rax, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rbp - 0x80]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	shr	edx, 0x15
	and	edx, 1
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x20a], sil
.label_3440:
	mov	al, byte ptr [rbp - 0x20a]
	test	al, 1
	jne	.label_3468
	jmp	.label_3465
.label_3468:
	mov	rax, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rbp - 0x80]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	dl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0xb8]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0xb8], rcx
	mov	byte ptr [rax], dl
	jmp	.label_3467
.label_3461:
	cmp	dword ptr [rbp - 0x9c], 6
	jne	.label_3433
	mov	rax, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rbp - 0x80]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0xe8], rax
	mov	rax, qword ptr [rbp - 0x80]
	cmp	dword ptr [rax + 0xb4], 1
	jle	.label_3436
	mov	rax, qword ptr [rbp - 0xe8]
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_3441
	mov	rax, qword ptr [rbp - 0xe8]
	mov	cl, byte ptr [rax + 0x20]
	and	cl, 1
	movzx	edx, cl
	cmp	edx, 0
	jne	.label_3441
	mov	rax, qword ptr [rbp - 0xe8]
	cmp	qword ptr [rax + 0x40], 0
	je	.label_3436
.label_3441:
	mov	byte ptr [rbp - 0xf1], 0
.label_3446:
	xor	eax, eax
	mov	edi, eax
	lea	rsi, [rbp - 0xf1]
	mov	eax, 1
	mov	edx, eax
	lea	rcx, [rbp - 0x100]
	xor	eax, eax
	mov	r8d, 8
	mov	r9d, r8d
	mov	r10, rcx
	mov	qword ptr [rbp - 0x240], rdi
	mov	rdi, r10
	mov	qword ptr [rbp - 0x248], rsi
	mov	esi, eax
	mov	qword ptr [rbp - 0x250], rdx
	mov	rdx, r9
	mov	qword ptr [rbp - 0x258], rcx
	call	memset
	mov	rdi, qword ptr [rbp - 0x240]
	mov	rsi, qword ptr [rbp - 0x248]
	mov	rdx, qword ptr [rbp - 0x250]
	mov	rcx, qword ptr [rbp - 0x258]
	call	rpl_mbrtowc
	cmp	rax, -2
	jne	.label_3429
	mov	rax, qword ptr [rbp - 0x78]
	movzx	ecx, byte ptr [rbp - 0xf1]
	mov	qword ptr [rbp - 0x28], rax
	mov	byte ptr [rbp - 0x29], 0
	mov	dword ptr [rbp - 0x30], ecx
	movsxd	rax, dword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	byte ptr [rdx + rax], 1
	test	byte ptr [rbp - 0x29], 1
	je	.label_3431
	mov	edi, dword ptr [rbp - 0x30]
	call	tolower
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x28]
	mov	byte ptr [rdx + rcx], 1
.label_3431:
	jmp	.label_3429
.label_3429:
	jmp	.label_3443
.label_3443:
	mov	al, byte ptr [rbp - 0xf1]
	add	al, 1
	mov	byte ptr [rbp - 0xf1], al
	movzx	ecx, al
	cmp	ecx, 0
	jne	.label_3446
	jmp	.label_3452
.label_3430:
	jmp	.label_3453
.label_3453:
	mov	eax, dword ptr [rbp - 0xcc]
	add	eax, 1
	mov	dword ptr [rbp - 0xcc], eax
	jmp	.label_3454
.label_3464:
	jmp	.label_3439
.label_3449:
	jmp	.label_3432
.label_3432:
	jmp	.label_3439
.label_3439:
	jmp	.label_3457
.label_3457:
	jmp	.label_3460
.label_3460:
	mov	rax, qword ptr [rbp - 0x88]
	add	rax, 1
	mov	qword ptr [rbp - 0x88], rax
	jmp	.label_3435
.label_3438:
	add	rsp, 0x270
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4245db
	.globl sub_4245db
	.type sub_4245db, @function
sub_4245db:

	nop	word ptr [rax + rax]
.label_3465:
	lea	rdi, [rbp - 0xbc]
	lea	rax, [rbp - 0xc8]
	lea	rcx, [rbp - 0xb0]
	xor	esi, esi
	mov	edx, 8
	mov	r8, rax
	mov	qword ptr [rbp - 0x218], rdi
	mov	rdi, r8
	mov	qword ptr [rbp - 0x220], rcx
	mov	qword ptr [rbp - 0x228], rax
	call	memset
	mov	rax, qword ptr [rbp - 0xb8]
	mov	rcx, qword ptr [rbp - 0x220]
	sub	rax, rcx
	mov	rdi, qword ptr [rbp - 0x218]
	mov	rsi, rcx
	mov	rdx, rax
	mov	rcx, qword ptr [rbp - 0x228]
	call	rpl_mbrtowc
	lea	rcx, [rbp - 0xb0]
	mov	rdx, qword ptr [rbp - 0xb8]
	sub	rdx, rcx
	cmp	rax, rdx
	jne	.label_3437
	lea	rdi, [rbp - 0xb0]
	mov	eax, dword ptr [rbp - 0xbc]
	mov	qword ptr [rbp - 0x230], rdi
	mov	edi, eax
	call	towlower
	lea	rdx, [rbp - 0xc8]
	mov	rdi, qword ptr [rbp - 0x230]
	mov	esi, eax
	call	wcrtomb
	cmp	rax, -1
	je	.label_3437
	mov	rax, qword ptr [rbp - 0x78]
	movzx	ecx, byte ptr [rbp - 0xb0]
	mov	qword ptr [rbp - 0x48], rax
	mov	byte ptr [rbp - 0x49], 0
	mov	dword ptr [rbp - 0x50], ecx
	movsxd	rax, dword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x48]
	mov	byte ptr [rdx + rax], 1
	test	byte ptr [rbp - 0x49], 1
	je	.label_3459
	mov	edi, dword ptr [rbp - 0x50]
	call	tolower
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x48]
	mov	byte ptr [rdx + rcx], 1
.label_3459:
	jmp	.label_3437
.label_3437:
	jmp	.label_3425
.label_3425:
	jmp	.label_3457
.label_3436:
	mov	qword ptr [rbp - 0xf0], 0
.label_3451:
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx, qword ptr [rbp - 0xe8]
	cmp	rax, qword ptr [rcx + 0x28]
	jge	.label_3466
	lea	rax, [rbp - 0x208]
	lea	rdi, [rbp - 0x200]
	xor	esi, esi
	mov	ecx, 8
	mov	edx, ecx
	mov	r8, rax
	mov	qword ptr [rbp - 0x260], rdi
	mov	rdi, r8
	mov	qword ptr [rbp - 0x268], rax
	call	memset
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rdx, qword ptr [rbp - 0xe8]
	mov	rdx, qword ptr [rdx]
	mov	esi, dword ptr [rdx + rax*4]
	mov	rdi, qword ptr [rbp - 0x260]
	mov	rdx, qword ptr [rbp - 0x268]
	call	wcrtomb
	cmp	rax, -1
	je	.label_3444
	mov	rax, qword ptr [rbp - 0x78]
	mov	cl, byte ptr [rbp - 0x89]
	movzx	edx, byte ptr [rbp - 0x200]
	mov	qword ptr [rbp - 0x18], rax
	and	cl, 1
	mov	byte ptr [rbp - 0x19], cl
	mov	dword ptr [rbp - 0x20], edx
	movsxd	rax, dword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rax], 1
	test	byte ptr [rbp - 0x19], 1
	je	.label_3448
	mov	edi, dword ptr [rbp - 0x20]
	call	tolower
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], 1
.label_3448:
	jmp	.label_3444
.label_3444:
	mov	rax, qword ptr [rbp - 0x68]
	mov	rax, qword ptr [rax + 0x18]
	and	rax, 0x400000
	cmp	rax, 0
	je	.label_3445
	mov	rax, qword ptr [rbp - 0x80]
	cmp	dword ptr [rax + 0xb4], 1
	jle	.label_3445
	lea	rdi, [rbp - 0x200]
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx, qword ptr [rbp - 0xe8]
	mov	rcx, qword ptr [rcx]
	mov	edx, dword ptr [rcx + rax*4]
	mov	qword ptr [rbp - 0x270], rdi
	mov	edi, edx
	call	towlower
	lea	rdx, [rbp - 0x208]
	mov	rdi, qword ptr [rbp - 0x270]
	mov	esi, eax
	call	wcrtomb
	cmp	rax, -1
	je	.label_3447
	mov	rax, qword ptr [rbp - 0x78]
	movzx	ecx, byte ptr [rbp - 0x200]
	mov	qword ptr [rbp - 8], rax
	mov	byte ptr [rbp - 9], 0
	mov	dword ptr [rbp - 0x10], ecx
	movsxd	rax, dword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	mov	byte ptr [rdx + rax], 1
	test	byte ptr [rbp - 9], 1
	je	.label_3434
	mov	edi, dword ptr [rbp - 0x10]
	call	tolower
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 8]
	mov	byte ptr [rdx + rcx], 1
.label_3434:
	jmp	.label_3447
.label_3447:
	jmp	.label_3445
.label_3445:
	jmp	.label_3450
.label_3450:
	mov	rax, qword ptr [rbp - 0xf0]
	add	rax, 1
	mov	qword ptr [rbp - 0xf0], rax
	jmp	.label_3451
.label_3433:
	cmp	dword ptr [rbp - 0x9c], 5
	je	.label_3455
	cmp	dword ptr [rbp - 0x9c], 7
	je	.label_3455
	cmp	dword ptr [rbp - 0x9c], 2
	jne	.label_3449
.label_3455:
	mov	esi, 1
	mov	eax, 0x100
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x78]
	call	memset
	cmp	dword ptr [rbp - 0x9c], 2
	jne	.label_3462
	mov	rax, qword ptr [rbp - 0x68]
	mov	cl, byte ptr [rax + 0x38]
	and	cl, 0xfe
	or	cl, 1
	mov	byte ptr [rax + 0x38], cl
.label_3462:
	jmp	.label_3438
	.section	.text
	.align	16
	#Procedure 0x4248f0

	.globl close_stream
	.type close_stream, @function
close_stream:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	call	__fpending
	cmp	rax, 0
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x11], cl
	mov	rdi, qword ptr [rbp - 0x10]
	call	ferror_unlocked
	cmp	eax, 0
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x12], cl
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fclose
	cmp	eax, 0
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x13], cl
	test	byte ptr [rbp - 0x12], 1
	jne	.label_3469
	test	byte ptr [rbp - 0x13], 1
	je	.label_3470
	test	byte ptr [rbp - 0x11], 1
	jne	.label_3469
	call	__errno_location
	cmp	dword ptr [rax], 9
	je	.label_3470
.label_3469:
	test	byte ptr [rbp - 0x13], 1
	jne	.label_3471
	call	__errno_location
	mov	dword ptr [rax], 0
.label_3471:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_3472
.label_3470:
	mov	dword ptr [rbp - 4], 0
.label_3472:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x424999
	.globl sub_424999
	.type sub_424999, @function
sub_424999:

	nop	dword ptr [rax]
.label_3475:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 3
	jne	.label_3473
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 8]
	shr	ecx, 0x12
	and	ecx, 1
	cmp	ecx, 0
	jne	.label_3473
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	rdi, rax
	call	free
.label_3473:
	jmp	.label_3474
.label_3474:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4249e6
	.globl sub_4249e6
	.type sub_4249e6, @function
sub_4249e6:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4249e8

	.globl free_token
	.type free_token, @function
free_token:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rdi + 8]
	and	eax, 0xff
	cmp	eax, 6
	jne	.label_3475
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 8]
	shr	ecx, 0x12
	and	ecx, 1
	cmp	ecx, 0
	jne	.label_3475
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax]
	call	free_charset
	jmp	.label_3474
	.section	.text
	.align	16
	#Procedure 0x424a30

	.globl lower_subexps
	.type lower_subexps, @function
lower_subexps:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], 0
	mov	rsi, qword ptr [rbp - 0x10]
	cmp	qword ptr [rsi + 8], 0
	je	.label_3478
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	ecx, dword ptr [rax + 0x30]
	and	ecx, 0xff
	cmp	ecx, 0x11
	jne	.label_3478
	lea	rdi, [rbp - 0x1c]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rax + 8]
	call	lower_subexp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0
	je	.label_3477
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rcx], rax
.label_3477:
	jmp	.label_3478
.label_3478:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x10], 0
	je	.label_3476
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	ecx, dword ptr [rax + 0x30]
	and	ecx, 0xff
	cmp	ecx, 0x11
	jne	.label_3476
	lea	rdi, [rbp - 0x1c]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rax + 0x10]
	call	lower_subexp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x10], 0
	je	.label_3479
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	qword ptr [rcx], rax
.label_3479:
	jmp	.label_3476
.label_3476:
	mov	eax, dword ptr [rbp - 0x1c]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x424b2a
	.globl sub_424b2a
	.type sub_424b2a, @function
sub_424b2a:

	nop	word ptr [rax + rax]
.label_3513:
	jmp	.label_3507
.label_3511:
	mov	dword ptr [rbp - 4], 4
	jmp	.label_3494
.label_3508:
	mov	dword ptr [rbp - 0x4c], 1
.label_3512:
	jmp	.label_3507
.label_3507:
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_3501
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
	jmp	.label_3494
.label_3931:
	lea	rdi, [rbp - 0x48]
	mov	esi, 2
	call	bkm_scale
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_3483
.label_3924:
	lea	rdi, [rbp - 0x48]
	mov	edx, 2
	mov	esi, dword ptr [rbp - 0x50]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_3483
.label_3923:
	lea	rdi, [rbp - 0x48]
	mov	edx, 1
	mov	esi, dword ptr [rbp - 0x50]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_3483
.label_3488:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	or	edx, 2
	mov	dword ptr [rbp - 4], edx
	jmp	.label_3494
.label_3509:
	call	__errno_location
	cmp	dword ptr [rax], 0
	je	.label_3512
	call	__errno_location
	cmp	dword ptr [rax], 0x22
	je	.label_3508
	mov	dword ptr [rbp - 4], 4
	jmp	.label_3494
.label_3927:
	lea	rdi, [rbp - 0x48]
	mov	edx, 8
	mov	esi, dword ptr [rbp - 0x50]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_3483
.label_3483:
	mov	eax, dword ptr [rbp - 0x58]
	or	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x4c], eax
	mov	eax, dword ptr [rbp - 0x54]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rcx]
	movsxd	rsi, eax
	add	rdx, rsi
	mov	qword ptr [rcx], rdx
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rcx]
	cmp	byte ptr [rcx], 0
	je	.label_3499
	mov	eax, dword ptr [rbp - 0x4c]
	or	eax, 2
	mov	dword ptr [rbp - 0x4c], eax
.label_3499:
	jmp	.label_3484
.label_3484:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
.label_3494:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xb0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x424c67
	.globl sub_424c67
	.type sub_424c67, @function
sub_424c67:

	nop	dword ptr [rax + rax]
.label_3519:
	lea	rax, [rbp - 0x38]
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_3510
.label_3510:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x40], rax
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rbp - 0x1c]
	call	strtoimax
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x10]
	jne	.label_3509
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_3511
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_3511
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	je	.label_3511
	mov	qword ptr [rbp - 0x48], 1
	jmp	.label_3513
.label_3929:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x200
	call	bkm_scale
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_3483
.label_3925:
	lea	rdi, [rbp - 0x48]
	mov	edx, 5
	mov	esi, dword ptr [rbp - 0x50]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_3483
.label_3514:
	movabs	rdi, OFFSET FLAT:label_3516
	movabs	rsi, OFFSET FLAT:label_3517
	mov	edx, 0x54
	movabs	rcx, OFFSET FLAT:label_3518
	call	__assert_fail
.label_3926:
	lea	rdi, [rbp - 0x48]
	mov	edx, 4
	mov	esi, dword ptr [rbp - 0x50]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_3483
.label_3515:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_3519
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_3510
.label_3495:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x45
	mov	dword ptr [rbp - 0x64], ecx
	mov	dword ptr [rbp - 0x68], edx
	je	.label_3481
	jmp	.label_3490
.label_3490:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0x6c], eax
	je	.label_3481
	jmp	.label_3491
.label_3491:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x4b
	mov	dword ptr [rbp - 0x70], eax
	je	.label_3481
	jmp	.label_3497
.label_3497:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0x74], eax
	je	.label_3481
	jmp	.label_3504
.label_3504:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x50
	mov	dword ptr [rbp - 0x78], eax
	je	.label_3481
	jmp	.label_3506
.label_3506:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x54
	mov	dword ptr [rbp - 0x7c], eax
	je	.label_3481
	jmp	.label_3480
.label_3480:
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, -0x59
	sub	eax, 2
	mov	dword ptr [rbp - 0x80], eax
	jb	.label_3481
	jmp	.label_3489
.label_3489:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0x84], eax
	je	.label_3481
	jmp	.label_3496
.label_3496:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x6b
	mov	dword ptr [rbp - 0x88], eax
	je	.label_3481
	jmp	.label_3486
.label_3486:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0x8c], eax
	je	.label_3481
	jmp	.label_3502
.label_3502:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0x90], eax
	jne	.label_3485
	jmp	.label_3481
.label_3481:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x30]
	call	strchr
	cmp	rax, 0
	je	.label_3482
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 1]
	mov	edx, ecx
	sub	edx, 0x42
	mov	dword ptr [rbp - 0x94], ecx
	mov	dword ptr [rbp - 0x98], edx
	je	.label_3487
	jmp	.label_3493
.label_3493:
	mov	eax, dword ptr [rbp - 0x94]
	sub	eax, 0x44
	mov	dword ptr [rbp - 0x9c], eax
	je	.label_3487
	jmp	.label_3500
.label_3500:
	mov	eax, dword ptr [rbp - 0x94]
	sub	eax, 0x69
	mov	dword ptr [rbp - 0xa0], eax
	jne	.label_3492
	jmp	.label_3503
.label_3503:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x42
	jne	.label_3505
	mov	eax, dword ptr [rbp - 0x54]
	add	eax, 2
	mov	dword ptr [rbp - 0x54], eax
.label_3505:
	jmp	.label_3492
.label_3922:
	lea	rdi, [rbp - 0x48]
	mov	edx, 3
	mov	esi, dword ptr [rbp - 0x50]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_3483
.label_3921:
	lea	rdi, [rbp - 0x48]
	mov	edx, 6
	mov	esi, dword ptr [rbp - 0x50]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_3483
.label_3930:
	mov	dword ptr [rbp - 0x58], 0
	jmp	.label_3483
	.section	.text
	.align	16
	#Procedure 0x424f4b

	.globl xstrtoimax
	.type xstrtoimax, @function
xstrtoimax:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xb0
	xor	eax, eax
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	dword ptr [rbp - 0x4c], 0
	cmp	eax, dword ptr [rbp - 0x1c]
	jg	.label_3514
	cmp	dword ptr [rbp - 0x1c], 0x24
	jg	.label_3514
	jmp	.label_3515
.label_3501:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_3484
	mov	dword ptr [rbp - 0x50], 0x400
	mov	dword ptr [rbp - 0x54], 1
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	jne	.label_3495
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	or	edx, 2
	mov	dword ptr [rbp - 4], edx
	jmp	.label_3494
.label_3920:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x400
	call	bkm_scale
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_3483
.label_3487:
	mov	dword ptr [rbp - 0x50], 0x3e8
	mov	eax, dword ptr [rbp - 0x54]
	add	eax, 1
	mov	dword ptr [rbp - 0x54], eax
.label_3492:
	jmp	.label_3482
.label_3482:
	jmp	.label_3485
.label_3485:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x42
	mov	eax, ecx
	sub	ecx, 0x35
	mov	qword ptr [rbp - 0xa8], rax
	mov	dword ptr [rbp - 0xac], ecx
	ja	.label_3488
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_3498]]
	jmp	rcx
.label_3928:
	lea	rdi, [rbp - 0x48]
	mov	edx, 7
	mov	esi, dword ptr [rbp - 0x50]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_3483
	.section	.text
	.align	16
	#Procedure 0x425060

	.globl rpl_re_search
	.type rpl_re_search, @function
rpl_re_search:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	qword ptr [rbp - 0x30], r9
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	r8, qword ptr [rbp - 0x28]
	mov	r9, qword ptr [rbp - 0x18]
	mov	r10, qword ptr [rbp - 0x30]
	mov	qword ptr [rsp], r10
	mov	dword ptr [rsp + 8], 0
	mov	dword ptr [rbp - 0x34], eax
	call	re_search_stub
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4250b8
	.globl sub_4250b8
	.type sub_4250b8, @function
sub_4250b8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4250c0

	.globl bitset_contain
	.type bitset_contain, @function
bitset_contain:
	push	rbp
	mov	rbp, rsp
	mov	eax, 0x40
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rax, qword ptr [rbp - 0x10]
	cqo	
	idiv	rcx
	mov	rsi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rsi + rax*8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, rsi
	cqo	
	idiv	rcx
	mov	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x18]
	shr	rdx, cl
	and	rdx, 1
	cmp	rdx, 0
	setne	cl
	and	cl, 1
	movzx	r8d, cl
	mov	eax, r8d
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x425115
	.globl sub_425115
	.type sub_425115, @function
sub_425115:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x425120

	.globl parse_byte
	.type parse_byte, @function
parse_byte:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	al, dil
	mov	byte ptr [rbp - 1], al
	mov	qword ptr [rbp - 0x10], rsi
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_3520
	movzx	eax, byte ptr [rbp - 1]
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_3521
.label_3520:
	movzx	edi, byte ptr [rbp - 1]
	call	btowc
	mov	dword ptr [rbp - 0x14], eax
.label_3521:
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x42515e
	.globl sub_42515e
	.type sub_42515e, @function
sub_42515e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x425160

	.globl duplicate_node
	.type duplicate_node, @function
duplicate_node:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x14], edx
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 8]
	shl	rsi, 4
	add	rsi, qword ptr [rax]
	mov	rax, qword ptr [rsi]
	mov	rdx, qword ptr [rsi + 8]
	mov	rsi, rax
	call	re_dfa_add_node
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], -1
	setne	cl
	and	cl, 1
	movzx	r8d, cl
	movsxd	rax, r8d
	cmp	rax, 0
	je	.label_3522
	mov	eax, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 8]
	shl	rcx, 4
	add	rcx, qword ptr [rdx]
	mov	esi, dword ptr [rcx + 8]
	and	eax, 0x3ff
	shl	eax, 8
	and	esi, 0xfffc00ff
	or	esi, eax
	mov	dword ptr [rcx + 8], esi
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	shl	rcx, 4
	add	rcx, qword ptr [rdx]
	mov	eax, dword ptr [rcx + 8]
	shr	eax, 8
	and	eax, 0x3ff
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 8]
	shl	rcx, 4
	add	rcx, qword ptr [rdx]
	mov	esi, dword ptr [rcx + 8]
	shr	esi, 8
	and	esi, 0x3ff
	or	esi, eax
	mov	eax, dword ptr [rcx + 8]
	and	esi, 0x3ff
	shl	esi, 8
	and	eax, 0xfffc00ff
	or	eax, esi
	mov	dword ptr [rcx + 8], eax
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 8]
	shl	rcx, 4
	add	rcx, qword ptr [rdx]
	mov	eax, dword ptr [rcx + 8]
	and	eax, 0xfffbffff
	or	eax, 0x40000
	mov	dword ptr [rcx + 8], eax
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	qword ptr [rdi + rdx*8], rcx
.label_3522:
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x425267
	.globl sub_425267
	.type sub_425267, @function
sub_425267:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x425270
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_3523
	call	gettext
	movabs	rsi, OFFSET FLAT:label_3525
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_3526
	mov	dword ptr [rbp - 4], eax
	call	gettext
	movabs	rsi, OFFSET FLAT:label_1876
	movabs	rdx, OFFSET FLAT:label_1966
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_3524
	mov	dword ptr [rbp - 8], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0xc], eax
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4252f6
	.globl sub_4252f6
	.type sub_4252f6, @function
sub_4252f6:

	nop	
	nop	dword ptr [rax + rax]
.label_3583:
	mov	eax, 0x10
	mov	ecx, eax
	mov	qword ptr [rbp - 0x50], rcx
	jmp	.label_3527
.label_3527:
	mov	rax, qword ptr [rbp - 0x50]
	mov	ecx, 0x18
	mov	edx, ecx
	cmp	rdx, rax
	jae	.label_3552
	mov	eax, 0x10
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x30]
	jae	.label_3577
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_3539
.label_3570:
	mov	eax, 0x18
	mov	ecx, eax
	mov	qword ptr [rbp - 0x78], rcx
	jmp	.label_3530
.label_3530:
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x80], rax
	jmp	.label_3547
.label_3564:
	mov	eax, 0x10
	mov	ecx, eax
	mov	qword ptr [rbp - 0x80], rcx
	jmp	.label_3547
.label_3547:
	mov	rax, qword ptr [rbp - 0x80]
	mov	ecx, 0x18
	mov	edx, ecx
	cmp	rdx, rax
	jae	.label_3557
	mov	eax, 0x10
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x30]
	jae	.label_3561
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x88], rax
	jmp	.label_3565
.label_3568:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	shl	rax, 4
	mov	rdi, rax
	call	malloc
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	qword ptr [rbp - 0x20], 1
.label_3551:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x18]
	jbe	.label_3576
	jmp	.label_3580
.label_3574:
	jmp	.label_3533
.label_3533:
	jmp	.label_3528
.label_3528:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	qword ptr [rcx], 0
	mov	byte ptr [rbp - 0xe1], al
	je	.label_3581
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x40], 0
	sete	cl
	mov	byte ptr [rbp - 0xe1], cl
.label_3581:
	mov	al, byte ptr [rbp - 0xe1]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_3534
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_3540
.label_3577:
	mov	eax, 0x10
	mov	ecx, eax
	mov	qword ptr [rbp - 0x58], rcx
	jmp	.label_3539
.label_3539:
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_3546
.label_3572:
	mov	eax, 0x18
	mov	ecx, eax
	mov	qword ptr [rbp - 0x98], rcx
	jmp	.label_3545
.label_3545:
	mov	rax, qword ptr [rbp - 0x98]
	mov	ecx, 0x10
	mov	edx, ecx
	cmp	rdx, rax
	jae	.label_3558
	mov	eax, 0x10
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x30]
	jae	.label_3562
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xa0], rax
	jmp	.label_3559
.label_3566:
	mov	eax, 0x10
	mov	ecx, eax
	mov	qword ptr [rbp - 0x68], rcx
	jmp	.label_3567
.label_3567:
	mov	rax, qword ptr [rbp - 0x68]
	mov	ecx, 0x18
	mov	edx, ecx
	cmp	rdx, rax
	jae	.label_3570
	mov	eax, 0x10
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x30]
	jae	.label_3573
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_3575
.label_3562:
	mov	eax, 0x10
	mov	ecx, eax
	mov	qword ptr [rbp - 0xa0], rcx
	jmp	.label_3559
.label_3559:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	ecx, 0x18
	mov	edx, ecx
	cmp	rdx, rax
	jae	.label_3582
	mov	eax, 0x10
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x30]
	jae	.label_3532
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xa8], rax
	jmp	.label_3538
.label_3578:
	mov	eax, 0x10
	mov	ecx, eax
	mov	qword ptr [rbp - 0x90], rcx
	jmp	.label_3543
.label_3543:
	mov	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x98], rax
	jmp	.label_3545
.label_3582:
	mov	eax, 0x18
	mov	ecx, eax
	mov	qword ptr [rbp - 0xb0], rcx
	jmp	.label_3550
.label_3550:
	mov	rax, qword ptr [rbp - 0xb0]
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_3556
.label_3552:
	mov	eax, 0x18
	mov	ecx, eax
	mov	qword ptr [rbp - 0x60], rcx
	jmp	.label_3546
.label_3546:
	mov	rax, qword ptr [rbp - 0x60]
	mov	ecx, 0x10
	mov	edx, ecx
	cmp	rdx, rax
	jae	.label_3564
	mov	eax, 0x10
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x30]
	jae	.label_3566
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x68], rax
	jmp	.label_3567
.label_3529:
	mov	dword ptr [rbp - 0x3c], 0
	mov	dword ptr [rbp - 0x44], 0
.label_3536:
	cmp	dword ptr [rbp - 0x3c], 4
	jge	.label_3574
	mov	dword ptr [rbp - 0x40], 0
.label_3555:
	cmp	dword ptr [rbp - 0x40], 0x40
	jge	.label_3579
	mov	edi, dword ptr [rbp - 0x44]
	call	btowc
	mov	dword ptr [rbp - 0x48], eax
	cmp	dword ptr [rbp - 0x48], -1
	je	.label_3571
	mov	eax, 1
	mov	ecx, eax
	mov	eax, dword ptr [rbp - 0x40]
	mov	edx, eax
	mov	qword ptr [rbp - 0xe0], rcx
	mov	rcx, rdx
	mov	rdx, qword ptr [rbp - 0xe0]
	shl	rdx, cl
	movsxd	rsi, dword ptr [rbp - 0x3c]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi + 0x78]
	or	rdx, qword ptr [rdi + rsi*8]
	mov	qword ptr [rdi + rsi*8], rdx
.label_3571:
	mov	eax, dword ptr [rbp - 0x44]
	and	eax, 0xffffff80
	cmp	eax, 0
	jne	.label_3541
	mov	eax, dword ptr [rbp - 0x48]
	cmp	eax, dword ptr [rbp - 0x44]
	je	.label_3541
	mov	rax, qword ptr [rbp - 0x10]
	mov	cl, byte ptr [rax + 0xb0]
	and	cl, 0xf7
	or	cl, 8
	mov	byte ptr [rax + 0xb0], cl
.label_3541:
	jmp	.label_3553
.label_3553:
	mov	eax, dword ptr [rbp - 0x40]
	add	eax, 1
	mov	dword ptr [rbp - 0x40], eax
	mov	eax, dword ptr [rbp - 0x44]
	add	eax, 1
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_3555
	.section	.text
	.align	16
	#Procedure 0x425682

	.globl init_dfa
	.type init_dfa, @function
init_dfa:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xf0
	mov	eax, 0x10
	mov	ecx, eax
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x30], 8
	cmp	rcx, qword ptr [rbp - 0x30]
	jae	.label_3583
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_3527
.label_3557:
	mov	eax, 0x18
	mov	ecx, eax
	mov	qword ptr [rbp - 0xc0], rcx
	jmp	.label_3560
.label_3560:
	mov	rax, qword ptr [rbp - 0xc0]
	movabs	rcx, 0x7fffffffffffffff
	mov	rdx, -1
	xor	esi, esi
	mov	edi, 0xe8
	mov	r8d, edi
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	mov	qword ptr [rbp - 0xc8], rdx
	mov	rdx, r8
	mov	qword ptr [rbp - 0xd0], rcx
	call	memset
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax + 0x80], 0xf
	mov	rax, qword ptr [rbp - 0xc8]
	xor	esi, esi
	mov	edx, esi
	div	qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0xd0]
	cmp	rcx, rax
	jae	.label_3531
	movabs	rax, 0x7fffffffffffffff
	mov	qword ptr [rbp - 0xd8], rax
	jmp	.label_3542
.label_3534:
	mov	dword ptr [rbp - 4], 0
.label_3540:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xf0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x425767
	.globl sub_425767
	.type sub_425767, @function
sub_425767:

	nop	dword ptr [rax]
.label_3537:
	mov	eax, 0x20
	mov	edi, eax
	mov	eax, 1
	mov	esi, eax
	call	calloc
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + 0x78], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x78], 0
	sete	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_3529
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_3540
.label_3561:
	mov	eax, 0x10
	mov	ecx, eax
	mov	qword ptr [rbp - 0x88], rcx
	jmp	.label_3565
.label_3565:
	mov	rax, qword ptr [rbp - 0x88]
	mov	ecx, 0x18
	mov	edx, ecx
	cmp	rdx, rax
	jae	.label_3572
	mov	eax, 0x10
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x30]
	jae	.label_3578
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_3543
.label_3580:
	mov	eax, 0x18
	mov	edi, eax
	mov	rsi, qword ptr [rbp - 0x20]
	call	calloc
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + 0x40], rax
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 1
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + 0x88], rax
	call	__ctype_get_mb_cur_max
	mov	edi, 0xe
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax + 0xb4], ecx
	call	rpl_nl_langinfo
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x55
	je	.label_3544
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x75
	jne	.label_3549
.label_3544:
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0x54
	je	.label_3554
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0x74
	jne	.label_3549
.label_3554:
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x46
	je	.label_3563
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x66
	jne	.label_3549
.label_3563:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 3
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + 3]
	cmp	edx, 0x2d
	sete	sil
	and	sil, 1
	movzx	edx, sil
	movsxd	rcx, edx
	add	rax, rcx
	mov	edx, OFFSET FLAT:label_3569
	mov	esi, edx
	mov	rdi, rax
	call	strcmp
	cmp	eax, 0
	jne	.label_3549
	mov	rax, qword ptr [rbp - 0x10]
	mov	cl, byte ptr [rax + 0xb0]
	and	cl, 0xfb
	or	cl, 4
	mov	byte ptr [rax + 0xb0], cl
.label_3549:
	mov	rax, qword ptr [rbp - 0x10]
	mov	cl, byte ptr [rax + 0xb0]
	and	cl, 0xf7
	mov	byte ptr [rax + 0xb0], cl
	mov	rax, qword ptr [rbp - 0x10]
	cmp	dword ptr [rax + 0xb4], 1
	jle	.label_3528
	mov	rax, qword ptr [rbp - 0x10]
	mov	cl, byte ptr [rax + 0xb0]
	shr	cl, 2
	and	cl, 1
	movzx	edx, cl
	cmp	edx, 0
	je	.label_3537
	movabs	rax, OFFSET FLAT:utf8_sb_map
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x78], rax
	jmp	.label_3533
.label_3576:
	jmp	.label_3548
.label_3548:
	mov	rax, qword ptr [rbp - 0x20]
	shl	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_3551
.label_3558:
	mov	eax, 0x10
	mov	ecx, eax
	mov	qword ptr [rbp - 0xb8], rcx
	jmp	.label_3556
.label_3556:
	mov	rax, qword ptr [rbp - 0xb8]
	mov	qword ptr [rbp - 0xc0], rax
	jmp	.label_3560
.label_3531:
	mov	rax, -1
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0xd8], rax
.label_3542:
	mov	rax, qword ptr [rbp - 0xd8]
	shr	rax, 1
	cmp	rax, qword ptr [rbp - 0x18]
	setbe	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_3568
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_3540
.label_3532:
	mov	eax, 0x10
	mov	ecx, eax
	mov	qword ptr [rbp - 0xa8], rcx
	jmp	.label_3538
.label_3538:
	mov	rax, qword ptr [rbp - 0xa8]
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_3550
.label_3573:
	mov	eax, 0x10
	mov	ecx, eax
	mov	qword ptr [rbp - 0x70], rcx
	jmp	.label_3575
.label_3575:
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_3530
.label_3579:
	jmp	.label_3535
.label_3535:
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_3536
.label_3590:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_3594
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 8], 0
	jle	.label_3594
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	re_node_set_init_copy
	mov	dword ptr [rbp - 4], eax
	jmp	.label_3589
	.section	.text
	.align	16
	#Procedure 0x425a5f

	.globl re_node_set_init_union
	.type re_node_set_init_union, @function
re_node_set_init_union:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_3590
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 8], 0
	jle	.label_3590
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_3590
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 8], 0
	jle	.label_3590
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rcx + 8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	shl	rax, 3
	mov	rdi, rax
	call	malloc
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x10], 0
	sete	dl
	and	dl, 1
	movzx	esi, dl
	movsxd	rax, esi
	cmp	rax, 0
	je	.label_3591
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_3589
.label_3594:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_3586
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 8], 0
	jle	.label_3586
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	call	re_node_set_init_copy
	mov	dword ptr [rbp - 4], eax
	jmp	.label_3589
.label_3586:
	xor	esi, esi
	mov	eax, 0x18
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, rcx
	call	memset
	jmp	.label_3587
.label_3587:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_3589
.label_3598:
	mov	qword ptr [rbp - 0x38], 0
	mov	qword ptr [rbp - 0x30], 0
	mov	qword ptr [rbp - 0x28], 0
.label_3588:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x18]
	cmp	rdx, qword ptr [rsi + 8]
	mov	byte ptr [rbp - 0x39], cl
	jge	.label_3595
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rcx + 8]
	setl	dl
	mov	byte ptr [rbp - 0x39], dl
.label_3595:
	mov	al, byte ptr [rbp - 0x39]
	test	al, 1
	jne	.label_3592
	jmp	.label_3597
.label_3592:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rdx + 0x10]
	cmp	rax, qword ptr [rdx + rcx*8]
	jle	.label_3593
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x30], rcx
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rbp - 0x38], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	qword ptr [rdx + rcx*8], rax
	jmp	.label_3588
.label_3593:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rdx + 0x10]
	cmp	rax, qword ptr [rdx + rcx*8]
	jne	.label_3596
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
.label_3596:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x28], rcx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rbp - 0x38], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	qword ptr [rdx + rcx*8], rax
	jmp	.label_3588
.label_3591:
	jmp	.label_3598
.label_3597:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_3599
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x38]
	shl	rcx, 3
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rdx, qword ptr [rbp - 0x28]
	shl	rdx, 3
	add	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 8]
	sub	rdx, qword ptr [rbp - 0x28]
	shl	rdx, 3
	mov	rdi, rax
	mov	rsi, rcx
	call	memcpy
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	sub	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_3584
.label_3599:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_3585
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x38]
	shl	rcx, 3
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rdx, qword ptr [rbp - 0x30]
	shl	rdx, 3
	add	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rdx + 8]
	sub	rdx, qword ptr [rbp - 0x30]
	shl	rdx, 3
	mov	rdi, rax
	mov	rsi, rcx
	call	memcpy
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	sub	rax, qword ptr [rbp - 0x30]
	add	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x38], rax
.label_3585:
	jmp	.label_3584
.label_3584:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 8], rax
	mov	dword ptr [rbp - 4], 0
.label_3589:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x425d73
	.globl sub_425d73
	.type sub_425d73, @function
sub_425d73:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x425d80

	.globl orig_freopen
	.type orig_freopen, @function
orig_freopen:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	freopen
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x425dab
	.globl sub_425dab
	.type sub_425dab, @function
sub_425dab:

	nop	dword ptr [rax + rax]
.label_3608:
	xor	esi, esi
	mov	rdi, qword ptr [rbp - 0x20]
	call	calc_state_hash
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x40]
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	and	rdi, qword ptr [rcx + 0x88]
	imul	rcx, rdi, 0x18
	add	rax, rcx
	mov	qword ptr [rbp - 0x38], rax
	mov	qword ptr [rbp - 0x40], 0
.label_3604:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rcx]
	jge	.label_3602
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rcx]
	je	.label_3606
	jmp	.label_3603
	.section	.text
	.align	16
	#Procedure 0x425e24

	.globl re_acquire_state
	.type re_acquire_state, @function
re_acquire_state:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x20]
	cmp	qword ptr [rdx + 8], 0
	sete	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_3608
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 0
	mov	qword ptr [rbp - 8], 0
	jmp	.label_3601
.label_3607:
	jmp	.label_3603
.label_3603:
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_3604
.label_3606:
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 8
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdi, rax
	call	re_node_set_compare
	test	al, 1
	jne	.label_3605
	jmp	.label_3607
.label_3605:
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_3601
.label_3602:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	call	create_ci_newstate
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 0
	sete	cl
	and	cl, 1
	movzx	r8d, cl
	movsxd	rax, r8d
	cmp	rax, 0
	je	.label_3600
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 0xc
.label_3600:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
.label_3601:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x425efe
	.globl sub_425efe
	.type sub_425efe, @function
sub_425efe:

	nop	
.label_3614:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_3609
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	imul	rcx, qword ptr [rbp - 0x40]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	imul	rdx, qword ptr [rbp - 0x30]
	add	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rdi, rax
	mov	rsi, rcx
	call	memcmp
	cmp	eax, 0
	je	.label_3620
.label_3609:
	mov	byte ptr [rbp - 0x41], 1
.label_3620:
	jmp	.label_3610
.label_3610:
	jmp	.label_3613
.label_3613:
	jmp	.label_3611
.label_3611:
	jmp	.label_3615
.label_3615:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_3616
.label_3619:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 8], rax
.label_3612:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x425f7e
	.globl sub_425f7e
	.type sub_425f7e, @function
sub_425f7e:

	nop	word ptr cs:[rax + rax]
.label_3618:
	cmp	qword ptr [rbp - 0x40], -1
	jne	.label_3614
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_3610
	.section	.text
	.align	16
	#Procedure 0x425fa3

	.globl argmatch
	.type argmatch, @function
argmatch:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x40], -1
	mov	byte ptr [rbp - 0x41], 0
	mov	rdi, qword ptr [rbp - 0x10]
	call	strlen
	mov	qword ptr [rbp - 0x38], rax
	mov	qword ptr [rbp - 0x30], 0
.label_3616:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_3617
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x38]
	call	strncmp
	cmp	eax, 0
	jne	.label_3611
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx + rax*8]
	call	strlen
	cmp	rax, qword ptr [rbp - 0x38]
	jne	.label_3618
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_3612
.label_3617:
	test	byte ptr [rbp - 0x41], 1
	je	.label_3619
	mov	qword ptr [rbp - 8], -2
	jmp	.label_3612
	.section	.text
	.align	16
	#Procedure 0x426050

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	edi, 0xe
	call	rpl_nl_langinfo
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [rbp - 8], 0
	jne	.label_3621
	movabs	rax, OFFSET FLAT:label_783
	mov	qword ptr [rbp - 8], rax
.label_3621:
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_3622
	movabs	rax, OFFSET FLAT:label_3623
	mov	qword ptr [rbp - 8], rax
.label_3622:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4260a7
	.globl sub_4260a7
	.type sub_4260a7, @function
sub_4260a7:

	nop	word ptr [rax + rax]
.label_3643:
	mov	rax, qword ptr [rbp - 0x30]
	shl	rax, 3
	cmp	rax, 0xfa1
	jae	.label_3640
	mov	rax, qword ptr [rbp - 0x30]
	lea	rax, [rax*8 + 0x2e]
	and	rax, 0xfffffffffffffff0
	mov	rcx, rsp
	sub	rcx, rax
	mov	rsp, rcx
	add	rcx, 0x1f
	and	rcx, 0xffffffffffffffe0
	mov	qword ptr [rbp - 0x78], rcx
	jmp	.label_3626
.label_3635:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdi, rax
	call	freea
	mov	byte ptr [rbp - 1], 1
.label_3627:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	mov	rsp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x42610b
	.globl sub_42610b
	.type sub_42610b, @function
sub_42610b:

	nop	word ptr cs:[rax + rax]
.label_3640:
	mov	rax, qword ptr [rbp - 0x30]
	shl	rax, 3
	mov	rdi, rax
	call	mmalloca
	mov	qword ptr [rbp - 0x78], rax
.label_3626:
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x70], rax
.label_3642:
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x38], rax
	cmp	qword ptr [rbp - 0x38], 0
	jne	.label_3629
	mov	byte ptr [rbp - 1], 0
	jmp	.label_3627
	.section	.text
	.align	16
	#Procedure 0x42614f

	.globl knuth_morris_pratt
	.type knuth_morris_pratt, @function
knuth_morris_pratt:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x80
	movabs	rax, 0xfffffffffffffff
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x30], rcx
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_3643
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x70], rcx
	jmp	.label_3642
.label_3634:
	cmp	qword ptr [rbp - 0x48], 0
	jne	.label_3633
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	qword ptr [rdx + rcx*8], rax
	jmp	.label_3628
.label_3629:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rax + 8], 1
	mov	qword ptr [rbp - 0x48], 0
	mov	qword ptr [rbp - 0x40], 2
.label_3636:
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_3632
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x18]
	mov	dl, byte ptr [rcx + rax]
	mov	byte ptr [rbp - 0x49], dl
.label_3641:
	movzx	eax, byte ptr [rbp - 0x49]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x18]
	movzx	esi, byte ptr [rdx + rcx]
	cmp	eax, esi
	jne	.label_3634
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x48]
	add	rcx, 1
	mov	qword ptr [rbp - 0x48], rcx
	sub	rax, rcx
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	qword ptr [rdx + rcx*8], rax
	jmp	.label_3628
.label_3628:
	jmp	.label_3638
.label_3638:
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_3636
.label_3639:
	cmp	qword ptr [rbp - 0x58], 0
	jbe	.label_3625
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x58]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x58], rcx
	jmp	.label_3631
.label_3632:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rax], 0
	mov	qword ptr [rbp - 0x58], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x68], rax
.label_3637:
	mov	rax, qword ptr [rbp - 0x68]
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_3635
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x18]
	movzx	edx, byte ptr [rcx + rax]
	mov	rax, qword ptr [rbp - 0x68]
	movzx	esi, byte ptr [rax]
	cmp	edx, esi
	jne	.label_3639
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x68]
	add	rax, 1
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x30]
	jne	.label_3630
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	jmp	.label_3635
.label_3630:
	jmp	.label_3624
.label_3625:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x68]
	add	rax, 1
	mov	qword ptr [rbp - 0x68], rax
.label_3631:
	jmp	.label_3624
.label_3624:
	jmp	.label_3637
.label_3633:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x38]
	sub	rax, qword ptr [rdx + rcx*8]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_3641
.label_3645:
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x426346
	.globl sub_426346
	.type sub_426346, @function
sub_426346:

	nop	word ptr cs:[rax + rax]
.label_3654:
	jmp	.label_3648
.label_3648:
	jmp	.label_3649
.label_3649:
	jmp	.label_3653
.label_3653:
	cmp	dword ptr [rbp - 0xc], 4
	jge	.label_3645
	mov	dword ptr [rbp - 0x10], 0
.label_3647:
	cmp	dword ptr [rbp - 0x10], 0x40
	jge	.label_3651
	movsxd	rax, dword ptr [rbp - 0x14]
	mov	qword ptr [rbp - 0x48], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x48]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 8
	cmp	edx, 0
	jne	.label_3646
	cmp	dword ptr [rbp - 0x14], 0x5f
	jne	.label_3644
.label_3646:
	mov	eax, 1
	mov	ecx, eax
	mov	eax, dword ptr [rbp - 0x10]
	mov	edx, eax
	mov	qword ptr [rbp - 0x50], rcx
	mov	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x50]
	shl	rdx, cl
	movsxd	rsi, dword ptr [rbp - 0xc]
	mov	rdi, qword ptr [rbp - 8]
	or	rdx, qword ptr [rdi + rsi*8 + 0xb8]
	mov	qword ptr [rdi + rsi*8 + 0xb8], rdx
.label_3644:
	jmp	.label_3652
.label_3652:
	mov	eax, dword ptr [rbp - 0x10]
	add	eax, 1
	mov	dword ptr [rbp - 0x10], eax
	mov	eax, dword ptr [rbp - 0x14]
	add	eax, 1
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_3647
.label_3651:
	jmp	.label_3650
.label_3650:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, 1
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_3653
	.section	.text
	.align	16
	#Procedure 0x42640c

	.globl init_word_char
	.type init_word_char, @function
init_word_char:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], 0
	mov	dword ptr [rbp - 0x14], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	al, byte ptr [rdi + 0xb0]
	and	al, 0xef
	or	al, 0x10
	mov	byte ptr [rdi + 0xb0], al
	mov	rdi, qword ptr [rbp - 8]
	mov	al, byte ptr [rdi + 0xb0]
	shr	al, 3
	and	al, 1
	movzx	ecx, al
	cmp	ecx, 0
	sete	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdi, ecx
	cmp	rdi, 0
	je	.label_3648
	mov	eax, 0x87fffffe
	mov	ecx, eax
	mov	qword ptr [rbp - 0x20], 0
	mov	qword ptr [rbp - 0x28], 0x3ff0000
	mov	qword ptr [rbp - 0x30], rcx
	mov	qword ptr [rbp - 0x38], 0x7fffffe
	mov	rcx, qword ptr [rbp - 0x28]
	shl	rcx, 0x1f
	shl	rcx, 1
	or	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx + 0xb8], rcx
	mov	rcx, qword ptr [rbp - 0x38]
	shl	rcx, 0x1f
	shl	rcx, 1
	or	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx + 0xc0], rcx
	mov	dword ptr [rbp - 0xc], 2
	mov	dword ptr [rbp - 0x14], 0x80
	mov	rcx, qword ptr [rbp - 8]
	mov	sil, byte ptr [rcx + 0xb0]
	shr	sil, 2
	and	sil, 1
	movzx	eax, sil
	mov	eax, eax
	mov	ecx, eax
	cmp	rcx, 0
	je	.label_3654
	xor	esi, esi
	mov	eax, 8
	mov	ecx, 0x100
	movsxd	rdx, dword ptr [rbp - 0xc]
	mov	rdi, qword ptr [rbp - 8]
	add	rdi, 0xb8
	shl	rdx, 3
	add	rdi, rdx
	sub	ecx, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x3c], eax
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0x3c]
	idiv	ecx
	movsxd	r8, eax
	mov	rdx, r8
	call	memset
	jmp	.label_3645
.label_3656:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax + 0x20]
	call	free
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x20], 0
.label_3658:
	mov	eax, dword ptr [rbp - 0x20]
	mov	dword ptr [rbp - 4], eax
.label_3659:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x426558
	.globl sub_426558
	.type sub_426558, @function
sub_426558:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x42655c
	.globl rpl_regcomp
	.type rpl_regcomp, @function
rpl_regcomp:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	eax, 0x100
	mov	ecx, eax
	mov	eax, 0x10102c6
	mov	r8d, eax
	mov	eax, 0x3b2fc
	mov	r9d, eax
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	mov	eax, dword ptr [rbp - 0x1c]
	and	eax, 1
	cmp	eax, 0
	cmovne	r8, r9
	mov	qword ptr [rbp - 0x28], r8
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi], 0
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + 8], 0
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + 0x10], 0
	mov	rdi, rcx
	call	malloc
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x20], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x20], 0
	sete	r10b
	and	r10b, 1
	movzx	edx, r10b
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_3655
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_3659
.label_3655:
	xor	eax, eax
	mov	ecx, eax
	mov	eax, 0x400000
	mov	edx, eax
	mov	eax, dword ptr [rbp - 0x1c]
	and	eax, 2
	cmp	eax, 0
	cmovne	rcx, rdx
	or	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rcx
	mov	eax, dword ptr [rbp - 0x1c]
	and	eax, 4
	cmp	eax, 0
	je	.label_3661
	mov	rax, qword ptr [rbp - 0x28]
	and	rax, 0xffffffffffffffbf
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x28]
	or	rax, 0x100
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	cl, byte ptr [rax + 0x38]
	and	cl, 0x7f
	or	cl, 0x80
	mov	byte ptr [rax + 0x38], cl
	jmp	.label_3657
.label_3661:
	mov	rax, qword ptr [rbp - 0x10]
	mov	cl, byte ptr [rax + 0x38]
	and	cl, 0x7f
	mov	byte ptr [rax + 0x38], cl
.label_3657:
	mov	eax, dword ptr [rbp - 0x1c]
	and	eax, 8
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	xor	cl, 0xff
	and	cl, 1
	movzx	eax, cl
	mov	rdx, qword ptr [rbp - 0x10]
	mov	cl, al
	mov	sil, byte ptr [rdx + 0x38]
	and	cl, 1
	shl	cl, 4
	and	sil, 0xef
	or	sil, cl
	mov	byte ptr [rdx + 0x38], sil
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x28], 0
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rdi
	mov	rdi, rdx
	mov	qword ptr [rbp - 0x38], rsi
	call	strlen
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, rax
	call	re_compile_internal
	mov	dword ptr [rbp - 0x20], eax
	cmp	dword ptr [rbp - 0x20], 0x10
	jne	.label_3660
	mov	dword ptr [rbp - 0x20], 8
.label_3660:
	cmp	dword ptr [rbp - 0x20], 0
	sete	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_3656
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_re_compile_fastmap
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_3658
	.section	.text
	.align	16
	#Procedure 0x426710

	.globl re_string_construct
	.type re_string_construct, @function
re_string_construct:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	al, r8b
	xor	r8d, r8d
	mov	r10d, 0x98
	mov	r11d, r10d
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	and	al, 1
	mov	byte ptr [rbp - 0x29], al
	mov	qword ptr [rbp - 0x38], r9
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, rcx
	mov	esi, r8d
	mov	rdx, r11
	call	memset
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	al, byte ptr [rbp - 0x29]
	mov	r9, qword ptr [rbp - 0x38]
	and	al, 1
	movzx	r8d, al
	call	re_string_construct_common
	cmp	qword ptr [rbp - 0x20], 0
	jle	.label_3674
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	rsi, rax
	call	re_string_realloc_buffers
	mov	dword ptr [rbp - 0x3c], eax
	cmp	dword ptr [rbp - 0x3c], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rsi, eax
	cmp	rsi, 0
	je	.label_3668
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_3665
.label_3676:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x48], rax
.label_3680:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 8], rax
	test	byte ptr [rbp - 0x29], 1
	je	.label_3663
	mov	rax, qword ptr [rbp - 0x38]
	cmp	dword ptr [rax + 0xb4], 1
	jle	.label_3671
	jmp	.label_3678
.label_3678:
	mov	rdi, qword ptr [rbp - 0x10]
	call	build_wcs_upper_buffer
	mov	dword ptr [rbp - 0x3c], eax
	cmp	dword ptr [rbp - 0x3c], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rdi, eax
	cmp	rdi, 0
	je	.label_3669
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_3665
.label_3666:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	rdx, qword ptr [rbp - 0x38]
	movsxd	rdx, dword ptr [rdx + 0xb4]
	add	rcx, rdx
	cmp	rax, rcx
	jle	.label_3675
	jmp	.label_3673
.label_3663:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	dword ptr [rax + 0xb4], 1
	jle	.label_3667
	mov	rdi, qword ptr [rbp - 0x10]
	call	build_wcs_buffer
	jmp	.label_3677
.label_3679:
	jmp	.label_3678
.label_3664:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x30], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x38], rax
.label_3672:
	jmp	.label_3677
.label_3677:
	jmp	.label_3670
.label_3670:
	mov	dword ptr [rbp - 4], 0
.label_3665:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4268aa
	.globl sub_4268aa
	.type sub_4268aa, @function
sub_4268aa:

	nop	word ptr [rax + rax]
.label_3671:
	mov	rdi, qword ptr [rbp - 0x10]
	call	build_upper_buffer
.label_3662:
	jmp	.label_3670
.label_3673:
	jmp	.label_3662
.label_3667:
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_3664
	mov	rdi, qword ptr [rbp - 0x10]
	call	re_string_translate_buffer
	jmp	.label_3672
.label_3675:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x40]
	shl	rax, 1
	mov	rsi, rax
	call	re_string_realloc_buffers
	mov	dword ptr [rbp - 0x3c], eax
	cmp	dword ptr [rbp - 0x3c], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rsi, eax
	cmp	rsi, 0
	je	.label_3679
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_3665
.label_3668:
	jmp	.label_3674
.label_3674:
	mov	rax, qword ptr [rbp - 0x10]
	movzx	ecx, byte ptr [rax + 0x8b]
	cmp	ecx, 0
	je	.label_3676
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_3680
.label_3669:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x38]
	cmp	rax, qword ptr [rbp - 0x20]
	jl	.label_3666
	jmp	.label_3673
	.section	.text
	.align	16
	#Procedure 0x426960

	.globl mark_opt_subexp
	.type mark_opt_subexp, @function
mark_opt_subexp:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rsi + 0x30]
	and	eax, 0xff
	cmp	eax, 0x11
	jne	.label_3681
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	cmp	rax, qword ptr [rbp - 0x18]
	jne	.label_3681
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x30]
	and	ecx, 0xfff7ffff
	or	ecx, 0x80000
	mov	dword ptr [rax + 0x30], ecx
.label_3681:
	xor	eax, eax
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4269b5
	.globl sub_4269b5
	.type sub_4269b5, @function
sub_4269b5:

	nop	word ptr cs:[rax + rax]
.label_3688:
	mov	qword ptr [rbp - 0x38], 0
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, -1
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0xb8]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_3682
	lea	rcx, [rbp - 0x40]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x28]
	call	build_sifted_states
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], 0
	setne	r8b
	and	r8b, 1
	movzx	eax, r8b
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_3683
	jmp	.label_3684
.label_3690:
	jmp	.label_3691
.label_3692:
	lea	rcx, [rbp - 0x40]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x28]
	call	update_cur_sifted_state
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], 0
	setne	r8b
	and	r8b, 1
	movzx	eax, r8b
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_3693
	jmp	.label_3684
.label_3685:
	mov	dword ptr [rbp - 0x1c], 0
.label_3684:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rdi, rax
	call	free
	mov	ecx, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], ecx
.label_3689:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x426a89
	.globl sub_426a89
	.type sub_426a89, @function
sub_426a89:

	nop	word ptr cs:[rax + rax]
.label_3687:
	xor	eax, eax
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_3686
.label_3686:
	mov	eax, dword ptr [rbp - 0x44]
	mov	dword ptr [rbp - 0x20], eax
	mov	eax, dword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	eax, dword ptr [rcx + 0xe0]
	jle	.label_3688
	xor	esi, esi
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x28]
	shl	rcx, 3
	mov	rdi, rax
	mov	rdx, rcx
	call	memset
	mov	rax, qword ptr [rbp - 0x30]
	mov	rdi, rax
	call	free
	mov	dword ptr [rbp - 4], 0
	jmp	.label_3689
	.section	.text
	.align	16
	#Procedure 0x426aee

	.globl sift_states_backward
	.type sift_states_backward, @function
sift_states_backward:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	lea	rax, [rbp - 0x40]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x20], 0
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rsi + 0x18]
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rsi + 0x10]
	mov	rdi, rax
	call	re_node_set_init_1
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rsi, eax
	cmp	rsi, 0
	je	.label_3692
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_3689
.label_3683:
	jmp	.label_3682
.label_3682:
	lea	rcx, [rbp - 0x40]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x28]
	call	update_cur_sifted_state
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], 0
	setne	r8b
	and	r8b, 1
	movzx	eax, r8b
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_3690
	jmp	.label_3684
.label_3693:
	jmp	.label_3691
.label_3691:
	cmp	qword ptr [rbp - 0x28], 0
	jle	.label_3685
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx]
	cmp	qword ptr [rcx + rax*8], 0
	jne	.label_3687
	mov	eax, dword ptr [rbp - 0x20]
	add	eax, 1
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_3686
	.section	.text
	.align	16
	#Procedure 0x426bc0

	.globl to_uchar
	.type to_uchar, @function
to_uchar:
	push	rbp
	mov	rbp, rsp
	mov	al, dil
	mov	byte ptr [rbp - 1], al
	movzx	eax, byte ptr [rbp - 1]
	pop	rbp
	ret	
.label_3709:
	jmp	.label_3699
.label_3699:
	cmp	qword ptr [word ptr [context_regex]],  0
	je	.label_3701
	mov	rax,  qword ptr [word ptr [context_regex]]
	cmp	byte ptr [rax], 0
	jne	.label_3704
	mov	qword ptr [word ptr [context_regex]],  0
.label_3704:
	jmp	.label_3694
.label_3708:
	movabs	rdi, OFFSET FLAT:word_fastmap
	mov	esi, 1
	mov	eax, 0x100
	mov	edx, eax
	call	memset
	mov	byte ptr [byte ptr [label_830]],  0
	mov	byte ptr [byte ptr [label_831]],  0
	mov	byte ptr [byte ptr [label_832]],  0
.label_3707:
	jmp	.label_3696
.label_3696:
	jmp	.label_3705
.label_3705:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x426c49
	.globl sub_426c49
	.type sub_426c49, @function
sub_426c49:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x426c50

	.globl initialize_regex
	.type initialize_regex, @function
initialize_regex:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	test	byte ptr [byte ptr [ignore_case]],  1
	je	.label_3699
	mov	dword ptr [rbp - 4], 0
.label_3695:
	cmp	dword ptr [rbp - 4], 0x100
	jge	.label_3709
	mov	edi, dword ptr [rbp - 4]
	call	toupper
	mov	cl, al
	movsxd	rdx, dword ptr [rbp - 4]
	mov	byte ptr [byte ptr [+ (rdx * 1) + folded_chars]],  cl
	mov	eax, dword ptr [rbp - 4]
	add	eax, 1
	mov	dword ptr [rbp - 4], eax
	jmp	.label_3695
.label_3697:
	cmp	qword ptr [word ptr [break_file]],  0
	jne	.label_3696
	test	byte ptr [byte ptr [gnu_extensions]],  1
	je	.label_3708
	mov	dword ptr [rbp - 4], 0
.label_3702:
	cmp	dword ptr [rbp - 4], 0x100
	jge	.label_3698
	movsxd	rax, dword ptr [rbp - 4]
	mov	qword ptr [rbp - 0x10], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x10]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x400
	cmp	edx, 0
	setne	sil
	xor	sil, 0xff
	xor	sil, 0xff
	and	sil, 1
	movzx	edx, sil
	mov	sil, dl
	movsxd	rax, dword ptr [rbp - 4]
	mov	byte ptr [byte ptr [+ (rax * 1) + word_fastmap]],  sil
	mov	eax, dword ptr [rbp - 4]
	add	eax, 1
	mov	dword ptr [rbp - 4], eax
	jmp	.label_3702
.label_3701:
	test	byte ptr [byte ptr [gnu_extensions]],  1
	je	.label_3703
	test	byte ptr [byte ptr [input_reference]],  1
	jne	.label_3703
	movabs	rax, OFFSET FLAT:label_3710
	mov	qword ptr [word ptr [context_regex]],  rax
	jmp	.label_3711
.label_3703:
	movabs	rax, OFFSET FLAT:label_3700
	mov	qword ptr [word ptr [context_regex]],  rax
.label_3711:
	jmp	.label_3694
.label_3694:
	cmp	qword ptr [word ptr [context_regex]],  0
	je	.label_3706
	movabs	rdi, OFFSET FLAT:context_regex
	call	compile_regex
.label_3706:
	cmp	qword ptr [word ptr [word_regex]],  0
	je	.label_3697
	movabs	rdi, OFFSET FLAT:word_regex
	call	compile_regex
	jmp	.label_3705
.label_3698:
	jmp	.label_3707
.label_3712:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
.label_3713:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x426dc2
	.globl sub_426dc2
	.type sub_426dc2, @function
sub_426dc2:

	nop	word ptr cs:[rax + rax]
.label_3721:
	cmp	qword ptr [rbp - 0x28], -1
	jne	.label_3714
	movzx	eax, byte ptr [rbp - 0x29]
	sub	eax, 0x30
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x40], rcx
	jmp	.label_3718
	.section	.text
	.align	16
	#Procedure 0x426dec

	.globl fetch_number
	.type fetch_number, @function
fetch_number:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], -1
.label_3722:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x20]
	call	fetch_token
	mov	rdx, qword ptr [rbp - 0x18]
	mov	al, byte ptr [rdx]
	mov	byte ptr [rbp - 0x29], al
	mov	rdx, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rdx + 8]
	and	ecx, 0xff
	cmp	ecx, 2
	sete	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_3717
	mov	qword ptr [rbp - 8], -2
	jmp	.label_3713
.label_3723:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 1
	jne	.label_3716
	movzx	eax, byte ptr [rbp - 0x29]
	cmp	eax, 0x30
	jl	.label_3716
	mov	eax, 0x39
	movzx	ecx, byte ptr [rbp - 0x29]
	cmp	eax, ecx
	jl	.label_3716
	cmp	qword ptr [rbp - 0x28], -2
	jne	.label_3721
.label_3716:
	mov	rax, -2
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_3715
.label_3717:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 0x18
	je	.label_3720
	movzx	eax, byte ptr [rbp - 0x29]
	cmp	eax, 0x2c
	jne	.label_3723
.label_3720:
	jmp	.label_3712
.label_3724:
	imul	rax, qword ptr [rbp - 0x28], 0xa
	movzx	ecx, byte ptr [rbp - 0x29]
	mov	edx, ecx
	add	rax, rdx
	sub	rax, 0x30
	mov	qword ptr [rbp - 0x48], rax
.label_3719:
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x40], rax
.label_3718:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x38], rax
.label_3715:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_3722
.label_3714:
	mov	eax, 0x8000
	mov	ecx, eax
	imul	rdx, qword ptr [rbp - 0x28], 0xa
	movzx	eax, byte ptr [rbp - 0x29]
	mov	esi, eax
	add	rdx, rsi
	sub	rdx, 0x30
	cmp	rcx, rdx
	jge	.label_3724
	mov	eax, 0x8000
	mov	ecx, eax
	mov	qword ptr [rbp - 0x48], rcx
	jmp	.label_3719
	.section	.text
	.align	16
	#Procedure 0x426f30

	.globl version_etc
	.type version_etc, @function
version_etc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x1a0
	test	al, al
	movaps	xmmword ptr [rbp - 0x100], xmm7
	movaps	xmmword ptr [rbp - 0x110], xmm6
	movaps	xmmword ptr [rbp - 0x120], xmm5
	movaps	xmmword ptr [rbp - 0x130], xmm4
	movaps	xmmword ptr [rbp - 0x140], xmm3
	movaps	xmmword ptr [rbp - 0x150], xmm2
	movaps	xmmword ptr [rbp - 0x160], xmm1
	movaps	xmmword ptr [rbp - 0x170], xmm0
	mov	qword ptr [rbp - 0x178], rdi
	mov	qword ptr [rbp - 0x180], r9
	mov	qword ptr [rbp - 0x188], r8
	mov	qword ptr [rbp - 0x190], rcx
	mov	qword ptr [rbp - 0x198], rdx
	mov	qword ptr [rbp - 0x1a0], rsi
	je	.label_3725
	movaps	xmm0, xmmword ptr [rbp - 0x170]
	movaps	xmmword ptr [rbp - 0xc0], xmm0
	movaps	xmm1, xmmword ptr [rbp - 0x160]
	movaps	xmmword ptr [rbp - 0xb0], xmm1
	movaps	xmm2, xmmword ptr [rbp - 0x150]
	movaps	xmmword ptr [rbp - 0xa0], xmm2
	movaps	xmm3, xmmword ptr [rbp - 0x140]
	movaps	xmmword ptr [rbp - 0x90], xmm3
	movaps	xmm4, xmmword ptr [rbp - 0x130]
	movaps	xmmword ptr [rbp - 0x80], xmm4
	movaps	xmm5, xmmword ptr [rbp - 0x120]
	movaps	xmmword ptr [rbp - 0x70], xmm5
	movaps	xmm6, xmmword ptr [rbp - 0x110]
	movaps	xmmword ptr [rbp - 0x60], xmm6
	movaps	xmm7, xmmword ptr [rbp - 0x100]
	movaps	xmmword ptr [rbp - 0x50], xmm7
.label_3725:
	mov	rax, qword ptr [rbp - 0x180]
	mov	qword ptr [rbp - 0xc8], rax
	mov	rcx, qword ptr [rbp - 0x188]
	mov	qword ptr [rbp - 0xd0], rcx
	mov	rdx, qword ptr [rbp - 0x190]
	mov	rsi, qword ptr [rbp - 0x198]
	mov	rdi, qword ptr [rbp - 0x1a0]
	mov	r8, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 8], r8
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	lea	rdx, [rbp - 0xf0]
	mov	qword ptr [rbp - 0x30], rdx
	lea	rdx, [rbp + 0x10]
	mov	qword ptr [rbp - 0x38], rdx
	mov	dword ptr [rbp - 0x3c], 0x30
	mov	dword ptr [rbp - 0x40], 0x20
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	r8, [rbp - 0x40]
	call	version_etc_va
	add	rsp, 0x1a0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x427094
	.globl sub_427094
	.type sub_427094, @function
sub_427094:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4270a0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], 0
	mov	dword ptr [rbp - 0x1c], 0
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	mov	dword ptr [rbp - 0x18], eax
	cmp	dword ptr [rbp - 0x18], 0
	jge	.label_3726
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 4], eax
	jmp	.label_3729
.label_3726:
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	je	.label_3727
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	xor	ecx, ecx
	mov	esi, ecx
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_3728
.label_3727:
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fflush
	cmp	eax, 0
	je	.label_3728
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], ecx
.label_3728:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_3730
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x20], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x20]
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 0x1c], 0xffffffff
.label_3730:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
.label_3729:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x42716e
	.globl sub_42716e
	.type sub_42716e, @function
sub_42716e:

	nop	
.label_3733:
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 8]
	add	rcx, 4
	mov	rdi, rcx
	call	memset
.label_3731:
	mov	rax, qword ptr [rbp - 0x10]
	mov	cl, byte ptr [rax + 0xc]
	mov	rax, qword ptr [rbp - 8]
	and	cl, 1
	mov	byte ptr [rax + 0xc], cl
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x10
	mov	rdx, qword ptr [rbp - 0x10]
	add	rdx, 0x10
	mov	rdi, rax
	mov	rsi, rdx
	call	mb_copy
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4271bb
	.globl sub_4271bb
	.type sub_4271bb, @function
sub_4271bb:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4271bd
	.globl mbuiter_multi_copy
	.type mbuiter_multi_copy, @function
mbuiter_multi_copy:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	al, byte ptr [rsi]
	mov	rsi, qword ptr [rbp - 8]
	mov	cl, al
	and	cl, 1
	mov	byte ptr [rsi], cl
	test	al, 1
	jne	.label_3732
	jmp	.label_3733
.label_3732:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 4]
	mov	qword ptr [rax + 4], rcx
	jmp	.label_3731
	.section	.text
	.align	16
	#Procedure 0x427200

	.globl matcher_error
	.type matcher_error, @function
matcher_error:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_3734
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 4], esi
	call	gettext
	mov	edi, 1
	mov	esi, dword ptr [rbp - 4]
	mov	rdx, rax
	mov	al, 0
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x427240

	.globl create_token_tree
	.type create_token_tree, @function
create_token_tree:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	movsxd	rcx, dword ptr [rcx + 0x80]
	cmp	rcx, 0xf
	sete	al
	and	al, 1
	movzx	r8d, al
	movsxd	rcx, r8d
	cmp	rcx, 0
	je	.label_3735
	mov	eax, 0x3c8
	mov	edi, eax
	call	malloc
	mov	qword ptr [rbp - 0x38], rax
	cmp	qword ptr [rbp - 0x38], 0
	jne	.label_3738
	mov	qword ptr [rbp - 8], 0
	jmp	.label_3737
.label_3738:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x70]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x70], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax + 0x80], 0
.label_3735:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x80]
	mov	edx, ecx
	add	edx, 1
	mov	dword ptr [rax + 0x80], edx
	movsxd	rax, ecx
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0x70]
	add	rsi, 8
	shl	rax, 6
	add	rsi, rax
	mov	qword ptr [rbp - 0x30], rsi
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	qword ptr [rsi + 8], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	qword ptr [rsi + 0x10], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdi, qword ptr [rsi]
	mov	qword ptr [rax + 0x28], rdi
	mov	rsi, qword ptr [rsi + 8]
	mov	qword ptr [rax + 0x30], rsi
	mov	rax, qword ptr [rbp - 0x30]
	mov	ecx, dword ptr [rax + 0x30]
	and	ecx, 0xfffbffff
	mov	dword ptr [rax + 0x30], ecx
	mov	rax, qword ptr [rbp - 0x30]
	mov	ecx, dword ptr [rax + 0x30]
	and	ecx, 0xfff7ffff
	mov	dword ptr [rax + 0x30], ecx
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rax + 0x18], 0
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rax + 0x20], 0
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rax + 0x38], -1
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_3739
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx], rax
.label_3739:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_3736
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_3736:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
.label_3737:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4273b9
	.globl sub_4273b9
	.type sub_4273b9, @function
sub_4273b9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4273c0

	.globl bitset_mask
	.type bitset_mask, @function
bitset_mask:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x14], 0
.label_3741:
	cmp	dword ptr [rbp - 0x14], 4
	jge	.label_3740
	movsxd	rax, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	movsxd	rcx, dword ptr [rbp - 0x14]
	mov	rdx, qword ptr [rbp - 8]
	and	rax, qword ptr [rdx + rcx*8]
	mov	qword ptr [rdx + rcx*8], rax
	mov	eax, dword ptr [rbp - 0x14]
	add	eax, 1
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_3741
.label_3740:
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x427409
	.globl sub_427409
	.type sub_427409, @function
sub_427409:

	nop	dword ptr [rax]
.label_3755:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x10]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	and	edx, 0xff
	and	edx, 8
	cmp	edx, 0
	je	.label_3745
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x28]
	mov	rax, qword ptr [rax + 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x28]
	cmp	qword ptr [rax + 8], 1
	jle	.label_3754
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x28]
	mov	rax, qword ptr [rax + 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x88], rax
	jmp	.label_3751
.label_3747:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rdi, rax
	call	free
	mov	dword ptr [rbp - 4], 0
.label_3744:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x90
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4274ad
	.globl sub_4274ad
	.type sub_4274ad, @function
sub_4274ad:

	nop	word ptr cs:[rax + rax]
.label_3754:
	mov	rax, -1
	mov	qword ptr [rbp - 0x88], rax
	jmp	.label_3751
.label_3751:
	mov	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x70], rax
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rbp - 0x68]
	call	re_node_set_contains
	cmp	rax, 0
	jne	.label_3749
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x68]
	call	re_node_set_contains
	cmp	rax, 0
	jne	.label_3756
.label_3749:
	cmp	qword ptr [rbp - 0x70], 0
	jle	.label_3743
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rbp - 0x70]
	call	re_node_set_contains
	cmp	rax, 0
	jne	.label_3743
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x70]
	call	re_node_set_contains
	cmp	rax, 0
	je	.label_3743
.label_3756:
	lea	rdi, [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x38]
	imul	rcx, qword ptr [rbp - 0x60], 0x18
	add	rax, rcx
	mov	rdx, rax
	call	re_node_set_add_intersect
	mov	dword ptr [rbp - 0x34], eax
	cmp	dword ptr [rbp - 0x34], 0
	setne	r8b
	and	r8b, 1
	movzx	eax, r8b
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_3748
	mov	rax, qword ptr [rbp - 0x48]
	mov	rdi, rax
	call	free
	mov	ecx, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_3744
.label_3750:
	mov	qword ptr [rbp - 0x30], 0
.label_3742:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_3747
	lea	rdi, [rbp - 0x58]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x78], rax
	mov	rsi, qword ptr [rbp - 0x78]
	call	re_node_set_contains
	cmp	rax, 0
	jne	.label_3752
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x78]
	call	re_node_set_contains
	sub	rax, 1
	mov	qword ptr [rbp - 0x80], rax
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x80]
	call	re_node_set_remove_at
.label_3752:
	jmp	.label_3757
.label_3757:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_3742
	.section	.text
	.align	16
	#Procedure 0x427614

	.globl sub_epsilon_src_nodes
	.type sub_epsilon_src_nodes, @function
sub_epsilon_src_nodes:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x90
	xor	eax, eax
	mov	r8d, 0x18
	mov	r9d, r8d
	lea	r10, [rbp - 0x58]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x38]
	imul	rdx, qword ptr [rbp - 0x18], 0x18
	add	rcx, rdx
	mov	qword ptr [rbp - 0x40], rcx
	mov	rdi, r10
	mov	esi, eax
	mov	rdx, r9
	call	memset
	mov	qword ptr [rbp - 0x30], 0
.label_3753:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_3750
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x18]
	jne	.label_3755
	jmp	.label_3746
.label_3748:
	jmp	.label_3743
.label_3743:
	jmp	.label_3745
.label_3745:
	jmp	.label_3746
.label_3746:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_3753
.label_3758:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x10]
	mov	rdi, rax
	call	free
.label_3759:
	xor	eax, eax
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4276d8
	.globl sub_4276d8
	.type sub_4276d8, @function
sub_4276d8:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4276e7

	.globl free_fail_stack_return
	.type free_fail_stack_return, @function
free_fail_stack_return:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	je	.label_3759
	mov	qword ptr [rbp - 0x10], 0
.label_3760:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx]
	jge	.label_3758
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	imul	rax, rax, 0x30
	add	rax, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	imul	rax, rax, 0x30
	add	rax, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_3760
	.section	.text
	.align	16
	#Procedure 0x427760

	.globl clean_state_log_if_needed
	.type clean_state_log_if_needed, @function
clean_state_log_if_needed:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0xc0]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	rsi, qword ptr [rdi + 0x40]
	jl	.label_3761
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x58]
	jl	.label_3765
.label_3761:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x30]
	jl	.label_3764
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x58]
	jge	.label_3764
.label_3765:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	ecx, eax
	mov	esi, ecx
	call	extend_buffers
	mov	dword ptr [rbp - 0x24], eax
	cmp	dword ptr [rbp - 0x24], 0
	setne	dl
	and	dl, 1
	movzx	eax, dl
	movsxd	rdi, eax
	cmp	rdi, 0
	je	.label_3762
	mov	eax, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_3766
.label_3762:
	jmp	.label_3764
.label_3764:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x18]
	jge	.label_3763
	xor	esi, esi
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0xb8]
	mov	rcx, qword ptr [rbp - 0x20]
	shl	rcx, 3
	add	rax, rcx
	add	rax, 8
	mov	rcx, qword ptr [rbp - 0x18]
	sub	rcx, qword ptr [rbp - 0x20]
	shl	rcx, 3
	mov	rdi, rax
	mov	rdx, rcx
	call	memset
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0xc0], rax
.label_3763:
	mov	dword ptr [rbp - 4], 0
.label_3766:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x427871
	.globl sub_427871
	.type sub_427871, @function
sub_427871:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x427880
	.globl quotearg_mem
	.type quotearg_mem, @function
quotearg_mem:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	edi, eax
	call	quotearg_n_mem
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4278a7
	.globl sub_4278a7
	.type sub_4278a7, @function
sub_4278a7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x427915
	.globl sub_427915
	.type sub_427915, @function
sub_427915:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x427922
	.globl sub_427922
	.type sub_427922, @function
sub_427922:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x427946
	.globl sub_427946
	.type sub_427946, @function
sub_427946:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x427959
	.globl sub_427959
	.type sub_427959, @function
sub_427959:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x427960

	.globl fstat
	.type fstat, @function
fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat

