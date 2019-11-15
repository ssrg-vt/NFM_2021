	.section	.text
	.align	16
	#Procedure 0x402079
	.globl sub_402079
	.type sub_402079, @function
sub_402079:

	hlt	
	.section	.text
	.align	16
	#Procedure 0x40207a
	.globl sub_40207a
	.type sub_40207a, @function
sub_40207a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4020b2
	.globl sub_4020b2
	.type sub_4020b2, @function
sub_4020b2:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4020fa
	.globl sub_4020fa
	.type sub_4020fa, @function
sub_4020fa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40211c
	.globl sub_40211c
	.type sub_40211c, @function
sub_40211c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40212d
	.globl sub_40212d
	.type sub_40212d, @function
sub_40212d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402146
	.globl sub_402146
	.type sub_402146, @function
sub_402146:

	nop	word ptr cs:[rax + rax]
.label_33:
	mov	rax, qword ptr [rbp - 0x230]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x240], rdx
.label_13:
	mov	rax, qword ptr [rbp - 0x240]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x38], rax
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x24], eax
.label_10:
	jmp	.label_9
.label_9:
	mov	eax, dword ptr [rbp - 0x24]
	add	rsp, 0x240
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4021a0
	.globl sub_4021a0
	.type sub_4021a0, @function
sub_4021a0:

	nop	dword ptr [rax + rax]
.label_18:
	mov	rax, qword ptr [rbp - 0x218]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x228], rdx
.label_24:
	mov	rax, qword ptr [rbp - 0x228]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x30], ecx
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	edx, dword ptr [rbp - 0x30]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_10
	.section	.text
	.align	16
	#Procedure 0x4021e9

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
	je	.label_35
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
.label_35:
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
	je	.label_25
	jmp	.label_27
.label_27:
	mov	eax, dword ptr [rbp - 0x1a0]
	sub	eax, 0x406
	mov	dword ptr [rbp - 0x1a4], eax
	je	.label_29
	jmp	.label_32
.label_30:
	mov	rax, qword ptr [rbp - 0x1b0]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x1c0], rdx
.label_11:
	mov	rax, qword ptr [rbp - 0x1c0]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x28], ecx
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 0x28]
	call	rpl_fcntl_DUPFD
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_9
.label_12:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x218], rax
	mov	dword ptr [rbp - 0x21c], ecx
	ja	.label_18
	mov	eax, dword ptr [rbp - 0x21c]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x218]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x228], rcx
	jmp	.label_24
.label_25:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x1b0], rax
	mov	dword ptr [rbp - 0x1b4], ecx
	ja	.label_30
	mov	eax, dword ptr [rbp - 0x1b4]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x1b0]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x1c0], rcx
	jmp	.label_11
.label_19:
	mov	rax, qword ptr [rbp - 0x1c8]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x1d8], rdx
.label_26:
	mov	rax, qword ptr [rbp - 0x1d8]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x2c], ecx
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 0x2c]
	call	rpl_fcntl_DUPFD_CLOEXEC
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_9
.label_38:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x230], rax
	mov	dword ptr [rbp - 0x234], ecx
	ja	.label_33
	mov	eax, dword ptr [rbp - 0x234]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x230]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x240], rcx
	jmp	.label_13
.label_29:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x1c8], rax
	mov	dword ptr [rbp - 0x1cc], ecx
	ja	.label_19
	mov	eax, dword ptr [rbp - 0x1cc]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x1c8]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x1d8], rcx
	jmp	.label_26
.label_32:
	mov	eax, dword ptr [rbp - 8]
	test	eax, eax
	mov	dword ptr [rbp - 0x1dc], eax
	je	.label_12
	jmp	.label_36
.label_36:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 1
	mov	dword ptr [rbp - 0x1e0], eax
	je	.label_22
	jmp	.label_14
.label_14:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 2
	mov	dword ptr [rbp - 0x1e4], eax
	je	.label_12
	jmp	.label_20
.label_20:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 3
	mov	dword ptr [rbp - 0x1e8], eax
	je	.label_22
	jmp	.label_17
.label_17:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 4
	mov	dword ptr [rbp - 0x1ec], eax
	je	.label_12
	jmp	.label_31
.label_31:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 8
	mov	dword ptr [rbp - 0x1f0], eax
	je	.label_12
	jmp	.label_37
.label_37:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 9
	mov	dword ptr [rbp - 0x1f4], eax
	je	.label_22
	jmp	.label_15
.label_15:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0xa
	mov	dword ptr [rbp - 0x1f8], eax
	je	.label_12
	jmp	.label_21
.label_21:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0xb
	mov	dword ptr [rbp - 0x1fc], eax
	je	.label_22
	jmp	.label_28
.label_28:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x400
	mov	dword ptr [rbp - 0x200], eax
	je	.label_12
	jmp	.label_34
.label_34:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x401
	mov	dword ptr [rbp - 0x204], eax
	je	.label_22
	jmp	.label_39
.label_39:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x402
	mov	dword ptr [rbp - 0x208], eax
	je	.label_12
	jmp	.label_16
.label_16:
	mov	eax, dword ptr [rbp - 0x1dc]
	add	eax, 0xfffffbfa
	sub	eax, 2
	mov	dword ptr [rbp - 0x20c], eax
	jb	.label_12
	jmp	.label_23
.label_23:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x408
	mov	dword ptr [rbp - 0x210], eax
	jne	.label_38
	jmp	.label_22
.label_22:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_10
.label_95:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_65
	mov	rax, qword ptr [rbp - 0x28]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x20]
	cmp	rdx, 0
	jne	.label_65
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
	jae	.label_72
	xor	eax, eax
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0xb8]
	setb	dl
	and	dl, 1
	movzx	eax, dl
	mov	dword ptr [rbp - 0x14c], eax
	jmp	.label_48
.label_76:
	cmp	dword ptr [rbp - 0x2c], 0
	jne	.label_55
	xor	eax, eax
	mov	ecx, dword ptr [rbp - 0x3c]
	add	ecx, dword ptr [rbp - 0x64]
	cmp	eax, ecx
	jge	.label_55
.label_79:
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	mov	ecx, dword ptr [rbp - 0x14]
	and	ecx, 0x10
	cmp	ecx, 0
	je	.label_59
	mov	rax, qword ptr [rbp - 0x38]
	mov	ecx, dword ptr [rbp - 0x30]
	mov	edx, ecx
	cmp	rax, rdx
	jne	.label_59
	mov	eax, dword ptr [rbp - 0x40]
	cmp	eax, dword ptr [rbp - 0x44]
	jge	.label_59
	mov	eax, dword ptr [rbp - 0x40]
	add	eax, 1
	mov	dword ptr [rbp - 0x40], eax
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 8
	cmp	eax, 0
	jne	.label_63
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
.label_63:
	mov	qword ptr [rbp - 0x38], 1
.label_59:
	jmp	.label_55
.label_55:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x60], rax
.label_94:
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
	jne	.label_94
	jmp	.label_52
.label_52:
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 4
	cmp	eax, 0
	je	.label_57
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x50]
	sub	rax, rcx
	mov	rdx, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rbp - 0x88]
	mov	rsi, rax
	call	group_number
	mov	qword ptr [rbp - 0x50], rax
.label_57:
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 0x80
	cmp	eax, 0
	je	.label_69
	cmp	dword ptr [rbp - 0x40], 0
	jge	.label_73
	mov	dword ptr [rbp - 0x40], 0
	mov	qword ptr [rbp - 0x118], 1
.label_42:
	mov	rax, qword ptr [rbp - 0x118]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_43
	mov	eax, dword ptr [rbp - 0x40]
	add	eax, 1
	mov	dword ptr [rbp - 0x40], eax
	cmp	eax, dword ptr [rbp - 0x44]
	jne	.label_75
	jmp	.label_43
	.section	.text
	.align	16
	#Procedure 0x4028dc

	.globl human_readable
	.type human_readable, @function
human_readable:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x1f0
	movabs	rax, OFFSET FLAT:label_86
	movabs	r9, OFFSET FLAT:label_87
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
	jae	.label_68
	cmp	qword ptr [rbp - 0x98], 0x10
	ja	.label_68
	mov	rax, qword ptr [rbp - 0x90]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x70], rax
	mov	rax, qword ptr [rbp - 0x98]
	mov	qword ptr [rbp - 0x78], rax
.label_68:
	mov	rax, qword ptr [rbp - 0x90]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x80], rax
	mov	rax, qword ptr [rbp - 0x90]
	mov	rdi, qword ptr [rax + 8]
	call	strlen
	cmp	rax, 0x10
	ja	.label_88
	mov	rax, qword ptr [rbp - 0x90]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x88], rax
.label_88:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x28b
	add	rax, -1
	add	rax, -3
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_95
	mov	rax, qword ptr [rbp - 0x20]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x28]
	cmp	rdx, 0
	jne	.label_49
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
	jne	.label_54
	mov	dword ptr [rbp - 0x3c], 0
	mov	dword ptr [rbp - 0x64], 0
	jmp	.label_66
.label_66:
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 0x10
	cmp	eax, 0
	je	.label_71
	mov	dword ptr [rbp - 0x40], 0
	mov	eax, dword ptr [rbp - 0x30]
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x38]
	ja	.label_74
	jmp	.label_81
.label_81:
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
	jae	.label_82
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, dword ptr [rbp - 0x64]
	cmp	eax, 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	mov	dword ptr [rbp - 0x1d4], eax
	jmp	.label_53
.label_82:
	mov	eax, dword ptr [rbp - 0x30]
	mov	ecx, dword ptr [rbp - 0x108]
	add	ecx, dword ptr [rbp - 0x64]
	cmp	eax, ecx
	setb	dl
	and	dl, 1
	movzx	eax, dl
	add	eax, 2
	mov	dword ptr [rbp - 0x1d4], eax
.label_53:
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
	ja	.label_67
	mov	eax, dword ptr [rbp - 0x40]
	cmp	eax, dword ptr [rbp - 0x44]
	setl	cl
	mov	byte ptr [rbp - 0x1d5], cl
.label_67:
	mov	al, byte ptr [rbp - 0x1d5]
	test	al, 1
	jne	.label_81
	cmp	qword ptr [rbp - 0x38], 0xa
	jae	.label_70
	cmp	dword ptr [rbp - 0x2c], 1
	jne	.label_85
	mov	eax, 2
	mov	ecx, dword ptr [rbp - 0x64]
	mov	edx, dword ptr [rbp - 0x3c]
	and	edx, 1
	add	ecx, edx
	cmp	eax, ecx
	jl	.label_45
	jmp	.label_46
.label_54:
	jmp	.label_49
.label_49:
	jmp	.label_89
.label_75:
	jmp	.label_40
.label_40:
	mov	eax, dword ptr [rbp - 0x30]
	mov	ecx, eax
	imul	rcx, qword ptr [rbp - 0x118]
	mov	qword ptr [rbp - 0x118], rcx
	jmp	.label_42
.label_80:
	movsxd	rax, dword ptr [rbp - 0x40]
	movsx	ecx,  byte ptr [byte ptr [+ (rax * 1) + power_letter]]
	mov	dword ptr [rbp - 0x1dc], ecx
.label_84:
	mov	eax, dword ptr [rbp - 0x1dc]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rsi, rdx
	add	rsi, 1
	mov	qword ptr [rbp - 0x58], rsi
	mov	byte ptr [rdx], cl
.label_77:
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 0x100
	cmp	eax, 0
	je	.label_56
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 0x20
	cmp	eax, 0
	je	.label_60
	cmp	dword ptr [rbp - 0x40], 0
	je	.label_60
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x58], rcx
	mov	byte ptr [rax], 0x69
.label_60:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x58], rcx
	mov	byte ptr [rax], 0x42
.label_56:
	jmp	.label_69
.label_69:
	mov	rax, qword ptr [rbp - 0x58]
	mov	byte ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x50]
	add	rsp, 0x1f0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402cb0
	.globl sub_402cb0
	.type sub_402cb0, @function
sub_402cb0:

	nop	word ptr [rax + rax]
.label_72:
	mov	rax, qword ptr [rbp - 0xa8]
	cmp	rax, qword ptr [rbp - 0xb8]
	setb	cl
	and	cl, 1
	movzx	edx, cl
	add	edx, 2
	mov	dword ptr [rbp - 0x14c], edx
.label_48:
	mov	eax, dword ptr [rbp - 0x14c]
	mov	dword ptr [rbp - 0x64], eax
	jmp	.label_66
.label_92:
	fld1	
	fstp	xword ptr [rbp - 0x100]
	mov	dword ptr [rbp - 0x40], 0
.label_64:
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
	jb	.label_83
	jmp	.label_58
.label_58:
	mov	eax, dword ptr [rbp - 0x40]
	cmp	eax, dword ptr [rbp - 0x44]
	setl	cl
	mov	byte ptr [rbp - 0x165], cl
.label_83:
	mov	al, byte ptr [rbp - 0x165]
	test	al, 1
	jne	.label_64
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
	movabs	rcx, OFFSET FLAT:label_78
	mov	rdx, rsp
	fstp	xword ptr [rdx]
	mov	eax, OFFSET FLAT:label_78
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
	jb	.label_90
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 8
	cmp	eax, 0
	je	.label_51
	mov	rax, qword ptr [rbp - 0xe8]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x30
	jne	.label_51
.label_90:
	movabs	rax, OFFSET FLAT:label_61
	mov	ecx, 0xa
	mov	edx, ecx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rbp - 0x2c]
	fld	xword ptr [rbp - 0xe0]
	fld	dword ptr [dword ptr [rip + label_62]]
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
	mov	ecx, OFFSET FLAT:label_61
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
.label_51:
	jmp	.label_41
.label_41:
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
	jmp	.label_52
.label_43:
	jmp	.label_73
.label_73:
	mov	eax, dword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rbp - 0x14]
	and	ecx, 0x100
	or	eax, ecx
	cmp	eax, 0
	je	.label_44
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 0x40
	cmp	eax, 0
	je	.label_44
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x58], rcx
	mov	byte ptr [rax], 0x20
.label_44:
	cmp	dword ptr [rbp - 0x40], 0
	je	.label_77
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 0x20
	cmp	eax, 0
	jne	.label_80
	cmp	dword ptr [rbp - 0x40], 1
	jne	.label_80
	mov	eax, 0x6b
	mov	dword ptr [rbp - 0x1dc], eax
	jmp	.label_84
.label_85:
	cmp	dword ptr [rbp - 0x2c], 0
	jne	.label_46
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0x64]
	jge	.label_46
.label_45:
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	mov	dword ptr [rbp - 0x64], 0
	cmp	dword ptr [rbp - 0x3c], 0xa
	jne	.label_93
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	mov	dword ptr [rbp - 0x3c], 0
.label_93:
	jmp	.label_46
.label_46:
	cmp	qword ptr [rbp - 0x38], 0xa
	jae	.label_47
	cmp	dword ptr [rbp - 0x3c], 0
	jne	.label_50
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 8
	cmp	eax, 0
	jne	.label_47
.label_50:
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
.label_47:
	jmp	.label_70
.label_70:
	jmp	.label_74
.label_74:
	jmp	.label_71
.label_71:
	cmp	dword ptr [rbp - 0x2c], 1
	jne	.label_76
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
	jl	.label_79
	jmp	.label_55
.label_65:
	jmp	.label_89
.label_89:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x130], rax
	test	rax, rax
	setns	cl
	movzx	edx, cl
	mov	eax, edx
	fld	dword ptr [dword ptr [+ (rax * 4) + label_91]]
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
	fld	dword ptr [dword ptr [+ (rax * 4) + label_91]]
	fild	qword ptr [rbp - 0x120]
	faddp	st(1)
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x128], rax
	test	rax, rax
	setns	cl
	movzx	edx, cl
	mov	eax, edx
	fld	dword ptr [dword ptr [+ (rax * 4) + label_91]]
	fild	qword ptr [rbp - 0x128]
	faddp	st(1)
	fdivrp	st(2)
	fmulp	st(1)
	fstp	xword ptr [rbp - 0xe0]
	mov	edx, dword ptr [rbp - 0x14]
	and	edx, 0x10
	cmp	edx, 0
	jne	.label_92
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rbp - 0x2c]
	fld	xword ptr [rbp - 0xe0]
	mov	rcx, rsp
	fstp	xword ptr [rcx]
	mov	qword ptr [rbp - 0x158], rdi
	mov	edi, eax
	call	adjust_value
	movabs	rcx, OFFSET FLAT:label_61
	mov	rdx, rsp
	fstp	xword ptr [rdx]
	mov	eax, OFFSET FLAT:label_61
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
	jmp	.label_41
	.section	.text
	.align	16
	#Procedure 0x4031f0

	.globl free_mount_entry
	.type free_mount_entry, @function
free_mount_entry:
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
	mov	al, byte ptr [rdi + 0x28]
	shr	al, 2
	and	al, 1
	movzx	ecx, al
	cmp	ecx, 0
	je	.label_96
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 0x18]
	call	free
.label_96:
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	free
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403259
	.globl sub_403259
	.type sub_403259, @function
sub_403259:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403260

	.globl triple_hash
	.type triple_hash, @function
triple_hash:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	call	hash_pjw
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x18]
	xor	rax, qword ptr [rsi + 8]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	mov	rax, rdx
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4032a9
	.globl sub_4032a9
	.type sub_4032a9, @function
sub_4032a9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4032b0

	.globl alloc_table_row
	.type alloc_table_row, @function
alloc_table_row:
	push	rbp
	mov	rbp, rsp
	mov	eax, 8
	mov	edx, eax
	mov	rcx,  qword ptr [word ptr [nrows]]
	add	rcx, 1
	mov	qword ptr [word ptr [nrows]],  rcx
	mov	rcx,  qword ptr [word ptr [table]]
	mov	rsi,  qword ptr [word ptr [nrows]]
	mov	rdi, rcx
	call	xnrealloc
	mov	r8d, 8
	mov	esi, r8d
	mov	qword ptr [word ptr [table]],  rax
	mov	rdi,  qword ptr [word ptr [ncolumns]]
	call	xnmalloc
	mov	rcx,  qword ptr [word ptr [nrows]]
	sub	rcx, 1
	mov	rdx,  qword ptr [word ptr [table]]
	mov	qword ptr [rdx + rcx*8], rax
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40331f
	.globl sub_40331f
	.type sub_40331f, @function
sub_40331f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403320

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
	#Procedure 0x403392
	.globl sub_403392
	.type sub_403392, @function
sub_403392:

	nop	word ptr cs:[rax + rax]
.label_113:
	jmp	.label_97
.label_97:
	mov	rax, qword ptr [rbp - 0x68]
	shr	rax, 1
	mov	rcx, qword ptr [rbp - 0x68]
	and	rcx, 1
	add	rax, rcx
	mov	qword ptr [rbp - 0x80], rax
	mov	rax, qword ptr [rbp - 0x68]
	shr	rax, 1
	mov	qword ptr [rbp - 0x88], rax
.label_115:
	mov	eax, dword ptr [rbp - 0x28]
	and	eax, 4
	cmp	eax, 0
	je	.label_99
	mov	qword ptr [rbp - 0x80], 0
.label_99:
	mov	eax, dword ptr [rbp - 0x28]
	and	eax, 8
	cmp	eax, 0
	je	.label_98
	mov	qword ptr [rbp - 0x88], 0
.label_98:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_102
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rbp - 0x18]
	add	rax, -1
	mov	qword ptr [rbp - 0x98], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rbp - 0x80]
	call	mbs_align_pad
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rbp - 0x10]
	sub	rax, rdx
	mov	qword ptr [rbp - 0x90], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0xb0], rdi
	mov	qword ptr [rbp - 0xb8], rsi
	jae	.label_100
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0xc0], rax
	jmp	.label_101
.label_121:
	mov	qword ptr [rbp - 0x80], 0
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x88], rax
	jmp	.label_115
	.section	.text
	.align	16
	#Procedure 0x403496

	.globl mbsalign
	.type mbsalign, @function
mbsalign:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xd0
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	dword ptr [rbp - 0x24], r8d
	mov	dword ptr [rbp - 0x28], r9d
	mov	qword ptr [rbp - 0x30], -1
	mov	rdi, qword ptr [rbp - 8]
	call	strlen
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	mov	qword ptr [rbp - 0x40], 0
	mov	qword ptr [rbp - 0x48], 0
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x38]
	sub	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x60], rax
	mov	qword ptr [rbp - 0x68], 0
	mov	byte ptr [rbp - 0x69], 0
	mov	byte ptr [rbp - 0x6a], 0
	mov	r8d, dword ptr [rbp - 0x28]
	and	r8d, 2
	cmp	r8d, 0
	jne	.label_105
	call	__ctype_get_mb_cur_max
	cmp	rax, 1
	jbe	.label_105
	xor	eax, eax
	mov	ecx, eax
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, rcx
	mov	rdx, rcx
	call	mbstowcs
	mov	qword ptr [rbp - 0x78], rax
	cmp	qword ptr [rbp - 0x78], -1
	jne	.label_116
	mov	eax, dword ptr [rbp - 0x28]
	and	eax, 1
	cmp	eax, 0
	je	.label_119
	jmp	.label_108
.label_104:
	jmp	.label_110
.label_120:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x50], rax
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rax]
	call	wc_truncate
	mov	qword ptr [rbp - 0x58], rax
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x38]
	call	wcstombs
	mov	qword ptr [rbp - 0x60], rax
.label_112:
	jmp	.label_108
.label_108:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rcx]
	jbe	.label_114
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x60], rax
.label_114:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x58]
	jbe	.label_117
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	sub	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x68], rax
.label_117:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x24]
	test	edx, edx
	mov	dword ptr [rbp - 0x9c], edx
	je	.label_121
	jmp	.label_103
.label_103:
	mov	eax, dword ptr [rbp - 0x9c]
	sub	eax, 1
	mov	dword ptr [rbp - 0xa0], eax
	je	.label_106
	jmp	.label_111
.label_111:
	mov	eax, dword ptr [rbp - 0x9c]
	sub	eax, 2
	mov	dword ptr [rbp - 0xa4], eax
	je	.label_113
	jmp	.label_97
.label_119:
	jmp	.label_110
.label_106:
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x80], rax
	mov	qword ptr [rbp - 0x88], 0
	jmp	.label_115
.label_116:
	mov	rax, qword ptr [rbp - 0x78]
	add	rax, 1
	mov	qword ptr [rbp - 0x78], rax
	mov	rax, qword ptr [rbp - 0x78]
	shl	rax, 2
	mov	rdi, rax
	call	malloc
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x48], 0
	jne	.label_123
	mov	eax, dword ptr [rbp - 0x28]
	and	eax, 1
	cmp	eax, 0
	je	.label_104
	jmp	.label_108
.label_122:
	jmp	.label_110
.label_100:
	mov	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0xc0], rax
.label_101:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rdi, qword ptr [rbp - 0xb0]
	mov	rsi, qword ptr [rbp - 0xb8]
	mov	rdx, rax
	call	mempcpy
	mov	qword ptr [rbp - 0x10], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rbp - 0x88]
	call	mbs_align_pad
	mov	qword ptr [rbp - 0xc8], rax
.label_102:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x80]
	add	rcx, qword ptr [rbp - 0x88]
	shl	rcx, 0
	add	rax, rcx
	mov	qword ptr [rbp - 0x30], rax
.label_110:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rdi, rax
	call	free
	mov	rdi, qword ptr [rbp - 0x40]
	call	free
	mov	rax, qword ptr [rbp - 0x30]
	add	rsp, 0xd0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403723
	.globl sub_403723
	.type sub_403723, @function
sub_403723:

	nop	word ptr cs:[rax + rax]
.label_123:
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x78]
	call	mbstowcs
	cmp	rax, 0
	je	.label_107
	mov	rax, qword ptr [rbp - 0x78]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x48]
	mov	dword ptr [rcx + rax*4], 0
	mov	byte ptr [rbp - 0x6a], 1
	mov	rdi, qword ptr [rbp - 0x48]
	call	wc_ensure_printable
	and	al, 1
	mov	byte ptr [rbp - 0x69], al
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x78]
	call	wcswidth
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x58], rcx
.label_107:
	jmp	.label_105
.label_105:
	test	byte ptr [rbp - 0x6a], 1
	je	.label_112
	test	byte ptr [rbp - 0x69], 1
	jne	.label_109
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rcx]
	jbe	.label_112
.label_109:
	test	byte ptr [rbp - 0x69], 1
	je	.label_118
	xor	eax, eax
	mov	ecx, eax
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdi, rcx
	mov	rdx, rcx
	call	wcstombs
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
.label_118:
	mov	rdi, qword ptr [rbp - 0x38]
	call	malloc
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x40], 0
	jne	.label_120
	mov	eax, dword ptr [rbp - 0x28]
	and	eax, 1
	cmp	eax, 0
	je	.label_122
	jmp	.label_108
.label_147:
	movabs	rdi, OFFSET FLAT:label_126
	movabs	rsi, OFFSET FLAT:label_127
	mov	edx, 0x1dd
	movabs	rcx, OFFSET FLAT:label_128
	call	__assert_fail
.label_142:
	cmp	dword ptr [rbp - 0x24], 0xc
	jne	.label_138
	movabs	rdi, OFFSET FLAT:label_141
	call	gettext
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rax
	call	quote
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_138:
	movabs	rax, OFFSET FLAT:field_data
	mov	ecx, dword ptr [rbp - 0x24]
	mov	edx, ecx
	imul	rdx, rdx, 0x30
	add	rax, rdx
	test	byte ptr [rax + 0x2c], 1
	je	.label_140
	movabs	rdi, OFFSET FLAT:label_131
	call	gettext
	movabs	rdi, OFFSET FLAT:field_data
	mov	ecx, dword ptr [rbp - 0x24]
	mov	edx, ecx
	imul	rdx, rdx, 0x30
	add	rdi, rdx
	mov	rdi, qword ptr [rdi + 8]
	mov	qword ptr [rbp - 0x38], rax
	call	quote
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
	.section	.text
	.align	16
	#Procedure 0x4038dc

	.globl decode_output_arg
	.type decode_output_arg, @function
decode_output_arg:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	xstrdup
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rax
.label_139:
	mov	esi, 0x2c
	mov	rdi, qword ptr [rbp - 0x18]
	call	strchr
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_130
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x20], rcx
	mov	byte ptr [rax], 0
.label_130:
	mov	dword ptr [rbp - 0x24], 0xc
	mov	dword ptr [rbp - 0x28], 0
.label_145:
	mov	eax, dword ptr [rbp - 0x28]
	mov	ecx, eax
	cmp	rcx, 0xc
	jae	.label_142
	movabs	rax, OFFSET FLAT:field_data
	mov	ecx, dword ptr [rbp - 0x28]
	mov	edx, ecx
	imul	rdx, rdx, 0x30
	add	rax, rdx
	mov	rdi, qword ptr [rax + 8]
	mov	rsi, qword ptr [rbp - 0x18]
	call	strcmp
	cmp	eax, 0
	jne	.label_144
	mov	eax, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_142
.label_140:
	mov	eax, dword ptr [rbp - 0x24]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0x3c], eax
	mov	dword ptr [rbp - 0x40], ecx
	jb	.label_124
	jmp	.label_132
.label_132:
	mov	eax, dword ptr [rbp - 0x3c]
	sub	eax, 2
	mov	dword ptr [rbp - 0x44], eax
	je	.label_134
	jmp	.label_125
.label_125:
	mov	eax, dword ptr [rbp - 0x3c]
	sub	eax, 3
	mov	dword ptr [rbp - 0x48], eax
	je	.label_124
	jmp	.label_146
.label_146:
	mov	eax, dword ptr [rbp - 0x3c]
	sub	eax, 4
	mov	dword ptr [rbp - 0x4c], eax
	je	.label_129
	jmp	.label_136
.label_136:
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, -5
	sub	eax, 6
	mov	dword ptr [rbp - 0x50], eax
	ja	.label_147
	jmp	.label_124
.label_124:
	xor	eax, eax
	mov	esi, eax
	mov	edi, dword ptr [rbp - 0x24]
	call	alloc_field
	jmp	.label_133
.label_133:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_139
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	add	rsp, 0x50
	pop	rbp
	ret	
.label_129:
	movabs	rsi, OFFSET FLAT:label_135
	mov	edi, dword ptr [rbp - 0x24]
	call	alloc_field
	jmp	.label_133
.label_144:
	jmp	.label_143
.label_143:
	mov	eax, dword ptr [rbp - 0x28]
	add	eax, 1
	mov	dword ptr [rbp - 0x28], eax
	jmp	.label_145
.label_134:
	movabs	rsi, OFFSET FLAT:label_137
	mov	edi, dword ptr [rbp - 0x24]
	call	alloc_field
	jmp	.label_133
	.section	.text
	.align	16
	#Procedure 0x403a60

	.globl wc_ensure_printable
	.type wc_ensure_printable, @function
wc_ensure_printable:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	byte ptr [rbp - 9], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rdi
.label_149:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	dword ptr [rax], 0
	je	.label_150
	mov	rax, qword ptr [rbp - 0x18]
	mov	edi, dword ptr [rax]
	call	iswprint
	cmp	eax, 0
	jne	.label_148
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax], 0xfffd
	mov	byte ptr [rbp - 9], 1
.label_148:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 4
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_149
.label_150:
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403ac6
	.globl sub_403ac6
	.type sub_403ac6, @function
sub_403ac6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403ad0
	.globl rotl_sz
	.type rotl_sz, @function
rotl_sz:

	push	rbp
	mov	rbp, rsp
	mov	eax, 0x40
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rbp - 0xc]
	mov	edx, eax
	mov	qword ptr [rbp - 0x18], rcx
	mov	rcx, rdx
	shl	rdi, cl
	mov	rdx, qword ptr [rbp - 8]
	movsxd	r8, dword ptr [rbp - 0xc]
	mov	r9, qword ptr [rbp - 0x18]
	sub	r9, r8
	mov	rcx, r9
	shr	rdx, cl
	or	rdi, rdx
	mov	rax, rdi
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403b12
	.globl sub_403b12
	.type sub_403b12, @function
sub_403b12:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403b20

	.globl seen_file
	.type seen_file, @function
seen_file:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_151
	mov	byte ptr [rbp - 1], 0
	jmp	.label_152
.label_151:
	lea	rax, [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x38], rcx
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rbp - 0x30], rcx
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 0x28], rcx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, rax
	call	hash_lookup
	cmp	rax, 0
	setne	dl
	xor	dl, 0xff
	xor	dl, 0xff
	and	dl, 1
	mov	byte ptr [rbp - 1], dl
.label_152:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403b98
	.globl sub_403b98
	.type sub_403b98, @function
sub_403b98:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403ba0

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
	jae	.label_153
	call	xalloc_die
.label_153:
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
	#Procedure 0x403bf0
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
	jb	.label_154
	jmp	.label_156
.label_156:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 0x1a
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_154
	jmp	.label_155
.label_155:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_157
	jmp	.label_154
.label_154:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_158
.label_157:
	mov	byte ptr [rbp - 1], 0
.label_158:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403c55
	.globl sub_403c55
	.type sub_403c55, @function
sub_403c55:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403c60

	.globl devlist_free
	.type devlist_free, @function
devlist_free:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	free
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403c7b
	.globl sub_403c7b
	.type sub_403c7b, @function
sub_403c7b:

	nop	dword ptr [rax + rax]
.label_159:
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403c89
	.globl sub_403c89
	.type sub_403c89, @function
sub_403c89:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403c8c

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
.label_160:
	mov	eax, dword ptr [rbp - 0x10]
	mov	ecx, eax
	add	ecx, -1
	mov	dword ptr [rbp - 0x10], ecx
	cmp	eax, 0
	je	.label_159
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	call	bkm_scale
	or	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_160
	.section	.text
	.align	16
	#Procedure 0x403cd0
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
	je	.label_161
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_162
.label_161:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_162
.label_162:
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
	#Procedure 0x403d95
	.globl sub_403d95
	.type sub_403d95, @function
sub_403d95:

	nop	word ptr cs:[rax + rax]
.label_171:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx + 8], rax
	jmp	.label_168
	.section	.text
	.align	16
	#Procedure 0x403dcc

	.globl transfer_entries
	.type transfer_entries, @function
transfer_entries:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	al, dl
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rsi]
	mov	qword ptr [rbp - 0x28], rsi
.label_174:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_173
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax], 0
	je	.label_163
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x30], rax
.label_170:
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_166
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x40], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x40]
	call	safe_hasher
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x48]
	cmp	qword ptr [rax], 0
	je	.label_176
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx + 8], rax
	jmp	.label_167
.label_173:
	mov	byte ptr [rbp - 1], 1
.label_175:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403e8e
	.globl sub_403e8e
	.type sub_403e8e, @function
sub_403e8e:

	nop	word ptr [rax + rax]
.label_166:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rax + 8], 0
	test	byte ptr [rbp - 0x19], 1
	je	.label_165
	jmp	.label_172
.label_176:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x18]
	add	rcx, 1
	mov	qword ptr [rax + 0x18], rcx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x30]
	call	free_entry
.label_167:
	jmp	.label_169
.label_169:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_170
.label_164:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x18]
	add	rcx, 1
	mov	qword ptr [rax + 0x18], rcx
.label_168:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rax + 0x18]
	add	rcx, -1
	mov	qword ptr [rax + 0x18], rcx
.label_163:
	jmp	.label_172
.label_172:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_174
.label_165:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x40]
	call	safe_hasher
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x48]
	cmp	qword ptr [rax], 0
	je	.label_164
	mov	rdi, qword ptr [rbp - 0x10]
	call	allocate_entry
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x50], 0
	jne	.label_171
	mov	byte ptr [rbp - 1], 0
	jmp	.label_175
.label_178:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_177
	.section	.text
	.align	16
	#Procedure 0x403f9d
	.globl hash_do_for_each
	.type hash_do_for_each, @function
hash_do_for_each:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], 0
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx]
	mov	qword ptr [rbp - 0x30], rdx
.label_184:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_182
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax], 0
	je	.label_181
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x38], rax
.label_177:
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_179
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rcx]
	mov	rsi, qword ptr [rbp - 0x20]
	call	rax
	test	al, 1
	jne	.label_178
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_180
.label_182:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
.label_180:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40402f
	.globl sub_40402f
	.type sub_40402f, @function
sub_40402f:

	nop	word ptr [rax + rax]
.label_179:
	jmp	.label_181
.label_181:
	jmp	.label_183
.label_183:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_184
	.section	.text
	.align	16
	#Procedure 0x404050
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_185
	jmp	.label_187
.label_187:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x61
	add	eax, 0x41
	mov	dword ptr [rbp - 4], eax
	jmp	.label_186
.label_185:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_186:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404087
	.globl sub_404087
	.type sub_404087, @function
sub_404087:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404090

	.globl find_non_slash
	.type find_non_slash, @function
find_non_slash:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rsi, OFFSET FLAT:label_188
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	strspn
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 8]
	add	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4040c1
	.globl sub_4040c1
	.type sub_4040c1, @function
sub_4040c1:

	nop	word ptr cs:[rax + rax]
.label_191:
	mov	byte ptr [rbp - 1], 0
.label_190:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4040de
	.globl sub_4040de
	.type sub_4040de, @function
sub_4040de:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4040df
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	sub	edi, 0x7f
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_191
	jmp	.label_189
.label_189:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_190
	.section	.text
	.align	16
	#Procedure 0x404100
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
	#Procedure 0x40413a
	.globl sub_40413a
	.type sub_40413a, @function
sub_40413a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404140
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
	#Procedure 0x40416a
	.globl sub_40416a
	.type sub_40416a, @function
sub_40416a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404170
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
	jb	.label_192
	jmp	.label_195
.label_195:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 6
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_192
	jmp	.label_193
.label_193:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 5
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_194
	jmp	.label_192
.label_192:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_196
.label_194:
	mov	byte ptr [rbp - 1], 0
.label_196:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4041d5
	.globl sub_4041d5
	.type sub_4041d5, @function
sub_4041d5:

	nop	word ptr cs:[rax + rax]
.label_201:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rax
.label_204:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	sub	rax, rcx
	cmp	rax, 7
	jl	.label_198
	movabs	rsi, OFFSET FLAT:label_199
	mov	eax, 7
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, -7
	mov	rdi, rcx
	call	strncmp
	cmp	eax, 0
	jne	.label_198
	movabs	rsi, OFFSET FLAT:label_200
	mov	eax, 3
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rcx
	mov	rdi, qword ptr [rbp - 0x18]
	call	strncmp
	cmp	eax, 0
	jne	.label_197
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 3
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname]],  rax
.label_197:
	jmp	.label_198
.label_198:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [program_name]],  rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname_full]],  rax
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404295
	.globl sub_404295
	.type sub_404295, @function
sub_404295:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40429c

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_203
	movabs	rdi, OFFSET FLAT:label_202
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	dword ptr [rbp - 0x1c], eax
	call	abort
.label_203:
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 8]
	call	strrchr
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_201
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_204
.label_208:
	movabs	rdi, OFFSET FLAT:label_205
	call	gettext
	mov	qword ptr [rbp - 0x28], rax
.label_206:
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
	#Procedure 0x404368
	.globl sub_404368
	.type sub_404368, @function
sub_404368:

	nop	
	.section	.text
	.align	16
	#Procedure 0x404369

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
	jne	.label_208
	movabs	rdi, OFFSET FLAT:label_207
	call	gettext
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_206
	.section	.text
	.align	16
	#Procedure 0x4043a0

	.globl emit_size_note
	.type emit_size_note, @function
emit_size_note:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_209
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
	#Procedure 0x4043d0
	.globl hash_print_statistics
	.type hash_print_statistics, @function
hash_print_statistics:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	movabs	rax, OFFSET FLAT:label_210
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x38], rax
	call	hash_get_n_entries
	mov	qword ptr [rbp - 0x18], rax
	mov	rdi, qword ptr [rbp - 8]
	call	hash_get_n_buckets
	mov	qword ptr [rbp - 0x20], rax
	mov	rdi, qword ptr [rbp - 8]
	call	hash_get_n_buckets_used
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 8]
	call	hash_get_max_bucket_length
	mov	qword ptr [rbp - 0x30], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	ecx, OFFSET FLAT:label_216
	mov	esi, ecx
	xor	ecx, ecx
	mov	r8b, cl
	mov	al, r8b
	mov	byte ptr [rbp - 0x39], r8b
	call	fprintf
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	ecx, OFFSET FLAT:label_211
	mov	esi, ecx
	mov	r8b, byte ptr [rbp - 0x39]
	mov	dword ptr [rbp - 0x40], eax
	mov	al, r8b
	call	fprintf
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x28]
	movq	xmm0, rdx
	movaps	xmm1,  xmmword ptr [word ptr [rip + label_213]]
	punpckldq	xmm0, xmm1
	movapd	xmm2,  xmmword ptr [word ptr [rip + label_214]]
	subpd	xmm0, xmm2
	pshufd	xmm3, xmm0, 0x4e
	addpd	xmm3, xmm0
	movsd	xmm0,  qword ptr [word ptr [rip + label_215]]
	mulsd	xmm3, xmm0
	movq	xmm0, qword ptr [rbp - 0x20]
	punpckldq	xmm0, xmm1
	subpd	xmm0, xmm2
	pshufd	xmm1, xmm0, 0x4e
	addpd	xmm1, xmm0
	divsd	xmm3, xmm1
	mov	rsi, qword ptr [rbp - 0x38]
	movaps	xmm0, xmm3
	mov	dword ptr [rbp - 0x44], eax
	mov	al, 1
	call	fprintf
	movabs	rsi, OFFSET FLAT:label_212
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	dword ptr [rbp - 0x48], eax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x4c], eax
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4044e9
	.globl sub_4044e9
	.type sub_4044e9, @function
sub_4044e9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4044f0
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
	#Procedure 0x40451d
	.globl sub_40451d
	.type sub_40451d, @function
sub_40451d:

	nop	dword ptr [rax]
.label_227:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 8], 0
	je	.label_217
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
.label_217:
	movabs	rdi, OFFSET FLAT:label_226
	call	gettext
	movabs	rsi, OFFSET FLAT:label_221
	movabs	rdx, OFFSET FLAT:label_222
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
	je	.label_218
	movabs	rsi, OFFSET FLAT:label_220
	mov	eax, 3
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x20]
	call	strncmp
	cmp	eax, 0
	je	.label_218
	movabs	rdi, OFFSET FLAT:label_223
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x2c], eax
.label_218:
	movabs	rdi, OFFSET FLAT:label_224
	call	gettext
	movabs	rsi, OFFSET FLAT:label_222
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_225
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	movabs	rdx, OFFSET FLAT:label_86
	movabs	rsi, OFFSET FLAT:label_219
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
	#Procedure 0x404645
	.globl sub_404645
	.type sub_404645, @function
sub_404645:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40464c

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
.label_230:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx], 0
	mov	byte ptr [rbp - 0x21], cl
	je	.label_229
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax]
	call	strcmp
	cmp	eax, 0
	sete	cl
	xor	cl, 0xff
	mov	byte ptr [rbp - 0x21], cl
.label_229:
	mov	al, byte ptr [rbp - 0x21]
	test	al, 1
	jne	.label_228
	jmp	.label_227
.label_228:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_230
	.section	.text
	.align	16
	#Procedure 0x4046c0

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
	jae	.label_231
	call	xalloc_die
.label_231:
	mov	rax, qword ptr [rbp - 8]
	imul	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	xmalloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404708
	.globl sub_404708
	.type sub_404708, @function
sub_404708:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404710

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
	jae	.label_232
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax], -1
	mov	dword ptr [rbp - 4], 1
	jmp	.label_233
.label_232:
	movsxd	rax, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, qword ptr [rcx]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 0
.label_233:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40476c
	.globl sub_40476c
	.type sub_40476c, @function
sub_40476c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404770

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
	jne	.label_234
	call	default_block_size
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 0x1c], 4
.label_234:
	mov	eax, dword ptr [rbp - 0x1c]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4047c2
	.globl sub_4047c2
	.type sub_4047c2, @function
sub_4047c2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4047d0

	.globl raw_hasher
	.type raw_hasher, @function
raw_hasher:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	eax, 3
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, eax
	call	rotr_sz
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	xor	esi, esi
	mov	edx, esi
	div	qword ptr [rbp - 0x10]
	mov	rax, rdx
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404809
	.globl sub_404809
	.type sub_404809, @function
sub_404809:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404810

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
	#Procedure 0x40484f
	.globl sub_40484f
	.type sub_40484f, @function
sub_40484f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x404850

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
	jne	.label_235
	lea	rax, [rbp - 0x34]
	mov	qword ptr [rbp - 0x10], rax
.label_235:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	call	mbrtowc
	mov	rcx, -2
	mov	qword ptr [rbp - 0x30], rax
	cmp	rcx, qword ptr [rbp - 0x30]
	ja	.label_236
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_236
	xor	edi, edi
	call	hard_locale
	test	al, 1
	jne	.label_236
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x35], cl
	movzx	edx, byte ptr [rbp - 0x35]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], edx
	mov	qword ptr [rbp - 8], 1
	jmp	.label_237
.label_236:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
.label_237:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4048f1
	.globl sub_4048f1
	.type sub_4048f1, @function
sub_4048f1:

	nop	word ptr cs:[rax + rax]
.label_238:
	lea	rax, [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rcx
	mov	rdi,  qword ptr [word ptr [devlist_table]]
	mov	rsi, rax
	call	hash_lookup
	mov	qword ptr [rbp - 8], rax
.label_239:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40492a
	.globl sub_40492a
	.type sub_40492a, @function
sub_40492a:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404938

	.globl devlist_for_dev
	.type devlist_for_dev, @function
devlist_for_dev:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	cmp	qword ptr [word ptr [devlist_table]],  0
	jne	.label_238
	mov	qword ptr [rbp - 8], 0
	jmp	.label_239
.label_240:
	mov	rax, qword ptr [rbp - 0x20]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	mov	rax, rdx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404971
	.globl sub_404971
	.type sub_404971, @function
sub_404971:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404974

	.globl hash_pjw
	.type hash_pjw, @function
hash_pjw:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x20], 0
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
.label_241:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	byte ptr [rax], 0
	je	.label_240
	mov	rax, qword ptr [rbp - 0x18]
	movsx	rax, byte ptr [rax]
	mov	rcx, qword ptr [rbp - 0x20]
	shl	rcx, 9
	mov	rdx, qword ptr [rbp - 0x20]
	shr	rdx, 0x37
	or	rcx, rdx
	add	rax, rcx
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_241
.label_243:
	mov	rdi, qword ptr [rbp - 0x10]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
.label_244:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4049ee
	.globl sub_4049ee
	.type sub_4049ee, @function
sub_4049ee:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4049f6

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_242
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	jne	.label_243
.label_242:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
	jmp	.label_244
	.section	.text
	.align	16
	#Procedure 0x404a30

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
	jge	.label_246
	call	abort
.label_249:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x60], rax
.label_250:
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
	je	.label_248
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_251]]
	mov	qword ptr [rax + 8], rcx
.label_248:
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
.label_252:
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
	ja	.label_253
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	mov	qword ptr [rbp - 0x40], rcx
	movsxd	rdx, dword ptr [rbp - 4]
	shl	rdx, 4
	add	rdx, qword ptr [rbp - 0x30]
	mov	qword ptr [rdx], rcx
	cmp	qword ptr [rbp - 0x48], rax
	je	.label_247
	mov	rdi, qword ptr [rbp - 0x48]
	call	free
.label_247:
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
.label_253:
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
	#Procedure 0x404c4d
	.globl sub_404c4d
	.type sub_404c4d, @function
sub_404c4d:

	nop	word ptr cs:[rax + rax]
.label_245:
	test	byte ptr [rbp - 0x31], 1
	je	.label_249
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x60], rcx
	jmp	.label_250
.label_246:
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_252
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 0x30], rax
	sete	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x31], cl
	mov	dword ptr [rbp - 0x38], 0x7ffffffe
	mov	edx, dword ptr [rbp - 0x38]
	cmp	edx, dword ptr [rbp - 4]
	jge	.label_245
	call	xalloc_die
.label_259:
	test	byte ptr [rbp - 0x41], 1
	je	.label_261
	mov	qword ptr [rbp - 8], -2
	jmp	.label_263
.label_261:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 8], rax
.label_263:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404cd9
	.globl sub_404cd9
	.type sub_404cd9, @function
sub_404cd9:

	nop	word ptr cs:[rax + rax]
.label_256:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_260
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
	je	.label_258
.label_260:
	mov	byte ptr [rbp - 0x41], 1
.label_258:
	jmp	.label_257
.label_257:
	jmp	.label_262
.label_262:
	jmp	.label_255
.label_255:
	jmp	.label_265
.label_265:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_254
.label_264:
	cmp	qword ptr [rbp - 0x40], -1
	jne	.label_256
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_257
	.section	.text
	.align	16
	#Procedure 0x404d6a

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
.label_254:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_259
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x38]
	call	strncmp
	cmp	eax, 0
	jne	.label_255
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx + rax*8]
	call	strlen
	cmp	rax, qword ptr [rbp - 0x38]
	jne	.label_264
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_263
	.section	.text
	.align	16
	#Procedure 0x404e00
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_266
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_266:
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
	#Procedure 0x404e3d
	.globl sub_404e3d
	.type sub_404e3d, @function
sub_404e3d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404e40

	.globl add_fs_type
	.type add_fs_type, @function
add_fs_type:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	eax, 0x10
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, rcx
	call	xmalloc
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	rax,  qword ptr [word ptr [fs_select_list]]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [word ptr [fs_select_list]],  rax
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404e8c
	.globl sub_404e8c
	.type sub_404e8c, @function
sub_404e8c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404e90

	.globl get_field_values
	.type get_field_values, @function
get_field_values:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 8], 1
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx], 1
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x28]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + 0x10], rdx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x30]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + 0x28], rdx
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + 0x18], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	byte ptr [rdx + 0x20], 0
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x30], -1
	mov	rdx, qword ptr [rbp - 0x10]
	mov	byte ptr [rdx + 0x38], 0
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdx + 0x10]
	call	known_value
	test	al, 1
	jne	.label_271
	jmp	.label_272
.label_271:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax + 0x28]
	call	known_value
	test	al, 1
	jne	.label_269
	jmp	.label_272
.label_269:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rax, qword ptr [rcx + 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x30], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x28]
	setb	dl
	mov	rax, qword ptr [rbp - 0x10]
	and	dl, 1
	mov	byte ptr [rax + 0x38], dl
.label_272:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx]
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rsi], rdx
	mov	rdx,  qword ptr [word ptr [output_block_size]]
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rsi + 8], rdx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 8]
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rsi + 0x10], rdx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x18]
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rsi + 0x18], rdx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rsi + 0x28], rdx
	mov	rdx, qword ptr [rbp - 0x18]
	test	byte ptr [rdx + 0x20], 1
	mov	byte ptr [rbp - 0x19], cl
	je	.label_270
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rax + 0x18]
	call	known_value
	mov	byte ptr [rbp - 0x19], al
.label_270:
	mov	al, byte ptr [rbp - 0x19]
	mov	rcx, qword ptr [rbp - 8]
	and	al, 1
	mov	byte ptr [rcx + 0x20], al
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x30], -1
	mov	rcx, qword ptr [rbp - 8]
	mov	byte ptr [rcx + 0x38], 0
	mov	rcx, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rcx + 0x10]
	call	known_value
	test	al, 1
	jne	.label_273
	jmp	.label_267
.label_273:
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 0x28]
	call	known_value
	test	al, 1
	jne	.label_268
	jmp	.label_267
.label_268:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 8]
	sub	rax, qword ptr [rcx + 0x28]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x30], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 0x28]
	setb	dl
	mov	rax, qword ptr [rbp - 8]
	and	dl, 1
	mov	byte ptr [rax + 0x38], dl
.label_267:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40506a
	.globl sub_40506a
	.type sub_40506a, @function
sub_40506a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405070

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
	jne	.label_274
	call	abort
.label_274:
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
	#Procedure 0x4050d4
	.globl sub_4050d4
	.type sub_4050d4, @function
sub_4050d4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4050e0
	.globl hash_delete
	.type hash_delete, @function
hash_delete:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xc0
	lea	rdx, [rbp - 0x28]
	mov	ecx, 1
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	hash_find_entry
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_276
	mov	qword ptr [rbp - 8], 0
	jmp	.label_279
.label_287:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x48], 0
.label_278:
	jmp	.label_285
.label_285:
	jmp	.label_290
.label_290:
	jmp	.label_288
.label_288:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_279:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0xc0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405155
	.globl sub_405155
	.type sub_405155, @function
sub_405155:

	nop	word ptr cs:[rax + rax]
.label_280:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, rax
	shr	rcx, 1
	mov	edx, eax
	and	edx, 1
	mov	esi, edx
	or	rsi, rcx
	cvtsi2ss	xmm0, rsi
	addss	xmm0, xmm0
	cvtsi2ss	xmm1, rax
	test	rax, rax
	movss	dword ptr [rbp - 0xb0], xmm1
	movss	dword ptr [rbp - 0xb4], xmm0
	js	.label_283
	movss	xmm0, dword ptr [rbp - 0xb0]
	movss	dword ptr [rbp - 0xb4], xmm0
.label_283:
	movss	xmm0, dword ptr [rbp - 0xb4]
	mov	rax, qword ptr [rbp - 0x30]
	mulss	xmm0, dword ptr [rax + 4]
	mov	rax, qword ptr [rbp - 0x30]
	mulss	xmm0, dword ptr [rax + 8]
	movss	dword ptr [rbp - 0xac], xmm0
.label_275:
	movss	xmm0, dword ptr [rbp - 0xac]
	movss	xmm1,  dword ptr [dword ptr [rip + label_277]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rax, rcx
	cvttss2si	rcx, xmm0
	ucomiss	xmm0, xmm1
	cmovb	rax, rcx
	mov	qword ptr [rbp - 0x38], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x38]
	call	hash_rehash
	test	al, 1
	jne	.label_278
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x48]
	mov	qword ptr [rbp - 0x40], rax
.label_286:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_287
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_286
.label_276:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x20]
	add	rcx, -1
	mov	qword ptr [rax + 0x20], rcx
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax], 0
	jne	.label_288
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x18]
	dec	rcx
	mov	qword ptr [rax + 0x18], rcx
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x10]
	mov	rdx, qword ptr [rax + 0x18]
	mov	rsi, rdx
	shr	rsi, 1
	mov	edi, edx
	and	edi, 1
	mov	r8d, edi
	or	r8, rsi
	cvtsi2ss	xmm0, r8
	addss	xmm0, xmm0
	cvtsi2ss	xmm1, rdx
	test	rdx, rdx
	mov	qword ptr [rbp - 0x50], rax
	mov	qword ptr [rbp - 0x58], rcx
	movss	dword ptr [rbp - 0x5c], xmm1
	movss	dword ptr [rbp - 0x60], xmm0
	js	.label_284
	movss	xmm0, dword ptr [rbp - 0x5c]
	movss	dword ptr [rbp - 0x60], xmm0
.label_284:
	movss	xmm0, dword ptr [rbp - 0x60]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rax + 0x28]
	movss	xmm1, dword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x58]
	shr	rcx, 1
	mov	rdx, qword ptr [rbp - 0x58]
	mov	esi, edx
	and	esi, 1
	mov	edi, esi
	or	rdi, rcx
	cvtsi2ss	xmm2, rdi
	addss	xmm2, xmm2
	cvtsi2ss	xmm3, rdx
	test	rdx, rdx
	movss	dword ptr [rbp - 0x64], xmm0
	movss	dword ptr [rbp - 0x68], xmm1
	movss	dword ptr [rbp - 0x6c], xmm3
	movss	dword ptr [rbp - 0x70], xmm2
	js	.label_282
	movss	xmm0, dword ptr [rbp - 0x6c]
	movss	dword ptr [rbp - 0x70], xmm0
.label_282:
	movss	xmm0, dword ptr [rbp - 0x70]
	movss	xmm1, dword ptr [rbp - 0x68]
	mulss	xmm1, xmm0
	movss	xmm0, dword ptr [rbp - 0x64]
	ucomiss	xmm1, xmm0
	jbe	.label_290
	mov	rdi, qword ptr [rbp - 0x10]
	call	check_tuning
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rdi + 0x10]
	mov	rdx, qword ptr [rdi + 0x18]
	mov	rsi, rdx
	shr	rsi, 1
	mov	r8d, edx
	and	r8d, 1
	mov	r9d, r8d
	or	r9, rsi
	cvtsi2ss	xmm0, r9
	addss	xmm0, xmm0
	cvtsi2ss	xmm1, rdx
	test	rdx, rdx
	mov	byte ptr [rbp - 0x71], al
	mov	qword ptr [rbp - 0x80], rdi
	mov	qword ptr [rbp - 0x88], rcx
	movss	dword ptr [rbp - 0x8c], xmm1
	movss	dword ptr [rbp - 0x90], xmm0
	js	.label_281
	movss	xmm0, dword ptr [rbp - 0x8c]
	movss	dword ptr [rbp - 0x90], xmm0
.label_281:
	movss	xmm0, dword ptr [rbp - 0x90]
	mov	rax, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rax + 0x28]
	movss	xmm1, dword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x88]
	shr	rcx, 1
	mov	rdx, qword ptr [rbp - 0x88]
	mov	esi, edx
	and	esi, 1
	mov	edi, esi
	or	rdi, rcx
	cvtsi2ss	xmm2, rdi
	addss	xmm2, xmm2
	cvtsi2ss	xmm3, rdx
	test	rdx, rdx
	movss	dword ptr [rbp - 0x94], xmm0
	movss	dword ptr [rbp - 0x98], xmm1
	movss	dword ptr [rbp - 0x9c], xmm3
	movss	dword ptr [rbp - 0xa0], xmm2
	js	.label_291
	movss	xmm0, dword ptr [rbp - 0x9c]
	movss	dword ptr [rbp - 0xa0], xmm0
.label_291:
	movss	xmm0, dword ptr [rbp - 0xa0]
	movss	xmm1, dword ptr [rbp - 0x98]
	mulss	xmm1, xmm0
	movss	xmm0, dword ptr [rbp - 0x94]
	ucomiss	xmm1, xmm0
	jbe	.label_285
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x30]
	test	byte ptr [rax + 0x10], 1
	je	.label_280
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, rax
	shr	rcx, 1
	mov	edx, eax
	and	edx, 1
	mov	esi, edx
	or	rsi, rcx
	cvtsi2ss	xmm0, rsi
	addss	xmm0, xmm0
	cvtsi2ss	xmm1, rax
	test	rax, rax
	movss	dword ptr [rbp - 0xa4], xmm1
	movss	dword ptr [rbp - 0xa8], xmm0
	js	.label_289
	movss	xmm0, dword ptr [rbp - 0xa4]
	movss	dword ptr [rbp - 0xa8], xmm0
.label_289:
	movss	xmm0, dword ptr [rbp - 0xa8]
	mov	rax, qword ptr [rbp - 0x30]
	mulss	xmm0, dword ptr [rax + 4]
	movss	dword ptr [rbp - 0xac], xmm0
	jmp	.label_275
	.section	.text
	.align	16
	#Procedure 0x4054e0
	.globl triple_compare
	.type triple_compare, @function
triple_compare:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	xor	eax, eax
	mov	cl, al
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rsi + 8]
	mov	rdi, qword ptr [rbp - 0x20]
	cmp	rsi, qword ptr [rdi + 8]
	mov	byte ptr [rbp - 0x21], cl
	jne	.label_292
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	cmp	rdx, qword ptr [rsi + 0x10]
	mov	byte ptr [rbp - 0x21], cl
	jne	.label_292
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rax]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rax]
	call	same_name
	mov	byte ptr [rbp - 0x21], al
.label_292:
	mov	al, byte ptr [rbp - 0x21]
	xor	ecx, ecx
	mov	edx, 1
	test	al, 1
	cmovne	ecx, edx
	cmp	ecx, 0
	setne	al
	and	al, 1
	movzx	eax, al
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405570

	.globl ambsalign
	.type ambsalign, @function
ambsalign:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x14], edx
	mov	dword ptr [rbp - 0x18], ecx
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi]
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x30], rsi
	mov	qword ptr [rbp - 0x38], 0
.label_295:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x28]
	jb	.label_293
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x28]
	call	realloc
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x40], 0
	jne	.label_294
	mov	rdi, qword ptr [rbp - 0x38]
	call	free
	mov	qword ptr [rbp - 0x38], 0
	jmp	.label_293
.label_296:
	jmp	.label_295
.label_293:
	mov	rax, qword ptr [rbp - 0x38]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405607
	.globl sub_405607
	.type sub_405607, @function
sub_405607:

	nop	dword ptr [rax]
.label_294:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	r8d, dword ptr [rbp - 0x14]
	mov	r9d, dword ptr [rbp - 0x18]
	call	mbsalign
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_296
	mov	rdi, qword ptr [rbp - 0x38]
	call	free
	mov	qword ptr [rbp - 0x38], 0
	jmp	.label_293
.label_300:
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	je	.label_298
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	xor	ecx, ecx
	mov	esi, ecx
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_299
.label_298:
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fflush
	cmp	eax, 0
	je	.label_299
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], ecx
.label_299:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_301
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x20], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x20]
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 0x1c], 0xffffffff
.label_301:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
.label_297:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4056ed
	.globl sub_4056ed
	.type sub_4056ed, @function
sub_4056ed:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4056ef

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
	jge	.label_300
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 4], eax
	jmp	.label_297
	.section	.text
	.align	16
	#Procedure 0x405730
	.globl rotl16
	.type rotl16, @function
rotl16:

	push	rbp
	mov	rbp, rsp
	mov	ax, di
	mov	edi, 0x10
	mov	word ptr [rbp - 2], ax
	mov	dword ptr [rbp - 8], esi
	movzx	esi, word ptr [rbp - 2]
	mov	ecx, dword ptr [rbp - 8]
	shl	esi, cl
	movzx	edx, word ptr [rbp - 2]
	sub	edi, dword ptr [rbp - 8]
	mov	ecx, edi
	sar	edx, cl
	or	esi, edx
	and	esi, 0xffff
	mov	ax, si
	movzx	eax, ax
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405767
	.globl sub_405767
	.type sub_405767, @function
sub_405767:

	nop	word ptr [rax + rax]
.label_324:
	mov	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_302
.label_330:
	mov	eax, dword ptr [rbp - 0x34]
	add	eax, 1
	mov	dword ptr [rbp - 0x34], eax
.label_327:
	jmp	.label_311
	.section	.text
	.align	16
	#Procedure 0x405789

	.globl mbsnwidth
	.type mbsnwidth, @function
mbsnwidth:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x80
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsi, qword ptr [rbp - 0x28]
	add	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rsi
	mov	dword ptr [rbp - 0x34], 0
	call	__ctype_get_mb_cur_max
	cmp	rax, 1
	jbe	.label_321
	jmp	.label_316
.label_316:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_324
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x20
	mov	eax, ecx
	sub	ecx, 0x5e
	mov	qword ptr [rbp - 0x60], rax
	mov	dword ptr [rbp - 0x64], ecx
	ja	.label_325
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_332]]
	jmp	rcx
.label_317:
	cmp	qword ptr [rbp - 0x50], -2
	jne	.label_306
	mov	eax, dword ptr [rbp - 0x1c]
	and	eax, 1
	cmp	eax, 0
	jne	.label_329
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x28], rax
	mov	ecx, dword ptr [rbp - 0x34]
	add	ecx, 1
	mov	dword ptr [rbp - 0x34], ecx
	jmp	.label_314
.label_326:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_302
.label_308:
	mov	dword ptr [rbp - 4], 0x7fffffff
.label_302:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x80
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405855
	.globl sub_405855
	.type sub_405855, @function
sub_405855:

	nop	word ptr cs:[rax + rax]
.label_305:
	mov	eax, dword ptr [rbp - 0x34]
	add	eax, 1
	mov	dword ptr [rbp - 0x34], eax
	jmp	.label_309
.label_319:
	mov	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_302
.label_311:
	jmp	.label_323
.label_323:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rax
	lea	rdi, [rbp - 0x40]
	call	mbsinit
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_310
.label_314:
	jmp	.label_315
.label_315:
	jmp	.label_316
.label_320:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_302
.label_307:
	mov	eax, dword ptr [rbp - 0x54]
	add	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 0x34], eax
	jmp	.label_323
.label_303:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_302
.label_318:
	mov	eax, dword ptr [rbp - 0x34]
	add	eax, 1
	mov	dword ptr [rbp - 0x34], eax
.label_322:
	jmp	.label_328
.label_1658:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	ecx, dword ptr [rbp - 0x34]
	add	ecx, 1
	mov	dword ptr [rbp - 0x34], ecx
	jmp	.label_315
.label_331:
	mov	eax, dword ptr [rbp - 0x1c]
	and	eax, 2
	cmp	eax, 0
	jne	.label_303
	movzx	eax, byte ptr [rbp - 0x55]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x78], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x78]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 2
	cmp	edx, 0
	jne	.label_322
	cmp	dword ptr [rbp - 0x34], 0x7fffffff
	jne	.label_318
	jmp	.label_308
.label_304:
	mov	eax, dword ptr [rbp - 0x1c]
	and	eax, 2
	cmp	eax, 0
	jne	.label_326
	mov	edi, dword ptr [rbp - 0x44]
	call	iswcntrl
	cmp	eax, 0
	jne	.label_327
	cmp	dword ptr [rbp - 0x34], 0x7fffffff
	jne	.label_330
	jmp	.label_308
.label_325:
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	lea	rcx, [rbp - 0x40]
	mov	rdi, rcx
	call	memset
.label_310:
	lea	rdi, [rbp - 0x44]
	lea	rcx, [rbp - 0x40]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x28]
	sub	rax, rdx
	mov	rdx, rax
	call	rpl_mbrtowc
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x50], -1
	jne	.label_317
	mov	eax, dword ptr [rbp - 0x1c]
	and	eax, 1
	cmp	eax, 0
	jne	.label_320
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	ecx, dword ptr [rbp - 0x34]
	add	ecx, 1
	mov	dword ptr [rbp - 0x34], ecx
	jmp	.label_314
.label_306:
	cmp	qword ptr [rbp - 0x50], 0
	jne	.label_312
	mov	qword ptr [rbp - 0x50], 1
.label_312:
	mov	edi, dword ptr [rbp - 0x44]
	call	wcwidth
	mov	dword ptr [rbp - 0x54], eax
	cmp	dword ptr [rbp - 0x54], 0
	jl	.label_304
	mov	eax, 0x7fffffff
	mov	ecx, dword ptr [rbp - 0x54]
	sub	eax, dword ptr [rbp - 0x34]
	cmp	ecx, eax
	jle	.label_307
	jmp	.label_308
.label_329:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_302
.label_321:
	jmp	.label_313
.label_313:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_319
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x28], rcx
	mov	dl, byte ptr [rax]
	mov	byte ptr [rbp - 0x55], dl
	movzx	esi, byte ptr [rbp - 0x55]
	movsxd	rax, esi
	mov	qword ptr [rbp - 0x70], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x70]
	movzx	esi, word ptr [rax + rcx*2]
	and	esi, 0x4000
	cmp	esi, 0
	je	.label_331
	cmp	dword ptr [rbp - 0x34], 0x7fffffff
	jne	.label_305
	jmp	.label_308
.label_328:
	jmp	.label_309
.label_309:
	jmp	.label_313
	.section	.text
	.align	16
	#Procedure 0x405aa0

	.globl replace_problematic_chars
	.type replace_problematic_chars, @function
replace_problematic_chars:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	cmp	dword ptr [dword ptr [replace_problematic_chars.tty_out]],  0
	jge	.label_333
	mov	edi, 1
	call	isatty
	mov	dword ptr [dword ptr [replace_problematic_chars.tty_out]],  eax
.label_333:
	movabs	rax, OFFSET FLAT:replace_control_chars
	movabs	rcx, OFFSET FLAT:replace_invalid_chars
	cmp	dword ptr [dword ptr [replace_problematic_chars.tty_out]],  0
	cmovne	rax, rcx
	mov	rdi, qword ptr [rbp - 8]
	call	rax
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405af7
	.globl sub_405af7
	.type sub_405af7, @function
sub_405af7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405b00

	.globl add_excluded_fs_type
	.type add_excluded_fs_type, @function
add_excluded_fs_type:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	eax, 0x10
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, rcx
	call	xmalloc
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	rax,  qword ptr [word ptr [fs_exclude_list]]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [word ptr [fs_exclude_list]],  rax
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405b4c
	.globl sub_405b4c
	.type sub_405b4c, @function
sub_405b4c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405b50

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
	#Procedure 0x405b83
	.globl sub_405b83
	.type sub_405b83, @function
sub_405b83:

	nop	word ptr cs:[rax + rax]
.label_338:
	jmp	.label_334
.label_334:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_336
.label_340:
	mov	rax,  qword ptr [word ptr [fs_exclude_list]]
	mov	qword ptr [rbp - 0x18], rax
.label_336:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_335
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax]
	call	strcmp
	cmp	eax, 0
	jne	.label_338
	mov	byte ptr [rbp - 1], 1
	jmp	.label_337
.label_335:
	mov	byte ptr [rbp - 1], 0
.label_337:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405bf1

	.globl excluded_fstype
	.type excluded_fstype, @function
excluded_fstype:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	cmp	qword ptr [word ptr [fs_exclude_list]],  0
	je	.label_339
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_340
.label_339:
	mov	byte ptr [rbp - 1], 0
	jmp	.label_337
	.section	.text
	.align	16
	#Procedure 0x405c20
	.globl rotl8
	.type rotl8, @function
rotl8:

	push	rbp
	mov	rbp, rsp
	mov	al, dil
	mov	edi, 8
	mov	byte ptr [rbp - 1], al
	mov	dword ptr [rbp - 8], esi
	movzx	esi, byte ptr [rbp - 1]
	mov	ecx, dword ptr [rbp - 8]
	shl	esi, cl
	movzx	edx, byte ptr [rbp - 1]
	sub	edi, dword ptr [rbp - 8]
	mov	ecx, edi
	sar	edx, cl
	or	esi, edx
	and	esi, 0xff
	mov	al, sil
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405c56
	.globl sub_405c56
	.type sub_405c56, @function
sub_405c56:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405c60

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
	#Procedure 0x405c92
	.globl sub_405c92
	.type sub_405c92, @function
sub_405c92:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405ca0

	.globl free_entry
	.type free_entry, @function
free_entry:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi], 0
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 0x48]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 8], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + 0x48], rsi
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405cd5
	.globl sub_405cd5
	.type sub_405cd5, @function
sub_405cd5:

	nop	word ptr cs:[rax + rax]
.label_1604:
	movabs	rdi, OFFSET FLAT:label_341
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
	jmp	.label_342
.label_1608:
	movabs	rdi, OFFSET FLAT:label_358
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
	jmp	.label_342
.label_1611:
	movabs	rdi, OFFSET FLAT:label_347
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
	jmp	.label_342
.label_1609:
	movabs	rdi, OFFSET FLAT:label_356
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
	jmp	.label_342
.label_357:
	movabs	rdi, OFFSET FLAT:label_359
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
.label_342:
	add	rsp, 0x180
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405f75
	.globl sub_405f75
	.type sub_405f75, @function
sub_405f75:

	nop	
.label_1606:
	movabs	rdi, OFFSET FLAT:label_343
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
	jmp	.label_342
.label_1607:
	movabs	rdi, OFFSET FLAT:label_352
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
	jmp	.label_342
.label_1612:
	movabs	rdi, OFFSET FLAT:label_350
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
	jmp	.label_342
.label_1603:
	jmp	.label_342
	.section	.text
	.align	16
	#Procedure 0x4060d1

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
	je	.label_348
	movabs	rsi, OFFSET FLAT:label_344
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_354
.label_1610:
	movabs	rdi, OFFSET FLAT:label_345
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
	jmp	.label_342
.label_348:
	movabs	rsi, OFFSET FLAT:label_346
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x48], eax
.label_354:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	eax, OFFSET FLAT:label_355
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
	mov	ecx, OFFSET FLAT:label_351
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
	ja	.label_357
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_349]]
	jmp	rcx
.label_1605:
	movabs	rdi, OFFSET FLAT:label_353
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
	jmp	.label_342
	.section	.text
	.align	16
	#Procedure 0x4062a0

	.globl dev_from_mount_options
	.type dev_from_mount_options, @function
dev_from_mount_options:
	push	rbp
	mov	rbp, rsp
	mov	rax, -1
	mov	qword ptr [rbp - 8], rdi
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4062b1
	.globl sub_4062b1
	.type sub_4062b1, @function
sub_4062b1:

	nop	word ptr cs:[rax + rax]
.label_372:
	jmp	.label_360
.label_360:
	jmp	.label_361
.label_361:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_363
.label_370:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x48]
	mov	qword ptr [rbp - 0x18], rax
.label_373:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_369
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_373
	.section	.text
	.align	16
	#Procedure 0x406317

	.globl hash_free
	.type hash_free, @function
hash_free:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	cmp	qword ptr [rdi + 0x40], 0
	je	.label_368
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x20], 0
	je	.label_368
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x10], rax
.label_363:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_364
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax], 0
	je	.label_360
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rax
.label_367:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_372
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx]
	call	rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_367
.label_369:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	free
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4063c2
	.globl sub_4063c2
	.type sub_4063c2, @function
sub_4063c2:

	nop	word ptr cs:[rax + rax]
.label_365:
	jmp	.label_362
.label_362:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_366
.label_364:
	jmp	.label_368
.label_368:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x10], rax
.label_366:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_370
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x18], rax
.label_371:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_365
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_371
	.section	.text
	.align	16
	#Procedure 0x406440
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
	je	.label_374
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_375
.label_374:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_375
.label_375:
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
	#Procedure 0x4064b2
	.globl sub_4064b2
	.type sub_4064b2, @function
sub_4064b2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4064c0

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
	jne	.label_376
	cmp	qword ptr [rbp - 8], 0
	je	.label_376
	call	xalloc_die
.label_376:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4064fe
	.globl sub_4064fe
	.type sub_4064fe, @function
sub_4064fe:

	nop	
	.section	.text
	.align	16
	#Procedure 0x406500

	.globl allocate_entry
	.type allocate_entry, @function
allocate_entry:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	cmp	qword ptr [rdi + 0x48], 0
	je	.label_377
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x48]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x48], rax
	jmp	.label_378
.label_377:
	mov	eax, 0x10
	mov	edi, eax
	call	malloc
	mov	qword ptr [rbp - 0x10], rax
.label_378:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406556
	.globl sub_406556
	.type sub_406556, @function
sub_406556:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406560

	.globl df_readable
	.type df_readable, @function
df_readable:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	al, dil
	and	al, 1
	mov	byte ptr [rbp - 9], al
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	rdi, qword ptr [rbp - 0x18]
	call	known_value
	test	al, 1
	jne	.label_380
	test	byte ptr [rbp - 9], 1
	jne	.label_380
	movabs	rax, OFFSET FLAT:label_383
	mov	qword ptr [rbp - 8], rax
	jmp	.label_384
.label_379:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x40], rax
.label_382:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	dl, byte ptr [rbp - 9]
	and	dl, 1
	movzx	esi, dl
	movsxd	rdi, esi
	add	rcx, rdi
	mov	edx,  dword ptr [dword ptr [human_output_opts]]
	mov	rdi, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x48], rdi
	mov	rdi, rax
	mov	rsi, rcx
	mov	rcx, qword ptr [rbp - 0x48]
	call	human_readable
	mov	qword ptr [rbp - 0x38], rax
	test	byte ptr [rbp - 9], 1
	je	.label_381
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x38], rcx
	mov	byte ptr [rax - 1], 0x2d
.label_381:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 8], rax
.label_384:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406622
	.globl sub_406622
	.type sub_406622, @function
sub_406622:

	nop	dword ptr [rax]
.label_380:
	test	byte ptr [rbp - 9], 1
	je	.label_379
	xor	eax, eax
	mov	ecx, eax
	sub	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x40], rcx
	jmp	.label_382
	.section	.text
	.align	16
	#Procedure 0x406640

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
	je	.label_395
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_387
.label_396:
	movabs	rsi, OFFSET FLAT:label_394
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_388
	movabs	rax, OFFSET FLAT:label_392
	movabs	rcx, OFFSET FLAT:label_393
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_387
.label_395:
	call	locale_charset
	movabs	rsi, OFFSET FLAT:label_391
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_396
	movabs	rax, OFFSET FLAT:label_385
	movabs	rcx, OFFSET FLAT:label_386
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_387
.label_388:
	movabs	rax, OFFSET FLAT:label_389
	movabs	rcx, OFFSET FLAT:label_390
	cmp	dword ptr [rbp - 0x14], 9
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
.label_387:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406738
	.globl sub_406738
	.type sub_406738, @function
sub_406738:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406740
	.globl c_isblank
	.type c_isblank, @function
c_isblank:

	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0x20
	mov	byte ptr [rbp - 5], al
	je	.label_397
	cmp	dword ptr [rbp - 4], 9
	sete	al
	mov	byte ptr [rbp - 5], al
.label_397:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40676a
	.globl sub_40676a
	.type sub_40676a, @function
sub_40676a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406770

	.globl hash_get_n_buckets
	.type hash_get_n_buckets, @function
hash_get_n_buckets:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rdi + 0x10]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406782
	.globl sub_406782
	.type sub_406782, @function
sub_406782:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406790

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
	jne	.label_402
	movabs	rdi, OFFSET FLAT:label_415
	call	getenv
	mov	qword ptr [rbp - 0x10], rax
	cmp	rax, 0
	jne	.label_402
	movabs	rdi, OFFSET FLAT:label_406
	call	getenv
	mov	qword ptr [rbp - 0x10], rax
	cmp	rax, 0
	jne	.label_402
	call	default_block_size
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx], rax
	jmp	.label_398
.label_402:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x27
	jne	.label_399
	mov	eax, dword ptr [rbp - 0x28]
	or	eax, 4
	mov	dword ptr [rbp - 0x28], eax
	mov	rcx, qword ptr [rbp - 0x10]
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
.label_399:
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
	jg	.label_404
	movsxd	rax, dword ptr [rbp - 0x24]
	mov	ecx,  dword ptr [dword ptr [+ (rax * 4) + block_size_opts]]
	or	ecx, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 0x28], ecx
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rax], 1
	jmp	.label_409
.label_408:
	jmp	.label_407
.label_407:
	xor	eax, eax
	mov	cl, al
	mov	eax, 0x30
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	eax, esi
	mov	byte ptr [rbp - 0x35], cl
	jg	.label_401
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x39
	setle	dl
	mov	byte ptr [rbp - 0x35], dl
.label_401:
	mov	al, byte ptr [rbp - 0x35]
	xor	al, 0xff
	test	al, 1
	jne	.label_414
	jmp	.label_413
.label_414:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x30]
	jne	.label_403
	mov	eax, dword ptr [rbp - 0x28]
	or	eax, 0x80
	mov	dword ptr [rbp - 0x28], eax
	mov	rcx, qword ptr [rbp - 0x30]
	movsx	eax, byte ptr [rcx - 1]
	cmp	eax, 0x42
	jne	.label_405
	mov	eax, dword ptr [rbp - 0x28]
	or	eax, 0x100
	mov	dword ptr [rbp - 0x28], eax
.label_405:
	mov	rax, qword ptr [rbp - 0x30]
	movsx	ecx, byte ptr [rax - 1]
	cmp	ecx, 0x42
	jne	.label_411
	mov	rax, qword ptr [rbp - 0x30]
	movsx	ecx, byte ptr [rax - 2]
	cmp	ecx, 0x69
	jne	.label_410
.label_411:
	mov	eax, dword ptr [rbp - 0x28]
	or	eax, 0x20
	mov	dword ptr [rbp - 0x28], eax
.label_410:
	jmp	.label_413
.label_403:
	jmp	.label_400
.label_400:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_407
.label_404:
	lea	rsi, [rbp - 0x30]
	xor	edx, edx
	movabs	r8, OFFSET FLAT:label_416
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	call	xstrtoumax
	mov	dword ptr [rbp - 0x34], eax
	cmp	dword ptr [rbp - 0x34], 0
	je	.label_408
	mov	rax, qword ptr [rbp - 0x20]
	mov	dword ptr [rax], 0
	mov	ecx, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_412
.label_413:
	jmp	.label_409
.label_409:
	jmp	.label_398
.label_398:
	mov	eax, dword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	dword ptr [rcx], eax
	mov	dword ptr [rbp - 4], 0
.label_412:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40699e
	.globl sub_40699e
	.type sub_40699e, @function
sub_40699e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4069a0

	.globl free_cwd
	.type free_cwd, @function
free_cwd:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	cmp	dword ptr [rdi], 0
	jl	.label_417
	mov	rax, qword ptr [rbp - 8]
	mov	edi, dword ptr [rax]
	call	close
	mov	dword ptr [rbp - 0xc], eax
.label_417:
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4069da
	.globl sub_4069da
	.type sub_4069da, @function
sub_4069da:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4069e0

	.globl wc_truncate
	.type wc_truncate, @function
wc_truncate:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], 0
	mov	dword ptr [rbp - 0x1c], 0
.label_421:
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax], 0
	je	.label_420
	mov	rax, qword ptr [rbp - 8]
	mov	edi, dword ptr [rax]
	call	wcwidth
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], -1
	jne	.label_419
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 0xfffd
	mov	dword ptr [rbp - 0x1c], 1
.label_419:
	mov	rax, qword ptr [rbp - 0x18]
	movsxd	rcx, dword ptr [rbp - 0x1c]
	add	rax, rcx
	cmp	rax, qword ptr [rbp - 0x10]
	jbe	.label_418
	jmp	.label_420
.label_418:
	movsxd	rax, dword ptr [rbp - 0x1c]
	add	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 8]
	add	rax, 4
	mov	qword ptr [rbp - 8], rax
	jmp	.label_421
.label_420:
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406a80

	.globl xgetcwd
	.type xgetcwd, @function
xgetcwd:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	ecx, eax
	mov	rdi, rcx
	mov	rsi, rcx
	call	getcwd
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [rbp - 8], 0
	jne	.label_422
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	jne	.label_422
	call	xalloc_die
.label_422:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406ac3
	.globl sub_406ac3
	.type sub_406ac3, @function
sub_406ac3:

	nop	word ptr cs:[rax + rax]
.label_427:
	mov	eax, 0x10
	mov	esi, eax
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rcx + 0x10]
	call	calloc
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax], 0
	jne	.label_424
	jmp	.label_425
.label_425:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdi, rax
	call	free
	mov	qword ptr [rbp - 8], 0
.label_423:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406b1c
	.globl sub_406b1c
	.type sub_406b1c, @function
sub_406b1c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406b23

	.globl hash_initialize
	.type hash_initialize, @function
hash_initialize:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_428
	movabs	rax, OFFSET FLAT:raw_hasher
	mov	qword ptr [rbp - 0x20], rax
.label_428:
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_430
	movabs	rax, OFFSET FLAT:raw_comparator
	mov	qword ptr [rbp - 0x28], rax
.label_430:
	mov	eax, 0x50
	mov	edi, eax
	call	malloc
	mov	qword ptr [rbp - 0x38], rax
	cmp	qword ptr [rbp - 0x38], 0
	jne	.label_431
	mov	qword ptr [rbp - 8], 0
	jmp	.label_423
.label_426:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	compute_bucket_size
	mov	rsi, qword ptr [rbp - 0x38]
	mov	qword ptr [rsi + 0x10], rax
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax + 0x10], 0
	jne	.label_427
	jmp	.label_425
.label_424:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rcx + 0x10]
	shl	rcx, 4
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rax + 0x18], 0
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rax + 0x20], 0
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x30], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x38], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x40], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rax + 0x48], 0
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_423
.label_431:
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_429
	movabs	rax, OFFSET FLAT:default_tuning
	mov	qword ptr [rbp - 0x18], rax
.label_429:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x28], rax
	mov	rdi, qword ptr [rbp - 0x38]
	call	check_tuning
	test	al, 1
	jne	.label_426
	jmp	.label_425
.label_433:
	mov	eax, 0x18
	mov	edi, eax
	call	xmalloc
	mov	qword ptr [rbp - 0x20], rax
	mov	rdi, qword ptr [rbp - 0x10]
	call	xstrdup
	mov	rdi, qword ptr [rbp - 0x20]
	mov	qword ptr [rdi], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	qword ptr [rdi + 8], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	qword ptr [rdi + 0x10], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsi, rax
	call	hash_insert
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_434
	call	xalloc_die
.label_434:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x20]
	je	.label_432
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, rax
	call	triple_free
.label_432:
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406cf3
	.globl sub_406cf3
	.type sub_406cf3, @function
sub_406cf3:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406cfc

	.globl record_file
	.type record_file, @function
record_file:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	cmp	qword ptr [rbp - 8], 0
	jne	.label_433
	jmp	.label_432
	.section	.text
	.align	16
	#Procedure 0x406d20

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
	#Procedure 0x406d58
	.globl sub_406d58
	.type sub_406d58, @function
sub_406d58:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406d60

	.globl last_component
	.type last_component, @function
last_component:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rdi
	mov	byte ptr [rbp - 0x19], 0
.label_436:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	jne	.label_437
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_436
.label_437:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rax
.label_439:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	byte ptr [rax], 0
	je	.label_441
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	jne	.label_438
	mov	byte ptr [rbp - 0x19], 1
	jmp	.label_440
.label_438:
	test	byte ptr [rbp - 0x19], 1
	je	.label_435
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x10], rax
	mov	byte ptr [rbp - 0x19], 0
.label_435:
	jmp	.label_440
.label_440:
	jmp	.label_442
.label_442:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_439
.label_441:
	mov	rax, qword ptr [rbp - 0x10]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406dfa
	.globl sub_406dfa
	.type sub_406dfa, @function
sub_406dfa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406e00
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
	jl	.label_444
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_443
.label_444:
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
.label_443:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406e88
	.globl sub_406e88
	.type sub_406e88, @function
sub_406e88:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406e90

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
	#Procedure 0x406f05
	.globl sub_406f05
	.type sub_406f05, @function
sub_406f05:

	nop	word ptr cs:[rax + rax]
.label_446:
	mov	byte ptr [rbp - 1], 0
.label_447:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406f1e
	.globl sub_406f1e
	.type sub_406f1e, @function
sub_406f1e:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406f2c
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x30
	sub	edi, 9
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_446
	jmp	.label_445
.label_445:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_447
.label_449:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	get_point
.label_450:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406f63
	.globl sub_406f63
	.type sub_406f63, @function
sub_406f63:

	nop	
	.section	.text
	.align	16
	#Procedure 0x406f65

	.globl get_entry
	.type get_entry, @function
get_entry:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rsi + 0x18]
	and	eax, 0xf000
	cmp	eax, 0x6000
	je	.label_448
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0x2000
	jne	.label_449
.label_448:
	mov	rdi, qword ptr [rbp - 8]
	call	get_disk
	test	al, 1
	jne	.label_451
	jmp	.label_449
.label_451:
	jmp	.label_450
.label_453:
	mov	rax, qword ptr [rbp - 0x10]
	test	byte ptr [rax], 1
	je	.label_452
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 8]
	sub	rcx, qword ptr [rdx]
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx], rcx
.label_452:
	test	byte ptr [rbp - 0x19], 1
	je	.label_457
	xor	eax, eax
	mov	ecx, eax
	sub	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x18], rcx
.label_457:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx]
	jae	.label_455
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rcx]
	sub	rdx, rax
	mov	qword ptr [rcx], rdx
	jmp	.label_454
.label_455:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	sub	rax, qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx], rax
	mov	dl, byte ptr [rbp - 0x19]
	mov	rax, qword ptr [rbp - 0x10]
	and	dl, 1
	mov	byte ptr [rax], dl
.label_454:
	mov	rax, qword ptr [rbp - 0x10]
	test	byte ptr [rax], 1
	je	.label_456
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 8]
	sub	rcx, qword ptr [rdx]
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx], rcx
.label_456:
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40705b
	.globl sub_40705b
	.type sub_40705b, @function
sub_40705b:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407065

	.globl add_uint_with_neg_flag
	.type add_uint_with_neg_flag, @function
add_uint_with_neg_flag:
	push	rbp
	mov	rbp, rsp
	mov	al, cl
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	rdx, qword ptr [rbp - 0x10]
	mov	al, byte ptr [rdx]
	xor	al, 0xff
	and	al, 1
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0x19]
	xor	al, 0xff
	and	al, 1
	movzx	r8d, al
	cmp	ecx, r8d
	jne	.label_453
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	add	rax, qword ptr [rcx]
	mov	qword ptr [rcx], rax
	jmp	.label_456
	.section	.text
	.align	16
	#Procedure 0x4070b0

	.globl known_value
	.type known_value, @function
known_value:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], -2
	setb	al
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4070c7
	.globl sub_4070c7
	.type sub_4070c7, @function
sub_4070c7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4070d0

	.globl dup_safer
	.type dup_safer, @function
dup_safer:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	esi, esi
	mov	edx, 3
	mov	dword ptr [rbp - 4], edi
	mov	edi, dword ptr [rbp - 4]
	mov	al, 0
	call	rpl_fcntl
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4070f2
	.globl sub_4070f2
	.type sub_4070f2, @function
sub_4070f2:

	nop	word ptr cs:[rax + rax]
.label_458:
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax], 0
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40710d
	.globl sub_40710d
	.type sub_40710d, @function
sub_40710d:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40711b

	.globl mbs_align_pad
	.type mbs_align_pad, @function
mbs_align_pad:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
.label_459:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsi, rdx
	add	rsi, -1
	mov	qword ptr [rbp - 0x18], rsi
	cmp	rdx, 0
	mov	byte ptr [rbp - 0x19], cl
	je	.label_461
	mov	rax, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rbp - 0x10]
	setb	cl
	mov	byte ptr [rbp - 0x19], cl
.label_461:
	mov	al, byte ptr [rbp - 0x19]
	test	al, 1
	jne	.label_460
	jmp	.label_458
.label_460:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 8], rcx
	mov	byte ptr [rax], 0x20
	jmp	.label_459
	.section	.text
	.align	16
	#Procedure 0x407180

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
	#Procedure 0x4071b7
	.globl sub_4071b7
	.type sub_4071b7, @function
sub_4071b7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4071c0
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
	jb	.label_462
	jmp	.label_465
.label_465:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x20
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_464
	jmp	.label_462
.label_462:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_463
.label_464:
	mov	byte ptr [rbp - 1], 0
.label_463:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40720b
	.globl sub_40720b
	.type sub_40720b, @function
sub_40720b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407210

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
	#Procedure 0x40722f
	.globl sub_40722f
	.type sub_40722f, @function
sub_40722f:

	nop	
.label_467:
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407236

	.globl get_all_entries
	.type get_all_entries, @function
get_all_entries:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	al,  byte ptr [byte ptr [show_all_fs]]
	and	al, 1
	movzx	edi, al
	call	filter_mount_list
	mov	rcx,  qword ptr [word ptr [mount_list]]
	mov	qword ptr [rbp - 8], rcx
.label_466:
	cmp	qword ptr [rbp - 8], 0
	je	.label_467
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdx]
	mov	rdx, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rdx + 8]
	mov	rdx, qword ptr [rbp - 8]
	mov	r8, qword ptr [rdx + 0x18]
	mov	rdx, qword ptr [rbp - 8]
	mov	r9b, byte ptr [rdx + 0x28]
	and	r9b, 1
	movzx	eax, r9b
	cmp	eax, 0
	setne	r9b
	mov	rdx, qword ptr [rbp - 8]
	mov	r10b, byte ptr [rdx + 0x28]
	shr	r10b, 1
	and	r10b, 1
	movzx	eax, r10b
	cmp	eax, 0
	setne	r10b
	and	r10b, 1
	movzx	eax, r10b
	mov	rdx, rsp
	mov	dword ptr [rdx], eax
	mov	dword ptr [rdx + 0x10], 1
	mov	qword ptr [rdx + 8], 0
	and	r9b, 1
	movzx	r9d, r9b
	xor	eax, eax
	mov	edx, eax
	mov	qword ptr [rbp - 0x10], rdx
	mov	r11, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rcx
	mov	rcx, r11
	call	get_dev
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x30]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_466
.label_469:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x30], rax
.label_468:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x28], rax
.label_470:
	mov	rax, qword ptr [rbp - 0x28]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40731a
	.globl sub_40731a
	.type sub_40731a, @function
sub_40731a:

	nop	dword ptr [rax]
.label_471:
	cmp	dword ptr [rbp - 0x1c], 0
	jne	.label_469
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_468
	.section	.text
	.align	16
	#Procedure 0x407335

	.globl hash_insert
	.type hash_insert, @function
hash_insert:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	lea	rdx, [rbp - 0x18]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	hash_insert_if_absent
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], -1
	jne	.label_471
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x28], rcx
	jmp	.label_470
.label_472:
	movss	xmm0,  dword ptr [dword ptr [rip + label_476]]
	movss	dword ptr [rbp - 0x1c], xmm0
	movss	xmm0, dword ptr [rbp - 0x1c]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 8]
	ucomiss	xmm1, xmm0
	jbe	.label_474
	movss	xmm0,  dword ptr [dword ptr [rip + label_473]]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 8]
	subss	xmm0, dword ptr [rbp - 0x1c]
	ucomiss	xmm0, xmm1
	jbe	.label_474
	movss	xmm0,  dword ptr [dword ptr [rip + label_473]]
	addss	xmm0, dword ptr [rbp - 0x1c]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 0xc]
	ucomiss	xmm1, xmm0
	jbe	.label_474
	xorps	xmm0, xmm0
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax]
	ucomiss	xmm1, xmm0
	jb	.label_474
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm0, dword ptr [rax]
	addss	xmm0, dword ptr [rbp - 0x1c]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 4]
	ucomiss	xmm1, xmm0
	jbe	.label_474
	movss	xmm0,  dword ptr [dword ptr [rip + label_473]]
	mov	rax, qword ptr [rbp - 0x18]
	ucomiss	xmm0, dword ptr [rax + 4]
	jb	.label_474
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm0, dword ptr [rax]
	addss	xmm0, dword ptr [rbp - 0x1c]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 8]
	ucomiss	xmm1, xmm0
	jbe	.label_474
	mov	byte ptr [rbp - 1], 1
	jmp	.label_475
	.section	.text
	.align	16
	#Procedure 0x407443

	.globl check_tuning
	.type check_tuning, @function
check_tuning:
	push	rbp
	mov	rbp, rsp
	movabs	rax, OFFSET FLAT:default_tuning
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi + 0x28]
	mov	qword ptr [rbp - 0x18], rdi
	cmp	qword ptr [rbp - 0x18], rax
	jne	.label_472
	mov	byte ptr [rbp - 1], 1
	jmp	.label_475
.label_474:
	movabs	rax, OFFSET FLAT:default_tuning
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x28], rax
	mov	byte ptr [rbp - 1], 0
.label_475:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407494
	.globl sub_407494
	.type sub_407494, @function
sub_407494:

	nop	word ptr cs:[rax + rax]
.label_482:
	movss	xmm0, dword ptr [rbp - 0x1c]
	movss	xmm1,  dword ptr [dword ptr [rip + label_277]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rax, rcx
	cvttss2si	rcx, xmm0
	ucomiss	xmm1, xmm0
	cmova	rax, rcx
	mov	qword ptr [rbp - 0x10], rax
.label_481:
	mov	rdi, qword ptr [rbp - 0x10]
	call	next_prime
	movabs	rdi, 0xfffffffffffffff
	mov	qword ptr [rbp - 0x10], rax
	cmp	rdi, qword ptr [rbp - 0x10]
	jae	.label_478
	mov	qword ptr [rbp - 8], 0
	jmp	.label_477
.label_478:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_477:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407516
	.globl sub_407516
	.type sub_407516, @function
sub_407516:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407523

	.globl compute_bucket_size
	.type compute_bucket_size, @function
compute_bucket_size:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	test	byte ptr [rsi + 0x10], 1
	jne	.label_481
	movss	xmm0,  dword ptr [dword ptr [rip + label_479]]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	shr	rcx, 1
	mov	edx, eax
	and	edx, 1
	mov	esi, edx
	or	rsi, rcx
	cvtsi2ss	xmm1, rsi
	addss	xmm1, xmm1
	cvtsi2ss	xmm2, rax
	test	rax, rax
	movss	dword ptr [rbp - 0x20], xmm0
	movss	dword ptr [rbp - 0x24], xmm2
	movss	dword ptr [rbp - 0x28], xmm1
	js	.label_480
	movss	xmm0, dword ptr [rbp - 0x24]
	movss	dword ptr [rbp - 0x28], xmm0
.label_480:
	movss	xmm0, dword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x18]
	divss	xmm0, dword ptr [rax + 8]
	movss	dword ptr [rbp - 0x1c], xmm0
	movss	xmm0, dword ptr [rbp - 0x1c]
	movss	xmm1, dword ptr [rbp - 0x20]
	ucomiss	xmm0, xmm1
	jb	.label_482
	mov	qword ptr [rbp - 8], 0
	jmp	.label_477
	.section	.text
	.align	16
	#Procedure 0x4075c0

	.globl raw_comparator
	.type raw_comparator, @function
raw_comparator:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	cmp	rsi, qword ptr [rbp - 0x10]
	sete	al
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4075de
	.globl sub_4075de
	.type sub_4075de, @function
sub_4075de:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4075e0

	.globl replace_control_chars
	.type replace_control_chars, @function
replace_control_chars:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rdi
.label_485:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	byte ptr [rax], 0
	je	.label_483
	mov	rax, qword ptr [rbp - 0x10]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	call	c_iscntrl
	test	al, 1
	jne	.label_484
	jmp	.label_486
.label_484:
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax], 0x3f
.label_486:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_485
.label_483:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407640
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
	#Procedure 0x407667
	.globl sub_407667
	.type sub_407667, @function
sub_407667:

	nop	word ptr [rax + rax]
.label_488:
	mov	byte ptr [rbp - 1], 0
.label_489:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40767e
	.globl sub_40767e
	.type sub_40767e, @function
sub_40767e:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40768c
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x21
	sub	edi, 0x5d
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_488
	jmp	.label_487
.label_487:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_489
	.section	.text
	.align	16
	#Procedure 0x4076b0

	.globl triple_compare_ino_str
	.type triple_compare_ino_str, @function
triple_compare_ino_str:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	xor	eax, eax
	mov	cl, al
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rsi + 8]
	mov	rdi, qword ptr [rbp - 0x20]
	cmp	rsi, qword ptr [rdi + 8]
	mov	byte ptr [rbp - 0x21], cl
	jne	.label_490
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	cmp	rdx, qword ptr [rsi + 0x10]
	mov	byte ptr [rbp - 0x21], cl
	jne	.label_490
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rax]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rax]
	call	strcmp
	cmp	eax, 0
	sete	cl
	mov	byte ptr [rbp - 0x21], cl
.label_490:
	mov	al, byte ptr [rbp - 0x21]
	xor	ecx, ecx
	mov	edx, 1
	test	al, 1
	cmovne	ecx, edx
	cmp	ecx, 0
	setne	al
	and	al, 1
	movzx	eax, al
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407746
	.globl sub_407746
	.type sub_407746, @function
sub_407746:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407750
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
	#Procedure 0x40776f
	.globl sub_40776f
	.type sub_40776f, @function
sub_40776f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x407770

	.globl add_to_grand_total
	.type add_to_grand_total, @function
add_to_grand_total:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rsi + 0x10]
	call	known_value
	test	al, 1
	jne	.label_495
	jmp	.label_499
.label_495:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	add	rax,  qword ptr [word ptr [label_502]]
	mov	qword ptr [word ptr [label_502]],  rax
.label_499:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax + 0x18]
	call	known_value
	test	al, 1
	jne	.label_504
	jmp	.label_492
.label_504:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x18]
	add	rax,  qword ptr [word ptr [label_494]]
	mov	qword ptr [word ptr [label_494]],  rax
.label_492:
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 0x10]
	call	known_value
	test	al, 1
	jne	.label_497
	jmp	.label_501
.label_497:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	imul	rax, qword ptr [rcx + 0x10]
	add	rax,  qword ptr [word ptr [label_503]]
	mov	qword ptr [word ptr [label_503]],  rax
.label_501:
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 0x28]
	call	known_value
	test	al, 1
	jne	.label_493
	jmp	.label_498
.label_493:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	imul	rax, qword ptr [rcx + 0x28]
	add	rax,  qword ptr [word ptr [label_500]]
	mov	qword ptr [word ptr [label_500]],  rax
.label_498:
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 0x18]
	call	known_value
	test	al, 1
	jne	.label_491
	jmp	.label_496
.label_491:
	movabs	rax, OFFSET FLAT:grand_fsu
	mov	rcx, rax
	add	rcx, 0x18
	add	rax, 0x20
	mov	rdx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rdx]
	mov	rsi, qword ptr [rbp - 8]
	imul	rdx, qword ptr [rsi + 0x18]
	mov	rsi, qword ptr [rbp - 8]
	mov	dil, byte ptr [rsi + 0x20]
	and	dil, 1
	mov	byte ptr [rbp - 0x11], dil
	mov	rdi, rcx
	mov	rsi, rax
	mov	r8b, byte ptr [rbp - 0x11]
	movzx	ecx, r8b
	call	add_uint_with_neg_flag
.label_496:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4078c0

	.globl usage
	.type usage, @function
usage:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0
	je	.label_505
	jmp	.label_510
.label_510:
	movabs	rdi, OFFSET FLAT:label_511
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x10], rax
	call	gettext
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_509
.label_505:
	movabs	rdi, OFFSET FLAT:label_517
	call	gettext
	mov	rsi,  qword ptr [word ptr [program_name]]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_518
	mov	dword ptr [rbp - 0x18], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x1c], eax
	call	emit_mandatory_arg_note
	movabs	rdi, OFFSET FLAT:label_512
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_520
	mov	dword ptr [rbp - 0x20], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_513
	mov	dword ptr [rbp - 0x24], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_506
	mov	dword ptr [rbp - 0x28], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_515
	mov	dword ptr [rbp - 0x2c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_507
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_516
	mov	dword ptr [rbp - 0x34], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_508
	mov	dword ptr [rbp - 0x38], eax
	call	emit_blocksize_note
	call	emit_size_note
	movabs	rdi, OFFSET FLAT:label_514
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_519
	mov	dword ptr [rbp - 0x3c], eax
	call	emit_ancillary_info
.label_509:
	mov	edi, dword ptr [rbp - 4]
	call	exit
	.section	.text
	.align	16
	#Procedure 0x407a99
	.globl sub_407a99
	.type sub_407a99, @function
sub_407a99:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407aa0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_521
	mov	eax,  dword ptr [dword ptr [exit_failure]]
	mov	dword ptr [rbp - 4], eax
	call	gettext
	xor	esi, esi
	movabs	rdx, OFFSET FLAT:label_522
	mov	edi, dword ptr [rbp - 4]
	mov	rcx, rax
	mov	al, 0
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x407adf
	.globl sub_407adf
	.type sub_407adf, @function
sub_407adf:

	nop	
.label_526:
	mov	edx, 1
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x48], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x70]
	call	transfer_entries
	test	al, 1
	jne	.label_523
	jmp	.label_524
.label_523:
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x70]
	call	transfer_entries
	test	al, 1
	jne	.label_525
.label_524:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x407b2b

	.globl hash_rehash
	.type hash_rehash, @function
hash_rehash:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x80
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0x28]
	call	compute_bucket_size
	mov	qword ptr [rbp - 0x78], rax
	cmp	qword ptr [rbp - 0x78], 0
	jne	.label_527
	mov	byte ptr [rbp - 1], 0
	jmp	.label_528
.label_529:
	mov	eax, 0x10
	mov	esi, eax
	lea	rcx, [rbp - 0x68]
	mov	qword ptr [rbp - 0x70], rcx
	mov	rdi, qword ptr [rbp - 0x78]
	call	calloc
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x70]
	cmp	qword ptr [rax], 0
	jne	.label_531
	mov	byte ptr [rbp - 1], 0
	jmp	.label_528
.label_531:
	xor	edx, edx
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x78]
	shl	rcx, 4
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rax + 0x18], 0
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rax + 0x20], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rcx + 0x28], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x30]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rcx + 0x30], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x38]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rcx + 0x38], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rcx + 0x40], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rcx + 0x48], rax
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rsi, qword ptr [rbp - 0x10]
	call	transfer_entries
	test	al, 1
	jne	.label_530
	jmp	.label_526
.label_530:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 8]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 8], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 0x10]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 0x10], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 0x18]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 0x18], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 0x48]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 0x48], rax
	mov	byte ptr [rbp - 1], 1
	jmp	.label_528
.label_525:
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax]
	mov	rdi, rax
	call	free
	mov	byte ptr [rbp - 1], 0
.label_528:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x80
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407cd1
	.globl sub_407cd1
	.type sub_407cd1, @function
sub_407cd1:

	nop	dword ptr [rax]
.label_527:
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x10]
	jne	.label_529
	mov	byte ptr [rbp - 1], 1
	jmp	.label_528
.label_547:
	add	rsp, 0x310
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407cf9
	.globl sub_407cf9
	.type sub_407cf9, @function
sub_407cf9:

	nop	dword ptr [rax]
.label_545:
	mov	rax, qword ptr [rbp - 0x300]
	mov	qword ptr [rbp - 0x310], rax
.label_543:
	mov	rax, qword ptr [rbp - 0x310]
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx,  qword ptr [word ptr [columns]]
	mov	rcx, qword ptr [rdx + rcx*8]
	mov	qword ptr [rcx + 0x20], rax
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_535
.label_536:
	mov	rdi, qword ptr [rbp - 0x10]
	call	replace_problematic_chars
	xor	esi, esi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx,  qword ptr [word ptr [nrows]]
	sub	rcx, 1
	mov	rdx,  qword ptr [word ptr [table]]
	mov	rcx, qword ptr [rdx + rcx*8]
	mov	qword ptr [rcx + rax*8], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	call	gnu_mbswidth
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x300], rcx
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx,  qword ptr [word ptr [columns]]
	mov	rcx, qword ptr [rdx + rcx*8]
	mov	rcx, qword ptr [rcx + 0x20]
	cmp	rcx, qword ptr [rbp - 0x300]
	jbe	.label_545
	mov	rax, qword ptr [rbp - 8]
	mov	rcx,  qword ptr [word ptr [columns]]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rax, qword ptr [rax + 0x20]
	mov	qword ptr [rbp - 0x310], rax
	jmp	.label_543
.label_540:
	mov	rdi, qword ptr [rbp - 0x18]
	call	strdup
	mov	qword ptr [rbp - 0x10], rax
.label_532:
	jmp	.label_534
.label_534:
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_536
	call	xalloc_die
.label_537:
	cmp	dword ptr [dword ptr [header_mode]],  3
	jne	.label_540
	mov	rax, qword ptr [rbp - 8]
	mov	rcx,  qword ptr [word ptr [columns]]
	mov	rax, qword ptr [rcx + rax*8]
	cmp	dword ptr [rax], 2
	jne	.label_540
	lea	rsi, [rbp - 0x2f0]
	mov	rdi,  qword ptr [word ptr [output_block_size]]
	call	umaxtostr
	movabs	rdi, OFFSET FLAT:label_539
	mov	qword ptr [rbp - 0x2f8], rax
	call	gettext
	lea	rdi, [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x2f8]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsi, rax
	mov	al, 0
	call	asprintf
	cmp	eax, -1
	jne	.label_549
	mov	qword ptr [rbp - 0x10], 0
.label_549:
	jmp	.label_532
	.section	.text
	.align	16
	#Procedure 0x407e5f

	.globl get_header
	.type get_header, @function
get_header:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x310
	call	alloc_table_row
	mov	qword ptr [rbp - 8], 0
.label_535:
	mov	rax, qword ptr [rbp - 8]
	cmp	rax,  qword ptr [word ptr [ncolumns]]
	jae	.label_547
	mov	qword ptr [rbp - 0x10], 0
	mov	rax, qword ptr [rbp - 8]
	mov	rcx,  qword ptr [word ptr [columns]]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rdi, qword ptr [rax + 0x18]
	call	gettext
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rcx,  qword ptr [word ptr [columns]]
	mov	rax, qword ptr [rcx + rax*8]
	cmp	dword ptr [rax], 2
	jne	.label_537
	cmp	dword ptr [dword ptr [header_mode]],  0
	je	.label_533
	cmp	dword ptr [dword ptr [header_mode]],  4
	jne	.label_537
	mov	eax,  dword ptr [dword ptr [human_output_opts]]
	and	eax, 0x10
	cmp	eax, 0
	jne	.label_537
.label_533:
	mov	eax,  dword ptr [dword ptr [human_output_opts]]
	and	eax, 0x124
	or	eax, 0x98
	mov	dword ptr [rbp - 0x2b4], eax
	mov	rcx,  qword ptr [word ptr [output_block_size]]
	mov	qword ptr [rbp - 0x2c0], rcx
	mov	rcx,  qword ptr [word ptr [output_block_size]]
	mov	qword ptr [rbp - 0x2c8], rcx
.label_542:
	mov	eax, 0x3e8
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x2c0]
	xor	edx, edx
	div	rcx
	cmp	rdx, 0
	sete	sil
	and	sil, 1
	mov	byte ptr [rbp - 0x2c9], sil
	mov	rdx, qword ptr [rbp - 0x2c0]
	mov	rax, rdx
	xor	edi, edi
	mov	edx, edi
	div	rcx
	mov	qword ptr [rbp - 0x2c0], rax
	mov	rax, qword ptr [rbp - 0x2c8]
	and	rax, 0x3ff
	cmp	rax, 0
	sete	sil
	and	sil, 1
	mov	byte ptr [rbp - 0x2ca], sil
	mov	rax, qword ptr [rbp - 0x2c8]
	shr	rax, 0xa
	mov	qword ptr [rbp - 0x2c8], rax
	mov	al, byte ptr [rbp - 0x2c9]
	and	al, 1
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0x2ca]
	and	al, 1
	movzx	edx, al
	and	ecx, edx
	cmp	ecx, 0
	jne	.label_542
	mov	al, byte ptr [rbp - 0x2c9]
	and	al, 1
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0x2ca]
	and	al, 1
	movzx	edx, al
	cmp	ecx, edx
	jge	.label_548
	mov	eax, dword ptr [rbp - 0x2b4]
	or	eax, 0x20
	mov	dword ptr [rbp - 0x2b4], eax
.label_548:
	mov	al, byte ptr [rbp - 0x2ca]
	and	al, 1
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0x2c9]
	and	al, 1
	movzx	edx, al
	cmp	ecx, edx
	jge	.label_541
	mov	eax, dword ptr [rbp - 0x2b4]
	and	eax, 0xffffffdf
	mov	dword ptr [rbp - 0x2b4], eax
.label_541:
	mov	eax, dword ptr [rbp - 0x2b4]
	and	eax, 0x20
	cmp	eax, 0
	jne	.label_538
	mov	eax, dword ptr [rbp - 0x2b4]
	or	eax, 0x100
	mov	dword ptr [rbp - 0x2b4], eax
.label_538:
	mov	eax, 1
	mov	ecx, eax
	lea	rsi, [rbp - 0x2b0]
	mov	rdi,  qword ptr [word ptr [output_block_size]]
	mov	edx, dword ptr [rbp - 0x2b4]
	mov	qword ptr [rbp - 0x308], rcx
	mov	r8, qword ptr [rbp - 0x308]
	call	human_readable
	movabs	rdi, OFFSET FLAT:label_544
	mov	qword ptr [rbp - 0x2d8], rax
	call	gettext
	movabs	rdi, OFFSET FLAT:label_539
	mov	qword ptr [rbp - 0x18], rax
	call	gettext
	lea	rdi, [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x2d8]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsi, rax
	mov	al, 0
	call	asprintf
	cmp	eax, -1
	jne	.label_546
	mov	qword ptr [rbp - 0x10], 0
.label_546:
	jmp	.label_534
.label_550:
	mov	qword ptr [rbp - 8], 0
.label_551:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4080d2
	.globl sub_4080d2
	.type sub_4080d2, @function
sub_4080d2:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4080db

	.globl me_for_dev
	.type me_for_dev, @function
me_for_dev:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	call	devlist_for_dev
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_550
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_551
.label_553:
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	lea	rcx, [rbp - 0x20]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	r8, rdi
	add	r8, 1
	mov	qword ptr [rbp - 0x18], r8
	mov	byte ptr [rdi], 0x3f
	mov	rdi, rcx
	call	memset
.label_552:
	jmp	.label_556
.label_556:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_557
	.section	.text
	.align	16
	#Procedure 0x40814d

	.globl replace_invalid_chars
	.type replace_invalid_chars, @function
replace_invalid_chars:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	lea	rcx, [rbp - 0x20]
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	r8, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x50], rdi
	mov	rdi, r8
	mov	qword ptr [rbp - 0x58], rcx
	mov	dword ptr [rbp - 0x5c], esi
	mov	qword ptr [rbp - 0x68], rdx
	call	strlen
	mov	rcx, qword ptr [rbp - 0x50]
	add	rcx, rax
	mov	qword ptr [rbp - 0x10], rcx
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	rdi, rax
	mov	esi, dword ptr [rbp - 0x5c]
	mov	rdx, qword ptr [rbp - 0x68]
	call	memset
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
.label_557:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x10]
	je	.label_555
	lea	rdi, [rbp - 0x34]
	lea	rcx, [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x30]
	sub	rax, rdx
	mov	qword ptr [rbp - 0x40], rax
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x40]
	call	rpl_mbrtowc
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x40]
	setbe	r8b
	and	r8b, 1
	mov	byte ptr [rbp - 0x41], r8b
	test	byte ptr [rbp - 0x41], 1
	je	.label_558
	mov	edi, dword ptr [rbp - 0x34]
	call	iswcntrl
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	and	cl, 1
	mov	byte ptr [rbp - 0x41], cl
	jmp	.label_554
.label_558:
	mov	qword ptr [rbp - 0x28], 1
.label_554:
	test	byte ptr [rbp - 0x41], 1
	je	.label_553
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x28]
	call	memmove
	mov	rdx, qword ptr [rbp - 0x28]
	add	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_552
.label_555:
	mov	rax, qword ptr [rbp - 0x18]
	mov	byte ptr [rax], 0
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408268
	.globl sub_408268
	.type sub_408268, @function
sub_408268:

	nop	dword ptr [rax + rax]
.label_560:
	mov	rdi, qword ptr [rbp - 0x10]
	call	cdb_free
	mov	eax, dword ptr [rbp - 0x1c]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	dword ptr [rdi], eax
	mov	dword ptr [rbp - 4], 0
.label_559:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408292
	.globl sub_408292
	.type sub_408292, @function
sub_408292:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4082a1

	.globl cdb_advance_fd
	.type cdb_advance_fd, @function
cdb_advance_fd:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	edx, 0x10900
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	edi, dword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	al, 0
	call	openat
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], 0
	jge	.label_560
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_559
.label_566:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x28], rax
.label_563:
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_564
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rcx]
	je	.label_567
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x38]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rcx]
	call	rax
	test	al, 1
	jne	.label_567
	jmp	.label_561
.label_567:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_562
	.section	.text
	.align	16
	#Procedure 0x408336

	.globl hash_lookup
	.type hash_lookup, @function
hash_lookup:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	safe_hasher
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax], 0
	jne	.label_566
	mov	qword ptr [rbp - 8], 0
	jmp	.label_562
.label_561:
	jmp	.label_565
.label_565:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_563
.label_564:
	mov	qword ptr [rbp - 8], 0
.label_562:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40839a
	.globl sub_40839a
	.type sub_40839a, @function
sub_40839a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4083a0

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
.label_569:
	mov	byte ptr [rbp - 1], 0
.label_570:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4083be
	.globl sub_4083be
	.type sub_4083be, @function
sub_4083be:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4083cc
	.globl c_isupper
	.type c_isupper, @function
c_isupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_569
	jmp	.label_568
.label_568:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_570
.label_574:
	mov	rax, qword ptr [rbp - 0x198]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x1a8], rdx
.label_571:
	mov	rax, qword ptr [rbp - 0x1a8]
	lea	rcx, [rbp - 0x30]
	mov	edx, dword ptr [rax]
	mov	dword ptr [rbp - 0x10], edx
	mov	qword ptr [rbp - 0x1b0], rcx
.label_573:
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	mov	edx, dword ptr [rbp - 0x10]
	xor	eax, eax
	mov	cl, al
	mov	al, cl
	call	open
	mov	edi, eax
	call	fd_safer
	add	rsp, 0x1b0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408449
	.globl sub_408449
	.type sub_408449, @function
sub_408449:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408454

	.globl open_safer
	.type open_safer, @function
open_safer:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x1b0
	test	al, al
	movaps	xmmword ptr [rbp - 0xf0], xmm7
	movaps	xmmword ptr [rbp - 0x100], xmm6
	movaps	xmmword ptr [rbp - 0x110], xmm5
	movaps	xmmword ptr [rbp - 0x120], xmm4
	movaps	xmmword ptr [rbp - 0x130], xmm3
	movaps	xmmword ptr [rbp - 0x140], xmm2
	movaps	xmmword ptr [rbp - 0x150], xmm1
	movaps	xmmword ptr [rbp - 0x160], xmm0
	mov	qword ptr [rbp - 0x168], rdi
	mov	qword ptr [rbp - 0x170], r9
	mov	qword ptr [rbp - 0x178], r8
	mov	qword ptr [rbp - 0x180], rcx
	mov	qword ptr [rbp - 0x188], rdx
	mov	dword ptr [rbp - 0x18c], esi
	je	.label_572
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
.label_572:
	mov	rax, qword ptr [rbp - 0x170]
	mov	qword ptr [rbp - 0xb8], rax
	mov	rcx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0xc0], rcx
	mov	rdx, qword ptr [rbp - 0x180]
	mov	qword ptr [rbp - 0xc8], rdx
	mov	rsi, qword ptr [rbp - 0x188]
	mov	qword ptr [rbp - 0xd0], rsi
	mov	edi, dword ptr [rbp - 0x18c]
	mov	r8, qword ptr [rbp - 0x168]
	mov	qword ptr [rbp - 8], r8
	mov	dword ptr [rbp - 0xc], edi
	mov	dword ptr [rbp - 0x10], 0
	mov	edi, dword ptr [rbp - 0xc]
	and	edi, 0x40
	cmp	edi, 0
	je	.label_573
	lea	rax, [rbp - 0x30]
	mov	rcx, rax
	lea	rdx, [rbp - 0xe0]
	mov	qword ptr [rcx + 0x10], rdx
	lea	rdx, [rbp + 0x10]
	mov	qword ptr [rcx + 8], rdx
	mov	dword ptr [rcx + 4], 0x30
	mov	dword ptr [rcx], 0x10
	mov	esi, dword ptr [rbp - 0x30]
	cmp	esi, 0x28
	mov	qword ptr [rbp - 0x198], rax
	mov	dword ptr [rbp - 0x19c], esi
	ja	.label_574
	mov	eax, dword ptr [rbp - 0x19c]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x198]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x1a8], rcx
	jmp	.label_571
.label_577:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_575
.label_575:
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
	je	.label_576
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_576:
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0x78
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408713
	.globl sub_408713
	.type sub_408713, @function
sub_408713:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40871f

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
	je	.label_577
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_575
	.section	.text
	.align	16
	#Procedure 0x408750

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
	ja	.label_578
	jmp	.label_580
.label_580:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x27d8
	add	eax, 0x2001a
	mov	dword ptr [rbp - 4], eax
	jmp	.label_579
.label_578:
	jmp	.label_579
.label_579:
	mov	edi, dword ptr [rbp - 4]
	call	nl_langinfo
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40879a
	.globl sub_40879a
	.type sub_40879a, @function
sub_40879a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4087a0
	.globl rotr64
	.type rotr64, @function
rotr64:

	push	rbp
	mov	rbp, rsp
	mov	eax, 0x40
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	mov	ecx, esi
	shr	rdi, cl
	mov	rdx, qword ptr [rbp - 8]
	sub	eax, dword ptr [rbp - 0xc]
	mov	eax, eax
	mov	ecx, eax
	shl	rdx, cl
	or	rdi, rdx
	mov	rax, rdi
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4087d2
	.globl sub_4087d2
	.type sub_4087d2, @function
sub_4087d2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4087e0
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
	#Procedure 0x4087fa
	.globl sub_4087fa
	.type sub_4087fa, @function
sub_4087fa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408800

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
	#Procedure 0x4088ad
	.globl sub_4088ad
	.type sub_4088ad, @function
sub_4088ad:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4088b0

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
	#Procedure 0x4088d5
	.globl sub_4088d5
	.type sub_4088d5, @function
sub_4088d5:

	nop	word ptr cs:[rax + rax]
.label_584:
	xor	eax, eax
	mov	ecx, 1
	mov	rdx, qword ptr [rbp - 8]
	mov	dword ptr [rbp - 0x20], eax
	mov	rax, rdx
	xor	esi, esi
	mov	edx, esi
	div	qword ptr [rbp - 0x10]
	cmp	rdx, 0
	mov	esi, dword ptr [rbp - 0x20]
	cmovne	esi, ecx
	cmp	esi, 0
	setne	dil
	and	dil, 1
	movzx	ecx, dil
	mov	eax, ecx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408916
	.globl sub_408916
	.type sub_408916, @function
sub_408916:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408919

	.globl is_prime
	.type is_prime, @function
is_prime:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], 3
	mov	rdi, qword ptr [rbp - 0x10]
	imul	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rdi
.label_583:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	rdx, qword ptr [rbp - 8]
	mov	byte ptr [rbp - 0x19], cl
	jae	.label_582
	mov	rax, qword ptr [rbp - 8]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	cmp	rdx, 0
	setne	sil
	mov	byte ptr [rbp - 0x19], sil
.label_582:
	mov	al, byte ptr [rbp - 0x19]
	test	al, 1
	jne	.label_581
	jmp	.label_584
.label_581:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	shl	rax, 2
	add	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_583
	.section	.text
	.align	16
	#Procedure 0x4089a0

	.globl same_nameat
	.type same_nameat, @function
same_nameat:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x190
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x14], edx
	mov	qword ptr [rbp - 0x20], rcx
	mov	rdi, qword ptr [rbp - 0x10]
	call	last_component
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x20]
	call	last_component
	mov	qword ptr [rbp - 0x30], rax
	mov	rdi, qword ptr [rbp - 0x28]
	call	base_len
	mov	qword ptr [rbp - 0x38], rax
	mov	rdi, qword ptr [rbp - 0x30]
	call	base_len
	xor	edx, edx
	mov	r8b, dl
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x40]
	mov	byte ptr [rbp - 0x181], r8b
	jne	.label_588
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x40]
	call	memcmp
	cmp	eax, 0
	sete	cl
	mov	byte ptr [rbp - 0x181], cl
.label_588:
	mov	al, byte ptr [rbp - 0x181]
	and	al, 1
	mov	byte ptr [rbp - 0x41], al
	mov	al, byte ptr [rbp - 0x41]
	and	al, 1
	mov	byte ptr [rbp - 0x42], al
	mov	byte ptr [rbp - 0x43], 0
	test	byte ptr [rbp - 0x42], 1
	je	.label_587
	mov	rdi, qword ptr [rbp - 0x10]
	call	dir_name
	lea	rdx, [rbp - 0xd8]
	mov	qword ptr [rbp - 0x170], rax
	mov	dword ptr [rbp - 0x174], 0x100
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x170]
	mov	ecx, dword ptr [rbp - 0x174]
	call	fstatat
	cmp	eax, 0
	je	.label_589
	call	__errno_location
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:label_522
	mov	esi, dword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x170]
	mov	al, 0
	call	error
.label_589:
	mov	rdi, qword ptr [rbp - 0x170]
	call	free
	mov	rdi, qword ptr [rbp - 0x20]
	call	dir_name
	lea	rdx, [rbp - 0x168]
	mov	qword ptr [rbp - 0x180], rax
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsi, qword ptr [rbp - 0x180]
	mov	ecx, dword ptr [rbp - 0x174]
	call	fstatat
	cmp	eax, 0
	je	.label_585
	call	__errno_location
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:label_522
	mov	esi, dword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x180]
	mov	al, 0
	call	error
.label_585:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0xd0]
	cmp	rdx, qword ptr [rbp - 0x160]
	mov	byte ptr [rbp - 0x182], cl
	jne	.label_586
	mov	rax, qword ptr [rbp - 0xd8]
	cmp	rax, qword ptr [rbp - 0x168]
	sete	cl
	mov	byte ptr [rbp - 0x182], cl
.label_586:
	mov	al, byte ptr [rbp - 0x182]
	and	al, 1
	mov	byte ptr [rbp - 0x43], al
	mov	rdi, qword ptr [rbp - 0x180]
	call	free
.label_587:
	mov	al, byte ptr [rbp - 0x43]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x190
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408b6a
	.globl sub_408b6a
	.type sub_408b6a, @function
sub_408b6a:

	nop	word ptr [rax + rax]
.label_596:
	mov	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xa0], rdx
.label_591:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp + rcx*8 - 0x80], rax
	cmp	rax, 0
	setne	dl
	mov	byte ptr [rbp - 0x81], dl
.label_595:
	mov	al, byte ptr [rbp - 0x81]
	test	al, 1
	jne	.label_593
	jmp	.label_594
.label_593:
	jmp	.label_590
.label_590:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_592
.label_594:
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
	#Procedure 0x408bfc
	.globl sub_408bfc
	.type sub_408bfc, @function
sub_408bfc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408c03

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
.label_592:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x30], 0xa
	mov	byte ptr [rbp - 0x81], cl
	jae	.label_595
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x90], rax
	mov	dword ptr [rbp - 0x94], ecx
	ja	.label_596
	mov	eax, dword ptr [rbp - 0x94]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x90]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0xa0], rcx
	jmp	.label_591
	.section	.text
	.align	16
	#Procedure 0x408c80

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
	#Procedure 0x408c9b
	.globl sub_408c9b
	.type sub_408c9b, @function
sub_408c9b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408ca0
	.globl rotr32
	.type rotr32, @function
rotr32:

	push	rbp
	mov	rbp, rsp
	mov	eax, 0x20
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	esi, dword ptr [rbp - 4]
	mov	ecx, dword ptr [rbp - 8]
	shr	esi, cl
	mov	edi, dword ptr [rbp - 4]
	sub	eax, dword ptr [rbp - 8]
	mov	ecx, eax
	shl	edi, cl
	or	esi, edi
	mov	eax, esi
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408cc7
	.globl sub_408cc7
	.type sub_408cc7, @function
sub_408cc7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408cd0

	.globl xstrtol_fatal
	.type xstrtol_fatal, @function
xstrtol_fatal:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	al, dl
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	byte ptr [rbp - 9], al
	mov	qword ptr [rbp - 0x18], rcx
	mov	qword ptr [rbp - 0x20], r8
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	al, byte ptr [rbp - 9]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	r8, qword ptr [rbp - 0x20]
	mov	r9d,  dword ptr [dword ptr [exit_failure]]
	movsx	edx, al
	call	xstrtol_error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x408d11
	.globl sub_408d11
	.type sub_408d11, @function
sub_408d11:

	nop	word ptr cs:[rax + rax]
.label_603:
	jmp	.label_597
.label_597:
	jmp	.label_599
.label_599:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_600
.label_598:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x18]
	jne	.label_601
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x20]
	jne	.label_601
	mov	byte ptr [rbp - 1], 1
	jmp	.label_604
.label_601:
	mov	byte ptr [rbp - 1], 0
.label_604:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408d76
	.globl sub_408d76
	.type sub_408d76, @function
sub_408d76:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408d85
	.globl hash_table_ok
	.type hash_table_ok, @function
hash_table_ok:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x20], 0
	mov	qword ptr [rbp - 0x28], 0
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi]
	mov	qword ptr [rbp - 0x18], rdi
.label_600:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_598
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax], 0
	je	.label_597
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
.label_602:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_603
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_602
	.section	.text
	.align	16
	#Procedure 0x408e10

	.globl sub_408e10
	.type sub_408e10, @function
sub_408e10:
	xor	edi, edi
	xor	eax, eax
	mov	esi, eax
	call	alloc_field
	test	byte ptr [byte ptr [print_type]],  1
	je	.label_607
	mov	edi, 1
	xor	eax, eax
	mov	esi, eax
	call	alloc_field
.label_607:
	mov	edi, 2
	xor	eax, eax
	mov	esi, eax
	call	alloc_field
	mov	edi, 3
	xor	eax, eax
	mov	esi, eax
	call	alloc_field
	mov	edi, 4
	xor	eax, eax
	mov	esi, eax
	call	alloc_field
	mov	edi, 5
	movabs	rsi, OFFSET FLAT:label_605
	call	alloc_field
	mov	edi, 0xa
	xor	eax, eax
	mov	esi, eax
	call	alloc_field
	jmp	.label_606
	.section	.text
	.align	16
	#Procedure 0x408e88

	.globl sub_408e88
	.type sub_408e88, @function
sub_408e88:
	cmp	qword ptr [word ptr [ncolumns]],  0
	jne	.label_608
	mov	rdi,  qword ptr [word ptr [all_args_string]]
	call	decode_output_arg
.label_608:
	jmp	.label_606
	.section	.text
	.align	16
	#Procedure 0x408ea9

	.globl get_field_list
	.type get_field_list, @function
get_field_list:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	eax,  dword ptr [dword ptr [rip + header_mode]]
	mov	ecx, eax
	mov	rdx, rcx
	sub	rdx, 4
	mov	qword ptr [rbp - 8], rcx
	mov	qword ptr [rbp - 0x10], rdx
	ja	.label_613
	mov	rax, qword ptr [rbp - 8]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_609]]
	jmp	rcx
.label_606:
	add	rsp, 0x10
	pop	rbp
	ret	
	nop	dword ptr [rax]
.label_1770:
	xor	edi, edi
	xor	eax, eax
	mov	esi, eax
	call	alloc_field
	test	byte ptr [byte ptr [print_type]],  1
	je	.label_610
	mov	edi, 1
	xor	eax, eax
	mov	esi, eax
	call	alloc_field
.label_610:
	mov	edi, 6
	xor	eax, eax
	mov	esi, eax
	call	alloc_field
	mov	edi, 7
	xor	eax, eax
	mov	esi, eax
	call	alloc_field
	mov	edi, 8
	xor	eax, eax
	mov	esi, eax
	call	alloc_field
	mov	edi, 9
	xor	eax, eax
	mov	esi, eax
	call	alloc_field
	mov	edi, 0xa
	xor	eax, eax
	mov	esi, eax
	call	alloc_field
	jmp	.label_606
.label_613:
	movabs	rdi, OFFSET FLAT:label_611
	movabs	rsi, OFFSET FLAT:label_127
	mov	edx, 0x222
	movabs	rcx, OFFSET FLAT:label_612
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x408f80

	.globl sub_408f80
	.type sub_408f80, @function
sub_408f80:
	xor	edi, edi
	xor	eax, eax
	mov	esi, eax
	call	alloc_field
	test	byte ptr [byte ptr [print_type]],  1
	je	.label_614
	mov	edi, 1
	xor	eax, eax
	mov	esi, eax
	call	alloc_field
.label_614:
	mov	edi, 2
	xor	eax, eax
	mov	esi, eax
	call	alloc_field
	mov	edi, 3
	xor	eax, eax
	mov	esi, eax
	call	alloc_field
	mov	edi, 4
	xor	eax, eax
	mov	esi, eax
	call	alloc_field
	mov	edi, 5
	xor	eax, eax
	mov	esi, eax
	call	alloc_field
	mov	edi, 0xa
	xor	eax, eax
	mov	esi, eax
	call	alloc_field
	jmp	.label_606
	.section	.text
	.align	16
	#Procedure 0x408ff2

	.globl sub_408ff2
	.type sub_408ff2, @function
sub_408ff2:
	xor	edi, edi
	xor	eax, eax
	mov	esi, eax
	call	alloc_field
	test	byte ptr [byte ptr [print_type]],  1
	je	.label_615
	mov	edi, 1
	xor	eax, eax
	mov	esi, eax
	call	alloc_field
.label_615:
	mov	edi, 2
	movabs	rsi, OFFSET FLAT:label_137
	call	alloc_field
	mov	edi, 3
	xor	eax, eax
	mov	esi, eax
	call	alloc_field
	mov	edi, 4
	movabs	rsi, OFFSET FLAT:label_135
	call	alloc_field
	mov	edi, 5
	xor	eax, eax
	mov	esi, eax
	call	alloc_field
	mov	edi, 0xa
	xor	eax, eax
	mov	esi, eax
	call	alloc_field
	jmp	.label_606
.label_616:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax + 8]
	call	chdir_long
	mov	dword ptr [rbp - 4], eax
.label_617:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409089
	.globl sub_409089
	.type sub_409089, @function
sub_409089:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409093

	.globl restore_cwd
	.type restore_cwd, @function
restore_cwd:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	eax, dword ptr [rdi]
	jg	.label_616
	mov	rax, qword ptr [rbp - 0x10]
	mov	edi, dword ptr [rax]
	call	fchdir
	mov	dword ptr [rbp - 4], eax
	jmp	.label_617
	.section	.text
	.align	16
	#Procedure 0x4090c0

	.globl fd_safer
	.type fd_safer, @function
fd_safer:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_618
	cmp	dword ptr [rbp - 4], 2
	jg	.label_618
	mov	edi, dword ptr [rbp - 4]
	call	dup_safer
	mov	dword ptr [rbp - 8], eax
	call	__errno_location
	mov	edi, dword ptr [rax]
	mov	dword ptr [rbp - 0xc], edi
	mov	edi, dword ptr [rbp - 4]
	call	close
	mov	edi, dword ptr [rbp - 0xc]
	mov	dword ptr [rbp - 0x10], eax
	mov	dword ptr [rbp - 0x14], edi
	call	__errno_location
	mov	edi, dword ptr [rbp - 0x14]
	mov	dword ptr [rax], edi
	mov	edi, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], edi
.label_618:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40911f
	.globl sub_40911f
	.type sub_40911f, @function
sub_40911f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x409120
	.globl triple_hash_no_name
	.type triple_hash_no_name, @function
triple_hash_no_name:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rsi + 8]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	mov	rax, rdx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409149
	.globl sub_409149
	.type sub_409149, @function
sub_409149:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409150
	.globl rotr16
	.type rotr16, @function
rotr16:

	push	rbp
	mov	rbp, rsp
	mov	ax, di
	mov	edi, 0x10
	mov	word ptr [rbp - 2], ax
	mov	dword ptr [rbp - 8], esi
	movzx	esi, word ptr [rbp - 2]
	mov	ecx, dword ptr [rbp - 8]
	sar	esi, cl
	movzx	edx, word ptr [rbp - 2]
	sub	edi, dword ptr [rbp - 8]
	mov	ecx, edi
	shl	edx, cl
	or	esi, edx
	and	esi, 0xffff
	mov	ax, si
	movzx	eax, ax
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409187
	.globl sub_409187
	.type sub_409187, @function
sub_409187:

	nop	word ptr [rax + rax]
.label_642:
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_630
	lea	rdi, [rbp - 0x30]
	movabs	rsi, OFFSET FLAT:label_188
	call	cdb_advance_fd
	cmp	eax, 0
	je	.label_637
	jmp	.label_620
.label_651:
	lea	rdi, [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x48]
	mov	byte ptr [rax], 0
	mov	rsi, qword ptr [rbp - 0x10]
	call	cdb_advance_fd
	mov	dword ptr [rbp - 0x3c], eax
	mov	rsi, qword ptr [rbp - 0x48]
	mov	byte ptr [rsi], 0x2f
	cmp	dword ptr [rbp - 0x3c], 0
	je	.label_646
	jmp	.label_620
.label_637:
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
.label_630:
	jmp	.label_639
.label_639:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	je	.label_640
	jmp	.label_623
.label_643:
	mov	eax, 0x1000
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x20]
	ja	.label_645
	jmp	.label_649
.label_652:
	movabs	rdi, OFFSET FLAT:label_650
	movabs	rsi, OFFSET FLAT:label_626
	mov	edx, 0x7e
	movabs	rcx, OFFSET FLAT:label_627
	call	__assert_fail
.label_636:
	jmp	.label_629
.label_629:
	lea	rdi, [rbp - 0x30]
	call	cdb_fchdir
	cmp	eax, 0
	je	.label_635
	jmp	.label_620
.label_635:
	lea	rdi, [rbp - 0x30]
	call	cdb_free
	mov	dword ptr [rbp - 4], 0
	jmp	.label_632
.label_624:
	movabs	rdi, OFFSET FLAT:label_641
	movabs	rsi, OFFSET FLAT:label_626
	mov	edx, 0xa3
	movabs	rcx, OFFSET FLAT:label_627
	call	__assert_fail
.label_634:
	lea	rdi, [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x10]
	call	cdb_advance_fd
	mov	dword ptr [rbp - 0x4c], eax
	mov	rsi, qword ptr [rbp - 0x58]
	mov	byte ptr [rsi], 0x2f
	cmp	dword ptr [rbp - 0x4c], 0
	je	.label_638
	jmp	.label_620
.label_621:
	movabs	rdi, OFFSET FLAT:label_625
	movabs	rsi, OFFSET FLAT:label_626
	mov	edx, 0xb3
	movabs	rcx, OFFSET FLAT:label_627
	call	__assert_fail
.label_638:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	mov	rdi, rax
	call	find_non_slash
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_628
.label_622:
	jmp	.label_628
.label_628:
	mov	eax, 0x1000
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x10]
	sub	rdx, rsi
	cmp	rcx, rdx
	jg	.label_631
	mov	esi, 0x2f
	mov	eax, 0x1000
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x10]
	call	memrchr
	mov	qword ptr [rbp - 0x58], rax
	cmp	qword ptr [rbp - 0x58], 0
	jne	.label_619
	call	__errno_location
	mov	dword ptr [rax], 0x24
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_632
.label_646:
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	rdi, rax
	call	find_non_slash
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_639
.label_620:
	call	__errno_location
	lea	rdi, [rbp - 0x30]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x5c], ecx
	call	cdb_free
	mov	ecx, dword ptr [rbp - 0x5c]
	mov	dword ptr [rbp - 0x6c], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x6c]
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 4], 0xffffffff
.label_632:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4093b4
	.globl sub_4093b4
	.type sub_4093b4, @function
sub_4093b4:

	nop	dword ptr [rax]
.label_623:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x28]
	ja	.label_624
	jmp	.label_622
.label_648:
	lea	rdi, [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x68], rdi
	mov	rdi, rax
	call	strlen
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x68]
	call	cdb_init
	xor	ecx, ecx
	mov	eax, ecx
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_652
	jmp	.label_643
.label_645:
	movabs	rdi, OFFSET FLAT:label_647
	movabs	rsi, OFFSET FLAT:label_626
	mov	edx, 0x7f
	movabs	rcx, OFFSET FLAT:label_627
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x409432

	.globl chdir_long
	.type chdir_long, @function
chdir_long:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	call	chdir
	mov	dword ptr [rbp - 0x14], eax
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_644
	call	__errno_location
	cmp	dword ptr [rax], 0x24
	je	.label_648
.label_644:
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_632
.label_649:
	movabs	rsi, OFFSET FLAT:label_188
	mov	rdi, qword ptr [rbp - 0x10]
	call	strspn
	mov	qword ptr [rbp - 0x38], rax
	cmp	qword ptr [rbp - 0x38], 2
	jne	.label_642
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 3
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	add	rdx, 3
	sub	rcx, rdx
	mov	esi, 0x2f
	mov	rdi, rax
	mov	rdx, rcx
	call	memchr
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x48], 0
	jne	.label_651
	call	__errno_location
	mov	dword ptr [rax], 0x24
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_632
.label_640:
	movabs	rdi, OFFSET FLAT:label_633
	movabs	rsi, OFFSET FLAT:label_626
	mov	edx, 0xa2
	movabs	rcx, OFFSET FLAT:label_627
	call	__assert_fail
.label_619:
	mov	rax, qword ptr [rbp - 0x58]
	mov	byte ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rax, rcx
	cmp	rax, 0x1000
	jge	.label_621
	jmp	.label_634
.label_631:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_629
	lea	rdi, [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x10]
	call	cdb_advance_fd
	cmp	eax, 0
	je	.label_636
	jmp	.label_620
	.section	.text
	.align	16
	#Procedure 0x409550

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
	jne	.label_653
	movabs	rax, OFFSET FLAT:label_86
	mov	qword ptr [rbp - 8], rax
.label_653:
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_654
	movabs	rax, OFFSET FLAT:label_655
	mov	qword ptr [rbp - 8], rax
.label_654:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4095a7
	.globl sub_4095a7
	.type sub_4095a7, @function
sub_4095a7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4095b0

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
	je	.label_656
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
.label_656:
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
	#Procedure 0x409714
	.globl sub_409714
	.type sub_409714, @function
sub_409714:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409720

	.globl sub_409720
	.type sub_409720, @function
sub_409720:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_657
	.section	.text
	.align	16
	#Procedure 0x409729
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
	ja	.label_658
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_659]]
	jmp	rcx
.label_658:
	mov	byte ptr [rbp - 1], 0
.label_657:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409761
	.globl sub_409761
	.type sub_409761, @function
sub_409761:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409770

	.globl rotr_sz
	.type rotr_sz, @function
rotr_sz:
	push	rbp
	mov	rbp, rsp
	mov	eax, 0x40
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rbp - 0xc]
	mov	edx, eax
	mov	qword ptr [rbp - 0x18], rcx
	mov	rcx, rdx
	shr	rdi, cl
	mov	rdx, qword ptr [rbp - 8]
	movsxd	r8, dword ptr [rbp - 0xc]
	mov	r9, qword ptr [rbp - 0x18]
	sub	r9, r8
	mov	rcx, r9
	shl	rdx, cl
	or	rdi, rdx
	mov	rax, rdi
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4097b2
	.globl sub_4097b2
	.type sub_4097b2, @function
sub_4097b2:

	nop	word ptr cs:[rax + rax]
.label_668:
	jmp	.label_660
.label_660:
	jmp	.label_662
.label_663:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x38]
	call	readlink
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x40], 0
	jge	.label_666
	call	__errno_location
	cmp	dword ptr [rax], 0x22
	je	.label_666
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x54], ecx
	mov	rdi, qword ptr [rbp - 0x50]
	call	free
	mov	ecx, dword ptr [rbp - 0x54]
	mov	dword ptr [rbp - 0x6c], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x6c]
	mov	dword ptr [rax], ecx
	mov	qword ptr [rbp - 8], 0
	jmp	.label_661
.label_669:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x68], rax
.label_670:
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x38], rax
.label_662:
	mov	rdi, qword ptr [rbp - 0x38]
	call	malloc
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x50], 0
	jne	.label_663
	mov	qword ptr [rbp - 8], 0
	jmp	.label_661
.label_664:
	movabs	rax, 0x7fffffffffffffff
	cmp	qword ptr [rbp - 0x38], rax
	jae	.label_667
	movabs	rax, 0x7fffffffffffffff
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_668
.label_665:
	mov	rdi, qword ptr [rbp - 0x50]
	call	free
	movabs	rdi, 0x3fffffffffffffff
	cmp	qword ptr [rbp - 0x38], rdi
	ja	.label_664
	mov	rax, qword ptr [rbp - 0x38]
	shl	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_660
	.section	.text
	.align	16
	#Procedure 0x4098ba

	.globl areadlink_with_size
	.type areadlink_with_size, @function
areadlink_with_size:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], 0x400
	mov	qword ptr [rbp - 0x28], 0x2000
	mov	rsi, qword ptr [rbp - 0x20]
	cmp	rsi, qword ptr [rbp - 0x28]
	jae	.label_672
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_671
.label_672:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x60], rax
.label_671:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_669
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x68], rax
	jmp	.label_670
.label_661:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409932
	.globl sub_409932
	.type sub_409932, @function
sub_409932:

	nop	word ptr cs:[rax + rax]
.label_667:
	call	__errno_location
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 8], 0
	jmp	.label_661
.label_666:
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x38]
	jae	.label_665
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	byte ptr [rcx + rax], 0
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_661
	.section	.text
	.align	16
	#Procedure 0x409980
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
	#Procedure 0x409996
	.globl sub_409996
	.type sub_409996, @function
sub_409996:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4099a0

	.globl base_len
	.type base_len, @function
base_len:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x18], 0
	mov	rdi, qword ptr [rbp - 8]
	call	strlen
	mov	qword ptr [rbp - 0x10], rax
.label_675:
	xor	eax, eax
	mov	cl, al
	mov	eax, 1
	mov	edx, eax
	cmp	rdx, qword ptr [rbp - 0x10]
	mov	byte ptr [rbp - 0x19], cl
	jae	.label_673
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x2f
	sete	sil
	mov	byte ptr [rbp - 0x19], sil
.label_673:
	mov	al, byte ptr [rbp - 0x19]
	test	al, 1
	jne	.label_674
	jmp	.label_677
.label_674:
	jmp	.label_676
.label_676:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, -1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_675
.label_677:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409a24
	.globl sub_409a24
	.type sub_409a24, @function
sub_409a24:

	nop	word ptr cs:[rax + rax]
.label_678:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409a36
	.globl sub_409a36
	.type sub_409a36, @function
sub_409a36:

	nop	dword ptr [rax + rax]
.label_679:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	dl, byte ptr [rcx + rax]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	rcx, qword ptr [rbp - 8]
	mov	byte ptr [rcx + rax], dl
.label_681:
	jmp	.label_682
.label_682:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_680
	.section	.text
	.align	16
	#Procedure 0x409a75

	.globl unescape_tab
	.type unescape_tab, @function
unescape_tab:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x18], 0
	mov	rdi, qword ptr [rbp - 8]
	call	strlen
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x10], 0
.label_680:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_678
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x5c
	jne	.label_679
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 4
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_679
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x30
	jl	.label_679
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x33
	jg	.label_679
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax + 2]
	cmp	edx, 0x30
	jl	.label_679
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax + 2]
	cmp	edx, 0x37
	jg	.label_679
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax + 3]
	cmp	edx, 0x30
	jl	.label_679
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax + 3]
	cmp	edx, 0x37
	jg	.label_679
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax + 1]
	sub	edx, 0x30
	shl	edx, 6
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	movsx	esi, byte ptr [rcx + rax + 2]
	sub	esi, 0x30
	shl	esi, 3
	add	edx, esi
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	movsx	esi, byte ptr [rcx + rax + 3]
	sub	esi, 0x30
	add	edx, esi
	mov	dil, dl
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	rcx, qword ptr [rbp - 8]
	mov	byte ptr [rcx + rax], dil
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 3
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_681
	.section	.text
	.align	16
	#Procedure 0x409bc0
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
	#Procedure 0x409be8
	.globl sub_409be8
	.type sub_409be8, @function
sub_409be8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409bf0
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
.label_687:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_683
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	imul	rcx, qword ptr [rbp - 0x30]
	add	rax, rcx
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsi, rax
	call	memcmp
	cmp	eax, 0
	jne	.label_684
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_686
.label_683:
	mov	qword ptr [rbp - 8], 0
.label_686:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409c73
	.globl sub_409c73
	.type sub_409c73, @function
sub_409c73:

	nop	dword ptr [rax]
.label_684:
	jmp	.label_685
.label_685:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_687
	.section	.text
	.align	16
	#Procedure 0x409c90

	.globl c_tolower
	.type c_tolower, @function
c_tolower:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_688
	jmp	.label_690
.label_690:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x41
	add	eax, 0x61
	mov	dword ptr [rbp - 4], eax
	jmp	.label_689
.label_688:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_689:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409cc7
	.globl sub_409cc7
	.type sub_409cc7, @function
sub_409cc7:

	nop	word ptr [rax + rax]
.label_696:
	mov	qword ptr [rbp - 8], 0
.label_694:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409ce2
	.globl sub_409ce2
	.type sub_409ce2, @function
sub_409ce2:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409cea
	.globl hash_get_next
	.type hash_get_next, @function
hash_get_next:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	safe_hasher
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x28], rax
.label_693:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x18]
	jne	.label_691
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax + 8], 0
	je	.label_691
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_694
.label_691:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_693
	jmp	.label_692
.label_692:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x20], rax
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_696
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax], 0
	je	.label_695
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_694
.label_695:
	jmp	.label_692
.label_872:
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	lea	rcx, [rbp - 0xa0]
	mov	rdi, rcx
	call	memset
	mov	qword ptr [rbp - 0x90], 0
	mov	byte ptr [rbp - 0x91], 1
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_792
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
.label_792:
	jmp	.label_715
.label_715:
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
	jne	.label_810
	jmp	.label_802
.label_766:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 1
	cmp	eax, 0
	je	.label_817
	jmp	.label_820
.label_763:
	jmp	.label_822
.label_822:
	jmp	.label_824
.label_824:
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, 1
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_825
.label_1702:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0xfc], eax
	mov	dword ptr [rbp - 0x100], ecx
	je	.label_794
	jmp	.label_831
.label_831:
	mov	eax, dword ptr [rbp - 0xfc]
	sub	eax, 5
	mov	dword ptr [rbp - 0x104], eax
	je	.label_832
	jmp	.label_838
.label_1693:
	mov	byte ptr [rbp - 0x80], 0x62
	jmp	.label_718
.label_701:
	jmp	.label_765
.label_765:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_842
	test	byte ptr [rbp - 0x7b], 1
	je	.label_842
	jmp	.label_700
.label_870:
	cmp	qword ptr [rbp - 0x60], 0
	jne	.label_742
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_742
	test	byte ptr [rbp - 0x7b], 1
	je	.label_742
	jmp	.label_700
.label_876:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xe8], rax
.label_880:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rcx, qword ptr [rbp - 0xe0]
	cmp	rcx, rax
	ja	.label_856
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rdi, rax
	call	memcmp
	cmp	eax, 0
	jne	.label_856
	test	byte ptr [rbp - 0x7b], 1
	je	.label_864
	jmp	.label_700
.label_698:
	jmp	.label_705
.label_808:
	jmp	.label_705
.label_779:
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_869
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_869
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x60], 0
	jmp	.label_871
.label_780:
	jmp	.label_724
.label_724:
	jmp	.label_877
.label_877:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_878
	jmp	.label_700
.label_1696:
	mov	byte ptr [rbp - 0x80], 0x76
	jmp	.label_718
.label_1774:
	mov	byte ptr [rbp - 0x79], 1
.label_1773:
	mov	byte ptr [rbp - 0x7b], 1
.label_1775:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_796
	mov	byte ptr [rbp - 0x79], 1
.label_796:
	jmp	.label_811
.label_811:
	mov	dword ptr [rbp - 0x34], 2
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_881
	jmp	.label_839
.label_839:
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
	jmp	.label_881
.label_881:
	movabs	rax, OFFSET FLAT:label_389
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_816
.label_897:
	test	byte ptr [rbp - 0x79], 1
	je	.label_701
	test	byte ptr [rbp - 0x7b], 1
	je	.label_701
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_701
	jmp	.label_705
.label_1701:
	mov	byte ptr [rbp - 0x7d], 1
	mov	byte ptr [rbp - 0x83], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_707
	test	byte ptr [rbp - 0x7b], 1
	je	.label_714
	jmp	.label_700
.label_842:
	jmp	.label_718
.label_718:
	test	byte ptr [rbp - 0x79], 1
	je	.label_720
	mov	al, byte ptr [rbp - 0x80]
	mov	byte ptr [rbp - 0x7f], al
	jmp	.label_724
.label_809:
	cmp	qword ptr [rbp - 0xb0], -2
	jne	.label_726
	mov	byte ptr [rbp - 0x91], 0
.label_747:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x58]
	add	rdx, qword ptr [rbp - 0x90]
	cmp	rdx, qword ptr [rbp - 0x30]
	mov	byte ptr [rbp - 0x129], cl
	jae	.label_757
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x129], sil
.label_757:
	mov	al, byte ptr [rbp - 0x129]
	test	al, 1
	jne	.label_740
	jmp	.label_744
.label_740:
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_747
.label_816:
	mov	qword ptr [rbp - 0x58], 0
.label_828:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_754
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	sete	sil
	and	sil, 1
	movzx	edx, sil
	mov	dword ptr [rbp - 0xd4], edx
	jmp	.label_756
.label_1698:
	mov	byte ptr [rbp - 0x80], 0x72
	jmp	.label_765
.label_1691:
	test	byte ptr [rbp - 0x79], 1
	je	.label_766
	jmp	.label_874
.label_874:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_771
	jmp	.label_700
.label_742:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_775
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_775
	test	byte ptr [rbp - 0x7d], 1
	je	.label_775
	test	byte ptr [rbp - 0x7e], 1
	je	.label_779
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
	jmp	.label_791
.label_703:
	test	byte ptr [rbp - 0x81], 1
	je	.label_827
	jmp	.label_843
.label_843:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_850
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_850:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x81], 0
.label_827:
	jmp	.label_805
.label_805:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	cmp	rax, rcx
	ja	.label_807
	jmp	.label_808
.label_810:
	cmp	qword ptr [rbp - 0xb0], -1
	jne	.label_809
	mov	byte ptr [rbp - 0x91], 0
	jmp	.label_802
.label_1778:
	mov	byte ptr [rbp - 0x79], 1
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_816
.label_832:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 4
	cmp	eax, 0
	je	.label_819
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_819
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x3f
	jne	.label_819
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 2]
	mov	esi, edx
	sub	esi, 0x21
	mov	dword ptr [rbp - 0x108], edx
	mov	dword ptr [rbp - 0x10c], esi
	je	.label_830
	jmp	.label_837
.label_837:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x110], eax
	jb	.label_830
	jmp	.label_846
.label_846:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x114], eax
	je	.label_830
	jmp	.label_851
.label_851:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2f
	mov	dword ptr [rbp - 0x118], eax
	je	.label_830
	jmp	.label_853
.label_853:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0x11c], eax
	ja	.label_798
	jmp	.label_830
.label_830:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_859
	jmp	.label_700
.label_841:
	jmp	.label_834
.label_834:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_863
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0
.label_863:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_791
.label_890:
	cmp	qword ptr [rbp - 0x30], 1
	je	.label_866
.label_886:
	jmp	.label_737
.label_1777:
	mov	dword ptr [rbp - 0x34], 5
	mov	byte ptr [rbp - 0x7b], 1
.label_1776:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_778
	jmp	.label_873
.label_873:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_875
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_875:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_778
.label_778:
	movabs	rax, OFFSET FLAT:label_390
	mov	byte ptr [rbp - 0x79], 1
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_816
.label_794:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_885
	jmp	.label_700
.label_858:
	jmp	.label_737
.label_720:
	jmp	.label_737
.label_1704:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_890
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	je	.label_866
	jmp	.label_886
.label_733:
	jmp	.label_727
.label_727:
	mov	edi, dword ptr [rbp - 0xa4]
	call	iswprint
	cmp	eax, 0
	jne	.label_713
	mov	byte ptr [rbp - 0x91], 0
.label_713:
	mov	rax, qword ptr [rbp - 0xb0]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_734
.label_734:
	jmp	.label_770
.label_770:
	jmp	.label_711
.label_711:
	lea	rdi, [rbp - 0xa0]
	call	mbsinit
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_715
.label_802:
	jmp	.label_719
.label_719:
	mov	eax, 1
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x91]
	and	dl, 1
	mov	byte ptr [rbp - 0x83], dl
	cmp	rcx, qword ptr [rbp - 0x90]
	jb	.label_722
	test	byte ptr [rbp - 0x79], 1
	je	.label_730
	test	byte ptr [rbp - 0x91], 1
	jne	.label_730
.label_722:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0xc0], rax
.label_716:
	test	byte ptr [rbp - 0x79], 1
	je	.label_703
	test	byte ptr [rbp - 0x91], 1
	jne	.label_703
	jmp	.label_739
.label_739:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_741
	jmp	.label_700
.label_859:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + rax + 2]
	mov	byte ptr [rbp - 0x7f], dl
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_746
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_746:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_759
.label_759:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_761
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_761:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_768
.label_768:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_773
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_773:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_777
.label_777:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_781
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_781:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_784
.label_744:
	jmp	.label_802
.label_1779:
	cmp	dword ptr [rbp - 0x34], 0xa
	je	.label_786
	movabs	rdi, OFFSET FLAT:label_788
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	movabs	rdi, OFFSET FLAT:label_389
	mov	qword ptr [rbp - 0x48], rax
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	mov	qword ptr [rbp - 0x50], rax
.label_786:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_799
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x70], rax
.label_815:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_801
	jmp	.label_804
.label_804:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_806
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_806:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_736
.label_736:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_815
.label_885:
	jmp	.label_818
.label_1692:
	mov	byte ptr [rbp - 0x80], 0x61
	jmp	.label_718
.label_1700:
	mov	byte ptr [rbp - 0x83], 1
	jmp	.label_737
.label_1694:
	mov	byte ptr [rbp - 0x80], 0x74
	jmp	.label_765
.label_700:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_826
	test	byte ptr [rbp - 0x79], 1
	je	.label_826
	mov	dword ptr [rbp - 0x34], 4
.label_826:
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
.label_791:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x158
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a6db
	.globl sub_40a6db
	.type sub_40a6db, @function
sub_40a6db:

	nop	dword ptr [rax + rax]
.label_823:
	call	abort
.label_1772:
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_816
.label_838:
	jmp	.label_818
.label_818:
	jmp	.label_737
.label_748:
	jmp	.label_855
.label_855:
	mov	byte ptr [rbp - 0x83], 1
.label_1699:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_858
	test	byte ptr [rbp - 0x7b], 1
	je	.label_858
	jmp	.label_700
.label_864:
	mov	byte ptr [rbp - 0x81], 1
.label_856:
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
	ja	.label_862
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_896]]
	jmp	rcx
.label_862:
	test	byte ptr [rbp - 0x7a], 1
	je	.label_872
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
	jmp	.label_719
.label_807:
	jmp	.label_882
.label_882:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_883
	test	byte ptr [rbp - 0x82], 1
	jne	.label_883
	jmp	.label_888
.label_888:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_889
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_889:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_895
.label_895:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_697
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_697:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_883:
	jmp	.label_704
.label_704:
	jmp	.label_706
.label_706:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_709
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_709:
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
	jmp	.label_716
.label_726:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_727
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_727
	mov	qword ptr [rbp - 0xb8], 1
.label_825:
	mov	rax, qword ptr [rbp - 0xb8]
	cmp	rax, qword ptr [rbp - 0xb0]
	jae	.label_733
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
	jb	.label_735
	jmp	.label_751
.label_751:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x5e
	mov	dword ptr [rbp - 0x138], eax
	je	.label_735
	jmp	.label_893
.label_893:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x60
	mov	dword ptr [rbp - 0x13c], eax
	je	.label_735
	jmp	.label_845
.label_845:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x140], eax
	jne	.label_763
	jmp	.label_735
.label_735:
	jmp	.label_700
.label_730:
	jmp	.label_737
.label_737:
	test	byte ptr [rbp - 0x79], 1
	je	.label_772
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_894
.label_772:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_789
.label_894:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_789
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
	jne	.label_780
.label_789:
	test	byte ptr [rbp - 0x81], 1
	jne	.label_780
	jmp	.label_705
.label_817:
	jmp	.label_767
.label_767:
	jmp	.label_737
	.section	.text
	.align	16
	#Procedure 0x40a9ba

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
.label_871:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0xc8], rcx
	mov	qword ptr [rbp - 0xd0], rdx
	ja	.label_823
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_829]]
	jmp	rcx
.label_741:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_854
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_854
	jmp	.label_835
.label_835:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_836
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_836:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_844
.label_844:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_849
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_849:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_776
.label_776:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_793
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_793:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_854:
	jmp	.label_860
.label_860:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_861
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_861:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_865
.label_865:
	jmp	.label_867
.label_867:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_868
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 6
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_868:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_743
.label_743:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_879
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 3
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_879:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	movzx	eax, byte ptr [rbp - 0x7f]
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	byte ptr [rbp - 0x7f], cl
	jmp	.label_805
.label_801:
	jmp	.label_799
.label_799:
	mov	byte ptr [rbp - 0x79], 1
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x70], rax
	mov	rdi, qword ptr [rbp - 0x70]
	call	strlen
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_816
.label_1703:
	mov	al, byte ptr [rbp - 0x7f]
	mov	byte ptr [rbp - 0x80], al
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_897
	test	byte ptr [rbp - 0x7b], 1
	je	.label_698
	jmp	.label_700
.label_714:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_702
	cmp	qword ptr [rbp - 0x68], 0
	jne	.label_702
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0x20], 0
.label_702:
	jmp	.label_710
.label_710:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_712
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_712:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_717
.label_717:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_725
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_725:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_729
.label_729:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_732
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_732:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_707:
	jmp	.label_737
.label_866:
	jmp	.label_738
.label_738:
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_748
	jmp	.label_737
.label_878:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_745
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_745
	jmp	.label_752
.label_752:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_753
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_753:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_760
.label_760:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_762
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_762:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_769
.label_769:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_774
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_774:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_745:
	jmp	.label_782
.label_782:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_783
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_783:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_785
.label_785:
	jmp	.label_705
.label_705:
	jmp	.label_787
.label_787:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_790
	test	byte ptr [rbp - 0x82], 1
	jne	.label_790
	jmp	.label_795
.label_795:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_797
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_797:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_800
.label_800:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_803
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_803:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_790:
	jmp	.label_812
.label_812:
	jmp	.label_813
.label_813:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_814
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_814:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	test	byte ptr [rbp - 0x83], 1
	jne	.label_821
	mov	byte ptr [rbp - 0x7e], 0
.label_821:
	jmp	.label_820
.label_820:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_828
.label_1697:
	mov	byte ptr [rbp - 0x80], 0x66
	jmp	.label_718
.label_1695:
	mov	byte ptr [rbp - 0x80], 0x6e
	jmp	.label_765
.label_869:
	jmp	.label_833
.label_833:
	jmp	.label_775
.label_775:
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_834
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_834
	jmp	.label_840
.label_840:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_841
	jmp	.label_847
.label_847:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_848
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_848:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_852
.label_852:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_840
.label_798:
	jmp	.label_784
.label_784:
	jmp	.label_819
.label_819:
	jmp	.label_818
.label_754:
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x30]
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	dword ptr [rbp - 0xd4], edx
.label_756:
	mov	eax, dword ptr [rbp - 0xd4]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_857
	jmp	.label_870
.label_857:
	mov	byte ptr [rbp - 0x81], 0
	mov	byte ptr [rbp - 0x82], 0
	mov	byte ptr [rbp - 0x83], 0
	test	byte ptr [rbp - 0x79], 1
	je	.label_856
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_856
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_856
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x78]
	cmp	qword ptr [rbp - 0x30], -1
	mov	qword ptr [rbp - 0xe0], rax
	jne	.label_876
	mov	eax, 1
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x78]
	jae	.label_876
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_880
.label_771:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_884
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_884
	jmp	.label_891
.label_891:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_892
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_892:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_898
.label_898:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_699
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_699:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_749
.label_749:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_708
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_708:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_884:
	jmp	.label_721
.label_721:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_723
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_723:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_728
.label_728:
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_731
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_731
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x28]
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_731
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x39
	jg	.label_731
	jmp	.label_764
.label_764:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_750
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_750:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_755
.label_755:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_758
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_758:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_731
.label_731:
	mov	byte ptr [rbp - 0x7f], 0x30
	jmp	.label_767
	.section	.text
	.align	16
	#Procedure 0x40b140
	.globl hash_string
	.type hash_string, @function
hash_string:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], 0
.label_900:
	mov	rax, qword ptr [rbp - 8]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x19], cl
	cmp	cl, 0
	je	.label_899
	imul	rax, qword ptr [rbp - 0x18], 0x1f
	movzx	ecx, byte ptr [rbp - 0x19]
	mov	edx, ecx
	add	rax, rdx
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rdx
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_900
.label_899:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b197
	.globl sub_40b197
	.type sub_40b197, @function
sub_40b197:

	nop	word ptr [rax + rax]
.label_902:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b1aa
	.globl sub_40b1aa
	.type sub_40b1aa, @function
sub_40b1aa:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40b1ae

	.globl next_prime
	.type next_prime, @function
next_prime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0xa
	jae	.label_904
	mov	qword ptr [rbp - 8], 0xa
.label_904:
	mov	rax, qword ptr [rbp - 8]
	or	rax, 1
	mov	qword ptr [rbp - 8], rax
.label_903:
	xor	eax, eax
	mov	cl, al
	mov	rdx, -1
	cmp	rdx, qword ptr [rbp - 8]
	mov	byte ptr [rbp - 9], cl
	je	.label_901
	mov	rdi, qword ptr [rbp - 8]
	call	is_prime
	xor	al, 0xff
	mov	byte ptr [rbp - 9], al
.label_901:
	mov	al, byte ptr [rbp - 9]
	test	al, 1
	jne	.label_905
	jmp	.label_902
.label_905:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 2
	mov	qword ptr [rbp - 8], rax
	jmp	.label_903
.label_906:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_907
.label_907:
	mov	rax, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rax]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b23b
	.globl sub_40b23b
	.type sub_40b23b, @function
sub_40b23b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b240
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	je	.label_906
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_907
	.section	.text
	.align	16
	#Procedure 0x40b260
	.globl rotl32
	.type rotl32, @function
rotl32:

	push	rbp
	mov	rbp, rsp
	mov	eax, 0x20
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	esi, dword ptr [rbp - 4]
	mov	ecx, dword ptr [rbp - 8]
	shl	esi, cl
	mov	edi, dword ptr [rbp - 4]
	sub	eax, dword ptr [rbp - 8]
	mov	ecx, eax
	shr	edi, cl
	or	esi, edi
	mov	eax, esi
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b287
	.globl sub_40b287
	.type sub_40b287, @function
sub_40b287:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b290

	.globl safe_hasher
	.type safe_hasher, @function
safe_hasher:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 0x30]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0x20]
	call	rax
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rsi + 0x10]
	jb	.label_908
	call	abort
.label_908:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x18]
	shl	rcx, 4
	add	rax, rcx
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b2f4
	.globl sub_40b2f4
	.type sub_40b2f4, @function
sub_40b2f4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b300
	.globl rotl64
	.type rotl64, @function
rotl64:

	push	rbp
	mov	rbp, rsp
	mov	eax, 0x40
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	mov	ecx, esi
	shl	rdi, cl
	mov	rdx, qword ptr [rbp - 8]
	sub	eax, dword ptr [rbp - 0xc]
	mov	eax, eax
	mov	ecx, eax
	shr	rdx, cl
	or	rdi, rdx
	mov	rax, rdi
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b332
	.globl sub_40b332
	.type sub_40b332, @function
sub_40b332:

	nop	word ptr cs:[rax + rax]
.label_921:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	add	rcx, qword ptr [rbp - 0x70]
	add	rcx, 1
	cmp	rax, rcx
	jbe	.label_909
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax - 1]
	cmp	ecx, 0x2f
	jne	.label_909
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, -1
	mov	qword ptr [rbp - 0x28], rax
.label_909:
	mov	rax, qword ptr [rbp - 0x28]
	mov	byte ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	add	rcx, 1
	cmp	rax, rcx
	je	.label_911
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	sub	rax, rcx
	add	rax, 1
	mov	rsi, rax
	call	xrealloc
	mov	qword ptr [rbp - 0x20], rax
.label_911:
	mov	rdi, qword ptr [rbp - 0x30]
	call	free
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_912
	mov	rdi, qword ptr [rbp - 0x58]
	call	hash_free
.label_912:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_910
.label_936:
	test	byte ptr [rbp - 0x61], 1
	je	.label_973
	lea	rsi, [rbp - 0x108]
	mov	rdi, qword ptr [rbp - 0x20]
	call	stat
	mov	dword ptr [rbp - 0x14c], eax
	jmp	.label_967
.label_961:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x38]
	sub	rax, rcx
	cmp	rax, 0
	jne	.label_913
	jmp	.label_921
.label_952:
	mov	eax, 0x1000
	mov	edi, eax
	call	xmalloc
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 0x1000
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_927
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x70]
	call	memcpy
	mov	rdx, qword ptr [rbp - 0x70]
	add	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rdx
.label_927:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x28], rcx
	mov	byte ptr [rax], 0x2f
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x38], rax
.label_924:
	jmp	.label_914
.label_914:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	byte ptr [rax], 0
	je	.label_921
	jmp	.label_919
.label_919:
	mov	rax, qword ptr [rbp - 0x38]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	jne	.label_956
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_919
.label_963:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x38]
	sub	rax, rcx
	cmp	rax, 2
	jne	.label_966
	mov	rax, qword ptr [rbp - 0x38]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2e
	jne	.label_966
	mov	rax, qword ptr [rbp - 0x38]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0x2e
	jne	.label_966
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	add	rcx, qword ptr [rbp - 0x70]
	add	rcx, 1
	cmp	rax, rcx
	jbe	.label_959
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, -1
	mov	qword ptr [rbp - 0x28], rax
.label_942:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x28]
	cmp	rdx, qword ptr [rbp - 0x20]
	mov	byte ptr [rbp - 0x13a], cl
	jbe	.label_923
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax - 1]
	cmp	ecx, 0x2f
	sete	dl
	xor	dl, 0xff
	mov	byte ptr [rbp - 0x13a], dl
.label_923:
	mov	al, byte ptr [rbp - 0x13a]
	test	al, 1
	jne	.label_960
	jmp	.label_939
.label_960:
	jmp	.label_941
.label_941:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, -1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_942
.label_935:
	mov	eax, dword ptr [rbp - 0xf0]
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_946
	mov	rax, qword ptr [rbp - 0x40]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_946
	cmp	dword ptr [rbp - 0x14], 2
	je	.label_946
	mov	dword ptr [rbp - 0x5c], 0x14
	jmp	.label_917
.label_939:
	jmp	.label_959
.label_959:
	jmp	.label_955
.label_913:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x38]
	sub	rax, rcx
	cmp	rax, 1
	jne	.label_963
	mov	rax, qword ptr [rbp - 0x38]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2e
	jne	.label_963
	jmp	.label_928
.label_931:
	mov	rax, qword ptr [rbp - 0x118]
	add	rax, 0x1000
	mov	qword ptr [rbp - 0x118], rax
.label_945:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x118]
	call	xrealloc
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rbp - 0x118]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rbp - 0x110]
	mov	qword ptr [rbp - 0x28], rax
.label_920:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x38]
	sub	rcx, rdx
	mov	rdi, rax
	mov	rdx, rcx
	mov	qword ptr [rbp - 0x148], rax
	call	memcpy
	mov	rax, qword ptr [rbp - 0x148]
	mov	qword ptr [rbp - 0x28], rax
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x38]
	sub	rcx, rdx
	add	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	byte ptr [rcx], 0
	test	byte ptr [rbp - 0x61], 1
	je	.label_936
	cmp	dword ptr [rbp - 0x14], 2
	jne	.label_936
	mov	dword ptr [rbp - 0xf0], 0
	jmp	.label_934
.label_916:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x5c], ecx
	jmp	.label_917
.label_949:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0xd8]
	call	areadlink_with_size
	mov	qword ptr [rbp - 0x120], rax
	cmp	qword ptr [rbp - 0x120], 0
	jne	.label_932
	cmp	dword ptr [rbp - 0x14], 2
	jne	.label_916
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	je	.label_916
	jmp	.label_918
.label_950:
	mov	dword ptr [rbp - 0x5c], 0x28
	jmp	.label_917
.label_966:
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax - 1]
	cmp	ecx, 0x2f
	je	.label_975
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x28], rcx
	mov	byte ptr [rax], 0x2f
.label_975:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x38]
	sub	rcx, rdx
	add	rax, rcx
	cmp	rax, qword ptr [rbp - 0x48]
	jb	.label_920
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x110], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x20]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x118], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x38]
	sub	rax, rcx
	add	rax, 1
	cmp	rax, 0x1000
	jle	.label_931
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x38]
	sub	rax, rcx
	add	rax, 1
	add	rax, qword ptr [rbp - 0x118]
	mov	qword ptr [rbp - 0x118], rax
	jmp	.label_945
.label_968:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	add	rcx, qword ptr [rbp - 0x70]
	add	rcx, 1
	cmp	rax, rcx
	jbe	.label_930
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, -1
	mov	qword ptr [rbp - 0x28], rax
.label_979:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x28]
	cmp	rdx, qword ptr [rbp - 0x20]
	mov	byte ptr [rbp - 0x169], cl
	jbe	.label_962
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax - 1]
	cmp	ecx, 0x2f
	sete	dl
	xor	dl, 0xff
	mov	byte ptr [rbp - 0x169], dl
.label_962:
	mov	al, byte ptr [rbp - 0x169]
	test	al, 1
	jne	.label_943
	jmp	.label_976
.label_943:
	jmp	.label_977
.label_977:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, -1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_979
.label_933:
	jmp	.label_918
.label_972:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x48], rax
.label_915:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x38], rax
	mov	qword ptr [rbp - 0x70], 0
	jmp	.label_924
.label_970:
	cmp	dword ptr [rbp - 0x14], 1
	jne	.label_926
	movabs	rsi, OFFSET FLAT:label_188
	mov	rdi, qword ptr [rbp - 0x40]
	call	strspn
	mov	rsi, qword ptr [rbp - 0x40]
	movsx	ecx, byte ptr [rsi + rax]
	cmp	ecx, 0
	jne	.label_937
	cmp	dword ptr [rbp - 0x5c], 2
	je	.label_933
.label_937:
	jmp	.label_917
.label_956:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x40], rax
.label_965:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x40]
	movsx	eax, byte ptr [rdx]
	cmp	eax, 0
	mov	byte ptr [rbp - 0x139], cl
	je	.label_948
	mov	rax, qword ptr [rbp - 0x40]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	sete	dl
	xor	dl, 0xff
	mov	byte ptr [rbp - 0x139], dl
.label_948:
	mov	al, byte ptr [rbp - 0x139]
	test	al, 1
	jne	.label_957
	jmp	.label_961
.label_957:
	jmp	.label_964
.label_964:
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_965
.label_958:
	xor	esi, esi
	mov	rdi, qword ptr [rbp - 0x20]
	call	strchr
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdi, qword ptr [rbp - 0x20]
	sub	rax, rdi
	cmp	rax, 0x1000
	jge	.label_972
	mov	eax, 0x1000
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x20]
	call	xrealloc
	mov	qword ptr [rbp - 0x78], rax
	mov	rax, qword ptr [rbp - 0x78]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdi, qword ptr [rbp - 0x20]
	sub	rsi, rdi
	add	rax, rsi
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 0x1000
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_915
.label_926:
	mov	dword ptr [rbp - 0xf0], 0
.label_925:
	jmp	.label_934
.label_934:
	mov	eax, dword ptr [rbp - 0xf0]
	and	eax, 0xf000
	cmp	eax, 0xa000
	jne	.label_935
	lea	rdi, [rbp - 0x58]
	lea	rdx, [rbp - 0x108]
	mov	rsi, qword ptr [rbp - 0x10]
	call	seen_triple
	test	al, 1
	jne	.label_947
	jmp	.label_949
.label_947:
	cmp	dword ptr [rbp - 0x14], 2
	jne	.label_950
	jmp	.label_918
.label_971:
	mov	qword ptr [rbp - 0x70], 0
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	je	.label_952
	call	xgetcwd
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_958
	mov	qword ptr [rbp - 8], 0
	jmp	.label_910
.label_954:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_971
	call	__errno_location
	mov	dword ptr [rax], 2
	mov	qword ptr [rbp - 8], 0
	jmp	.label_910
.label_973:
	lea	rsi, [rbp - 0x108]
	mov	rdi, qword ptr [rbp - 0x20]
	call	lstat
	mov	dword ptr [rbp - 0x14c], eax
.label_967:
	mov	eax, dword ptr [rbp - 0x14c]
	cmp	eax, 0
	je	.label_925
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x5c], ecx
	cmp	dword ptr [rbp - 0x14], 0
	jne	.label_970
	jmp	.label_917
.label_951:
	mov	rax, qword ptr [rbp - 0x128]
	add	rax, qword ptr [rbp - 0x130]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x50]
	jbe	.label_929
	mov	rax, qword ptr [rbp - 0x128]
	add	rax, qword ptr [rbp - 0x130]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x50]
	call	xrealloc
	mov	qword ptr [rbp - 0x30], rax
.label_929:
	jmp	.label_938
.label_938:
	mov	rax, qword ptr [rbp - 0x128]
	add	rax, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x130]
	add	rcx, 1
	mov	rdi, rax
	mov	rdx, rcx
	call	memmove
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x120]
	mov	rdx, qword ptr [rbp - 0x128]
	mov	rdi, rcx
	mov	qword ptr [rbp - 0x160], rax
	mov	qword ptr [rbp - 0x168], rcx
	call	memcpy
	mov	rax, qword ptr [rbp - 0x168]
	mov	qword ptr [rbp - 0x40], rax
	mov	qword ptr [rbp - 0x10], rax
	mov	rcx, qword ptr [rbp - 0x120]
	movsx	r8d, byte ptr [rcx]
	cmp	r8d, 0x2f
	jne	.label_968
	mov	qword ptr [rbp - 0x138], 0
	cmp	qword ptr [rbp - 0x138], 0
	je	.label_974
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x120]
	mov	rdx, qword ptr [rbp - 0x138]
	call	memcpy
.label_974:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rbp - 0x138]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x28], rcx
	mov	byte ptr [rax], 0x2f
	mov	rax, qword ptr [rbp - 0x138]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_922
.label_917:
	mov	rdi, qword ptr [rbp - 0x30]
	call	free
	mov	rdi, qword ptr [rbp - 0x20]
	call	free
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_940
	mov	rdi, qword ptr [rbp - 0x58]
	call	hash_free
.label_940:
	mov	eax, dword ptr [rbp - 0x5c]
	mov	dword ptr [rbp - 0x170], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x170]
	mov	dword ptr [rax], ecx
	mov	qword ptr [rbp - 8], 0
.label_910:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x170
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40bb98
	.globl sub_40bb98
	.type sub_40bb98, @function
sub_40bb98:

	nop	
.label_980:
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_954
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	qword ptr [rbp - 8], 0
	jmp	.label_910
.label_953:
	mov	eax, 0x1000
	mov	ecx, eax
	mov	qword ptr [rbp - 0x158], rcx
	jmp	.label_944
.label_944:
	mov	rax, qword ptr [rbp - 0x158]
	mov	qword ptr [rbp - 0x50], rax
	mov	rdi, qword ptr [rbp - 0x50]
	call	xmalloc
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_938
	.section	.text
	.align	16
	#Procedure 0x40bbec

	.globl canonicalize_filename_mode
	.type canonicalize_filename_mode, @function
canonicalize_filename_mode:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x170
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	qword ptr [rbp - 0x30], 0
	mov	qword ptr [rbp - 0x50], 0
	mov	qword ptr [rbp - 0x58], 0
	mov	esi, dword ptr [rbp - 0x14]
	and	esi, 0xfffffffc
	mov	dword ptr [rbp - 0x60], esi
	mov	esi, dword ptr [rbp - 0x60]
	and	esi, 4
	cmp	esi, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x61], al
	mov	esi, dword ptr [rbp - 0x14]
	and	esi, 3
	mov	dword ptr [rbp - 0x14], esi
	mov	esi, dword ptr [rbp - 0x14]
	mov	ecx, dword ptr [rbp - 0x14]
	sub	ecx, 1
	and	esi, ecx
	cmp	esi, 0
	je	.label_980
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	qword ptr [rbp - 8], 0
	jmp	.label_910
.label_932:
	mov	rdi, qword ptr [rbp - 0x120]
	call	strlen
	mov	qword ptr [rbp - 0x128], rax
	mov	rdi, qword ptr [rbp - 0x40]
	call	strlen
	mov	qword ptr [rbp - 0x130], rax
	cmp	qword ptr [rbp - 0x50], 0
	jne	.label_951
	mov	rax, qword ptr [rbp - 0x128]
	add	rax, qword ptr [rbp - 0x130]
	add	rax, 1
	cmp	rax, 0x1000
	jbe	.label_953
	mov	rax, qword ptr [rbp - 0x128]
	add	rax, qword ptr [rbp - 0x130]
	add	rax, 1
	mov	qword ptr [rbp - 0x158], rax
	jmp	.label_944
.label_976:
	jmp	.label_930
.label_930:
	jmp	.label_922
.label_922:
	mov	rdi, qword ptr [rbp - 0x120]
	call	free
	jmp	.label_969
.label_946:
	jmp	.label_969
.label_969:
	jmp	.label_955
.label_955:
	jmp	.label_928
.label_928:
	jmp	.label_978
.label_978:
	jmp	.label_918
.label_918:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_914
.label_983:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	cmp	eax, ecx
	je	.label_981
.label_982:
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_984:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40bd4e
	.globl sub_40bd4e
	.type sub_40bd4e, @function
sub_40bd4e:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40bd5d

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
	jne	.label_985
	mov	dword ptr [rbp - 4], 0
	jmp	.label_984
.label_985:
	jmp	.label_981
.label_981:
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
	jne	.label_983
	jmp	.label_982
.label_987:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x18], 0
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x20], 0
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40bdee
	.globl sub_40bdee
	.type sub_40bdee, @function
sub_40bdee:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40bdf5
	.globl hash_clear
	.type hash_clear, @function
hash_clear:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi]
	mov	qword ptr [rbp - 0x10], rdi
.label_993:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_987
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax], 0
	je	.label_992
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x18], rax
.label_988:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_990
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x40], 0
	je	.label_989
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx]
	call	rax
.label_989:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x48], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_988
.label_990:
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x40], 0
	je	.label_986
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rcx]
	call	rax
.label_986:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 8], 0
.label_992:
	jmp	.label_991
.label_991:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_993
	.section	.text
	.align	16
	#Procedure 0x40bef0

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
	#Procedure 0x40bf18
	.globl sub_40bf18
	.type sub_40bf18, @function
sub_40bf18:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40bf20
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
	#Procedure 0x40bf47
	.globl sub_40bf47
	.type sub_40bf47, @function
sub_40bf47:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40bf50

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
	#Procedure 0x40bf83
	.globl sub_40bf83
	.type sub_40bf83, @function
sub_40bf83:

	nop	word ptr cs:[rax + rax]
.label_1053:
	mov	rdi, qword ptr [rbp - 0x120]
	call	free
.label_1018:
	add	rsp, 0x4d8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40bfa6
	.globl sub_40bfa6
	.type sub_40bfa6, @function
sub_40bfa6:

	nop	dword ptr [rax + rax]
.label_1062:
	test	byte ptr [rbp - 0x31], 1
	je	.label_1048
	test	byte ptr [byte ptr [show_all_fs]],  1
	jne	.label_1048
	test	byte ptr [byte ptr [show_listed_fs]],  1
	jne	.label_1048
	jmp	.label_1018
.label_1028:
	cmp	qword ptr [rbp - 0x40], 0
	jne	.label_1002
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1002
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	je	.label_1002
	jmp	.label_1018
.label_1017:
	movabs	rdi, OFFSET FLAT:label_995
	movabs	rsi, OFFSET FLAT:label_127
	mov	edx, 0x468
	movabs	rcx, OFFSET FLAT:label_996
	mov	qword ptr [rbp - 0x450], 0
	call	__assert_fail
.label_1057:
	mov	rax, qword ptr [rbp - 0x498]
	mov	qword ptr [rbp - 0x4e0], rax
.label_1011:
	mov	rax, qword ptr [rbp - 0x4e0]
	mov	rcx, qword ptr [rbp - 0x1b0]
	mov	rdx,  qword ptr [word ptr [columns]]
	mov	rcx, qword ptr [rdx + rcx*8]
	mov	qword ptr [rcx + 0x20], rax
	mov	rax, qword ptr [rbp - 0x448]
	mov	rcx, qword ptr [rbp - 0x1b0]
	mov	rdx,  qword ptr [word ptr [nrows]]
	sub	rdx, 1
	mov	rsi,  qword ptr [word ptr [table]]
	mov	rdx, qword ptr [rsi + rdx*8]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x1b0]
	add	rax, 1
	mov	qword ptr [rbp - 0x1b0], rax
	jmp	.label_1021
.label_1023:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x4a0], rax
.label_1026:
	mov	rax, qword ptr [rbp - 0x4a0]
	mov	qword ptr [rbp - 0x28], rax
.label_1019:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_1050
	mov	eax, 0x38
	mov	edx, eax
	lea	rcx, [rbp - 0x80]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdi, rcx
	call	memcpy
	jmp	.label_1036
.label_1051:
	movabs	rdi, OFFSET FLAT:label_383
	call	strdup
	mov	qword ptr [rbp - 0x448], rax
.label_1058:
	cmp	qword ptr [rbp - 0x448], 0
	jne	.label_1013
	call	xalloc_die
.label_1631:
	mov	rdi, qword ptr [rbp - 0x120]
	call	xstrdup
	mov	qword ptr [rbp - 0x448], rax
	jmp	.label_1001
.label_1008:
	mov	qword ptr [rbp - 0x450], 0
	jmp	.label_999
.label_1637:
	mov	rdi, qword ptr [rbp - 0x18]
	call	xstrdup
	mov	qword ptr [rbp - 0x448], rax
	jmp	.label_1001
.label_1012:
	movabs	rax, OFFSET FLAT:label_383
	mov	qword ptr [rbp - 0x30], rax
	mov	byte ptr [rbp - 0x60], 0
	mov	qword ptr [rbp - 0x50], -1
	mov	qword ptr [rbp - 0x58], -1
	mov	qword ptr [rbp - 0x68], -1
	mov	qword ptr [rbp - 0x70], -1
	mov	qword ptr [rbp - 0x78], -1
	mov	qword ptr [rbp - 0x80], -1
	jmp	.label_1022
.label_1055:
	test	byte ptr [rbp - 0x41], 1
	je	.label_1033
	test	byte ptr [byte ptr [show_all_fs]],  1
	je	.label_1033
	lea	rsi, [rbp - 0x110]
	mov	rdi, qword ptr [rbp - 0x28]
	call	stat
	cmp	eax, 0
	jne	.label_1030
	mov	rdi, qword ptr [rbp - 0x110]
	call	me_for_dev
	mov	qword ptr [rbp - 0x118], rax
	cmp	qword ptr [rbp - 0x118], 0
	je	.label_1003
	mov	rax, qword ptr [rbp - 0x118]
	mov	rdi, qword ptr [rax]
	mov	rsi, qword ptr [rbp - 0x10]
	call	strcmp
	cmp	eax, 0
	je	.label_1003
	mov	rax, qword ptr [rbp - 0x118]
	mov	cl, byte ptr [rax + 0x28]
	shr	cl, 1
	and	cl, 1
	movzx	edx, cl
	cmp	edx, 0
	je	.label_1059
	test	byte ptr [rbp - 0x32], 1
	jne	.label_1003
.label_1059:
	movabs	rax, OFFSET FLAT:label_383
	mov	qword ptr [rbp - 0x30], rax
	mov	byte ptr [rbp - 0x60], 0
	mov	qword ptr [rbp - 0x50], -1
	mov	qword ptr [rbp - 0x58], -1
	mov	qword ptr [rbp - 0x68], -1
	mov	qword ptr [rbp - 0x70], -1
	mov	qword ptr [rbp - 0x78], -1
	mov	qword ptr [rbp - 0x80], -1
.label_1003:
	jmp	.label_1030
.label_1030:
	jmp	.label_1033
.label_1033:
	jmp	.label_1034
.label_1034:
	jmp	.label_1036
.label_1036:
	cmp	qword ptr [rbp - 0x78], 0
	jne	.label_1038
	test	byte ptr [byte ptr [show_all_fs]],  1
	jne	.label_1038
	test	byte ptr [byte ptr [show_listed_fs]],  1
	jne	.label_1038
	jmp	.label_1018
.label_997:
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 0x4a4], ecx
	call	quotearg_n_style_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_522
	mov	esi, dword ptr [rbp - 0x4a4]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	dword ptr [dword ptr [exit_status]],  1
	jmp	.label_1018
.label_1031:
	mov	rax, qword ptr [rbp - 0x450]
	movq	xmm0, qword ptr [rax + 0x30]
	movaps	xmm1,  xmmword ptr [word ptr [rip + label_213]]
	punpckldq	xmm0, xmm1
	movapd	xmm1,  xmmword ptr [word ptr [rip + label_214]]
	subpd	xmm0, xmm1
	pshufd	xmm1, xmm0, 0x4e
	addpd	xmm1, xmm0
	movsd	qword ptr [rbp - 0x4d0], xmm1
.label_1037:
	movsd	xmm0, qword ptr [rbp - 0x4d0]
	movsd	qword ptr [rbp - 0x470], xmm0
	mov	rax, qword ptr [rbp - 0x450]
	test	byte ptr [rax + 0x20], 1
	je	.label_1009
	mov	rax, qword ptr [rbp - 0x450]
	mov	rax, qword ptr [rax + 0x18]
	neg	rax
	movq	xmm0, rax
	movaps	xmm1,  xmmword ptr [word ptr [rip + label_213]]
	punpckldq	xmm0, xmm1
	movapd	xmm1,  xmmword ptr [word ptr [rip + label_214]]
	subpd	xmm0, xmm1
	pshufd	xmm1, xmm0, 0x4e
	addpd	xmm1, xmm0
	movq	rax, xmm1
	movabs	rcx, 0x8000000000000000
	xor	rax, rcx
	movq	xmm0, rax
	movsd	qword ptr [rbp - 0x4d8], xmm0
	jmp	.label_1041
.label_1054:
	lea	rax, [rbp - 0x168]
	mov	qword ptr [rbp - 0x450], rax
	jmp	.label_999
.label_1038:
	cmp	qword ptr [rbp - 0x40], 0
	jne	.label_1047
	mov	byte ptr [byte ptr [file_systems_processed]],  1
.label_1047:
	call	alloc_table_row
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_1052
	movabs	rax, OFFSET FLAT:label_383
	mov	qword ptr [rbp - 0x10], rax
.label_1052:
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_1015
	movabs	rax, OFFSET FLAT:label_383
	mov	qword ptr [rbp - 0x20], rax
.label_1015:
	mov	rdi, qword ptr [rbp - 0x10]
	call	xstrdup
	mov	qword ptr [rbp - 0x120], rax
	test	byte ptr [rbp - 0x41], 1
	je	.label_1010
	mov	rdi, qword ptr [rbp - 0x120]
	call	has_uuid_suffix
	test	al, 1
	jne	.label_1006
	jmp	.label_1010
.label_1006:
	xor	esi, esi
	mov	rdi, qword ptr [rbp - 0x120]
	call	canonicalize_filename_mode
	mov	qword ptr [rbp - 0x128], rax
	cmp	rax, 0
	je	.label_1010
	mov	rdi, qword ptr [rbp - 0x120]
	call	free
	mov	rdi, qword ptr [rbp - 0x128]
	mov	qword ptr [rbp - 0x120], rdi
.label_1010:
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_1029
	movabs	rax, OFFSET FLAT:label_383
	mov	qword ptr [rbp - 0x30], rax
.label_1029:
	lea	rdi, [rbp - 0x168]
	lea	rsi, [rbp - 0x1a8]
	lea	rdx, [rbp - 0x80]
	call	get_field_values
	test	byte ptr [byte ptr [print_grand_total]],  1
	je	.label_1042
	cmp	qword ptr [rbp - 0x40], 0
	jne	.label_1042
	lea	rdi, [rbp - 0x168]
	lea	rsi, [rbp - 0x1a8]
	call	add_to_grand_total
.label_1042:
	mov	qword ptr [rbp - 0x1b0], 0
.label_1021:
	mov	rax, qword ptr [rbp - 0x1b0]
	cmp	rax,  qword ptr [word ptr [ncolumns]]
	jae	.label_1053
	mov	rax, qword ptr [rbp - 0x1b0]
	mov	rcx,  qword ptr [word ptr [rip + columns]]
	mov	rax, qword ptr [rcx + rax*8]
	mov	edx, dword ptr [rax + 0x10]
	test	edx, edx
	mov	dword ptr [rbp - 0x4a8], edx
	je	.label_1054
	jmp	.label_994
.label_994:
	mov	eax, dword ptr [rbp - 0x4a8]
	sub	eax, 1
	mov	dword ptr [rbp - 0x4ac], eax
	je	.label_998
	jmp	.label_1005
.label_1005:
	mov	eax, dword ptr [rbp - 0x4a8]
	sub	eax, 2
	mov	dword ptr [rbp - 0x4b0], eax
	je	.label_1008
	jmp	.label_1017
.label_1048:
	mov	rdi, qword ptr [rbp - 0x30]
	call	selected_fstype
	test	al, 1
	jne	.label_1020
	jmp	.label_1024
.label_1020:
	mov	rdi, qword ptr [rbp - 0x30]
	call	excluded_fstype
	test	al, 1
	jne	.label_1024
	jmp	.label_1028
.label_1024:
	jmp	.label_1018
.label_1009:
	mov	rax, qword ptr [rbp - 0x450]
	movq	xmm0, qword ptr [rax + 0x18]
	movaps	xmm1,  xmmword ptr [word ptr [rip + label_213]]
	punpckldq	xmm0, xmm1
	movapd	xmm1,  xmmword ptr [word ptr [rip + label_214]]
	subpd	xmm0, xmm1
	pshufd	xmm1, xmm0, 0x4e
	addpd	xmm1, xmm0
	movsd	qword ptr [rbp - 0x4d8], xmm1
.label_1041:
	movsd	xmm0, qword ptr [rbp - 0x4d8]
	xorps	xmm1, xmm1
	movsd	qword ptr [rbp - 0x478], xmm0
	movsd	xmm0, qword ptr [rbp - 0x470]
	addsd	xmm0, qword ptr [rbp - 0x478]
	movsd	qword ptr [rbp - 0x480], xmm0
	movsd	xmm0, qword ptr [rbp - 0x480]
	ucomisd	xmm0, xmm1
	jne	.label_1007
	jp	.label_1007
	jmp	.label_1004
.label_1007:
	movsd	xmm0,  qword ptr [word ptr [rip + label_1043]]
	movsd	xmm1,  qword ptr [word ptr [rip + label_215]]
	mulsd	xmm1, qword ptr [rbp - 0x470]
	divsd	xmm1, qword ptr [rbp - 0x480]
	movsd	qword ptr [rbp - 0x458], xmm1
	cvttsd2si	rax, xmm1
	mov	qword ptr [rbp - 0x488], rax
	cvtsi2sd	xmm1, qword ptr [rbp - 0x488]
	movsd	qword ptr [rbp - 0x490], xmm1
	movsd	xmm1, qword ptr [rbp - 0x490]
	subsd	xmm1, xmm0
	movsd	xmm0, qword ptr [rbp - 0x458]
	ucomisd	xmm0, xmm1
	jbe	.label_1044
	movsd	xmm0,  qword ptr [word ptr [rip + label_1043]]
	movsd	xmm1, qword ptr [rbp - 0x458]
	addsd	xmm0, qword ptr [rbp - 0x490]
	ucomisd	xmm0, xmm1
	jb	.label_1044
	movsd	xmm0, qword ptr [rbp - 0x490]
	movsd	xmm1, qword ptr [rbp - 0x490]
	movsd	xmm2, qword ptr [rbp - 0x458]
	ucomisd	xmm2, xmm1
	seta	al
	and	al, 1
	movzx	ecx, al
	cvtsi2sd	xmm1, ecx
	addsd	xmm0, xmm1
	movsd	qword ptr [rbp - 0x458], xmm0
.label_1044:
	jmp	.label_1004
.label_1004:
	jmp	.label_1046
.label_1046:
	jmp	.label_1045
.label_1045:
	xorps	xmm0, xmm0
	movsd	xmm1, qword ptr [rbp - 0x458]
	ucomisd	xmm1, xmm0
	jb	.label_1051
	lea	rdi, [rbp - 0x448]
	movabs	rsi, OFFSET FLAT:label_1016
	movsd	xmm0, qword ptr [rbp - 0x458]
	mov	al, 1
	call	asprintf
	cmp	eax, -1
	jne	.label_1056
	mov	qword ptr [rbp - 0x448], 0
.label_1056:
	jmp	.label_1058
.label_999:
	mov	rax, qword ptr [rbp - 0x1b0]
	mov	rcx,  qword ptr [word ptr [rip + columns]]
	mov	rax, qword ptr [rcx + rax*8]
	mov	edx, dword ptr [rax]
	mov	eax, edx
	mov	rcx, rax
	sub	rcx, 0xb
	mov	qword ptr [rbp - 0x4b8], rax
	mov	qword ptr [rbp - 0x4c0], rcx
	ja	.label_1060
	mov	rax, qword ptr [rbp - 0x4b8]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1014]]
	jmp	rcx
.label_1002:
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_1019
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1023
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x4a0], rax
	jmp	.label_1026
.label_1032:
	mov	rax, qword ptr [rbp - 0x450]
	test	byte ptr [rax + 0x38], 1
	je	.label_1031
	mov	rax, qword ptr [rbp - 0x450]
	mov	rax, qword ptr [rax + 0x30]
	neg	rax
	movq	xmm0, rax
	movaps	xmm1,  xmmword ptr [word ptr [rip + label_213]]
	punpckldq	xmm0, xmm1
	movapd	xmm1,  xmmword ptr [word ptr [rip + label_214]]
	subpd	xmm0, xmm1
	pshufd	xmm1, xmm0, 0x4e
	addpd	xmm1, xmm0
	movq	rax, xmm1
	movabs	rcx, 0x8000000000000000
	xor	rax, rcx
	movq	xmm0, rax
	movsd	qword ptr [rbp - 0x4d0], xmm0
	jmp	.label_1037
.label_1638:
	mov	rdi, qword ptr [rbp - 0x20]
	call	xstrdup
	mov	qword ptr [rbp - 0x448], rax
	jmp	.label_1001
.label_1022:
	jmp	.label_1034
.label_1013:
	jmp	.label_1001
.label_1635:
	lea	rdx, [rbp - 0x440]
	mov	rax, qword ptr [rbp - 0x450]
	mov	cl, byte ptr [rax + 0x20]
	mov	rax, qword ptr [rbp - 0x450]
	mov	rsi, qword ptr [rax + 0x18]
	mov	rax, qword ptr [rbp - 0x450]
	mov	rax, qword ptr [rax]
	mov	rdi, qword ptr [rbp - 0x450]
	mov	r8, qword ptr [rdi + 8]
	and	cl, 1
	movzx	edi, cl
	mov	rcx, rax
	call	df_readable
	mov	rdi, rax
	call	xstrdup
	mov	qword ptr [rbp - 0x448], rax
	jmp	.label_1001
.label_1060:
	movabs	rdi, OFFSET FLAT:label_1040
	movabs	rsi, OFFSET FLAT:label_127
	mov	edx, 0x4ce
	movabs	rcx, OFFSET FLAT:label_996
	call	__assert_fail
.label_1061:
	mov	rax, qword ptr [rbp - 0x450]
	test	byte ptr [rax + 0x38], 1
	jne	.label_1032
	movabs	rax, 0x28f5c28f5c28f5c
	mov	rcx, qword ptr [rbp - 0x450]
	cmp	qword ptr [rcx + 0x30], rax
	ja	.label_1032
	mov	rax, qword ptr [rbp - 0x450]
	mov	rax, qword ptr [rax + 0x30]
	mov	rcx, qword ptr [rbp - 0x450]
	add	rax, qword ptr [rcx + 0x18]
	cmp	rax, 0
	je	.label_1032
	mov	rax, qword ptr [rbp - 0x450]
	mov	rax, qword ptr [rax + 0x30]
	mov	rcx, qword ptr [rbp - 0x450]
	add	rax, qword ptr [rcx + 0x18]
	mov	rcx, qword ptr [rbp - 0x450]
	cmp	rax, qword ptr [rcx + 0x30]
	setb	dl
	and	dl, 1
	movzx	esi, dl
	mov	rax, qword ptr [rbp - 0x450]
	mov	dl, byte ptr [rax + 0x20]
	and	dl, 1
	movzx	edi, dl
	cmp	esi, edi
	jne	.label_1032
	mov	rax, qword ptr [rbp - 0x450]
	mov	rax, qword ptr [rax + 0x30]
	imul	rax, rax, 0x64
	mov	qword ptr [rbp - 0x460], rax
	mov	rax, qword ptr [rbp - 0x450]
	mov	rcx, qword ptr [rax + 0x18]
	mov	rax, qword ptr [rax + 0x30]
	add	rax, rcx
	mov	qword ptr [rbp - 0x468], rax
	mov	rcx, qword ptr [rbp - 0x460]
	xor	edx, edx
	mov	qword ptr [rbp - 0x4c8], rax
	mov	rax, rcx
	mov	rcx, qword ptr [rbp - 0x4c8]
	div	rcx
	test	rdx, rdx
	setne	sil
	movzx	edi, sil
	mov	edx, edi
	add	rax, rdx
	movq	xmm0, rax
	movaps	xmm1,  xmmword ptr [word ptr [rip + label_213]]
	punpckldq	xmm0, xmm1
	movapd	xmm1,  xmmword ptr [word ptr [rip + label_214]]
	subpd	xmm0, xmm1
	pshufd	xmm1, xmm0, 0x4e
	addpd	xmm1, xmm0
	movsd	qword ptr [rbp - 0x458], xmm1
	jmp	.label_1046
.label_1632:
	mov	rdi, qword ptr [rbp - 0x30]
	call	xstrdup
	mov	qword ptr [rbp - 0x448], rax
	jmp	.label_1001
.label_1634:
	lea	rdx, [rbp - 0x440]
	mov	rax, qword ptr [rbp - 0x450]
	mov	cl, byte ptr [rax + 0x38]
	mov	rax, qword ptr [rbp - 0x450]
	mov	rsi, qword ptr [rax + 0x30]
	mov	rax, qword ptr [rbp - 0x450]
	mov	rax, qword ptr [rax]
	mov	rdi, qword ptr [rbp - 0x450]
	mov	r8, qword ptr [rdi + 8]
	and	cl, 1
	movzx	edi, cl
	mov	rcx, rax
	call	df_readable
	mov	rdi, rax
	call	xstrdup
	mov	qword ptr [rbp - 0x448], rax
	jmp	.label_1001
.label_1050:
	lea	rdx, [rbp - 0x80]
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x10]
	call	get_fs_usage
	cmp	eax, 0
	je	.label_1055
	test	byte ptr [rbp - 0x41], 1
	je	.label_997
	call	__errno_location
	cmp	dword ptr [rax], 0xd
	je	.label_1000
	call	__errno_location
	cmp	dword ptr [rax], 2
	jne	.label_997
.label_1000:
	test	byte ptr [byte ptr [show_all_fs]],  1
	jne	.label_1012
	jmp	.label_1018
.label_998:
	lea	rax, [rbp - 0x1a8]
	mov	qword ptr [rbp - 0x450], rax
	jmp	.label_999
.label_1636:
	movsd	xmm0,  qword ptr [word ptr [rip + label_1025]]
	movsd	qword ptr [rbp - 0x458], xmm0
	mov	rax, qword ptr [rbp - 0x450]
	mov	rdi, qword ptr [rax + 0x30]
	call	known_value
	test	al, 1
	jne	.label_1035
	jmp	.label_1039
.label_1035:
	mov	rax, qword ptr [rbp - 0x450]
	mov	rdi, qword ptr [rax + 0x18]
	call	known_value
	test	al, 1
	jne	.label_1061
.label_1039:
	jmp	.label_1045
.label_1633:
	xor	edi, edi
	lea	rdx, [rbp - 0x440]
	mov	rax, qword ptr [rbp - 0x450]
	mov	rsi, qword ptr [rax + 0x10]
	mov	rax, qword ptr [rbp - 0x450]
	mov	rcx, qword ptr [rax]
	mov	rax, qword ptr [rbp - 0x450]
	mov	r8, qword ptr [rax + 8]
	call	df_readable
	mov	rdi, rax
	call	xstrdup
	mov	qword ptr [rbp - 0x448], rax
	jmp	.label_1001
.label_1049:
	mov	rdi, qword ptr [rbp - 0x448]
	call	replace_problematic_chars
	xor	esi, esi
	mov	rdi, qword ptr [rbp - 0x448]
	call	gnu_mbswidth
	movsxd	rdi, eax
	mov	qword ptr [rbp - 0x498], rdi
	mov	rdi, qword ptr [rbp - 0x1b0]
	mov	rcx,  qword ptr [word ptr [columns]]
	mov	rcx, qword ptr [rcx + rdi*8]
	mov	rcx, qword ptr [rcx + 0x20]
	cmp	rcx, qword ptr [rbp - 0x498]
	jbe	.label_1057
	mov	rax, qword ptr [rbp - 0x1b0]
	mov	rcx,  qword ptr [word ptr [columns]]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rax, qword ptr [rax + 0x20]
	mov	qword ptr [rbp - 0x4e0], rax
	jmp	.label_1011
.label_1001:
	cmp	qword ptr [rbp - 0x448], 0
	jne	.label_1049
	movabs	rdi, OFFSET FLAT:label_1027
	movabs	rsi, OFFSET FLAT:label_127
	mov	edx, 0x4d2
	movabs	rcx, OFFSET FLAT:label_996
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x40cb7e

	.globl get_dev
	.type get_dev, @function
get_dev:
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 0x4d8
	mov	al, r9b
	mov	r10b, byte ptr [rbp + 0x20]
	mov	r11, qword ptr [rbp + 0x18]
	mov	bl, byte ptr [rbp + 0x10]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	and	al, 1
	mov	byte ptr [rbp - 0x31], al
	and	bl, 1
	mov	byte ptr [rbp - 0x32], bl
	mov	qword ptr [rbp - 0x40], r11
	and	r10b, 1
	mov	byte ptr [rbp - 0x41], r10b
	test	byte ptr [rbp - 0x32], 1
	je	.label_1062
	test	byte ptr [byte ptr [show_local_fs]],  1
	je	.label_1062
	jmp	.label_1018
	.section	.text
	.align	16
	#Procedure 0x40cbe0

	.globl save_cwd
	.type save_cwd, @function
save_cwd:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rax, OFFSET FLAT:label_87
	mov	esi, 0x80000
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 8], 0
	mov	rdi, rax
	mov	al, 0
	call	open_safer
	mov	rdi, qword ptr [rbp - 0x10]
	mov	dword ptr [rdi], eax
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	dword ptr [rdi], 0
	jge	.label_1063
	xor	eax, eax
	mov	ecx, eax
	mov	rdi, rcx
	mov	rsi, rcx
	call	getcwd
	mov	edx, 0xffffffff
	xor	r8d, r8d
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0
	cmovne	edx, r8d
	mov	dword ptr [rbp - 4], edx
	jmp	.label_1064
.label_1063:
	mov	dword ptr [rbp - 4], 0
.label_1064:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40cc68
	.globl sub_40cc68
	.type sub_40cc68, @function
sub_40cc68:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40cc70

	.globl devlist_compare
	.type devlist_compare, @function
devlist_compare:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rsi]
	mov	rdi, qword ptr [rbp - 0x20]
	cmp	rsi, qword ptr [rdi]
	sete	al
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40cca4
	.globl sub_40cca4
	.type sub_40cca4, @function
sub_40cca4:

	nop	word ptr cs:[rax + rax]
.label_1068:
	cmp	qword ptr [rbp - 0x88], 0
	je	.label_1065
	mov	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x110], rax
	jmp	.label_1066
.label_1065:
	mov	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x110], rax
.label_1066:
	mov	rax, qword ptr [rbp - 0x110]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x70]
	movabs	rcx, 0x8000000000000000
	and	rcx, qword ptr [rbp - 0x70]
	sub	rcx, 1
	xor	rcx, 0xffffffffffffffff
	or	rax, rcx
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x18], rax
	movabs	rax, 0x8000000000000000
	and	rax, qword ptr [rbp - 0x70]
	cmp	rax, 0
	setne	dl
	mov	rax, qword ptr [rbp - 0x20]
	and	dl, 1
	mov	byte ptr [rax + 0x20], dl
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x28], rax
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x30], rax
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1067
.label_1069:
	lea	rsi, [rbp - 0x108]
	mov	rdi, qword ptr [rbp - 0x10]
	call	statfs
	cmp	eax, 0
	jge	.label_1070
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1067
	.section	.text
	.align	16
	#Procedure 0x40cd92

	.globl get_fs_usage
	.type get_fs_usage, @function
get_fs_usage:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x110
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	call	statvfs_works
	cmp	eax, 0
	je	.label_1069
	lea	rsi, [rbp - 0x90]
	mov	rdi, qword ptr [rbp - 0x10]
	call	statvfs
	cmp	eax, 0
	jge	.label_1068
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1067
.label_1070:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0xf8]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0xe8]
	movabs	rcx, 0x8000000000000000
	and	rcx, qword ptr [rbp - 0xe8]
	sub	rcx, 1
	xor	rcx, 0xffffffffffffffff
	or	rax, rcx
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x18], rax
	movabs	rax, 0x8000000000000000
	and	rax, qword ptr [rbp - 0xe8]
	cmp	rax, 0
	setne	dl
	mov	rax, qword ptr [rbp - 0x20]
	and	dl, 1
	mov	byte ptr [rax + 0x20], dl
	mov	rax, qword ptr [rbp - 0xe0]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x28], rax
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x30], rax
	mov	dword ptr [rbp - 4], 0
.label_1067:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x110
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ce86
	.globl sub_40ce86
	.type sub_40ce86, @function
sub_40ce86:

	nop	word ptr cs:[rax + rax]
.label_1072:
	mov	qword ptr [rbp - 8], 0
.label_1073:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40cea2
	.globl sub_40cea2
	.type sub_40cea2, @function
sub_40cea2:

	nop	
.label_1077:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1072
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x28]
	call	canonicalize_file_name
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_1071
	mov	rax, qword ptr [rbp - 0x30]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	jne	.label_1071
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1073
.label_1071:
	mov	rdi, qword ptr [rbp - 0x30]
	call	free
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rdi]
	call	xstrdup
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1073
	.section	.text
	.align	16
	#Procedure 0x40cf0d

	.globl last_device_for_mount
	.type last_device_for_mount, @function
last_device_for_mount:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x20], 0
	mov	rdi,  qword ptr [word ptr [mount_list]]
	mov	qword ptr [rbp - 0x18], rdi
.label_1076:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1077
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rax + 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	strcmp
	cmp	eax, 0
	jne	.label_1074
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rax
.label_1074:
	jmp	.label_1075
.label_1075:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x30]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1076
	.section	.text
	.align	16
	#Procedure 0x40cf70

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
	#Procedure 0x40cf9b
	.globl sub_40cf9b
	.type sub_40cf9b, @function
sub_40cf9b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40cfa0

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
	#Procedure 0x40cfcc
	.globl sub_40cfcc
	.type sub_40cfcc, @function
sub_40cfcc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40cfd0

	.globl cdb_free
	.type cdb_free, @function
cdb_free:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	cmp	eax, dword ptr [rdi]
	jg	.label_1078
	mov	rax, qword ptr [rbp - 8]
	mov	edi, dword ptr [rax]
	call	close
	cmp	eax, 0
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 9], cl
	test	byte ptr [rbp - 9], 1
	jne	.label_1081
	jmp	.label_1082
.label_1081:
	movabs	rdi, OFFSET FLAT:label_1079
	movabs	rsi, OFFSET FLAT:label_626
	mov	edx, 0x40
	movabs	rcx, OFFSET FLAT:label_1080
	call	__assert_fail
.label_1082:
	jmp	.label_1078
.label_1078:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d043
	.globl sub_40d043
	.type sub_40d043, @function
sub_40d043:

	nop	word ptr cs:[rax + rax]
.label_1084:
	mov	byte ptr [rbp - 1], 0
.label_1085:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d05e
	.globl sub_40d05e
	.type sub_40d05e, @function
sub_40d05e:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d06c
	.globl c_islower
	.type c_islower, @function
c_islower:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1084
	jmp	.label_1083
.label_1083:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1085
	.section	.text
	.align	16
	#Procedure 0x40d090
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
	#Procedure 0x40d0c1
	.globl sub_40d0c1
	.type sub_40d0c1, @function
sub_40d0c1:

	nop	word ptr cs:[rax + rax]
.label_1088:
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
	#Procedure 0x40d0f3
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
.label_1086:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_1088
	jmp	.label_1087
.label_1087:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1086
.label_1104:
	test	byte ptr [rbp - 0x2a], 1
	je	.label_1098
	movabs	rdi, OFFSET FLAT:label_1100
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x110], rax
	call	quotearg_style
	xor	edi, edi
	mov	dword ptr [rbp - 0x114], edi
	mov	esi, dword ptr [rbp - 0x114]
	mov	rdx, qword ptr [rbp - 0x110]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	dword ptr [dword ptr [exit_status]],  1
	mov	byte ptr [rbp - 9], 1
	jmp	.label_1091
	.section	.text
	.align	16
	#Procedure 0x40d1a1

	.globl get_disk
	.type get_disk, @function
get_disk:
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 0x128
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x28], 0
	mov	byte ptr [rbp - 0x29], 0
	mov	byte ptr [rbp - 0x2a], 0
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x38], rdi
	mov	rdi, qword ptr [rbp - 0x18]
	call	canonicalize_file_name
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_1101
	mov	rax, qword ptr [rbp - 0x40]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	jne	.label_1101
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x18], rax
.label_1101:
	mov	qword ptr [rbp - 0x48], -1
	mov	rax,  qword ptr [word ptr [mount_list]]
	mov	qword ptr [rbp - 0x20], rax
.label_1097:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1092
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rax]
	call	canonicalize_file_name
	mov	qword ptr [rbp - 0x58], rax
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_1096
	mov	rax, qword ptr [rbp - 0x58]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	jne	.label_1096
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x50], rax
.label_1096:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x50]
	call	strcmp
	cmp	eax, 0
	jne	.label_1103
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rax + 8]
	call	last_device_for_mount
	xor	ecx, ecx
	mov	dl, cl
	mov	qword ptr [rbp - 0x60], rax
	cmp	qword ptr [rbp - 0x60], 0
	mov	byte ptr [rbp - 0xfa], dl
	je	.label_1105
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x50]
	call	strcmp
	cmp	eax, 0
	sete	cl
	xor	cl, 0xff
	mov	byte ptr [rbp - 0xfa], cl
.label_1105:
	mov	al, byte ptr [rbp - 0xfa]
	and	al, 1
	mov	byte ptr [rbp - 0x2a], al
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rcx + 8]
	call	strlen
	mov	qword ptr [rbp - 0x68], rax
	test	byte ptr [rbp - 0x2a], 1
	jne	.label_1095
	test	byte ptr [rbp - 0x29], 1
	je	.label_1102
	mov	rax, qword ptr [rbp - 0x68]
	cmp	rax, qword ptr [rbp - 0x48]
	jae	.label_1095
.label_1102:
	lea	rsi, [rbp - 0xf8]
	mov	byte ptr [rbp - 0xf9], 0
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rax + 8]
	call	stat
	cmp	eax, 0
	jne	.label_1090
	mov	byte ptr [rbp - 0xf9], 1
	mov	byte ptr [rbp - 0x29], 1
.label_1090:
	test	byte ptr [rbp - 0xf9], 1
	jne	.label_1094
	test	byte ptr [rbp - 0x29], 1
	jne	.label_1093
	mov	rax, qword ptr [rbp - 0x68]
	cmp	rax, qword ptr [rbp - 0x48]
	jae	.label_1093
.label_1094:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x68], 1
	jne	.label_1089
	mov	rdi, qword ptr [rbp - 0x60]
	call	free
	mov	rdi, qword ptr [rbp - 0x58]
	call	free
	jmp	.label_1092
.label_1092:
	mov	rdi, qword ptr [rbp - 0x40]
	call	free
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_1104
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rdi, qword ptr [rdx]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rdx + 8]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [r8 + 0x18]
	mov	r9, qword ptr [rbp - 0x28]
	mov	r10b, byte ptr [r9 + 0x28]
	and	r10b, 1
	movzx	eax, r10b
	cmp	eax, 0
	setne	r10b
	mov	r9, qword ptr [rbp - 0x28]
	mov	r11b, byte ptr [r9 + 0x28]
	shr	r11b, 1
	and	r11b, 1
	movzx	eax, r11b
	cmp	eax, 0
	setne	r11b
	and	r11b, 1
	movzx	eax, r11b
	mov	r9, rsp
	mov	dword ptr [r9], eax
	mov	dword ptr [r9 + 0x10], 0
	mov	qword ptr [r9 + 8], 0
	and	r10b, 1
	movzx	r9d, r10b
	xor	eax, eax
	mov	ebx, eax
	mov	qword ptr [rbp - 0x108], rcx
	mov	rcx, rbx
	call	get_dev
	mov	byte ptr [rbp - 9], 1
	jmp	.label_1091
.label_1089:
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_1093
.label_1093:
	jmp	.label_1095
.label_1095:
	mov	rdi, qword ptr [rbp - 0x60]
	call	free
.label_1103:
	mov	rdi, qword ptr [rbp - 0x58]
	call	free
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x30]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_1097
.label_1098:
	jmp	.label_1099
.label_1099:
	mov	byte ptr [rbp - 9], 0
.label_1091:
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x128
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d461
	.globl sub_40d461
	.type sub_40d461, @function
sub_40d461:

	nop	word ptr cs:[rax + rax]
.label_1107:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d47a
	.globl sub_40d47a
	.type sub_40d47a, @function
sub_40d47a:

	nop	
.label_1111:
	xor	eax, eax
	mov	ecx, 1
	mov	rdx, qword ptr [rbp - 8]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x2f
	cmove	eax, ecx
	mov	dword ptr [rbp - 0x1c], eax
.label_1110:
	mov	eax, dword ptr [rbp - 0x1c]
	movsxd	rcx, eax
	add	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rcx
	mov	rdi, qword ptr [rbp - 8]
	call	last_component
	mov	rcx, qword ptr [rbp - 8]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x18], rax
.label_1109:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_1107
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x2f
	je	.label_1108
	jmp	.label_1107
.label_1108:
	jmp	.label_1106
.label_1106:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, -1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1109
	.section	.text
	.align	16
	#Procedure 0x40d4f7

	.globl dir_len
	.type dir_len, @function
dir_len:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], 0
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_1111
	xor	eax, eax
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_1110
	.section	.text
	.align	16
	#Procedure 0x40d520

	.globl hash_get_n_entries
	.type hash_get_n_entries, @function
hash_get_n_entries:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rdi + 0x20]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d532
	.globl sub_40d532
	.type sub_40d532, @function
sub_40d532:

	nop	word ptr cs:[rax + rax]
.label_1115:
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + 8], rax
	je	.label_1112
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	movabs	rax, OFFSET FLAT:slot0
	mov	qword ptr [word ptr [slotvec0]],  0x100
	mov	qword ptr [word ptr [label_251]],  rax
.label_1112:
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 8], rax
	je	.label_1113
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	free
	movabs	rax, OFFSET FLAT:slotvec0
	mov	qword ptr [word ptr [slotvec]],  rax
.label_1113:
	mov	dword ptr [dword ptr [nslots]],  1
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d5c6
	.globl sub_40d5c6
	.type sub_40d5c6, @function
sub_40d5c6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d5d2
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rax,  qword ptr [word ptr [slotvec]]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 0xc], 1
.label_1114:
	mov	eax, dword ptr [rbp - 0xc]
	cmp	eax,  dword ptr [dword ptr [nslots]]
	jge	.label_1115
	movsxd	rax, dword ptr [rbp - 0xc]
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, 1
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_1114
	.section	.text
	.align	16
	#Procedure 0x40d620

	.globl devlist_hash
	.type devlist_hash, @function
devlist_hash:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rsi]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	mov	rax, rdx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d648
	.globl sub_40d648
	.type sub_40d648, @function
sub_40d648:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d650

	.globl statvfs_works
	.type statvfs_works, @function
statvfs_works:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x190
	cmp	dword ptr [dword ptr [statvfs_works.statvfs_works_cache]],  0
	jge	.label_1116
	lea	rdi, [rbp - 0x188]
	call	uname
	xor	ecx, ecx
	mov	dl, cl
	cmp	eax, 0
	mov	byte ptr [rbp - 0x189], dl
	jne	.label_1117
	movabs	rsi, OFFSET FLAT:label_1118
	lea	rax, [rbp - 0x188]
	add	rax, 0x82
	mov	rdi, rax
	call	strverscmp
	xor	ecx, ecx
	cmp	ecx, eax
	setle	dl
	mov	byte ptr [rbp - 0x189], dl
.label_1117:
	mov	al, byte ptr [rbp - 0x189]
	and	al, 1
	movzx	ecx, al
	mov	dword ptr [dword ptr [statvfs_works.statvfs_works_cache]],  ecx
.label_1116:
	mov	eax,  dword ptr [dword ptr [statvfs_works.statvfs_works_cache]]
	add	rsp, 0x190
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d6d6
	.globl sub_40d6d6
	.type sub_40d6d6, @function
sub_40d6d6:

	nop	word ptr cs:[rax + rax]
.label_1120:
	mov	byte ptr [rbp - 1], 0
.label_1122:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d6ee
	.globl sub_40d6ee
	.type sub_40d6ee, @function
sub_40d6ee:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d6f6

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
	jb	.label_1119
	jmp	.label_1121
.label_1121:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x7f
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_1120
	jmp	.label_1119
.label_1119:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1122
.label_1184:
	test	byte ptr [byte ptr [print_type]],  1
	je	.label_1189
	xor	eax, eax
	movabs	rcx, OFFSET FLAT:label_1192
	movabs	r8, OFFSET FLAT:label_1147
	mov	rdx, qword ptr [rbp - 0x28]
	mov	edi, eax
	mov	esi, eax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_1214:
	test	byte ptr [rbp - 0x19], 1
	je	.label_1184
	cmp	dword ptr [dword ptr [header_mode]],  0
	jne	.label_1184
	xor	eax, eax
	movabs	rcx, OFFSET FLAT:label_1146
	movabs	r8, OFFSET FLAT:label_1147
	mov	rdx, qword ptr [rbp - 0x28]
	mov	edi, eax
	mov	esi, eax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_1218:
	jmp	.label_1229
.label_1229:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_1221
.label_1129:
	mov	byte ptr [rbp - 0x19], 1
	jmp	.label_1128
.label_1207:
	mov	edi, 1
	call	usage
.label_1152:
	movabs	rax, OFFSET FLAT:label_86
	mov	qword ptr [rbp - 0x108], rax
	jmp	.label_1157
.label_1157:
	mov	rax, qword ptr [rbp - 0x108]
	mov	qword ptr [rbp - 0x60], rax
	mov	edi, dword ptr [rbp - 0x54]
	mov	dword ptr [rbp - 0x10c], edi
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_1127
	mov	esi, dword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x118], rcx
	mov	dword ptr [rbp - 0x11c], esi
	call	gettext
	movabs	rdx, OFFSET FLAT:label_1137
	mov	edi, dword ptr [rbp - 0x10c]
	mov	esi, dword ptr [rbp - 0x11c]
	mov	rcx, qword ptr [rbp - 0x118]
	mov	r8, rax
	mov	al, 0
	call	error
.label_1125:
	test	byte ptr [byte ptr [require_sync]],  1
	je	.label_1145
	call	sync
.label_1145:
	call	get_field_list
	call	get_header
	mov	eax,  dword ptr [dword ptr [optind]]
	cmp	eax, dword ptr [rbp - 8]
	jge	.label_1151
	mov	byte ptr [byte ptr [show_listed_fs]],  1
	mov	eax,  dword ptr [dword ptr [optind]]
	mov	dword ptr [rbp - 0x64], eax
.label_1205:
	mov	eax, dword ptr [rbp - 0x64]
	cmp	eax, dword ptr [rbp - 8]
	jge	.label_1159
	movsxd	rax, dword ptr [rbp - 0x64]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_1163
	movsxd	rax, dword ptr [rbp - 0x64]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	edx, dword ptr [rbp - 0x64]
	sub	edx,  dword ptr [dword ptr [optind]]
	movsxd	rax, edx
	imul	rax, rax, 0x90
	add	rax, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	get_entry
.label_1163:
	jmp	.label_1176
.label_1176:
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, 1
	mov	dword ptr [rbp - 0x64], eax
	jmp	.label_1205
.label_1189:
	mov	dword ptr [dword ptr [header_mode]],  4
	cmp	qword ptr [word ptr [optarg]],  0
	je	.label_1179
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	decode_output_arg
.label_1179:
	jmp	.label_1128
.label_1234:
	jmp	.label_1185
.label_1185:
	mov	eax,  dword ptr [dword ptr [exit_status]]
	mov	dword ptr [rbp - 4], eax
.label_1209:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x150
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d939
	.globl sub_40d939
	.type sub_40d939, @function
sub_40d939:

	nop	
.label_1183:
	jmp	.label_1128
.label_1232:
	mov	dword ptr [dword ptr [human_output_opts]],  0x90
	mov	qword ptr [word ptr [output_block_size]],  1
	jmp	.label_1128
.label_1153:
	mov	eax, dword ptr [rbp - 0x4c]
	sub	eax,  dword ptr [dword ptr [optind]]
	movsxd	rcx, eax
	imul	rcx, rcx, 0x90
	add	rcx, qword ptr [rbp - 0x18]
	mov	eax, dword ptr [rcx + 0x18]
	and	eax, 0xf000
	cmp	eax, 0x1000
	je	.label_1198
	mov	esi, 0x100
	movsxd	rax, dword ptr [rbp - 0x4c]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	al, 0
	call	open
	xor	esi, esi
	mov	dword ptr [rbp - 0x50], eax
	cmp	esi, dword ptr [rbp - 0x50]
	jg	.label_1213
	mov	edi, dword ptr [rbp - 0x50]
	call	close
	mov	dword ptr [rbp - 0xf8], eax
.label_1213:
	jmp	.label_1198
.label_1198:
	jmp	.label_1169
.label_1169:
	jmp	.label_1162
.label_1162:
	mov	eax, dword ptr [rbp - 0x4c]
	add	eax, 1
	mov	dword ptr [rbp - 0x4c], eax
	jmp	.label_1223
.label_1206:
	xor	eax, eax
	cmp	eax,  dword ptr [dword ptr [optind]]
	jge	.label_1228
	jmp	.label_1228
.label_1159:
	jmp	.label_1233
.label_1197:
	mov	byte ptr [byte ptr [print_grand_total]],  1
	jmp	.label_1128
.label_1193:
	mov	byte ptr [byte ptr [require_sync]],  1
	jmp	.label_1128
.label_1228:
	mov	eax,  dword ptr [dword ptr [optind]]
	cmp	eax, dword ptr [rbp - 8]
	jge	.label_1142
	mov	eax, 0x90
	mov	esi, eax
	mov	eax, dword ptr [rbp - 8]
	sub	eax,  dword ptr [dword ptr [optind]]
	movsxd	rdi, eax
	call	xnmalloc
	mov	qword ptr [rbp - 0x18], rax
	mov	ecx,  dword ptr [dword ptr [optind]]
	mov	dword ptr [rbp - 0x4c], ecx
.label_1223:
	mov	eax, dword ptr [rbp - 0x4c]
	cmp	eax, dword ptr [rbp - 8]
	jge	.label_1141
	movsxd	rax, dword ptr [rbp - 0x4c]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	edx, dword ptr [rbp - 0x4c]
	sub	edx,  dword ptr [dword ptr [optind]]
	movsxd	rax, edx
	imul	rax, rax, 0x90
	add	rax, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	stat
	cmp	eax, 0
	je	.label_1153
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	movsxd	rax, dword ptr [rbp - 0x4c]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + rax*8]
	mov	dword ptr [rbp - 0xf4], ecx
	call	quotearg_n_style_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_522
	mov	esi, dword ptr [rbp - 0xf4]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	dword ptr [dword ptr [exit_status]],  1
	movsxd	rcx, dword ptr [rbp - 0x4c]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + rcx*8], 0
	jmp	.label_1169
.label_1160:
	mov	byte ptr [byte ptr [print_type]],  1
	jmp	.label_1128
.label_1212:
	xor	edi, edi
	call	usage
.label_1215:
	movabs	rdi, OFFSET FLAT:label_1180
	call	getenv
	movabs	rsi, OFFSET FLAT:human_output_opts
	movabs	rdx, OFFSET FLAT:output_block_size
	mov	rdi, rax
	call	human_options
	mov	dword ptr [rbp - 0xe4], eax
.label_1225:
	jmp	.label_1187
.label_1187:
	cmp	dword ptr [dword ptr [header_mode]],  1
	je	.label_1188
	cmp	dword ptr [dword ptr [header_mode]],  4
	jne	.label_1191
.label_1188:
	jmp	.label_1194
.label_1131:
	test	byte ptr [rbp - 0x19], 1
	je	.label_1195
	mov	dword ptr [dword ptr [header_mode]],  3
.label_1195:
	jmp	.label_1138
.label_1138:
	jmp	.label_1194
.label_1194:
	mov	byte ptr [rbp - 0x35], 0
	mov	rax,  qword ptr [word ptr [fs_select_list]]
	mov	qword ptr [rbp - 0x40], rax
.label_1133:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_1204
	mov	rax,  qword ptr [word ptr [fs_exclude_list]]
	mov	qword ptr [rbp - 0x48], rax
.label_1221:
	cmp	qword ptr [rbp - 0x48], 0
	je	.label_1210
	mov	rax, qword ptr [rbp - 0x40]
	mov	rdi, qword ptr [rax]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rax]
	call	strcmp
	cmp	eax, 0
	jne	.label_1218
	movabs	rdi, OFFSET FLAT:label_1222
	call	gettext
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rdi, qword ptr [rdi]
	mov	qword ptr [rbp - 0xf0], rax
	call	quote
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0xf0]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x35], 1
	jmp	.label_1210
.label_1140:
	mov	byte ptr [byte ptr [show_all_fs]],  1
	jmp	.label_1128
.label_1128:
	jmp	.label_1126
.label_1168:
	mov	dword ptr [dword ptr [human_output_opts]],  0
	mov	qword ptr [word ptr [output_block_size]],  0x100000
	jmp	.label_1128
.label_1203:
	movabs	rsi, OFFSET FLAT:label_519
	movabs	rdx, OFFSET FLAT:label_221
	movabs	r8, OFFSET FLAT:label_1134
	movabs	r9, OFFSET FLAT:label_1135
	movabs	rax, OFFSET FLAT:label_1136
	xor	ecx, ecx
	mov	edi, ecx
	mov	r10,  qword ptr [word ptr [stdout]]
	mov	rcx,  qword ptr [word ptr [Version]]
	mov	qword ptr [rbp - 0xe0], rdi
	mov	rdi, r10
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], 0
	mov	al, 0
	call	version_etc
	xor	edi, edi
	call	exit
.label_1144:
	mov	dword ptr [dword ptr [human_output_opts]],  0xb0
	mov	qword ptr [word ptr [output_block_size]],  1
	jmp	.label_1128
.label_1151:
	call	get_all_entries
.label_1233:
	test	byte ptr [byte ptr [file_systems_processed]],  1
	je	.label_1167
	test	byte ptr [byte ptr [print_grand_total]],  1
	je	.label_1170
	movabs	rax, OFFSET FLAT:label_1173
	xor	ecx, ecx
	mov	edx, ecx
	xor	r9d, r9d
	movabs	rsi, OFFSET FLAT:grand_fsu
	movabs	rdi, OFFSET FLAT:label_383
	mov	r8b,  byte ptr [byte ptr [label_1174]]
	test	r8b, 1
	mov	r10, rax
	cmovne	r10, rdi
	mov	rdi, rax
	mov	qword ptr [rbp - 0x128], rsi
	mov	rsi, r10
	mov	qword ptr [rbp - 0x130], rdx
	mov	rcx, qword ptr [rbp - 0x130]
	mov	r8, qword ptr [rbp - 0x130]
	mov	dword ptr [rsp], 0
	mov	rax, qword ptr [rbp - 0x128]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 0x10], 0
	call	get_dev
.label_1170:
	call	print_table
	jmp	.label_1185
.label_1156:
	mov	dword ptr [dword ptr [human_output_opts]],  0
	mov	qword ptr [word ptr [output_block_size]],  0x400
	jmp	.label_1128
.label_1182:
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	add_excluded_fs_type
	jmp	.label_1128
.label_1204:
	test	byte ptr [rbp - 0x35], 1
	je	.label_1206
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1209
.label_1202:
	cmp	dword ptr [dword ptr [human_output_opts]],  -1
	jne	.label_1187
	test	byte ptr [rbp - 0x19], 1
	je	.label_1215
	movabs	rdi, OFFSET FLAT:label_1219
	mov	dword ptr [dword ptr [human_output_opts]],  0
	call	getenv
	mov	ecx, 0x400
	mov	edx, 0x200
	cmp	rax, 0
	cmovne	ecx, edx
	movsxd	rax, ecx
	mov	qword ptr [word ptr [output_block_size]],  rax
	jmp	.label_1225
.label_1167:
	cmp	dword ptr [dword ptr [exit_status]],  0
	jne	.label_1234
	movabs	rdi, OFFSET FLAT:label_1235
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_1210:
	jmp	.label_1148
.label_1148:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_1133
.label_1186:
	mov	byte ptr [byte ptr [require_sync]],  0
	jmp	.label_1128
	.section	.text
	.align	16
	#Procedure 0x40de40

	.globl main
	.type main, @function
main:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x150
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rsi]
	call	set_program_name
	mov	edi, 6
	movabs	rsi, OFFSET FLAT:label_86
	call	setlocale
	movabs	rdi, OFFSET FLAT:label_1236
	movabs	rsi, OFFSET FLAT:label_1237
	mov	qword ptr [rbp - 0x70], rax
	call	bindtextdomain
	movabs	rdi, OFFSET FLAT:label_1236
	mov	qword ptr [rbp - 0x78], rax
	call	textdomain
	movabs	rdi, OFFSET FLAT:close_stdout
	mov	qword ptr [rbp - 0x80], rax
	call	atexit
	movabs	rdi, OFFSET FLAT:label_1238
	mov	qword ptr [word ptr [fs_select_list]],  0
	mov	qword ptr [word ptr [fs_exclude_list]],  0
	mov	byte ptr [byte ptr [show_all_fs]],  0
	mov	byte ptr [byte ptr [show_listed_fs]],  0
	mov	dword ptr [dword ptr [human_output_opts]],  0xffffffff
	mov	byte ptr [byte ptr [print_type]],  0
	mov	byte ptr [byte ptr [file_systems_processed]],  0
	mov	dword ptr [dword ptr [exit_status]],  0
	mov	byte ptr [byte ptr [print_grand_total]],  0
	mov	qword ptr [word ptr [grand_fsu]],  1
	mov	byte ptr [rbp - 0x19], 0
	mov	dword ptr [rbp - 0x84], eax
	call	gettext
	mov	qword ptr [rbp - 0x28], rax
.label_1126:
	movabs	rdx, OFFSET FLAT:label_1199
	movabs	rcx, OFFSET FLAT:long_options
	lea	r8, [rbp - 0x2c]
	mov	dword ptr [rbp - 0x2c], 0xffffffff
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	getopt_long
	mov	dword ptr [rbp - 0x30], eax
	cmp	dword ptr [rbp - 0x30], -1
	jne	.label_1200
	jmp	.label_1202
.label_1164:
	mov	byte ptr [byte ptr [show_local_fs]],  1
	jmp	.label_1128
.label_1178:
	jmp	.label_1128
.label_1141:
	jmp	.label_1142
.label_1142:
	mov	al, 1
	cmp	qword ptr [word ptr [fs_select_list]],  0
	mov	byte ptr [rbp - 0xf9], al
	jne	.label_1208
	mov	al, 1
	cmp	qword ptr [word ptr [fs_exclude_list]],  0
	mov	byte ptr [rbp - 0xf9], al
	jne	.label_1208
	mov	al, 1
	test	byte ptr [byte ptr [print_type]],  1
	mov	byte ptr [rbp - 0xf9], al
	jne	.label_1208
	mov	al, 1
	test	byte ptr [byte ptr [label_1226]],  1
	mov	byte ptr [rbp - 0xf9], al
	jne	.label_1208
	mov	al,  byte ptr [byte ptr [show_local_fs]]
	mov	byte ptr [rbp - 0xf9], al
.label_1208:
	mov	al, byte ptr [rbp - 0xf9]
	and	al, 1
	movzx	edi, al
	call	read_file_system_list
	mov	qword ptr [word ptr [mount_list]],  rax
	cmp	qword ptr [word ptr [mount_list]],  0
	jne	.label_1125
	mov	dword ptr [rbp - 0x54], 0
	mov	eax,  dword ptr [dword ptr [optind]]
	cmp	eax, dword ptr [rbp - 8]
	jge	.label_1143
	test	byte ptr [byte ptr [show_all_fs]],  1
	jne	.label_1143
	test	byte ptr [byte ptr [show_local_fs]],  1
	jne	.label_1143
	cmp	qword ptr [word ptr [fs_select_list]],  0
	jne	.label_1143
	cmp	qword ptr [word ptr [fs_exclude_list]],  0
	je	.label_1149
.label_1143:
	mov	dword ptr [rbp - 0x54], 1
.label_1149:
	cmp	dword ptr [rbp - 0x54], 0
	jne	.label_1152
	movabs	rdi, OFFSET FLAT:label_1154
	call	gettext
	mov	qword ptr [rbp - 0x108], rax
	jmp	.label_1157
.label_1132:
	cmp	dword ptr [dword ptr [header_mode]],  4
	jne	.label_1160
	xor	eax, eax
	movabs	rcx, OFFSET FLAT:label_1192
	movabs	r8, OFFSET FLAT:label_1147
	mov	rdx, qword ptr [rbp - 0x28]
	mov	edi, eax
	mov	esi, eax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_1175:
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	add_fs_type
	jmp	.label_1128
.label_1220:
	movabs	rsi, OFFSET FLAT:human_output_opts
	movabs	rdx, OFFSET FLAT:output_block_size
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	human_options
	mov	dword ptr [rbp - 0x34], eax
	cmp	dword ptr [rbp - 0x34], 0
	je	.label_1183
	movabs	rcx, OFFSET FLAT:long_options
	mov	edi, dword ptr [rbp - 0x34]
	mov	esi, dword ptr [rbp - 0x2c]
	mov	eax, dword ptr [rbp - 0x30]
	mov	dl, al
	mov	r8,  qword ptr [word ptr [optarg]]
	movsx	edx, dl
	call	xstrtol_fatal
.label_1124:
	cmp	dword ptr [dword ptr [header_mode]],  4
	jne	.label_1129
	xor	eax, eax
	movabs	rcx, OFFSET FLAT:label_1146
	movabs	r8, OFFSET FLAT:label_1147
	mov	rdx, qword ptr [rbp - 0x28]
	mov	edi, eax
	mov	esi, eax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_1200:
	mov	eax, dword ptr [rbp - 0x30]
	mov	ecx, eax
	sub	ecx, 0xffffff7d
	mov	dword ptr [rbp - 0x88], eax
	mov	dword ptr [rbp - 0x8c], ecx
	je	.label_1203
	jmp	.label_1211
.label_1211:
	mov	eax, dword ptr [rbp - 0x88]
	sub	eax, 0xffffff7e
	mov	dword ptr [rbp - 0x90], eax
	je	.label_1212
	jmp	.label_1217
.label_1217:
	mov	eax, dword ptr [rbp - 0x88]
	sub	eax, 0x42
	mov	dword ptr [rbp - 0x94], eax
	je	.label_1220
	jmp	.label_1224
.label_1224:
	mov	eax, dword ptr [rbp - 0x88]
	sub	eax, 0x46
	mov	dword ptr [rbp - 0x98], eax
	je	.label_1175
	jmp	.label_1231
.label_1231:
	mov	eax, dword ptr [rbp - 0x88]
	sub	eax, 0x48
	mov	dword ptr [rbp - 0x9c], eax
	je	.label_1232
	jmp	.label_1123
.label_1123:
	mov	eax, dword ptr [rbp - 0x88]
	sub	eax, 0x50
	mov	dword ptr [rbp - 0xa0], eax
	je	.label_1124
	jmp	.label_1130
.label_1130:
	mov	eax, dword ptr [rbp - 0x88]
	sub	eax, 0x54
	mov	dword ptr [rbp - 0xa4], eax
	je	.label_1132
	jmp	.label_1139
.label_1139:
	mov	eax, dword ptr [rbp - 0x88]
	sub	eax, 0x61
	mov	dword ptr [rbp - 0xa8], eax
	je	.label_1140
	jmp	.label_1227
.label_1227:
	mov	eax, dword ptr [rbp - 0x88]
	sub	eax, 0x68
	mov	dword ptr [rbp - 0xac], eax
	je	.label_1144
	jmp	.label_1150
.label_1150:
	mov	eax, dword ptr [rbp - 0x88]
	sub	eax, 0x69
	mov	dword ptr [rbp - 0xb0], eax
	je	.label_1158
	jmp	.label_1155
.label_1155:
	mov	eax, dword ptr [rbp - 0x88]
	sub	eax, 0x6b
	mov	dword ptr [rbp - 0xb4], eax
	je	.label_1156
	jmp	.label_1161
.label_1161:
	mov	eax, dword ptr [rbp - 0x88]
	sub	eax, 0x6c
	mov	dword ptr [rbp - 0xb8], eax
	je	.label_1164
	jmp	.label_1166
.label_1166:
	mov	eax, dword ptr [rbp - 0x88]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0xbc], eax
	je	.label_1168
	jmp	.label_1172
.label_1172:
	mov	eax, dword ptr [rbp - 0x88]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0xc0], eax
	je	.label_1175
	jmp	.label_1177
.label_1177:
	mov	eax, dword ptr [rbp - 0x88]
	sub	eax, 0x76
	mov	dword ptr [rbp - 0xc4], eax
	je	.label_1178
	jmp	.label_1181
.label_1181:
	mov	eax, dword ptr [rbp - 0x88]
	sub	eax, 0x78
	mov	dword ptr [rbp - 0xc8], eax
	je	.label_1182
	jmp	.label_1165
.label_1165:
	mov	eax, dword ptr [rbp - 0x88]
	sub	eax, 0x80
	mov	dword ptr [rbp - 0xcc], eax
	je	.label_1186
	jmp	.label_1190
.label_1190:
	mov	eax, dword ptr [rbp - 0x88]
	sub	eax, 0x81
	mov	dword ptr [rbp - 0xd0], eax
	je	.label_1193
	jmp	.label_1196
.label_1196:
	mov	eax, dword ptr [rbp - 0x88]
	sub	eax, 0x82
	mov	dword ptr [rbp - 0xd4], eax
	je	.label_1197
	jmp	.label_1201
.label_1201:
	mov	eax, dword ptr [rbp - 0x88]
	sub	eax, 0x83
	mov	dword ptr [rbp - 0xd8], eax
	je	.label_1171
	jmp	.label_1207
.label_1230:
	mov	dword ptr [dword ptr [header_mode]],  1
	jmp	.label_1128
.label_1171:
	cmp	dword ptr [dword ptr [header_mode]],  1
	jne	.label_1214
	xor	eax, eax
	movabs	rcx, OFFSET FLAT:label_1216
	movabs	r8, OFFSET FLAT:label_1147
	mov	rdx, qword ptr [rbp - 0x28]
	mov	edi, eax
	mov	esi, eax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_1158:
	cmp	dword ptr [dword ptr [header_mode]],  4
	jne	.label_1230
	xor	eax, eax
	movabs	rcx, OFFSET FLAT:label_1216
	movabs	r8, OFFSET FLAT:label_1147
	mov	rdx, qword ptr [rbp - 0x28]
	mov	edi, eax
	mov	esi, eax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_1191:
	mov	eax,  dword ptr [dword ptr [human_output_opts]]
	and	eax, 0x10
	cmp	eax, 0
	je	.label_1131
	mov	dword ptr [dword ptr [header_mode]],  2
	jmp	.label_1138
	.section	.text
	.align	16
	#Procedure 0x40e440

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
	je	.label_1239
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_1243
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	je	.label_1242
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_1240
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_1241
.label_1242:
	mov	byte ptr [rbp - 5], 0
.label_1241:
	jmp	.label_1239
.label_1239:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e4b3
	.globl sub_40e4b3
	.type sub_40e4b3, @function
sub_40e4b3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e4c0

	.globl triple_free
	.type triple_free, @function
triple_free:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi]
	call	free
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e4ef
	.globl sub_40e4ef
	.type sub_40e4ef, @function
sub_40e4ef:

	nop	
	.section	.text
	.align	16
	#Procedure 0x40e4f0

	.globl same_name
	.type same_name, @function
same_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	eax, 0xffffff9c
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	edi, eax
	mov	edx, eax
	call	same_nameat
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e521
	.globl sub_40e521
	.type sub_40e521, @function
sub_40e521:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e530

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
.label_1248:
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x71], cl
	cmp	byte ptr [rbp - 0x71], 0
	je	.label_1247
	movzx	eax, byte ptr [rbp - 0x71]
	cmp	eax, 0x7f
	jge	.label_1244
	movzx	eax, byte ptr [rbp - 0x71]
	mov	ecx, eax
	mov	qword ptr [rbp - 0x88], rcx
	jmp	.label_1246
.label_1244:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x88], rax
.label_1246:
	mov	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
.label_1247:
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_1245
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x30], rax
.label_1245:
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
	jne	.label_1249
	mov	rax, qword ptr [rbp - 0x28]
	add	rsp, 0x90
	pop	rbp
	ret	
.label_1249:
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
	jmp	.label_1248
	.section	.text
	.align	16
	#Procedure 0x40e678
	.globl sub_40e678
	.type sub_40e678, @function
sub_40e678:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e680

	.globl seen_triple
	.type seen_triple, @function
seen_triple:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	cmp	qword ptr [rdx], 0
	jne	.label_1250
	xor	eax, eax
	mov	esi, eax
	movabs	rdx, OFFSET FLAT:triple_hash
	movabs	rcx, OFFSET FLAT:triple_compare_ino_str
	movabs	r8, OFFSET FLAT:triple_free
	mov	qword ptr [rbp - 0x28], 7
	mov	rdi, qword ptr [rbp - 0x28]
	call	hash_initialize
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax], 0
	jne	.label_1253
	call	xalloc_die
.label_1253:
	jmp	.label_1250
.label_1250:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	call	seen_file
	test	al, 1
	jne	.label_1251
	jmp	.label_1252
.label_1251:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1254
.label_1252:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	call	record_file
	mov	byte ptr [rbp - 1], 0
.label_1254:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e744
	.globl sub_40e744
	.type sub_40e744, @function
sub_40e744:

	nop	word ptr cs:[rax + rax]
.label_1258:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e756
	.globl sub_40e756
	.type sub_40e756, @function
sub_40e756:

	nop	word ptr [rax + rax]
.label_1256:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x18]
	jbe	.label_1260
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
.label_1260:
	jmp	.label_1255
.label_1255:
	jmp	.label_1257
.label_1257:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1259
	.section	.text
	.align	16
	#Procedure 0x40e78d

	.globl hash_get_max_bucket_length
	.type hash_get_max_bucket_length, @function
hash_get_max_bucket_length:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x18], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi]
	mov	qword ptr [rbp - 0x10], rdi
.label_1259:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1258
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax], 0
	je	.label_1255
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x28], 1
.label_1261:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1256
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1261
	.section	.text
	.align	16
	#Procedure 0x40e800
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x20
	sub	edi, 0x5e
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1262
	jmp	.label_1264
.label_1264:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1263
.label_1262:
	mov	byte ptr [rbp - 1], 0
.label_1263:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e832
	.globl sub_40e832
	.type sub_40e832, @function
sub_40e832:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e840

	.globl hash_get_n_buckets_used
	.type hash_get_n_buckets_used, @function
hash_get_n_buckets_used:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rdi + 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e852
	.globl sub_40e852
	.type sub_40e852, @function
sub_40e852:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e860

	.globl cdb_fchdir
	.type cdb_fchdir, @function
cdb_fchdir:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	edi, dword ptr [rdi]
	call	fchdir
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e87d
	.globl sub_40e87d
	.type sub_40e87d, @function
sub_40e87d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40e880

	.globl adjust_value
	.type adjust_value, @function
adjust_value:
	push	rbp
	mov	rbp, rsp
	fld	xword ptr [rbp + 0x10]
	mov	dword ptr [rbp - 4], edi
	fstp	xword ptr [rbp - 0x20]
	cmp	dword ptr [rbp - 4], 1
	je	.label_1265
	fld	xword ptr [rbp - 0x20]
	fld	xword ptr [word ptr [rip + label_1266]]
	fucomip	st(1)
	fstp	st(0)
	jbe	.label_1265
	jmp	.label_1267
.label_1267:
	xor	eax, eax
	mov	cl, al
	fld	xword ptr [rbp - 0x20]
	fld	dword ptr [dword ptr [rip + label_277]]
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
	jne	.label_1268
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x40], rax
	test	rax, rax
	setns	cl
	movzx	edx, cl
	mov	eax, edx
	fld	dword ptr [dword ptr [+ (rax * 4) + label_91]]
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
.label_1268:
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
	fld	dword ptr [dword ptr [+ (rdx * 4) + label_91]]
	fild	qword ptr [rbp - 0x48]
	faddp	st(1)
	fstp	xword ptr [rbp - 0x20]
.label_1265:
	fld	xword ptr [rbp - 0x20]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e993
	.globl sub_40e993
	.type sub_40e993, @function
sub_40e993:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e9a0

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
	jne	.label_1269
	test	byte ptr [rbp - 0x13], 1
	je	.label_1271
	test	byte ptr [rbp - 0x11], 1
	jne	.label_1269
	call	__errno_location
	cmp	dword ptr [rax], 9
	je	.label_1271
.label_1269:
	test	byte ptr [rbp - 0x13], 1
	jne	.label_1272
	call	__errno_location
	mov	dword ptr [rax], 0
.label_1272:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1270
.label_1271:
	mov	dword ptr [rbp - 4], 0
.label_1270:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ea49
	.globl sub_40ea49
	.type sub_40ea49, @function
sub_40ea49:

	nop	dword ptr [rax]
.label_1279:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x18], rax
.label_1276:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	jb	.label_1277
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40ea72
	.globl hash_get_first
	.type hash_get_first, @function
hash_get_first:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	qword ptr [rdi + 0x20], 0
	jne	.label_1279
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1273
.label_1273:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40eaa4
	.globl sub_40eaa4
	.type sub_40eaa4, @function
sub_40eaa4:

	nop	dword ptr [rax]
.label_1274:
	jmp	.label_1275
.label_1275:
	jmp	.label_1278
.label_1278:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1276
.label_1277:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax], 0
	je	.label_1274
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1273
.label_1281:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	call	fseeko
	mov	dword ptr [rbp - 4], eax
.label_1280:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40eafc
	.globl sub_40eafc
	.type sub_40eafc, @function
sub_40eafc:

	nop	word ptr cs:[rax + rax]
.label_1282:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax]
	and	ecx, 0xffffffef
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x90], rax
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1280
	.section	.text
	.align	16
	#Procedure 0x40eb30

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
	jne	.label_1281
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x20]
	jne	.label_1281
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_1281
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	mov	edi, eax
	call	lseek
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], -1
	jne	.label_1282
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1280
.label_1287:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rax], 0
.label_1286:
	jmp	.label_1283
.label_1283:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1284
.label_1291:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rcx]
	je	.label_1285
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x38]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rcx]
	call	rax
	test	al, 1
	jne	.label_1285
	jmp	.label_1292
.label_1285:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x40], rax
	test	byte ptr [rbp - 0x21], 1
	je	.label_1283
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax + 8], 0
	je	.label_1287
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rcx]
	mov	qword ptr [rax], rdx
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x48]
	call	free_entry
	jmp	.label_1286
.label_1292:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x38], rax
.label_1288:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax + 8], 0
	je	.label_1290
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rcx + 8]
	cmp	rax, qword ptr [rcx]
	je	.label_1289
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x38]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rcx + 8]
	mov	rsi, qword ptr [rcx]
	call	rax
	test	al, 1
	jne	.label_1289
	jmp	.label_1293
.label_1289:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x50], rax
	test	byte ptr [rbp - 0x21], 1
	je	.label_1294
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 8], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x58]
	call	free_entry
.label_1294:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1284
	.section	.text
	.align	16
	#Procedure 0x40ecf9

	.globl hash_find_entry
	.type hash_find_entry, @function
hash_find_entry:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	al, cl
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	and	al, 1
	mov	byte ptr [rbp - 0x21], al
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	safe_hasher
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	qword ptr [rdx], rax
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax], 0
	jne	.label_1291
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1284
.label_1290:
	mov	qword ptr [rbp - 8], 0
.label_1284:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ed5d
	.globl sub_40ed5d
	.type sub_40ed5d, @function
sub_40ed5d:

	nop	word ptr cs:[rax + rax]
.label_1293:
	jmp	.label_1295
.label_1295:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1288
	.section	.text
	.align	16
	#Procedure 0x40ed80

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
	#Procedure 0x40edbe
	.globl sub_40edbe
	.type sub_40edbe, @function
sub_40edbe:

	nop	
	.section	.text
	.align	16
	#Procedure 0x40edc0

	.globl gnu_mbswidth
	.type gnu_mbswidth, @function
gnu_mbswidth:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, rax
	call	strlen
	mov	edx, dword ptr [rbp - 0xc]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	mbsnwidth
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40edf8
	.globl sub_40edf8
	.type sub_40edf8, @function
sub_40edf8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ee00
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
	#Procedure 0x40ee37
	.globl sub_40ee37
	.type sub_40ee37, @function
sub_40ee37:

	nop	word ptr [rax + rax]
.label_1299:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	find_mount_point
	mov	qword ptr [rbp - 0xd8], rax
	cmp	qword ptr [rbp - 0xd8], 0
	je	.label_1296
	xor	eax, eax
	mov	ecx, eax
	xor	r9d, r9d
	mov	rsi, qword ptr [rbp - 0xd8]
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, rcx
	mov	qword ptr [rbp - 0xe8], rcx
	mov	r8, qword ptr [rbp - 0xe8]
	mov	dword ptr [rsp], 0
	mov	qword ptr [rsp + 8], 0
	mov	dword ptr [rsp + 0x10], 0
	call	get_dev
	mov	rdi, qword ptr [rbp - 0xd8]
	call	free
.label_1296:
	jmp	.label_1297
.label_1297:
	add	rsp, 0x100
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40eebc
	.globl sub_40eebc
	.type sub_40eebc, @function
sub_40eebc:

	nop	dword ptr [rax]
.label_1303:
	jmp	.label_1298
.label_1298:
	cmp	qword ptr [rbp - 0xb0], 0
	je	.label_1299
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rdi, qword ptr [rax]
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rsi, qword ptr [rax + 8]
	mov	rdx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0xb0]
	mov	r8, qword ptr [rax + 0x18]
	mov	rax, qword ptr [rbp - 0xb0]
	mov	r9b, byte ptr [rax + 0x28]
	and	r9b, 1
	movzx	r10d, r9b
	cmp	r10d, 0
	setne	r9b
	mov	rax, qword ptr [rbp - 0xb0]
	mov	r11b, byte ptr [rax + 0x28]
	shr	r11b, 1
	and	r11b, 1
	movzx	r10d, r11b
	cmp	r10d, 0
	setne	r11b
	and	r11b, 1
	movzx	r10d, r11b
	mov	rax, rsp
	mov	dword ptr [rax], r10d
	mov	dword ptr [rax + 0x10], 0
	mov	qword ptr [rax + 8], 0
	and	r9b, 1
	movzx	r9d, r9b
	call	get_dev
	jmp	.label_1297
.label_1320:
	mov	rax, qword ptr [rbp - 0xa8]
	mov	qword ptr [rbp - 0xb0], rax
.label_1301:
	jmp	.label_1300
.label_1300:
	jmp	.label_1321
.label_1321:
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rax, qword ptr [rax + 0x30]
	mov	qword ptr [rbp - 0xa8], rax
	jmp	.label_1322
.label_1305:
	jmp	.label_1306
.label_1306:
	mov	rdi, qword ptr [rbp - 0xb8]
	call	free
	cmp	qword ptr [rbp - 0xb0], 0
	je	.label_1309
	lea	rsi, [rbp - 0xa0]
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rdi, qword ptr [rax + 8]
	call	stat
	cmp	eax, 0
	jne	.label_1315
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx]
	je	.label_1309
.label_1315:
	mov	qword ptr [rbp - 0xb0], 0
.label_1309:
	cmp	qword ptr [rbp - 0xb0], 0
	jne	.label_1298
	mov	rax,  qword ptr [word ptr [mount_list]]
	mov	qword ptr [rbp - 0xa8], rax
.label_1322:
	cmp	qword ptr [rbp - 0xa8], 0
	je	.label_1303
	mov	rax, qword ptr [rbp - 0xa8]
	cmp	qword ptr [rax + 0x20], -1
	jne	.label_1307
	lea	rsi, [rbp - 0xa0]
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rdi, qword ptr [rax + 8]
	call	stat
	cmp	eax, 0
	jne	.label_1314
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	qword ptr [rcx + 0x20], rax
	jmp	.label_1318
.label_1314:
	call	__errno_location
	cmp	dword ptr [rax], 5
	jne	.label_1323
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rdx, qword ptr [rax + 8]
	mov	dword ptr [rbp - 0xdc], ecx
	call	quotearg_n_style_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_522
	mov	esi, dword ptr [rbp - 0xdc]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	dword ptr [dword ptr [exit_status]],  1
.label_1323:
	mov	rax, qword ptr [rbp - 0xa8]
	mov	qword ptr [rax + 0x20], -2
.label_1318:
	jmp	.label_1307
.label_1307:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0xa8]
	cmp	rax, qword ptr [rcx + 0x20]
	jne	.label_1300
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rdi, qword ptr [rax + 0x18]
	mov	ecx, OFFSET FLAT:label_1308
	mov	esi, ecx
	call	strcmp
	cmp	eax, 0
	je	.label_1300
	cmp	qword ptr [rbp - 0xb0], 0
	je	.label_1302
	mov	rax, qword ptr [rbp - 0xb0]
	mov	cl, byte ptr [rax + 0x28]
	and	cl, 1
	movzx	edx, cl
	cmp	edx, 0
	jne	.label_1302
	mov	rax, qword ptr [rbp - 0xa8]
	mov	cl, byte ptr [rax + 0x28]
	and	cl, 1
	movzx	edx, cl
	cmp	edx, 0
	jne	.label_1300
.label_1302:
	lea	rsi, [rbp - 0xa0]
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rdi, qword ptr [rax + 8]
	call	stat
	cmp	eax, 0
	jne	.label_1319
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rcx, qword ptr [rbp - 0xa8]
	cmp	rax, qword ptr [rcx + 0x20]
	je	.label_1320
.label_1319:
	mov	rax, qword ptr [rbp - 0xa8]
	mov	qword ptr [rax + 0x20], -2
	jmp	.label_1301
	.section	.text
	.align	16
	#Procedure 0x40f196

	.globl get_point
	.type get_point, @function
get_point:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x100
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0xb0], 0
	mov	rdi, qword ptr [rbp - 8]
	call	canonicalize_file_name
	mov	qword ptr [rbp - 0xb8], rax
	cmp	qword ptr [rbp - 0xb8], 0
	je	.label_1306
	mov	rax, qword ptr [rbp - 0xb8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	jne	.label_1306
	mov	rdi, qword ptr [rbp - 0xb8]
	call	strlen
	mov	qword ptr [rbp - 0xc0], rax
	mov	qword ptr [rbp - 0xc8], 0
	mov	rax,  qword ptr [word ptr [mount_list]]
	mov	qword ptr [rbp - 0xa8], rax
.label_1310:
	cmp	qword ptr [rbp - 0xa8], 0
	je	.label_1305
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rdi, qword ptr [rax + 0x18]
	mov	ecx, OFFSET FLAT:label_1308
	mov	esi, ecx
	call	strcmp
	cmp	eax, 0
	je	.label_1316
	cmp	qword ptr [rbp - 0xb0], 0
	je	.label_1312
	mov	rax, qword ptr [rbp - 0xb0]
	mov	cl, byte ptr [rax + 0x28]
	and	cl, 1
	movzx	edx, cl
	cmp	edx, 0
	jne	.label_1312
	mov	rax, qword ptr [rbp - 0xa8]
	mov	cl, byte ptr [rax + 0x28]
	and	cl, 1
	movzx	edx, cl
	cmp	edx, 0
	jne	.label_1316
.label_1312:
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rdi, qword ptr [rax + 8]
	call	strlen
	mov	qword ptr [rbp - 0xd0], rax
	mov	rax, qword ptr [rbp - 0xc8]
	cmp	rax, qword ptr [rbp - 0xd0]
	ja	.label_1304
	mov	rax, qword ptr [rbp - 0xd0]
	cmp	rax, qword ptr [rbp - 0xc0]
	ja	.label_1304
	cmp	qword ptr [rbp - 0xd0], 1
	je	.label_1311
	mov	rax, qword ptr [rbp - 0xd0]
	cmp	rax, qword ptr [rbp - 0xc0]
	je	.label_1317
	mov	rax, qword ptr [rbp - 0xd0]
	mov	rcx, qword ptr [rbp - 0xb8]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x2f
	jne	.label_1304
.label_1317:
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rdi, qword ptr [rax + 8]
	mov	rsi, qword ptr [rbp - 0xb8]
	mov	rdx, qword ptr [rbp - 0xd0]
	call	strncmp
	cmp	eax, 0
	jne	.label_1304
.label_1311:
	mov	rax, qword ptr [rbp - 0xa8]
	mov	qword ptr [rbp - 0xb0], rax
	mov	rax, qword ptr [rbp - 0xd0]
	mov	qword ptr [rbp - 0xc8], rax
.label_1304:
	jmp	.label_1316
.label_1316:
	jmp	.label_1313
.label_1313:
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rax, qword ptr [rax + 0x30]
	mov	qword ptr [rbp - 0xa8], rax
	jmp	.label_1310
	.section	.text
	.align	16
	#Procedure 0x40f360

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
	jne	.label_1324
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_1324:
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 0xa
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_1326
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_1325
.label_1326:
	call	abort
.label_1325:
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
	#Procedure 0x40f3d0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_1327
	call	gettext
	movabs	rsi, OFFSET FLAT:label_1329
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_1328
	mov	dword ptr [rbp - 4], eax
	call	gettext
	movabs	rsi, OFFSET FLAT:label_221
	movabs	rdx, OFFSET FLAT:label_222
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_1330
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
	#Procedure 0x40f456
	.globl sub_40f456
	.type sub_40f456, @function
sub_40f456:

	nop	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f460

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
	je	.label_1331
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1332
.label_1331:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1332
.label_1332:
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
	#Procedure 0x40f502
	.globl sub_40f502
	.type sub_40f502, @function
sub_40f502:

	nop	word ptr cs:[rax + rax]
.label_1337:
	jmp	.label_1333
.label_1333:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1335
.label_1334:
	mov	byte ptr [rbp - 1], 0
.label_1336:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f538

	.globl selected_fstype
	.type selected_fstype, @function
selected_fstype:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	cmp	qword ptr [word ptr [fs_select_list]],  0
	je	.label_1338
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_1339
.label_1338:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1336
.label_1339:
	mov	rax,  qword ptr [word ptr [fs_select_list]]
	mov	qword ptr [rbp - 0x18], rax
.label_1335:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1334
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax]
	call	strcmp
	cmp	eax, 0
	jne	.label_1337
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1336
	.section	.text
	.align	16
	#Procedure 0x40f5a0

	.globl default_block_size
	.type default_block_size, @function
default_block_size:
	push	rbp
	mov	rbp, rsp
	movabs	rdi, OFFSET FLAT:label_1219
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
	#Procedure 0x40f5c9
	.globl sub_40f5c9
	.type sub_40f5c9, @function
sub_40f5c9:

	nop	dword ptr [rax]
.label_1342:
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
	je	.label_1340
	mov	eax, dword ptr [rbp - 0x4c]
	or	eax, 2
	mov	dword ptr [rbp - 0x4c], eax
.label_1340:
	jmp	.label_1341
.label_1341:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
.label_1359:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xd0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f627
	.globl sub_40f627
	.type sub_40f627, @function
sub_40f627:

	nop	dword ptr [rax + rax]
.label_1677:
	lea	rdi, [rbp - 0x48]
	mov	edx, 5
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1342
.label_1675:
	lea	rdi, [rbp - 0x48]
	mov	edx, 1
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1342
.label_1365:
	lea	rax, [rbp - 0x38]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_1357
.label_1357:
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x40], rax
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x59], cl
.label_1369:
	movzx	eax, byte ptr [rbp - 0x59]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x78], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x78]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x2000
	cmp	edx, 0
	je	.label_1366
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x58], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x59], dl
	jmp	.label_1369
	.section	.text
	.align	16
	#Procedure 0x40f6d3

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
	jg	.label_1343
	cmp	dword ptr [rbp - 0x1c], 0x24
	jg	.label_1343
	jmp	.label_1346
.label_1674:
	lea	rdi, [rbp - 0x48]
	mov	edx, 3
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1342
.label_1354:
	call	__errno_location
	cmp	dword ptr [rax], 0
	je	.label_1352
	call	__errno_location
	cmp	dword ptr [rax], 0x22
	je	.label_1355
	mov	dword ptr [rbp - 4], 4
	jmp	.label_1359
.label_1683:
	lea	rdi, [rbp - 0x48]
	mov	esi, 2
	call	bkm_scale
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1342
.label_1676:
	lea	rdi, [rbp - 0x48]
	mov	edx, 2
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1342
.label_1672:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x400
	call	bkm_scale
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1342
.label_1346:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1365
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_1357
.label_1361:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_1341
	mov	dword ptr [rbp - 0x60], 0x400
	mov	dword ptr [rbp - 0x64], 1
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	jne	.label_1375
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	or	edx, 2
	mov	dword ptr [rbp - 4], edx
	jmp	.label_1359
.label_1678:
	lea	rdi, [rbp - 0x48]
	mov	edx, 4
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1342
.label_1680:
	lea	rdi, [rbp - 0x48]
	mov	edx, 7
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1342
.label_1681:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x200
	call	bkm_scale
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1342
.label_1355:
	mov	dword ptr [rbp - 0x4c], 1
.label_1352:
	jmp	.label_1345
.label_1345:
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_1361
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
	jmp	.label_1359
.label_1356:
	mov	dword ptr [rbp - 4], 4
	jmp	.label_1359
.label_1375:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x45
	mov	dword ptr [rbp - 0x7c], ecx
	mov	dword ptr [rbp - 0x80], edx
	je	.label_1348
	jmp	.label_1367
.label_1367:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0x84], eax
	je	.label_1348
	jmp	.label_1370
.label_1370:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x4b
	mov	dword ptr [rbp - 0x88], eax
	je	.label_1348
	jmp	.label_1373
.label_1373:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0x8c], eax
	je	.label_1348
	jmp	.label_1377
.label_1377:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x50
	mov	dword ptr [rbp - 0x90], eax
	je	.label_1348
	jmp	.label_1382
.label_1382:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x54
	mov	dword ptr [rbp - 0x94], eax
	je	.label_1348
	jmp	.label_1347
.label_1347:
	mov	eax, dword ptr [rbp - 0x7c]
	add	eax, -0x59
	sub	eax, 2
	mov	dword ptr [rbp - 0x98], eax
	jb	.label_1348
	jmp	.label_1360
.label_1360:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0x9c], eax
	je	.label_1348
	jmp	.label_1351
.label_1351:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x6b
	mov	dword ptr [rbp - 0xa0], eax
	je	.label_1348
	jmp	.label_1374
.label_1374:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0xa4], eax
	je	.label_1348
	jmp	.label_1363
.label_1363:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0xa8], eax
	jne	.label_1349
	jmp	.label_1348
.label_1348:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x30]
	call	strchr
	cmp	rax, 0
	je	.label_1353
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 1]
	mov	edx, ecx
	sub	edx, 0x42
	mov	dword ptr [rbp - 0xac], ecx
	mov	dword ptr [rbp - 0xb0], edx
	je	.label_1372
	jmp	.label_1371
.label_1371:
	mov	eax, dword ptr [rbp - 0xac]
	sub	eax, 0x44
	mov	dword ptr [rbp - 0xb4], eax
	je	.label_1372
	jmp	.label_1376
.label_1376:
	mov	eax, dword ptr [rbp - 0xac]
	sub	eax, 0x69
	mov	dword ptr [rbp - 0xb8], eax
	jne	.label_1350
	jmp	.label_1378
.label_1378:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x42
	jne	.label_1344
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, 2
	mov	dword ptr [rbp - 0x64], eax
.label_1344:
	jmp	.label_1350
.label_1364:
	jmp	.label_1345
.label_1368:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rbp - 0x1c]
	call	strtoumax
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x10]
	jne	.label_1354
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_1356
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_1356
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	je	.label_1356
	mov	qword ptr [rbp - 0x48], 1
	jmp	.label_1364
.label_1679:
	lea	rdi, [rbp - 0x48]
	mov	edx, 8
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1342
.label_1366:
	movzx	eax, byte ptr [rbp - 0x59]
	cmp	eax, 0x2d
	jne	.label_1368
	mov	dword ptr [rbp - 4], 4
	jmp	.label_1359
.label_1362:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	or	edx, 2
	mov	dword ptr [rbp - 4], edx
	jmp	.label_1359
.label_1673:
	lea	rdi, [rbp - 0x48]
	mov	edx, 6
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1342
.label_1343:
	movabs	rdi, OFFSET FLAT:label_1379
	movabs	rsi, OFFSET FLAT:label_1380
	mov	edx, 0x54
	movabs	rcx, OFFSET FLAT:label_1381
	call	__assert_fail
.label_1372:
	mov	dword ptr [rbp - 0x60], 0x3e8
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, 1
	mov	dword ptr [rbp - 0x64], eax
.label_1350:
	jmp	.label_1353
.label_1353:
	jmp	.label_1349
.label_1349:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x42
	mov	eax, ecx
	sub	ecx, 0x35
	mov	qword ptr [rbp - 0xc0], rax
	mov	dword ptr [rbp - 0xc4], ecx
	ja	.label_1362
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1358]]
	jmp	rcx
.label_1682:
	mov	dword ptr [rbp - 0x68], 0
	jmp	.label_1342
	.section	.text
	.align	16
	#Procedure 0x40fb80
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rax,  qword ptr [word ptr [default_tuning]]
	mov	qword ptr [rdi], rax
	mov	rax,  qword ptr [word ptr [label_1383]]
	mov	qword ptr [rdi + 8], rax
	mov	ecx,  dword ptr [dword ptr [label_1384]]
	mov	dword ptr [rdi + 0x10], ecx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40fbaf
	.globl sub_40fbaf
	.type sub_40fbaf, @function
sub_40fbaf:

	nop	
	.section	.text
	.align	16
	#Procedure 0x40fbb0

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
	#Procedure 0x40fbd0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_1385
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_1385
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1387
.label_1385:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	realloc
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_1386
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1386
	call	xalloc_die
.label_1386:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_1387:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40fc4a
	.globl sub_40fc4a
	.type sub_40fc4a, @function
sub_40fc4a:

	nop	word ptr [rax + rax]
.label_1393:
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40fc56
	.globl sub_40fc56
	.type sub_40fc56, @function
sub_40fc56:

	nop	
.label_1389:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx,  qword ptr [word ptr [table]]
	mov	rcx, qword ptr [rdx + rcx*8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x38], rax
.label_1395:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rdi, qword ptr [rbp - 0x18]
	mov	dword ptr [rbp - 0x3c], eax
	call	free
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1391
	.section	.text
	.align	16
	#Procedure 0x40fca4

	.globl print_table
	.type print_table, @function
print_table:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 8], 0
.label_1394:
	mov	rax, qword ptr [rbp - 8]
	cmp	rax,  qword ptr [word ptr [nrows]]
	jae	.label_1393
	mov	qword ptr [rbp - 0x10], 0
.label_1391:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax,  qword ptr [word ptr [ncolumns]]
	jae	.label_1390
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx,  qword ptr [word ptr [table]]
	mov	rcx, qword ptr [rdx + rcx*8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_1388
	mov	edi, 0x20
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x2c], eax
.label_1388:
	mov	dword ptr [rbp - 0x1c], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx,  qword ptr [word ptr [ncolumns]]
	sub	rcx, 1
	cmp	rax, rcx
	jne	.label_1392
	mov	dword ptr [rbp - 0x1c], 8
.label_1392:
	lea	rsi, [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx,  qword ptr [word ptr [columns]]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rax, qword ptr [rax + 0x20]
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx,  qword ptr [word ptr [columns]]
	mov	rax, qword ptr [rcx + rax*8]
	mov	edx, dword ptr [rax + 0x28]
	mov	ecx, dword ptr [rbp - 0x1c]
	call	ambsalign
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1389
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1395
.label_1390:
	mov	edi, 0xa
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x40], eax
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1394
	.section	.text
	.align	16
	#Procedure 0x40fdb0

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
	jne	.label_1396
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_1400
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
.label_1400:
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1397
	call	xalloc_die
.label_1396:
	movabs	rax, 0x5555555555555554
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_1398
	call	xalloc_die
.label_1397:
	jmp	.label_1399
.label_1398:
	mov	rax, qword ptr [rbp - 0x20]
	shr	rax, 1
	add	rax, 1
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_1399:
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
	#Procedure 0x40fe97
	.globl sub_40fe97
	.type sub_40fe97, @function
sub_40fe97:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40fea0

	.globl has_uuid_suffix
	.type has_uuid_suffix, @function
has_uuid_suffix:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	cl, al
	mov	eax, 0x24
	mov	edx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rdx
	mov	byte ptr [rbp - 0x19], cl
	call	strlen
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x10]
	mov	cl, byte ptr [rbp - 0x19]
	mov	byte ptr [rbp - 0x1a], cl
	jae	.label_1402
	movabs	rsi, OFFSET FLAT:label_1401
	mov	rax, qword ptr [rbp - 8]
	add	rax, qword ptr [rbp - 0x10]
	add	rax, -0x24
	mov	rdi, rax
	call	strspn
	cmp	rax, 0x24
	sete	cl
	mov	byte ptr [rbp - 0x1a], cl
.label_1402:
	mov	al, byte ptr [rbp - 0x1a]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ff15
	.globl sub_40ff15
	.type sub_40ff15, @function
sub_40ff15:

	nop	word ptr cs:[rax + rax]
.label_1423:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0x4000
	jne	.label_1408
	mov	eax, 0x90
	mov	edx, eax
	lea	rcx, [rbp - 0xb8]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, rcx
	call	memcpy
	mov	rdi, qword ptr [rbp - 0x10]
	call	chdir
	cmp	eax, 0
	jge	.label_1419
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_1412
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x18c], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x198], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x18c]
	mov	rdx, qword ptr [rbp - 0x198]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1406
.label_1411:
	call	xgetcwd
	mov	qword ptr [rbp - 0xc0], rax
.label_1403:
	call	__errno_location
	lea	rdi, [rbp - 0x28]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x184], ecx
	call	restore_cwd
	cmp	eax, 0
	je	.label_1420
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_1421
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x1e4], esi
	call	gettext
.label_1685:
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x1e4]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_1408:
	mov	rdi, qword ptr [rbp - 0x10]
	call	dir_name
	mov	qword ptr [rbp - 0xc8], rax
	mov	rax, qword ptr [rbp - 0xc8]
	mov	qword ptr [rbp - 0xd8], rax
	mov	rdi, rax
	call	strlen
	mov	rdi, rax
	inc	rdi
	mov	qword ptr [rbp - 0xe0], rdi
	add	rax, 0x10
	and	rax, 0xfffffffffffffff0
	mov	rdi, rsp
	sub	rdi, rax
	mov	rsp, rdi
	mov	qword ptr [rbp - 0xe8], rdi
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rsi, qword ptr [rbp - 0xd8]
	mov	rdx, qword ptr [rbp - 0xe0]
	mov	rdi, rax
	mov	qword ptr [rbp - 0x1a0], rax
	call	memcpy
	mov	rax, qword ptr [rbp - 0x1a0]
	mov	qword ptr [rbp - 0xf0], rax
	mov	rdx, qword ptr [rbp - 0xf0]
	mov	qword ptr [rbp - 0xd0], rdx
	mov	rdi, qword ptr [rbp - 0xc8]
	call	free
	mov	rdi, qword ptr [rbp - 0xd0]
	call	chdir
	cmp	eax, 0
	jge	.label_1415
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_1412
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x1a4], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0xd0]
	mov	qword ptr [rbp - 0x1b0], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x1a4]
	mov	rdx, qword ptr [rbp - 0x1b0]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1406
.label_1415:
	movabs	rdi, OFFSET FLAT:label_87
	lea	rsi, [rbp - 0xb8]
	call	stat
	cmp	eax, 0
	jge	.label_1413
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_1404
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x1b4], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0xd0]
	mov	qword ptr [rbp - 0x1c0], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x1b4]
	mov	rdx, qword ptr [rbp - 0x1c0]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_1403
.label_1409:
	mov	eax, 0x90
	mov	edx, eax
	lea	rcx, [rbp - 0x180]
	lea	rsi, [rbp - 0xb8]
	mov	rdi, rsi
	mov	rsi, rcx
	call	memcpy
	jmp	.label_1410
.label_1416:
	mov	rax, qword ptr [rbp - 0x180]
	cmp	rax, qword ptr [rbp - 0xb8]
	jne	.label_1414
	mov	rax, qword ptr [rbp - 0x178]
	cmp	rax, qword ptr [rbp - 0xb0]
	jne	.label_1417
.label_1414:
	jmp	.label_1411
.label_1420:
	lea	rdi, [rbp - 0x28]
	call	free_cwd
	mov	eax, dword ptr [rbp - 0x184]
	mov	dword ptr [rbp - 0x1e8], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x1e8]
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0xc0]
	mov	qword ptr [rbp - 8], rax
.label_1406:
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410217
	.globl sub_410217
	.type sub_410217, @function
sub_410217:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x41021a
	.globl sub_41021a
	.type sub_41021a, @function
sub_41021a:

	nop	dword ptr [rax + rax]
.label_1413:
	jmp	.label_1405
.label_1405:
	jmp	.label_1410
.label_1410:
	movabs	rdi, OFFSET FLAT:label_1407
	lea	rsi, [rbp - 0x180]
	call	stat
	cmp	eax, 0
	jge	.label_1416
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_1418
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x1c4], esi
	call	gettext
	mov	edi, 4
	movabs	rsi, OFFSET FLAT:label_1407
	mov	qword ptr [rbp - 0x1d0], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x1c4]
	mov	rdx, qword ptr [rbp - 0x1d0]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_1403
	.section	.text
	.align	16
	#Procedure 0x4102a0

	.globl find_mount_point
	.type find_mount_point, @function
find_mount_point:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x1f0
	lea	rax, [rbp - 0x28]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0xc0], 0
	mov	rdi, rax
	call	save_cwd
	cmp	eax, 0
	je	.label_1423
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_1422
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x188], esi
	call	gettext
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x188]
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1406
.label_1419:
	jmp	.label_1405
.label_1417:
	movabs	rdi, OFFSET FLAT:label_1407
	call	chdir
	cmp	eax, 0
	jge	.label_1409
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_1412
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x1d4], esi
	call	gettext
	mov	edi, 4
	movabs	rsi, OFFSET FLAT:label_1407
	mov	qword ptr [rbp - 0x1e0], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x1d4]
	mov	rdx, qword ptr [rbp - 0x1e0]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_1403
.label_1442:
	mov	rdi,  qword ptr [word ptr [devlist_table]]
	call	hash_free
	mov	qword ptr [word ptr [devlist_table]],  0
.label_1445:
	add	rsp, 0xf0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4103a2
	.globl sub_4103a2
	.type sub_4103a2, @function
sub_4103a2:

	nop	dword ptr [rax]
.label_1450:
	xor	eax, eax
	mov	esi, eax
	movabs	rdx, OFFSET FLAT:devlist_hash
	movabs	rcx, OFFSET FLAT:devlist_compare
	movabs	r8, OFFSET FLAT:devlist_free
	movsxd	rdi, dword ptr [rbp - 0x1c]
	call	hash_initialize
	mov	qword ptr [word ptr [devlist_table]],  rax
	cmp	qword ptr [word ptr [devlist_table]],  0
	jne	.label_1443
	call	xalloc_die
.label_1425:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x30]
	mov	qword ptr [rbp - 0x10], rax
.label_1441:
	jmp	.label_1448
.label_1433:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0xb8], rax
.label_1436:
	jmp	.label_1426
.label_1426:
	jmp	.label_1429
.label_1429:
	jmp	.label_1432
.label_1432:
	cmp	qword ptr [rbp - 0xb8], 0
	je	.label_1434
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x30]
	mov	qword ptr [rbp - 0x10], rax
	test	byte ptr [rbp - 1], 1
	jne	.label_1447
	mov	rdi, qword ptr [rbp - 0xb8]
	call	free_mount_entry
.label_1447:
	jmp	.label_1441
	.section	.text
	.align	16
	#Procedure 0x410450

	.globl filter_mount_list
	.type filter_mount_list, @function
filter_mount_list:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xf0
	mov	al, dil
	and	al, 1
	mov	byte ptr [rbp - 1], al
	mov	qword ptr [rbp - 0x18], 0
	mov	dword ptr [rbp - 0x1c], 0
	mov	rcx,  qword ptr [word ptr [mount_list]]
	mov	qword ptr [rbp - 0x10], rcx
.label_1449:
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_1450
	mov	eax, dword ptr [rbp - 0x1c]
	add	eax, 1
	mov	dword ptr [rbp - 0x1c], eax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x30]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1449
.label_1443:
	mov	rax,  qword ptr [word ptr [mount_list]]
	mov	qword ptr [rbp - 0x10], rax
.label_1448:
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_1438
	mov	qword ptr [rbp - 0xb8], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	cl, byte ptr [rax + 0x28]
	shr	cl, 1
	and	cl, 1
	movzx	edx, cl
	cmp	edx, 0
	je	.label_1439
	test	byte ptr [byte ptr [show_local_fs]],  1
	jne	.label_1428
.label_1439:
	mov	rax, qword ptr [rbp - 0x10]
	mov	cl, byte ptr [rax + 0x28]
	and	cl, 1
	movzx	edx, cl
	cmp	edx, 0
	je	.label_1424
	test	byte ptr [byte ptr [show_all_fs]],  1
	jne	.label_1424
	test	byte ptr [byte ptr [show_listed_fs]],  1
	je	.label_1428
.label_1424:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax + 0x18]
	call	selected_fstype
	test	al, 1
	jne	.label_1437
	jmp	.label_1428
.label_1437:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax + 0x18]
	call	excluded_fstype
	test	al, 1
	jne	.label_1428
	lea	rsi, [rbp - 0xb0]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax + 8]
	call	stat
	mov	ecx, 0xffffffff
	cmp	ecx, eax
	jne	.label_1446
.label_1428:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x20]
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_1432
.label_1427:
	mov	esi, 0x2f
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	call	strchr
	cmp	rax, 0
	je	.label_1430
	mov	esi, 0x2f
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rax, qword ptr [rax + 8]
	mov	rdi, qword ptr [rax]
	call	strchr
	cmp	rax, 0
	je	.label_1440
.label_1430:
	test	byte ptr [rbp - 0xc1], 1
	je	.label_1431
	test	byte ptr [rbp - 0xc2], 1
	je	.label_1440
.label_1431:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rax, qword ptr [rax + 8]
	mov	rdi, qword ptr [rax]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rax]
	call	strcmp
	cmp	eax, 0
	je	.label_1433
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax + 8]
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rax, qword ptr [rax + 8]
	mov	rsi, qword ptr [rax + 8]
	call	strcmp
	cmp	eax, 0
	jne	.label_1433
.label_1440:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0xb8], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0xc0]
	mov	qword ptr [rcx + 8], rax
	jmp	.label_1436
.label_1434:
	mov	eax, 0x18
	mov	edi, eax
	call	xmalloc
	mov	qword ptr [rbp - 0xd0], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 0xd0]
	mov	qword ptr [rdi + 8], rax
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rdi, qword ptr [rbp - 0xd0]
	mov	qword ptr [rdi], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 0xd0]
	mov	qword ptr [rdi + 0x10], rax
	mov	rax, qword ptr [rbp - 0xd0]
	mov	qword ptr [rbp - 0x18], rax
	mov	rdi,  qword ptr [word ptr [devlist_table]]
	mov	rax, qword ptr [rbp - 0xd0]
	mov	rsi, rax
	call	hash_insert
	cmp	rax, 0
	jne	.label_1425
	call	xalloc_die
.label_1438:
	test	byte ptr [rbp - 1], 1
	jne	.label_1445
	mov	qword ptr [word ptr [mount_list]],  0
.label_1444:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1442
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax,  qword ptr [word ptr [mount_list]]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x30], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [word ptr [mount_list]],  rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1444
.label_1446:
	mov	rdi, qword ptr [rbp - 0xb0]
	call	devlist_for_dev
	mov	qword ptr [rbp - 0xc0], rax
	cmp	qword ptr [rbp - 0xc0], 0
	je	.label_1429
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0xc0]
	mov	rdx, qword ptr [rdx + 8]
	mov	rdi, qword ptr [rdx + 8]
	mov	byte ptr [rbp - 0xd1], cl
	call	strlen
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdx + 8]
	mov	qword ptr [rbp - 0xe0], rax
	call	strlen
	mov	rdx, qword ptr [rbp - 0xe0]
	cmp	rdx, rax
	seta	cl
	and	cl, 1
	mov	byte ptr [rbp - 0xc1], cl
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rax, qword ptr [rax + 8]
	cmp	qword ptr [rax + 0x10], 0
	mov	cl, byte ptr [rbp - 0xd1]
	mov	byte ptr [rbp - 0xe1], cl
	je	.label_1435
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x10]
	cmp	qword ptr [rdx + 0x10], 0
	mov	byte ptr [rbp - 0xe1], cl
	je	.label_1435
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rax, qword ptr [rax + 8]
	mov	rdi, qword ptr [rax + 0x10]
	call	strlen
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi + 0x10]
	mov	qword ptr [rbp - 0xf0], rax
	call	strlen
	mov	rdi, qword ptr [rbp - 0xf0]
	cmp	rdi, rax
	setb	cl
	mov	byte ptr [rbp - 0xe1], cl
.label_1435:
	mov	al, byte ptr [rbp - 0xe1]
	and	al, 1
	mov	byte ptr [rbp - 0xc2], al
	test	byte ptr [byte ptr [print_grand_total]],  1
	jne	.label_1427
	mov	rax, qword ptr [rbp - 0x10]
	mov	cl, byte ptr [rax + 0x28]
	shr	cl, 1
	and	cl, 1
	movzx	edx, cl
	cmp	edx, 0
	je	.label_1427
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rax, qword ptr [rax + 8]
	mov	cl, byte ptr [rax + 0x28]
	shr	cl, 1
	and	cl, 1
	movzx	edx, cl
	cmp	edx, 0
	je	.label_1427
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rax, qword ptr [rax + 8]
	mov	rdi, qword ptr [rax]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rax]
	call	strcmp
	cmp	eax, 0
	je	.label_1427
	jmp	.label_1426
	.section	.text
	.align	16
	#Procedure 0x410870
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
	#Procedure 0x41089f
	.globl sub_41089f
	.type sub_41089f, @function
sub_41089f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4108a0

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	push	rbp
	mov	rbp, rsp
	mov	edi, 1
	call	usage
	.section	.text
	.align	16
	#Procedure 0x4108ae
	.globl sub_4108ae
	.type sub_4108ae, @function
sub_4108ae:

	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4108b0

	.globl dir_name
	.type dir_name, @function
dir_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	mdir_name
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_1451
	call	xalloc_die
.label_1451:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4108e3
	.globl sub_4108e3
	.type sub_4108e3, @function
sub_4108e3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4108f0

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
	#Procedure 0x410926
	.globl sub_410926
	.type sub_410926, @function
sub_410926:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410930
	.globl rotr8
	.type rotr8, @function
rotr8:

	push	rbp
	mov	rbp, rsp
	mov	al, dil
	mov	edi, 8
	mov	byte ptr [rbp - 1], al
	mov	dword ptr [rbp - 8], esi
	movzx	esi, byte ptr [rbp - 1]
	mov	ecx, dword ptr [rbp - 8]
	sar	esi, cl
	movzx	edx, byte ptr [rbp - 1]
	sub	edi, dword ptr [rbp - 8]
	mov	ecx, edi
	shl	edx, cl
	or	esi, edx
	and	esi, 0xff
	mov	al, sil
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410966
	.globl sub_410966
	.type sub_410966, @function
sub_410966:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410970

	.globl hash_insert_if_absent
	.type hash_insert_if_absent, @function
hash_insert_if_absent:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xc0
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_1466
	call	abort
.label_1457:
	lea	rdx, [rbp - 0x30]
	xor	ecx, ecx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	hash_find_entry
	cmp	rax, 0
	je	.label_1470
	call	abort
.label_1455:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, rax
	shr	rcx, 1
	mov	edx, eax
	and	edx, 1
	mov	esi, edx
	or	rsi, rcx
	cvtsi2ss	xmm0, rsi
	addss	xmm0, xmm0
	cvtsi2ss	xmm1, rax
	test	rax, rax
	movss	dword ptr [rbp - 0xb0], xmm1
	movss	dword ptr [rbp - 0xb4], xmm0
	js	.label_1452
	movss	xmm0, dword ptr [rbp - 0xb0]
	movss	dword ptr [rbp - 0xb4], xmm0
.label_1452:
	movss	xmm0, dword ptr [rbp - 0xb4]
	mov	rax, qword ptr [rbp - 0x38]
	mulss	xmm0, dword ptr [rax + 0xc]
	mov	rax, qword ptr [rbp - 0x38]
	mulss	xmm0, dword ptr [rax + 8]
	movss	dword ptr [rbp - 0xac], xmm0
.label_1461:
	movss	xmm0, dword ptr [rbp - 0xac]
	movss	xmm1,  dword ptr [dword ptr [rip + label_479]]
	movss	dword ptr [rbp - 0x3c], xmm0
	movss	xmm0, dword ptr [rbp - 0x3c]
	ucomiss	xmm0, xmm1
	jb	.label_1464
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1453
.label_1470:
	jmp	.label_1458
.label_1458:
	jmp	.label_1456
.label_1456:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax], 0
	je	.label_1462
	mov	rdi, qword ptr [rbp - 0x10]
	call	allocate_entry
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x48], 0
	jne	.label_1469
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1453
.label_1464:
	mov	rdi, qword ptr [rbp - 0x10]
	movss	xmm0, dword ptr [rbp - 0x3c]
	movss	xmm1,  dword ptr [dword ptr [rip + label_277]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rax, rcx
	cvttss2si	rcx, xmm0
	ucomiss	xmm1, xmm0
	cmova	rax, rcx
	mov	rsi, rax
	call	hash_rehash
	test	al, 1
	jne	.label_1457
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1453
.label_1460:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x10]
	mov	rdx, qword ptr [rax + 0x18]
	mov	rsi, rdx
	shr	rsi, 1
	mov	edi, edx
	and	edi, 1
	mov	r8d, edi
	or	r8, rsi
	cvtsi2ss	xmm0, r8
	addss	xmm0, xmm0
	cvtsi2ss	xmm1, rdx
	test	rdx, rdx
	mov	qword ptr [rbp - 0x50], rax
	mov	qword ptr [rbp - 0x58], rcx
	movss	dword ptr [rbp - 0x5c], xmm1
	movss	dword ptr [rbp - 0x60], xmm0
	js	.label_1463
	movss	xmm0, dword ptr [rbp - 0x5c]
	movss	dword ptr [rbp - 0x60], xmm0
.label_1463:
	movss	xmm0, dword ptr [rbp - 0x60]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rax + 0x28]
	movss	xmm1, dword ptr [rcx + 8]
	mov	rcx, qword ptr [rbp - 0x58]
	shr	rcx, 1
	mov	rdx, qword ptr [rbp - 0x58]
	mov	esi, edx
	and	esi, 1
	mov	edi, esi
	or	rdi, rcx
	cvtsi2ss	xmm2, rdi
	addss	xmm2, xmm2
	cvtsi2ss	xmm3, rdx
	test	rdx, rdx
	movss	dword ptr [rbp - 0x64], xmm0
	movss	dword ptr [rbp - 0x68], xmm1
	movss	dword ptr [rbp - 0x6c], xmm3
	movss	dword ptr [rbp - 0x70], xmm2
	js	.label_1467
	movss	xmm0, dword ptr [rbp - 0x6c]
	movss	dword ptr [rbp - 0x70], xmm0
.label_1467:
	movss	xmm0, dword ptr [rbp - 0x70]
	movss	xmm1, dword ptr [rbp - 0x68]
	mulss	xmm1, xmm0
	movss	xmm0, dword ptr [rbp - 0x64]
	ucomiss	xmm0, xmm1
	jbe	.label_1456
	mov	rdi, qword ptr [rbp - 0x10]
	call	check_tuning
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rdi + 0x10]
	mov	rdx, qword ptr [rdi + 0x18]
	mov	rsi, rdx
	shr	rsi, 1
	mov	r8d, edx
	and	r8d, 1
	mov	r9d, r8d
	or	r9, rsi
	cvtsi2ss	xmm0, r9
	addss	xmm0, xmm0
	cvtsi2ss	xmm1, rdx
	test	rdx, rdx
	mov	byte ptr [rbp - 0x71], al
	mov	qword ptr [rbp - 0x80], rdi
	mov	qword ptr [rbp - 0x88], rcx
	movss	dword ptr [rbp - 0x8c], xmm1
	movss	dword ptr [rbp - 0x90], xmm0
	js	.label_1468
	movss	xmm0, dword ptr [rbp - 0x8c]
	movss	dword ptr [rbp - 0x90], xmm0
.label_1468:
	movss	xmm0, dword ptr [rbp - 0x90]
	mov	rax, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rax + 0x28]
	movss	xmm1, dword ptr [rcx + 8]
	mov	rcx, qword ptr [rbp - 0x88]
	shr	rcx, 1
	mov	rdx, qword ptr [rbp - 0x88]
	mov	esi, edx
	and	esi, 1
	mov	edi, esi
	or	rdi, rcx
	cvtsi2ss	xmm2, rdi
	addss	xmm2, xmm2
	cvtsi2ss	xmm3, rdx
	test	rdx, rdx
	movss	dword ptr [rbp - 0x94], xmm0
	movss	dword ptr [rbp - 0x98], xmm1
	movss	dword ptr [rbp - 0x9c], xmm3
	movss	dword ptr [rbp - 0xa0], xmm2
	js	.label_1459
	movss	xmm0, dword ptr [rbp - 0x9c]
	movss	dword ptr [rbp - 0xa0], xmm0
.label_1459:
	movss	xmm0, dword ptr [rbp - 0xa0]
	movss	xmm1, dword ptr [rbp - 0x98]
	mulss	xmm1, xmm0
	movss	xmm0, dword ptr [rbp - 0x94]
	ucomiss	xmm0, xmm1
	jbe	.label_1458
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x38]
	test	byte ptr [rax + 0x10], 1
	je	.label_1455
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, rax
	shr	rcx, 1
	mov	edx, eax
	and	edx, 1
	mov	esi, edx
	or	rsi, rcx
	cvtsi2ss	xmm0, rsi
	addss	xmm0, xmm0
	cvtsi2ss	xmm1, rax
	test	rax, rax
	movss	dword ptr [rbp - 0xa4], xmm1
	movss	dword ptr [rbp - 0xa8], xmm0
	js	.label_1454
	movss	xmm0, dword ptr [rbp - 0xa4]
	movss	dword ptr [rbp - 0xa8], xmm0
.label_1454:
	movss	xmm0, dword ptr [rbp - 0xa8]
	mov	rax, qword ptr [rbp - 0x38]
	mulss	xmm0, dword ptr [rax + 0xc]
	movss	dword ptr [rbp - 0xac], xmm0
	jmp	.label_1461
.label_1462:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x20]
	add	rcx, 1
	mov	qword ptr [rax + 0x20], rcx
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x18]
	add	rcx, 1
	mov	qword ptr [rax + 0x18], rcx
	mov	dword ptr [rbp - 4], 1
.label_1453:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xc0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410d7d
	.globl sub_410d7d
	.type sub_410d7d, @function
sub_410d7d:

	nop	word ptr cs:[rax + rax]
.label_1469:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x20]
	add	rcx, 1
	mov	qword ptr [rax + 0x20], rcx
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1453
.label_1466:
	lea	rdx, [rbp - 0x30]
	xor	ecx, ecx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	hash_find_entry
	mov	qword ptr [rbp - 0x28], rax
	cmp	rax, 0
	je	.label_1460
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1465
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_1465:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1453
	.section	.text
	.align	16
	#Procedure 0x410e10

	.globl umaxtostr
	.type umaxtostr, @function
umaxtostr:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	add	rsi, 0x14
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi], 0
	cmp	qword ptr [rbp - 8], 0
	jae	.label_1471
	jmp	.label_1474
.label_1474:
	mov	eax, 0x30
	mov	ecx, eax
	mov	eax, 0xa
	mov	edx, eax
	mov	rax, qword ptr [rbp - 8]
	xor	esi, esi
	mov	qword ptr [rbp - 0x20], rdx
	mov	edx, esi
	mov	rdi, qword ptr [rbp - 0x20]
	div	rdi
	sub	rcx, rdx
	mov	r8b, cl
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, rcx
	add	rdx, -1
	mov	qword ptr [rbp - 0x18], rdx
	mov	byte ptr [rcx - 1], r8b
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 8]
	xor	edx, edx
	div	rcx
	mov	qword ptr [rbp - 8], rax
	cmp	rax, 0
	jne	.label_1474
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x18], rcx
	mov	byte ptr [rax - 1], 0x2d
	jmp	.label_1473
.label_1471:
	jmp	.label_1472
.label_1472:
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 8]
	xor	edx, edx
	div	rcx
	add	rdx, 0x30
	mov	sil, dl
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, rcx
	add	rdx, -1
	mov	qword ptr [rbp - 0x18], rdx
	mov	byte ptr [rcx - 1], sil
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 8]
	xor	edx, edx
	div	rcx
	mov	qword ptr [rbp - 8], rax
	cmp	rax, 0
	jne	.label_1472
	jmp	.label_1473
.label_1473:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410f07
	.globl sub_410f07
	.type sub_410f07, @function
sub_410f07:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410f10

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
	je	.label_1475
	xor	eax, eax
	mov	esi, eax
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 8]
	call	rpl_fseeko
	mov	dword ptr [rbp - 0xc], eax
.label_1475:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410f4b
	.globl sub_410f4b
	.type sub_410f4b, @function
sub_410f4b:

	nop	dword ptr [rax + rax]
.label_1484:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	call	rpl_fcntl_DUPFD
	mov	dword ptr [rbp - 0xc], eax
	cmp	dword ptr [rbp - 0xc], 0
	jl	.label_1480
	mov	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
.label_1480:
	jmp	.label_1477
.label_1477:
	jmp	.label_1479
.label_1483:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	call	rpl_fcntl_DUPFD
	mov	dword ptr [rbp - 0xc], eax
.label_1479:
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0xc]
	jg	.label_1476
	cmp	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	jne	.label_1476
	mov	esi, 1
	mov	edi, dword ptr [rbp - 0xc]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x10], eax
	cmp	dword ptr [rbp - 0x10], 0
	jl	.label_1481
	mov	esi, 2
	mov	edi, dword ptr [rbp - 0xc]
	mov	eax, dword ptr [rbp - 0x10]
	or	eax, 1
	mov	edx, eax
	mov	al, 0
	call	fcntl
	cmp	eax, -1
	jne	.label_1478
.label_1481:
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
.label_1478:
	jmp	.label_1476
.label_1476:
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41101a
	.globl sub_41101a
	.type sub_41101a, @function
sub_41101a:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411025

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
	jg	.label_1483
	mov	esi, 0x406
	mov	edi, dword ptr [rbp - 4]
	mov	edx, dword ptr [rbp - 8]
	mov	al, 0
	call	fcntl
	xor	edx, edx
	mov	dword ptr [rbp - 0xc], eax
	cmp	edx, dword ptr [rbp - 0xc]
	jle	.label_1482
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	je	.label_1484
.label_1482:
	mov	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_1477
.label_1491:
	mov	edi, 0xa
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	putc_unlocked
	mov	dword ptr [rbp - 0x50], eax
	add	rsp, 0x50
	pop	rbp
	ret	
.label_1488:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x48], rdi
	mov	rdi, rax
	call	quote
	movabs	rsi, OFFSET FLAT:label_1486
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x4c], eax
.label_1490:
	jmp	.label_1492
.label_1492:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_1485
	.section	.text
	.align	16
	#Procedure 0x4110ec

	.globl argmatch_valid
	.type argmatch_valid, @function
argmatch_valid:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	movabs	rax, OFFSET FLAT:label_1489
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
.label_1485:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_1491
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1487
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	imul	rcx, qword ptr [rbp - 0x20]
	add	rax, rcx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	memcmp
	cmp	eax, 0
	je	.label_1488
.label_1487:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x38], rdi
	mov	rdi, rax
	call	quote
	movabs	rsi, OFFSET FLAT:label_1493
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
	jmp	.label_1490
	.section	.text
	.align	16
	#Procedure 0x4111d0

	.globl emit_blocksize_note
	.type emit_blocksize_note, @function
emit_blocksize_note:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rax, OFFSET FLAT:label_1494
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, rax
	call	gettext
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0xc], eax
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x411205
	.globl sub_411205
	.type sub_411205, @function
sub_411205:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411210

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_1495
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
	#Procedure 0x411240

	.globl alloc_field
	.type alloc_field, @function
alloc_field:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	eax, 8
	mov	edx, eax
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi,  qword ptr [word ptr [ncolumns]]
	add	rsi, 1
	mov	qword ptr [word ptr [ncolumns]],  rsi
	mov	rsi,  qword ptr [word ptr [columns]]
	mov	rcx,  qword ptr [word ptr [ncolumns]]
	mov	rdi, rsi
	mov	rsi, rcx
	call	xnrealloc
	movabs	rcx, OFFSET FLAT:field_data
	mov	qword ptr [word ptr [columns]],  rax
	movsxd	rax, dword ptr [rbp - 4]
	imul	rax, rax, 0x30
	add	rcx, rax
	mov	rax,  qword ptr [word ptr [ncolumns]]
	sub	rax, 1
	mov	rdx,  qword ptr [word ptr [columns]]
	mov	qword ptr [rdx + rax*8], rcx
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_1499
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx,  qword ptr [word ptr [ncolumns]]
	sub	rcx, 1
	mov	rdx,  qword ptr [word ptr [columns]]
	mov	rcx, qword ptr [rdx + rcx*8]
	mov	qword ptr [rcx + 0x18], rax
.label_1499:
	movabs	rax, OFFSET FLAT:field_data
	movsxd	rcx, dword ptr [rbp - 4]
	imul	rcx, rcx, 0x30
	add	rax, rcx
	test	byte ptr [rax + 0x2c], 1
	je	.label_1496
	movabs	rdi, OFFSET FLAT:label_1497
	movabs	rsi, OFFSET FLAT:label_127
	mov	edx, 0x196
	movabs	rcx, OFFSET FLAT:label_1498
	call	__assert_fail
.label_1496:
	movabs	rax, OFFSET FLAT:field_data
	movsxd	rcx, dword ptr [rbp - 4]
	imul	rcx, rcx, 0x30
	add	rax, rcx
	mov	byte ptr [rax + 0x2c], 1
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41134b
	.globl sub_41134b
	.type sub_41134b, @function
sub_41134b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411350
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
	jb	.label_1500
	jmp	.label_1503
.label_1503:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x14], eax
	ja	.label_1501
	jmp	.label_1500
.label_1500:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1502
.label_1501:
	mov	byte ptr [rbp - 1], 0
.label_1502:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41139e
	.globl sub_41139e
	.type sub_41139e, @function
sub_41139e:

	nop	
.label_1505:
	mov	rdi,  qword ptr [word ptr [stderr]]
	call	close_stream
	cmp	eax, 0
	je	.label_1504
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_1504:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4113c8
	.globl sub_4113c8
	.type sub_4113c8, @function
sub_4113c8:

	nop	word ptr [rax + rax]
.label_1507:
	call	__errno_location
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_522
	mov	esi, dword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	mov	al, 0
	call	error
.label_1506:
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
	.section	.text
	.align	16
	#Procedure 0x4113fb

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rdi,  qword ptr [word ptr [stdout]]
	call	close_stream
	cmp	eax, 0
	je	.label_1505
	test	byte ptr [byte ptr [ignore_EPIPE]],  1
	je	.label_1509
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	je	.label_1505
.label_1509:
	movabs	rdi, OFFSET FLAT:label_1508
	call	gettext
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_1507
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	rdi,  qword ptr [word ptr [file_name]]
	mov	dword ptr [rbp - 0xc], esi
	call	quotearg_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_1510
	mov	r8, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_1506
.label_1518:
	jmp	.label_1511
.label_1511:
	jmp	.label_1516
.label_1516:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1517
.label_1512:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rbp - 0x28], rdx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1513
.label_1514:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
.label_1515:
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4114e8
	.globl sub_4114e8
	.type sub_4114e8, @function
sub_4114e8:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4114ef
	.globl hash_get_entries
	.type hash_get_entries, @function
hash_get_entries:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], 0
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx]
	mov	qword ptr [rbp - 0x30], rdx
.label_1517:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1514
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax], 0
	je	.label_1511
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x38], rax
.label_1513:
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_1518
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x20]
	jb	.label_1512
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1515
.label_1520:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1519
.label_1519:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x10]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41157e
	.globl sub_41157e
	.type sub_41157e, @function
sub_41157e:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411587
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
	je	.label_1520
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1519
	.section	.text
	.align	16
	#Procedure 0x4115b0

	.globl cdb_init
	.type cdb_init, @function
cdb_init:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	dword ptr [rdi], 0xffffff9c
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4115c4
	.globl sub_4115c4
	.type sub_4115c4, @function
sub_4115c4:

	nop	word ptr cs:[rax + rax]
.label_1533:
	movabs	rax, OFFSET FLAT:label_1521
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1522
.label_1528:
	movabs	rax, OFFSET FLAT:label_1526
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1522
	.section	.text
	.align	16
	#Procedure 0x4115f6

	.globl xstrtol_error
	.type xstrtol_error, @function
xstrtol_error:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	al, dl
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	byte ptr [rbp - 9], al
	mov	qword ptr [rbp - 0x18], rcx
	mov	qword ptr [rbp - 0x20], r8
	mov	dword ptr [rbp - 0x24], r9d
	mov	qword ptr [word ptr [rbp - 48]], OFFSET FLAT:label_1530
	mov	edx, dword ptr [rbp - 4]
	mov	esi, edx
	sub	esi, 1
	mov	dword ptr [rbp - 0x48], edx
	mov	dword ptr [rbp - 0x4c], esi
	je	.label_1531
	jmp	.label_1525
.label_1525:
	mov	eax, dword ptr [rbp - 0x48]
	add	eax, -2
	sub	eax, 2
	mov	dword ptr [rbp - 0x50], eax
	jb	.label_1528
	jmp	.label_1529
.label_1529:
	mov	eax, dword ptr [rbp - 0x48]
	sub	eax, 4
	mov	dword ptr [rbp - 0x54], eax
	je	.label_1533
	jmp	.label_1532
.label_1532:
	call	abort
.label_1531:
	movabs	rax, OFFSET FLAT:label_1527
	mov	qword ptr [rbp - 0x38], rax
.label_1522:
	cmp	dword ptr [rbp - 8], 0
	jge	.label_1523
	lea	rax, [rbp - 0x42]
	xor	ecx, ecx
	mov	edx, ecx
	mov	ecx, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x30]
	movsxd	rdi, ecx
	sub	rdx, rdi
	add	rsi, rdx
	mov	qword ptr [rbp - 0x30], rsi
	mov	r8b, byte ptr [rbp - 9]
	mov	byte ptr [rbp - 0x42], r8b
	mov	byte ptr [rbp - 0x41], 0
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_1524
.label_1523:
	movsxd	rax, dword ptr [rbp - 8]
	shl	rax, 5
	add	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x40], rax
.label_1524:
	mov	edi, dword ptr [rbp - 0x24]
	mov	rax, qword ptr [rbp - 0x38]
	mov	dword ptr [rbp - 0x58], edi
	mov	rdi, rax
	call	gettext
	xor	esi, esi
	mov	rcx, qword ptr [rbp - 0x30]
	mov	r8, qword ptr [rbp - 0x40]
	mov	r9, qword ptr [rbp - 0x20]
	mov	edi, dword ptr [rbp - 0x58]
	mov	rdx, rax
	mov	al, 0
	call	error
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4116f5
	.globl sub_4116f5
	.type sub_4116f5, @function
sub_4116f5:

	nop	word ptr cs:[rax + rax]
.label_1535:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41170a
	.globl sub_41170a
	.type sub_41170a, @function
sub_41170a:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411714
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
	jb	.label_1534
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	calloc
	mov	qword ptr [rbp - 0x18], rax
	cmp	rax, 0
	jne	.label_1535
.label_1534:
	call	xalloc_die
.label_1581:
	movabs	rsi, OFFSET FLAT:label_1567
	mov	rax, qword ptr [rbp - 0x40]
	movsxd	rcx, dword ptr [rbp - 0x58]
	add	rax, rcx
	mov	rdi, rax
	call	strstr
	mov	qword ptr [rbp - 0x80], rax
	cmp	qword ptr [rbp - 0x80], 0
	jne	.label_1571
	jmp	.label_1544
.label_1561:
	mov	eax, dword ptr [rbp - 0xa0]
	mov	dword ptr [rbp - 0xdc], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0xdc]
	mov	dword ptr [rax], ecx
	mov	qword ptr [rbp - 8], 0
.label_1538:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x100
	pop	rbp
	ret	
.label_1548:
	jmp	.label_1536
.label_1571:
	movabs	rsi, OFFSET FLAT:label_1580
	lea	rdx, [rbp - 0x5c]
	lea	rcx, [rbp - 0x60]
	lea	r8, [rbp - 0x64]
	lea	r9, [rbp - 0x68]
	lea	rax, [rbp - 0x71]
	mov	rdi, qword ptr [rbp - 0x80]
	mov	qword ptr [rsp], rax
	mov	al, 0
	call	sscanf
	mov	dword ptr [rbp - 0x84], eax
	cmp	dword ptr [rbp - 0x84], 1
	je	.label_1537
	cmp	dword ptr [rbp - 0x84], 5
	je	.label_1537
	jmp	.label_1544
	.section	.text
	.align	16
	#Procedure 0x411816

	.globl read_file_system_list
	.type read_file_system_list, @function
read_file_system_list:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x100
	mov	al, dil
	movabs	rsi, OFFSET FLAT:label_1546
	movabs	rcx, OFFSET FLAT:label_1547
	lea	rdx, [rbp - 0x18]
	and	al, 1
	mov	byte ptr [rbp - 9], al
	mov	qword ptr [rbp - 0x28], rdx
	mov	qword ptr [rbp - 0x38], rcx
	mov	rdi, qword ptr [rbp - 0x38]
	call	fopen
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_1563
	mov	qword ptr [rbp - 0x40], 0
	mov	qword ptr [rbp - 0x48], 0
.label_1544:
	lea	rdi, [rbp - 0x40]
	lea	rsi, [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x30]
	call	getline
	cmp	rax, -1
	je	.label_1572
	movabs	rsi, OFFSET FLAT:label_1555
	lea	rdx, [rbp - 0x4c]
	lea	rcx, [rbp - 0x50]
	lea	r8, [rbp - 0x6c]
	lea	r9, [rbp - 0x70]
	lea	rax, [rbp - 0x54]
	lea	rdi, [rbp - 0x58]
	lea	r10, [rbp - 0x71]
	mov	r11, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0xa8], rdi
	mov	rdi, r11
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rbp - 0xa8]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	mov	al, 0
	call	sscanf
	mov	dword ptr [rbp - 0x84], eax
	cmp	dword ptr [rbp - 0x84], 3
	je	.label_1581
	cmp	dword ptr [rbp - 0x84], 7
	je	.label_1581
	jmp	.label_1544
.label_1553:
	jmp	.label_1536
.label_1536:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1538
.label_1537:
	movsxd	rax, dword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	byte ptr [rcx + rax], 0
	movsxd	rax, dword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	byte ptr [rcx + rax], 0
	movsxd	rax, dword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	byte ptr [rcx + rax], 0
	movsxd	rax, dword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	byte ptr [rcx + rax], 0
	mov	rax, qword ptr [rbp - 0x80]
	movsxd	rcx, dword ptr [rbp - 0x64]
	add	rax, rcx
	mov	rdi, rax
	call	unescape_tab
	mov	rax, qword ptr [rbp - 0x40]
	movsxd	rcx, dword ptr [rbp - 0x54]
	add	rax, rcx
	mov	rdi, rax
	call	unescape_tab
	mov	rax, qword ptr [rbp - 0x40]
	movsxd	rcx, dword ptr [rbp - 0x6c]
	add	rax, rcx
	mov	rdi, rax
	call	unescape_tab
	mov	edx, 0x38
	mov	edi, edx
	call	xmalloc
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x80]
	movsxd	rcx, dword ptr [rbp - 0x64]
	add	rax, rcx
	mov	rdi, rax
	call	xstrdup
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x40]
	movsxd	rcx, dword ptr [rbp - 0x54]
	add	rax, rcx
	mov	rdi, rax
	call	xstrdup
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x40]
	movsxd	rcx, dword ptr [rbp - 0x6c]
	add	rax, rcx
	mov	rdi, rax
	call	xstrdup
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x80]
	movsxd	rcx, dword ptr [rbp - 0x5c]
	add	rax, rcx
	mov	rdi, rax
	call	xstrdup
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x18], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	sil, byte ptr [rax + 0x28]
	and	sil, 0xfb
	or	sil, 4
	mov	byte ptr [rax + 0x28], sil
	mov	edi, dword ptr [rbp - 0x4c]
	mov	esi, dword ptr [rbp - 0x50]
	call	gnu_dev_makedev
	mov	r8b, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rax + 0x18]
	mov	edx, OFFSET FLAT:label_1541
	mov	esi, edx
	mov	byte ptr [rbp - 0xa9], r8b
	call	strcmp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0xa9]
	mov	byte ptr [rbp - 0xaa], r8b
	je	.label_1540
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	edx, OFFSET FLAT:label_1557
	mov	esi, edx
	mov	byte ptr [rbp - 0xab], al
	call	strcmp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0xab]
	mov	byte ptr [rbp - 0xaa], r8b
	je	.label_1540
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	edx, OFFSET FLAT:label_1560
	mov	esi, edx
	mov	byte ptr [rbp - 0xac], al
	call	strcmp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0xac]
	mov	byte ptr [rbp - 0xaa], r8b
	je	.label_1540
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	edx, OFFSET FLAT:label_1579
	mov	esi, edx
	mov	byte ptr [rbp - 0xad], al
	call	strcmp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0xad]
	mov	byte ptr [rbp - 0xaa], r8b
	je	.label_1540
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	edx, OFFSET FLAT:label_1583
	mov	esi, edx
	mov	byte ptr [rbp - 0xae], al
	call	strcmp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0xae]
	mov	byte ptr [rbp - 0xaa], r8b
	je	.label_1540
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	edx, OFFSET FLAT:label_1551
	mov	esi, edx
	mov	byte ptr [rbp - 0xaf], al
	call	strcmp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0xaf]
	mov	byte ptr [rbp - 0xaa], r8b
	je	.label_1540
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	edx, OFFSET FLAT:label_1565
	mov	esi, edx
	mov	byte ptr [rbp - 0xb0], al
	call	strcmp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0xb0]
	mov	byte ptr [rbp - 0xaa], r8b
	je	.label_1540
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	edx, OFFSET FLAT:label_1574
	mov	esi, edx
	mov	byte ptr [rbp - 0xb1], al
	call	strcmp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0xb1]
	mov	byte ptr [rbp - 0xaa], r8b
	je	.label_1540
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	edx, OFFSET FLAT:label_1545
	mov	esi, edx
	mov	byte ptr [rbp - 0xb2], al
	call	strcmp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0xb2]
	mov	byte ptr [rbp - 0xaa], r8b
	je	.label_1540
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	edx, OFFSET FLAT:label_1577
	mov	esi, edx
	mov	byte ptr [rbp - 0xb3], al
	call	strcmp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0xb3]
	mov	byte ptr [rbp - 0xaa], r8b
	je	.label_1540
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	edx, OFFSET FLAT:label_1552
	mov	esi, edx
	mov	byte ptr [rbp - 0xb4], al
	call	strcmp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0xb4]
	mov	byte ptr [rbp - 0xaa], r8b
	je	.label_1540
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	edx, OFFSET FLAT:label_1564
	mov	esi, edx
	mov	byte ptr [rbp - 0xb5], al
	call	strcmp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0xb5]
	mov	byte ptr [rbp - 0xaa], r8b
	je	.label_1540
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rdx + 0x18]
	mov	eax, OFFSET FLAT:label_1573
	mov	esi, eax
	mov	byte ptr [rbp - 0xb6], cl
	call	strcmp
	cmp	eax, 0
	mov	cl, byte ptr [rbp - 0xb6]
	mov	byte ptr [rbp - 0xb7], cl
	jne	.label_1554
	mov	al, 1
	mov	byte ptr [rbp - 0xb7], al
	jmp	.label_1554
.label_1554:
	mov	al, byte ptr [rbp - 0xb7]
	mov	byte ptr [rbp - 0xaa], al
.label_1540:
	mov	al, byte ptr [rbp - 0xaa]
	mov	esi, 0x3a
	and	al, 1
	movzx	ecx, al
	mov	rdx, qword ptr [rbp - 0x20]
	mov	al, cl
	mov	dil, byte ptr [rdx + 0x28]
	and	al, 1
	and	dil, 0xfe
	or	dil, al
	mov	byte ptr [rdx + 0x28], dil
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rdx]
	call	strchr
	mov	r8b, 1
	cmp	rax, 0
	mov	byte ptr [rbp - 0xb8], r8b
	jne	.label_1543
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	jne	.label_1550
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0x2f
	jne	.label_1550
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	edx, OFFSET FLAT:label_1562
	mov	esi, edx
	mov	byte ptr [rbp - 0xb9], al
	call	strcmp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0xb9]
	mov	byte ptr [rbp - 0xb8], r8b
	je	.label_1543
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	edx, OFFSET FLAT:label_1569
	mov	esi, edx
	mov	byte ptr [rbp - 0xba], al
	call	strcmp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0xba]
	mov	byte ptr [rbp - 0xb8], r8b
	je	.label_1543
.label_1550:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rax]
	mov	ecx, OFFSET FLAT:label_1578
	mov	edi, ecx
	call	strcmp
	cmp	eax, 0
	sete	dl
	mov	byte ptr [rbp - 0xb8], dl
.label_1543:
	mov	al, byte ptr [rbp - 0xb8]
	and	al, 1
	movzx	ecx, al
	mov	rdx, qword ptr [rbp - 0x20]
	mov	al, cl
	mov	sil, byte ptr [rdx + 0x28]
	and	al, 1
	shl	al, 1
	and	sil, 0xfd
	or	sil, al
	mov	byte ptr [rdx + 0x28], sil
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rbp - 0x28]
	mov	qword ptr [rdi], rdx
	mov	rdx, qword ptr [rbp - 0x20]
	add	rdx, 0x30
	mov	qword ptr [rbp - 0x28], rdx
	jmp	.label_1544
.label_1576:
	mov	rdi, qword ptr [rbp - 0x30]
	call	rpl_fclose
	cmp	eax, -1
	jne	.label_1548
	jmp	.label_1556
.label_1556:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0xa0], ecx
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rax], 0
.label_1566:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1561
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x30]
	mov	qword ptr [rbp - 0x20], rax
	mov	rdi, qword ptr [rbp - 0x18]
	call	free_mount_entry
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1566
.label_1559:
	jmp	.label_1568
.label_1568:
	mov	rdi, qword ptr [rbp - 0x30]
	call	getmntent
	mov	qword ptr [rbp - 0x90], rax
	cmp	rax, 0
	je	.label_1570
	movabs	rsi, OFFSET FLAT:label_1575
	mov	rdi, qword ptr [rbp - 0x90]
	call	hasmntopt
	mov	ecx, 0x38
	mov	edi, ecx
	cmp	rax, 0
	setne	dl
	and	dl, 1
	mov	byte ptr [rbp - 0x99], dl
	call	xmalloc
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x90]
	mov	rdi, qword ptr [rax]
	call	xstrdup
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rsi], rax
	mov	rax, qword ptr [rbp - 0x90]
	mov	rdi, qword ptr [rax + 8]
	call	xstrdup
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rsi + 8], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rax + 0x10], 0
	mov	rax, qword ptr [rbp - 0x90]
	mov	rdi, qword ptr [rax + 0x10]
	call	xstrdup
	mov	dl, 1
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rsi + 0x18], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	r8b, byte ptr [rax + 0x28]
	and	r8b, 0xfb
	or	r8b, 4
	mov	byte ptr [rax + 0x28], r8b
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rax + 0x18]
	mov	ecx, OFFSET FLAT:label_1541
	mov	esi, ecx
	mov	byte ptr [rbp - 0xc5], dl
	call	strcmp
	cmp	eax, 0
	mov	dl, byte ptr [rbp - 0xc5]
	mov	byte ptr [rbp - 0xc6], dl
	je	.label_1542
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	edx, OFFSET FLAT:label_1557
	mov	esi, edx
	mov	byte ptr [rbp - 0xc7], al
	call	strcmp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0xc7]
	mov	byte ptr [rbp - 0xc6], r8b
	je	.label_1542
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	edx, OFFSET FLAT:label_1560
	mov	esi, edx
	mov	byte ptr [rbp - 0xc8], al
	call	strcmp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0xc8]
	mov	byte ptr [rbp - 0xc6], r8b
	je	.label_1542
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	edx, OFFSET FLAT:label_1579
	mov	esi, edx
	mov	byte ptr [rbp - 0xc9], al
	call	strcmp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0xc9]
	mov	byte ptr [rbp - 0xc6], r8b
	je	.label_1542
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	edx, OFFSET FLAT:label_1583
	mov	esi, edx
	mov	byte ptr [rbp - 0xca], al
	call	strcmp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0xca]
	mov	byte ptr [rbp - 0xc6], r8b
	je	.label_1542
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	edx, OFFSET FLAT:label_1551
	mov	esi, edx
	mov	byte ptr [rbp - 0xcb], al
	call	strcmp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0xcb]
	mov	byte ptr [rbp - 0xc6], r8b
	je	.label_1542
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	edx, OFFSET FLAT:label_1565
	mov	esi, edx
	mov	byte ptr [rbp - 0xcc], al
	call	strcmp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0xcc]
	mov	byte ptr [rbp - 0xc6], r8b
	je	.label_1542
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	edx, OFFSET FLAT:label_1574
	mov	esi, edx
	mov	byte ptr [rbp - 0xcd], al
	call	strcmp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0xcd]
	mov	byte ptr [rbp - 0xc6], r8b
	je	.label_1542
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	edx, OFFSET FLAT:label_1545
	mov	esi, edx
	mov	byte ptr [rbp - 0xce], al
	call	strcmp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0xce]
	mov	byte ptr [rbp - 0xc6], r8b
	je	.label_1542
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	edx, OFFSET FLAT:label_1577
	mov	esi, edx
	mov	byte ptr [rbp - 0xcf], al
	call	strcmp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0xcf]
	mov	byte ptr [rbp - 0xc6], r8b
	je	.label_1542
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	edx, OFFSET FLAT:label_1552
	mov	esi, edx
	mov	byte ptr [rbp - 0xd0], al
	call	strcmp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0xd0]
	mov	byte ptr [rbp - 0xc6], r8b
	je	.label_1542
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	edx, OFFSET FLAT:label_1564
	mov	esi, edx
	mov	byte ptr [rbp - 0xd1], al
	call	strcmp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0xd1]
	mov	byte ptr [rbp - 0xc6], r8b
	je	.label_1542
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rdx + 0x18]
	mov	eax, OFFSET FLAT:label_1573
	mov	esi, eax
	mov	byte ptr [rbp - 0xd2], cl
	call	strcmp
	cmp	eax, 0
	mov	cl, byte ptr [rbp - 0xd2]
	mov	byte ptr [rbp - 0xd3], cl
	jne	.label_1582
	mov	al, byte ptr [rbp - 0x99]
	xor	al, 0xff
	mov	byte ptr [rbp - 0xd3], al
.label_1582:
	mov	al, byte ptr [rbp - 0xd3]
	mov	byte ptr [rbp - 0xc6], al
.label_1542:
	mov	al, byte ptr [rbp - 0xc6]
	mov	esi, 0x3a
	and	al, 1
	movzx	ecx, al
	mov	rdx, qword ptr [rbp - 0x20]
	mov	al, cl
	mov	dil, byte ptr [rdx + 0x28]
	and	al, 1
	and	dil, 0xfe
	or	dil, al
	mov	byte ptr [rdx + 0x28], dil
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rdx]
	call	strchr
	mov	r8b, 1
	cmp	rax, 0
	mov	byte ptr [rbp - 0xd4], r8b
	jne	.label_1539
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	jne	.label_1549
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0x2f
	jne	.label_1549
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	edx, OFFSET FLAT:label_1562
	mov	esi, edx
	mov	byte ptr [rbp - 0xd5], al
	call	strcmp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0xd5]
	mov	byte ptr [rbp - 0xd4], r8b
	je	.label_1539
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	edx, OFFSET FLAT:label_1569
	mov	esi, edx
	mov	byte ptr [rbp - 0xd6], al
	call	strcmp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0xd6]
	mov	byte ptr [rbp - 0xd4], r8b
	je	.label_1539
.label_1549:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rax]
	mov	ecx, OFFSET FLAT:label_1578
	mov	edi, ecx
	call	strcmp
	cmp	eax, 0
	sete	dl
	mov	byte ptr [rbp - 0xd4], dl
.label_1539:
	mov	al, byte ptr [rbp - 0xd4]
	and	al, 1
	movzx	ecx, al
	mov	rdx, qword ptr [rbp - 0x20]
	mov	al, cl
	mov	sil, byte ptr [rdx + 0x28]
	and	al, 1
	shl	al, 1
	and	sil, 0xfd
	or	sil, al
	mov	byte ptr [rdx + 0x28], sil
	mov	rdx, qword ptr [rbp - 0x90]
	mov	rdi, qword ptr [rdx + 0x18]
	call	dev_from_mount_options
	mov	rdx, qword ptr [rbp - 0x20]
	mov	qword ptr [rdx + 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rdx], rax
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 0x30
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1568
.label_1570:
	mov	rdi, qword ptr [rbp - 0x30]
	call	endmntent
	cmp	eax, 0
	jne	.label_1553
	jmp	.label_1556
.label_1563:
	movabs	rsi, OFFSET FLAT:label_1546
	movabs	rax, OFFSET FLAT:label_1558
	mov	qword ptr [rbp - 0x98], rax
	mov	rdi, qword ptr [rbp - 0x98]
	call	setmntent
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_1559
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1538
.label_1572:
	mov	rdi, qword ptr [rbp - 0x40]
	call	free
	mov	rdi, qword ptr [rbp - 0x30]
	call	ferror_unlocked
	cmp	eax, 0
	je	.label_1576
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x88], ecx
	mov	rdi, qword ptr [rbp - 0x30]
	call	rpl_fclose
	mov	ecx, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0xc0], eax
	mov	dword ptr [rbp - 0xc4], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0xc4]
	mov	dword ptr [rax], ecx
	jmp	.label_1556
	.section	.text
	.align	16
	#Procedure 0x4123d0

	.globl mdir_name
	.type mdir_name, @function
mdir_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	call	dir_len
	mov	cl, 1
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], 0
	mov	byte ptr [rbp - 0x29], cl
	je	.label_1584
	xor	eax, eax
	mov	cl, al
	mov	byte ptr [rbp - 0x29], cl
	jmp	.label_1584
.label_1584:
	mov	al, byte ptr [rbp - 0x29]
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	rcx, qword ptr [rbp - 0x18]
	mov	al, byte ptr [rbp - 0x19]
	and	al, 1
	movzx	edx, al
	mov	esi, edx
	add	rcx, rsi
	add	rcx, 1
	mov	rdi, rcx
	call	malloc
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_1586
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1585
.label_1586:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	memcpy
	test	byte ptr [rbp - 0x19], 1
	je	.label_1587
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	byte ptr [rcx + rax], 0x2e
.label_1587:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	byte ptr [rcx + rax], 0
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
.label_1585:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x412496
	.globl sub_412496
	.type sub_412496, @function
sub_412496:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x412505
	.globl sub_412505
	.type sub_412505, @function
sub_412505:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x412512
	.globl sub_412512
	.type sub_412512, @function
sub_412512:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x412536
	.globl sub_412536
	.type sub_412536, @function
sub_412536:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x412549
	.globl sub_412549
	.type sub_412549, @function
sub_412549:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x412550

	.globl stat
	.type stat, @function
stat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__xstat
	.section	.text
	.align	16
	#Procedure 0x412560

	.globl lstat
	.type lstat, @function
lstat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__lxstat
	.section	.text
	.align	16
	#Procedure 0x412570

	.globl fstatat
	.type fstatat, @function
fstatat:
	mov	r8d, ecx
	mov	rcx, rdx
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstatat
