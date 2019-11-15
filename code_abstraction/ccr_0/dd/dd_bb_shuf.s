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
.label_10:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_9
.label_9:
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
	#Procedure 0x401e54
	.globl sub_401e54
	.type sub_401e54, @function
sub_401e54:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401e62
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
	je	.label_10
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_9
	.section	.text
	.align	16
	#Procedure 0x401e90

	.globl set_fd_flags
	.type set_fd_flags, @function
set_fd_flags:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xc0
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	qword ptr [rbp - 0x10], rdx
	mov	esi, dword ptr [rbp - 8]
	and	esi, 0xfffdfeff
	mov	dword ptr [rbp - 8], esi
	cmp	dword ptr [rbp - 8], 0
	je	.label_13
	mov	esi, 3
	mov	edi, dword ptr [rbp - 4]
	mov	al, 0
	call	rpl_fcntl
	mov	dword ptr [rbp - 0x14], eax
	mov	eax, dword ptr [rbp - 0x14]
	or	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 0x18], eax
	mov	byte ptr [rbp - 0x19], 1
	cmp	dword ptr [rbp - 0x14], 0
	jge	.label_20
	mov	byte ptr [rbp - 0x19], 0
	jmp	.label_15
.label_19:
	mov	eax, dword ptr [rbp - 0x18]
	and	eax, 0
	cmp	eax, 0
	je	.label_21
	mov	eax, 1
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0xa0]
	jae	.label_21
	call	__errno_location
	mov	dword ptr [rax], 0x1f
	mov	byte ptr [rbp - 0x19], 0
.label_21:
	jmp	.label_14
.label_14:
	jmp	.label_16
.label_16:
	mov	eax, dword ptr [rbp - 0x18]
	and	eax, 0xfffeffff
	mov	dword ptr [rbp - 0x18], eax
.label_22:
	test	byte ptr [rbp - 0x19], 1
	je	.label_17
	mov	eax, dword ptr [rbp - 0x14]
	cmp	eax, dword ptr [rbp - 0x18]
	je	.label_17
	mov	esi, 4
	mov	edi, dword ptr [rbp - 4]
	mov	edx, dword ptr [rbp - 0x18]
	mov	al, 0
	call	rpl_fcntl
	cmp	eax, -1
	jne	.label_17
	mov	byte ptr [rbp - 0x19], 0
.label_17:
	jmp	.label_18
.label_18:
	jmp	.label_15
.label_15:
	test	byte ptr [rbp - 0x19], 1
	jne	.label_23
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_11
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xb4], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0xc0], rax
	call	quotearg_style
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0xb4]
	mov	rdx, qword ptr [rbp - 0xc0]
	mov	rcx, rax
	mov	al, 0
	call	nl_error
.label_23:
	jmp	.label_13
.label_13:
	add	rsp, 0xc0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401fd8
	.globl sub_401fd8
	.type sub_401fd8, @function
sub_401fd8:

	nop	word ptr cs:[rax + rax]
.label_12:
	mov	eax, dword ptr [rbp - 0x18]
	and	eax, 0x10000
	cmp	eax, 0
	je	.label_19
	mov	eax, dword ptr [rbp - 0x98]
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_19
	call	__errno_location
	mov	dword ptr [rax], 0x14
	mov	byte ptr [rbp - 0x19], 0
	jmp	.label_14
.label_20:
	mov	eax, dword ptr [rbp - 0x14]
	cmp	eax, dword ptr [rbp - 0x18]
	je	.label_18
	mov	eax, dword ptr [rbp - 0x18]
	and	eax, 0x10000
	cmp	eax, 0
	je	.label_22
	lea	rsi, [rbp - 0xb0]
	mov	edi, dword ptr [rbp - 4]
	call	fstat
	cmp	eax, 0
	je	.label_12
	mov	byte ptr [rbp - 0x19], 0
	jmp	.label_16
.label_71:
	fld1	
	fstp	xword ptr [rbp - 0x100]
	mov	dword ptr [rbp - 0x40], 0
.label_43:
	mov	eax, dword ptr [rbp - 0x30]
	mov	ecx, eax
	mov	qword ptr [rbp - 0x138], rcx
	fild	qword ptr [rbp - 0x138]
	fld	xword ptr [rbp - 0x100]
	fmulp	st(1)
	fstp	xword ptr [rbp - 0x100]
	mov	eax, dword ptr [rbp - 0x40]
	add	eax, 1
	mov	dword ptr [rbp - 0x40], eax
	fld	xword ptr [rbp - 0x100]
	mov	eax, dword ptr [rbp - 0x30]
	mov	ecx, eax
	mov	qword ptr [rbp - 0x140], rcx
	fild	qword ptr [rbp - 0x140]
	fmulp	st(1)
	fld	xword ptr [rbp - 0xe0]
	xor	eax, eax
	mov	dl, al
	fucomip	st(1)
	fstp	st(0)
	mov	byte ptr [rbp - 0x165], dl
	jb	.label_51
	jmp	.label_72
.label_72:
	mov	eax, dword ptr [rbp - 0x40]
	cmp	eax, dword ptr [rbp - 0x44]
	setl	cl
	mov	byte ptr [rbp - 0x165], cl
.label_51:
	mov	al, byte ptr [rbp - 0x165]
	test	al, 1
	jne	.label_43
	fld	xword ptr [rbp - 0x100]
	fld	xword ptr [rbp - 0xe0]
	fdivrp	st(1)
	fld	st(0)
	fstp	xword ptr [rbp - 0xe0]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rbp - 0x2c]
	mov	rcx, rsp
	fstp	xword ptr [rcx]
	mov	qword ptr [rbp - 0x170], rdi
	mov	edi, eax
	call	adjust_value
	movabs	rcx, OFFSET FLAT:label_32
	mov	rdx, rsp
	fstp	xword ptr [rdx]
	mov	eax, OFFSET FLAT:label_32
	mov	esi, eax
	xor	eax, eax
	mov	r8b, al
	mov	rdi, qword ptr [rbp - 0x170]
	mov	al, r8b
	mov	qword ptr [rbp - 0x178], rcx
	call	sprintf
	mov	rdi, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x17c], eax
	call	strlen
	mov	qword ptr [rbp - 0xe8], rax
	mov	rax, qword ptr [rbp - 0x78]
	add	rax, 1
	mov	qword ptr [rbp - 0xf0], rax
	mov	rax, qword ptr [rbp - 0xf0]
	add	rax, 1
	mov	r9d, dword ptr [rbp - 0x14]
	and	r9d, 0x20
	cmp	r9d, 0
	setne	r8b
	xor	r8b, 0xff
	and	r8b, 1
	movzx	r9d, r8b
	movsxd	rcx, r9d
	add	rax, rcx
	cmp	rax, qword ptr [rbp - 0xe8]
	jb	.label_48
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 8
	cmp	eax, 0
	je	.label_65
	mov	rax, qword ptr [rbp - 0xe8]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x30
	jne	.label_65
.label_48:
	movabs	rax, OFFSET FLAT:label_36
	mov	ecx, 0xa
	mov	edx, ecx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rbp - 0x2c]
	fld	xword ptr [rbp - 0xe0]
	fld	dword ptr [dword ptr [rip + label_75]]
	fmul	st(1), st(0)
	mov	rsi, rsp
	fxch	st(1)
	fstp	xword ptr [rsi]
	mov	qword ptr [rbp - 0x188], rdi
	mov	edi, ecx
	mov	qword ptr [rbp - 0x190], rax
	mov	qword ptr [rbp - 0x198], rdx
	fstp	xword ptr [rbp - 0x1a4]
	call	adjust_value
	fld	st(0)
	fld	xword ptr [rbp - 0x1a4]
	fdivp	st(2)
	mov	rax, rsp
	fxch	st(1)
	fstp	xword ptr [rax]
	mov	ecx, OFFSET FLAT:label_36
	mov	esi, ecx
	xor	ecx, ecx
	mov	r8b, cl
	mov	rdi, qword ptr [rbp - 0x188]
	mov	al, r8b
	fstp	xword ptr [rbp - 0x1b0]
	call	sprintf
	mov	rdi, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x1b4], eax
	call	strlen
	mov	qword ptr [rbp - 0xe8], rax
	mov	qword ptr [rbp - 0xf0], 0
.label_65:
	jmp	.label_53
.label_53:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rsi, rcx
	sub	rsi, qword ptr [rbp - 0xe8]
	add	rdx, rsi
	mov	qword ptr [rbp - 0x50], rdx
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0xe8]
	mov	qword ptr [rbp - 0x1c0], rcx
	call	memmove
	mov	rcx, qword ptr [rbp - 0x50]
	add	rcx, qword ptr [rbp - 0xe8]
	mov	rdx, qword ptr [rbp - 0x1c0]
	sub	rdx, qword ptr [rbp - 0xf0]
	add	rcx, rdx
	mov	qword ptr [rbp - 0x60], rcx
	mov	qword ptr [rbp - 0x1c8], rax
	jmp	.label_67
.label_37:
	cmp	dword ptr [rbp - 0x2c], 0
	jne	.label_54
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0x64]
	jge	.label_54
.label_40:
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	mov	dword ptr [rbp - 0x64], 0
	cmp	dword ptr [rbp - 0x3c], 0xa
	jne	.label_78
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	mov	dword ptr [rbp - 0x3c], 0
.label_78:
	jmp	.label_54
.label_54:
	cmp	qword ptr [rbp - 0x38], 0xa
	jae	.label_41
	cmp	dword ptr [rbp - 0x3c], 0
	jne	.label_39
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 8
	cmp	eax, 0
	jne	.label_41
.label_39:
	xor	eax, eax
	mov	ecx, eax
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 0x30
	mov	dl, al
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rdi, rsi
	add	rdi, -1
	mov	qword ptr [rbp - 0x50], rdi
	mov	byte ptr [rsi - 1], dl
	mov	rsi, qword ptr [rbp - 0x78]
	mov	rdi, qword ptr [rbp - 0x50]
	sub	rcx, rsi
	add	rdi, rcx
	mov	qword ptr [rbp - 0x50], rdi
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x78]
	call	memcpy
	mov	dword ptr [rbp - 0x64], 0
	mov	dword ptr [rbp - 0x3c], 0
.label_41:
	jmp	.label_33
.label_33:
	jmp	.label_61
.label_61:
	jmp	.label_62
.label_62:
	cmp	dword ptr [rbp - 0x2c], 1
	jne	.label_79
	mov	eax, 5
	xor	ecx, ecx
	mov	edx, ecx
	mov	ecx, dword ptr [rbp - 0x3c]
	movsxd	rsi, dword ptr [rbp - 0x64]
	mov	rdi, qword ptr [rbp - 0x38]
	and	rdi, 1
	add	rsi, rdi
	cmp	rdx, rsi
	setb	r8b
	and	r8b, 1
	movzx	r9d, r8b
	add	ecx, r9d
	cmp	eax, ecx
	jl	.label_66
	jmp	.label_52
.label_57:
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 0x10
	cmp	eax, 0
	je	.label_62
	mov	dword ptr [rbp - 0x40], 0
	mov	eax, dword ptr [rbp - 0x30]
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x38]
	ja	.label_61
	jmp	.label_29
.label_29:
	mov	rax, qword ptr [rbp - 0x38]
	mov	ecx, dword ptr [rbp - 0x30]
	mov	edx, ecx
	xor	ecx, ecx
	mov	qword ptr [rbp - 0x1d0], rdx
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x1d0]
	div	rsi
	imul	rdx, rdx, 0xa
	movsxd	rdi, dword ptr [rbp - 0x3c]
	add	rdx, rdi
	mov	ecx, edx
	mov	dword ptr [rbp - 0x104], ecx
	mov	ecx, dword ptr [rbp - 0x104]
	mov	eax, ecx
	xor	edx, edx
	div	dword ptr [rbp - 0x30]
	shl	edx, 1
	mov	ecx, dword ptr [rbp - 0x64]
	sar	ecx, 1
	add	edx, ecx
	mov	dword ptr [rbp - 0x108], edx
	mov	ecx, dword ptr [rbp - 0x30]
	mov	edi, ecx
	mov	r8, qword ptr [rbp - 0x38]
	mov	rax, r8
	xor	ecx, ecx
	mov	edx, ecx
	div	rdi
	mov	qword ptr [rbp - 0x38], rax
	mov	eax, dword ptr [rbp - 0x104]
	xor	ecx, ecx
	mov	edx, ecx
	div	dword ptr [rbp - 0x30]
	mov	dword ptr [rbp - 0x3c], eax
	mov	eax, dword ptr [rbp - 0x108]
	cmp	eax, dword ptr [rbp - 0x30]
	jae	.label_30
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, dword ptr [rbp - 0x64]
	cmp	eax, 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	mov	dword ptr [rbp - 0x1d4], eax
	jmp	.label_59
.label_60:
	jmp	.label_50
.label_50:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x130], rax
	test	rax, rax
	setns	cl
	movzx	edx, cl
	mov	eax, edx
	fld	dword ptr [dword ptr [+ (rax * 4) + label_70]]
	fild	qword ptr [rbp - 0x130]
	faddp	st(1)
	fld	st(0)
	fstp	xword ptr [rbp - 0xd0]
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x120], rax
	test	rax, rax
	setns	cl
	movzx	edx, cl
	mov	eax, edx
	fld	dword ptr [dword ptr [+ (rax * 4) + label_70]]
	fild	qword ptr [rbp - 0x120]
	faddp	st(1)
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x128], rax
	test	rax, rax
	setns	cl
	movzx	edx, cl
	mov	eax, edx
	fld	dword ptr [dword ptr [+ (rax * 4) + label_70]]
	fild	qword ptr [rbp - 0x128]
	faddp	st(1)
	fdivrp	st(2)
	fmulp	st(1)
	fstp	xword ptr [rbp - 0xe0]
	mov	edx, dword ptr [rbp - 0x14]
	and	edx, 0x10
	cmp	edx, 0
	jne	.label_71
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rbp - 0x2c]
	fld	xword ptr [rbp - 0xe0]
	mov	rcx, rsp
	fstp	xword ptr [rcx]
	mov	qword ptr [rbp - 0x158], rdi
	mov	edi, eax
	call	adjust_value
	movabs	rcx, OFFSET FLAT:label_36
	mov	rdx, rsp
	fstp	xword ptr [rdx]
	mov	eax, OFFSET FLAT:label_36
	mov	esi, eax
	xor	eax, eax
	mov	r8b, al
	mov	rdi, qword ptr [rbp - 0x158]
	mov	al, r8b
	mov	qword ptr [rbp - 0x160], rcx
	call	sprintf
	mov	rdi, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x164], eax
	call	strlen
	mov	qword ptr [rbp - 0xe8], rax
	mov	qword ptr [rbp - 0xf0], 0
	jmp	.label_53
.label_79:
	cmp	dword ptr [rbp - 0x2c], 0
	jne	.label_52
	xor	eax, eax
	mov	ecx, dword ptr [rbp - 0x3c]
	add	ecx, dword ptr [rbp - 0x64]
	cmp	eax, ecx
	jge	.label_52
.label_66:
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	mov	ecx, dword ptr [rbp - 0x14]
	and	ecx, 0x10
	cmp	ecx, 0
	je	.label_27
	mov	rax, qword ptr [rbp - 0x38]
	mov	ecx, dword ptr [rbp - 0x30]
	mov	edx, ecx
	cmp	rax, rdx
	jne	.label_27
	mov	eax, dword ptr [rbp - 0x40]
	cmp	eax, dword ptr [rbp - 0x44]
	jge	.label_27
	mov	eax, dword ptr [rbp - 0x40]
	add	eax, 1
	mov	dword ptr [rbp - 0x40], eax
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 8
	cmp	eax, 0
	jne	.label_31
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rsi, rdx
	add	rsi, -1
	mov	qword ptr [rbp - 0x50], rsi
	mov	byte ptr [rdx - 1], 0x30
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rsi, qword ptr [rbp - 0x50]
	sub	rcx, rdx
	add	rsi, rcx
	mov	qword ptr [rbp - 0x50], rsi
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x78]
	call	memcpy
.label_31:
	mov	qword ptr [rbp - 0x38], 1
.label_27:
	jmp	.label_52
.label_52:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x60], rax
.label_56:
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x38]
	xor	edx, edx
	div	rcx
	mov	esi, edx
	mov	dword ptr [rbp - 0x10c], esi
	mov	esi, dword ptr [rbp - 0x10c]
	add	esi, 0x30
	mov	dil, sil
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rdx, rcx
	add	rdx, -1
	mov	qword ptr [rbp - 0x50], rdx
	mov	byte ptr [rcx - 1], dil
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x38]
	xor	edx, edx
	div	rcx
	mov	qword ptr [rbp - 0x38], rax
	cmp	rax, 0
	jne	.label_56
	jmp	.label_67
.label_67:
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 4
	cmp	eax, 0
	je	.label_77
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x50]
	sub	rax, rcx
	mov	rdx, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rbp - 0x88]
	mov	rsi, rax
	call	group_number
	mov	qword ptr [rbp - 0x50], rax
.label_77:
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 0x80
	cmp	eax, 0
	je	.label_28
	cmp	dword ptr [rbp - 0x40], 0
	jge	.label_34
	mov	dword ptr [rbp - 0x40], 0
	mov	qword ptr [rbp - 0x118], 1
.label_47:
	mov	rax, qword ptr [rbp - 0x118]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_42
	mov	eax, dword ptr [rbp - 0x40]
	add	eax, 1
	mov	dword ptr [rbp - 0x40], eax
	cmp	eax, dword ptr [rbp - 0x44]
	jne	.label_76
	jmp	.label_42
.label_49:
	jmp	.label_46
.label_46:
	jmp	.label_50
.label_69:
	mov	rax, qword ptr [rbp - 0xa8]
	cmp	rax, qword ptr [rbp - 0xb8]
	setb	cl
	and	cl, 1
	movzx	edx, cl
	add	edx, 2
	mov	dword ptr [rbp - 0x14c], edx
.label_44:
	mov	eax, dword ptr [rbp - 0x14c]
	mov	dword ptr [rbp - 0x64], eax
	jmp	.label_57
.label_35:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_60
	mov	rax, qword ptr [rbp - 0x28]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x20]
	cmp	rdx, 0
	jne	.label_60
	mov	rax, qword ptr [rbp - 0x28]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0xa8], rax
	mov	rax, qword ptr [rbp - 8]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0xa8]
	imul	rdx, rdx, 0xa
	mov	qword ptr [rbp - 0xb0], rdx
	mov	rdx, qword ptr [rbp - 0xb0]
	mov	rax, rdx
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0xa8]
	shl	rdx, 1
	mov	qword ptr [rbp - 0xb8], rdx
	mov	rdx, qword ptr [rbp - 8]
	mov	rax, rdx
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0xa8]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0xb0]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0xa8]
	mov	ecx, eax
	mov	dword ptr [rbp - 0x3c], ecx
	mov	rax, qword ptr [rbp - 0xb8]
	cmp	rax, qword ptr [rbp - 0xa8]
	jae	.label_69
	xor	eax, eax
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0xb8]
	setb	dl
	and	dl, 1
	movzx	eax, dl
	mov	dword ptr [rbp - 0x14c], eax
	jmp	.label_44
.label_68:
	movsxd	rax, dword ptr [rbp - 0x40]
	movsx	ecx,  byte ptr [byte ptr [+ (rax * 1) + power_letter]]
	mov	dword ptr [rbp - 0x1dc], ecx
.label_73:
	mov	eax, dword ptr [rbp - 0x1dc]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rsi, rdx
	add	rsi, 1
	mov	qword ptr [rbp - 0x58], rsi
	mov	byte ptr [rdx], cl
.label_64:
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 0x100
	cmp	eax, 0
	je	.label_58
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 0x20
	cmp	eax, 0
	je	.label_38
	cmp	dword ptr [rbp - 0x40], 0
	je	.label_38
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x58], rcx
	mov	byte ptr [rax], 0x69
.label_38:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x58], rcx
	mov	byte ptr [rax], 0x42
.label_58:
	jmp	.label_28
.label_28:
	mov	rax, qword ptr [rbp - 0x58]
	mov	byte ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x50]
	add	rsp, 0x1f0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4028fe
	.globl sub_4028fe
	.type sub_4028fe, @function
sub_4028fe:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402907

	.globl human_readable
	.type human_readable, @function
human_readable:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x1f0
	movabs	rax, OFFSET FLAT:label_24
	movabs	r9, OFFSET FLAT:label_25
	mov	r10d, 0x3e8
	mov	r11d, 0x400
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x14], edx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	edx, dword ptr [rbp - 0x14]
	and	edx, 3
	mov	dword ptr [rbp - 0x2c], edx
	mov	edx, dword ptr [rbp - 0x14]
	and	edx, 0x20
	cmp	edx, 0
	cmovne	r10d, r11d
	mov	dword ptr [rbp - 0x30], r10d
	mov	dword ptr [rbp - 0x40], 0xffffffff
	mov	dword ptr [rbp - 0x44], 8
	mov	qword ptr [rbp - 0x70], r9
	mov	qword ptr [rbp - 0x78], 1
	mov	qword ptr [rbp - 0x80], rax
	mov	qword ptr [rbp - 0x88], rax
	call	localeconv
	xor	edx, edx
	mov	ecx, edx
	mov	qword ptr [rbp - 0x90], rax
	mov	rax, qword ptr [rbp - 0x90]
	mov	rdi, qword ptr [rax]
	mov	qword ptr [rbp - 0x148], rcx
	call	strlen
	mov	qword ptr [rbp - 0x98], rax
	mov	rax, qword ptr [rbp - 0x148]
	cmp	rax, qword ptr [rbp - 0x98]
	jae	.label_63
	cmp	qword ptr [rbp - 0x98], 0x10
	ja	.label_63
	mov	rax, qword ptr [rbp - 0x90]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x70], rax
	mov	rax, qword ptr [rbp - 0x98]
	mov	qword ptr [rbp - 0x78], rax
.label_63:
	mov	rax, qword ptr [rbp - 0x90]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x80], rax
	mov	rax, qword ptr [rbp - 0x90]
	mov	rdi, qword ptr [rax + 8]
	call	strlen
	cmp	rax, 0x10
	ja	.label_26
	mov	rax, qword ptr [rbp - 0x90]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x88], rax
.label_26:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x28b
	add	rax, -1
	add	rax, -3
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_35
	mov	rax, qword ptr [rbp - 0x20]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x28]
	cmp	rdx, 0
	jne	.label_46
	mov	rax, qword ptr [rbp - 0x20]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0xa0], rax
	mov	rax, qword ptr [rbp - 8]
	imul	rax, qword ptr [rbp - 0xa0]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x38]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0xa0]
	cmp	rax, qword ptr [rbp - 8]
	jne	.label_49
	mov	dword ptr [rbp - 0x3c], 0
	mov	dword ptr [rbp - 0x64], 0
	jmp	.label_57
.label_30:
	mov	eax, dword ptr [rbp - 0x30]
	mov	ecx, dword ptr [rbp - 0x108]
	add	ecx, dword ptr [rbp - 0x64]
	cmp	eax, ecx
	setb	dl
	and	dl, 1
	movzx	eax, dl
	add	eax, 2
	mov	dword ptr [rbp - 0x1d4], eax
.label_59:
	mov	eax, dword ptr [rbp - 0x1d4]
	mov	dword ptr [rbp - 0x64], eax
	mov	eax, dword ptr [rbp - 0x40]
	add	eax, 1
	mov	dword ptr [rbp - 0x40], eax
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 0x30]
	mov	edx, eax
	cmp	rdx, qword ptr [rbp - 0x38]
	mov	byte ptr [rbp - 0x1d5], cl
	ja	.label_74
	mov	eax, dword ptr [rbp - 0x40]
	cmp	eax, dword ptr [rbp - 0x44]
	setl	cl
	mov	byte ptr [rbp - 0x1d5], cl
.label_74:
	mov	al, byte ptr [rbp - 0x1d5]
	test	al, 1
	jne	.label_29
	cmp	qword ptr [rbp - 0x38], 0xa
	jae	.label_33
	cmp	dword ptr [rbp - 0x2c], 1
	jne	.label_37
	mov	eax, 2
	mov	ecx, dword ptr [rbp - 0x64]
	mov	edx, dword ptr [rbp - 0x3c]
	and	edx, 1
	add	ecx, edx
	cmp	eax, ecx
	jl	.label_40
	jmp	.label_54
.label_76:
	jmp	.label_45
.label_45:
	mov	eax, dword ptr [rbp - 0x30]
	mov	ecx, eax
	imul	rcx, qword ptr [rbp - 0x118]
	mov	qword ptr [rbp - 0x118], rcx
	jmp	.label_47
.label_42:
	jmp	.label_34
.label_34:
	mov	eax, dword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rbp - 0x14]
	and	ecx, 0x100
	or	eax, ecx
	cmp	eax, 0
	je	.label_55
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 0x40
	cmp	eax, 0
	je	.label_55
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x58], rcx
	mov	byte ptr [rax], 0x20
.label_55:
	cmp	dword ptr [rbp - 0x40], 0
	je	.label_64
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 0x20
	cmp	eax, 0
	jne	.label_68
	cmp	dword ptr [rbp - 0x40], 1
	jne	.label_68
	mov	eax, 0x6b
	mov	dword ptr [rbp - 0x1dc], eax
	jmp	.label_73
.label_84:
	mov	qword ptr [rbp - 8], 0
.label_82:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402bf2
	.globl sub_402bf2
	.type sub_402bf2, @function
sub_402bf2:

	nop	dword ptr [rax]
.label_80:
	jmp	.label_81
.label_81:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_83
	.section	.text
	.align	16
	#Procedure 0x402c0f
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
.label_83:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_84
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	imul	rcx, qword ptr [rbp - 0x30]
	add	rax, rcx
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsi, rax
	call	memcmp
	cmp	eax, 0
	jne	.label_80
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_82
	.section	.text
	.align	16
	#Procedure 0x402c80

	.globl ifd_reopen
	.type ifd_reopen, @function
ifd_reopen:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x14], edx
	mov	dword ptr [rbp - 0x18], ecx
.label_86:
	call	process_signals
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rbp - 0x14]
	mov	ecx, dword ptr [rbp - 0x18]
	call	fd_reopen
	mov	dword ptr [rbp - 0x1c], eax
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [rbp - 0x1c], 0
	mov	byte ptr [rbp - 0x1d], cl
	jge	.label_85
	call	__errno_location
	cmp	dword ptr [rax], 4
	sete	cl
	mov	byte ptr [rbp - 0x1d], cl
.label_85:
	mov	al, byte ptr [rbp - 0x1d]
	test	al, 1
	jne	.label_86
	mov	eax, dword ptr [rbp - 0x1c]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402ce2
	.globl sub_402ce2
	.type sub_402ce2, @function
sub_402ce2:

	nop	word ptr cs:[rax + rax]
.label_89:
	jmp	.label_87
.label_87:
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402cf7
	.globl sub_402cf7
	.type sub_402cf7, @function
sub_402cf7:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402d04

	.globl maybe_close_stdout
	.type maybe_close_stdout, @function
maybe_close_stdout:
	push	rbp
	mov	rbp, rsp
	test	byte ptr [byte ptr [close_stdout_required]],  1
	je	.label_88
	call	close_stdout
	jmp	.label_87
.label_88:
	mov	rdi,  qword ptr [word ptr [stderr]]
	call	close_stream
	cmp	eax, 0
	je	.label_89
	mov	edi, 1
	call	_exit
	.section	.text
	.align	16
	#Procedure 0x402d40

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
	#Procedure 0x402d73
	.globl sub_402d73
	.type sub_402d73, @function
sub_402d73:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402d80

	.globl adjust_value
	.type adjust_value, @function
adjust_value:
	push	rbp
	mov	rbp, rsp
	fld	xword ptr [rbp + 0x10]
	mov	dword ptr [rbp - 4], edi
	fstp	xword ptr [rbp - 0x20]
	cmp	dword ptr [rbp - 4], 1
	je	.label_90
	fld	xword ptr [rbp - 0x20]
	fld	xword ptr [word ptr [rip + label_91]]
	fucomip	st(1)
	fstp	st(0)
	jbe	.label_90
	jmp	.label_92
.label_92:
	xor	eax, eax
	mov	cl, al
	fld	xword ptr [rbp - 0x20]
	fld	dword ptr [dword ptr [rip + label_93]]
	fld	st(1)
	fsub	st(1)
	fnstcw	word ptr [rbp - 0x4a]
	mov	dx, word ptr [rbp - 0x4a]
	mov	word ptr [rbp - 0x4a], 0xc7f
	fldcw	word ptr [rbp - 0x4a]
	mov	word ptr [rbp - 0x4a], dx
	fistp	qword ptr [rbp - 0x30]
	fldcw	word ptr [rbp - 0x4a]
	fnstcw	word ptr [rbp - 0x4c]
	mov	dx, word ptr [rbp - 0x4c]
	mov	word ptr [rbp - 0x4c], 0xc7f
	fldcw	word ptr [rbp - 0x4c]
	mov	word ptr [rbp - 0x4c], dx
	fld	st(1)
	fistp	qword ptr [rbp - 0x38]
	fldcw	word ptr [rbp - 0x4c]
	mov	rsi, qword ptr [rbp - 0x30]
	movabs	rdi, 0x8000000000000000
	xor	rsi, rdi
	mov	rdi, qword ptr [rbp - 0x38]
	fucomip	st(1)
	fstp	st(0)
	cmova	rsi, rdi
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsi, qword ptr [rbp - 0x28]
	cmp	dword ptr [rbp - 4], 0
	mov	qword ptr [rbp - 0x58], rsi
	mov	byte ptr [rbp - 0x59], cl
	jne	.label_94
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x40], rax
	test	rax, rax
	setns	cl
	movzx	edx, cl
	mov	eax, edx
	fld	dword ptr [dword ptr [+ (rax * 4) + label_70]]
	fild	qword ptr [rbp - 0x40]
	faddp	st(1)
	fld	xword ptr [rbp - 0x20]
	fxch	st(1)
	fucomip	st(1)
	fstp	st(0)
	setp	cl
	setne	sil
	or	sil, cl
	mov	byte ptr [rbp - 0x59], sil
.label_94:
	mov	al, byte ptr [rbp - 0x59]
	and	al, 1
	movzx	ecx, al
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x58]
	add	rsi, rdx
	mov	qword ptr [rbp - 0x48], rsi
	setns	al
	movzx	ecx, al
	mov	edx, ecx
	fld	dword ptr [dword ptr [+ (rdx * 4) + label_70]]
	fild	qword ptr [rbp - 0x48]
	faddp	st(1)
	fstp	xword ptr [rbp - 0x20]
.label_90:
	fld	xword ptr [rbp - 0x20]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402e93
	.globl sub_402e93
	.type sub_402e93, @function
sub_402e93:

	nop	word ptr cs:[rax + rax]
.label_96:
	mov	rax, -1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_95
.label_95:
	mov	rax, qword ptr [rbp - 0x20]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402eb6
	.globl sub_402eb6
	.type sub_402eb6, @function
sub_402eb6:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402ebd

	.globl xsum
	.type xsum, @function
xsum:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	add	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	cmp	rsi, qword ptr [rbp - 8]
	jb	.label_96
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_95
.label_98:
	call	__errno_location
	cmp	dword ptr [rax], 0
	jne	.label_105
	movabs	rdi, OFFSET FLAT:label_107
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	nl_error
.label_105:
	jmp	.label_99
.label_99:
	jmp	.label_106
.label_106:
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_104
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x38], esi
	call	gettext
	xor	edi, edi
	mov	esi, 3
	mov	rdx,  qword ptr [word ptr [input_file]]
	mov	qword ptr [rbp - 0x40], rax
	call	quotearg_n_style_colon
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rcx, rax
	mov	al, 0
	call	nl_error
	mov	byte ptr [rbp - 1], 0
.label_101:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402f7d
	.globl sub_402f7d
	.type sub_402f7d, @function
sub_402f7d:

	nop	dword ptr [rax]
.label_108:
	xor	edi, edi
	xor	eax, eax
	mov	esi, eax
	mov	edx, 1
	call	lseek
	xor	edx, edx
	mov	esi, edx
	mov	qword ptr [rbp - 0x18], rax
	cmp	rsi, qword ptr [rbp - 0x18]
	jg	.label_99
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax,  qword ptr [word ptr [input_offset]]
	jne	.label_103
	mov	byte ptr [rbp - 1], 1
	jmp	.label_101
	.section	.text
	.align	16
	#Procedure 0x402fbd

	.globl advance_input_after_read_error
	.type advance_input_after_read_error, @function
advance_input_after_read_error:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	test	byte ptr [byte ptr [input_seekable]],  1
	jne	.label_111
	cmp	dword ptr [dword ptr [input_seek_errno]],  0x1d
	jne	.label_110
	mov	byte ptr [rbp - 1], 1
	jmp	.label_101
.label_110:
	mov	eax,  dword ptr [dword ptr [input_seek_errno]]
	mov	dword ptr [rbp - 0x24], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x24]
	mov	dword ptr [rax], ecx
	jmp	.label_106
.label_111:
	mov	rdi, qword ptr [rbp - 0x10]
	call	advance_input_offset
	movabs	rdi, 0x7fffffffffffffff
	cmp	rdi,  qword ptr [word ptr [input_offset]]
	setb	al
	and	al, 1
	movzx	ecx, al
	mov	al,  byte ptr [byte ptr [input_offset_overflow]]
	and	al, 1
	movzx	edx, al
	or	edx, ecx
	cmp	edx, 0
	setne	al
	and	al, 1
	mov	byte ptr [byte ptr [input_offset_overflow]],  al
	test	byte ptr [byte ptr [input_offset_overflow]],  1
	je	.label_108
	movabs	rdi, OFFSET FLAT:label_109
	call	gettext
	mov	edi, 4
	mov	rsi,  qword ptr [word ptr [input_file]]
	mov	qword ptr [rbp - 0x30], rax
	call	quotearg_style
	xor	edi, edi
	mov	dword ptr [rbp - 0x34], edi
	mov	esi, dword ptr [rbp - 0x34]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rcx, rax
	mov	al, 0
	call	nl_error
	mov	byte ptr [rbp - 1], 0
	jmp	.label_101
.label_103:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx,  qword ptr [word ptr [input_offset]]
	sub	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rdx
	cmp	rcx, qword ptr [rbp - 0x20]
	jg	.label_102
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x10]
	jbe	.label_97
.label_102:
	cmp	dword ptr [dword ptr [status_level]],  1
	je	.label_97
	movabs	rdi, OFFSET FLAT:label_100
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	nl_error
.label_97:
	xor	esi, esi
	mov	ecx, 1
	mov	rdi,  qword ptr [word ptr [input_file]]
	mov	rdx, qword ptr [rbp - 0x20]
	call	skip_via_lseek
	xor	ecx, ecx
	mov	edx, ecx
	cmp	rdx, rax
	jg	.label_98
	mov	byte ptr [rbp - 1], 1
	jmp	.label_101
.label_116:
	add	rsp, 0xa0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403129
	.globl sub_403129
	.type sub_403129, @function
sub_403129:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403132

	.globl process_signals
	.type process_signals, @function
process_signals:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xa0
.label_113:
	mov	al, 1
	mov	ecx,  dword ptr [dword ptr [interrupt_signal]]
	cmp	ecx, 0
	mov	byte ptr [rbp - 0x89], al
	jne	.label_118
	mov	eax,  dword ptr [dword ptr [info_signal_count]]
	cmp	eax, 0
	setne	cl
	mov	byte ptr [rbp - 0x89], cl
.label_118:
	mov	al, byte ptr [rbp - 0x89]
	test	al, 1
	jne	.label_112
	jmp	.label_116
.label_112:
	xor	edi, edi
	movabs	rsi, OFFSET FLAT:caught_signals
	lea	rdx, [rbp - 0x88]
	call	sigprocmask
	mov	edi,  dword ptr [dword ptr [interrupt_signal]]
	mov	dword ptr [rbp - 4], edi
	mov	edi,  dword ptr [dword ptr [info_signal_count]]
	mov	dword ptr [rbp - 8], edi
	cmp	dword ptr [rbp - 8], 0
	mov	dword ptr [rbp - 0x90], eax
	je	.label_115
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 1
	mov	dword ptr [dword ptr [info_signal_count]],  eax
.label_115:
	mov	edi, 2
	lea	rsi, [rbp - 0x88]
	xor	eax, eax
	mov	edx, eax
	call	sigprocmask
	cmp	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 0x94], eax
	je	.label_117
	call	cleanup
.label_117:
	call	print_stats
	cmp	dword ptr [rbp - 4], 0
	je	.label_114
	mov	edi, dword ptr [rbp - 4]
	call	raise
	mov	dword ptr [rbp - 0x98], eax
.label_114:
	jmp	.label_113
.label_120:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_119
.label_119:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x10]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40322e
	.globl sub_40322e
	.type sub_40322e, @function
sub_40322e:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403237
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
	je	.label_120
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_119
	.section	.text
	.align	16
	#Procedure 0x403260
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
	jl	.label_122
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_121
.label_122:
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
.label_121:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4032e8
	.globl sub_4032e8
	.type sub_4032e8, @function
sub_4032e8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4032f0

	.globl gettime
	.type gettime, @function
gettime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rsi, qword ptr [rbp - 8]
	mov	edi, eax
	call	clock_gettime
	mov	dword ptr [rbp - 0xc], eax
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403312
	.globl sub_403312
	.type sub_403312, @function
sub_403312:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403320
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
	#Procedure 0x403347
	.globl sub_403347
	.type sub_403347, @function
sub_403347:

	nop	word ptr [rax + rax]
.label_1350:
	movabs	rdi, OFFSET FLAT:label_123
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
	jmp	.label_124
.label_1342:
	movabs	rdi, OFFSET FLAT:label_133
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
	jmp	.label_124
	.section	.text
	.align	16
	#Procedure 0x403438

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
	je	.label_140
	movabs	rsi, OFFSET FLAT:label_139
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_128
.label_1341:
	jmp	.label_124
.label_1346:
	movabs	rdi, OFFSET FLAT:label_132
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
	jmp	.label_124
.label_1349:
	movabs	rdi, OFFSET FLAT:label_127
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
	jmp	.label_124
.label_1345:
	movabs	rdi, OFFSET FLAT:label_138
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
	jmp	.label_124
.label_1344:
	movabs	rdi, OFFSET FLAT:label_126
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
	jmp	.label_124
.label_1343:
	movabs	rdi, OFFSET FLAT:label_131
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
	jmp	.label_124
.label_141:
	movabs	rdi, OFFSET FLAT:label_130
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
.label_124:
	add	rsp, 0x180
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40374c
	.globl sub_40374c
	.type sub_40374c, @function
sub_40374c:

	nop	
.label_140:
	movabs	rsi, OFFSET FLAT:label_129
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x48], eax
.label_128:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	eax, OFFSET FLAT:label_137
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
	mov	ecx, OFFSET FLAT:label_135
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
	ja	.label_141
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_134]]
	jmp	rcx
.label_1348:
	movabs	rdi, OFFSET FLAT:label_136
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
	jmp	.label_124
.label_1347:
	movabs	rdi, OFFSET FLAT:label_125
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
	jmp	.label_124
	.section	.text
	.align	16
	#Procedure 0x403910
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
	#Procedure 0x40392a
	.globl sub_40392a
	.type sub_40392a, @function
sub_40392a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403930
	.globl xtime_sec
	.type xtime_sec, @function
xtime_sec:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	jge	.label_142
	mov	eax, 0x3b9aca00
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 8]
	add	rdx, 0x3b9aca00
	sub	rdx, 1
	mov	rax, rdx
	cqo	
	idiv	rcx
	sub	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_143
.label_142:
	mov	rdi, qword ptr [rbp - 8]
	call	xtime_nonnegative_sec
	mov	qword ptr [rbp - 0x10], rax
.label_143:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
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
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x30
	sub	edi, 9
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_144
	jmp	.label_146
.label_146:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_145
.label_144:
	mov	byte ptr [rbp - 1], 0
.label_145:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4039c2
	.globl sub_4039c2
	.type sub_4039c2, @function
sub_4039c2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4039d0
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
	#Procedure 0x4039f8
	.globl sub_4039f8
	.type sub_4039f8, @function
sub_4039f8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403a00
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
	#Procedure 0x403a1f
	.globl sub_403a1f
	.type sub_403a1f, @function
sub_403a1f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403a20

	.globl interrupt_handler
	.type interrupt_handler, @function
interrupt_handler:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 4], edi
	mov	edi, dword ptr [rbp - 4]
	mov	dword ptr [dword ptr [interrupt_signal]],  edi
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403a33
	.globl sub_403a33
	.type sub_403a33, @function
sub_403a33:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403a40
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
	#Procedure 0x403a6d
	.globl sub_403a6d
	.type sub_403a6d, @function
sub_403a6d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403a70

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
	#Procedure 0x403ae2
	.globl sub_403ae2
	.type sub_403ae2, @function
sub_403ae2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403af0
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
	#Procedure 0x403b1a
	.globl sub_403b1a
	.type sub_403b1a, @function
sub_403b1a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403b20

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
	je	.label_147
	xor	eax, eax
	mov	esi, eax
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 8]
	call	rpl_fseeko
	mov	dword ptr [rbp - 0xc], eax
.label_147:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403b5b
	.globl sub_403b5b
	.type sub_403b5b, @function
sub_403b5b:

	nop	dword ptr [rax + rax]
.label_149:
	mov	byte ptr [byte ptr [translation_needed]],  1
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403b6a
	.globl sub_403b6a
	.type sub_403b6a, @function
sub_403b6a:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403b74

	.globl translate_charset
	.type translate_charset, @function
translate_charset:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], 0
.label_148:
	cmp	dword ptr [rbp - 0xc], 0x100
	jge	.label_149
	movsxd	rax, dword ptr [rbp - 0xc]
	movzx	ecx,  byte ptr [byte ptr [+ (rax * 1) + trans_table]]
	mov	eax, ecx
	mov	rdx, qword ptr [rbp - 8]
	mov	sil, byte ptr [rdx + rax]
	movsxd	rax, dword ptr [rbp - 0xc]
	mov	byte ptr [byte ptr [+ (rax * 1) + trans_table]],  sil
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, 1
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_148
	.section	.text
	.align	16
	#Procedure 0x403bc0

	.globl install_signal_handlers
	.type install_signal_handlers, @function
install_signal_handlers:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xd0
	movabs	rdi, OFFSET FLAT:label_150
	call	getenv
	movabs	rdi, OFFSET FLAT:caught_signals
	cmp	rax, 0
	setne	cl
	xor	cl, 0xff
	and	cl, 1
	mov	byte ptr [rbp - 1], cl
	call	sigemptyset
	test	byte ptr [rbp - 1], 1
	mov	dword ptr [rbp - 0xa4], eax
	je	.label_154
	movabs	rdi, OFFSET FLAT:caught_signals
	mov	esi, 0xa
	call	sigaddset
	mov	dword ptr [rbp - 0xa8], eax
.label_154:
	mov	edi, 2
	xor	eax, eax
	mov	esi, eax
	lea	rdx, [rbp - 0xa0]
	call	sigaction
	mov	edi, 1
	mov	edx, edi
	cmp	qword ptr [rbp - 0xa0], rdx
	mov	dword ptr [rbp - 0xac], eax
	je	.label_153
	movabs	rdi, OFFSET FLAT:caught_signals
	mov	esi, 2
	call	sigaddset
	mov	dword ptr [rbp - 0xb0], eax
.label_153:
	movabs	rax, OFFSET FLAT:caught_signals
	mov	esi, 0xa
	mov	rcx, rax
	mov	edx, 0x80
	lea	rdi, [rbp - 0xa0]
	add	rdi, 8
	mov	dword ptr [rbp - 0xb4], esi
	mov	rsi, rcx
	mov	qword ptr [rbp - 0xc0], rax
	call	memcpy
	mov	rdi, qword ptr [rbp - 0xc0]
	mov	esi, dword ptr [rbp - 0xb4]
	call	sigismember
	cmp	eax, 0
	je	.label_152
	mov	edi, 0xa
	lea	rsi, [rbp - 0xa0]
	xor	eax, eax
	mov	edx, eax
	movabs	rcx, OFFSET FLAT:siginfo_handler
	mov	qword ptr [rbp - 0xa0], rcx
	mov	dword ptr [rbp - 0x18], 0
	call	sigaction
	mov	dword ptr [rbp - 0xc4], eax
.label_152:
	movabs	rdi, OFFSET FLAT:caught_signals
	mov	esi, 2
	call	sigismember
	cmp	eax, 0
	je	.label_151
	mov	edi, 2
	lea	rsi, [rbp - 0xa0]
	xor	eax, eax
	mov	edx, eax
	movabs	rcx, OFFSET FLAT:interrupt_handler
	mov	qword ptr [rbp - 0xa0], rcx
	mov	dword ptr [rbp - 0x18], 0xc0000000
	call	sigaction
	mov	dword ptr [rbp - 0xc8], eax
.label_151:
	add	rsp, 0xd0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403d4a
	.globl sub_403d4a
	.type sub_403d4a, @function
sub_403d4a:

	nop	word ptr [rax + rax]
.label_161:
	lea	rax, [rbp - 0x50]
	mov	rcx, rax
	lea	rdx, [rbp - 0x100]
	mov	qword ptr [rcx + 0x10], rdx
	lea	rdx, [rbp + 0x10]
	mov	qword ptr [rcx + 8], rdx
	mov	dword ptr [rcx + 4], 0x30
	mov	dword ptr [rcx], 0x30
	mov	rdi,  qword ptr [word ptr [stdout]]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, rax
	call	version_etc_va
	xor	edi, edi
	call	exit
.label_155:
	jmp	.label_160
.label_160:
	jmp	.label_156
.label_156:
	mov	eax, dword ptr [rbp - 0x38]
	mov	dword ptr [dword ptr [rip + opterr]],  eax
	mov	dword ptr [dword ptr [rip + optind]],  0
	add	rsp, 0x1c0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403dc0
	.globl sub_403dc0
	.type sub_403dc0, @function
sub_403dc0:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403dce
	.globl parse_long_options
	.type parse_long_options, @function
parse_long_options:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x1c0
	test	al, al
	movaps	xmmword ptr [rbp - 0x110], xmm7
	movaps	xmmword ptr [rbp - 0x120], xmm6
	movaps	xmmword ptr [rbp - 0x130], xmm5
	movaps	xmmword ptr [rbp - 0x140], xmm4
	movaps	xmmword ptr [rbp - 0x150], xmm3
	movaps	xmmword ptr [rbp - 0x160], xmm2
	movaps	xmmword ptr [rbp - 0x170], xmm1
	movaps	xmmword ptr [rbp - 0x180], xmm0
	mov	dword ptr [rbp - 0x184], edi
	mov	qword ptr [rbp - 0x190], r9
	mov	qword ptr [rbp - 0x198], r8
	mov	qword ptr [rbp - 0x1a0], rcx
	mov	qword ptr [rbp - 0x1a8], rdx
	mov	qword ptr [rbp - 0x1b0], rsi
	je	.label_158
	movaps	xmm0, xmmword ptr [rbp - 0x180]
	movaps	xmmword ptr [rbp - 0xd0], xmm0
	movaps	xmm1, xmmword ptr [rbp - 0x170]
	movaps	xmmword ptr [rbp - 0xc0], xmm1
	movaps	xmm2, xmmword ptr [rbp - 0x160]
	movaps	xmmword ptr [rbp - 0xb0], xmm2
	movaps	xmm3, xmmword ptr [rbp - 0x150]
	movaps	xmmword ptr [rbp - 0xa0], xmm3
	movaps	xmm4, xmmword ptr [rbp - 0x140]
	movaps	xmmword ptr [rbp - 0x90], xmm4
	movaps	xmm5, xmmword ptr [rbp - 0x130]
	movaps	xmmword ptr [rbp - 0x80], xmm5
	movaps	xmm6, xmmword ptr [rbp - 0x120]
	movaps	xmmword ptr [rbp - 0x70], xmm6
	movaps	xmm7, xmmword ptr [rbp - 0x110]
	movaps	xmmword ptr [rbp - 0x60], xmm7
.label_158:
	mov	rax, qword ptr [rbp - 0x190]
	mov	rcx, qword ptr [rbp - 0x198]
	mov	rdx, qword ptr [rbp - 0x1a0]
	mov	rsi, qword ptr [rbp - 0x1a8]
	mov	rdi, qword ptr [rbp - 0x1b0]
	mov	r8d, dword ptr [rbp - 0x184]
	mov	dword ptr [rbp - 4], r8d
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], rax
	mov	r8d,  dword ptr [dword ptr [opterr]]
	mov	dword ptr [rbp - 0x38], r8d
	mov	dword ptr [dword ptr [opterr]],  0
	cmp	dword ptr [rbp - 4], 2
	jne	.label_156
	movabs	rdx, OFFSET FLAT:label_157
	movabs	rcx, OFFSET FLAT:long_options
	xor	eax, eax
	mov	r8d, eax
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	call	getopt_long
	mov	dword ptr [rbp - 0x34], eax
	cmp	eax, -1
	je	.label_156
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	sub	ecx, 0x68
	mov	dword ptr [rbp - 0x1b4], eax
	mov	dword ptr [rbp - 0x1b8], ecx
	je	.label_162
	jmp	.label_159
.label_159:
	mov	eax, dword ptr [rbp - 0x1b4]
	sub	eax, 0x76
	mov	dword ptr [rbp - 0x1bc], eax
	je	.label_161
	jmp	.label_155
.label_162:
	xor	edi, edi
	call	qword ptr [rbp - 0x30]
	jmp	.label_160
	.section	.text
	.align	16
	#Procedure 0x403f80
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
	#Procedure 0x403fb1
	.globl sub_403fb1
	.type sub_403fb1, @function
sub_403fb1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403fc0

	.globl usage
	.type usage, @function
usage:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0
	je	.label_178
	jmp	.label_183
.label_183:
	movabs	rdi, OFFSET FLAT:label_184
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x10], rax
	call	gettext
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_166
.label_178:
	movabs	rdi, OFFSET FLAT:label_168
	call	gettext
	mov	rsi,  qword ptr [word ptr [program_name]]
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_188
	mov	dword ptr [rbp - 0x18], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_176
	mov	dword ptr [rbp - 0x1c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_163
	mov	dword ptr [rbp - 0x20], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_172
	mov	dword ptr [rbp - 0x24], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_180
	mov	dword ptr [rbp - 0x28], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_186
	mov	dword ptr [rbp - 0x2c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_164
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_173
	mov	dword ptr [rbp - 0x34], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_181
	mov	dword ptr [rbp - 0x38], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_169
	mov	dword ptr [rbp - 0x3c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_167
	mov	dword ptr [rbp - 0x40], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_175
	mov	dword ptr [rbp - 0x44], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_182
	mov	dword ptr [rbp - 0x48], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_189
	mov	dword ptr [rbp - 0x4c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_170
	mov	dword ptr [rbp - 0x50], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_177
	mov	dword ptr [rbp - 0x54], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_185
	mov	dword ptr [rbp - 0x58], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_191
	mov	dword ptr [rbp - 0x5c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_171
	mov	dword ptr [rbp - 0x60], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_179
	mov	dword ptr [rbp - 0x64], eax
	call	gettext
	movabs	rsi, OFFSET FLAT:label_190
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_187
	mov	dword ptr [rbp - 0x68], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_165
	mov	dword ptr [rbp - 0x6c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_174
	mov	dword ptr [rbp - 0x70], eax
	call	emit_ancillary_info
.label_166:
	mov	edi, dword ptr [rbp - 4]
	call	exit
	.section	.text
	.align	16
	#Procedure 0x404346
	.globl sub_404346
	.type sub_404346, @function
sub_404346:

	nop	word ptr cs:[rax + rax]
.label_196:
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	je	.label_194
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	xor	ecx, ecx
	mov	esi, ecx
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_193
.label_194:
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fflush
	cmp	eax, 0
	je	.label_193
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], ecx
.label_193:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_192
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x20], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x20]
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 0x1c], 0xffffffff
.label_192:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
.label_195:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4043dd
	.globl sub_4043dd
	.type sub_4043dd, @function
sub_4043dd:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4043df

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
	jge	.label_196
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 4], eax
	jmp	.label_195
	.section	.text
	.align	16
	#Procedure 0x404420

	.globl cleanup
	.type cleanup, @function
cleanup:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	edi, edi
	call	close
	cmp	eax, 0
	jge	.label_199
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_200
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 4], esi
	call	gettext
	mov	edi, 4
	mov	rsi,  qword ptr [word ptr [input_file]]
	mov	qword ptr [rbp - 0x10], rax
	call	quotearg_style
	mov	edi, 1
	mov	esi, dword ptr [rbp - 4]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, rax
	mov	al, 0
	call	nl_error
.label_199:
	mov	edi, 1
	call	close
	cmp	eax, 0
	jge	.label_197
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_198
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], esi
	call	gettext
	mov	edi, 4
	mov	rsi,  qword ptr [word ptr [output_file]]
	mov	qword ptr [rbp - 0x20], rax
	call	quotearg_style
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x14]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, rax
	mov	al, 0
	call	nl_error
.label_197:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4044db
	.globl sub_4044db
	.type sub_4044db, @function
sub_4044db:

	nop	dword ptr [rax + rax]
.label_202:
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
	#Procedure 0x404506
	.globl sub_404506
	.type sub_404506, @function
sub_404506:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40450d

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
.label_206:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x30], 0xa
	mov	byte ptr [rbp - 0x81], cl
	jae	.label_201
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x90], rax
	mov	dword ptr [rbp - 0x94], ecx
	ja	.label_204
	mov	eax, dword ptr [rbp - 0x94]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x90]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0xa0], rcx
	jmp	.label_207
.label_204:
	mov	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xa0], rdx
.label_207:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp + rcx*8 - 0x80], rax
	cmp	rax, 0
	setne	dl
	mov	byte ptr [rbp - 0x81], dl
.label_201:
	mov	al, byte ptr [rbp - 0x81]
	test	al, 1
	jne	.label_203
	jmp	.label_202
.label_203:
	jmp	.label_205
.label_205:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_206
.label_210:
	mov	dword ptr [rbp - 4], 0
.label_209:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404600
	.globl sub_404600
	.type sub_404600, @function
sub_404600:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404607

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
	jne	.label_208
	test	byte ptr [rbp - 0x13], 1
	je	.label_210
	test	byte ptr [rbp - 0x11], 1
	jne	.label_208
	call	__errno_location
	cmp	dword ptr [rax], 9
	je	.label_210
.label_208:
	test	byte ptr [rbp - 0x13], 1
	jne	.label_211
	call	__errno_location
	mov	dword ptr [rax], 0
.label_211:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_209
	.section	.text
	.align	16
	#Procedure 0x4046a0
	.globl human_options
	.type human_options, @function
human_options:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x10]
	call	humblock
	mov	dword ptr [rbp - 0x1c], eax
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx], 0
	jne	.label_212
	call	default_block_size
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 0x1c], 4
.label_212:
	mov	eax, dword ptr [rbp - 0x1c]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4046f2
	.globl sub_4046f2
	.type sub_4046f2, @function
sub_4046f2:

	nop	word ptr cs:[rax + rax]
.label_214:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404706
	.globl sub_404706
	.type sub_404706, @function
sub_404706:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40470a

	.globl translate_buffer
	.type translate_buffer, @function
translate_buffer:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rsi
.label_213:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_214
	mov	rax, qword ptr [rbp - 0x20]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	mov	al,  byte ptr [byte ptr [+ (rcx * 1) + trans_table]]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	byte ptr [rcx], al
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, -1
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_213
.label_235:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x1b0], rax
	mov	dword ptr [rbp - 0x1b4], ecx
	ja	.label_241
	mov	eax, dword ptr [rbp - 0x1b4]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x1b0]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x1c0], rcx
	jmp	.label_218
.label_243:
	mov	eax, dword ptr [rbp - 8]
	test	eax, eax
	mov	dword ptr [rbp - 0x1dc], eax
	je	.label_222
	jmp	.label_232
.label_232:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 1
	mov	dword ptr [rbp - 0x1e0], eax
	je	.label_226
	jmp	.label_228
.label_228:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 2
	mov	dword ptr [rbp - 0x1e4], eax
	je	.label_222
	jmp	.label_244
.label_244:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 3
	mov	dword ptr [rbp - 0x1e8], eax
	je	.label_226
	jmp	.label_219
.label_219:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 4
	mov	dword ptr [rbp - 0x1ec], eax
	je	.label_222
	jmp	.label_227
.label_227:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 8
	mov	dword ptr [rbp - 0x1f0], eax
	je	.label_222
	jmp	.label_233
.label_233:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 9
	mov	dword ptr [rbp - 0x1f4], eax
	je	.label_226
	jmp	.label_230
.label_230:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0xa
	mov	dword ptr [rbp - 0x1f8], eax
	je	.label_222
	jmp	.label_245
.label_245:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0xb
	mov	dword ptr [rbp - 0x1fc], eax
	je	.label_226
	jmp	.label_220
.label_220:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x400
	mov	dword ptr [rbp - 0x200], eax
	je	.label_222
	jmp	.label_234
.label_234:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x401
	mov	dword ptr [rbp - 0x204], eax
	je	.label_226
	jmp	.label_215
.label_215:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x402
	mov	dword ptr [rbp - 0x208], eax
	je	.label_222
	jmp	.label_239
.label_239:
	mov	eax, dword ptr [rbp - 0x1dc]
	add	eax, 0xfffffbfa
	sub	eax, 2
	mov	dword ptr [rbp - 0x20c], eax
	jb	.label_222
	jmp	.label_216
.label_216:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x408
	mov	dword ptr [rbp - 0x210], eax
	jne	.label_217
	jmp	.label_226
.label_226:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_229
.label_222:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x218], rax
	mov	dword ptr [rbp - 0x21c], ecx
	ja	.label_231
	mov	eax, dword ptr [rbp - 0x21c]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x218]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x228], rcx
	jmp	.label_236
	.section	.text
	.align	16
	#Procedure 0x40497e

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x240
	test	al, al
	movaps	xmmword ptr [rbp - 0x100], xmm7
	movaps	xmmword ptr [rbp - 0x110], xmm6
	movaps	xmmword ptr [rbp - 0x120], xmm5
	movaps	xmmword ptr [rbp - 0x130], xmm4
	movaps	xmmword ptr [rbp - 0x140], xmm3
	movaps	xmmword ptr [rbp - 0x150], xmm2
	movaps	xmmword ptr [rbp - 0x160], xmm1
	movaps	xmmword ptr [rbp - 0x170], xmm0
	mov	dword ptr [rbp - 0x174], edi
	mov	qword ptr [rbp - 0x180], r9
	mov	qword ptr [rbp - 0x188], r8
	mov	qword ptr [rbp - 0x190], rcx
	mov	qword ptr [rbp - 0x198], rdx
	mov	dword ptr [rbp - 0x19c], esi
	je	.label_221
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
.label_221:
	mov	rax, qword ptr [rbp - 0x180]
	mov	qword ptr [rbp - 0xc8], rax
	mov	rcx, qword ptr [rbp - 0x188]
	mov	qword ptr [rbp - 0xd0], rcx
	mov	rdx, qword ptr [rbp - 0x190]
	mov	qword ptr [rbp - 0xd8], rdx
	mov	rsi, qword ptr [rbp - 0x198]
	mov	qword ptr [rbp - 0xe0], rsi
	mov	edi, dword ptr [rbp - 0x19c]
	mov	r8d, dword ptr [rbp - 0x174]
	mov	dword ptr [rbp - 4], r8d
	mov	dword ptr [rbp - 8], edi
	mov	dword ptr [rbp - 0x24], 0xffffffff
	lea	r9, [rbp - 0xf0]
	mov	qword ptr [rbp - 0x10], r9
	lea	r9, [rbp + 0x10]
	mov	qword ptr [rbp - 0x18], r9
	mov	dword ptr [rbp - 0x1c], 0x30
	mov	dword ptr [rbp - 0x20], 0x10
	mov	edi, dword ptr [rbp - 8]
	test	edi, edi
	mov	dword ptr [rbp - 0x1a0], edi
	je	.label_235
	jmp	.label_237
.label_237:
	mov	eax, dword ptr [rbp - 0x1a0]
	sub	eax, 0x406
	mov	dword ptr [rbp - 0x1a4], eax
	je	.label_238
	jmp	.label_243
.label_231:
	mov	rax, qword ptr [rbp - 0x218]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x228], rdx
.label_236:
	mov	rax, qword ptr [rbp - 0x228]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x30], ecx
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	edx, dword ptr [rbp - 0x30]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_229
.label_217:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x230], rax
	mov	dword ptr [rbp - 0x234], ecx
	ja	.label_240
	mov	eax, dword ptr [rbp - 0x234]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x230]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x240], rcx
	jmp	.label_223
.label_238:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x1c8], rax
	mov	dword ptr [rbp - 0x1cc], ecx
	ja	.label_242
	mov	eax, dword ptr [rbp - 0x1cc]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x1c8]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x1d8], rcx
	jmp	.label_224
.label_242:
	mov	rax, qword ptr [rbp - 0x1c8]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x1d8], rdx
.label_224:
	mov	rax, qword ptr [rbp - 0x1d8]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x2c], ecx
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 0x2c]
	call	rpl_fcntl_DUPFD_CLOEXEC
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_225
.label_241:
	mov	rax, qword ptr [rbp - 0x1b0]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x1c0], rdx
.label_218:
	mov	rax, qword ptr [rbp - 0x1c0]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x28], ecx
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 0x28]
	call	rpl_fcntl_DUPFD
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_225
.label_240:
	mov	rax, qword ptr [rbp - 0x230]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x240], rdx
.label_223:
	mov	rax, qword ptr [rbp - 0x240]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x38], rax
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x24], eax
.label_229:
	jmp	.label_225
.label_225:
	mov	eax, dword ptr [rbp - 0x24]
	add	rsp, 0x240
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404c88
	.globl sub_404c88
	.type sub_404c88, @function
sub_404c88:

	nop	dword ptr [rax + rax]
.label_309:
	mov	rax, qword ptr [rbp - 0x68]
	cmp	rax, qword ptr [rbp - 0x58]
	jae	.label_288
	mov	dword ptr [rbp - 0x4c], 1
.label_288:
	jmp	.label_292
.label_292:
	cmp	dword ptr [rbp - 0x4c], 0
	je	.label_362
	movabs	rdi, OFFSET FLAT:label_296
	xor	eax, eax
	mov	ecx, 0x4b
	cmp	dword ptr [rbp - 0x4c], 1
	cmove	eax, ecx
	mov	dword ptr [rbp - 0x94], eax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0xa0], rax
	call	quote
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:label_250
	mov	esi, dword ptr [rbp - 0x94]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	r8, rax
	mov	al, 0
	call	nl_error
.label_291:
	movabs	rsi, OFFSET FLAT:label_324
	mov	rdi, qword ptr [rbp - 0x40]
	call	operand_is
	test	al, 1
	jne	.label_329
	jmp	.label_330
.label_329:
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_301
.label_247:
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_333
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [word ptr [seek_records]],  rax
.label_333:
	jmp	.label_279
.label_279:
	xor	eax, eax
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	and	eax, 0x800
	cmp	eax, 0
	mov	byte ptr [rbp - 0xb9], cl
	jne	.label_339
	xor	eax, eax
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [input_flags]]
	and	eax, 1
	cmp	eax, 0
	mov	byte ptr [rbp - 0xb9], cl
	jne	.label_339
	mov	al, 1
	cmp	qword ptr [word ptr [skip_records]],  0
	mov	byte ptr [rbp - 0xba], al
	jne	.label_345
	xor	eax, eax
	mov	ecx, eax
	cmp	rcx,  qword ptr [word ptr [max_records]]
	jae	.label_350
	mov	al, 1
	cmp	qword ptr [word ptr [max_records]],  -1
	mov	byte ptr [rbp - 0xba], al
	jb	.label_345
.label_350:
	mov	eax,  dword ptr [dword ptr [input_flags]]
	or	eax,  dword ptr [dword ptr [output_flags]]
	and	eax, 0x4000
	cmp	eax, 0
	setne	cl
	mov	byte ptr [rbp - 0xba], cl
.label_345:
	mov	al, byte ptr [rbp - 0xba]
	mov	byte ptr [rbp - 0xb9], al
.label_339:
	mov	al, byte ptr [rbp - 0xb9]
	movabs	rcx, OFFSET FLAT:iread
	movabs	rdx, OFFSET FLAT:iread_fullblock
	and	al, 1
	mov	byte ptr [byte ptr [warn_partial_read]],  al
	mov	esi,  dword ptr [dword ptr [input_flags]]
	and	esi, 1
	cmp	esi, 0
	cmovne	rcx, rdx
	mov	qword ptr [word ptr [iread_fnc]],  rcx
	mov	esi,  dword ptr [dword ptr [input_flags]]
	and	esi, 0xfffffffe
	mov	dword ptr [dword ptr [input_flags]],  esi
	mov	esi,  dword ptr [dword ptr [conversions_mask]]
	and	esi, 7
	mov	edi, esi
	call	multiple_bits_set
	test	al, 1
	jne	.label_269
	jmp	.label_272
.label_269:
	movabs	rdi, OFFSET FLAT:label_274
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	nl_error
.label_307:
	movabs	rsi, OFFSET FLAT:label_285
	mov	rdi, qword ptr [rbp - 0x40]
	call	operand_is
	test	al, 1
	jne	.label_290
	jmp	.label_291
.label_290:
	mov	qword ptr [rbp - 0x60], 1
	mov	qword ptr [rbp - 0x68], -1
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [word ptr [conversion_blocksize]],  rax
	jmp	.label_293
.label_317:
	movabs	rdi, OFFSET FLAT:label_302
	call	gettext
	mov	rdi, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x90], rax
	call	quote
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x90]
	mov	rcx, rax
	mov	al, 0
	call	nl_error
	mov	edi, 1
	call	usage
.label_337:
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	or	eax, 0x800
	mov	dword ptr [dword ptr [conversions_mask]],  eax
.label_341:
	cmp	qword ptr [word ptr [input_blocksize]],  0
	jne	.label_328
	mov	qword ptr [word ptr [input_blocksize]],  0x200
.label_328:
	cmp	qword ptr [word ptr [output_blocksize]],  0
	jne	.label_335
	mov	qword ptr [word ptr [output_blocksize]],  0x200
.label_335:
	cmp	qword ptr [word ptr [conversion_blocksize]],  0
	jne	.label_360
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	and	eax, 0xffffffe7
	mov	dword ptr [dword ptr [conversions_mask]],  eax
.label_360:
	mov	eax,  dword ptr [dword ptr [input_flags]]
	and	eax, 0x101000
	cmp	eax, 0
	je	.label_343
	mov	eax,  dword ptr [dword ptr [input_flags]]
	or	eax, 0x101000
	mov	dword ptr [dword ptr [input_flags]],  eax
.label_343:
	mov	eax,  dword ptr [dword ptr [output_flags]]
	and	eax, 1
	cmp	eax, 0
	je	.label_347
	movabs	rdi, OFFSET FLAT:label_340
	call	gettext
	movabs	rdi, OFFSET FLAT:label_275
	mov	qword ptr [rbp - 0xa8], rax
	call	quote
	xor	ecx, ecx
	movabs	rdx, OFFSET FLAT:label_250
	mov	edi, ecx
	mov	esi, ecx
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	r8, rax
	mov	al, 0
	call	nl_error
	mov	edi, 1
	call	usage
.label_272:
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	and	eax, 0x18
	mov	edi, eax
	call	multiple_bits_set
	test	al, 1
	jne	.label_249
	jmp	.label_251
.label_249:
	movabs	rdi, OFFSET FLAT:label_253
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	nl_error
.label_342:
	cmp	qword ptr [rbp - 0x20], -1
	je	.label_259
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [word ptr [max_records]],  rax
.label_259:
	jmp	.label_264
.label_264:
	mov	eax,  dword ptr [dword ptr [output_flags]]
	and	eax, 0x10
	cmp	eax, 0
	je	.label_247
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_247
	mov	rax, qword ptr [rbp - 0x30]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [word ptr [output_blocksize]]
	mov	qword ptr [word ptr [seek_records]],  rax
	mov	rax, qword ptr [rbp - 0x30]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [word ptr [output_blocksize]]
	mov	qword ptr [word ptr [seek_bytes]],  rdx
	jmp	.label_279
.label_325:
	lea	rsi, [rbp - 0x4c]
	mov	dword ptr [rbp - 0x4c], 0
	mov	rdi, qword ptr [rbp - 0x48]
	call	parse_integer
	movabs	rsi, OFFSET FLAT:label_299
	mov	qword ptr [rbp - 0x58], rax
	mov	qword ptr [rbp - 0x60], 0
	mov	qword ptr [rbp - 0x68], -1
	mov	rdi, qword ptr [rbp - 0x40]
	call	operand_is
	test	al, 1
	jne	.label_311
	jmp	.label_312
.label_311:
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, -1
	mov	qword ptr [rbp - 0x60], 1
	mov	rdx,  qword ptr [word ptr [page_size]]
	shl	rdx, 1
	add	rdx, 4
	sub	rdx, 1
	sub	rcx, rdx
	cmp	rcx, rax
	jae	.label_313
	mov	rax, -1
	mov	rcx,  qword ptr [word ptr [page_size]]
	shl	rcx, 1
	add	rcx, 4
	sub	rcx, 1
	sub	rax, rcx
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_284
.label_323:
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_338
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [word ptr [skip_records]],  rax
.label_338:
	jmp	.label_331
.label_331:
	mov	eax,  dword ptr [dword ptr [input_flags]]
	and	eax, 4
	cmp	eax, 0
	je	.label_342
	cmp	qword ptr [rbp - 0x20], -1
	je	.label_342
	mov	rax, qword ptr [rbp - 0x20]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [word ptr [input_blocksize]]
	mov	qword ptr [word ptr [max_records]],  rax
	mov	rax, qword ptr [rbp - 0x20]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [word ptr [input_blocksize]]
	mov	qword ptr [word ptr [max_bytes]],  rdx
	jmp	.label_264
.label_265:
	mov	eax,  dword ptr [dword ptr [output_flags]]
	and	eax, 0xc
	cmp	eax, 0
	je	.label_354
	movabs	rdi, OFFSET FLAT:label_340
	call	gettext
	movabs	rdi, OFFSET FLAT:label_358
	movabs	rcx, OFFSET FLAT:label_359
	mov	edx,  dword ptr [dword ptr [output_flags]]
	and	edx, 4
	cmp	edx, 0
	cmovne	rdi, rcx
	mov	qword ptr [rbp - 0xb8], rax
	call	quote
	xor	edx, edx
	movabs	rcx, OFFSET FLAT:label_250
	mov	edi, edx
	mov	esi, edx
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0xb8]
	mov	r8, rax
	mov	al, 0
	call	nl_error
	mov	edi, 1
	call	usage
.label_330:
	movabs	rsi, OFFSET FLAT:label_261
	mov	rdi, qword ptr [rbp - 0x40]
	call	operand_is
	test	al, 1
	jne	.label_266
	jmp	.label_270
.label_266:
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_263
.label_312:
	movabs	rsi, OFFSET FLAT:label_278
	mov	rdi, qword ptr [rbp - 0x40]
	call	operand_is
	test	al, 1
	jne	.label_282
	jmp	.label_286
.label_282:
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, -1
	mov	qword ptr [rbp - 0x60], 1
	mov	rdx,  qword ptr [word ptr [page_size]]
	sub	rdx, 1
	sub	rcx, rdx
	cmp	rcx, rax
	jae	.label_287
	mov	rax, -1
	mov	rcx,  qword ptr [word ptr [page_size]]
	sub	rcx, 1
	sub	rax, rcx
	mov	qword ptr [rbp - 0x80], rax
	jmp	.label_300
.label_270:
	movabs	rsi, OFFSET FLAT:label_310
	mov	rdi, qword ptr [rbp - 0x40]
	call	operand_is
	test	al, 1
	jne	.label_316
	jmp	.label_317
.label_316:
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_361
.label_354:
	mov	eax,  dword ptr [dword ptr [input_flags]]
	and	eax, 8
	cmp	eax, 0
	je	.label_323
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_323
	mov	rax, qword ptr [rbp - 0x28]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [word ptr [input_blocksize]]
	mov	qword ptr [word ptr [skip_records]],  rax
	mov	rax, qword ptr [rbp - 0x28]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [word ptr [input_blocksize]]
	mov	qword ptr [word ptr [skip_bytes]],  rdx
	jmp	.label_331
.label_318:
	mov	eax,  dword ptr [dword ptr [input_flags]]
	and	eax, 0x4002
	mov	edi, eax
	call	multiple_bits_set
	test	al, 1
	jne	.label_246
	mov	eax,  dword ptr [dword ptr [output_flags]]
	and	eax, 0x4002
	mov	edi, eax
	call	multiple_bits_set
	test	al, 1
	jne	.label_246
	jmp	.label_346
.label_246:
	movabs	rdi, OFFSET FLAT:label_348
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	nl_error
.label_283:
	movabs	rsi, OFFSET FLAT:label_353
	mov	rdi, qword ptr [rbp - 0x40]
	call	operand_is
	test	al, 1
	jne	.label_355
	jmp	.label_356
.label_355:
	movabs	rsi, OFFSET FLAT:flags
	xor	edx, edx
	movabs	rcx, OFFSET FLAT:label_277
	mov	rdi, qword ptr [rbp - 0x48]
	call	parse_symbols
	or	eax,  dword ptr [dword ptr [input_flags]]
	mov	dword ptr [dword ptr [input_flags]],  eax
	jmp	.label_298
.label_357:
	movabs	rsi, OFFSET FLAT:label_248
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	mov	rdi, qword ptr [rbp - 0x40]
	call	operand_is
	test	al, 1
	jne	.label_255
	jmp	.label_256
.label_255:
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [word ptr [input_file]],  rax
	jmp	.label_258
.label_251:
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	and	eax, 0x60
	mov	edi, eax
	call	multiple_bits_set
	test	al, 1
	jne	.label_268
	jmp	.label_271
.label_268:
	movabs	rdi, OFFSET FLAT:label_273
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	nl_error
.label_313:
	movabs	rax, 0x7fffffffffffffff
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_284
.label_284:
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [word ptr [input_blocksize]],  rax
	jmp	.label_289
.label_362:
	jmp	.label_295
.label_295:
	jmp	.label_267
.label_267:
	jmp	.label_298
.label_298:
	jmp	.label_294
.label_294:
	jmp	.label_262
.label_262:
	jmp	.label_258
.label_258:
	jmp	.label_306
.label_306:
	mov	eax, dword ptr [rbp - 0x34]
	add	eax, 1
	mov	dword ptr [rbp - 0x34], eax
	jmp	.label_308
.label_271:
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	and	eax, 0x3000
	mov	edi, eax
	call	multiple_bits_set
	test	al, 1
	jne	.label_315
	jmp	.label_318
.label_315:
	movabs	rdi, OFFSET FLAT:label_320
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	nl_error
.label_287:
	movabs	rax, 0x7fffffffffffffff
	mov	qword ptr [rbp - 0x80], rax
	jmp	.label_300
.label_300:
	mov	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [word ptr [output_blocksize]],  rax
	jmp	.label_305
.label_351:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_337
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [word ptr [output_blocksize]],  rax
	mov	qword ptr [word ptr [input_blocksize]],  rax
	jmp	.label_341
	.section	.text
	.align	16
	#Procedure 0x405574

	.globl scanargs
	.type scanargs, @function
scanargs:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xc0
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], 0
	mov	qword ptr [rbp - 0x20], -1
	mov	qword ptr [rbp - 0x28], 0
	mov	qword ptr [rbp - 0x30], 0
	mov	edi,  dword ptr [dword ptr [optind]]
	mov	dword ptr [rbp - 0x34], edi
.label_308:
	mov	eax, dword ptr [rbp - 0x34]
	cmp	eax, dword ptr [rbp - 4]
	jge	.label_351
	mov	esi, 0x3d
	movsxd	rax, dword ptr [rbp - 0x34]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x40], rax
	mov	rdi, qword ptr [rbp - 0x40]
	call	strchr
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x48], 0
	jne	.label_357
	movabs	rdi, OFFSET FLAT:label_302
	call	gettext
	mov	rdi, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x70], rax
	call	quote
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rcx, rax
	mov	al, 0
	call	nl_error
	mov	edi, 1
	call	usage
.label_256:
	movabs	rsi, OFFSET FLAT:label_254
	mov	rdi, qword ptr [rbp - 0x40]
	call	operand_is
	test	al, 1
	jne	.label_257
	jmp	.label_260
.label_257:
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [word ptr [output_file]],  rax
	jmp	.label_262
.label_347:
	mov	eax,  dword ptr [dword ptr [input_flags]]
	and	eax, 0x10
	cmp	eax, 0
	je	.label_265
	movabs	rdi, OFFSET FLAT:label_277
	call	gettext
	movabs	rdi, OFFSET FLAT:label_280
	mov	qword ptr [rbp - 0xb0], rax
	call	quote
	xor	ecx, ecx
	movabs	rdx, OFFSET FLAT:label_250
	mov	edi, ecx
	mov	esi, ecx
	mov	rcx, qword ptr [rbp - 0xb0]
	mov	r8, rax
	mov	al, 0
	call	nl_error
	mov	edi, 1
	call	usage
.label_286:
	movabs	rsi, OFFSET FLAT:label_297
	mov	rdi, qword ptr [rbp - 0x40]
	call	operand_is
	test	al, 1
	jne	.label_303
	jmp	.label_307
.label_303:
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, -1
	mov	qword ptr [rbp - 0x60], 1
	mov	rdx,  qword ptr [word ptr [page_size]]
	shl	rdx, 1
	add	rdx, 4
	sub	rdx, 1
	sub	rcx, rdx
	cmp	rcx, rax
	jae	.label_322
	mov	rax, -1
	mov	rcx,  qword ptr [word ptr [page_size]]
	shl	rcx, 1
	add	rcx, 4
	sub	rcx, 1
	sub	rax, rcx
	mov	qword ptr [rbp - 0x88], rax
	jmp	.label_326
.label_346:
	mov	eax,  dword ptr [dword ptr [input_flags]]
	and	eax, 2
	cmp	eax, 0
	je	.label_344
	xor	eax, eax
	mov	cl, al
	mov	byte ptr [byte ptr [i_nocache]],  1
	cmp	qword ptr [word ptr [max_records]],  0
	mov	byte ptr [rbp - 0xbb], cl
	jne	.label_336
	cmp	qword ptr [word ptr [max_bytes]],  0
	sete	al
	mov	byte ptr [rbp - 0xbb], al
.label_336:
	mov	al, byte ptr [rbp - 0xbb]
	and	al, 1
	mov	byte ptr [byte ptr [i_nocache_eof]],  al
	mov	ecx,  dword ptr [dword ptr [input_flags]]
	and	ecx, 0xfffffffd
	mov	dword ptr [dword ptr [input_flags]],  ecx
.label_344:
	mov	eax,  dword ptr [dword ptr [output_flags]]
	and	eax, 2
	cmp	eax, 0
	je	.label_349
	xor	eax, eax
	mov	cl, al
	mov	byte ptr [byte ptr [o_nocache]],  1
	cmp	qword ptr [word ptr [max_records]],  0
	mov	byte ptr [rbp - 0xbc], cl
	jne	.label_352
	cmp	qword ptr [word ptr [max_bytes]],  0
	sete	al
	mov	byte ptr [rbp - 0xbc], al
.label_352:
	mov	al, byte ptr [rbp - 0xbc]
	and	al, 1
	mov	byte ptr [byte ptr [o_nocache_eof]],  al
	mov	ecx,  dword ptr [dword ptr [output_flags]]
	and	ecx, 0xfffffffd
	mov	dword ptr [dword ptr [output_flags]],  ecx
.label_349:
	add	rsp, 0xc0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40580f
	.globl sub_40580f
	.type sub_40580f, @function
sub_40580f:

	nop	word ptr [rax + rax]
.label_356:
	movabs	rsi, OFFSET FLAT:label_252
	mov	rdi, qword ptr [rbp - 0x40]
	call	operand_is
	test	al, 1
	jne	.label_319
	jmp	.label_332
.label_319:
	movabs	rsi, OFFSET FLAT:flags
	xor	edx, edx
	movabs	rcx, OFFSET FLAT:label_340
	mov	rdi, qword ptr [rbp - 0x48]
	call	parse_symbols
	or	eax,  dword ptr [dword ptr [output_flags]]
	mov	dword ptr [dword ptr [output_flags]],  eax
	jmp	.label_267
.label_260:
	movabs	rsi, OFFSET FLAT:label_276
	mov	rdi, qword ptr [rbp - 0x40]
	call	operand_is
	test	al, 1
	jne	.label_281
	jmp	.label_283
.label_281:
	movabs	rsi, OFFSET FLAT:conversions
	xor	edx, edx
	movabs	rcx, OFFSET FLAT:label_334
	mov	rdi, qword ptr [rbp - 0x48]
	call	parse_symbols
	or	eax,  dword ptr [dword ptr [conversions_mask]]
	mov	dword ptr [dword ptr [conversions_mask]],  eax
	jmp	.label_294
.label_361:
	jmp	.label_263
.label_263:
	jmp	.label_301
.label_301:
	jmp	.label_293
.label_293:
	jmp	.label_304
.label_304:
	jmp	.label_305
.label_305:
	jmp	.label_289
.label_289:
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x60]
	jae	.label_309
	mov	dword ptr [rbp - 0x4c], 4
	jmp	.label_292
.label_332:
	movabs	rsi, OFFSET FLAT:label_314
	mov	rdi, qword ptr [rbp - 0x40]
	call	operand_is
	test	al, 1
	jne	.label_321
	jmp	.label_325
.label_321:
	movabs	rsi, OFFSET FLAT:statuses
	mov	edx, 1
	movabs	rcx, OFFSET FLAT:label_327
	mov	rdi, qword ptr [rbp - 0x48]
	call	parse_symbols
	mov	dword ptr [dword ptr [status_level]],  eax
	jmp	.label_295
.label_322:
	movabs	rax, 0x7fffffffffffffff
	mov	qword ptr [rbp - 0x88], rax
	jmp	.label_326
.label_326:
	mov	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_304
	.section	.text
	.align	16
	#Procedure 0x405970

	.globl multiple_bits_set
	.type multiple_bits_set, @function
multiple_bits_set:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 4], edi
	mov	edi, dword ptr [rbp - 4]
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 1
	and	edi, eax
	cmp	edi, 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405990

	.globl verror
	.type verror, @function
verror:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	r8d, eax
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	qword ptr [rbp - 0x10], rdx
	mov	qword ptr [rbp - 0x18], rcx
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	r9, qword ptr [rbp - 0x18]
	mov	rdx, r8
	mov	qword ptr [rbp - 0x20], rcx
	mov	ecx, eax
	mov	r8, qword ptr [rbp - 0x20]
	call	verror_at_line
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4059d3
	.globl sub_4059d3
	.type sub_4059d3, @function
sub_4059d3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4059e0

	.globl write_output
	.type write_output, @function
write_output:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	edi, 1
	mov	rsi,  qword ptr [word ptr [obuf]]
	mov	rdx,  qword ptr [word ptr [output_blocksize]]
	call	iwrite
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 8]
	add	rax,  qword ptr [word ptr [w_bytes]]
	mov	qword ptr [word ptr [w_bytes]],  rax
	mov	rax, qword ptr [rbp - 8]
	cmp	rax,  qword ptr [word ptr [output_blocksize]]
	je	.label_364
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_363
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xc], esi
	call	gettext
	mov	edi, 4
	mov	rsi,  qword ptr [word ptr [output_file]]
	mov	qword ptr [rbp - 0x18], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0xc]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, rax
	mov	al, 0
	call	nl_error
	cmp	qword ptr [rbp - 8], 0
	je	.label_365
	mov	rax,  qword ptr [word ptr [w_partial]]
	add	rax, 1
	mov	qword ptr [word ptr [w_partial]],  rax
.label_365:
	mov	edi, 1
	call	quit
.label_364:
	mov	rax,  qword ptr [word ptr [w_full]]
	add	rax, 1
	mov	qword ptr [word ptr [w_full]],  rax
	mov	qword ptr [word ptr [oc]],  0
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405abd
	.globl sub_405abd
	.type sub_405abd, @function
sub_405abd:

	nop	dword ptr [rax]
.label_373:
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x88], rdx
.label_376:
	mov	rax, qword ptr [rbp - 0x88]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x60], rax
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x90], rdi
	mov	rdi, rax
	call	strlen
	mov	rdi, qword ptr [rbp - 0x90]
	mov	rsi, rax
	call	xsum
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, -1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_368
	.section	.text
	.align	16
	#Procedure 0x405b23

	.globl xstrcat
	.type xstrcat, @function
xstrcat:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xb0
	lea	rax, [rbp - 0x40]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x48], 0
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rsi + 0x10]
	mov	qword ptr [rax + 0x10], rdi
	movups	xmm0, xmmword ptr [rsi]
	movups	xmmword ptr [rax], xmm0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x50], rax
.label_368:
	cmp	qword ptr [rbp - 0x50], 0
	jbe	.label_371
	lea	rax, [rbp - 0x40]
	mov	ecx, dword ptr [rbp - 0x40]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x78], rax
	mov	dword ptr [rbp - 0x7c], ecx
	ja	.label_373
	mov	eax, dword ptr [rbp - 0x7c]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x78]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x88], rcx
	jmp	.label_376
.label_369:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xb0], rdx
.label_374:
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x68], rax
	mov	rdi, qword ptr [rbp - 0x68]
	call	strlen
	mov	qword ptr [rbp - 0x70], rax
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x68]
	mov	rdx, qword ptr [rbp - 0x70]
	call	memcpy
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, -1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_372
.label_371:
	lea	rax, [rbp - 0x40]
	cmp	qword ptr [rbp - 0x48], -1
	mov	qword ptr [rbp - 0x98], rax
	je	.label_366
	cmp	qword ptr [rbp - 0x48], 0x7fffffff
	jbe	.label_370
.label_366:
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	mov	qword ptr [rbp - 8], 0
	jmp	.label_375
.label_367:
	mov	rax, qword ptr [rbp - 0x58]
	mov	byte ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_375:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0xb0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405c5b
	.globl sub_405c5b
	.type sub_405c5b, @function
sub_405c5b:

	nop	dword ptr [rax + rax]
.label_370:
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	rdi, rax
	call	xmalloc
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x50], rax
.label_372:
	cmp	qword ptr [rbp - 0x50], 0
	jbe	.label_367
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rax]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0xa0], rax
	mov	dword ptr [rbp - 0xa4], ecx
	ja	.label_369
	mov	eax, dword ptr [rbp - 0xa4]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0xa0]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0xb0], rcx
	jmp	.label_374
	.section	.text
	.align	16
	#Procedure 0x405cd0
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
	#Procedure 0x405d0a
	.globl sub_405d0a
	.type sub_405d0a, @function
sub_405d0a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405d10
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
	#Procedure 0x405d47
	.globl sub_405d47
	.type sub_405d47, @function
sub_405d47:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405d50

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
	#Procedure 0x405dfd
	.globl sub_405dfd
	.type sub_405dfd, @function
sub_405dfd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405e00

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
	#Procedure 0x405e28
	.globl sub_405e28
	.type sub_405e28, @function
sub_405e28:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405e30
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
	jb	.label_377
	jmp	.label_380
.label_380:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 6
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_377
	jmp	.label_378
.label_378:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 5
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_379
	jmp	.label_377
.label_377:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_381
.label_379:
	mov	byte ptr [rbp - 1], 0
.label_381:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405e95
	.globl sub_405e95
	.type sub_405e95, @function
sub_405e95:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405ea0

	.globl print_stats
	.type print_stats, @function
print_stats:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	cmp	dword ptr [dword ptr [status_level]],  1
	jne	.label_382
	jmp	.label_385
.label_382:
	xor	eax, eax
	cmp	eax,  dword ptr [dword ptr [progress_len]]
	jge	.label_388
	mov	edi, 0xa
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputc_unlocked
	mov	dword ptr [dword ptr [progress_len]],  0
	mov	dword ptr [rbp - 4], eax
.label_388:
	movabs	rdi, OFFSET FLAT:label_389
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x10], rax
	call	gettext
	mov	rdx,  qword ptr [word ptr [r_full]]
	mov	rcx,  qword ptr [word ptr [r_partial]]
	mov	r8,  qword ptr [word ptr [w_full]]
	mov	r9,  qword ptr [word ptr [w_partial]]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	cmp	qword ptr [word ptr [r_truncate]],  0
	mov	dword ptr [rbp - 0x14], eax
	je	.label_387
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rax,  qword ptr [word ptr [r_truncate]]
	mov	qword ptr [rbp - 0x20], rdi
	mov	rdi, rax
	call	select_plural
	movabs	rdi, OFFSET FLAT:label_383
	movabs	rsi, OFFSET FLAT:label_384
	mov	rdx, rax
	call	ngettext
	mov	rdx,  qword ptr [word ptr [r_truncate]]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x24], eax
.label_387:
	cmp	dword ptr [dword ptr [status_level]],  2
	jne	.label_386
	jmp	.label_385
.label_386:
	xor	eax, eax
	mov	edi, eax
	call	print_xfer_stats
.label_385:
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405fb8
	.globl sub_405fb8
	.type sub_405fb8, @function
sub_405fb8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405fc0

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
.label_391:
	mov	eax, dword ptr [rbp - 0x10]
	mov	ecx, eax
	add	ecx, -1
	mov	dword ptr [rbp - 0x10], ecx
	cmp	eax, 0
	je	.label_390
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	call	bkm_scale
	or	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_391
.label_390:
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40600d
	.globl sub_40600d
	.type sub_40600d, @function
sub_40600d:

	nop	dword ptr [rax]
.label_393:
	lea	rax, [rbp - 0x80]
	mov	rcx, rax
	lea	rdx, [rbp - 0x130]
	mov	qword ptr [rcx + 0x10], rdx
	lea	rdx, [rbp + 0x18]
	mov	qword ptr [rcx + 8], rdx
	mov	dword ptr [rcx + 4], 0x30
	mov	dword ptr [rcx], 0x30
	mov	rdi,  qword ptr [word ptr [stdout]]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	r8, rax
	call	version_etc_va
	xor	edi, edi
	call	exit
.label_397:
	xor	edi, edi
	call	qword ptr [rbp - 0x58]
	jmp	.label_398
.label_392:
	mov	rax, qword ptr [rbp - 0x58]
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	rax
.label_398:
	jmp	.label_394
.label_394:
	mov	eax, dword ptr [rbp - 0x60]
	mov	dword ptr [dword ptr [rip + opterr]],  eax
	add	rsp, 0x1d0
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40608f
	.globl sub_40608f
	.type sub_40608f, @function
sub_40608f:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406095

	.globl parse_gnu_standard_options_only
	.type parse_gnu_standard_options_only, @function
parse_gnu_standard_options_only:
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x1d0
	test	al, al
	movaps	xmmword ptr [rbp - 0x140], xmm7
	movaps	xmmword ptr [rbp - 0x150], xmm6
	movaps	xmmword ptr [rbp - 0x160], xmm5
	movaps	xmmword ptr [rbp - 0x170], xmm4
	movaps	xmmword ptr [rbp - 0x180], xmm3
	movaps	xmmword ptr [rbp - 0x190], xmm2
	movaps	xmmword ptr [rbp - 0x1a0], xmm1
	movaps	xmmword ptr [rbp - 0x1b0], xmm0
	mov	dword ptr [rbp - 0x1b4], edi
	mov	dword ptr [rbp - 0x1b8], r9d
	mov	qword ptr [rbp - 0x1c0], r8
	mov	qword ptr [rbp - 0x1c8], rcx
	mov	qword ptr [rbp - 0x1d0], rdx
	mov	qword ptr [rbp - 0x1d8], rsi
	je	.label_396
	movaps	xmm0, xmmword ptr [rbp - 0x1b0]
	movaps	xmmword ptr [rbp - 0x100], xmm0
	movaps	xmm1, xmmword ptr [rbp - 0x1a0]
	movaps	xmmword ptr [rbp - 0xf0], xmm1
	movaps	xmm2, xmmword ptr [rbp - 0x190]
	movaps	xmmword ptr [rbp - 0xe0], xmm2
	movaps	xmm3, xmmword ptr [rbp - 0x180]
	movaps	xmmword ptr [rbp - 0xd0], xmm3
	movaps	xmm4, xmmword ptr [rbp - 0x170]
	movaps	xmmword ptr [rbp - 0xc0], xmm4
	movaps	xmm5, xmmword ptr [rbp - 0x160]
	movaps	xmmword ptr [rbp - 0xb0], xmm5
	movaps	xmm6, xmmword ptr [rbp - 0x150]
	movaps	xmmword ptr [rbp - 0xa0], xmm6
	movaps	xmm7, xmmword ptr [rbp - 0x140]
	movaps	xmmword ptr [rbp - 0x90], xmm7
.label_396:
	mov	eax, dword ptr [rbp - 0x1b8]
	mov	cl, al
	mov	rdx, qword ptr [rbp + 0x10]
	mov	rsi, qword ptr [rbp - 0x1c0]
	mov	rdi, qword ptr [rbp - 0x1c8]
	mov	r8, qword ptr [rbp - 0x1d0]
	mov	r9, qword ptr [rbp - 0x1d8]
	mov	r10d, dword ptr [rbp - 0x1b4]
	movabs	r11, OFFSET FLAT:long_options
	xor	ebx, ebx
	mov	r14d, ebx
	movabs	r15, OFFSET FLAT:label_157
	movabs	r12, OFFSET FLAT:label_24
	mov	dword ptr [rbp - 0x24], r10d
	mov	qword ptr [rbp - 0x30], r9
	mov	qword ptr [rbp - 0x38], r8
	mov	qword ptr [rbp - 0x40], rdi
	mov	qword ptr [rbp - 0x48], rsi
	and	cl, 1
	mov	byte ptr [rbp - 0x49], cl
	mov	qword ptr [rbp - 0x58], rdx
	mov	r10d,  dword ptr [dword ptr [opterr]]
	mov	dword ptr [rbp - 0x60], r10d
	mov	dword ptr [dword ptr [opterr]],  1
	mov	cl, byte ptr [rbp - 0x49]
	test	cl, 1
	cmovne	r15, r12
	mov	qword ptr [rbp - 0x68], r15
	mov	edi, dword ptr [rbp - 0x24]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rcx, r11
	mov	r8, r14
	call	getopt_long
	mov	dword ptr [rbp - 0x5c], eax
	cmp	eax, -1
	je	.label_394
	mov	eax, dword ptr [rbp - 0x5c]
	mov	ecx, eax
	sub	ecx, 0x68
	mov	dword ptr [rbp - 0x1dc], eax
	mov	dword ptr [rbp - 0x1e0], ecx
	je	.label_397
	jmp	.label_395
.label_395:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x76
	mov	dword ptr [rbp - 0x1e4], eax
	je	.label_393
	jmp	.label_392
.label_400:
	mov	byte ptr [rbp - 1], 0
.label_401:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40627e
	.globl sub_40627e
	.type sub_40627e, @function
sub_40627e:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40628c
	.globl c_islower
	.type c_islower, @function
c_islower:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_400
	jmp	.label_399
.label_399:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_401
	.section	.text
	.align	16
	#Procedure 0x4062b0

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
	ja	.label_402
	jmp	.label_404
.label_404:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x27d8
	add	eax, 0x2001a
	mov	dword ptr [rbp - 4], eax
	jmp	.label_403
.label_402:
	jmp	.label_403
.label_403:
	mov	edi, dword ptr [rbp - 4]
	call	nl_langinfo
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4062fa
	.globl sub_4062fa
	.type sub_4062fa, @function
sub_4062fa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406300

	.globl rpl_fcntl_DUPFD
	.type rpl_fcntl_DUPFD, @function
rpl_fcntl_DUPFD:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	edi, dword ptr [rbp - 4]
	mov	edx, dword ptr [rbp - 8]
	mov	esi, eax
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0xc], eax
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40632b
	.globl sub_40632b
	.type sub_40632b, @function
sub_40632b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406330

	.globl finish_up
	.type finish_up, @function
finish_up:
	push	rbp
	mov	rbp, rsp
	call	cleanup
	call	print_stats
	call	process_signals
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406345
	.globl sub_406345
	.type sub_406345, @function
sub_406345:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406350

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
	#Procedure 0x40636b
	.globl sub_40636b
	.type sub_40636b, @function
sub_40636b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406370
	.globl current_timespec
	.type current_timespec, @function
current_timespec:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	lea	rdi, [rbp - 0x20]
	call	gettime
	movups	xmm0, xmmword ptr [rbp - 0x20]
	movaps	xmmword ptr [rbp - 0x10], xmm0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406397
	.globl sub_406397
	.type sub_406397, @function
sub_406397:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4063a0

	.globl usable_st_size
	.type usable_st_size, @function
usable_st_size:
	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rdi + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0x8000
	mov	byte ptr [rbp - 9], al
	je	.label_405
	mov	al, 1
	mov	rcx, qword ptr [rbp - 8]
	mov	edx, dword ptr [rcx + 0x18]
	and	edx, 0xf000
	cmp	edx, 0xa000
	mov	byte ptr [rbp - 9], al
	je	.label_405
	mov	al, 1
	mov	rcx, qword ptr [rbp - 8]
	mov	edx, dword ptr [rcx + 0x18]
	mov	rcx, qword ptr [rbp - 8]
	sub	edx, dword ptr [rcx + 0x18]
	cmp	edx, 0
	mov	byte ptr [rbp - 9], al
	jne	.label_405
	xor	eax, eax
	mov	cl, al
	mov	byte ptr [rbp - 9], cl
	jmp	.label_405
.label_405:
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406416
	.globl sub_406416
	.type sub_406416, @function
sub_406416:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406420

	.globl default_block_size
	.type default_block_size, @function
default_block_size:
	push	rbp
	mov	rbp, rsp
	movabs	rdi, OFFSET FLAT:label_150
	call	getenv
	mov	ecx, 0x400
	mov	edx, 0x200
	cmp	rax, 0
	cmovne	ecx, edx
	movsxd	rax, ecx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406449
	.globl sub_406449
	.type sub_406449, @function
sub_406449:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406450

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
	#Procedure 0x40647c
	.globl sub_40647c
	.type sub_40647c, @function
sub_40647c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406480

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
	#Procedure 0x4064b7
	.globl sub_4064b7
	.type sub_4064b7, @function
sub_4064b7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4064c0
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
	je	.label_406
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_407
.label_406:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_407
.label_407:
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
	#Procedure 0x406585
	.globl sub_406585
	.type sub_406585, @function
sub_406585:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406590

	.globl ptr_align
	.type ptr_align, @function
ptr_align:
	push	rbp
	mov	rbp, rsp
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	add	rsi, qword ptr [rbp - 0x10]
	add	rsi, -1
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x20]
	xor	edx, edx
	div	qword ptr [rbp - 0x10]
	sub	rcx, rdx
	add	rsi, rcx
	mov	rax, rsi
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4065d1
	.globl sub_4065d1
	.type sub_4065d1, @function
sub_4065d1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4065e0

	.globl skip_via_lseek
	.type skip_via_lseek, @function
skip_via_lseek:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xa0
	mov	eax, 0x80306d02
	mov	r8d, eax
	lea	r9, [rbp - 0x50]
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	qword ptr [rbp - 0x18], rdx
	mov	dword ptr [rbp - 0x1c], ecx
	mov	edi, dword ptr [rbp - 0xc]
	mov	rsi, r8
	mov	rdx, r9
	mov	al, 0
	call	ioctl
	cmp	eax, 0
	sete	r10b
	and	r10b, 1
	mov	byte ptr [rbp - 0x81], r10b
	mov	edi, dword ptr [rbp - 0xc]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	call	lseek
	xor	ecx, ecx
	mov	esi, ecx
	mov	qword ptr [rbp - 0x90], rax
	cmp	rsi, qword ptr [rbp - 0x90]
	jg	.label_408
	test	byte ptr [rbp - 0x81], 1
	je	.label_408
	mov	eax, 0x80306d02
	mov	esi, eax
	lea	rdx, [rbp - 0x80]
	mov	edi, dword ptr [rbp - 0xc]
	mov	al, 0
	call	ioctl
	cmp	eax, 0
	jne	.label_408
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x78]
	jne	.label_408
	mov	eax, dword ptr [rbp - 0x28]
	cmp	eax, dword ptr [rbp - 0x58]
	jne	.label_408
	mov	eax, dword ptr [rbp - 0x24]
	cmp	eax, dword ptr [rbp - 0x54]
	jne	.label_408
	cmp	dword ptr [dword ptr [status_level]],  1
	je	.label_410
	movabs	rdi, OFFSET FLAT:label_409
	call	gettext
	xor	ecx, ecx
	mov	rdi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x80]
	add	rdx, 0
	mov	qword ptr [rbp - 0x98], rdi
	mov	edi, ecx
	mov	esi, ecx
	mov	qword ptr [rbp - 0xa0], rdx
	mov	rdx, rax
	mov	rcx, qword ptr [rbp - 0x98]
	mov	r8, qword ptr [rbp - 0xa0]
	mov	al, 0
	call	nl_error
.label_410:
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	qword ptr [rbp - 0x90], -1
.label_408:
	mov	rax, qword ptr [rbp - 0x90]
	add	rsp, 0xa0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40671a
	.globl sub_40671a
	.type sub_40671a, @function
sub_40671a:

	nop	word ptr [rax + rax]
.label_412:
	mov	byte ptr [rbp - 1], 0
.label_413:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40672e
	.globl sub_40672e
	.type sub_40672e, @function
sub_40672e:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40673c
	.globl c_isupper
	.type c_isupper, @function
c_isupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_412
	jmp	.label_411
.label_411:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_413
	.section	.text
	.align	16
	#Procedure 0x406760

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	push	rbp
	mov	rbp, rsp
	mov	edi, 1
	call	usage
	.section	.text
	.align	16
	#Procedure 0x40676e
	.globl sub_40676e
	.type sub_40676e, @function
sub_40676e:

	pop	rbp
	ret	
.label_437:
	call	__errno_location
	xor	ecx, ecx
	mov	edx, ecx
	mov	ecx, 2
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xcc], esi
	mov	rdi, qword ptr [rbp - 0x18]
	mov	esi, dword ptr [rbp - 0xc]
	call	skip_via_lseek
	cmp	rax, 0
	jl	.label_433
	cmp	dword ptr [rbp - 0xcc], 0
	jne	.label_435
	mov	dword ptr [rbp - 0xcc], 0x4b
.label_435:
	cmp	dword ptr [rbp - 0xc], 0
	jne	.label_445
	movabs	rdi, OFFSET FLAT:label_446
	mov	esi, dword ptr [rbp - 0xcc]
	mov	dword ptr [rbp - 0xfc], esi
	call	gettext
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x108], rax
	call	quotearg_n_style_colon
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0xfc]
	mov	rdx, qword ptr [rbp - 0x108]
	mov	rcx, rax
	mov	al, 0
	call	nl_error
	jmp	.label_432
.label_423:
	cmp	qword ptr [rbp - 0xe0], 0
	jne	.label_418
	jmp	.label_424
.label_420:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rax], 0
.label_426:
	jmp	.label_415
.label_415:
	mov	al, 1
	cmp	qword ptr [rbp - 0x20], 0
	mov	byte ptr [rbp - 0x159], al
	jne	.label_428
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax], 0
	setne	cl
	mov	byte ptr [rbp - 0x159], cl
.label_428:
	mov	al, byte ptr [rbp - 0x159]
	test	al, 1
	jne	.label_421
.label_424:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_431:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x160
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406877
	.globl sub_406877
	.type sub_406877, @function
sub_406877:

	nop	dword ptr [rax + rax]
.label_438:
	call	alloc_obuf
	mov	rax,  qword ptr [word ptr [obuf]]
	mov	qword ptr [rbp - 0xd8], rax
.label_444:
	jmp	.label_421
.label_421:
	mov	rax,  qword ptr [word ptr [iread_fnc]]
	mov	edi, dword ptr [rbp - 0xc]
	mov	rsi, qword ptr [rbp - 0xd8]
	cmp	qword ptr [rbp - 0x20], 0
	mov	qword ptr [rbp - 0x120], rax
	mov	dword ptr [rbp - 0x124], edi
	mov	qword ptr [rbp - 0x130], rsi
	je	.label_422
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x138], rax
	jmp	.label_416
.label_427:
	movabs	rdi, OFFSET FLAT:label_104
	mov	esi, dword ptr [rbp - 0xcc]
	mov	dword ptr [rbp - 0x14c], esi
	call	gettext
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x158], rax
	call	quotearg_n_style_colon
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x14c]
	mov	rdx, qword ptr [rbp - 0x158]
	mov	rcx, rax
	mov	al, 0
	call	nl_error
.label_425:
	mov	edi, 1
	call	quit
	.section	.text
	.align	16
	#Procedure 0x40692e

	.globl skip
	.type skip, @function
skip:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x160
	mov	dword ptr [rbp - 0xc], edi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	rcx, qword ptr [rbp - 0x20]
	imul	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x30]
	add	rcx, qword ptr [rdx]
	mov	qword ptr [rbp - 0x38], rcx
	call	__errno_location
	movabs	rcx, 0x7fffffffffffffff
	mov	dword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0xe8], rax
	mov	rax, rcx
	xor	edi, edi
	mov	edx, edi
	div	qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0xe8]
	cmp	rcx, rax
	ja	.label_437
	mov	ecx, 1
	mov	rdi, qword ptr [rbp - 0x18]
	mov	esi, dword ptr [rbp - 0xc]
	mov	rdx, qword ptr [rbp - 0x38]
	call	skip_via_lseek
	xor	ecx, ecx
	mov	edx, ecx
	cmp	rdx, rax
	jg	.label_437
	cmp	dword ptr [rbp - 0xc], 0
	jne	.label_443
	xor	edi, edi
	lea	rsi, [rbp - 0xc8]
	call	fstat
	cmp	eax, 0
	je	.label_434
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_439
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xec], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xf8], rax
	call	quotearg_style
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0xec]
	mov	rdx, qword ptr [rbp - 0xf8]
	mov	rcx, rax
	mov	al, 0
	call	nl_error
.label_422:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x138], rax
.label_416:
	mov	rax, qword ptr [rbp - 0x138]
	mov	edi, dword ptr [rbp - 0x124]
	mov	rsi, qword ptr [rbp - 0x130]
	mov	rdx, rax
	mov	rax, qword ptr [rbp - 0x120]
	call	rax
	mov	qword ptr [rbp - 0xe0], rax
	cmp	qword ptr [rbp - 0xe0], 0
	jge	.label_423
	cmp	dword ptr [rbp - 0xc], 0
	jne	.label_427
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_430
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x13c], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x148], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x13c]
	mov	rdx, qword ptr [rbp - 0x148]
	mov	rcx, rax
	mov	al, 0
	call	nl_error
	mov	esi,  dword ptr [dword ptr [conversions_mask]]
	and	esi, 0x100
	cmp	esi, 0
	je	.label_414
	call	print_stats
.label_414:
	jmp	.label_425
.label_433:
	cmp	dword ptr [rbp - 0xc], 0
	jne	.label_438
	call	alloc_ibuf
	mov	rax,  qword ptr [word ptr [ibuf]]
	mov	qword ptr [rbp - 0xd8], rax
	jmp	.label_444
.label_445:
	movabs	rdi, OFFSET FLAT:label_104
	mov	esi, dword ptr [rbp - 0xcc]
	mov	dword ptr [rbp - 0x10c], esi
	call	gettext
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x118], rax
	call	quotearg_n_style_colon
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x10c]
	mov	rdx, qword ptr [rbp - 0x118]
	mov	rcx, rax
	mov	al, 0
	call	nl_error
.label_432:
	mov	edi, 1
	call	quit
.label_440:
	mov	qword ptr [rbp - 0x20], 0
.label_436:
	mov	rdi, qword ptr [rbp - 0x38]
	call	advance_input_offset
	jmp	.label_442
.label_443:
	mov	qword ptr [rbp - 0x20], 0
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rax], 0
.label_442:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_431
.label_434:
	lea	rdi, [rbp - 0xc8]
	call	usable_st_size
	test	al, 1
	jne	.label_441
	jmp	.label_440
.label_441:
	mov	rax, qword ptr [rbp - 0x98]
	mov	rcx,  qword ptr [word ptr [input_offset]]
	add	rcx, qword ptr [rbp - 0x38]
	cmp	rax, rcx
	jae	.label_440
	mov	rax, qword ptr [rbp - 0x38]
	sub	rax, qword ptr [rbp - 0x98]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x98]
	sub	rax,  qword ptr [word ptr [input_offset]]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_436
.label_418:
	cmp	dword ptr [rbp - 0xc], 0
	jne	.label_429
	mov	rdi, qword ptr [rbp - 0xe0]
	call	advance_input_offset
.label_429:
	jmp	.label_417
.label_417:
	jmp	.label_419
.label_419:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_420
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, -1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_426
.label_447:
	mov	rax, qword ptr [rbp - 8]
	imul	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	xmalloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406c47
	.globl sub_406c47
	.type sub_406c47, @function
sub_406c47:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406c4f
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
	jae	.label_447
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x406c80

	.globl copy_simple
	.type copy_simple, @function
copy_simple:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
.label_451:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx,  qword ptr [word ptr [output_blocksize]]
	sub	rcx,  qword ptr [word ptr [oc]]
	cmp	rax, rcx
	jae	.label_450
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_449
.label_450:
	mov	rax,  qword ptr [word ptr [output_blocksize]]
	sub	rax,  qword ptr [word ptr [oc]]
	mov	qword ptr [rbp - 0x28], rax
.label_449:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax,  qword ptr [word ptr [obuf]]
	add	rax,  qword ptr [word ptr [oc]]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rdi, rax
	call	memcpy
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x10]
	sub	rdx, rax
	mov	qword ptr [rbp - 0x10], rdx
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x20]
	add	rax,  qword ptr [word ptr [oc]]
	mov	qword ptr [word ptr [oc]],  rax
	mov	rax,  qword ptr [word ptr [oc]]
	cmp	rax,  qword ptr [word ptr [output_blocksize]]
	jb	.label_452
	call	write_output
.label_452:
	jmp	.label_448
.label_448:
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_451
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406d5e
	.globl sub_406d5e
	.type sub_406d5e, @function
sub_406d5e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x406d60

	.globl xtime_nonnegative_sec
	.type xtime_nonnegative_sec, @function
xtime_nonnegative_sec:
	push	rbp
	mov	rbp, rsp
	mov	eax, 0x3b9aca00
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rax, qword ptr [rbp - 8]
	cqo	
	idiv	rcx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406d7a
	.globl sub_406d7a
	.type sub_406d7a, @function
sub_406d7a:

	nop	word ptr [rax + rax]
.label_454:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi,  qword ptr [word ptr [page_size]]
	call	ptr_align
	mov	qword ptr [word ptr [obuf]],  rax
	jmp	.label_453
	.section	.text
	.align	16
	#Procedure 0x406d9e

	.globl alloc_obuf
	.type alloc_obuf, @function
alloc_obuf:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x2c0
	cmp	qword ptr [word ptr [obuf]],  0
	je	.label_457
	jmp	.label_453
.label_456:
	call	alloc_ibuf
	mov	rax,  qword ptr [word ptr [ibuf]]
	mov	qword ptr [word ptr [obuf]],  rax
.label_453:
	add	rsp, 0x2c0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406ddb
	.globl sub_406ddb
	.type sub_406ddb, @function
sub_406ddb:

	nop	
.label_457:
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	and	eax, 0x800
	cmp	eax, 0
	je	.label_456
	mov	rax,  qword ptr [word ptr [output_blocksize]]
	mov	rcx,  qword ptr [word ptr [page_size]]
	sub	rcx, 1
	add	rax, rcx
	mov	rdi, rax
	call	malloc
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [rbp - 8], 0
	jne	.label_454
	movabs	rdi, OFFSET FLAT:label_455
	mov	rax,  qword ptr [word ptr [output_blocksize]]
	mov	qword ptr [rbp - 0x10], rax
	call	gettext
	mov	edx, 0x1f1
	mov	ecx, 1
	mov	edi, ecx
	lea	rsi, [rbp - 0x2a0]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	r8,  qword ptr [word ptr [output_blocksize]]
	mov	qword ptr [rbp - 0x2a8], rdi
	mov	rdi, r8
	mov	r8, qword ptr [rbp - 0x2a8]
	mov	qword ptr [rbp - 0x2b0], rcx
	mov	rcx, r8
	mov	qword ptr [rbp - 0x2b8], rax
	call	human_readable
	mov	edi, 1
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x2b8]
	mov	rcx, qword ptr [rbp - 0x2b0]
	mov	r8, rax
	mov	al, 0
	call	nl_error
.label_460:
	mov	byte ptr [rbp - 1], 0
.label_459:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406eae
	.globl sub_406eae
	.type sub_406eae, @function
sub_406eae:

	nop	
	.section	.text
	.align	16
	#Procedure 0x406eaf
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	sub	edi, 0x7f
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_460
	jmp	.label_458
.label_458:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_459
	.section	.text
	.align	16
	#Procedure 0x406ed0

	.globl select_plural
	.type select_plural, @function
select_plural:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], -1
	ja	.label_461
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_462
.label_461:
	mov	eax, 0xf4240
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 8]
	xor	edx, edx
	div	rcx
	add	rdx, 0xf4240
	mov	qword ptr [rbp - 0x10], rdx
.label_462:
	mov	rax, qword ptr [rbp - 0x10]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406f11
	.globl sub_406f11
	.type sub_406f11, @function
sub_406f11:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406f20

	.globl swab_buffer
	.type swab_buffer, @function
swab_buffer:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
	test	byte ptr [byte ptr [char_is_saved]],  1
	je	.label_463
	mov	al,  byte ptr [byte ptr [saved_char]]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, rcx
	add	rdx, -1
	mov	qword ptr [rbp - 0x18], rdx
	mov	byte ptr [rcx - 1], al
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rcx]
	add	rdx, 1
	mov	qword ptr [rcx], rdx
	mov	byte ptr [byte ptr [char_is_saved]],  0
.label_463:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	and	rax, 1
	cmp	rax, 0
	je	.label_464
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax]
	mov	rdx, rcx
	add	rdx, -1
	mov	qword ptr [rax], rdx
	mov	rax, qword ptr [rbp - 0x18]
	mov	sil, byte ptr [rax + rcx - 1]
	mov	byte ptr [byte ptr [saved_char]],  sil
	mov	byte ptr [byte ptr [char_is_saved]],  1
.label_464:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rcx]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	shr	rax, 1
	mov	qword ptr [rbp - 0x28], rax
.label_465:
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_466
	mov	rax, qword ptr [rbp - 0x20]
	mov	cl, byte ptr [rax - 2]
	mov	rax, qword ptr [rbp - 0x20]
	mov	byte ptr [rax], cl
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, -1
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, -2
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_465
.label_466:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407011
	.globl sub_407011
	.type sub_407011, @function
sub_407011:

	nop	word ptr cs:[rax + rax]
.label_471:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rax
.label_474:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	sub	rax, rcx
	cmp	rax, 7
	jl	.label_467
	movabs	rsi, OFFSET FLAT:label_468
	mov	eax, 7
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, -7
	mov	rdi, rcx
	call	strncmp
	cmp	eax, 0
	jne	.label_467
	movabs	rsi, OFFSET FLAT:label_470
	mov	eax, 3
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rcx
	mov	rdi, qword ptr [rbp - 0x18]
	call	strncmp
	cmp	eax, 0
	jne	.label_469
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 3
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname]],  rax
.label_469:
	jmp	.label_467
.label_467:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [program_name]],  rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname_full]],  rax
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4070d5
	.globl sub_4070d5
	.type sub_4070d5, @function
sub_4070d5:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4070dc

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_473
	movabs	rdi, OFFSET FLAT:label_472
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	dword ptr [rbp - 0x1c], eax
	call	abort
.label_473:
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 8]
	call	strrchr
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_471
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_474
	.section	.text
	.align	16
	#Procedure 0x407140

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
	#Procedure 0x40717f
	.globl sub_40717f
	.type sub_40717f, @function
sub_40717f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x407180

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
	#Procedure 0x4071be
	.globl sub_4071be
	.type sub_4071be, @function
sub_4071be:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4071c0

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
	#Procedure 0x4071e0

	.globl c_tolower
	.type c_tolower, @function
c_tolower:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_475
	jmp	.label_477
.label_477:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x41
	add	eax, 0x61
	mov	dword ptr [rbp - 4], eax
	jmp	.label_476
.label_475:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_476:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407217
	.globl sub_407217
	.type sub_407217, @function
sub_407217:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407220
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_478
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_478:
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
	#Procedure 0x40725d
	.globl sub_40725d
	.type sub_40725d, @function
sub_40725d:

	nop	dword ptr [rax]
.label_489:
	mov	edi, 1
	mov	rsi, qword ptr [rbp - 0x50]
	call	iftruncate
	cmp	eax, 0
	je	.label_505
	call	__errno_location
	mov	edi, 1
	lea	rsi, [rbp - 0xf0]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x5c], ecx
	call	fstat
	cmp	eax, 0
	je	.label_487
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_439
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x164], esi
	call	gettext
	mov	edi, 4
	mov	rsi,  qword ptr [word ptr [output_file]]
	mov	qword ptr [rbp - 0x170], rax
	call	quotearg_style
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x164]
	mov	rdx, qword ptr [rbp - 0x170]
	mov	rcx, rax
	mov	al, 0
	call	nl_error
.label_487:
	mov	eax, dword ptr [rbp - 0xd8]
	and	eax, 0xf000
	cmp	eax, 0x8000
	je	.label_480
	mov	eax, dword ptr [rbp - 0xd8]
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_480
	mov	eax, dword ptr [rbp - 0xd8]
	sub	eax, dword ptr [rbp - 0xd8]
	cmp	eax, 0
	je	.label_488
.label_480:
	movabs	rdi, OFFSET FLAT:label_491
	mov	esi, dword ptr [rbp - 0x5c]
	mov	dword ptr [rbp - 0x174], esi
	call	gettext
	mov	edi, 4
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rsi,  qword ptr [word ptr [output_file]]
	mov	qword ptr [rbp - 0x180], rax
	mov	qword ptr [rbp - 0x188], rcx
	call	quotearg_style
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x174]
	mov	rdx, qword ptr [rbp - 0x180]
	mov	rcx, qword ptr [rbp - 0x188]
	mov	r8, rax
	mov	al, 0
	call	nl_error
.label_485:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x148], rax
.label_479:
	mov	rax, qword ptr [rbp - 0x148]
	mov	qword ptr [word ptr [input_offset]],  rax
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [dword ptr [input_seek_errno]],  ecx
	cmp	qword ptr [word ptr [output_file]],  0
	jne	.label_490
	movabs	rdi, OFFSET FLAT:label_498
	call	gettext
	mov	edi, 1
	mov	qword ptr [word ptr [output_file]],  rax
	mov	esi,  dword ptr [dword ptr [output_flags]]
	mov	rdx,  qword ptr [word ptr [output_file]]
	call	set_fd_flags
	jmp	.label_484
.label_504:
	jmp	.label_493
.label_493:
	xor	edi, edi
	xor	eax, eax
	mov	esi, eax
	mov	edx, 1
	call	lseek
	xor	edx, edx
	mov	esi, edx
	mov	qword ptr [rbp - 0x40], rax
	cmp	rsi, qword ptr [rbp - 0x40]
	setle	cl
	and	cl, 1
	mov	byte ptr [byte ptr [input_seekable]],  cl
	cmp	rsi, qword ptr [rbp - 0x40]
	jle	.label_485
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x148], rcx
	jmp	.label_479
.label_490:
	mov	al, 1
	xor	ecx, ecx
	mov	edx, 0x80
	mov	esi, 0x40
	mov	dword ptr [rbp - 0x44], 0x1b6
	mov	edi,  dword ptr [dword ptr [output_flags]]
	mov	r8d,  dword ptr [dword ptr [conversions_mask]]
	and	r8d, 0x1000
	cmp	r8d, 0
	cmovne	esi, ecx
	or	edi, esi
	mov	esi,  dword ptr [dword ptr [conversions_mask]]
	and	esi, 0x2000
	cmp	esi, 0
	cmovne	ecx, edx
	or	edi, ecx
	cmp	qword ptr [word ptr [seek_records]],  0
	mov	dword ptr [rbp - 0x14c], edi
	mov	byte ptr [rbp - 0x14d], al
	jne	.label_497
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	and	eax, 0x200
	cmp	eax, 0
	setne	cl
	mov	byte ptr [rbp - 0x14d], cl
.label_497:
	mov	al, byte ptr [rbp - 0x14d]
	mov	ecx, 0x200
	xor	edx, edx
	test	al, 1
	cmovne	ecx, edx
	mov	edx, dword ptr [rbp - 0x14c]
	or	edx, ecx
	mov	dword ptr [rbp - 0x48], edx
	cmp	qword ptr [word ptr [seek_records]],  0
	je	.label_496
	mov	edi, 1
	mov	rsi,  qword ptr [word ptr [output_file]]
	mov	eax, dword ptr [rbp - 0x48]
	or	eax, 2
	mov	ecx, dword ptr [rbp - 0x44]
	mov	edx, eax
	call	ifd_reopen
	cmp	eax, 0
	jge	.label_483
.label_496:
	mov	edi, 1
	mov	rsi,  qword ptr [word ptr [output_file]]
	mov	eax, dword ptr [rbp - 0x48]
	or	eax, 1
	mov	ecx, dword ptr [rbp - 0x44]
	mov	edx, eax
	call	ifd_reopen
	cmp	eax, 0
	jge	.label_483
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_492
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x154], esi
	call	gettext
	mov	edi, 4
	mov	rsi,  qword ptr [word ptr [output_file]]
	mov	qword ptr [rbp - 0x160], rax
	call	quotearg_style
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x154]
	mov	rdx, qword ptr [rbp - 0x160]
	mov	rcx, rax
	mov	al, 0
	call	nl_error
.label_507:
	xor	eax, eax
	mov	rsi,  qword ptr [word ptr [input_file]]
	mov	ecx,  dword ptr [dword ptr [input_flags]]
	or	ecx, 0
	mov	edi, eax
	mov	edx, ecx
	mov	ecx, eax
	call	ifd_reopen
	cmp	eax, 0
	jge	.label_504
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_492
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x134], esi
	call	gettext
	mov	edi, 4
	mov	rsi,  qword ptr [word ptr [input_file]]
	mov	qword ptr [rbp - 0x140], rax
	call	quotearg_style
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x134]
	mov	rdx, qword ptr [rbp - 0x140]
	mov	rcx, rax
	mov	al, 0
	call	nl_error
.label_494:
	test	byte ptr [byte ptr [i_nocache]],  1
	jne	.label_506
	test	byte ptr [byte ptr [i_nocache_eof]],  1
	je	.label_499
.label_506:
	xor	edi, edi
	xor	eax, eax
	mov	esi, eax
	call	invalidate_cache
	mov	byte ptr [rbp - 0x1a9], al
.label_499:
	test	byte ptr [byte ptr [o_nocache]],  1
	jne	.label_481
	test	byte ptr [byte ptr [o_nocache_eof]],  1
	je	.label_495
.label_481:
	mov	edi, 1
	xor	eax, eax
	mov	esi, eax
	call	invalidate_cache
	mov	byte ptr [rbp - 0x1aa], al
.label_495:
	jmp	.label_500
.label_500:
	call	finish_up
	mov	eax, dword ptr [rbp - 0x38]
	add	rsp, 0x1c0
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407678
	.globl sub_407678
	.type sub_407678, @function
sub_407678:

	nop	dword ptr [rax]
.label_488:
	jmp	.label_505
.label_505:
	jmp	.label_482
.label_482:
	jmp	.label_484
.label_484:
	call	gethrxtime
	mov	qword ptr [word ptr [start_time]],  rax
	mov	rax,  qword ptr [word ptr [start_time]]
	add	rax, 0x3b9aca00
	mov	qword ptr [word ptr [next_time]],  rax
	call	dd_copy
	mov	dword ptr [rbp - 0x38], eax
	cmp	qword ptr [word ptr [max_records]],  0
	jne	.label_494
	cmp	qword ptr [word ptr [max_bytes]],  0
	jne	.label_494
	test	byte ptr [byte ptr [i_nocache]],  1
	je	.label_503
	xor	edi, edi
	xor	eax, eax
	mov	esi, eax
	call	invalidate_cache
	test	al, 1
	jne	.label_503
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_502
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x18c], esi
	call	gettext
	xor	edi, edi
	mov	esi, 3
	mov	rdx,  qword ptr [word ptr [input_file]]
	mov	qword ptr [rbp - 0x198], rax
	call	quotearg_n_style_colon
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x18c]
	mov	rdx, qword ptr [rbp - 0x198]
	mov	rcx, rax
	mov	al, 0
	call	nl_error
	mov	dword ptr [rbp - 0x38], 1
.label_503:
	test	byte ptr [byte ptr [o_nocache]],  1
	je	.label_501
	mov	edi, 1
	xor	eax, eax
	mov	esi, eax
	call	invalidate_cache
	test	al, 1
	jne	.label_501
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_502
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x19c], esi
	call	gettext
	xor	edi, edi
	mov	esi, 3
	mov	rdx,  qword ptr [word ptr [output_file]]
	mov	qword ptr [rbp - 0x1a8], rax
	call	quotearg_n_style_colon
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x19c]
	mov	rdx, qword ptr [rbp - 0x1a8]
	mov	rcx, rax
	mov	al, 0
	call	nl_error
	mov	dword ptr [rbp - 0x38], 1
.label_501:
	jmp	.label_500
.label_509:
	mov	edi, dword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x30]
	call	scanargs
	call	apply_translations
	cmp	qword ptr [word ptr [input_file]],  0
	jne	.label_507
	movabs	rdi, OFFSET FLAT:label_510
	call	gettext
	xor	edi, edi
	mov	qword ptr [word ptr [input_file]],  rax
	mov	esi,  dword ptr [dword ptr [input_flags]]
	mov	rdx,  qword ptr [word ptr [input_file]]
	call	set_fd_flags
	jmp	.label_493
.label_483:
	cmp	qword ptr [word ptr [seek_records]],  0
	je	.label_482
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	and	eax, 0x200
	cmp	eax, 0
	jne	.label_482
	movabs	rax, 0x7fffffffffffffff
	mov	rcx,  qword ptr [word ptr [seek_records]]
	imul	rcx,  qword ptr [word ptr [output_blocksize]]
	add	rcx,  qword ptr [word ptr [seek_bytes]]
	mov	qword ptr [rbp - 0x50], rcx
	mov	rcx,  qword ptr [word ptr [output_blocksize]]
	mov	qword ptr [rbp - 0x58], rcx
	xor	edx, edx
	div	qword ptr [word ptr [output_blocksize]]
	cmp	rax,  qword ptr [word ptr [seek_records]]
	jae	.label_489
	movabs	rdi, OFFSET FLAT:label_486
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rcx,  qword ptr [word ptr [seek_records]]
	mov	r8, qword ptr [rbp - 0x58]
	mov	rdx, rax
	mov	al, 0
	call	nl_error
	.section	.text
	.align	16
	#Procedure 0x4078bc

	.globl main
	.type main, @function
main:
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x1c0
	mov	dword ptr [rbp - 0x24], 0
	mov	dword ptr [rbp - 0x28], edi
	mov	qword ptr [rbp - 0x30], rsi
	call	install_signal_handlers
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdi, qword ptr [rsi]
	call	set_program_name
	mov	edi, 6
	movabs	rsi, OFFSET FLAT:label_24
	call	setlocale
	movabs	rdi, OFFSET FLAT:label_508
	movabs	rsi, OFFSET FLAT:label_511
	mov	qword ptr [rbp - 0xf8], rax
	call	bindtextdomain
	movabs	rdi, OFFSET FLAT:label_508
	mov	qword ptr [rbp - 0x100], rax
	call	textdomain
	movabs	rdi, OFFSET FLAT:maybe_close_stdout
	mov	qword ptr [rbp - 0x108], rax
	call	atexit
	mov	dword ptr [rbp - 0x10c], eax
	call	getpagesize
	movabs	rdx, OFFSET FLAT:label_174
	movabs	rcx, OFFSET FLAT:label_508
	mov	r9d, 1
	movabs	rsi, OFFSET FLAT:usage
	movabs	rdi, OFFSET FLAT:label_513
	movabs	r8, OFFSET FLAT:label_514
	movabs	r10, OFFSET FLAT:label_515
	xor	r11d, r11d
	mov	ebx, r11d
	movsxd	r14, eax
	mov	qword ptr [word ptr [page_size]],  r14
	mov	eax, dword ptr [rbp - 0x28]
	mov	r14, qword ptr [rbp - 0x30]
	mov	r15,  qword ptr [word ptr [Version]]
	mov	qword ptr [rbp - 0x118], rdi
	mov	edi, eax
	mov	qword ptr [rbp - 0x120], rsi
	mov	rsi, r14
	mov	qword ptr [rbp - 0x128], r8
	mov	r8, r15
	mov	r14, qword ptr [rbp - 0x120]
	mov	qword ptr [rsp], r14
	mov	r15, qword ptr [rbp - 0x118]
	mov	qword ptr [rsp + 8], r15
	mov	r12, qword ptr [rbp - 0x128]
	mov	qword ptr [rsp + 0x10], r12
	mov	qword ptr [rsp + 0x18], r10
	mov	qword ptr [rsp + 0x20], 0
	mov	al, 0
	mov	qword ptr [rbp - 0x130], rbx
	call	parse_gnu_standard_options_only
	mov	byte ptr [byte ptr [close_stdout_required]],  0
	mov	dword ptr [rbp - 0x34], 0
.label_512:
	cmp	dword ptr [rbp - 0x34], 0x100
	jge	.label_509
	mov	eax, dword ptr [rbp - 0x34]
	mov	cl, al
	movsxd	rdx, dword ptr [rbp - 0x34]
	mov	byte ptr [byte ptr [+ (rdx * 1) + trans_table]],  cl
	mov	eax, dword ptr [rbp - 0x34]
	add	eax, 1
	mov	dword ptr [rbp - 0x34], eax
	jmp	.label_512
.label_520:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x20]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x20], rcx
	jmp	.label_516
.label_518:
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_520
	jmp	.label_519
	.section	.text
	.align	16
	#Procedure 0x407a8c

	.globl iread_fullblock
	.type iread_fullblock, @function
iread_fullblock:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	dword ptr [rbp - 0xc], edi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], 0
.label_516:
	xor	eax, eax
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x20]
	jae	.label_519
	mov	edi, dword ptr [rbp - 0xc]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	call	iread
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 0
	jge	.label_518
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_517
.label_519:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
.label_517:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407af3
	.globl sub_407af3
	.type sub_407af3, @function
sub_407af3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407b00

	.globl gethrxtime
	.type gethrxtime, @function
gethrxtime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	edi, 1
	lea	rsi, [rbp - 0x18]
	call	clock_gettime
	cmp	eax, 0
	jne	.label_521
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x10]
	call	xtime_make
	mov	qword ptr [rbp - 8], rax
	jmp	.label_522
.label_521:
	lea	rdi, [rbp - 0x28]
	call	gettime
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x20]
	call	xtime_make
	mov	qword ptr [rbp - 8], rax
.label_522:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407b59
	.globl sub_407b59
	.type sub_407b59, @function
sub_407b59:

	nop	dword ptr [rax]
.label_528:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	call	rpl_fcntl_DUPFD
	mov	dword ptr [rbp - 0xc], eax
.label_530:
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0xc]
	jg	.label_523
	cmp	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	jne	.label_523
	mov	esi, 1
	mov	edi, dword ptr [rbp - 0xc]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x10], eax
	cmp	dword ptr [rbp - 0x10], 0
	jl	.label_524
	mov	esi, 2
	mov	edi, dword ptr [rbp - 0xc]
	mov	eax, dword ptr [rbp - 0x10]
	or	eax, 1
	mov	edx, eax
	mov	al, 0
	call	fcntl
	cmp	eax, -1
	jne	.label_525
.label_524:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], ecx
	mov	edi, dword ptr [rbp - 0xc]
	call	close
	mov	ecx, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x18], eax
	mov	dword ptr [rbp - 0x1c], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x1c]
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 0xc], 0xffffffff
.label_525:
	jmp	.label_523
.label_523:
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407bfd
	.globl sub_407bfd
	.type sub_407bfd, @function
sub_407bfd:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407c08

	.globl rpl_fcntl_DUPFD_CLOEXEC
	.type rpl_fcntl_DUPFD_CLOEXEC, @function
rpl_fcntl_DUPFD_CLOEXEC:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	cmp	eax,  dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]]
	jg	.label_528
	mov	esi, 0x406
	mov	edi, dword ptr [rbp - 4]
	mov	edx, dword ptr [rbp - 8]
	mov	al, 0
	call	fcntl
	xor	edx, edx
	mov	dword ptr [rbp - 0xc], eax
	cmp	edx, dword ptr [rbp - 0xc]
	jle	.label_527
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	je	.label_529
.label_527:
	mov	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_526
.label_529:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	call	rpl_fcntl_DUPFD
	mov	dword ptr [rbp - 0xc], eax
	cmp	dword ptr [rbp - 0xc], 0
	jl	.label_531
	mov	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
.label_531:
	jmp	.label_526
.label_526:
	jmp	.label_530
.label_533:
	mov	byte ptr [rbp - 1], 0
.label_534:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407c9e
	.globl sub_407c9e
	.type sub_407c9e, @function
sub_407c9e:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407cac
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x21
	sub	edi, 0x5d
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_533
	jmp	.label_532
.label_532:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_534
	.section	.text
	.align	16
	#Procedure 0x407cd0
	.globl xtime_nsec
	.type xtime_nsec, @function
xtime_nsec:

	push	rbp
	mov	rbp, rsp
	mov	eax, 0x3b9aca00
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rax, qword ptr [rbp - 8]
	cqo	
	idiv	rcx
	mov	qword ptr [rbp - 0x10], rdx
	cmp	qword ptr [rbp - 0x10], 0
	jge	.label_535
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x3b9aca00
	mov	qword ptr [rbp - 0x10], rax
.label_535:
	mov	rax, qword ptr [rbp - 0x10]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407d0b
	.globl sub_407d0b
	.type sub_407d0b, @function
sub_407d0b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407d10

	.globl iftruncate
	.type iftruncate, @function
iftruncate:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
.label_537:
	call	process_signals
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	call	ftruncate
	mov	dword ptr [rbp - 0x14], eax
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [rbp - 0x14], 0
	mov	byte ptr [rbp - 0x15], cl
	jge	.label_536
	call	__errno_location
	cmp	dword ptr [rax], 4
	sete	cl
	mov	byte ptr [rbp - 0x15], cl
.label_536:
	mov	al, byte ptr [rbp - 0x15]
	test	al, 1
	jne	.label_537
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407d66
	.globl sub_407d66
	.type sub_407d66, @function
sub_407d66:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407d70

	.globl quit
	.type quit, @function
quit:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 4], edi
	call	finish_up
	mov	edi, dword ptr [rbp - 4]
	call	exit
	.section	.text
	.align	16
	#Procedure 0x407d88
	.globl sub_407d88
	.type sub_407d88, @function
sub_407d88:

	nop	dword ptr [rax + rax]
.label_538:
	mov	byte ptr [rbp - 1], 0
.label_541:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407d9e
	.globl sub_407d9e
	.type sub_407d9e, @function
sub_407d9e:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407da3
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
	jb	.label_539
	jmp	.label_540
.label_540:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x20
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_538
	jmp	.label_539
.label_539:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_541
.label_557:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x48], rcx
	jmp	.label_549
.label_549:
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x38], rax
	cmp	dword ptr [rbp - 8], 0
	jne	.label_552
	test	byte ptr [byte ptr [input_seekable]],  1
	je	.label_560
	mov	rax,  qword ptr [word ptr [input_offset]]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_551
.label_559:
	mov	al,  byte ptr [byte ptr [o_nocache_eof]]
	and	al, 1
	movzx	ecx, al
	mov	dword ptr [rbp - 0x3c], ecx
.label_554:
	mov	eax, dword ptr [rbp - 0x3c]
	cmp	eax, 0
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x21], cl
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	cache_round
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_550
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_550
	mov	byte ptr [rbp - 1], 1
	jmp	.label_555
.label_553:
	jmp	.label_556
.label_556:
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_557
	xor	eax, eax
	mov	esi, eax
	mov	edi, dword ptr [rbp - 8]
	call	cache_round
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_549
.label_550:
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_553
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_553
	test	byte ptr [rbp - 0x21], 1
	jne	.label_553
	mov	byte ptr [rbp - 1], 1
	jmp	.label_555
.label_544:
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_548
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, qword ptr [rbp - 0x38]
	add	rax,  qword ptr [word ptr [invalidate_cache.output_offset]]
	mov	qword ptr [word ptr [invalidate_cache.output_offset]],  rax
.label_548:
	jmp	.label_547
.label_547:
	jmp	.label_543
.label_543:
	mov	rax,  qword ptr [word ptr [invalidate_cache.output_offset]]
	mov	qword ptr [rbp - 0x20], rax
.label_558:
	xor	eax, eax
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x20]
	jg	.label_546
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_542
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_542
	test	byte ptr [rbp - 0x21], 1
	je	.label_542
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x38], rax
	mov	qword ptr [rbp - 0x30], 0
.label_542:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, qword ptr [rbp - 0x30]
	sub	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_545
	mov	rax, qword ptr [rbp - 0x20]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [word ptr [page_size]]
	mov	rsi, qword ptr [rbp - 0x20]
	sub	rsi, rdx
	mov	qword ptr [rbp - 0x20], rsi
.label_545:
	mov	ecx, 4
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x30]
	call	posix_fadvise
	mov	dword ptr [rbp - 0x14], eax
.label_546:
	xor	eax, eax
	mov	ecx, 1
	cmp	dword ptr [rbp - 0x14], -1
	cmovne	eax, ecx
	cmp	eax, 0
	setne	dl
	and	dl, 1
	mov	byte ptr [rbp - 1], dl
.label_555:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407fa6
	.globl sub_407fa6
	.type sub_407fa6, @function
sub_407fa6:

	nop	
.label_552:
	cmp	qword ptr [word ptr [invalidate_cache.output_offset]],  -1
	je	.label_543
	cmp	qword ptr [word ptr [invalidate_cache.output_offset]],  0
	jge	.label_544
	xor	eax, eax
	mov	esi, eax
	mov	edx, 1
	mov	edi, dword ptr [rbp - 8]
	call	lseek
	mov	qword ptr [word ptr [invalidate_cache.output_offset]],  rax
	jmp	.label_547
.label_560:
	mov	qword ptr [rbp - 0x20], -1
	call	__errno_location
	mov	dword ptr [rax], 0x1d
.label_551:
	jmp	.label_558
	.section	.text
	.align	16
	#Procedure 0x407ffc

	.globl invalidate_cache
	.type invalidate_cache, @function
invalidate_cache:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x14], 0xffffffff
	cmp	dword ptr [rbp - 8], 0
	jne	.label_559
	mov	al,  byte ptr [byte ptr [i_nocache_eof]]
	and	al, 1
	movzx	ecx, al
	mov	dword ptr [rbp - 0x3c], ecx
	jmp	.label_554
	.section	.text
	.align	16
	#Procedure 0x408030

	.globl siginfo_handler
	.type siginfo_handler, @function
siginfo_handler:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 4], edi
	mov	edi,  dword ptr [dword ptr [info_signal_count]]
	add	edi, 1
	mov	dword ptr [dword ptr [info_signal_count]],  edi
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40804a
	.globl sub_40804a
	.type sub_40804a, @function
sub_40804a:

	nop	word ptr [rax + rax]
.label_569:
	mov	byte ptr [byte ptr [translation_needed]],  1
	jmp	.label_561
	.section	.text
	.align	16
	#Procedure 0x40805d

	.globl apply_translations
	.type apply_translations, @function
apply_translations:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	and	eax, 1
	cmp	eax, 0
	je	.label_571
	movabs	rdi, OFFSET FLAT:ebcdic_to_ascii
	call	translate_charset
.label_571:
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	and	eax, 0x40
	cmp	eax, 0
	je	.label_570
	mov	dword ptr [rbp - 4], 0
.label_575:
	cmp	dword ptr [rbp - 4], 0x100
	jge	.label_569
	movsxd	rax, dword ptr [rbp - 4]
	movzx	edi,  byte ptr [byte ptr [+ (rax * 1) + trans_table]]
	call	toupper
	mov	cl, al
	movsxd	rdx, dword ptr [rbp - 4]
	mov	byte ptr [byte ptr [+ (rdx * 1) + trans_table]],  cl
	mov	eax, dword ptr [rbp - 4]
	add	eax, 1
	mov	dword ptr [rbp - 4], eax
	jmp	.label_575
.label_570:
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	and	eax, 0x20
	cmp	eax, 0
	je	.label_574
	mov	dword ptr [rbp - 4], 0
.label_572:
	cmp	dword ptr [rbp - 4], 0x100
	jge	.label_573
	movsxd	rax, dword ptr [rbp - 4]
	movzx	edi,  byte ptr [byte ptr [+ (rax * 1) + trans_table]]
	call	tolower
	mov	cl, al
	movsxd	rdx, dword ptr [rbp - 4]
	mov	byte ptr [byte ptr [+ (rdx * 1) + trans_table]],  cl
	mov	eax, dword ptr [rbp - 4]
	add	eax, 1
	mov	dword ptr [rbp - 4], eax
	jmp	.label_572
.label_567:
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	and	eax, 4
	cmp	eax, 0
	je	.label_568
	movabs	rdi, OFFSET FLAT:ascii_to_ibm
	call	translate_charset
	mov	al,  byte ptr [byte ptr [label_562]]
	mov	byte ptr [byte ptr [newline_character]],  al
	mov	al,  byte ptr [byte ptr [label_563]]
	mov	byte ptr [byte ptr [space_character]],  al
.label_568:
	jmp	.label_566
.label_566:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408176
	.globl sub_408176
	.type sub_408176, @function
sub_408176:

	nop	word ptr cs:[rax + rax]
.label_573:
	mov	byte ptr [byte ptr [translation_needed]],  1
.label_574:
	jmp	.label_561
.label_561:
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	and	eax, 2
	cmp	eax, 0
	je	.label_567
	movabs	rdi, OFFSET FLAT:ascii_to_ebcdic
	call	translate_charset
	mov	al,  byte ptr [byte ptr [label_564]]
	mov	byte ptr [byte ptr [newline_character]],  al
	mov	al,  byte ptr [byte ptr [label_565]]
	mov	byte ptr [byte ptr [space_character]],  al
	jmp	.label_566
	.section	.text
	.align	16
	#Procedure 0x4081d0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_576
	call	gettext
	movabs	rsi, OFFSET FLAT:label_578
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_577
	mov	dword ptr [rbp - 4], eax
	call	gettext
	movabs	rsi, OFFSET FLAT:label_580
	movabs	rdx, OFFSET FLAT:label_581
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_579
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
	#Procedure 0x408256
	.globl sub_408256
	.type sub_408256, @function
sub_408256:

	nop	
	nop	dword ptr [rax + rax]
.label_586:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_582
.label_583:
	mov	qword ptr [rbp - 8], 0
	jmp	.label_588
.label_589:
	mov	rax, qword ptr [rbp - 0x30]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x25
	je	.label_584
	jmp	.label_585
	.section	.text
	.align	16
	#Procedure 0x40829f

	.globl xvasprintf
	.type xvasprintf, @function
xvasprintf:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x28], 0
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x30], rsi
.label_582:
	mov	rax, qword ptr [rbp - 0x30]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_589
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x18]
	call	xstrcat
	mov	qword ptr [rbp - 8], rax
	jmp	.label_588
.label_587:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_588:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4082f7
	.globl sub_4082f7
	.type sub_4082f7, @function
sub_4082f7:

	nop	word ptr cs:[rax + rax]
.label_585:
	lea	rdi, [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	vasprintf
	cmp	eax, 0
	jge	.label_587
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	jne	.label_583
	call	xalloc_die
.label_584:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x30]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x73
	je	.label_586
	jmp	.label_585
.label_594:
	mov	rdi, qword ptr [rbp - 0x7e0]
	call	abbreviation_lacks_prefix
	test	al, 1
	jne	.label_604
	jmp	.label_602
.label_604:
	movabs	rdi, OFFSET FLAT:label_606
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x888], rax
	call	gettext
	lea	r8, [rbp - 0x820]
	mov	rdx,  qword ptr [word ptr [w_bytes]]
	mov	rcx, qword ptr [rbp - 0x7d8]
	mov	r9, qword ptr [rbp - 0x7d0]
	mov	rdi, qword ptr [rbp - 0x888]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x88c], eax
	jmp	.label_614
	.section	.text
	.align	16
	#Procedure 0x4083c0

	.globl print_xfer_stats
	.type print_xfer_stats, @function
print_xfer_stats:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x8b0
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	je	.label_590
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x830], rax
	jmp	.label_597
.label_602:
	movabs	rdi, OFFSET FLAT:label_613
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x898], rax
	call	gettext
	lea	r9, [rbp - 0x820]
	mov	rdx,  qword ptr [word ptr [w_bytes]]
	mov	rcx, qword ptr [rbp - 0x7d8]
	mov	r8, qword ptr [rbp - 0x7e0]
	mov	rdi, qword ptr [rbp - 0x7d0]
	mov	rsi, qword ptr [rbp - 0x898]
	mov	qword ptr [rbp - 0x8a0], rdi
	mov	rdi, rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0x8a0]
	mov	qword ptr [rsp], rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x88c], eax
.label_614:
	mov	eax, dword ptr [rbp - 0x88c]
	mov	dword ptr [rbp - 0x87c], eax
.label_609:
	mov	eax, dword ptr [rbp - 0x87c]
	mov	dword ptr [rbp - 0x824], eax
	cmp	qword ptr [rbp - 8], 0
	je	.label_596
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0x824]
	jg	.label_592
	mov	eax, dword ptr [rbp - 0x824]
	cmp	eax,  dword ptr [dword ptr [progress_len]]
	jge	.label_592
	movabs	rsi, OFFSET FLAT:label_593
	movabs	rcx, OFFSET FLAT:label_24
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	eax,  dword ptr [dword ptr [progress_len]]
	sub	eax, dword ptr [rbp - 0x824]
	mov	edx, eax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x8a4], eax
.label_592:
	mov	eax, dword ptr [rbp - 0x824]
	mov	dword ptr [dword ptr [progress_len]],  eax
	jmp	.label_612
.label_596:
	mov	edi, 0xa
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputc_unlocked
	mov	dword ptr [rbp - 0x8a8], eax
.label_612:
	add	rsp, 0x8b0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408507
	.globl sub_408507
	.type sub_408507, @function
sub_408507:

	nop	dword ptr [rax + rax]
.label_590:
	call	gethrxtime
	mov	qword ptr [rbp - 0x830], rax
.label_597:
	mov	rax, qword ptr [rbp - 0x830]
	mov	edx, 0x1d1
	mov	ecx, 1
	mov	esi, ecx
	lea	rdi, [rbp - 0x7c0]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax,  qword ptr [word ptr [w_bytes]]
	mov	qword ptr [rbp - 0x838], rdi
	mov	rdi, rax
	mov	rax, qword ptr [rbp - 0x838]
	mov	qword ptr [rbp - 0x840], rsi
	mov	rsi, rax
	mov	rcx, qword ptr [rbp - 0x840]
	mov	r8, qword ptr [rbp - 0x840]
	call	human_readable
	mov	edx, 0x1f1
	mov	r9d, 1
	mov	ecx, r9d
	lea	rsi, [rbp - 0x7c0]
	mov	qword ptr [rbp - 0x7d8], rax
	mov	rdi,  qword ptr [word ptr [w_bytes]]
	add	rsi, 0x28e
	mov	qword ptr [rbp - 0x848], rcx
	mov	r8, qword ptr [rbp - 0x848]
	call	human_readable
	lea	rcx, [rbp - 0x7c0]
	mov	qword ptr [rbp - 0x7e0], rax
	add	rcx, 0x51c
	mov	qword ptr [rbp - 0x7e8], rcx
	mov	dword ptr [rbp - 0x7ec], 0x28e
	mov	rax,  qword ptr [word ptr [start_time]]
	cmp	rax, qword ptr [rbp - 0x10]
	jge	.label_605
	mov	edx, 0x1d1
	mov	eax, 0x3b9aca00
	mov	ecx, eax
	movabs	rsi, 0x41cdcd6500000000
	mov	qword ptr [rbp - 0x7f8], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x800], rsi
	mov	rdi,  qword ptr [word ptr [rip + start_time]]
	sub	rsi, rdi
	mov	qword ptr [rbp - 0x800], rsi
	movq	xmm0, rsi
	movaps	xmm1,  xmmword ptr [word ptr [rip + label_600]]
	punpckldq	xmm0, xmm1
	movapd	xmm1,  xmmword ptr [word ptr [rip + label_601]]
	subpd	xmm0, xmm1
	pshufd	xmm1, xmm0, 0x4e
	addpd	xmm1, xmm0
	divsd	xmm1, qword ptr [rbp - 0x7f8]
	movsd	qword ptr [rbp - 0x7c8], xmm1
	mov	rdi,  qword ptr [word ptr [w_bytes]]
	mov	rsi, qword ptr [rbp - 0x7e8]
	mov	r8, qword ptr [rbp - 0x800]
	call	human_readable
	movabs	rsi, OFFSET FLAT:print_xfer_stats.slash_s
	mov	qword ptr [rbp - 0x7d0], rax
	mov	rax, qword ptr [rbp - 0x7d0]
	mov	rcx, qword ptr [rbp - 0x7e8]
	sub	rax, rcx
	add	rax, qword ptr [rbp - 0x7e8]
	mov	rdi, rax
	call	strcat
	mov	qword ptr [rbp - 0x850], rax
	jmp	.label_598
.label_605:
	movabs	rdi, OFFSET FLAT:label_603
	xorps	xmm0, xmm0
	movsd	qword ptr [rbp - 0x7c8], xmm0
	mov	rax, qword ptr [rbp - 0x7e8]
	movsxd	rsi, dword ptr [rbp - 0x7ec]
	mov	qword ptr [rbp - 0x858], rsi
	mov	qword ptr [rbp - 0x860], rax
	call	gettext
	movabs	rdx, OFFSET FLAT:label_599
	mov	rdi, qword ptr [rbp - 0x860]
	mov	rsi, qword ptr [rbp - 0x858]
	mov	rcx, rax
	mov	al, 0
	call	snprintf
	mov	rcx, qword ptr [rbp - 0x7e8]
	mov	qword ptr [rbp - 0x7d0], rcx
	mov	dword ptr [rbp - 0x864], eax
.label_598:
	cmp	qword ptr [rbp - 8], 0
	je	.label_595
	mov	edi, 0xd
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputc_unlocked
	mov	dword ptr [rbp - 0x868], eax
.label_595:
	mov	eax, 0x18
	mov	esi, eax
	movabs	rcx, OFFSET FLAT:label_610
	movabs	rdx, OFFSET FLAT:label_611
	lea	rdi, [rbp - 0x820]
	cmp	qword ptr [rbp - 8], 0
	cmovne	rcx, rdx
	movsd	xmm0, qword ptr [rbp - 0x7c8]
	mov	rdx, rcx
	mov	al, 1
	call	snprintf
	mov	rdi, qword ptr [rbp - 0x7d8]
	mov	dword ptr [rbp - 0x86c], eax
	call	abbreviation_lacks_prefix
	test	al, 1
	jne	.label_591
	jmp	.label_594
.label_591:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rax,  qword ptr [word ptr [w_bytes]]
	mov	qword ptr [rbp - 0x878], rdi
	mov	rdi, rax
	call	select_plural
	movabs	rdi, OFFSET FLAT:label_607
	movabs	rsi, OFFSET FLAT:label_608
	mov	rdx, rax
	call	ngettext
	lea	rcx, [rbp - 0x820]
	mov	rdx,  qword ptr [word ptr [w_bytes]]
	mov	r8, qword ptr [rbp - 0x7d0]
	mov	rdi, qword ptr [rbp - 0x878]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x87c], eax
	jmp	.label_609
.label_623:
	cmp	dword ptr [rbp - 0x2c], 0
	je	.label_615
	mov	eax, dword ptr [rbp - 0x2c]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	dword ptr [rcx], eax
	mov	qword ptr [rbp - 8], 0
	jmp	.label_618
.label_621:
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_616
	movabs	rsi, OFFSET FLAT:label_622
	mov	eax, 2
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x10]
	call	strncmp
	cmp	eax, 0
	jne	.label_616
	movabs	rdi, OFFSET FLAT:label_619
	call	gettext
	xor	edi, edi
	movabs	rsi, OFFSET FLAT:label_622
	mov	qword ptr [rbp - 0x40], rax
	call	quote_n
	mov	edi, 1
	movabs	rsi, OFFSET FLAT:label_620
	mov	qword ptr [rbp - 0x48], rax
	call	quote_n
	xor	edi, edi
	mov	dword ptr [rbp - 0x4c], edi
	mov	esi, dword ptr [rbp - 0x4c]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	r8, rax
	mov	al, 0
	call	nl_error
.label_616:
	mov	rax, qword ptr [rbp - 0x38]
	imul	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_617
.label_615:
	jmp	.label_617
.label_617:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_618:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4088cd
	.globl sub_4088cd
	.type sub_4088cd, @function
sub_4088cd:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4088db

	.globl parse_integer
	.type parse_integer, @function
parse_integer:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	lea	rax, [rbp - 0x28]
	mov	edx, 0xa
	lea	rcx, [rbp - 0x20]
	movabs	r8, OFFSET FLAT:label_624
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, rax
	call	xstrtoumax
	mov	dword ptr [rbp - 0x2c], eax
	cmp	dword ptr [rbp - 0x2c], 2
	jne	.label_623
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x78
	jne	.label_623
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	parse_integer
	mov	qword ptr [rbp - 0x38], rax
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_621
	mov	rax, qword ptr [rbp - 0x20]
	imul	rax, qword ptr [rbp - 0x38]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x20]
	je	.label_621
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax], 1
	mov	qword ptr [rbp - 8], 0
	jmp	.label_618
	.section	.text
	.align	16
	#Procedure 0x408980

	.globl abbreviation_lacks_prefix
	.type abbreviation_lacks_prefix, @function
abbreviation_lacks_prefix:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	strlen
	sub	rax, 2
	mov	rdi, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rdi + rax]
	cmp	ecx, 0x20
	sete	dl
	and	dl, 1
	movzx	eax, dl
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4089b3
	.globl sub_4089b3
	.type sub_4089b3, @function
sub_4089b3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4089c0

	.globl verror_at_line
	.type verror_at_line, @function
verror_at_line:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	qword ptr [rbp - 0x10], rdx
	mov	dword ptr [rbp - 0x14], ecx
	mov	qword ptr [rbp - 0x20], r8
	mov	qword ptr [rbp - 0x28], r9
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x28]
	call	xvasprintf
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_628
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_630
	movabs	r8, OFFSET FLAT:label_625
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rbp - 0x14]
	mov	r9, qword ptr [rbp - 0x30]
	mov	al, 0
	call	error_at_line
	jmp	.label_626
.label_629:
	mov	rdi, qword ptr [rbp - 0x30]
	call	free
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408a3a
	.globl sub_408a3a
	.type sub_408a3a, @function
sub_408a3a:

	nop	word ptr [rax + rax]
.label_628:
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_627
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x34], esi
	call	gettext
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x34]
	mov	rdx, rax
	mov	al, 0
	call	error
	call	abort
.label_630:
	movabs	rdx, OFFSET FLAT:label_625
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	al, 0
	call	error
.label_626:
	jmp	.label_629
	.section	.text
	.align	16
	#Procedure 0x408a90
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
	#Procedure 0x408ac6
	.globl sub_408ac6
	.type sub_408ac6, @function
sub_408ac6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408ad0

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
	.section	.text
	.align	16
	#Procedure 0x408ae0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_631
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	jne	.label_632
.label_631:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
	jmp	.label_633
.label_632:
	mov	rdi, qword ptr [rbp - 0x10]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
.label_633:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408b38
	.globl sub_408b38
	.type sub_408b38, @function
sub_408b38:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408b40

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_634
	mov	eax,  dword ptr [dword ptr [exit_failure]]
	mov	dword ptr [rbp - 4], eax
	call	gettext
	xor	esi, esi
	movabs	rdx, OFFSET FLAT:label_625
	mov	edi, dword ptr [rbp - 4]
	mov	rcx, rax
	mov	al, 0
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x408b7f
	.globl sub_408b7f
	.type sub_408b7f, @function
sub_408b7f:

	nop	
.label_635:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x28], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x30], rax
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408b9e

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
	jne	.label_637
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_637:
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 0xa
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_636
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_635
.label_636:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x408bf0

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
	je	.label_638
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_639
.label_638:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_639
.label_639:
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
	#Procedure 0x408c92
	.globl sub_408c92
	.type sub_408c92, @function
sub_408c92:

	nop	word ptr cs:[rax + rax]
.label_642:
	mov	byte ptr [rbp - 1], 0
.label_640:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408cae
	.globl sub_408cae
	.type sub_408cae, @function
sub_408cae:

	nop	word ptr cs:[rax + rax]
.label_1373:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_640
	.section	.text
	.align	16
	#Procedure 0x408cc6
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
	ja	.label_642
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_641]]
	jmp	rcx
	.section	.text
	.align	16
	#Procedure 0x408cf0

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
	jne	.label_643
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_645
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
.label_645:
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_644
	call	xalloc_die
.label_647:
	mov	rax, qword ptr [rbp - 0x20]
	shr	rax, 1
	add	rax, 1
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_646:
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
	#Procedure 0x408db1
	.globl sub_408db1
	.type sub_408db1, @function
sub_408db1:

	nop	word ptr [rax + rax]
.label_643:
	movabs	rax, 0x5555555555555554
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_647
	call	xalloc_die
.label_644:
	jmp	.label_646
	.section	.text
	.align	16
	#Procedure 0x408de0

	.globl iread
	.type iread, @function
iread:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
.label_652:
	call	process_signals
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	read
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], -1
	jne	.label_649
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_649
	xor	eax, eax
	mov	ecx, eax
	cmp	rcx,  qword ptr [word ptr [iread.prev_nread]]
	jge	.label_649
	mov	rax,  qword ptr [word ptr [iread.prev_nread]]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_649
	mov	eax,  dword ptr [dword ptr [input_flags]]
	and	eax, 0x4000
	cmp	eax, 0
	je	.label_649
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	qword ptr [rbp - 0x20], 0
.label_649:
	jmp	.label_654
.label_654:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x20], 0
	mov	byte ptr [rbp - 0x29], cl
	jge	.label_656
	call	__errno_location
	cmp	dword ptr [rax], 4
	sete	cl
	mov	byte ptr [rbp - 0x29], cl
.label_656:
	mov	al, byte ptr [rbp - 0x29]
	test	al, 1
	jne	.label_652
	xor	eax, eax
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x20]
	jge	.label_653
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_653
	call	process_signals
.label_653:
	xor	eax, eax
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x20]
	jge	.label_648
	test	byte ptr [byte ptr [warn_partial_read]],  1
	je	.label_648
	xor	eax, eax
	mov	ecx, eax
	cmp	rcx,  qword ptr [word ptr [iread.prev_nread]]
	jge	.label_655
	mov	rax,  qword ptr [word ptr [iread.prev_nread]]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_655
	mov	rax,  qword ptr [word ptr [iread.prev_nread]]
	mov	qword ptr [rbp - 0x28], rax
	cmp	dword ptr [dword ptr [status_level]],  1
	je	.label_657
	mov	rdi, qword ptr [rbp - 0x28]
	call	select_plural
	movabs	rdi, OFFSET FLAT:label_650
	movabs	rsi, OFFSET FLAT:label_651
	mov	rdx, rax
	call	ngettext
	xor	ecx, ecx
	mov	rdx, qword ptr [rbp - 0x28]
	mov	edi, ecx
	mov	esi, ecx
	mov	qword ptr [rbp - 0x38], rdx
	mov	rdx, rax
	mov	rcx, qword ptr [rbp - 0x38]
	mov	al, 0
	call	nl_error
.label_657:
	mov	byte ptr [byte ptr [warn_partial_read]],  0
.label_655:
	jmp	.label_648
.label_648:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [word ptr [iread.prev_nread]],  rax
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408f80
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	je	.label_658
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_659
.label_658:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_659
.label_659:
	mov	rax, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rax]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408fbb
	.globl sub_408fbb
	.type sub_408fbb, @function
sub_408fbb:

	nop	dword ptr [rax + rax]
.label_662:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax]
	and	ecx, 0xffffffef
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x90], rax
	mov	dword ptr [rbp - 4], 0
	jmp	.label_660
.label_661:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	call	fseeko
	mov	dword ptr [rbp - 4], eax
.label_660:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409002
	.globl sub_409002
	.type sub_409002, @function
sub_409002:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409010

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
	jne	.label_661
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x20]
	jne	.label_661
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_661
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	mov	edi, eax
	call	lseek
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], -1
	jne	.label_662
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_660
.label_665:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x28]
	sub	rcx, rdx
	add	rsi, rcx
	mov	qword ptr [rbp - 0x28], rsi
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x38]
	call	memcpy
	jmp	.label_667
	.section	.text
	.align	16
	#Procedure 0x4090bc
	.globl sub_4090bc
	.type sub_4090bc, @function
sub_4090bc:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4090c4

	.globl group_number
	.type group_number, @function
group_number:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x90
	lea	rax, [rbp - 0x70]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x30], -1
	mov	rdi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x80], rax
	call	strlen
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x40], rax
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 0x80]
	call	memcpy
	mov	rax, qword ptr [rbp - 8]
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rax
.label_667:
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x71], cl
	cmp	byte ptr [rbp - 0x71], 0
	je	.label_663
	movzx	eax, byte ptr [rbp - 0x71]
	cmp	eax, 0x7f
	jge	.label_666
	movzx	eax, byte ptr [rbp - 0x71]
	mov	ecx, eax
	mov	qword ptr [rbp - 0x88], rcx
	jmp	.label_664
.label_666:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x88], rax
.label_664:
	mov	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
.label_663:
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_668
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x30], rax
.label_668:
	lea	rax, [rbp - 0x70]
	xor	ecx, ecx
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdi, qword ptr [rbp - 0x28]
	sub	rdx, rsi
	add	rdi, rdx
	mov	qword ptr [rbp - 0x28], rdi
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x40]
	sub	rsi, rdx
	mov	qword ptr [rbp - 0x40], rsi
	mov	rdi, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rsi, rax
	call	memcpy
	cmp	qword ptr [rbp - 0x40], 0
	jne	.label_665
	mov	rax, qword ptr [rbp - 0x28]
	add	rsp, 0x90
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4091e0
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
	je	.label_669
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
.label_669:
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
	#Procedure 0x409344
	.globl sub_409344
	.type sub_409344, @function
sub_409344:

	nop	word ptr cs:[rax + rax]
.label_671:
	mov	qword ptr [rbp - 0x10], 0
.label_672:
	jmp	.label_670
	.section	.text
	.align	16
	#Procedure 0x40935d

	.globl cache_round
	.type cache_round, @function
cache_round:
	push	rbp
	mov	rbp, rsp
	movabs	rax, OFFSET FLAT:cache_round.o_pending
	movabs	rcx, OFFSET FLAT:cache_round.i_pending
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	cmp	dword ptr [rbp - 4], 0
	cmove	rax, rcx
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_673
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x1ffff
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx]
	jbe	.label_671
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	sub	rax, qword ptr [rcx]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_672
.label_673:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x10], rax
.label_670:
	mov	rax, qword ptr [rbp - 0x10]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4093e9
	.globl sub_4093e9
	.type sub_4093e9, @function
sub_4093e9:

	nop	dword ptr [rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4093f0

	.globl copy_with_unblock
	.type copy_with_unblock, @function
copy_with_unblock:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], 0
.label_683:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_679
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	dl, byte ptr [rcx + rax]
	mov	byte ptr [rbp - 0x19], dl
	mov	rax,  qword ptr [word ptr [col]]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [word ptr [col]],  rcx
	cmp	rax,  qword ptr [word ptr [conversion_blocksize]]
	jb	.label_684
	mov	qword ptr [word ptr [copy_with_unblock.pending_spaces]],  0
	mov	qword ptr [word ptr [col]],  0
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, -1
	mov	qword ptr [rbp - 0x18], rax
	mov	al,  byte ptr [byte ptr [newline_character]]
	mov	rcx,  qword ptr [word ptr [oc]]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [word ptr [oc]],  rdx
	mov	rdx,  qword ptr [word ptr [obuf]]
	mov	byte ptr [rdx + rcx], al
	mov	rcx,  qword ptr [word ptr [oc]]
	cmp	rcx,  qword ptr [word ptr [output_blocksize]]
	jb	.label_680
	call	write_output
.label_680:
	jmp	.label_688
.label_688:
	jmp	.label_681
.label_687:
	jmp	.label_685
.label_685:
	mov	al, byte ptr [rbp - 0x19]
	mov	rcx,  qword ptr [word ptr [oc]]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [word ptr [oc]],  rdx
	mov	rdx,  qword ptr [word ptr [obuf]]
	mov	byte ptr [rdx + rcx], al
	mov	rcx,  qword ptr [word ptr [oc]]
	cmp	rcx,  qword ptr [word ptr [output_blocksize]]
	jb	.label_674
	call	write_output
.label_674:
	jmp	.label_675
.label_675:
	jmp	.label_677
.label_677:
	jmp	.label_681
.label_681:
	jmp	.label_682
.label_682:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_683
.label_684:
	movsx	eax, byte ptr [rbp - 0x19]
	movsx	ecx,  byte ptr [byte ptr [space_character]]
	cmp	eax, ecx
	jne	.label_686
	mov	rax,  qword ptr [word ptr [copy_with_unblock.pending_spaces]]
	add	rax, 1
	mov	qword ptr [word ptr [copy_with_unblock.pending_spaces]],  rax
	jmp	.label_677
.label_679:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409558
	.globl sub_409558
	.type sub_409558, @function
sub_409558:

	nop	word ptr cs:[rax + rax]
.label_686:
	jmp	.label_678
.label_678:
	cmp	qword ptr [word ptr [copy_with_unblock.pending_spaces]],  0
	je	.label_687
	jmp	.label_689
.label_689:
	mov	al,  byte ptr [byte ptr [space_character]]
	mov	rcx,  qword ptr [word ptr [oc]]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [word ptr [oc]],  rdx
	mov	rdx,  qword ptr [word ptr [obuf]]
	mov	byte ptr [rdx + rcx], al
	mov	rcx,  qword ptr [word ptr [oc]]
	cmp	rcx,  qword ptr [word ptr [output_blocksize]]
	jb	.label_690
	call	write_output
.label_690:
	jmp	.label_676
.label_676:
	mov	rax,  qword ptr [word ptr [copy_with_unblock.pending_spaces]]
	add	rax, -1
	mov	qword ptr [word ptr [copy_with_unblock.pending_spaces]],  rax
	jmp	.label_678
.label_694:
	call	__errno_location
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_625
	mov	esi, dword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	mov	al, 0
	call	error
.label_695:
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
	.section	.text
	.align	16
	#Procedure 0x40960a

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rdi,  qword ptr [word ptr [stdout]]
	call	close_stream
	cmp	eax, 0
	je	.label_696
	test	byte ptr [byte ptr [ignore_EPIPE]],  1
	je	.label_692
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	je	.label_696
.label_692:
	movabs	rdi, OFFSET FLAT:label_691
	call	gettext
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_694
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	rdi,  qword ptr [word ptr [file_name]]
	mov	dword ptr [rbp - 0xc], esi
	call	quotearg_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_250
	mov	r8, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_695
.label_696:
	mov	rdi,  qword ptr [word ptr [stderr]]
	call	close_stream
	cmp	eax, 0
	je	.label_693
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_693:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4096c7
	.globl sub_4096c7
	.type sub_4096c7, @function
sub_4096c7:

	nop	
	nop	dword ptr [rax + rax]
.label_705:
	mov	edi, 0xa
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	putc_unlocked
	mov	dword ptr [rbp - 0x50], eax
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4096eb

	.globl argmatch_valid
	.type argmatch_valid, @function
argmatch_valid:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	movabs	rax, OFFSET FLAT:label_701
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
.label_699:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_705
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_698
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	imul	rcx, qword ptr [rbp - 0x20]
	add	rax, rcx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	memcmp
	cmp	eax, 0
	je	.label_702
.label_698:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x38], rdi
	mov	rdi, rax
	call	quote
	movabs	rsi, OFFSET FLAT:label_697
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
	jmp	.label_704
.label_702:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x48], rdi
	mov	rdi, rax
	call	quote
	movabs	rsi, OFFSET FLAT:label_703
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x4c], eax
.label_704:
	jmp	.label_700
.label_700:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_699
.label_707:
	mov	edi, dword ptr [rbp - 0x1c]
	mov	esi, dword ptr [rbp - 8]
	call	dup2
	mov	dword ptr [rbp - 0x20], eax
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x24], esi
	mov	edi, dword ptr [rbp - 0x1c]
	call	close
	mov	esi, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x28], eax
	mov	dword ptr [rbp - 0x2c], esi
	call	__errno_location
	mov	esi, dword ptr [rbp - 0x2c]
	mov	dword ptr [rax], esi
	mov	esi, dword ptr [rbp - 0x20]
	mov	dword ptr [rbp - 4], esi
.label_706:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409862
	.globl sub_409862
	.type sub_409862, @function
sub_409862:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409866

	.globl fd_reopen
	.type fd_reopen, @function
fd_reopen:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x14], edx
	mov	dword ptr [rbp - 0x18], ecx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x14]
	mov	edx, dword ptr [rbp - 0x18]
	mov	al, 0
	call	open
	mov	dword ptr [rbp - 0x1c], eax
	mov	eax, dword ptr [rbp - 0x1c]
	cmp	eax, dword ptr [rbp - 8]
	je	.label_708
	cmp	dword ptr [rbp - 0x1c], 0
	jge	.label_707
.label_708:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_706
	.section	.text
	.align	16
	#Procedure 0x4098b0

	.globl operand_is
	.type operand_is, @function
operand_is:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	edx, 0x3d
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	operand_matches
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4098dd
	.globl sub_4098dd
	.type sub_4098dd, @function
sub_4098dd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4098e0

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
	#Procedure 0x4098ff
	.globl sub_4098ff
	.type sub_4098ff, @function
sub_4098ff:

	nop	
.label_718:
	mov	eax, dword ptr [rbp - 0x24]
	add	rsp, 0x60
	pop	rbp
	ret	
.label_714:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_710
	.section	.text
	.align	16
	#Procedure 0x40991a

	.globl parse_symbols
	.type parse_symbols, @function
parse_symbols:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	al, dl
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	and	al, 1
	mov	byte ptr [rbp - 0x11], al
	mov	qword ptr [rbp - 0x20], rcx
	mov	dword ptr [rbp - 0x24], 0
.label_710:
	mov	esi, 0x2c
	mov	rdi, qword ptr [rbp - 8]
	call	strchr
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x38], rax
.label_720:
	mov	edx, 0x2c
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x38]
	call	operand_matches
	xor	edx, edx
	mov	cl, dl
	test	al, 1
	mov	byte ptr [rbp - 0x41], cl
	jne	.label_716
	jmp	.label_711
.label_716:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	dword ptr [rax + 0xc], 0
	setne	cl
	mov	byte ptr [rbp - 0x41], cl
.label_711:
	mov	al, byte ptr [rbp - 0x41]
	xor	al, 0xff
	test	al, 1
	jne	.label_722
	jmp	.label_712
.label_722:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	byte ptr [rax], 0
	jne	.label_713
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_717
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 8]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_719
.label_717:
	mov	rdi, qword ptr [rbp - 8]
	call	strlen
	mov	qword ptr [rbp - 0x50], rax
.label_719:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x40], rax
	mov	rdi, qword ptr [rbp - 0x20]
	call	gettext
	xor	edi, edi
	mov	esi, 8
	mov	rdx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x58], rax
	call	quotearg_n_style_mem
	xor	esi, esi
	movabs	rdx, OFFSET FLAT:label_250
	mov	edi, esi
	mov	rcx, qword ptr [rbp - 0x58]
	mov	r8, rax
	mov	al, 0
	call	nl_error
	mov	edi, 1
	call	usage
.label_713:
	jmp	.label_715
.label_715:
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_720
.label_712:
	test	byte ptr [rbp - 0x11], 1
	je	.label_721
	mov	rax, qword ptr [rbp - 0x38]
	mov	ecx, dword ptr [rax + 0xc]
	mov	dword ptr [rbp - 0x24], ecx
	jmp	.label_709
.label_721:
	mov	rax, qword ptr [rbp - 0x38]
	mov	ecx, dword ptr [rax + 0xc]
	or	ecx, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x24], ecx
.label_709:
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_714
	jmp	.label_718
	.section	.text
	.align	16
	#Procedure 0x409a70

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
	#Procedure 0x409aa2
	.globl sub_409aa2
	.type sub_409aa2, @function
sub_409aa2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409ab0
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
	jb	.label_723
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	calloc
	mov	qword ptr [rbp - 0x18], rax
	cmp	rax, 0
	jne	.label_724
.label_723:
	call	xalloc_die
.label_724:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409b06
	.globl sub_409b06
	.type sub_409b06, @function
sub_409b06:

	nop	word ptr cs:[rax + rax]
.label_728:
	jmp	.label_725
.label_725:
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
	jne	.label_726
	jmp	.label_727
	.section	.text
	.align	16
	#Procedure 0x409b49

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
	jne	.label_728
	mov	dword ptr [rbp - 4], 0
	jmp	.label_729
.label_726:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	cmp	eax, ecx
	je	.label_725
.label_727:
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_729:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409bc1
	.globl sub_409bc1
	.type sub_409bc1, @function
sub_409bc1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409bd0

	.globl nl_error
	.type nl_error, @function
nl_error:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x190
	test	al, al
	movaps	xmmword ptr [rbp - 0xf0], xmm7
	movaps	xmmword ptr [rbp - 0x100], xmm6
	movaps	xmmword ptr [rbp - 0x110], xmm5
	movaps	xmmword ptr [rbp - 0x120], xmm4
	movaps	xmmword ptr [rbp - 0x130], xmm3
	movaps	xmmword ptr [rbp - 0x140], xmm2
	movaps	xmmword ptr [rbp - 0x150], xmm1
	movaps	xmmword ptr [rbp - 0x160], xmm0
	mov	dword ptr [rbp - 0x164], edi
	mov	qword ptr [rbp - 0x170], r9
	mov	qword ptr [rbp - 0x178], r8
	mov	qword ptr [rbp - 0x180], rcx
	mov	qword ptr [rbp - 0x188], rdx
	mov	dword ptr [rbp - 0x18c], esi
	je	.label_730
	movaps	xmm0, xmmword ptr [rbp - 0x160]
	movaps	xmmword ptr [rbp - 0xb0], xmm0
	movaps	xmm1, xmmword ptr [rbp - 0x150]
	movaps	xmmword ptr [rbp - 0xa0], xmm1
	movaps	xmm2, xmmword ptr [rbp - 0x140]
	movaps	xmmword ptr [rbp - 0x90], xmm2
	movaps	xmm3, xmmword ptr [rbp - 0x130]
	movaps	xmmword ptr [rbp - 0x80], xmm3
	movaps	xmm4, xmmword ptr [rbp - 0x120]
	movaps	xmmword ptr [rbp - 0x70], xmm4
	movaps	xmm5, xmmword ptr [rbp - 0x110]
	movaps	xmmword ptr [rbp - 0x60], xmm5
	movaps	xmm6, xmmword ptr [rbp - 0x100]
	movaps	xmmword ptr [rbp - 0x50], xmm6
	movaps	xmm7, xmmword ptr [rbp - 0xf0]
	movaps	xmmword ptr [rbp - 0x40], xmm7
.label_730:
	mov	rax, qword ptr [rbp - 0x170]
	mov	qword ptr [rbp - 0xb8], rax
	mov	rcx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0xc0], rcx
	mov	rdx, qword ptr [rbp - 0x180]
	mov	qword ptr [rbp - 0xc8], rdx
	mov	rsi, qword ptr [rbp - 0x188]
	mov	edi, dword ptr [rbp - 0x18c]
	mov	r8d, dword ptr [rbp - 0x164]
	xor	r9d, r9d
	mov	dword ptr [rbp - 4], r8d
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	cmp	r9d,  dword ptr [dword ptr [progress_len]]
	jge	.label_731
	mov	edi, 0xa
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputc_unlocked
	mov	dword ptr [dword ptr [progress_len]],  0
	mov	dword ptr [rbp - 0x190], eax
.label_731:
	lea	rax, [rbp - 0xe0]
	mov	qword ptr [rbp - 0x20], rax
	lea	rax, [rbp + 0x10]
	mov	qword ptr [rbp - 0x28], rax
	mov	dword ptr [rbp - 0x2c], 0x30
	mov	dword ptr [rbp - 0x30], 0x18
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rcx, [rbp - 0x30]
	call	verror
	add	rsp, 0x190
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409d5e
	.globl sub_409d5e
	.type sub_409d5e, @function
sub_409d5e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x409d60
	.globl xtime_nonnegative_nsec
	.type xtime_nonnegative_nsec, @function
xtime_nonnegative_nsec:

	push	rbp
	mov	rbp, rsp
	mov	eax, 0x3b9aca00
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rax, qword ptr [rbp - 8]
	cqo	
	idiv	rcx
	mov	rax, rdx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409d7d
	.globl sub_409d7d
	.type sub_409d7d, @function
sub_409d7d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409d80

	.globl advance_input_offset
	.type advance_input_offset, @function
advance_input_offset:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	add	rdi,  qword ptr [word ptr [input_offset]]
	mov	qword ptr [word ptr [input_offset]],  rdi
	mov	rdi,  qword ptr [word ptr [input_offset]]
	cmp	rdi, qword ptr [rbp - 8]
	jae	.label_732
	mov	byte ptr [byte ptr [input_offset_overflow]],  1
.label_732:
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409db8
	.globl sub_409db8
	.type sub_409db8, @function
sub_409db8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409dc0
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
	jb	.label_733
	jmp	.label_735
.label_735:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x7f
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_736
	jmp	.label_733
.label_733:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_734
.label_736:
	mov	byte ptr [rbp - 1], 0
.label_734:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409e08
	.globl sub_409e08
	.type sub_409e08, @function
sub_409e08:

	nop	dword ptr [rax + rax]
.label_738:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_739:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409e1b
	.globl sub_409e1b
	.type sub_409e1b, @function
sub_409e1b:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409e24
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_738
	jmp	.label_737
.label_737:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x61
	add	eax, 0x41
	mov	dword ptr [rbp - 4], eax
	jmp	.label_739
	.section	.text
	.align	16
	#Procedure 0x409e50

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
	je	.label_740
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_741
.label_740:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_741
.label_741:
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
	je	.label_742
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_742:
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0x78
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409fa4
	.globl sub_409fa4
	.type sub_409fa4, @function
sub_409fa4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409fb0
	.globl xmax
	.type xmax, @function
xmax:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	cmp	rsi, qword ptr [rbp - 0x10]
	jb	.label_743
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_744
.label_743:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rax
.label_744:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409fe5
	.globl sub_409fe5
	.type sub_409fe5, @function
sub_409fe5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409ff0

	.globl xtime_make
	.type xtime_make, @function
xtime_make:
	push	rbp
	mov	rbp, rsp
	mov	eax, 0x3b9aca00
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], 0x3b9aca00
	mov	rax, qword ptr [rbp - 0x10]
	cqo	
	idiv	rcx
	add	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	cqo	
	idiv	rcx
	mov	qword ptr [rbp - 0x10], rdx
	imul	rcx, qword ptr [rbp - 8], 0x3b9aca00
	add	rcx, qword ptr [rbp - 0x10]
	mov	rax, rcx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a03a
	.globl sub_40a03a
	.type sub_40a03a, @function
sub_40a03a:

	nop	word ptr [rax + rax]
.label_762:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x27
	jne	.label_745
	mov	eax, dword ptr [rbp - 0x28]
	or	eax, 4
	mov	dword ptr [rbp - 0x28], eax
	mov	rcx, qword ptr [rbp - 0x10]
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
.label_745:
	movabs	rsi, OFFSET FLAT:block_size_args
	movabs	rax, OFFSET FLAT:block_size_opts
	mov	ecx, 4
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, rax
	call	argmatch
	xor	r8d, r8d
	mov	r9d, eax
	mov	dword ptr [rbp - 0x24], r9d
	cmp	r8d, r9d
	jg	.label_747
	movsxd	rax, dword ptr [rbp - 0x24]
	mov	ecx,  dword ptr [dword ptr [+ (rax * 4) + block_size_opts]]
	or	ecx, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 0x28], ecx
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rax], 1
	jmp	.label_757
.label_747:
	lea	rsi, [rbp - 0x30]
	xor	edx, edx
	movabs	r8, OFFSET FLAT:label_760
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	call	xstrtoumax
	mov	dword ptr [rbp - 0x34], eax
	cmp	dword ptr [rbp - 0x34], 0
	je	.label_753
	mov	rax, qword ptr [rbp - 0x20]
	mov	dword ptr [rax], 0
	mov	ecx, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_755
	.section	.text
	.align	16
	#Procedure 0x40a0fd

	.globl humblock
	.type humblock, @function
humblock:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	dword ptr [rbp - 0x28], 0
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_762
	movabs	rdi, OFFSET FLAT:label_763
	call	getenv
	mov	qword ptr [rbp - 0x10], rax
	cmp	rax, 0
	jne	.label_762
	movabs	rdi, OFFSET FLAT:label_761
	call	getenv
	mov	qword ptr [rbp - 0x10], rax
	cmp	rax, 0
	jne	.label_762
	call	default_block_size
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx], rax
	jmp	.label_748
.label_749:
	jmp	.label_757
.label_757:
	jmp	.label_748
.label_748:
	mov	eax, dword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	dword ptr [rcx], eax
	mov	dword ptr [rbp - 4], 0
.label_755:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a191
	.globl sub_40a191
	.type sub_40a191, @function
sub_40a191:

	nop	
.label_753:
	jmp	.label_750
.label_750:
	xor	eax, eax
	mov	cl, al
	mov	eax, 0x30
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	eax, esi
	mov	byte ptr [rbp - 0x35], cl
	jg	.label_752
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x39
	setle	dl
	mov	byte ptr [rbp - 0x35], dl
.label_752:
	mov	al, byte ptr [rbp - 0x35]
	xor	al, 0xff
	test	al, 1
	jne	.label_746
	jmp	.label_749
.label_746:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x30]
	jne	.label_751
	mov	eax, dword ptr [rbp - 0x28]
	or	eax, 0x80
	mov	dword ptr [rbp - 0x28], eax
	mov	rcx, qword ptr [rbp - 0x30]
	movsx	eax, byte ptr [rcx - 1]
	cmp	eax, 0x42
	jne	.label_754
	mov	eax, dword ptr [rbp - 0x28]
	or	eax, 0x100
	mov	dword ptr [rbp - 0x28], eax
.label_754:
	mov	rax, qword ptr [rbp - 0x30]
	movsx	ecx, byte ptr [rax - 1]
	cmp	ecx, 0x42
	jne	.label_759
	mov	rax, qword ptr [rbp - 0x30]
	movsx	ecx, byte ptr [rax - 2]
	cmp	ecx, 0x69
	jne	.label_756
.label_759:
	mov	eax, dword ptr [rbp - 0x28]
	or	eax, 0x20
	mov	dword ptr [rbp - 0x28], eax
.label_756:
	jmp	.label_749
.label_751:
	jmp	.label_758
.label_758:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_750
.label_867:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xe8], rax
.label_956:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rcx, qword ptr [rbp - 0xe0]
	cmp	rcx, rax
	ja	.label_897
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rdi, rax
	call	memcmp
	cmp	eax, 0
	jne	.label_897
	test	byte ptr [rbp - 0x7b], 1
	je	.label_906
	jmp	.label_768
.label_942:
	cmp	qword ptr [rbp - 0x60], 0
	jne	.label_912
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_912
	test	byte ptr [rbp - 0x7b], 1
	je	.label_912
	jmp	.label_768
.label_810:
	jmp	.label_803
.label_803:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_918
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0
.label_918:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_871
.label_1263:
	mov	byte ptr [rbp - 0x7d], 1
	mov	byte ptr [rbp - 0x83], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_924
	test	byte ptr [rbp - 0x7b], 1
	je	.label_926
	jmp	.label_768
.label_1394:
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_796
.label_932:
	jmp	.label_776
.label_779:
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x30]
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	dword ptr [rbp - 0xd4], edx
.label_781:
	mov	eax, dword ptr [rbp - 0xd4]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_936
	jmp	.label_942
.label_936:
	mov	byte ptr [rbp - 0x81], 0
	mov	byte ptr [rbp - 0x82], 0
	mov	byte ptr [rbp - 0x83], 0
	test	byte ptr [rbp - 0x79], 1
	je	.label_897
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_897
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_897
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x78]
	cmp	qword ptr [rbp - 0x30], -1
	mov	qword ptr [rbp - 0xe0], rax
	jne	.label_867
	mov	eax, 1
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x78]
	jae	.label_867
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_956
.label_1258:
	mov	byte ptr [rbp - 0x80], 0x76
	jmp	.label_825
.label_1266:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_962
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	je	.label_847
	jmp	.label_964
.label_1265:
	mov	al, byte ptr [rbp - 0x7f]
	mov	byte ptr [rbp - 0x80], al
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_965
	test	byte ptr [rbp - 0x7b], 1
	je	.label_766
	jmp	.label_768
.label_954:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_770
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_770
	mov	qword ptr [rbp - 0xb8], 1
.label_879:
	mov	rax, qword ptr [rbp - 0xb8]
	cmp	rax, qword ptr [rbp - 0xb0]
	jae	.label_777
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
	jb	.label_782
	jmp	.label_793
.label_793:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x5e
	mov	dword ptr [rbp - 0x138], eax
	je	.label_782
	jmp	.label_799
.label_799:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x60
	mov	dword ptr [rbp - 0x13c], eax
	je	.label_782
	jmp	.label_808
.label_808:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x140], eax
	jne	.label_809
	jmp	.label_782
.label_782:
	jmp	.label_768
.label_926:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_815
	cmp	qword ptr [rbp - 0x68], 0
	jne	.label_815
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0x20], 0
.label_815:
	jmp	.label_822
.label_822:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_890
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_890:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_830
.label_830:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_836
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_836:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_841
.label_841:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_844
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_844:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_924:
	jmp	.label_776
.label_906:
	mov	byte ptr [rbp - 0x81], 1
.label_897:
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
	ja	.label_849
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_862]]
	jmp	rcx
.label_806:
	call	abort
.label_951:
	jmp	.label_864
.label_864:
	mov	byte ptr [rbp - 0x83], 1
.label_1261:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_868
	test	byte ptr [rbp - 0x7b], 1
	je	.label_868
	jmp	.label_768
.label_930:
	jmp	.label_774
.label_843:
	jmp	.label_874
.label_874:
	jmp	.label_776
.label_953:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_878
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_878
	jmp	.label_884
.label_884:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_887
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_887:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_892
.label_892:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_896
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_896:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_900
.label_900:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_903
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_903:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_878:
	jmp	.label_913
.label_913:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_915
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_915:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_919
.label_919:
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_807
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_807
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x28]
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_807
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x39
	jg	.label_807
	jmp	.label_931
.label_931:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_933
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_933:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_939
.label_939:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_863
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_863:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_807
.label_807:
	mov	byte ptr [rbp - 0x7f], 0x30
	jmp	.label_874
.label_847:
	jmp	.label_950
.label_950:
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_951
	jmp	.label_776
.label_828:
	cmp	qword ptr [rbp - 0xb0], -2
	jne	.label_954
	mov	byte ptr [rbp - 0x91], 0
.label_767:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x58]
	add	rdx, qword ptr [rbp - 0x90]
	cmp	rdx, qword ptr [rbp - 0x30]
	mov	byte ptr [rbp - 0x129], cl
	jae	.label_894
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x129], sil
.label_894:
	mov	al, byte ptr [rbp - 0x129]
	test	al, 1
	jne	.label_960
	jmp	.label_765
.label_960:
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_767
	.section	.text
	.align	16
	#Procedure 0x40a822

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
.label_914:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0xc8], rcx
	mov	qword ptr [rbp - 0xd0], rdx
	ja	.label_806
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_813]]
	jmp	rcx
.label_1264:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0xfc], eax
	mov	dword ptr [rbp - 0x100], ecx
	je	.label_817
	jmp	.label_820
.label_820:
	mov	eax, dword ptr [rbp - 0xfc]
	sub	eax, 5
	mov	dword ptr [rbp - 0x104], eax
	je	.label_823
	jmp	.label_910
.label_840:
	cmp	qword ptr [rbp - 0xb0], -1
	jne	.label_828
	mov	byte ptr [rbp - 0x91], 0
	jmp	.label_834
.label_817:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_838
	jmp	.label_768
.label_765:
	jmp	.label_834
.label_1260:
	mov	byte ptr [rbp - 0x80], 0x72
	jmp	.label_788
.label_866:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 1
	cmp	eax, 0
	je	.label_843
	jmp	.label_786
.label_1254:
	mov	byte ptr [rbp - 0x80], 0x61
	jmp	.label_825
.label_965:
	test	byte ptr [rbp - 0x79], 1
	je	.label_846
	test	byte ptr [rbp - 0x7b], 1
	je	.label_846
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_846
	jmp	.label_774
.label_912:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_801
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_801
	test	byte ptr [rbp - 0x7d], 1
	je	.label_801
	test	byte ptr [rbp - 0x7e], 1
	je	.label_859
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
	jmp	.label_871
.label_766:
	jmp	.label_774
.label_809:
	jmp	.label_875
.label_875:
	jmp	.label_877
.label_877:
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, 1
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_879
.label_772:
	jmp	.label_883
.label_883:
	jmp	.label_886
.label_886:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_831
	jmp	.label_768
.label_891:
	jmp	.label_889
.label_889:
	mov	byte ptr [rbp - 0x79], 1
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x70], rax
	mov	rdi, qword ptr [rbp - 0x70]
	call	strlen
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_796
.label_846:
	jmp	.label_788
.label_788:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_899
	test	byte ptr [rbp - 0x7b], 1
	je	.label_899
	jmp	.label_768
.label_777:
	jmp	.label_770
.label_770:
	mov	edi, dword ptr [rbp - 0xa4]
	call	iswprint
	cmp	eax, 0
	jne	.label_905
	mov	byte ptr [rbp - 0x91], 0
.label_905:
	mov	rax, qword ptr [rbp - 0xb0]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_911
.label_911:
	jmp	.label_938
.label_938:
	jmp	.label_917
.label_917:
	lea	rdi, [rbp - 0xa0]
	call	mbsinit
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_824
.label_834:
	jmp	.label_797
.label_797:
	mov	eax, 1
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x91]
	and	dl, 1
	mov	byte ptr [rbp - 0x83], dl
	cmp	rcx, qword ptr [rbp - 0x90]
	jb	.label_923
	test	byte ptr [rbp - 0x79], 1
	je	.label_928
	test	byte ptr [rbp - 0x91], 1
	jne	.label_928
.label_923:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0xc0], rax
.label_860:
	test	byte ptr [rbp - 0x79], 1
	je	.label_934
	test	byte ptr [rbp - 0x91], 1
	jne	.label_934
	jmp	.label_940
.label_940:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_941
	jmp	.label_768
.label_831:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_944
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_944
	jmp	.label_946
.label_946:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_947
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_947:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_952
.label_952:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_872
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_872:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_957
.label_957:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_869
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_869:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_944:
	jmp	.label_967
.label_967:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_865
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_865:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_771
.label_771:
	jmp	.label_774
.label_774:
	jmp	.label_775
.label_775:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_778
	test	byte ptr [rbp - 0x82], 1
	jne	.label_778
	jmp	.label_783
.label_783:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_784
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_784:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_789
.label_789:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_791
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_791:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_778:
	jmp	.label_802
.label_802:
	jmp	.label_804
.label_804:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_805
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_805:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	test	byte ptr [rbp - 0x83], 1
	jne	.label_811
	mov	byte ptr [rbp - 0x7e], 0
.label_811:
	jmp	.label_786
.label_786:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_818
.label_910:
	jmp	.label_821
.label_821:
	jmp	.label_776
.label_1259:
	mov	byte ptr [rbp - 0x80], 0x66
	jmp	.label_825
.label_1399:
	mov	dword ptr [rbp - 0x34], 5
	mov	byte ptr [rbp - 0x7b], 1
.label_1398:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_829
	jmp	.label_833
.label_833:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_835
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_835:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_829
.label_829:
	movabs	rax, OFFSET FLAT:label_881
	mov	byte ptr [rbp - 0x79], 1
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_796
.label_962:
	cmp	qword ptr [rbp - 0x30], 1
	je	.label_847
.label_964:
	jmp	.label_776
.label_941:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_851
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_851
	jmp	.label_857
.label_857:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_858
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_858:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_908
.label_908:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_925
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_925:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_870
.label_870:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_873
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_873:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_851:
	jmp	.label_885
.label_885:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_888
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_888:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_893
.label_893:
	jmp	.label_882
.label_882:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_898
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 6
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_898:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_929
.label_929:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_907
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 3
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_907:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	movzx	eax, byte ptr [rbp - 0x7f]
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	byte ptr [rbp - 0x7f], cl
	jmp	.label_916
.label_823:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 4
	cmp	eax, 0
	je	.label_922
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_922
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x3f
	jne	.label_922
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 2]
	mov	esi, edx
	sub	esi, 0x21
	mov	dword ptr [rbp - 0x108], edx
	mov	dword ptr [rbp - 0x10c], esi
	je	.label_902
	jmp	.label_935
.label_935:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x110], eax
	jb	.label_902
	jmp	.label_943
.label_943:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x114], eax
	je	.label_902
	jmp	.label_945
.label_945:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2f
	mov	dword ptr [rbp - 0x118], eax
	je	.label_902
	jmp	.label_949
.label_949:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0x11c], eax
	ja	.label_773
	jmp	.label_902
.label_902:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_955
	jmp	.label_768
.label_1262:
	mov	byte ptr [rbp - 0x83], 1
	jmp	.label_776
.label_928:
	jmp	.label_776
.label_776:
	test	byte ptr [rbp - 0x79], 1
	je	.label_958
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_961
.label_958:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_963
.label_961:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_963
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
	jne	.label_772
.label_963:
	test	byte ptr [rbp - 0x81], 1
	jne	.label_772
	jmp	.label_774
.label_796:
	mov	qword ptr [rbp - 0x58], 0
.label_818:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_779
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	sete	sil
	and	sil, 1
	movzx	edx, sil
	mov	dword ptr [rbp - 0xd4], edx
	jmp	.label_781
.label_1256:
	mov	byte ptr [rbp - 0x80], 0x74
	jmp	.label_788
.label_849:
	test	byte ptr [rbp - 0x7a], 1
	je	.label_790
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
	jmp	.label_797
.label_790:
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	lea	rcx, [rbp - 0xa0]
	mov	rdi, rcx
	call	memset
	mov	qword ptr [rbp - 0x90], 0
	mov	byte ptr [rbp - 0x91], 1
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_816
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
.label_816:
	jmp	.label_824
.label_824:
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
	jne	.label_840
	jmp	.label_834
.label_868:
	jmp	.label_776
.label_1396:
	mov	byte ptr [rbp - 0x79], 1
.label_1395:
	mov	byte ptr [rbp - 0x7b], 1
.label_1397:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_795
	mov	byte ptr [rbp - 0x79], 1
.label_795:
	jmp	.label_848
.label_848:
	mov	dword ptr [rbp - 0x34], 2
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_850
	jmp	.label_853
.label_853:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_855
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_855:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_850
.label_850:
	movabs	rax, OFFSET FLAT:label_861
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_796
.label_838:
	jmp	.label_821
.label_1253:
	test	byte ptr [rbp - 0x79], 1
	je	.label_866
	jmp	.label_948
.label_948:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_953
	jmp	.label_768
.label_1401:
	cmp	dword ptr [rbp - 0x34], 0xa
	je	.label_966
	movabs	rdi, OFFSET FLAT:label_876
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	movabs	rdi, OFFSET FLAT:label_861
	mov	qword ptr [rbp - 0x48], rax
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	mov	qword ptr [rbp - 0x50], rax
.label_966:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_889
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x70], rax
.label_904:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_891
	jmp	.label_895
.label_895:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_880
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_880:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_901
.label_901:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_904
.label_859:
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_909
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_909
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x60], 0
	jmp	.label_914
.label_934:
	test	byte ptr [rbp - 0x81], 1
	je	.label_798
	jmp	.label_920
.label_920:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_921
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_921:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x81], 0
.label_798:
	jmp	.label_916
.label_916:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	cmp	rax, rcx
	ja	.label_927
	jmp	.label_930
.label_899:
	jmp	.label_825
.label_825:
	test	byte ptr [rbp - 0x79], 1
	je	.label_932
	mov	al, byte ptr [rbp - 0x80]
	mov	byte ptr [rbp - 0x7f], al
	jmp	.label_883
.label_768:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_937
	test	byte ptr [rbp - 0x79], 1
	je	.label_937
	mov	dword ptr [rbp - 0x34], 4
.label_937:
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
.label_871:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x158
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b3b8
	.globl sub_40b3b8
	.type sub_40b3b8, @function
sub_40b3b8:

	nop	dword ptr [rax + rax]
.label_1257:
	mov	byte ptr [rbp - 0x80], 0x6e
	jmp	.label_788
.label_1255:
	mov	byte ptr [rbp - 0x80], 0x62
	jmp	.label_825
.label_955:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + rax + 2]
	mov	byte ptr [rbp - 0x7f], dl
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_959
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_959:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_764
.label_764:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_769
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_769:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_827
.label_827:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_780
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_780:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_785
.label_785:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_787
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_787:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_792
.label_1400:
	mov	byte ptr [rbp - 0x79], 1
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_796
.label_909:
	jmp	.label_800
.label_800:
	jmp	.label_801
.label_801:
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_803
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_803
	jmp	.label_794
.label_794:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_810
	jmp	.label_812
.label_812:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_814
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_814:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_819
.label_819:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_794
.label_927:
	jmp	.label_826
.label_826:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_832
	test	byte ptr [rbp - 0x82], 1
	jne	.label_832
	jmp	.label_837
.label_837:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_839
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_839:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_842
.label_842:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_845
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_845:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_832:
	jmp	.label_852
.label_852:
	jmp	.label_854
.label_854:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_856
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_856:
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
	jmp	.label_860
.label_773:
	jmp	.label_792
.label_792:
	jmp	.label_922
.label_922:
	jmp	.label_821
.label_971:
	movabs	rdi, OFFSET FLAT:label_968
	call	gettext
	mov	qword ptr [rbp - 0x28], rax
.label_969:
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
	#Procedure 0x40b658
	.globl sub_40b658
	.type sub_40b658, @function
sub_40b658:

	nop	
	.section	.text
	.align	16
	#Procedure 0x40b659

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
	jne	.label_971
	movabs	rdi, OFFSET FLAT:label_970
	call	gettext
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_969
.label_1004:
	movzx	eax, byte ptr [rbp - 0x59]
	cmp	eax, 0x2d
	jne	.label_995
	mov	dword ptr [rbp - 4], 4
	jmp	.label_977
.label_1365:
	lea	rdi, [rbp - 0x48]
	mov	edx, 4
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_976
.label_997:
	call	__errno_location
	cmp	dword ptr [rax], 0
	je	.label_1005
	call	__errno_location
	cmp	dword ptr [rax], 0x22
	je	.label_1008
	mov	dword ptr [rbp - 4], 4
	jmp	.label_977
.label_1364:
	lea	rdi, [rbp - 0x48]
	mov	edx, 5
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_976
.label_1361:
	lea	rdi, [rbp - 0x48]
	mov	edx, 3
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_976
.label_1362:
	lea	rdi, [rbp - 0x48]
	mov	edx, 1
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_976
.label_1368:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x200
	call	bkm_scale
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_976
.label_1367:
	lea	rdi, [rbp - 0x48]
	mov	edx, 7
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_976
.label_1001:
	mov	dword ptr [rbp - 4], 4
	jmp	.label_977
.label_981:
	mov	dword ptr [rbp - 0x60], 0x3e8
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, 1
	mov	dword ptr [rbp - 0x64], eax
.label_989:
	jmp	.label_973
.label_973:
	jmp	.label_993
.label_993:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x42
	mov	eax, ecx
	sub	ecx, 0x35
	mov	qword ptr [rbp - 0xc0], rax
	mov	dword ptr [rbp - 0xc4], ecx
	ja	.label_994
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1000]]
	jmp	rcx
.label_1370:
	lea	rdi, [rbp - 0x48]
	mov	esi, 2
	call	bkm_scale
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_976
.label_980:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_1007
	mov	dword ptr [rbp - 0x60], 0x400
	mov	dword ptr [rbp - 0x64], 1
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	jne	.label_975
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	or	edx, 2
	mov	dword ptr [rbp - 4], edx
	jmp	.label_977
.label_1360:
	lea	rdi, [rbp - 0x48]
	mov	edx, 6
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_976
.label_1369:
	mov	dword ptr [rbp - 0x68], 0
	jmp	.label_976
.label_1359:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x400
	call	bkm_scale
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_976
.label_998:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_990
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_991
.label_990:
	lea	rax, [rbp - 0x38]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_991
.label_991:
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x40], rax
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x59], cl
.label_1009:
	movzx	eax, byte ptr [rbp - 0x59]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x78], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x78]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x2000
	cmp	edx, 0
	je	.label_1004
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x58], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x59], dl
	jmp	.label_1009
.label_984:
	movabs	rdi, OFFSET FLAT:label_1012
	movabs	rsi, OFFSET FLAT:label_1013
	mov	edx, 0x54
	movabs	rcx, OFFSET FLAT:label_1014
	call	__assert_fail
.label_994:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	or	edx, 2
	mov	dword ptr [rbp - 4], edx
	jmp	.label_977
	.section	.text
	.align	16
	#Procedure 0x40b936

	.globl xstrtoumax
	.type xstrtoumax, @function
xstrtoumax:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xd0
	xor	eax, eax
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	dword ptr [rbp - 0x4c], 0
	cmp	eax, dword ptr [rbp - 0x1c]
	jg	.label_984
	cmp	dword ptr [rbp - 0x1c], 0x24
	jg	.label_984
	jmp	.label_998
.label_1363:
	lea	rdi, [rbp - 0x48]
	mov	edx, 2
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_976
.label_995:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rbp - 0x1c]
	call	strtoumax
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x10]
	jne	.label_997
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_1001
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_1001
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	je	.label_1001
	mov	qword ptr [rbp - 0x48], 1
	jmp	.label_1011
.label_1011:
	jmp	.label_978
.label_975:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x45
	mov	dword ptr [rbp - 0x7c], ecx
	mov	dword ptr [rbp - 0x80], edx
	je	.label_972
	jmp	.label_979
.label_979:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0x84], eax
	je	.label_972
	jmp	.label_983
.label_983:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x4b
	mov	dword ptr [rbp - 0x88], eax
	je	.label_972
	jmp	.label_986
.label_986:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0x8c], eax
	je	.label_972
	jmp	.label_985
.label_985:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x50
	mov	dword ptr [rbp - 0x90], eax
	je	.label_972
	jmp	.label_982
.label_982:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x54
	mov	dword ptr [rbp - 0x94], eax
	je	.label_972
	jmp	.label_987
.label_987:
	mov	eax, dword ptr [rbp - 0x7c]
	add	eax, -0x59
	sub	eax, 2
	mov	dword ptr [rbp - 0x98], eax
	jb	.label_972
	jmp	.label_999
.label_999:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0x9c], eax
	je	.label_972
	jmp	.label_1003
.label_1003:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x6b
	mov	dword ptr [rbp - 0xa0], eax
	je	.label_972
	jmp	.label_974
.label_974:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0xa4], eax
	je	.label_972
	jmp	.label_1010
.label_1010:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0xa8], eax
	jne	.label_993
	jmp	.label_972
.label_972:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x30]
	call	strchr
	cmp	rax, 0
	je	.label_973
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 1]
	mov	edx, ecx
	sub	edx, 0x42
	mov	dword ptr [rbp - 0xac], ecx
	mov	dword ptr [rbp - 0xb0], edx
	je	.label_981
	jmp	.label_996
.label_996:
	mov	eax, dword ptr [rbp - 0xac]
	sub	eax, 0x44
	mov	dword ptr [rbp - 0xb4], eax
	je	.label_981
	jmp	.label_988
.label_988:
	mov	eax, dword ptr [rbp - 0xac]
	sub	eax, 0x69
	mov	dword ptr [rbp - 0xb8], eax
	jne	.label_989
	jmp	.label_1006
.label_1006:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x42
	jne	.label_992
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, 2
	mov	dword ptr [rbp - 0x64], eax
.label_992:
	jmp	.label_989
.label_976:
	mov	eax, dword ptr [rbp - 0x68]
	or	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x4c], eax
	mov	eax, dword ptr [rbp - 0x64]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rcx]
	movsxd	rsi, eax
	add	rdx, rsi
	mov	qword ptr [rcx], rdx
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rcx]
	cmp	byte ptr [rcx], 0
	je	.label_1002
	mov	eax, dword ptr [rbp - 0x4c]
	or	eax, 2
	mov	dword ptr [rbp - 0x4c], eax
.label_1002:
	jmp	.label_1007
.label_1007:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
.label_977:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xd0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40bbf5
	.globl sub_40bbf5
	.type sub_40bbf5, @function
sub_40bbf5:

	nop	dword ptr [rax + rax]
.label_1366:
	lea	rdi, [rbp - 0x48]
	mov	edx, 8
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_976
.label_1008:
	mov	dword ptr [rbp - 0x4c], 1
.label_1005:
	jmp	.label_978
.label_978:
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_980
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
	jmp	.label_977
.label_1022:
	test	byte ptr [rbp - 0x41], 1
	je	.label_1015
	mov	qword ptr [rbp - 8], -2
	jmp	.label_1019
.label_1015:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 8], rax
.label_1019:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40bc69
	.globl sub_40bc69
	.type sub_40bc69, @function
sub_40bc69:

	nop	word ptr cs:[rax + rax]
.label_1026:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1025
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
	je	.label_1024
.label_1025:
	mov	byte ptr [rbp - 0x41], 1
.label_1024:
	jmp	.label_1017
.label_1017:
	jmp	.label_1016
.label_1016:
	jmp	.label_1018
.label_1018:
	jmp	.label_1020
.label_1020:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1021
	.section	.text
	.align	16
	#Procedure 0x40bce2

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
.label_1021:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_1022
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x38]
	call	strncmp
	cmp	eax, 0
	jne	.label_1018
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx + rax*8]
	call	strlen
	cmp	rax, qword ptr [rbp - 0x38]
	jne	.label_1023
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1019
.label_1023:
	cmp	qword ptr [rbp - 0x40], -1
	jne	.label_1026
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_1017
	.section	.text
	.align	16
	#Procedure 0x40bd90

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
	#Procedure 0x40bdc8
	.globl sub_40bdc8
	.type sub_40bdc8, @function
sub_40bdc8:

	nop	dword ptr [rax + rax]
.label_1027:
	movabs	rax, OFFSET FLAT:label_861
	movabs	rcx, OFFSET FLAT:label_881
	cmp	dword ptr [rbp - 0x14], 9
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
.label_1033:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40bdfa
	.globl sub_40bdfa
	.type sub_40bdfa, @function
sub_40bdfa:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40be02

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
	je	.label_1030
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1033
.label_1030:
	call	locale_charset
	movabs	rsi, OFFSET FLAT:label_1034
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_1028
	movabs	rax, OFFSET FLAT:label_1031
	movabs	rcx, OFFSET FLAT:label_1032
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1033
.label_1028:
	movabs	rsi, OFFSET FLAT:label_1029
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_1027
	movabs	rax, OFFSET FLAT:label_1035
	movabs	rcx, OFFSET FLAT:label_1036
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1033
.label_1038:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	realloc
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_1039
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1039
	call	xalloc_die
.label_1039:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_1037:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40bf0e
	.globl sub_40bf0e
	.type sub_40bf0e, @function
sub_40bf0e:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40bf14

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_1038
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_1038
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1037
	.section	.text
	.align	16
	#Procedure 0x40bf50

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
	jge	.label_1043
	call	abort
.label_1046:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x60], rax
.label_1040:
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
	je	.label_1045
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_1041]]
	mov	qword ptr [rax + 8], rcx
.label_1045:
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
.label_1047:
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
	ja	.label_1042
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	mov	qword ptr [rbp - 0x40], rcx
	movsxd	rdx, dword ptr [rbp - 4]
	shl	rdx, 4
	add	rdx, qword ptr [rbp - 0x30]
	mov	qword ptr [rdx], rcx
	cmp	qword ptr [rbp - 0x48], rax
	je	.label_1044
	mov	rdi, qword ptr [rbp - 0x48]
	call	free
.label_1044:
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
.label_1042:
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
	#Procedure 0x40c16d
	.globl sub_40c16d
	.type sub_40c16d, @function
sub_40c16d:

	nop	word ptr cs:[rax + rax]
.label_1043:
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_1047
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 0x30], rax
	sete	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x31], cl
	mov	dword ptr [rbp - 0x38], 0x7ffffffe
	mov	edx, dword ptr [rbp - 0x38]
	cmp	edx, dword ptr [rbp - 4]
	jge	.label_1048
	call	xalloc_die
.label_1048:
	test	byte ptr [rbp - 0x31], 1
	je	.label_1046
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x60], rcx
	jmp	.label_1040
.label_1058:
	mov	byte ptr [byte ptr [final_op_was_seek]],  1
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rax
.label_1052:
	jmp	.label_1054
.label_1054:
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_1062
	mov	edi, dword ptr [rbp - 4]
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	sub	rcx, qword ptr [rbp - 0x20]
	mov	rsi, rax
	mov	rdx, rcx
	call	write
	mov	qword ptr [rbp - 0x30], rax
.label_1062:
	cmp	qword ptr [rbp - 0x30], 0
	jge	.label_1057
	call	__errno_location
	cmp	dword ptr [rax], 4
	je	.label_1061
	jmp	.label_1049
.label_1057:
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_1063
	call	__errno_location
	mov	dword ptr [rax], 0x1c
	jmp	.label_1049
.label_1049:
	test	byte ptr [byte ptr [o_nocache]],  1
	je	.label_1053
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1053
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x20]
	call	invalidate_cache
	mov	byte ptr [rbp - 0x42], al
.label_1053:
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c27d
	.globl sub_40c27d
	.type sub_40c27d, @function
sub_40c27d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40c281

	.globl iwrite
	.type iwrite, @function
iwrite:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], 0
	mov	edi,  dword ptr [dword ptr [output_flags]]
	and	edi, 0x4000
	cmp	edi, 0
	je	.label_1050
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax,  qword ptr [word ptr [output_blocksize]]
	jae	.label_1050
	mov	edi, 1
	mov	esi, 3
	mov	al, 0
	call	rpl_fcntl
	mov	edi, 1
	mov	esi, 4
	mov	dword ptr [rbp - 0x24], eax
	mov	eax, dword ptr [rbp - 0x24]
	and	eax, 0xffffbfff
	mov	edx, eax
	mov	al, 0
	call	rpl_fcntl
	cmp	eax, 0
	je	.label_1060
	cmp	dword ptr [dword ptr [status_level]],  1
	je	.label_1060
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_1055
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x34], esi
	call	gettext
	xor	edi, edi
	mov	esi, 3
	mov	rdx,  qword ptr [word ptr [output_file]]
	mov	qword ptr [rbp - 0x40], rax
	call	quotearg_n_style_colon
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x34]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rcx, rax
	mov	al, 0
	call	nl_error
.label_1060:
	mov	edi, 1
	xor	eax, eax
	mov	esi, eax
	mov	byte ptr [byte ptr [o_nocache_eof]],  1
	call	invalidate_cache
	mov	edi,  dword ptr [dword ptr [conversions_mask]]
	or	edi, 0x8000
	mov	dword ptr [dword ptr [conversions_mask]],  edi
	mov	byte ptr [rbp - 0x41], al
.label_1050:
	jmp	.label_1059
.label_1059:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_1049
	mov	qword ptr [rbp - 0x30], 0
	call	process_signals
	mov	byte ptr [byte ptr [final_op_was_seek]],  0
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	and	eax, 0x10000
	cmp	eax, 0
	je	.label_1054
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	is_nul
	test	al, 1
	jne	.label_1051
	jmp	.label_1054
.label_1051:
	mov	edx, 1
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x18]
	call	lseek
	cmp	rax, 0
	jge	.label_1058
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	and	eax, 0xfffeffff
	mov	dword ptr [dword ptr [conversions_mask]],  eax
	jmp	.label_1052
.label_1063:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_1056
.label_1056:
	jmp	.label_1059
.label_1061:
	jmp	.label_1056
.label_1131:
	mov	qword ptr [rbp - 0x48], 0
.label_1134:
	jmp	.label_1073
.label_1073:
	mov	al, 1
	cmp	qword ptr [rbp - 0x50], 0
	mov	byte ptr [rbp - 0x149], al
	jne	.label_1076
	cmp	qword ptr [rbp - 0x48], 0
	setne	al
	mov	byte ptr [rbp - 0x149], al
.label_1076:
	mov	al, byte ptr [rbp - 0x149]
	test	al, 1
	jne	.label_1082
	jmp	.label_1074
.label_1074:
	jmp	.label_1079
.label_1079:
	cmp	qword ptr [word ptr [max_records]],  0
	jne	.label_1092
	cmp	qword ptr [word ptr [max_bytes]],  0
	jne	.label_1092
	mov	eax, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1101
.label_1136:
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x130], rax
.label_1142:
	mov	rax, qword ptr [rbp - 0x130]
	xor	esi, esi
	mov	rdi, qword ptr [rbp - 0x128]
	mov	rdx, rax
	call	memset
.label_1082:
	cmp	qword ptr [rbp - 0x50], 0
	je	.label_1110
	mov	rax,  qword ptr [word ptr [output_blocksize]]
	mov	qword ptr [rbp - 0x138], rax
	jmp	.label_1111
.label_1072:
	jmp	.label_1119
.label_1119:
	mov	al,  byte ptr [byte ptr [saved_char]]
	mov	rcx,  qword ptr [word ptr [oc]]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [word ptr [oc]],  rdx
	mov	rdx,  qword ptr [word ptr [obuf]]
	mov	byte ptr [rdx + rcx], al
	mov	rcx,  qword ptr [word ptr [oc]]
	cmp	rcx,  qword ptr [word ptr [output_blocksize]]
	jb	.label_1115
	call	write_output
.label_1115:
	jmp	.label_1127
.label_1127:
	jmp	.label_1081
.label_1081:
	jmp	.label_1102
.label_1102:
	jmp	.label_1086
.label_1086:
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	and	eax, 8
	cmp	eax, 0
	je	.label_1097
	cmp	qword ptr [word ptr [col]],  0
	jbe	.label_1097
	mov	rax,  qword ptr [word ptr [col]]
	mov	qword ptr [rbp - 0x78], rax
.label_1155:
	mov	rax, qword ptr [rbp - 0x78]
	cmp	rax,  qword ptr [word ptr [conversion_blocksize]]
	jae	.label_1137
	jmp	.label_1140
.label_1140:
	mov	al,  byte ptr [byte ptr [space_character]]
	mov	rcx,  qword ptr [word ptr [oc]]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [word ptr [oc]],  rdx
	mov	rdx,  qword ptr [word ptr [obuf]]
	mov	byte ptr [rdx + rcx], al
	mov	rcx,  qword ptr [word ptr [oc]]
	cmp	rcx,  qword ptr [word ptr [output_blocksize]]
	jb	.label_1144
	call	write_output
.label_1144:
	jmp	.label_1151
.label_1151:
	jmp	.label_1153
.label_1153:
	mov	rax, qword ptr [rbp - 0x78]
	add	rax, 1
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_1155
.label_1080:
	jmp	.label_1095
	.section	.text
	.align	16
	#Procedure 0x40c5d7

	.globl dd_copy
	.type dd_copy, @function
dd_copy:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x1c0
	mov	qword ptr [rbp - 0x20], 0
	mov	dword ptr [rbp - 0x24], 0
	cmp	qword ptr [word ptr [skip_records]],  0
	jne	.label_1157
	cmp	qword ptr [word ptr [skip_bytes]],  0
	je	.label_1064
.label_1157:
	xor	edi, edi
	movabs	r8, OFFSET FLAT:skip_bytes
	mov	rax,  qword ptr [word ptr [input_offset]]
	mov	rcx,  qword ptr [word ptr [skip_records]]
	imul	rcx,  qword ptr [word ptr [input_blocksize]]
	add	rax, rcx
	add	rax,  qword ptr [word ptr [skip_bytes]]
	mov	qword ptr [rbp - 0x38], rax
	mov	rsi,  qword ptr [word ptr [input_file]]
	mov	rdx,  qword ptr [word ptr [skip_records]]
	mov	rcx,  qword ptr [word ptr [input_blocksize]]
	call	skip
	mov	qword ptr [rbp - 0x40], rax
	mov	rax,  qword ptr [word ptr [input_offset]]
	mov	rcx, qword ptr [rbp - 0x38]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x38], rcx
	cmp	qword ptr [rbp - 0x40], 0
	jne	.label_1089
	test	byte ptr [byte ptr [input_offset_overflow]],  1
	jne	.label_1100
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_1100
.label_1089:
	cmp	dword ptr [dword ptr [status_level]],  1
	je	.label_1100
	movabs	rdi, OFFSET FLAT:label_1159
	call	gettext
	xor	edi, edi
	mov	esi, 3
	mov	rdx,  qword ptr [word ptr [input_file]]
	mov	qword ptr [rbp - 0x120], rax
	call	quotearg_n_style_colon
	xor	esi, esi
	mov	edi, esi
	mov	rdx, qword ptr [rbp - 0x120]
	mov	rcx, rax
	mov	al, 0
	call	nl_error
.label_1100:
	jmp	.label_1064
.label_1064:
	cmp	qword ptr [word ptr [seek_records]],  0
	jne	.label_1078
	cmp	qword ptr [word ptr [seek_bytes]],  0
	je	.label_1079
.label_1078:
	mov	edi, 1
	lea	r8, [rbp - 0x48]
	mov	rax,  qword ptr [word ptr [seek_bytes]]
	mov	qword ptr [rbp - 0x48], rax
	mov	rsi,  qword ptr [word ptr [output_file]]
	mov	rdx,  qword ptr [word ptr [seek_records]]
	mov	rcx,  qword ptr [word ptr [output_blocksize]]
	call	skip
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x50], 0
	jne	.label_1141
	cmp	qword ptr [rbp - 0x48], 0
	je	.label_1074
.label_1141:
	mov	rdi,  qword ptr [word ptr [obuf]]
	cmp	qword ptr [rbp - 0x50], 0
	mov	qword ptr [rbp - 0x128], rdi
	je	.label_1136
	mov	rax,  qword ptr [word ptr [output_blocksize]]
	mov	qword ptr [rbp - 0x130], rax
	jmp	.label_1142
.label_1092:
	call	alloc_ibuf
	call	alloc_obuf
.label_1095:
	cmp	dword ptr [dword ptr [status_level]],  4
	jne	.label_1147
	call	gethrxtime
	mov	qword ptr [rbp - 0x60], rax
	mov	rax,  qword ptr [word ptr [next_time]]
	cmp	rax, qword ptr [rbp - 0x60]
	jg	.label_1149
	mov	rdi, qword ptr [rbp - 0x60]
	call	print_xfer_stats
	mov	rdi,  qword ptr [word ptr [next_time]]
	add	rdi, 0x3b9aca00
	mov	qword ptr [word ptr [next_time]],  rdi
.label_1149:
	jmp	.label_1147
.label_1147:
	mov	rax,  qword ptr [word ptr [r_partial]]
	add	rax,  qword ptr [word ptr [r_full]]
	mov	rcx,  qword ptr [word ptr [max_records]]
	cmp	qword ptr [word ptr [max_bytes]],  0
	setne	dl
	xor	dl, 0xff
	xor	dl, 0xff
	and	dl, 1
	movzx	esi, dl
	movsxd	rdi, esi
	add	rcx, rdi
	cmp	rax, rcx
	jb	.label_1158
	jmp	.label_1071
.label_1091:
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	and	eax, 0x10
	cmp	eax, 0
	je	.label_1072
	movabs	rdi, OFFSET FLAT:saved_char
	mov	eax, 1
	mov	esi, eax
	call	copy_with_unblock
	jmp	.label_1081
.label_1158:
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	and	eax, 0x400
	cmp	eax, 0
	je	.label_1083
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	and	eax, 0x100
	cmp	eax, 0
	je	.label_1083
	xor	eax, eax
	mov	ecx, 0x20
	mov	rdi,  qword ptr [word ptr [ibuf]]
	mov	edx,  dword ptr [dword ptr [conversions_mask]]
	and	edx, 0x18
	cmp	edx, 0
	cmovne	eax, ecx
	mov	sil, al
	mov	rdx,  qword ptr [word ptr [input_blocksize]]
	movzx	esi, sil
	call	memset
.label_1083:
	mov	rax,  qword ptr [word ptr [r_partial]]
	add	rax,  qword ptr [word ptr [r_full]]
	cmp	rax,  qword ptr [word ptr [max_records]]
	jb	.label_1108
	xor	edi, edi
	mov	rax,  qword ptr [word ptr [iread_fnc]]
	mov	rsi,  qword ptr [word ptr [ibuf]]
	mov	rdx,  qword ptr [word ptr [max_bytes]]
	call	rax
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1118
.label_1084:
	test	byte ptr [byte ptr [translation_needed]],  1
	je	.label_1148
	mov	rdi,  qword ptr [word ptr [ibuf]]
	mov	rsi, qword ptr [rbp - 0x30]
	call	translate_buffer
.label_1148:
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	and	eax, 0x80
	cmp	eax, 0
	je	.label_1124
	lea	rsi, [rbp - 0x30]
	mov	rdi,  qword ptr [word ptr [ibuf]]
	call	swab_buffer
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1130
.label_1065:
	cmp	qword ptr [rbp - 0x50], 0
	je	.label_1131
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, -1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1134
.label_1135:
	jmp	.label_1122
.label_1122:
	test	byte ptr [byte ptr [final_op_was_seek]],  1
	je	.label_1139
	mov	edi, 1
	lea	rsi, [rbp - 0x110]
	call	fstat
	cmp	eax, 0
	je	.label_1145
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_439
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x17c], esi
	call	gettext
	mov	edi, 4
	mov	rsi,  qword ptr [word ptr [output_file]]
	mov	qword ptr [rbp - 0x188], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x17c]
	mov	rdx, qword ptr [rbp - 0x188]
	mov	rcx, rax
	mov	al, 0
	call	nl_error
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1101
.label_1146:
	jmp	.label_1096
.label_1096:
	jmp	.label_1129
.label_1129:
	jmp	.label_1139
.label_1139:
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	and	eax, 0x4000
	cmp	eax, 0
	je	.label_1069
	mov	edi, 1
	call	fdatasync
	cmp	eax, 0
	je	.label_1069
	call	__errno_location
	cmp	dword ptr [rax], 0x26
	je	.label_1075
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	je	.label_1075
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_1077
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x1a4], esi
	call	gettext
	mov	edi, 4
	mov	rsi,  qword ptr [word ptr [output_file]]
	mov	qword ptr [rbp - 0x1b0], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x1a4]
	mov	rdx, qword ptr [rbp - 0x1b0]
	mov	rcx, rax
	mov	al, 0
	call	nl_error
	mov	dword ptr [rbp - 0x24], 1
.label_1075:
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	or	eax, 0x8000
	mov	dword ptr [dword ptr [conversions_mask]],  eax
.label_1069:
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	and	eax, 0x8000
	cmp	eax, 0
	je	.label_1132
	jmp	.label_1109
.label_1109:
	mov	edi, 1
	call	fsync
	cmp	eax, 0
	je	.label_1112
	call	__errno_location
	cmp	dword ptr [rax], 4
	je	.label_1114
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_1116
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x1b4], esi
	call	gettext
	mov	edi, 4
	mov	rsi,  qword ptr [word ptr [output_file]]
	mov	qword ptr [rbp - 0x1c0], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x1b4]
	mov	rdx, qword ptr [rbp - 0x1c0]
	mov	rcx, rax
	mov	al, 0
	call	nl_error
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1101
.label_1156:
	mov	dword ptr [rbp - 0x24], 1
	jmp	.label_1071
.label_1114:
	jmp	.label_1109
.label_1112:
	jmp	.label_1132
.label_1132:
	mov	eax, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 4], eax
.label_1101:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x1c0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40cb58
	.globl sub_40cb58
	.type sub_40cb58, @function
sub_40cb58:

	nop	dword ptr [rax + rax]
.label_1154:
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	and	eax, 0x100
	cmp	eax, 0
	je	.label_1138
	cmp	dword ptr [dword ptr [status_level]],  1
	je	.label_1143
.label_1138:
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_430
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x150], esi
	call	gettext
	mov	edi, 4
	mov	rsi,  qword ptr [word ptr [input_file]]
	mov	qword ptr [rbp - 0x158], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x150]
	mov	rdx, qword ptr [rbp - 0x158]
	mov	rcx, rax
	mov	al, 0
	call	nl_error
.label_1143:
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	and	eax, 0x100
	cmp	eax, 0
	je	.label_1156
	call	print_stats
	xor	edi, edi
	mov	rax,  qword ptr [word ptr [input_blocksize]]
	sub	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x68], rax
	mov	rsi, qword ptr [rbp - 0x68]
	call	invalidate_cache
	mov	rdi, qword ptr [rbp - 0x68]
	mov	byte ptr [rbp - 0x159], al
	call	advance_input_after_read_error
	test	al, 1
	jne	.label_1070
	mov	dword ptr [rbp - 0x24], 1
	mov	byte ptr [byte ptr [input_seekable]],  0
	mov	dword ptr [dword ptr [input_seek_errno]],  0x1d
.label_1070:
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	and	eax, 0x400
	cmp	eax, 0
	je	.label_1080
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_1080
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_1085
.label_1099:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x30]
	call	copy_simple
.label_1152:
	jmp	.label_1093
.label_1093:
	jmp	.label_1095
.label_1137:
	jmp	.label_1097
.label_1097:
	cmp	qword ptr [word ptr [col]],  0
	je	.label_1098
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	and	eax, 0x10
	cmp	eax, 0
	je	.label_1098
	jmp	.label_1105
.label_1105:
	mov	al,  byte ptr [byte ptr [newline_character]]
	mov	rcx,  qword ptr [word ptr [oc]]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [word ptr [oc]],  rdx
	mov	rdx,  qword ptr [word ptr [obuf]]
	mov	byte ptr [rdx + rcx], al
	mov	rcx,  qword ptr [word ptr [oc]]
	cmp	rcx,  qword ptr [word ptr [output_blocksize]]
	jb	.label_1107
	call	write_output
.label_1107:
	jmp	.label_1120
.label_1120:
	jmp	.label_1098
.label_1098:
	cmp	qword ptr [word ptr [oc]],  0
	je	.label_1122
	mov	edi, 1
	mov	rsi,  qword ptr [word ptr [obuf]]
	mov	rdx,  qword ptr [word ptr [oc]]
	call	iwrite
	mov	qword ptr [rbp - 0x80], rax
	mov	rax, qword ptr [rbp - 0x80]
	add	rax,  qword ptr [word ptr [w_bytes]]
	mov	qword ptr [word ptr [w_bytes]],  rax
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_1128
	mov	rax,  qword ptr [word ptr [w_partial]]
	add	rax, 1
	mov	qword ptr [word ptr [w_partial]],  rax
.label_1128:
	mov	rax, qword ptr [rbp - 0x80]
	cmp	rax,  qword ptr [word ptr [oc]]
	je	.label_1135
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_1133
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x16c], esi
	call	gettext
	mov	edi, 4
	mov	rsi,  qword ptr [word ptr [output_file]]
	mov	qword ptr [rbp - 0x178], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x16c]
	mov	rdx, qword ptr [rbp - 0x178]
	mov	rcx, rax
	mov	al, 0
	call	nl_error
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1101
.label_1117:
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_1154
	xor	eax, eax
	mov	cl, al
	mov	dl,  byte ptr [byte ptr [i_nocache]]
	and	dl, 1
	movzx	eax, dl
	mov	dl,  byte ptr [byte ptr [i_nocache_eof]]
	and	dl, 1
	movzx	esi, dl
	or	esi, eax
	cmp	esi, 0
	setne	dl
	and	dl, 1
	mov	byte ptr [byte ptr [i_nocache_eof]],  dl
	test	byte ptr [byte ptr [o_nocache]],  1
	mov	byte ptr [rbp - 0x14b], cl
	je	.label_1066
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	and	eax, 0x200
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	mov	byte ptr [rbp - 0x14b], cl
.label_1066:
	mov	al, byte ptr [rbp - 0x14b]
	and	al, 1
	movzx	ecx, al
	mov	al,  byte ptr [byte ptr [o_nocache_eof]]
	and	al, 1
	movzx	edx, al
	or	edx, ecx
	cmp	edx, 0
	setne	al
	and	al, 1
	mov	byte ptr [byte ptr [o_nocache_eof]],  al
	jmp	.label_1071
.label_1071:
	test	byte ptr [byte ptr [char_is_saved]],  1
	je	.label_1086
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	and	eax, 8
	cmp	eax, 0
	je	.label_1091
	movabs	rdi, OFFSET FLAT:saved_char
	mov	eax, 1
	mov	esi, eax
	call	copy_with_block
	jmp	.label_1102
.label_1126:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax,  qword ptr [word ptr [input_blocksize]]
	jne	.label_1103
	mov	rax,  qword ptr [word ptr [w_full]]
	add	rax, 1
	mov	qword ptr [word ptr [w_full]],  rax
	jmp	.label_1106
.label_1108:
	xor	edi, edi
	mov	rax,  qword ptr [word ptr [iread_fnc]]
	mov	rsi,  qword ptr [word ptr [ibuf]]
	mov	rdx,  qword ptr [word ptr [input_blocksize]]
	call	rax
	mov	qword ptr [rbp - 0x18], rax
.label_1118:
	cmp	qword ptr [rbp - 0x18], 0
	jle	.label_1117
	mov	rdi, qword ptr [rbp - 0x18]
	call	advance_input_offset
	test	byte ptr [byte ptr [i_nocache]],  1
	je	.label_1121
	xor	edi, edi
	mov	rsi, qword ptr [rbp - 0x18]
	call	invalidate_cache
	mov	byte ptr [rbp - 0x14a], al
.label_1121:
	jmp	.label_1068
.label_1145:
	mov	eax, dword ptr [rbp - 0xf8]
	and	eax, 0xf000
	cmp	eax, 0x8000
	je	.label_1125
	mov	eax, dword ptr [rbp - 0xf8]
	sub	eax, dword ptr [rbp - 0xf8]
	cmp	eax, 0
	je	.label_1129
.label_1125:
	mov	eax, 1
	xor	ecx, ecx
	mov	esi, ecx
	mov	edi, eax
	mov	edx, eax
	call	lseek
	xor	ecx, ecx
	mov	esi, ecx
	mov	qword ptr [rbp - 0x118], rax
	cmp	rsi, qword ptr [rbp - 0x118]
	jg	.label_1096
	mov	rax, qword ptr [rbp - 0xe0]
	cmp	rax, qword ptr [rbp - 0x118]
	jge	.label_1096
	mov	edi, 1
	mov	rsi, qword ptr [rbp - 0x118]
	call	iftruncate
	cmp	eax, 0
	je	.label_1146
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_1150
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x18c], esi
	call	gettext
	mov	edi, 4
	mov	rcx, qword ptr [rbp - 0x118]
	mov	rsi,  qword ptr [word ptr [output_file]]
	mov	qword ptr [rbp - 0x198], rax
	mov	qword ptr [rbp - 0x1a0], rcx
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x18c]
	mov	rdx, qword ptr [rbp - 0x198]
	mov	rcx, qword ptr [rbp - 0x1a0]
	mov	r8, rax
	mov	al, 0
	call	nl_error
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1101
.label_1094:
	jmp	.label_1067
.label_1067:
	jmp	.label_1068
.label_1068:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax,  qword ptr [word ptr [input_blocksize]]
	jae	.label_1090
	mov	rax,  qword ptr [word ptr [r_partial]]
	add	rax, 1
	mov	qword ptr [word ptr [r_partial]],  rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x20], rax
	mov	ecx,  dword ptr [dword ptr [conversions_mask]]
	and	ecx, 0x400
	cmp	ecx, 0
	je	.label_1123
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	and	eax, 0x100
	cmp	eax, 0
	jne	.label_1088
	xor	eax, eax
	mov	ecx, 0x20
	mov	rdx,  qword ptr [word ptr [ibuf]]
	add	rdx, qword ptr [rbp - 0x30]
	mov	esi,  dword ptr [dword ptr [conversions_mask]]
	and	esi, 0x18
	cmp	esi, 0
	cmovne	eax, ecx
	mov	dil, al
	mov	r8,  qword ptr [word ptr [input_blocksize]]
	sub	r8, qword ptr [rbp - 0x30]
	mov	byte ptr [rbp - 0x15a], dil
	mov	rdi, rdx
	mov	r9b, byte ptr [rbp - 0x15a]
	movzx	esi, r9b
	mov	rdx, r8
	call	memset
.label_1088:
	mov	rax,  qword ptr [word ptr [input_blocksize]]
	mov	qword ptr [rbp - 0x30], rax
.label_1123:
	jmp	.label_1113
.label_1090:
	mov	rax,  qword ptr [word ptr [r_full]]
	add	rax, 1
	mov	qword ptr [word ptr [r_full]],  rax
	mov	qword ptr [rbp - 0x20], 0
.label_1113:
	mov	rax,  qword ptr [word ptr [ibuf]]
	cmp	rax,  qword ptr [word ptr [obuf]]
	jne	.label_1084
	mov	edi, 1
	mov	rsi,  qword ptr [word ptr [obuf]]
	mov	rdx, qword ptr [rbp - 0x30]
	call	iwrite
	mov	qword ptr [rbp - 0x70], rax
	mov	rax, qword ptr [rbp - 0x70]
	add	rax,  qword ptr [word ptr [w_bytes]]
	mov	qword ptr [word ptr [w_bytes]],  rax
	mov	rax, qword ptr [rbp - 0x70]
	cmp	rax, qword ptr [rbp - 0x30]
	je	.label_1126
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_1133
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x160], esi
	call	gettext
	mov	edi, 4
	mov	rsi,  qword ptr [word ptr [output_file]]
	mov	qword ptr [rbp - 0x168], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x160]
	mov	rdx, qword ptr [rbp - 0x168]
	mov	rcx, rax
	mov	al, 0
	call	nl_error
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1101
.label_1087:
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	and	eax, 0x10
	cmp	eax, 0
	je	.label_1099
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x30]
	call	copy_with_unblock
	jmp	.label_1152
.label_1110:
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x138], rax
.label_1111:
	mov	rax, qword ptr [rbp - 0x138]
	mov	edi, 1
	mov	qword ptr [rbp - 0x58], rax
	mov	rsi,  qword ptr [word ptr [obuf]]
	mov	rdx, qword ptr [rbp - 0x58]
	call	iwrite
	cmp	rax, qword ptr [rbp - 0x58]
	je	.label_1065
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_363
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x13c], esi
	call	gettext
	mov	edi, 4
	mov	rsi,  qword ptr [word ptr [output_file]]
	mov	qword ptr [rbp - 0x148], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x13c]
	mov	rdx, qword ptr [rbp - 0x148]
	mov	rcx, rax
	mov	al, 0
	call	nl_error
	mov	edi, 1
	call	quit
.label_1124:
	mov	rax,  qword ptr [word ptr [ibuf]]
	mov	qword ptr [rbp - 0x10], rax
.label_1130:
	mov	eax,  dword ptr [dword ptr [conversions_mask]]
	and	eax, 8
	cmp	eax, 0
	je	.label_1087
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x30]
	call	copy_with_block
	jmp	.label_1093
.label_1085:
	jmp	.label_1094
.label_1103:
	mov	rax,  qword ptr [word ptr [w_partial]]
	add	rax, 1
	mov	qword ptr [word ptr [w_partial]],  rax
.label_1106:
	jmp	.label_1104
.label_1104:
	jmp	.label_1095
.label_1166:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 8], 0
	je	.label_1164
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
.label_1164:
	movabs	rdi, OFFSET FLAT:label_1171
	call	gettext
	movabs	rsi, OFFSET FLAT:label_580
	movabs	rdx, OFFSET FLAT:label_581
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
	je	.label_1165
	movabs	rsi, OFFSET FLAT:label_1161
	mov	eax, 3
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x20]
	call	strncmp
	cmp	eax, 0
	je	.label_1165
	movabs	rdi, OFFSET FLAT:label_1167
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x2c], eax
.label_1165:
	movabs	rdi, OFFSET FLAT:label_1162
	call	gettext
	movabs	rsi, OFFSET FLAT:label_581
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_1170
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	movabs	rdx, OFFSET FLAT:label_24
	movabs	rsi, OFFSET FLAT:label_1160
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
	#Procedure 0x40d3c5
	.globl sub_40d3c5
	.type sub_40d3c5, @function
sub_40d3c5:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40d3cc

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
.label_1169:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx], 0
	mov	byte ptr [rbp - 0x21], cl
	je	.label_1168
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax]
	call	strcmp
	cmp	eax, 0
	sete	cl
	xor	cl, 0xff
	mov	byte ptr [rbp - 0x21], cl
.label_1168:
	mov	al, byte ptr [rbp - 0x21]
	test	al, 1
	jne	.label_1163
	jmp	.label_1166
.label_1163:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1169
.label_1173:
	mov	byte ptr [rbp - 1], 0
.label_1174:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d44e
	.globl sub_40d44e
	.type sub_40d44e, @function
sub_40d44e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x40d450
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
	jb	.label_1172
	jmp	.label_1175
.label_1175:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x14], eax
	ja	.label_1173
	jmp	.label_1172
.label_1172:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1174
.label_1180:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	byte ptr [rcx], 0
	mov	byte ptr [rbp - 0x1a], al
	je	.label_1176
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	movsx	edx, byte ptr [rbp - 0x19]
	cmp	ecx, edx
	sete	sil
	mov	byte ptr [rbp - 0x1a], sil
.label_1176:
	mov	al, byte ptr [rbp - 0x1a]
	and	al, 1
	mov	byte ptr [rbp - 1], al
.label_1177:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d4c9
	.globl sub_40d4c9
	.type sub_40d4c9, @function
sub_40d4c9:

	nop	word ptr cs:[rax + rax]
.label_1179:
	jmp	.label_1178
	.section	.text
	.align	16
	#Procedure 0x40d4dd

	.globl operand_matches
	.type operand_matches, @function
operand_matches:
	push	rbp
	mov	rbp, rsp
	mov	al, dl
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	byte ptr [rbp - 0x19], al
.label_1178:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	byte ptr [rax], 0
	je	.label_1180
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	movsx	edx, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	movsx	esi, byte ptr [rax]
	cmp	edx, esi
	je	.label_1179
	mov	byte ptr [rbp - 1], 0
	jmp	.label_1177
	.section	.text
	.align	16
	#Procedure 0x40d530

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
	jne	.label_1181
	call	abort
.label_1181:
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
	#Procedure 0x40d594
	.globl sub_40d594
	.type sub_40d594, @function
sub_40d594:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d5a0

	.globl bkm_scale
	.type bkm_scale, @function
bkm_scale:
	push	rbp
	mov	rbp, rsp
	mov	rax, -1
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	movsxd	rdi, dword ptr [rbp - 0x14]
	xor	esi, esi
	mov	edx, esi
	div	rdi
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rdi]
	jae	.label_1182
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax], -1
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1183
.label_1182:
	movsxd	rax, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, qword ptr [rcx]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 0
.label_1183:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d5fc
	.globl sub_40d5fc
	.type sub_40d5fc, @function
sub_40d5fc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40d600
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
.label_1186:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_1184
	jmp	.label_1185
.label_1185:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1186
.label_1184:
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
.label_1187:
	mov	byte ptr [rbp - 1], 0
.label_1191:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d67e
	.globl sub_40d67e
	.type sub_40d67e, @function
sub_40d67e:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d689
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
	jb	.label_1188
	jmp	.label_1189
.label_1189:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 0x1a
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_1188
	jmp	.label_1190
.label_1190:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_1187
	jmp	.label_1188
.label_1188:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1191
.label_1198:
	jmp	.label_1192
.label_1192:
	mov	rax, qword ptr [rbp - 0x20]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x21], cl
	cmp	byte ptr [rbp - 0x21], 0
	je	.label_1201
	mov	byte ptr [rbp - 1], 0
	jmp	.label_1197
.label_1196:
	jmp	.label_1193
.label_1201:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_1195
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1197
.label_1195:
	mov	rax, qword ptr [rbp - 0x18]
	and	rax, 0xf
	cmp	rax, 0
	jne	.label_1199
	jmp	.label_1194
.label_1200:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, -1
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_1196
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1197
.label_1199:
	jmp	.label_1192
.label_1194:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x18]
	call	memcmp
	cmp	eax, 0
	sete	cl
	and	cl, 1
	mov	byte ptr [rbp - 1], cl
.label_1197:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d7a5
	.globl sub_40d7a5
	.type sub_40d7a5, @function
sub_40d7a5:

	nop	
.label_1202:
	jmp	.label_1193
.label_1193:
	mov	rax, qword ptr [rbp - 0x18]
	and	rax, 0
	cmp	rax, 0
	je	.label_1198
	mov	rax, qword ptr [rbp - 0x20]
	cmp	byte ptr [rax], 0
	je	.label_1200
	mov	byte ptr [rbp - 1], 0
	jmp	.label_1197
	.section	.text
	.align	16
	#Procedure 0x40d7d4

	.globl is_nul
	.type is_nul, @function
is_nul:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rsi
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_1202
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1197
	.section	.text
	.align	16
	#Procedure 0x40d800
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
	#Procedure 0x40d816
	.globl sub_40d816
	.type sub_40d816, @function
sub_40d816:

	nop	word ptr cs:[rax + rax]
.label_1219:
	jmp	.label_1213
.label_1213:
	mov	qword ptr [word ptr [col]],  0
	jmp	.label_1215
.label_1216:
	mov	rax,  qword ptr [word ptr [col]]
	cmp	rax,  qword ptr [word ptr [conversion_blocksize]]
	jae	.label_1217
	jmp	.label_1208
.label_1208:
	mov	rax, qword ptr [rbp - 8]
	mov	cl, byte ptr [rax]
	mov	rax,  qword ptr [word ptr [oc]]
	mov	rdx, rax
	add	rdx, 1
	mov	qword ptr [word ptr [oc]],  rdx
	mov	rdx,  qword ptr [word ptr [obuf]]
	mov	byte ptr [rdx + rax], cl
	mov	rax,  qword ptr [word ptr [oc]]
	cmp	rax,  qword ptr [word ptr [output_blocksize]]
	jb	.label_1210
	call	write_output
.label_1210:
	jmp	.label_1212
.label_1212:
	jmp	.label_1217
.label_1217:
	jmp	.label_1206
.label_1206:
	mov	rax,  qword ptr [word ptr [col]]
	add	rax, 1
	mov	qword ptr [word ptr [col]],  rax
.label_1215:
	jmp	.label_1207
.label_1207:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, -1
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1220
.label_1218:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d8df

	.globl copy_with_block
	.type copy_with_block, @function
copy_with_block:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rsi
.label_1220:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1218
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	movsx	edx,  byte ptr [byte ptr [newline_character]]
	cmp	ecx, edx
	jne	.label_1204
	mov	rax,  qword ptr [word ptr [col]]
	cmp	rax,  qword ptr [word ptr [conversion_blocksize]]
	jae	.label_1213
	mov	rax,  qword ptr [word ptr [col]]
	mov	qword ptr [rbp - 0x20], rax
.label_1203:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax,  qword ptr [word ptr [conversion_blocksize]]
	jae	.label_1219
	jmp	.label_1209
.label_1209:
	mov	al,  byte ptr [byte ptr [space_character]]
	mov	rcx,  qword ptr [word ptr [oc]]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [word ptr [oc]],  rdx
	mov	rdx,  qword ptr [word ptr [obuf]]
	mov	byte ptr [rdx + rcx], al
	mov	rcx,  qword ptr [word ptr [oc]]
	cmp	rcx,  qword ptr [word ptr [output_blocksize]]
	jb	.label_1211
	call	write_output
.label_1211:
	jmp	.label_1205
.label_1205:
	jmp	.label_1214
.label_1214:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_1203
.label_1204:
	mov	rax,  qword ptr [word ptr [col]]
	cmp	rax,  qword ptr [word ptr [conversion_blocksize]]
	jne	.label_1216
	mov	rax,  qword ptr [word ptr [r_truncate]]
	add	rax, 1
	mov	qword ptr [word ptr [r_truncate]],  rax
	jmp	.label_1206
	.section	.text
	.align	16
	#Procedure 0x40d9e0

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
	#Procedure 0x40da13
	.globl sub_40da13
	.type sub_40da13, @function
sub_40da13:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40da20
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
	#Procedure 0x40da4f
	.globl sub_40da4f
	.type sub_40da4f, @function
sub_40da4f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x40da50
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
	#Procedure 0x40da77
	.globl sub_40da77
	.type sub_40da77, @function
sub_40da77:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40da80
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
	jae	.label_1221
	call	xalloc_die
.label_1221:
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
	#Procedure 0x40dad0

	.globl alloc_ibuf
	.type alloc_ibuf, @function
alloc_ibuf:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x2c0
	cmp	qword ptr [word ptr [ibuf]],  0
	je	.label_1222
	jmp	.label_1225
.label_1223:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 2
	mov	qword ptr [rbp - 8], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi,  qword ptr [word ptr [page_size]]
	call	ptr_align
	mov	qword ptr [word ptr [ibuf]],  rax
.label_1225:
	add	rsp, 0x2c0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40db1d
	.globl sub_40db1d
	.type sub_40db1d, @function
sub_40db1d:

	nop	word ptr cs:[rax + rax]
.label_1222:
	mov	rax,  qword ptr [word ptr [input_blocksize]]
	mov	rcx,  qword ptr [word ptr [page_size]]
	shl	rcx, 1
	add	rcx, 4
	sub	rcx, 1
	add	rax, rcx
	mov	rdi, rax
	call	malloc
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [rbp - 8], 0
	jne	.label_1223
	movabs	rdi, OFFSET FLAT:label_1224
	mov	rax,  qword ptr [word ptr [input_blocksize]]
	mov	qword ptr [rbp - 0x10], rax
	call	gettext
	mov	edx, 0x1f1
	mov	ecx, 1
	mov	edi, ecx
	lea	rsi, [rbp - 0x2a0]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	r8,  qword ptr [word ptr [input_blocksize]]
	mov	qword ptr [rbp - 0x2a8], rdi
	mov	rdi, r8
	mov	r8, qword ptr [rbp - 0x2a8]
	mov	qword ptr [rbp - 0x2b0], rcx
	mov	rcx, r8
	mov	qword ptr [rbp - 0x2b8], rax
	call	human_readable
	mov	edi, 1
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x2b8]
	mov	rcx, qword ptr [rbp - 0x2b0]
	mov	r8, rax
	mov	al, 0
	call	nl_error
	.section	.text
	.align	16
	#Procedure 0x40dbe0

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
	jne	.label_1226
	movabs	rax, OFFSET FLAT:label_24
	mov	qword ptr [rbp - 8], rax
.label_1226:
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_1227
	movabs	rax, OFFSET FLAT:label_1228
	mov	qword ptr [rbp - 8], rax
.label_1227:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40dc37
	.globl sub_40dc37
	.type sub_40dc37, @function
sub_40dc37:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40dc40

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
	#Procedure 0x40dc65
	.globl sub_40dc65
	.type sub_40dc65, @function
sub_40dc65:

	nop	word ptr cs:[rax + rax]
.label_1231:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
.label_1229:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40dc82
	.globl sub_40dc82
	.type sub_40dc82, @function
sub_40dc82:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40dc91

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
	jne	.label_1230
	lea	rax, [rbp - 0x34]
	mov	qword ptr [rbp - 0x10], rax
.label_1230:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	call	mbrtowc
	mov	rcx, -2
	mov	qword ptr [rbp - 0x30], rax
	cmp	rcx, qword ptr [rbp - 0x30]
	ja	.label_1231
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1231
	xor	edi, edi
	call	hard_locale
	test	al, 1
	jne	.label_1231
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x35], cl
	movzx	edx, byte ptr [rbp - 0x35]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], edx
	mov	qword ptr [rbp - 8], 1
	jmp	.label_1229
	.section	.text
	.align	16
	#Procedure 0x40dd20
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x20
	sub	edi, 0x5e
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1232
	jmp	.label_1234
.label_1234:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1233
.label_1232:
	mov	byte ptr [rbp - 1], 0
.label_1233:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40dd52
	.globl sub_40dd52
	.type sub_40dd52, @function
sub_40dd52:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40dd60
	.globl c_isblank
	.type c_isblank, @function
c_isblank:

	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0x20
	mov	byte ptr [rbp - 5], al
	je	.label_1235
	cmp	dword ptr [rbp - 4], 9
	sete	al
	mov	byte ptr [rbp - 5], al
.label_1235:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40dd8a
	.globl sub_40dd8a
	.type sub_40dd8a, @function
sub_40dd8a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40dd90

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
	je	.label_1236
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_1238
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	je	.label_1239
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_1237
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_1240
.label_1239:
	mov	byte ptr [rbp - 5], 0
.label_1240:
	jmp	.label_1236
.label_1236:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40de03
	.globl sub_40de03
	.type sub_40de03, @function
sub_40de03:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40de10

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
	jne	.label_1241
	cmp	qword ptr [rbp - 8], 0
	je	.label_1241
	call	xalloc_die
.label_1241:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40de4e
	.globl sub_40de4e
	.type sub_40de4e, @function
sub_40de4e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x40de50
	.globl xsum4
	.type xsum4, @function
xsum4:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	xsum
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	xsum
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdi, rax
	call	xsum
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40de93
	.globl sub_40de93
	.type sub_40de93, @function
sub_40de93:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40dea0

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
	#Procedure 0x40df15
	.globl sub_40df15
	.type sub_40df15, @function
sub_40df15:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40df20
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rax,  qword ptr [word ptr [slotvec]]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 0xc], 1
.label_1244:
	mov	eax, dword ptr [rbp - 0xc]
	cmp	eax,  dword ptr [dword ptr [nslots]]
	jge	.label_1243
	movsxd	rax, dword ptr [rbp - 0xc]
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, 1
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_1244
.label_1243:
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + 8], rax
	je	.label_1245
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	movabs	rax, OFFSET FLAT:slot0
	mov	qword ptr [word ptr [slotvec0]],  0x100
	mov	qword ptr [word ptr [label_1041]],  rax
.label_1245:
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 8], rax
	je	.label_1242
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	free
	movabs	rax, OFFSET FLAT:slotvec0
	mov	qword ptr [word ptr [slotvec]],  rax
.label_1242:
	mov	dword ptr [dword ptr [nslots]],  1
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40dff4
	.globl sub_40dff4
	.type sub_40dff4, @function
sub_40dff4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e000
	.globl xsum3
	.type xsum3, @function
xsum3:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	xsum
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	xsum
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e033
	.globl sub_40e033
	.type sub_40e033, @function
sub_40e033:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e0a5
	.globl sub_40e0a5
	.type sub_40e0a5, @function
sub_40e0a5:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e0b2
	.globl sub_40e0b2
	.type sub_40e0b2, @function
sub_40e0b2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e0d6
	.globl sub_40e0d6
	.type sub_40e0d6, @function
sub_40e0d6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e0e9
	.globl sub_40e0e9
	.type sub_40e0e9, @function
sub_40e0e9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40e0f0

	.globl fstat
	.type fstat, @function
fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat
