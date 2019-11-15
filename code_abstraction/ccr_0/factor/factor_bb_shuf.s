	.section	.text
	.align	16
	#Procedure 0x402119
	.globl sub_402119
	.type sub_402119, @function
sub_402119:

	hlt	
	.section	.text
	.align	16
	#Procedure 0x40211a
	.globl sub_40211a
	.type sub_40211a, @function
sub_40211a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402152
	.globl sub_402152
	.type sub_402152, @function
sub_402152:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40219a
	.globl sub_40219a
	.type sub_40219a, @function
sub_40219a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4021bc
	.globl sub_4021bc
	.type sub_4021bc, @function
sub_4021bc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4021cd
	.globl sub_4021cd
	.type sub_4021cd, @function
sub_4021cd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4021e6
	.globl sub_4021e6
	.type sub_4021e6, @function
sub_4021e6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4021f0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_9
	call	gettext
	movabs	rsi, OFFSET FLAT:label_11
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_10
	mov	dword ptr [rbp - 4], eax
	call	gettext
	movabs	rsi, OFFSET FLAT:label_13
	movabs	rdx, OFFSET FLAT:label_14
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_12
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
	#Procedure 0x402276
	.globl sub_402276
	.type sub_402276, @function
sub_402276:

	nop	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402280

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
	jbe	.label_45
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
	je	.label_59
	cmp	dword ptr [rbp - 0x34], 0
	sete	al
	mov	byte ptr [rbp - 0x1e9], al
.label_59:
	mov	al, byte ptr [rbp - 0x1e9]
	xor	al, 0xff
	test	al, 1
	jne	.label_16
	jmp	.label_20
.label_16:
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
.label_30:
	lea	rdi, [rbp - 0xf8]
	call	mbuiter_multi_next
	xor	eax, eax
	mov	cl, al
	test	byte ptr [rbp - 0xd8], 1
	mov	byte ptr [rbp - 0x205], cl
	je	.label_53
	cmp	dword ptr [rbp - 0xd4], 0
	sete	al
	mov	byte ptr [rbp - 0x205], al
.label_53:
	mov	al, byte ptr [rbp - 0x205]
	xor	al, 0xff
	test	al, 1
	jne	.label_43
	mov	qword ptr [rbp - 8], 0
	jmp	.label_15
.label_26:
	mov	rax, qword ptr [rbp - 0x1d8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_18
	mov	qword ptr [rbp - 8], 0
	jmp	.label_15
.label_34:
	mov	rax, qword ptr [rbp - 0xe0]
	cmp	rax, qword ptr [rbp - 0x40]
	jne	.label_25
	mov	rdi, qword ptr [rbp - 0xe8]
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0xe0]
	call	memcmp
	cmp	eax, 0
	jne	.label_25
.label_41:
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
	je	.label_37
	cmp	dword ptr [rbp - 0x16c], 0
	sete	al
	mov	byte ptr [rbp - 0x229], al
.label_37:
	mov	al, byte ptr [rbp - 0x229]
	xor	al, 0xff
	test	al, 1
	jne	.label_27
	call	abort
.label_22:
	mov	byte ptr [rbp - 0x59], 0
.label_63:
	jmp	.label_32
.label_32:
	mov	rax, qword ptr [rbp - 0x68]
	add	rax, 1
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	test	byte ptr [rbp - 0xd8], 1
	je	.label_34
	test	byte ptr [rbp - 0x38], 1
	je	.label_34
	mov	eax, dword ptr [rbp - 0xd4]
	cmp	eax, dword ptr [rbp - 0x34]
	je	.label_41
	jmp	.label_25
.label_40:
	jmp	.label_46
.label_46:
	mov	rax, qword ptr [rbp - 0x1d8]
	add	rax, 1
	mov	qword ptr [rbp - 0x1d8], rax
	mov	rax, qword ptr [rbp - 0x1e0]
	add	rax, 1
	mov	qword ptr [rbp - 0x1e0], rax
	jmp	.label_49
.label_50:
	jmp	.label_54
.label_54:
	jmp	.label_58
.label_58:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_57
.label_43:
	test	byte ptr [rbp - 0x59], 1
	je	.label_32
	cmp	qword ptr [rbp - 0x68], 0xa
	jb	.label_32
	mov	rax, qword ptr [rbp - 0x70]
	imul	rcx, qword ptr [rbp - 0x68], 5
	cmp	rax, rcx
	jb	.label_32
	mov	rax, qword ptr [rbp - 0x70]
	sub	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x100], rax
.label_24:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x100], 0
	mov	byte ptr [rbp - 0x206], cl
	jbe	.label_23
	lea	rdi, [rbp - 0xb8]
	call	mbuiter_multi_next
	xor	eax, eax
	mov	cl, al
	test	byte ptr [rbp - 0x98], 1
	mov	byte ptr [rbp - 0x207], cl
	je	.label_28
	cmp	dword ptr [rbp - 0x94], 0
	sete	al
	mov	byte ptr [rbp - 0x207], al
.label_28:
	mov	al, byte ptr [rbp - 0x207]
	xor	al, 0xff
	mov	byte ptr [rbp - 0x206], al
.label_23:
	mov	al, byte ptr [rbp - 0x206]
	test	al, 1
	jne	.label_38
	jmp	.label_39
.label_38:
	mov	rax, qword ptr [rbp - 0xa0]
	add	rax, qword ptr [rbp - 0xa8]
	mov	qword ptr [rbp - 0xa8], rax
	mov	byte ptr [rbp - 0xac], 0
	mov	rax, qword ptr [rbp - 0x100]
	add	rax, -1
	mov	qword ptr [rbp - 0x100], rax
	jmp	.label_24
.label_62:
	lea	rdi, [rbp - 0x150]
	call	mbuiter_multi_next
	xor	eax, eax
	mov	cl, al
	test	byte ptr [rbp - 0x130], 1
	mov	byte ptr [rbp - 0x22b], cl
	je	.label_52
	cmp	dword ptr [rbp - 0x12c], 0
	sete	al
	mov	byte ptr [rbp - 0x22b], al
.label_52:
	mov	al, byte ptr [rbp - 0x22b]
	xor	al, 0xff
	test	al, 1
	jne	.label_60
	mov	qword ptr [rbp - 8], 0
	jmp	.label_15
.label_45:
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_17
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
.label_57:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_36
	mov	qword ptr [rbp - 8], 0
	jmp	.label_15
.label_17:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_15:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x250
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402795
	.globl sub_402795
	.type sub_402795, @function
sub_402795:

	nop	
.label_19:
	jmp	.label_44
.label_44:
	mov	rax, qword ptr [rbp - 0x138]
	add	rax, qword ptr [rbp - 0x140]
	mov	qword ptr [rbp - 0x140], rax
	mov	byte ptr [rbp - 0x144], 0
	mov	rax, qword ptr [rbp - 0x178]
	add	rax, qword ptr [rbp - 0x180]
	mov	qword ptr [rbp - 0x180], rax
	mov	byte ptr [rbp - 0x184], 0
	jmp	.label_47
.label_33:
	mov	byte ptr [rbp - 0x191], 0
.label_61:
	jmp	.label_35
.label_35:
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
	jne	.label_54
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x1d8], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x1e0], rax
.label_49:
	mov	rax, qword ptr [rbp - 0x1e0]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_26
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_15
.label_36:
	test	byte ptr [rbp - 0x191], 1
	je	.label_35
	cmp	qword ptr [rbp - 0x1a0], 0xa
	jb	.label_35
	mov	rax, qword ptr [rbp - 0x1a8]
	imul	rcx, qword ptr [rbp - 0x1a0], 5
	cmp	rax, rcx
	jb	.label_35
	cmp	qword ptr [rbp - 0x1b8], 0
	je	.label_42
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
	jne	.label_51
	mov	qword ptr [rbp - 0x1b8], 0
.label_51:
	mov	rax, qword ptr [rbp - 0x1a8]
	mov	qword ptr [rbp - 0x1b0], rax
.label_42:
	cmp	qword ptr [rbp - 0x1b8], 0
	jne	.label_61
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
	je	.label_33
	mov	rax, qword ptr [rbp - 0x1c8]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_15
.label_20:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_15
.label_18:
	mov	rax, qword ptr [rbp - 0x1a8]
	add	rax, 1
	mov	qword ptr [rbp - 0x1a8], rax
	mov	rax, qword ptr [rbp - 0x1d8]
	movsx	ecx, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x1e0]
	movsx	edx, byte ptr [rax]
	cmp	ecx, edx
	je	.label_40
	jmp	.label_50
.label_39:
	lea	rdi, [rbp - 0xb8]
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x78], rax
	call	mbuiter_multi_next
	xor	ecx, ecx
	mov	dl, cl
	test	byte ptr [rbp - 0x98], 1
	mov	byte ptr [rbp - 0x208], dl
	je	.label_56
	cmp	dword ptr [rbp - 0x94], 0
	sete	al
	mov	byte ptr [rbp - 0x208], al
.label_56:
	mov	al, byte ptr [rbp - 0x208]
	xor	al, 0xff
	test	al, 1
	jne	.label_63
	lea	rdx, [rbp - 0x108]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	knuth_morris_pratt_multibyte
	and	al, 1
	mov	byte ptr [rbp - 0x109], al
	test	byte ptr [rbp - 0x109], 1
	je	.label_22
	mov	rax, qword ptr [rbp - 0x108]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_15
.label_48:
	jmp	.label_25
.label_25:
	jmp	.label_29
.label_29:
	mov	rax, qword ptr [rbp - 0xe0]
	add	rax, qword ptr [rbp - 0xe8]
	mov	qword ptr [rbp - 0xe8], rax
	mov	byte ptr [rbp - 0xec], 0
	jmp	.label_30
.label_21:
	mov	rax, qword ptr [rbp - 0x138]
	cmp	rax, qword ptr [rbp - 0x178]
	jne	.label_31
	mov	rdi, qword ptr [rbp - 0x140]
	mov	rsi, qword ptr [rbp - 0x180]
	mov	rdx, qword ptr [rbp - 0x138]
	call	memcmp
	cmp	eax, 0
	je	.label_19
.label_31:
	jmp	.label_48
.label_27:
	mov	rax, qword ptr [rbp - 0x178]
	add	rax, qword ptr [rbp - 0x180]
	mov	qword ptr [rbp - 0x180], rax
	mov	byte ptr [rbp - 0x184], 0
.label_47:
	lea	rdi, [rbp - 0x190]
	call	mbuiter_multi_next
	xor	eax, eax
	mov	cl, al
	test	byte ptr [rbp - 0x170], 1
	mov	byte ptr [rbp - 0x22a], cl
	je	.label_55
	cmp	dword ptr [rbp - 0x16c], 0
	sete	al
	mov	byte ptr [rbp - 0x22a], al
.label_55:
	mov	al, byte ptr [rbp - 0x22a]
	xor	al, 0xff
	test	al, 1
	jne	.label_62
	mov	rax, qword ptr [rbp - 0xe8]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_15
.label_60:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	test	byte ptr [rbp - 0x130], 1
	je	.label_21
	test	byte ptr [rbp - 0x170], 1
	je	.label_21
	mov	eax, dword ptr [rbp - 0x12c]
	cmp	eax, dword ptr [rbp - 0x16c]
	je	.label_19
	jmp	.label_31
.label_65:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rax
.label_64:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402b62
	.globl sub_402b62
	.type sub_402b62, @function
sub_402b62:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402b6a

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
	je	.label_65
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rax, rcx
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_64
.label_76:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_78:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x80
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402bd0
	.globl sub_402bd0
	.type sub_402bd0, @function
sub_402bd0:

	nop	word ptr [rax + rax]
.label_75:
	movabs	rdi, OFFSET FLAT:label_66
	movabs	rsi, OFFSET FLAT:label_67
	mov	edx, 0x1a3
	movabs	rcx, OFFSET FLAT:label_68
	call	__assert_fail
.label_73:
	jmp	.label_80
.label_80:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x58], rax
	bsr	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x40]
	xor	rax, 0x3f
	mov	ecx, eax
	mov	dword ptr [rbp - 0x34], ecx
	jmp	.label_71
.label_71:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x60], rax
	bsr	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x48]
	xor	rax, 0x3f
	mov	ecx, eax
	mov	dword ptr [rbp - 0x38], ecx
	mov	eax, dword ptr [rbp - 0x34]
	sub	eax, dword ptr [rbp - 0x38]
	mov	dword ptr [rbp - 0x4c], eax
	mov	eax, 0x40
	mov	rcx, qword ptr [rbp - 0x28]
	mov	edx, dword ptr [rbp - 0x4c]
	mov	esi, edx
	mov	qword ptr [rbp - 0x78], rcx
	mov	rcx, rsi
	mov	rsi, qword ptr [rbp - 0x78]
	shl	rsi, cl
	mov	rdi, qword ptr [rbp - 0x30]
	sub	eax, dword ptr [rbp - 0x4c]
	mov	eax, eax
	mov	ecx, eax
	shr	rdi, cl
	or	rsi, rdi
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsi, qword ptr [rbp - 0x30]
	mov	eax, dword ptr [rbp - 0x4c]
	mov	ecx, eax
	shl	rsi, cl
	mov	qword ptr [rbp - 0x30], rsi
	mov	dword ptr [rbp - 0x50], 0
.label_69:
	mov	eax, dword ptr [rbp - 0x50]
	cmp	eax, dword ptr [rbp - 0x4c]
	jge	.label_76
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x28]
	ja	.label_70
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x28]
	jne	.label_74
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x30]
	jb	.label_74
.label_70:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x68], rcx
	mov	qword ptr [rbp - 0x70], rsi
	sub	rdx, qword ptr [rbp - 0x70]
	sbb	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x18], rax
	mov	qword ptr [rbp - 0x20], rdx
.label_74:
	jmp	.label_72
.label_72:
	mov	rax, qword ptr [rbp - 0x28]
	shl	rax, 0x3f
	mov	rcx, qword ptr [rbp - 0x30]
	shr	rcx, 1
	or	rax, rcx
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x28]
	shr	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_77
.label_77:
	mov	eax, dword ptr [rbp - 0x50]
	add	eax, 1
	mov	dword ptr [rbp - 0x50], eax
	jmp	.label_69
.label_79:
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_73
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_78
	.section	.text
	.align	16
	#Procedure 0x402d51

	.globl mod2
	.type mod2, @function
mod2:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x80
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_75
	jmp	.label_79
	.section	.text
	.align	16
	#Procedure 0x402d80

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
	#Procedure 0x402da0

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
	jae	.label_81
	jmp	.label_84
.label_84:
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
	jne	.label_84
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x18], rcx
	mov	byte ptr [rax - 1], 0x2d
	jmp	.label_83
.label_81:
	jmp	.label_82
.label_82:
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
	jne	.label_82
	jmp	.label_83
.label_83:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402e97
	.globl sub_402e97
	.type sub_402e97, @function
sub_402e97:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402ea0
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
	#Procedure 0x402ec7
	.globl sub_402ec7
	.type sub_402ec7, @function
sub_402ec7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402ed0

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
	je	.label_85
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_86
.label_85:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_86
.label_86:
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
	je	.label_87
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_87:
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0x78
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403024
	.globl sub_403024
	.type sub_403024, @function
sub_403024:

	nop	word ptr cs:[rax + rax]
.label_90:
	jmp	.label_92
.label_92:
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, 1
	mov	dword ptr [rbp - 0x64], eax
	jmp	.label_93
.label_94:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rcx + 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi]
	mov	qword ptr [rbp - 0x70], rcx
	mov	qword ptr [rbp - 0x78], rsi
	sub	rdx, qword ptr [rbp - 0x78]
	sbb	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x50], rax
	mov	qword ptr [rbp - 0x58], rdx
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x58]
	jne	.label_95
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x50]
	jne	.label_95
	mov	byte ptr [rbp - 1], 1
	jmp	.label_91
.label_88:
	mov	byte ptr [rbp - 1], 0
.label_91:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x90
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4030b3
	.globl sub_4030b3
	.type sub_4030b3, @function
sub_4030b3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4030c0

	.globl millerrabin2
	.type millerrabin2, @function
millerrabin2:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x90
	lea	rax, [rbp - 0x60]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	dword ptr [rbp - 0x2c], r8d
	mov	qword ptr [rbp - 0x38], r9
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	r8, qword ptr [rbp - 0x18]
	mov	r9, qword ptr [rbp - 0x38]
	mov	rdi, rax
	call	powm2
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rcx]
	jne	.label_94
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rcx + 8]
	jne	.label_94
	mov	byte ptr [rbp - 1], 1
	jmp	.label_91
.label_95:
	mov	dword ptr [rbp - 0x64], 1
.label_93:
	mov	eax, dword ptr [rbp - 0x64]
	cmp	eax, dword ptr [rbp - 0x2c]
	jae	.label_88
	lea	rdi, [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	r8, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rbp - 0x10]
	mov	r9, qword ptr [rax + 8]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	r10, qword ptr [rbp - 0x18]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	call	mulredc2
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x58]
	jne	.label_89
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x50]
	jne	.label_89
	mov	byte ptr [rbp - 1], 1
	jmp	.label_91
.label_89:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rcx]
	jne	.label_90
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rcx + 8]
	jne	.label_90
	mov	byte ptr [rbp - 1], 0
	jmp	.label_91
	.section	.text
	.align	16
	#Procedure 0x4031e0

	.globl full_write
	.type full_write, @function
full_write:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], 0
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rdx
.label_98:
	cmp	qword ptr [rbp - 0x18], 0
	jbe	.label_96
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x18]
	call	safe_write
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_99
	jmp	.label_96
.label_99:
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_97
	call	__errno_location
	mov	dword ptr [rax], 0x1c
	jmp	.label_96
.label_96:
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403257
	.globl sub_403257
	.type sub_403257, @function
sub_403257:

	nop	word ptr cs:[rax + rax]
.label_97:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x18], rcx
	jmp	.label_98
.label_123:
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_108
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x50]
	je	.label_108
	mov	rdi, qword ptr [rbp - 0x30]
	call	free
.label_108:
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_113
	mov	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x50]
	je	.label_113
	mov	rdi, qword ptr [rbp - 0x38]
	call	free
.label_113:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 8], rax
.label_103:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0xa0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4032e9
	.globl sub_4032e9
	.type sub_4032e9, @function
sub_4032e9:

	nop	dword ptr [rax]
.label_112:
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
	je	.label_101
	mov	rdi, qword ptr [rbp - 0x30]
	call	free
.label_101:
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_102
	mov	rdi, qword ptr [rbp - 0x38]
	call	free
.label_102:
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_103
.label_124:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x48], rax
.label_109:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_106
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x80], rax
	jmp	.label_110
.label_106:
	cmp	qword ptr [rbp - 0x48], 0
	je	.label_111
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x88], rax
	jmp	.label_114
.label_111:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x88], rax
.label_114:
	mov	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x80], rax
.label_110:
	mov	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x50], rax
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x10]
	call	strcmp
	cmp	eax, 0
	je	.label_123
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x10]
	call	mbsstr_trimmed_wordbounded
	test	al, 1
	jne	.label_104
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_105
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x40]
	call	mbsstr_trimmed_wordbounded
	test	al, 1
	jne	.label_104
.label_105:
	cmp	qword ptr [rbp - 0x48], 0
	je	.label_112
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x48]
	call	mbsstr_trimmed_wordbounded
	test	al, 1
	jne	.label_104
	jmp	.label_112
.label_104:
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_116
	mov	rdi, qword ptr [rbp - 0x30]
	call	free
.label_116:
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_119
	mov	rdi, qword ptr [rbp - 0x38]
	call	free
.label_119:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_103
.label_115:
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x38], rax
	mov	qword ptr [rbp - 0x48], rax
.label_118:
	jmp	.label_107
.label_107:
	jmp	.label_109
	.section	.text
	.align	16
	#Procedure 0x403498

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
	movabs	rsi, OFFSET FLAT:label_117
	mov	qword ptr [rbp - 0x28], rax
	mov	qword ptr [rbp - 0x30], 0
	mov	qword ptr [rbp - 0x38], 0
	mov	qword ptr [rbp - 0x40], 0
	mov	qword ptr [rbp - 0x48], 0
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	je	.label_124
	movabs	rsi, OFFSET FLAT:label_117
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
	movabs	rsi, OFFSET FLAT:label_117
	mov	qword ptr [rbp - 0x68], rax
	mov	rdi, qword ptr [rbp - 0x68]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x78], rsi
	mov	rsi, rax
	call	memcpy
	mov	rax, qword ptr [rbp - 0x68]
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi,  qword ptr [word ptr [label_120]]
	mov	qword ptr [rax + rdx], rsi
	mov	cx,  word ptr [word ptr [label_121]]
	mov	word ptr [rax + rdx + 8], cx
	mov	r8b,  byte ptr [byte ptr [label_122]]
	mov	byte ptr [rax + rdx + 0xa], r8b
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rsi, qword ptr [rbp - 0x78]
	call	xstr_iconv
	mov	qword ptr [rbp - 0x58], rax
	mov	rdi, qword ptr [rbp - 0x68]
	call	free
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_107
	mov	esi, 0x3f
	mov	rdi, qword ptr [rbp - 0x58]
	call	strchr
	cmp	rax, 0
	je	.label_115
	mov	rdi, qword ptr [rbp - 0x58]
	call	free
	jmp	.label_118
	.section	.text
	.align	16
	#Procedure 0x4035e0
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
	#Procedure 0x403605
	.globl sub_403605
	.type sub_403605, @function
sub_403605:

	nop	word ptr cs:[rax + rax]
.label_135:
	mov	eax, 0x3b9aca00
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 8]
	xor	edx, edx
	div	rcx
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 8]
	xor	esi, esi
	mov	edx, esi
	div	rcx
	mov	qword ptr [rbp - 0x20], rdx
	cmp	qword ptr [rbp - 0x20], 0x3b9aca00
	jae	.label_132
	jmp	.label_125
.label_132:
	movabs	rdi, OFFSET FLAT:label_126
	movabs	rsi, OFFSET FLAT:label_67
	mov	edx, 0x99c
	movabs	rcx, OFFSET FLAT:label_127
	call	__assert_fail
.label_125:
	mov	qword ptr [rbp - 0x28], 0x3b9aca00
	mov	qword ptr [rbp - 0x30], 0
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x48], rax
	mov	qword ptr [rbp - 0x38], 0
	mov	dword ptr [rbp - 0x4c], 0x40
.label_134:
	cmp	dword ptr [rbp - 0x4c], 0
	jbe	.label_133
	jmp	.label_128
.label_128:
	mov	rax, qword ptr [rbp - 0x28]
	shl	rax, 0x3f
	mov	rcx, qword ptr [rbp - 0x30]
	shr	rcx, 1
	or	rax, rcx
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x28]
	shr	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x38]
	shl	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x28]
	ja	.label_130
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x28]
	jne	.label_129
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x30]
	jb	.label_129
.label_130:
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x58], rcx
	mov	qword ptr [rbp - 0x60], rsi
	sub	rdx, qword ptr [rbp - 0x60]
	sbb	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x40], rax
	mov	qword ptr [rbp - 0x48], rdx
.label_129:
	jmp	.label_131
.label_131:
	mov	eax, dword ptr [rbp - 0x4c]
	add	eax, -1
	mov	dword ptr [rbp - 0x4c], eax
	jmp	.label_134
.label_133:
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x10], rax
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x10]
	call	print_uintmaxes
	mov	eax, 9
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x20]
	call	lbuf_putint
.label_136:
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40377f
	.globl sub_40377f
	.type sub_40377f, @function
sub_40377f:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403783

	.globl print_uintmaxes
	.type print_uintmaxes, @function
print_uintmaxes:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_135
	xor	eax, eax
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x10]
	call	lbuf_putint
	jmp	.label_136
	.section	.text
	.align	16
	#Procedure 0x4037b0
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
	#Procedure 0x40385d
	.globl sub_40385d
	.type sub_40385d, @function
sub_40385d:

	nop	dword ptr [rax]
.label_137:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403866
	.globl sub_403866
	.type sub_403866, @function
sub_403866:

	nop	
	nop	dword ptr [rax + rax]
.label_139:
	mov	rdi,  qword ptr [word ptr [stderr]]
	call	close_stream
	cmp	eax, 0
	je	.label_137
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_141:
	call	__errno_location
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_138
	mov	esi, dword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	mov	al, 0
	call	error
.label_140:
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
	.section	.text
	.align	16
	#Procedure 0x4038bb

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rdi,  qword ptr [word ptr [stdout]]
	call	close_stream
	cmp	eax, 0
	je	.label_139
	test	byte ptr [byte ptr [ignore_EPIPE]],  1
	je	.label_143
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	je	.label_139
.label_143:
	movabs	rdi, OFFSET FLAT:label_142
	call	gettext
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_141
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	rdi,  qword ptr [word ptr [file_name]]
	mov	dword ptr [rbp - 0xc], esi
	call	quotearg_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_144
	mov	r8, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_140
	.section	.text
	.align	16
	#Procedure 0x403950
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_145
	jmp	.label_147
.label_147:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x61
	add	eax, 0x41
	mov	dword ptr [rbp - 4], eax
	jmp	.label_146
.label_145:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_146:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403987
	.globl sub_403987
	.type sub_403987, @function
sub_403987:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403990

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
	jne	.label_148
	cmp	qword ptr [rbp - 8], 0
	je	.label_148
	call	xalloc_die
.label_148:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4039ce
	.globl sub_4039ce
	.type sub_4039ce, @function
sub_4039ce:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4039d0
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
	#Procedure 0x4039e6
	.globl sub_4039e6
	.type sub_4039e6, @function
sub_4039e6:

	nop	word ptr cs:[rax + rax]
.label_1346:
	movabs	rdi, OFFSET FLAT:label_149
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
	jmp	.label_150
.label_153:
	movabs	rdi, OFFSET FLAT:label_154
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
.label_150:
	add	rsp, 0x180
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403b45
	.globl sub_403b45
	.type sub_403b45, @function
sub_403b45:

	nop	
.label_1348:
	movabs	rdi, OFFSET FLAT:label_151
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
	jmp	.label_150
.label_1340:
	movabs	rdi, OFFSET FLAT:label_157
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
	jmp	.label_150
.label_1345:
	movabs	rdi, OFFSET FLAT:label_162
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
	jmp	.label_150
.label_1344:
	movabs	rdi, OFFSET FLAT:label_166
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
	jmp	.label_150
.label_1342:
	movabs	rdi, OFFSET FLAT:label_161
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
	jmp	.label_150
.label_1339:
	jmp	.label_150
.label_1343:
	movabs	rdi, OFFSET FLAT:label_167
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
	jmp	.label_150
	.section	.text
	.align	16
	#Procedure 0x403dd4

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
	je	.label_155
	movabs	rsi, OFFSET FLAT:label_152
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_159
.label_1347:
	movabs	rdi, OFFSET FLAT:label_156
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
	jmp	.label_150
.label_155:
	movabs	rsi, OFFSET FLAT:label_164
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x48], eax
.label_159:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	eax, OFFSET FLAT:label_165
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
	mov	ecx, OFFSET FLAT:label_160
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
	ja	.label_153
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_158]]
	jmp	rcx
.label_1341:
	movabs	rdi, OFFSET FLAT:label_163
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
	jmp	.label_150
.label_170:
	mov	rdi,  qword ptr [word ptr [label_168]]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x40]
	call	memcpy
	mov	rdx, qword ptr [rbp - 0x40]
	add	rdx,  qword ptr [word ptr [label_168]]
	mov	qword ptr [word ptr [label_168]],  rdx
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403fdf
	.globl sub_403fdf
	.type sub_403fdf, @function
sub_403fdf:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403fee

	.globl lbuf_putint
	.type lbuf_putint, @function
lbuf_putint:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	lea	rax, [rbp - 0x30]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, rax
	call	umaxtostr
	mov	ecx, 0x15
	mov	esi, ecx
	lea	rdi, [rbp - 0x30]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x38]
	sub	rax, rdi
	sub	rsi, rax
	sub	rsi, 1
	mov	qword ptr [rbp - 0x40], rsi
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x48], rax
.label_169:
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_170
	mov	rax,  qword ptr [word ptr [label_168]]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [word ptr [label_168]],  rcx
	mov	byte ptr [rax], 0x30
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_169
.label_171:
	mov	eax, dword ptr [rbp - 0x2c]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404079
	.globl sub_404079
	.type sub_404079, @function
sub_404079:

	nop	
	.section	.text
	.align	16
	#Procedure 0x40407b
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
	jge	.label_171
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	jne	.label_171
	call	xalloc_die
.label_172:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	realloc
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_173
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_173
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4040fc

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_172
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_172
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	mov	qword ptr [rbp - 8], 0
	jmp	.label_174
.label_173:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_174:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40414a
	.globl sub_40414a
	.type sub_40414a, @function
sub_40414a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404150
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x20
	sub	edi, 0x5e
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_175
	jmp	.label_177
.label_177:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_176
.label_175:
	mov	byte ptr [rbp - 1], 0
.label_176:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404182
	.globl sub_404182
	.type sub_404182, @function
sub_404182:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404190

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
	#Procedure 0x404205
	.globl sub_404205
	.type sub_404205, @function
sub_404205:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404210

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
	jne	.label_178
	test	byte ptr [rbp - 0x13], 1
	je	.label_179
	test	byte ptr [rbp - 0x11], 1
	jne	.label_178
	call	__errno_location
	cmp	dword ptr [rax], 9
	je	.label_179
.label_178:
	test	byte ptr [rbp - 0x13], 1
	jne	.label_180
	call	__errno_location
	mov	dword ptr [rax], 0
.label_180:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_181
.label_179:
	mov	dword ptr [rbp - 4], 0
.label_181:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4042b9
	.globl sub_4042b9
	.type sub_4042b9, @function
sub_4042b9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4042c0
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
	jb	.label_182
	jmp	.label_184
.label_184:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x7f
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_185
	jmp	.label_182
.label_182:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_183
.label_185:
	mov	byte ptr [rbp - 1], 0
.label_183:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404308
	.globl sub_404308
	.type sub_404308, @function
sub_404308:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404310

	.globl mp_millerrabin
	.type mp_millerrabin, @function
mp_millerrabin:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	qword ptr [rbp - 0x38], r9
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	call	__gmpz_powm
	mov	eax, 1
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x28]
	call	__gmpz_cmp_ui
	cmp	eax, 0
	je	.label_191
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x18]
	call	__gmpz_cmp
	cmp	eax, 0
	jne	.label_189
.label_191:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_187
.label_188:
	jmp	.label_193
.label_193:
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_186
.label_189:
	mov	qword ptr [rbp - 0x40], 1
.label_186:
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x38]
	jae	.label_192
	mov	eax, 2
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	call	__gmpz_powm_ui
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x18]
	call	__gmpz_cmp
	cmp	eax, 0
	jne	.label_190
	mov	byte ptr [rbp - 1], 1
	jmp	.label_187
.label_192:
	mov	byte ptr [rbp - 1], 0
.label_187:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4043f2
	.globl sub_4043f2
	.type sub_4043f2, @function
sub_4043f2:

	nop	word ptr cs:[rax + rax]
.label_190:
	mov	eax, 1
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x28]
	call	__gmpz_cmp_ui
	cmp	eax, 0
	jne	.label_188
	mov	byte ptr [rbp - 1], 0
	jmp	.label_187
	.section	.text
	.align	16
	#Procedure 0x404420

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
	jne	.label_194
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	jne	.label_194
	call	xalloc_die
.label_194:
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404471
	.globl sub_404471
	.type sub_404471, @function
sub_404471:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404480
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
	#Procedure 0x4044ac
	.globl sub_4044ac
	.type sub_4044ac, @function
sub_4044ac:

	nop	dword ptr [rax]
.label_227:
	call	abort
.label_326:
	cmp	qword ptr [rbp - 0x60], 0
	jne	.label_237
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_237
	test	byte ptr [rbp - 0x7b], 1
	je	.label_237
	jmp	.label_199
.label_324:
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	lea	rcx, [rbp - 0xa0]
	mov	rdi, rcx
	call	memset
	mov	qword ptr [rbp - 0x90], 0
	mov	byte ptr [rbp - 0x91], 1
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_251
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
.label_251:
	jmp	.label_256
.label_256:
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
	jne	.label_265
	jmp	.label_217
.label_356:
	jmp	.label_271
.label_271:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_273
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0
.label_273:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_280
.label_237:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_285
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_285
	test	byte ptr [rbp - 0x7d], 1
	je	.label_285
	test	byte ptr [rbp - 0x7e], 1
	je	.label_289
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
	jmp	.label_280
.label_248:
	jmp	.label_305
.label_305:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_306
	test	byte ptr [rbp - 0x82], 1
	jne	.label_306
	jmp	.label_312
.label_312:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_315
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_315:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_301
.label_301:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_319
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_319:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_306:
	jmp	.label_345
.label_345:
	jmp	.label_328
.label_328:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_330
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_330:
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
	jmp	.label_334
.label_1430:
	mov	byte ptr [rbp - 0x7d], 1
	mov	byte ptr [rbp - 0x83], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_339
	test	byte ptr [rbp - 0x7b], 1
	je	.label_264
	jmp	.label_199
.label_1426:
	mov	byte ptr [rbp - 0x80], 0x66
	jmp	.label_201
.label_253:
	jmp	.label_244
.label_244:
	mov	edi, dword ptr [rbp - 0xa4]
	call	iswprint
	cmp	eax, 0
	jne	.label_278
	mov	byte ptr [rbp - 0x91], 0
.label_278:
	mov	rax, qword ptr [rbp - 0xb0]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_374
.label_374:
	jmp	.label_358
.label_358:
	jmp	.label_364
.label_364:
	lea	rdi, [rbp - 0xa0]
	call	mbsinit
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_256
.label_217:
	jmp	.label_331
.label_331:
	mov	eax, 1
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x91]
	and	dl, 1
	mov	byte ptr [rbp - 0x83], dl
	cmp	rcx, qword ptr [rbp - 0x90]
	jb	.label_371
	test	byte ptr [rbp - 0x79], 1
	je	.label_378
	test	byte ptr [rbp - 0x91], 1
	jne	.label_378
.label_371:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0xc0], rax
.label_334:
	test	byte ptr [rbp - 0x79], 1
	je	.label_383
	test	byte ptr [rbp - 0x91], 1
	jne	.label_383
	jmp	.label_388
.label_388:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_391
	jmp	.label_199
.label_289:
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_395
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_395
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x60], 0
	jmp	.label_398
.label_385:
	jmp	.label_196
.label_239:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_197
	jmp	.label_199
.label_287:
	jmp	.label_203
.label_203:
	mov	byte ptr [rbp - 0x79], 1
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x70], rax
	mov	rdi, qword ptr [rbp - 0x70]
	call	strlen
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_209
.label_197:
	jmp	.label_212
.label_1358:
	mov	byte ptr [rbp - 0x79], 1
.label_1357:
	mov	byte ptr [rbp - 0x7b], 1
.label_1359:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_216
	mov	byte ptr [rbp - 0x79], 1
.label_216:
	jmp	.label_219
.label_219:
	mov	dword ptr [rbp - 0x34], 2
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_222
	jmp	.label_224
.label_224:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_226
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_226:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_222
.label_222:
	movabs	rax, OFFSET FLAT:label_234
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_209
.label_1429:
	mov	byte ptr [rbp - 0x83], 1
	jmp	.label_230
.label_202:
	jmp	.label_230
.label_384:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_240
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_240
	jmp	.label_245
.label_245:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_247
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_247:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_255
.label_255:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_257
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_257:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_260
.label_260:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_262
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_262:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_240:
	jmp	.label_267
.label_267:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_269
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_269:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_277
.label_277:
	jmp	.label_196
.label_196:
	jmp	.label_281
.label_281:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_283
	test	byte ptr [rbp - 0x82], 1
	jne	.label_283
	jmp	.label_288
.label_288:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_290
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_290:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_351
.label_351:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_376
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_376:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_283:
	jmp	.label_308
.label_308:
	jmp	.label_309
.label_309:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_310
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_310:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	test	byte ptr [rbp - 0x83], 1
	jne	.label_317
	mov	byte ptr [rbp - 0x7e], 0
.label_317:
	jmp	.label_213
.label_213:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_320
.label_303:
	test	byte ptr [rbp - 0x7a], 1
	je	.label_324
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
	jmp	.label_331
.label_284:
	jmp	.label_225
.label_225:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_242
	test	byte ptr [rbp - 0x7b], 1
	je	.label_242
	jmp	.label_199
.label_295:
	test	byte ptr [rbp - 0x79], 1
	je	.label_284
	test	byte ptr [rbp - 0x7b], 1
	je	.label_284
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_284
	jmp	.label_196
.label_272:
	jmp	.label_230
.label_395:
	jmp	.label_347
.label_347:
	jmp	.label_285
.label_285:
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_271
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_271
	jmp	.label_354
.label_354:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_356
	jmp	.label_360
.label_360:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_363
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_363:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_368
.label_368:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_354
.label_229:
	jmp	.label_250
.label_250:
	mov	byte ptr [rbp - 0x83], 1
.label_1428:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_272
	test	byte ptr [rbp - 0x7b], 1
	je	.label_272
	jmp	.label_199
.label_1432:
	mov	al, byte ptr [rbp - 0x7f]
	mov	byte ptr [rbp - 0x80], al
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_295
	test	byte ptr [rbp - 0x7b], 1
	je	.label_385
	jmp	.label_199
.label_276:
	jmp	.label_346
.label_346:
	jmp	.label_389
.label_389:
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, 1
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_392
	.section	.text
	.align	16
	#Procedure 0x404be2

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
.label_398:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0xc8], rcx
	mov	qword ptr [rbp - 0xd0], rdx
	ja	.label_227
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_233]]
	jmp	rcx
.label_367:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 1
	cmp	eax, 0
	je	.label_235
	jmp	.label_213
.label_1431:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0xfc], eax
	mov	dword ptr [rbp - 0x100], ecx
	je	.label_239
	jmp	.label_241
.label_241:
	mov	eax, dword ptr [rbp - 0xfc]
	sub	eax, 5
	mov	dword ptr [rbp - 0x104], eax
	je	.label_258
	jmp	.label_249
.label_199:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_252
	test	byte ptr [rbp - 0x79], 1
	je	.label_252
	mov	dword ptr [rbp - 0x34], 4
.label_252:
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
.label_280:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x158
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404d6b
	.globl sub_404d6b
	.type sub_404d6b, @function
sub_404d6b:

	nop	dword ptr [rax + rax]
.label_1363:
	cmp	dword ptr [rbp - 0x34], 0xa
	je	.label_270
	movabs	rdi, OFFSET FLAT:label_243
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	movabs	rdi, OFFSET FLAT:label_234
	mov	qword ptr [rbp - 0x48], rax
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	mov	qword ptr [rbp - 0x50], rax
.label_270:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_203
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x70], rax
.label_302:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_287
	jmp	.label_292
.label_292:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_294
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_294:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_387
.label_387:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_302
.label_258:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 4
	cmp	eax, 0
	je	.label_298
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_298
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x3f
	jne	.label_298
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 2]
	mov	esi, edx
	sub	esi, 0x21
	mov	dword ptr [rbp - 0x108], edx
	mov	dword ptr [rbp - 0x10c], esi
	je	.label_318
	jmp	.label_323
.label_323:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x110], eax
	jb	.label_318
	jmp	.label_329
.label_329:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x114], eax
	je	.label_318
	jmp	.label_333
.label_333:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2f
	mov	dword ptr [rbp - 0x118], eax
	je	.label_318
	jmp	.label_397
.label_397:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0x11c], eax
	ja	.label_337
	jmp	.label_318
.label_318:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_340
	jmp	.label_199
.label_1422:
	mov	byte ptr [rbp - 0x80], 0x62
	jmp	.label_201
.label_1361:
	mov	dword ptr [rbp - 0x34], 5
	mov	byte ptr [rbp - 0x7b], 1
.label_1360:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_341
	jmp	.label_313
.label_313:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_349
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_349:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_341
.label_341:
	movabs	rax, OFFSET FLAT:label_359
	mov	byte ptr [rbp - 0x79], 1
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_209
.label_1420:
	test	byte ptr [rbp - 0x79], 1
	je	.label_367
	jmp	.label_369
.label_369:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_221
	jmp	.label_199
.label_235:
	jmp	.label_223
.label_223:
	jmp	.label_230
.label_307:
	jmp	.label_196
.label_391:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_377
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_377
	jmp	.label_279
.label_279:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_380
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_380:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_386
.label_386:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_393
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_393:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_396
.label_396:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_394
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_394:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_377:
	jmp	.label_205
.label_205:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_206
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_206:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_214
.label_214:
	jmp	.label_300
.label_300:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_220
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 6
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_220:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_343
.label_343:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_232
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 3
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_232:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	movzx	eax, byte ptr [rbp - 0x7f]
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	byte ptr [rbp - 0x7f], cl
	jmp	.label_246
.label_249:
	jmp	.label_212
.label_212:
	jmp	.label_230
.label_370:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_244
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_244
	mov	qword ptr [rbp - 0xb8], 1
.label_392:
	mov	rax, qword ptr [rbp - 0xb8]
	cmp	rax, qword ptr [rbp - 0xb0]
	jae	.label_253
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
	jb	.label_263
	jmp	.label_390
.label_390:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x5e
	mov	dword ptr [rbp - 0x138], eax
	je	.label_263
	jmp	.label_266
.label_266:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x60
	mov	dword ptr [rbp - 0x13c], eax
	je	.label_263
	jmp	.label_254
.label_254:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x140], eax
	jne	.label_276
	jmp	.label_263
.label_263:
	jmp	.label_199
.label_1425:
	mov	byte ptr [rbp - 0x80], 0x76
	jmp	.label_201
.label_1362:
	mov	byte ptr [rbp - 0x79], 1
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_209
.label_378:
	jmp	.label_230
.label_230:
	test	byte ptr [rbp - 0x79], 1
	je	.label_291
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_293
.label_291:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_296
.label_293:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_296
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
	jne	.label_299
.label_296:
	test	byte ptr [rbp - 0x81], 1
	jne	.label_299
	jmp	.label_196
.label_340:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + rax + 2]
	mov	byte ptr [rbp - 0x7f], dl
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_314
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_314:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_321
.label_321:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_325
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_325:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_357
.label_357:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_332
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_332:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_336
.label_336:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_338
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_338:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_261
.label_221:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_344
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_344
	jmp	.label_348
.label_348:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_350
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_350:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_355
.label_355:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_361
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_361:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_366
.label_366:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_372
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_372:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_344:
	jmp	.label_379
.label_379:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_297
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_297:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_382
.label_382:
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_218
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_218
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x28]
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_218
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x39
	jg	.label_218
	jmp	.label_198
.label_198:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_200
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_200:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_207
.label_207:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_211
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_211:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_218
.label_218:
	mov	byte ptr [rbp - 0x7f], 0x30
	jmp	.label_223
.label_1427:
	mov	byte ptr [rbp - 0x80], 0x72
	jmp	.label_225
.label_210:
	jmp	.label_228
.label_228:
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_229
	jmp	.label_230
.label_265:
	cmp	qword ptr [rbp - 0xb0], -1
	jne	.label_231
	mov	byte ptr [rbp - 0x91], 0
	jmp	.label_217
.label_383:
	test	byte ptr [rbp - 0x81], 1
	je	.label_311
	jmp	.label_236
.label_236:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_238
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_238:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x81], 0
.label_311:
	jmp	.label_246
.label_246:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	cmp	rax, rcx
	ja	.label_248
	jmp	.label_307
.label_208:
	cmp	qword ptr [rbp - 0x30], 1
	je	.label_210
.label_215:
	jmp	.label_230
.label_231:
	cmp	qword ptr [rbp - 0xb0], -2
	jne	.label_370
	mov	byte ptr [rbp - 0x91], 0
.label_275:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x58]
	add	rdx, qword ptr [rbp - 0x90]
	cmp	rdx, qword ptr [rbp - 0x30]
	mov	byte ptr [rbp - 0x129], cl
	jae	.label_259
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x129], sil
.label_259:
	mov	al, byte ptr [rbp - 0x129]
	test	al, 1
	jne	.label_268
	jmp	.label_274
.label_268:
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_275
.label_209:
	mov	qword ptr [rbp - 0x58], 0
.label_320:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_282
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	sete	sil
	and	sil, 1
	movzx	edx, sil
	mov	dword ptr [rbp - 0xd4], edx
	jmp	.label_286
.label_1424:
	mov	byte ptr [rbp - 0x80], 0x6e
	jmp	.label_225
.label_1356:
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_209
.label_337:
	jmp	.label_261
.label_261:
	jmp	.label_298
.label_298:
	jmp	.label_212
.label_1423:
	mov	byte ptr [rbp - 0x80], 0x74
	jmp	.label_225
.label_195:
	mov	byte ptr [rbp - 0x81], 1
.label_327:
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
	ja	.label_303
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_316]]
	jmp	rcx
.label_1421:
	mov	byte ptr [rbp - 0x80], 0x61
	jmp	.label_201
.label_282:
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x30]
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	dword ptr [rbp - 0xd4], edx
.label_286:
	mov	eax, dword ptr [rbp - 0xd4]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_322
	jmp	.label_326
.label_322:
	mov	byte ptr [rbp - 0x81], 0
	mov	byte ptr [rbp - 0x82], 0
	mov	byte ptr [rbp - 0x83], 0
	test	byte ptr [rbp - 0x79], 1
	je	.label_327
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_327
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_327
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x78]
	cmp	qword ptr [rbp - 0x30], -1
	mov	qword ptr [rbp - 0xe0], rax
	jne	.label_335
	mov	eax, 1
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x78]
	jae	.label_335
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_342
.label_264:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_304
	cmp	qword ptr [rbp - 0x68], 0
	jne	.label_304
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0x20], 0
.label_304:
	jmp	.label_352
.label_352:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_353
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_353:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_362
.label_362:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_365
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_365:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_373
.label_373:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_375
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_375:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_339:
	jmp	.label_230
.label_299:
	jmp	.label_204
.label_204:
	jmp	.label_381
.label_381:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_384
	jmp	.label_199
.label_335:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xe8], rax
.label_342:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rcx, qword ptr [rbp - 0xe0]
	cmp	rcx, rax
	ja	.label_327
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rdi, rax
	call	memcmp
	cmp	eax, 0
	jne	.label_327
	test	byte ptr [rbp - 0x7b], 1
	je	.label_195
	jmp	.label_199
.label_242:
	jmp	.label_201
.label_201:
	test	byte ptr [rbp - 0x79], 1
	je	.label_202
	mov	al, byte ptr [rbp - 0x80]
	mov	byte ptr [rbp - 0x7f], al
	jmp	.label_204
.label_1433:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_208
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	je	.label_210
	jmp	.label_215
.label_274:
	jmp	.label_217
.label_418:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax], 0
	je	.label_415
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x38]
	jb	.label_415
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_404
.label_416:
	lea	rax, [rbp - 0x1048]
	mov	rcx, qword ptr [rbp - 0x1078]
	sub	rcx, rax
	add	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rcx
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x38], rax
	cmp	qword ptr [rbp - 0x38], 0
	jne	.label_418
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rax], 0
	mov	dword ptr [rbp - 4], 0
	jmp	.label_399
.label_401:
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_411
	jmp	.label_413
.label_410:
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
	jne	.label_400
	jmp	.label_405
.label_407:
	jmp	.label_406
.label_413:
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
	jne	.label_416
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_399
.label_415:
	mov	rdi, qword ptr [rbp - 0x38]
	call	malloc
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x40], 0
	jne	.label_403
	call	__errno_location
	mov	dword ptr [rax], 0xc
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_399
.label_405:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rcx]
	je	.label_408
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
.label_408:
	mov	dword ptr [rbp - 4], 0xffffffff
.label_399:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10f0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405a0e
	.globl sub_405a0e
	.type sub_405a0e, @function
sub_405a0e:

	nop	dword ptr [rax]
.label_411:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_399
.label_417:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 0
	jmp	.label_399
.label_409:
	jmp	.label_405
	.section	.text
	.align	16
	#Procedure 0x405a44

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
.label_414:
	cmp	qword ptr [rbp - 0x1058], 0
	jbe	.label_413
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
	jne	.label_412
	call	__errno_location
	cmp	dword ptr [rax], 7
	jne	.label_401
	jmp	.label_402
.label_403:
	jmp	.label_404
.label_404:
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
.label_406:
	cmp	qword ptr [rbp - 0x1098], 0
	jbe	.label_410
	lea	rsi, [rbp - 0x1090]
	lea	rdx, [rbp - 0x1098]
	lea	rcx, [rbp - 0x10a0]
	lea	r8, [rbp - 0x10a8]
	mov	rdi, qword ptr [rbp - 0x20]
	call	iconv
	mov	qword ptr [rbp - 0x10b0], rax
	cmp	qword ptr [rbp - 0x10b0], -1
	jne	.label_407
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_409
	jmp	.label_410
.label_402:
	jmp	.label_412
.label_412:
	lea	rax, [rbp - 0x1048]
	mov	rcx, qword ptr [rbp - 0x1060]
	sub	rcx, rax
	add	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rcx
	jmp	.label_414
.label_400:
	cmp	qword ptr [rbp - 0x10a8], 0
	je	.label_417
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405c00

	.globl main
	.type main, @function
main:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x80
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rsi]
	call	set_program_name
	mov	edi, 6
	movabs	rsi, OFFSET FLAT:label_419
	call	setlocale
	movabs	rdi, OFFSET FLAT:label_428
	movabs	rsi, OFFSET FLAT:label_442
	mov	qword ptr [rbp - 0x28], rax
	call	bindtextdomain
	movabs	rdi, OFFSET FLAT:label_428
	mov	qword ptr [rbp - 0x30], rax
	call	textdomain
	mov	qword ptr [rbp - 0x38], rax
	call	lbuf_alloc
	movabs	rdi, OFFSET FLAT:close_stdout
	call	atexit
	movabs	rdi, OFFSET FLAT:lbuf_flush
	mov	dword ptr [rbp - 0x3c], eax
	call	atexit
	mov	dword ptr [rbp - 0x40], eax
.label_426:
	movabs	rdx, OFFSET FLAT:label_419
	movabs	rcx, OFFSET FLAT:long_options
	xor	eax, eax
	mov	r8d, eax
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	getopt_long
	mov	dword ptr [rbp - 0x14], eax
	cmp	eax, -1
	je	.label_427
	mov	eax, dword ptr [rbp - 0x14]
	mov	ecx, eax
	sub	ecx, 0xffffff7d
	mov	dword ptr [rbp - 0x44], eax
	mov	dword ptr [rbp - 0x48], ecx
	je	.label_420
	jmp	.label_434
.label_434:
	mov	eax, dword ptr [rbp - 0x44]
	sub	eax, 0xffffff7e
	mov	dword ptr [rbp - 0x4c], eax
	je	.label_435
	jmp	.label_440
.label_440:
	mov	eax, dword ptr [rbp - 0x44]
	sub	eax, 0x80
	mov	dword ptr [rbp - 0x50], eax
	jne	.label_429
	jmp	.label_421
.label_421:
	mov	byte ptr [byte ptr [dev_debug]],  1
	jmp	.label_425
.label_420:
	movabs	rdi, OFFSET FLAT:label_431
	movabs	rsi, OFFSET FLAT:label_432
	mov	rax,  qword ptr [word ptr [stdout]]
	mov	rcx,  qword ptr [word ptr [Version]]
	mov	qword ptr [rbp - 0x58], rcx
	mov	qword ptr [rbp - 0x60], rax
	call	proper_name_utf8
	movabs	rdi, OFFSET FLAT:label_423
	movabs	rsi, OFFSET FLAT:label_424
	mov	qword ptr [rbp - 0x68], rax
	call	proper_name_utf8
	movabs	rsi, OFFSET FLAT:label_436
	movabs	rdx, OFFSET FLAT:label_13
	movabs	r8, OFFSET FLAT:label_437
	xor	r9d, r9d
	mov	ecx, r9d
	mov	rdi, qword ptr [rbp - 0x60]
	mov	r10, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x70], rcx
	mov	rcx, r10
	mov	r9, qword ptr [rbp - 0x68]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], 0
	mov	al, 0
	call	version_etc
	xor	edi, edi
	call	exit
.label_439:
	jmp	.label_441
.label_441:
	mov	eax, 1
	xor	ecx, ecx
	mov	dl, byte ptr [rbp - 0x15]
	test	dl, 1
	cmovne	eax, ecx
	add	rsp, 0x80
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405dda
	.globl sub_405dda
	.type sub_405dda, @function
sub_405dda:

	nop	dword ptr [rax]
.label_438:
	mov	byte ptr [rbp - 0x15], 1
	mov	eax,  dword ptr [dword ptr [optind]]
	mov	dword ptr [rbp - 0x1c], eax
.label_433:
	mov	eax, dword ptr [rbp - 0x1c]
	cmp	eax, dword ptr [rbp - 8]
	jge	.label_439
	movsxd	rax, dword ptr [rbp - 0x1c]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rcx + rax*8]
	call	print_factors
	test	al, 1
	jne	.label_422
	mov	byte ptr [rbp - 0x15], 0
.label_422:
	jmp	.label_430
.label_430:
	mov	eax, dword ptr [rbp - 0x1c]
	add	eax, 1
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_433
.label_427:
	mov	eax, dword ptr [rbp - 8]
	cmp	eax,  dword ptr [dword ptr [optind]]
	jg	.label_438
	call	do_stdin
	and	al, 1
	mov	byte ptr [rbp - 0x15], al
	jmp	.label_441
.label_429:
	mov	edi, 1
	call	usage
.label_425:
	jmp	.label_426
.label_435:
	xor	edi, edi
	call	usage
.label_445:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	prime2_p
	test	al, 1
	jne	.label_446
	jmp	.label_447
.label_446:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	call	factor_insert_large
	jmp	.label_443
	.section	.text
	.align	16
	#Procedure 0x405e90

	.globl factor
	.type factor, @function
factor:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + 0xfa], 0
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rdx + 8], 0
	cmp	qword ptr [rbp - 8], 0
	jne	.label_444
	cmp	qword ptr [rbp - 0x10], 2
	jae	.label_444
	jmp	.label_443
.label_444:
	lea	rdi, [rbp - 8]
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	call	factor_using_division
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 8], 0
	jne	.label_445
	cmp	qword ptr [rbp - 0x10], 2
	jae	.label_445
	jmp	.label_443
.label_449:
	mov	eax, 1
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	call	factor_using_pollard_rho2
.label_448:
	jmp	.label_443
.label_443:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405f2d
	.globl sub_405f2d
	.type sub_405f2d, @function
sub_405f2d:

	nop	word ptr cs:[rax + rax]
.label_447:
	cmp	qword ptr [rbp - 8], 0
	jne	.label_449
	mov	eax, 1
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	factor_using_pollard_rho
	jmp	.label_448
	.section	.text
	.align	16
	#Procedure 0x405f60

	.globl powm
	.type powm, @function
powm:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x30], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	and	rcx, 1
	cmp	rcx, 0
	je	.label_450
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
.label_450:
	jmp	.label_453
.label_453:
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_451
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	call	mulredc
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	shr	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	and	rax, 1
	cmp	rax, 0
	je	.label_452
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	call	mulredc
	mov	qword ptr [rbp - 0x30], rax
.label_452:
	jmp	.label_453
.label_451:
	mov	rax, qword ptr [rbp - 0x30]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40600d
	.globl sub_40600d
	.type sub_40600d, @function
sub_40600d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406010

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_454
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	jne	.label_455
.label_454:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
	jmp	.label_456
.label_455:
	mov	rdi, qword ptr [rbp - 0x10]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
.label_456:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406068
	.globl sub_406068
	.type sub_406068, @function
sub_406068:

	nop	dword ptr [rax + rax]
.label_457:
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
	#Procedure 0x40608e

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
	jne	.label_459
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_459:
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 0xa
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_458
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_457
.label_458:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4060e0
	.globl c_islower
	.type c_islower, @function
c_islower:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_460
	jmp	.label_462
.label_462:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_461
.label_460:
	mov	byte ptr [rbp - 1], 0
.label_461:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406112
	.globl sub_406112
	.type sub_406112, @function
sub_406112:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406120

	.globl mp_factor_insert_ui
	.type mp_factor_insert_ui, @function
mp_factor_insert_ui:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	lea	rax, [rbp - 0x20]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	__gmpz_init_set_ui
	lea	rsi, [rbp - 0x20]
	mov	rdi, qword ptr [rbp - 8]
	call	mp_factor_insert
	lea	rdi, [rbp - 0x20]
	call	__gmpz_clear
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40615c
	.globl sub_40615c
	.type sub_40615c, @function
sub_40615c:

	nop	dword ptr [rax]
.label_466:
	mov	rax, qword ptr [rbp - 0x210]
	mov	qword ptr [rbp - 0x1d0], rax
	mov	qword ptr [rbp - 0x1c8], 0
.label_471:
	jmp	.label_492
.label_492:
	jmp	.label_463
.label_463:
	lea	r9, [rbp - 0x60]
	lea	rcx, [rbp - 0x70]
	lea	rdx, [rbp - 0x1d0]
	lea	rsi, [rbp - 0x50]
	lea	rax, [rbp - 0x1e0]
	add	rax, 8
	mov	r8, qword ptr [rbp - 0x78]
	mov	rdi, rax
	call	powm2
	mov	r10b, 1
	mov	qword ptr [rbp - 0x1e0], rax
	mov	rax, qword ptr [rbp - 0x1e0]
	cmp	rax, qword ptr [rbp - 0x60]
	mov	byte ptr [rbp - 0x2ab], r10b
	jne	.label_475
	mov	rax, qword ptr [rbp - 0x1d8]
	cmp	rax, qword ptr [rbp - 0x58]
	setne	cl
	mov	byte ptr [rbp - 0x2ab], cl
.label_475:
	mov	al, byte ptr [rbp - 0x2ab]
	and	al, 1
	mov	byte ptr [rbp - 0x1b5], al
	mov	eax, dword ptr [rbp - 0x1fc]
	add	eax, 1
	mov	dword ptr [rbp - 0x1fc], eax
	jmp	.label_488
.label_489:
	jmp	.label_464
.label_464:
	jmp	.label_465
.label_465:
	mov	eax, dword ptr [rbp - 0x1fc]
	mov	ecx, eax
	mov	rcx, qword ptr [rbp + rcx*8 - 0x170]
	mov	qword ptr [rbp - 0x218], rcx
	mov	rcx, qword ptr [rbp - 0x218]
	shr	rcx, 1
	and	rcx, 0x7f
	movzx	eax,  byte ptr [byte ptr [+ (rcx * 1) + binvert_table]]
	mov	ecx, eax
	mov	qword ptr [rbp - 0x220], rcx
	mov	rcx, qword ptr [rbp - 0x220]
	shl	rcx, 1
	mov	rdx, qword ptr [rbp - 0x220]
	imul	rdx, qword ptr [rbp - 0x220]
	imul	rdx, qword ptr [rbp - 0x218]
	sub	rcx, rdx
	mov	qword ptr [rbp - 0x220], rcx
	mov	rcx, qword ptr [rbp - 0x220]
	shl	rcx, 1
	mov	rdx, qword ptr [rbp - 0x220]
	imul	rdx, qword ptr [rbp - 0x220]
	imul	rdx, qword ptr [rbp - 0x218]
	sub	rcx, rdx
	mov	qword ptr [rbp - 0x220], rcx
	mov	rcx, qword ptr [rbp - 0x220]
	shl	rcx, 1
	mov	rdx, qword ptr [rbp - 0x220]
	imul	rdx, qword ptr [rbp - 0x220]
	imul	rdx, qword ptr [rbp - 0x218]
	sub	rcx, rdx
	mov	qword ptr [rbp - 0x220], rcx
	mov	rcx, qword ptr [rbp - 0x220]
	mov	qword ptr [rbp - 0x208], rcx
	mov	rax, qword ptr [rbp - 0x40]
	imul	rax, qword ptr [rbp - 0x208]
	mov	qword ptr [rbp - 0x210], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	ecx, dword ptr [rbp - 0x1fc]
	mov	edx, ecx
	cmp	rax, qword ptr [rbp + rdx*8 - 0x170]
	jb	.label_466
	mov	rax, qword ptr [rbp - 0x210]
	mov	ecx, dword ptr [rbp - 0x1fc]
	mov	edx, ecx
	mov	rdx, qword ptr [rbp + rdx*8 - 0x170]
	mov	qword ptr [rbp - 0x290], rdx
	mul	qword ptr [rbp - 0x290]
	mov	qword ptr [rbp - 0x230], rax
	mov	qword ptr [rbp - 0x228], rdx
	mov	rax, qword ptr [rbp - 0x38]
	sub	rax, qword ptr [rbp - 0x228]
	imul	rax, qword ptr [rbp - 0x208]
	mov	qword ptr [rbp - 0x1c8], rax
	mov	rax, qword ptr [rbp - 0x210]
	mov	qword ptr [rbp - 0x1d0], rax
	jmp	.label_471
.label_503:
	mov	rax, qword ptr [rbp - 0x1a0]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x1a8]
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_505
.label_505:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x260], rcx
	mov	qword ptr [rbp - 0x268], rsi
	add	rdx, qword ptr [rbp - 0x268]
	adc	rax, qword ptr [rbp - 0x260]
	mov	qword ptr [rbp - 0x48], rax
	mov	qword ptr [rbp - 0x50], rdx
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x10]
	ja	.label_496
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x10]
	jne	.label_497
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x18]
	jb	.label_497
.label_496:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x270], rcx
	mov	qword ptr [rbp - 0x278], rsi
	sub	rdx, qword ptr [rbp - 0x278]
	sbb	rax, qword ptr [rbp - 0x270]
	mov	qword ptr [rbp - 0x48], rax
	mov	qword ptr [rbp - 0x50], rdx
.label_497:
	jmp	.label_501
.label_501:
	lea	r9, [rbp - 0x60]
	lea	rcx, [rbp - 0x30]
	lea	rdx, [rbp - 0x50]
	lea	rdi, [rbp - 0x70]
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x70], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x68], rax
	mov	rsi, qword ptr [rbp - 0x78]
	mov	r8d, dword ptr [rbp - 0x7c]
	call	millerrabin2
	test	al, 1
	jne	.label_506
	mov	byte ptr [rbp - 1], 0
	jmp	.label_472
.label_467:
	movabs	rdi, OFFSET FLAT:label_494
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	call	abort
.label_508:
	jmp	.label_512
.label_512:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x250], rax
	bsf	rcx, qword ptr [rbp - 0x250]
	mov	dword ptr [rbp - 0x7c], ecx
	jmp	.label_514
.label_514:
	mov	eax, 0x40
	mov	rcx, qword ptr [rbp - 0x38]
	sub	eax, dword ptr [rbp - 0x7c]
	mov	eax, eax
	mov	edx, eax
	mov	qword ptr [rbp - 0x2a8], rcx
	mov	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x2a8]
	shl	rdx, cl
	mov	rsi, qword ptr [rbp - 0x40]
	mov	eax, dword ptr [rbp - 0x7c]
	mov	ecx, eax
	shr	rsi, cl
	or	rdx, rsi
	mov	qword ptr [rbp - 0x30], rdx
	mov	rdx, qword ptr [rbp - 0x38]
	mov	eax, dword ptr [rbp - 0x7c]
	mov	ecx, eax
	shr	rdx, cl
	mov	qword ptr [rbp - 0x28], rdx
	jmp	.label_502
.label_502:
	mov	qword ptr [rbp - 0x188], 2
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x190], rax
	mov	rax, qword ptr [rbp - 0x190]
	shr	rax, 1
	and	rax, 0x7f
	movzx	ecx,  byte ptr [byte ptr [+ (rax * 1) + binvert_table]]
	mov	eax, ecx
	mov	qword ptr [rbp - 0x198], rax
	mov	rax, qword ptr [rbp - 0x198]
	shl	rax, 1
	mov	rdx, qword ptr [rbp - 0x198]
	imul	rdx, qword ptr [rbp - 0x198]
	imul	rdx, qword ptr [rbp - 0x190]
	sub	rax, rdx
	mov	qword ptr [rbp - 0x198], rax
	mov	rax, qword ptr [rbp - 0x198]
	shl	rax, 1
	mov	rdx, qword ptr [rbp - 0x198]
	imul	rdx, qword ptr [rbp - 0x198]
	imul	rdx, qword ptr [rbp - 0x190]
	sub	rax, rdx
	mov	qword ptr [rbp - 0x198], rax
	mov	rax, qword ptr [rbp - 0x198]
	shl	rax, 1
	mov	rdx, qword ptr [rbp - 0x198]
	imul	rdx, qword ptr [rbp - 0x198]
	imul	rdx, qword ptr [rbp - 0x190]
	sub	rax, rdx
	mov	qword ptr [rbp - 0x198], rax
	mov	rax, qword ptr [rbp - 0x198]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_507
.label_507:
	mov	eax, 1
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x10]
	jae	.label_510
	mov	qword ptr [rbp - 0x1a0], 1
	mov	qword ptr [rbp - 0x1a8], 0
	mov	qword ptr [rbp - 0x1b0], 0x40
	jmp	.label_495
.label_483:
	mov	rax, qword ptr [rbp - 0x238]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x240]
	mov	qword ptr [rbp - 0x50], rax
	lea	r9, [rbp - 0x60]
	lea	rcx, [rbp - 0x30]
	lea	rdx, [rbp - 0x50]
	lea	rdi, [rbp - 0x70]
	mov	rsi, qword ptr [rbp - 0x78]
	mov	r8d, dword ptr [rbp - 0x7c]
	call	millerrabin2
	test	al, 1
	jne	.label_468
	mov	byte ptr [rbp - 1], 0
	jmp	.label_472
.label_476:
	mov	qword ptr [rbp - 0x238], 0
	mov	rax, qword ptr [rbp - 0x188]
	mov	qword ptr [rbp - 0x240], rax
	mov	qword ptr [rbp - 0x248], 0x80
.label_486:
	jmp	.label_470
.label_470:
	mov	rax, qword ptr [rbp - 0x248]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x248], rcx
	cmp	rax, 0
	jbe	.label_483
	jmp	.label_490
.label_490:
	mov	rax, qword ptr [rbp - 0x238]
	shl	rax, 1
	mov	rcx, qword ptr [rbp - 0x240]
	shr	rcx, 0x3f
	or	rax, rcx
	mov	qword ptr [rbp - 0x238], rax
	mov	rax, qword ptr [rbp - 0x240]
	shl	rax, 1
	mov	qword ptr [rbp - 0x240], rax
	mov	rax, qword ptr [rbp - 0x238]
	cmp	rax, qword ptr [rbp - 0x10]
	ja	.label_491
	mov	rax, qword ptr [rbp - 0x238]
	cmp	rax, qword ptr [rbp - 0x10]
	jne	.label_478
	mov	rax, qword ptr [rbp - 0x240]
	cmp	rax, qword ptr [rbp - 0x18]
	jb	.label_478
.label_491:
	mov	rax, qword ptr [rbp - 0x238]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x240]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x280], rcx
	mov	qword ptr [rbp - 0x288], rsi
	sub	rdx, qword ptr [rbp - 0x288]
	sbb	rax, qword ptr [rbp - 0x280]
	mov	qword ptr [rbp - 0x238], rax
	mov	qword ptr [rbp - 0x240], rdx
.label_478:
	jmp	.label_470
.label_472:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x2b0
	pop	rbp
	ret	
.label_510:
	mov	qword ptr [rbp - 0x1a0], 0
	mov	qword ptr [rbp - 0x1a8], 1
	mov	qword ptr [rbp - 0x1b0], 0x80
.label_495:
	jmp	.label_498
.label_498:
	mov	rax, qword ptr [rbp - 0x1b0]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x1b0], rcx
	cmp	rax, 0
	jbe	.label_503
	jmp	.label_511
.label_511:
	mov	rax, qword ptr [rbp - 0x1a0]
	shl	rax, 1
	mov	rcx, qword ptr [rbp - 0x1a8]
	shr	rcx, 0x3f
	or	rax, rcx
	mov	qword ptr [rbp - 0x1a0], rax
	mov	rax, qword ptr [rbp - 0x1a8]
	shl	rax, 1
	mov	qword ptr [rbp - 0x1a8], rax
	mov	rax, qword ptr [rbp - 0x1a0]
	cmp	rax, qword ptr [rbp - 0x10]
	ja	.label_513
	mov	rax, qword ptr [rbp - 0x1a0]
	cmp	rax, qword ptr [rbp - 0x10]
	jne	.label_499
	mov	rax, qword ptr [rbp - 0x1a8]
	cmp	rax, qword ptr [rbp - 0x18]
	jb	.label_499
.label_513:
	mov	rax, qword ptr [rbp - 0x1a0]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x1a8]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x298], rcx
	mov	qword ptr [rbp - 0x2a0], rsi
	sub	rdx, qword ptr [rbp - 0x2a0]
	sbb	rax, qword ptr [rbp - 0x298]
	mov	qword ptr [rbp - 0x1a0], rax
	mov	qword ptr [rbp - 0x1a8], rdx
.label_499:
	jmp	.label_498
.label_500:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rbp - 0x18], 0
	sete	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rsi, edx
	sub	rax, rsi
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x40], 0
	jne	.label_508
	jmp	.label_504
.label_504:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x258], rax
	bsf	rcx, qword ptr [rbp - 0x258]
	mov	dword ptr [rbp - 0x7c], ecx
	mov	rax, qword ptr [rbp - 0x38]
	mov	ecx, dword ptr [rbp - 0x7c]
	shr	rax, cl
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0x28], 0
	mov	edx, dword ptr [rbp - 0x7c]
	add	edx, 0x40
	mov	dword ptr [rbp - 0x7c], edx
	jmp	.label_502
	.section	.text
	.align	16
	#Procedure 0x406898

	.globl prime2_p
	.type prime2_p, @function
prime2_p:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x2b0
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_500
	mov	rdi, qword ptr [rbp - 0x18]
	call	prime_p
	and	al, 1
	mov	byte ptr [rbp - 1], al
	jmp	.label_472
.label_468:
	jmp	.label_481
.label_481:
	mov	eax, dword ptr [rbp - 0x1b4]
	add	eax, 1
	mov	dword ptr [rbp - 0x1b4], eax
	jmp	.label_484
.label_479:
	jmp	.label_487
.label_506:
	test	byte ptr [byte ptr [flag_prove_primality]],  1
	je	.label_509
	lea	rdx, [rbp - 0x180]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x40]
	call	factor
.label_509:
	mov	dword ptr [rbp - 0x1b4], 0
.label_484:
	mov	eax, dword ptr [rbp - 0x1b4]
	mov	ecx, eax
	cmp	rcx, 0x29c
	jae	.label_467
	test	byte ptr [byte ptr [flag_prove_primality]],  1
	je	.label_474
	mov	byte ptr [rbp - 0x1b5], 1
	cmp	qword ptr [rbp - 0x178], 0
	je	.label_477
	jmp	.label_480
.label_480:
	mov	rax, qword ptr [rbp - 0x180]
	mov	qword ptr [rbp - 0x1f0], rax
	mov	rax, qword ptr [rbp - 0x1f0]
	shr	rax, 1
	and	rax, 0x7f
	movzx	ecx,  byte ptr [byte ptr [+ (rax * 1) + binvert_table]]
	mov	eax, ecx
	mov	qword ptr [rbp - 0x1f8], rax
	mov	rax, qword ptr [rbp - 0x1f8]
	shl	rax, 1
	mov	rdx, qword ptr [rbp - 0x1f8]
	imul	rdx, qword ptr [rbp - 0x1f8]
	imul	rdx, qword ptr [rbp - 0x1f0]
	sub	rax, rdx
	mov	qword ptr [rbp - 0x1f8], rax
	mov	rax, qword ptr [rbp - 0x1f8]
	shl	rax, 1
	mov	rdx, qword ptr [rbp - 0x1f8]
	imul	rdx, qword ptr [rbp - 0x1f8]
	imul	rdx, qword ptr [rbp - 0x1f0]
	sub	rax, rdx
	mov	qword ptr [rbp - 0x1f8], rax
	mov	rax, qword ptr [rbp - 0x1f8]
	shl	rax, 1
	mov	rdx, qword ptr [rbp - 0x1f8]
	imul	rdx, qword ptr [rbp - 0x1f8]
	imul	rdx, qword ptr [rbp - 0x1f0]
	sub	rax, rdx
	mov	qword ptr [rbp - 0x1f8], rax
	mov	rax, qword ptr [rbp - 0x1f8]
	mov	qword ptr [rbp - 0x1e8], rax
	lea	r9, [rbp - 0x60]
	lea	rcx, [rbp - 0x70]
	lea	rdx, [rbp - 0x1d0]
	lea	rsi, [rbp - 0x50]
	lea	rax, [rbp - 0x1e0]
	mov	rdi, qword ptr [rbp - 0x1e8]
	imul	rdi, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x1d0], rdi
	mov	qword ptr [rbp - 0x1c8], 0
	add	rax, 8
	mov	r8, qword ptr [rbp - 0x78]
	mov	rdi, rax
	call	powm2
	mov	r10b, 1
	mov	qword ptr [rbp - 0x1e0], rax
	mov	rax, qword ptr [rbp - 0x1e0]
	cmp	rax, qword ptr [rbp - 0x60]
	mov	byte ptr [rbp - 0x2a9], r10b
	jne	.label_485
	mov	rax, qword ptr [rbp - 0x1d8]
	cmp	rax, qword ptr [rbp - 0x58]
	setne	cl
	mov	byte ptr [rbp - 0x2a9], cl
.label_485:
	mov	al, byte ptr [rbp - 0x2a9]
	and	al, 1
	mov	byte ptr [rbp - 0x1b5], al
.label_477:
	mov	dword ptr [rbp - 0x1fc], 0
.label_488:
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 0x1fc]
	movzx	edx, byte ptr [rbp - 0x86]
	cmp	eax, edx
	mov	byte ptr [rbp - 0x2aa], cl
	jae	.label_473
	mov	al, byte ptr [rbp - 0x1b5]
	mov	byte ptr [rbp - 0x2aa], al
.label_473:
	mov	al, byte ptr [rbp - 0x2aa]
	test	al, 1
	jne	.label_482
	jmp	.label_479
.label_482:
	mov	eax, dword ptr [rbp - 0x1fc]
	mov	ecx, eax
	cmp	qword ptr [rbp + rcx*8 - 0x170], 2
	jne	.label_489
	jmp	.label_493
.label_493:
	mov	rax, qword ptr [rbp - 0x38]
	shl	rax, 0x3f
	mov	rcx, qword ptr [rbp - 0x40]
	shr	rcx, 1
	or	rax, rcx
	mov	qword ptr [rbp - 0x1d0], rax
	mov	rax, qword ptr [rbp - 0x38]
	shr	rax, 1
	mov	qword ptr [rbp - 0x1c8], rax
	jmp	.label_463
.label_469:
	mov	eax, dword ptr [rbp - 0x1b4]
	mov	ecx, eax
	movzx	eax,  byte ptr [byte ptr [+ (rcx * 1) + primes_diff]]
	mov	ecx, eax
	add	rcx, qword ptr [rbp - 0x188]
	mov	qword ptr [rbp - 0x188], rcx
	mov	rax, qword ptr [rbp - 0x188]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_476
	mov	rax, qword ptr [rbp - 0x188]
	mov	qword ptr [rbp - 0x238], rax
	mov	qword ptr [rbp - 0x240], 0
	mov	qword ptr [rbp - 0x248], 0x40
	jmp	.label_486
.label_474:
	cmp	dword ptr [rbp - 0x1b4], 0x18
	sete	al
	and	al, 1
	mov	byte ptr [rbp - 0x1b5], al
.label_487:
	test	byte ptr [rbp - 0x1b5], 1
	je	.label_469
	mov	byte ptr [rbp - 1], 1
	jmp	.label_472
.label_522:
	movabs	rsi, OFFSET FLAT:label_520
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_523
	movabs	rax, OFFSET FLAT:label_518
	movabs	rcx, OFFSET FLAT:label_519
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_515
.label_521:
	call	locale_charset
	movabs	rsi, OFFSET FLAT:label_117
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_522
	movabs	rax, OFFSET FLAT:label_516
	movabs	rcx, OFFSET FLAT:label_517
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_515
.label_523:
	movabs	rax, OFFSET FLAT:label_234
	movabs	rcx, OFFSET FLAT:label_359
	cmp	dword ptr [rbp - 0x14], 9
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
.label_515:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406c71
	.globl sub_406c71
	.type sub_406c71, @function
sub_406c71:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406c79

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
	je	.label_521
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_515
	.section	.text
	.align	16
	#Procedure 0x406cb0
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
.label_526:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_524
	jmp	.label_525
.label_525:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_526
.label_524:
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
.label_531:
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + 8], rax
	je	.label_527
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	movabs	rax, OFFSET FLAT:slot0
	mov	qword ptr [word ptr [slotvec0]],  0x100
	mov	qword ptr [word ptr [label_530]],  rax
.label_527:
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 8], rax
	je	.label_529
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	free
	movabs	rax, OFFSET FLAT:slotvec0
	mov	qword ptr [word ptr [slotvec]],  rax
.label_529:
	mov	dword ptr [dword ptr [nslots]],  1
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406da6
	.globl sub_406da6
	.type sub_406da6, @function
sub_406da6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406db2
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rax,  qword ptr [word ptr [slotvec]]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 0xc], 1
.label_528:
	mov	eax, dword ptr [rbp - 0xc]
	cmp	eax,  dword ptr [dword ptr [nslots]]
	jge	.label_531
	movsxd	rax, dword ptr [rbp - 0xc]
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, 1
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_528
	.section	.text
	.align	16
	#Procedure 0x406e00
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
	#Procedure 0x406e28
	.globl sub_406e28
	.type sub_406e28, @function
sub_406e28:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406e30

	.globl usage
	.type usage, @function
usage:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0
	je	.label_538
	jmp	.label_534
.label_534:
	movabs	rdi, OFFSET FLAT:label_535
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x10], rax
	call	gettext
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_539
.label_538:
	movabs	rdi, OFFSET FLAT:label_533
	call	gettext
	mov	rsi,  qword ptr [word ptr [program_name]]
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_536
	mov	dword ptr [rbp - 0x18], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_537
	mov	dword ptr [rbp - 0x1c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_532
	mov	dword ptr [rbp - 0x20], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_436
	mov	dword ptr [rbp - 0x24], eax
	call	emit_ancillary_info
.label_539:
	mov	edi, dword ptr [rbp - 4]
	call	exit
	.section	.text
	.align	16
	#Procedure 0x406f2c
	.globl sub_406f2c
	.type sub_406f2c, @function
sub_406f2c:

	nop	dword ptr [rax]
.label_546:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rdi, qword ptr [rax + 8]
	call	free
	mov	rax, qword ptr [rbp - 0x50]
	mov	rdi, qword ptr [rbp - 0x28]
	mov	qword ptr [rdi], rax
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_541
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx], rax
	jmp	.label_540
.label_547:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
.label_545:
	mov	eax, 8
	mov	esi, eax
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x60], rcx
	mov	rdi, qword ptr [rbp - 0x60]
	call	xnmalloc
	mov	edx, 8
	mov	esi, edx
	mov	qword ptr [rbp - 0x50], rax
	mov	rdi, qword ptr [rbp - 0x60]
	call	xnmalloc
	mov	qword ptr [rbp - 0x58], rax
	mov	qword ptr [rbp - 0x68], 0
	mov	rdi, qword ptr [rbp - 0x48]
	call	init_tokenbuffer
.label_542:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x48]
	call	readtoken
	mov	qword ptr [rbp - 0x78], rax
	mov	rax, qword ptr [rbp - 0x68]
	cmp	rax, qword ptr [rbp - 0x60]
	jb	.label_543
	lea	rsi, [rbp - 0x60]
	mov	eax, 8
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rdi, rcx
	call	x2nrealloc
	mov	r8d, 8
	mov	edx, r8d
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x60]
	mov	rdi, rax
	call	xnrealloc
	mov	qword ptr [rbp - 0x58], rax
.label_543:
	cmp	qword ptr [rbp - 0x78], -1
	jne	.label_544
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	qword ptr [rcx + rax*8], 0
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	qword ptr [rcx + rax*8], 0
	jmp	.label_546
	.section	.text
	.align	16
	#Procedure 0x40703f
	.globl readtokens
	.type readtokens, @function
readtokens:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x80
	lea	rax, [rbp - 0x40]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	qword ptr [rbp - 0x30], r9
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_547
	mov	qword ptr [rbp - 0x10], 0x40
	jmp	.label_545
.label_544:
	mov	eax, 1
	mov	esi, eax
	mov	rcx, qword ptr [rbp - 0x78]
	add	rcx, 1
	mov	rdi, rcx
	call	xnmalloc
	mov	qword ptr [rbp - 0x70], rax
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rsi, qword ptr [rbp - 0x58]
	mov	qword ptr [rsi + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rcx + 8]
	mov	rcx, qword ptr [rbp - 0x78]
	add	rcx, 1
	mov	rdi, rax
	mov	rdx, rcx
	mov	qword ptr [rbp - 0x80], rax
	call	memcpy
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rcx + rax*8], rdx
	mov	rax, qword ptr [rbp - 0x68]
	add	rax, 1
	mov	qword ptr [rbp - 0x68], rax
	jmp	.label_542
.label_541:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rdi, rax
	call	free
.label_540:
	mov	rax, qword ptr [rbp - 0x68]
	add	rsp, 0x80
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40710a
	.globl sub_40710a
	.type sub_40710a, @function
sub_40710a:

	nop	word ptr [rax + rax]
.label_552:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [word ptr [label_168]],  rax
	call	lbuf_flush
	mov	rdi,  qword ptr [word ptr [lbuf]]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	sub	rax, rcx
	mov	rdx, rax
	call	memcpy
	mov	rax,  qword ptr [word ptr [lbuf]]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	sub	rcx, rdx
	add	rax, rcx
	mov	qword ptr [word ptr [label_168]],  rax
.label_550:
	jmp	.label_548
.label_548:
	jmp	.label_549
.label_549:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40717a
	.globl sub_40717a
	.type sub_40717a, @function
sub_40717a:

	nop	dword ptr [rax]
.label_554:
	cmp	qword ptr [rbp - 0x10], 0x200
	jb	.label_550
	mov	rax,  qword ptr [word ptr [label_168]]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax,  qword ptr [word ptr [lbuf]]
	add	rax, 0x200
	mov	qword ptr [rbp - 0x20], rax
.label_551:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x20], rcx
	movsx	edx, byte ptr [rax - 1]
	cmp	edx, 0xa
	je	.label_552
	jmp	.label_551
	.section	.text
	.align	16
	#Procedure 0x4071ce

	.globl lbuf_putc
	.type lbuf_putc, @function
lbuf_putc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	al, dil
	mov	byte ptr [rbp - 1], al
	mov	al, byte ptr [rbp - 1]
	mov	rcx,  qword ptr [word ptr [label_168]]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [word ptr [label_168]],  rdx
	mov	byte ptr [rcx], al
	movsx	edi, byte ptr [rbp - 1]
	cmp	edi, 0xa
	jne	.label_549
	mov	rax,  qword ptr [word ptr [label_168]]
	mov	rcx,  qword ptr [word ptr [lbuf]]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x10], rax
	cmp	dword ptr [dword ptr [lbuf_putc.line_buffered]],  -1
	jne	.label_553
	xor	edi, edi
	call	isatty
	mov	dword ptr [dword ptr [lbuf_putc.line_buffered]],  eax
.label_553:
	cmp	dword ptr [dword ptr [lbuf_putc.line_buffered]],  0
	je	.label_554
	call	lbuf_flush
	jmp	.label_548
.label_557:
	jmp	.label_555
.label_555:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 8], rax
.label_556:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407267
	.globl sub_407267
	.type sub_407267, @function
sub_407267:

	nop	dword ptr [rax]
.label_559:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x30]
	call	str_cd_iconv
	mov	qword ptr [rbp - 0x38], rax
	cmp	qword ptr [rbp - 0x38], 0
	jne	.label_558
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
	jmp	.label_555
.label_561:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x18]
	call	iconv_open
	mov	rsi, -1
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], rsi
	jne	.label_559
	mov	qword ptr [rbp - 8], 0
	jmp	.label_556
	.section	.text
	.align	16
	#Procedure 0x4072e4

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
	je	.label_560
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_561
.label_560:
	mov	rdi, qword ptr [rbp - 0x10]
	call	strdup
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_562
	call	__errno_location
	mov	dword ptr [rax], 0xc
.label_562:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_556
.label_558:
	mov	rdi, qword ptr [rbp - 0x30]
	call	iconv_close
	cmp	eax, 0
	jge	.label_557
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
	jmp	.label_556
	.section	.text
	.align	16
	#Procedure 0x407390

	.globl mbslen
	.type mbslen, @function
mbslen:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	qword ptr [rbp - 0x10], rdi
	call	__ctype_get_mb_cur_max
	cmp	rax, 1
	jbe	.label_563
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
.label_568:
	lea	rdi, [rbp - 0x58]
	call	mbuiter_multi_next
	xor	eax, eax
	mov	cl, al
	test	byte ptr [rbp - 0x38], 1
	mov	byte ptr [rbp - 0x59], cl
	je	.label_565
	cmp	dword ptr [rbp - 0x34], 0
	sete	al
	mov	byte ptr [rbp - 0x59], al
.label_565:
	mov	al, byte ptr [rbp - 0x59]
	xor	al, 0xff
	test	al, 1
	jne	.label_566
	jmp	.label_567
.label_566:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rax
	mov	byte ptr [rbp - 0x4c], 0
	jmp	.label_568
.label_563:
	mov	rdi, qword ptr [rbp - 0x10]
	call	strlen
	mov	qword ptr [rbp - 8], rax
.label_564:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40744a
	.globl sub_40744a
	.type sub_40744a, @function
sub_40744a:

	nop	word ptr [rax + rax]
.label_567:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_564
.label_578:
	mov	rax, qword ptr [rbp - 8]
	test	byte ptr [rax + 8], 1
	je	.label_580
	jmp	.label_586
.label_577:
	movabs	rdi, OFFSET FLAT:label_588
	movabs	rsi, OFFSET FLAT:label_584
	mov	edx, 0xaa
	movabs	rcx, OFFSET FLAT:label_585
	call	__assert_fail
.label_570:
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x20], -2
	jne	.label_581
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 0x18]
	sub	rax, rcx
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x20], rax
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x28], 0
	jmp	.label_582
.label_592:
	movabs	rdi, OFFSET FLAT:label_583
	movabs	rsi, OFFSET FLAT:label_584
	mov	edx, 0x8e
	movabs	rcx, OFFSET FLAT:label_585
	call	__assert_fail
.label_580:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x18]
	movsx	edi, byte ptr [rax]
	call	is_basic
	test	al, 1
	jne	.label_590
	jmp	.label_573
.label_590:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x20], 1
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x18]
	movsx	ecx, byte ptr [rax]
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x2c], ecx
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x28], 1
	jmp	.label_576
.label_574:
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 8], 1
.label_586:
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
	jne	.label_570
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x20], 1
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x28], 0
	jmp	.label_572
.label_573:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0xc
	mov	rdi, rax
	call	mbsinit
	cmp	eax, 0
	je	.label_592
	jmp	.label_574
	.section	.text
	.align	16
	#Procedure 0x4075d8

	.globl mbiter_multi_next
	.type mbiter_multi_next, @function
mbiter_multi_next:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	test	byte ptr [rdi + 0x14], 1
	je	.label_578
	jmp	.label_587
.label_569:
	jmp	.label_571
.label_571:
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x28], 1
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0xc
	mov	rdi, rax
	call	mbsinit
	cmp	eax, 0
	je	.label_575
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 8], 0
.label_575:
	jmp	.label_582
.label_582:
	jmp	.label_572
.label_572:
	jmp	.label_576
.label_576:
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x14], 1
.label_587:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407642
	.globl sub_407642
	.type sub_407642, @function
sub_407642:

	nop	word ptr cs:[rax + rax]
.label_579:
	movabs	rdi, OFFSET FLAT:label_589
	movabs	rsi, OFFSET FLAT:label_584
	mov	edx, 0xa9
	movabs	rcx, OFFSET FLAT:label_585
	call	__assert_fail
.label_591:
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 0x2c], 0
	jne	.label_577
	jmp	.label_569
.label_581:
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x20], 0
	jne	.label_571
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x20], 1
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_579
	jmp	.label_591
	.section	.text
	.align	16
	#Procedure 0x4076c0

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
	#Procedure 0x4076f3
	.globl sub_4076f3
	.type sub_4076f3, @function
sub_4076f3:

	nop	word ptr cs:[rax + rax]
.label_594:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_593
.label_593:
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
	#Procedure 0x407744
	.globl sub_407744
	.type sub_407744, @function
sub_407744:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407752
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
	je	.label_594
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_593
	.section	.text
	.align	16
	#Procedure 0x407780

	.globl get_nth_bit
	.type get_nth_bit, @function
get_nth_bit:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	shr	rsi, 6
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rdi + rsi*8]
	mov	rdi, qword ptr [rbp - 8]
	and	rdi, 0x3f
	mov	rcx, rdi
	shr	rsi, cl
	and	rsi, 1
	cmp	rsi, 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4077bd
	.globl sub_4077bd
	.type sub_4077bd, @function
sub_4077bd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4077c0
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
	je	.label_595
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_596
.label_595:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_596
.label_596:
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
	#Procedure 0x407885
	.globl sub_407885
	.type sub_407885, @function
sub_407885:

	nop	word ptr cs:[rax + rax]
.label_603:
	test	byte ptr [rbp - 0x31], 1
	je	.label_599
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x60], rcx
	jmp	.label_601
.label_599:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x60], rax
.label_601:
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
	je	.label_598
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_530]]
	mov	qword ptr [rax + 8], rcx
.label_598:
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
.label_602:
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
	ja	.label_600
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	mov	qword ptr [rbp - 0x40], rcx
	movsxd	rdx, dword ptr [rbp - 4]
	shl	rdx, 4
	add	rdx, qword ptr [rbp - 0x30]
	mov	qword ptr [rdx], rcx
	cmp	qword ptr [rbp - 0x48], rax
	je	.label_597
	mov	rdi, qword ptr [rbp - 0x48]
	call	free
.label_597:
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
.label_600:
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
	#Procedure 0x407a85
	.globl sub_407a85
	.type sub_407a85, @function
sub_407a85:

	nop	word ptr cs:[rax + rax]
.label_604:
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_602
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 0x30], rax
	sete	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x31], cl
	mov	dword ptr [rbp - 0x38], 0x7ffffffe
	mov	edx, dword ptr [rbp - 0x38]
	cmp	edx, dword ptr [rbp - 4]
	jge	.label_603
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x407ad1

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
	jge	.label_604
	call	abort
	.section	.text
	.align	16
	#Procedure 0x407b10

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
	jne	.label_605
	movabs	rax, OFFSET FLAT:label_419
	mov	qword ptr [rbp - 8], rax
.label_605:
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_606
	movabs	rax, OFFSET FLAT:label_607
	mov	qword ptr [rbp - 8], rax
.label_606:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407b67
	.globl sub_407b67
	.type sub_407b67, @function
sub_407b67:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407b70

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
	#Procedure 0x407ba7
	.globl sub_407ba7
	.type sub_407ba7, @function
sub_407ba7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407bb0
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x21
	sub	edi, 0x5d
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_608
	jmp	.label_610
.label_610:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_609
.label_608:
	mov	byte ptr [rbp - 1], 0
.label_609:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407be2
	.globl sub_407be2
	.type sub_407be2, @function
sub_407be2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407bf0
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x30
	sub	edi, 9
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_611
	jmp	.label_613
.label_613:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_612
.label_611:
	mov	byte ptr [rbp - 1], 0
.label_612:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407c22
	.globl sub_407c22
	.type sub_407c22, @function
sub_407c22:

	nop	word ptr cs:[rax + rax]
.label_636:
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
.label_627:
	lea	rsi, [rbp - 0x38]
	lea	rdx, [rbp - 0x40]
	lea	rcx, [rbp - 0x50]
	lea	r8, [rbp - 0x58]
	mov	rdi, qword ptr [rbp - 0x18]
	call	iconv
	mov	qword ptr [rbp - 0x60], rax
	cmp	qword ptr [rbp - 0x60], -1
	jne	.label_614
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_618
	jmp	.label_620
.label_633:
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
	jmp	.label_635
.label_615:
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
.label_632:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0xd0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407d1c
	.globl sub_407d1c
	.type sub_407d1c, @function
sub_407d1c:

	nop	
.label_620:
	jmp	.label_619
.label_619:
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
	jne	.label_625
	call	__errno_location
	cmp	dword ptr [rax], 7
	jne	.label_628
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x20]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x88], rax
	mov	rax, qword ptr [rbp - 0x28]
	shl	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	mov	rax, qword ptr [rbp - 0x90]
	cmp	rax, qword ptr [rbp - 0x28]
	ja	.label_630
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_615
.label_622:
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
	jmp	.label_623
.label_634:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x70]
	call	realloc
	mov	qword ptr [rbp - 0x78], rax
	cmp	qword ptr [rbp - 0x78], 0
	jne	.label_633
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_615
.label_631:
	jmp	.label_615
.label_630:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x90]
	call	realloc
	mov	qword ptr [rbp - 0x98], rax
	cmp	qword ptr [rbp - 0x98], 0
	jne	.label_622
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_615
.label_614:
	jmp	.label_620
.label_625:
	jmp	.label_626
.label_621:
	jmp	.label_619
.label_629:
	jmp	.label_627
.label_635:
	jmp	.label_624
.label_624:
	jmp	.label_629
.label_618:
	call	__errno_location
	cmp	dword ptr [rax], 7
	jne	.label_631
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x20]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x28]
	shl	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	mov	rax, qword ptr [rbp - 0x70]
	cmp	rax, qword ptr [rbp - 0x28]
	ja	.label_634
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_615
.label_626:
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
	jae	.label_616
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x30]
	call	realloc
	mov	qword ptr [rbp - 0xa0], rax
	cmp	qword ptr [rbp - 0xa0], 0
	je	.label_617
	mov	rax, qword ptr [rbp - 0xa0]
	mov	qword ptr [rbp - 0x20], rax
.label_617:
	jmp	.label_616
.label_616:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_632
.label_628:
	jmp	.label_615
.label_623:
	jmp	.label_621
	.section	.text
	.align	16
	#Procedure 0x407f2a

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
	ja	.label_637
	mov	rax, qword ptr [rbp - 0x28]
	shl	rax, 4
	mov	qword ptr [rbp - 0x28], rax
.label_637:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x28]
	call	malloc
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_636
	call	__errno_location
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 8], 0
	jmp	.label_632
.label_644:
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 8]
	call	strrchr
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_643
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_640
.label_643:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rax
.label_640:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	sub	rax, rcx
	cmp	rax, 7
	jl	.label_638
	movabs	rsi, OFFSET FLAT:label_639
	mov	eax, 7
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, -7
	mov	rdi, rcx
	call	strncmp
	cmp	eax, 0
	jne	.label_638
	movabs	rsi, OFFSET FLAT:label_641
	mov	eax, 3
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rcx
	mov	rdi, qword ptr [rbp - 0x18]
	call	strncmp
	cmp	eax, 0
	jne	.label_645
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 3
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname]],  rax
.label_645:
	jmp	.label_638
.label_638:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [program_name]],  rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname_full]],  rax
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4080b3
	.globl sub_4080b3
	.type sub_4080b3, @function
sub_4080b3:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4080ba

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_644
	movabs	rdi, OFFSET FLAT:label_642
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	dword ptr [rbp - 0x1c], eax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4080f0

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
	#Procedure 0x40810f
	.globl sub_40810f
	.type sub_40810f, @function
sub_40810f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x408110
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
	jb	.label_646
	jmp	.label_648
.label_648:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 6
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_646
	jmp	.label_647
.label_647:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 5
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_649
	jmp	.label_646
.label_646:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_650
.label_649:
	mov	byte ptr [rbp - 1], 0
.label_650:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408175
	.globl sub_408175
	.type sub_408175, @function
sub_408175:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408180

	.globl mp_factor_clear
	.type mp_factor_clear, @function
mp_factor_clear:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], 0
.label_652:
	mov	eax, dword ptr [rbp - 0xc]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 8]
	cmp	rcx, qword ptr [rdx + 0x10]
	jae	.label_651
	mov	eax, dword ptr [rbp - 0xc]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 8]
	shl	rcx, 4
	add	rcx, qword ptr [rdx]
	mov	rdi, rcx
	call	__gmpz_clear
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, 1
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_652
.label_651:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 8]
	mov	rdi, rax
	call	free
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4081f1
	.globl sub_4081f1
	.type sub_4081f1, @function
sub_4081f1:

	nop	word ptr cs:[rax + rax]
.label_660:
	mov	dword ptr [rbp - 0x64], 1
.label_665:
	jmp	.label_655
.label_655:
	jmp	.label_653
.label_653:
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rax
	mov	byte ptr [rbp - 0x4c], 0
	jmp	.label_658
	.section	.text
	.align	16
	#Procedure 0x408226

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
	jne	.label_677
	call	xalloc_die
.label_667:
	cmp	dword ptr [rbp - 0x64], 2
	jne	.label_660
	test	byte ptr [rbp - 0x38], 1
	je	.label_660
	mov	edi, dword ptr [rbp - 0x34]
	call	iswspace
	cmp	eax, 0
	je	.label_660
	jmp	.label_665
.label_657:
	cmp	dword ptr [rbp - 0x64], 0
	jne	.label_664
	test	byte ptr [rbp - 0x38], 1
	je	.label_668
	mov	edi, dword ptr [rbp - 0x34]
	call	iswspace
	cmp	eax, 0
	jne	.label_664
.label_668:
	mov	dword ptr [rbp - 0x64], 1
	jmp	.label_653
.label_663:
	cmp	dword ptr [rbp - 0x64], 1
	jne	.label_667
	test	byte ptr [rbp - 0x38], 1
	je	.label_667
	mov	edi, dword ptr [rbp - 0x34]
	call	iswspace
	cmp	eax, 0
	je	.label_667
	mov	dword ptr [rbp - 0x64], 2
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_655
.label_677:
	call	__ctype_get_mb_cur_max
	cmp	rax, 1
	jbe	.label_686
	cmp	dword ptr [rbp - 0xc], 0
	je	.label_689
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
.label_690:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x48]
	cmp	rdx, qword ptr [rbp - 0x60]
	mov	byte ptr [rbp - 0x99], cl
	jae	.label_674
	lea	rdi, [rbp - 0x60]
	call	mbiter_multi_next
	xor	eax, eax
	mov	cl, al
	mov	dl, 1
	test	dl, 1
	mov	byte ptr [rbp - 0x99], cl
	jne	.label_672
	jmp	.label_674
.label_672:
	xor	eax, eax
	mov	cl, al
	test	byte ptr [rbp - 0x38], 1
	mov	byte ptr [rbp - 0x9a], cl
	je	.label_675
	mov	edi, dword ptr [rbp - 0x34]
	call	iswspace
	cmp	eax, 0
	setne	cl
	mov	byte ptr [rbp - 0x9a], cl
.label_675:
	mov	al, byte ptr [rbp - 0x9a]
	mov	byte ptr [rbp - 0x99], al
.label_674:
	mov	al, byte ptr [rbp - 0x99]
	test	al, 1
	jne	.label_682
	jmp	.label_673
.label_682:
	jmp	.label_676
.label_676:
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rax
	mov	byte ptr [rbp - 0x4c], 0
	jmp	.label_690
.label_685:
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
.label_678:
	cmp	dword ptr [rbp - 0xc], 1
	je	.label_679
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x108], rax
	call	strlen
	mov	rdi, qword ptr [rbp - 0x108]
	add	rdi, rax
	add	rdi, -1
	mov	qword ptr [rbp - 0x78], rdi
.label_683:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x78]
	cmp	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rbp - 0x109], cl
	jb	.label_670
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
.label_670:
	mov	al, byte ptr [rbp - 0x109]
	test	al, 1
	jne	.label_684
	jmp	.label_681
.label_684:
	mov	rax, qword ptr [rbp - 0x78]
	mov	byte ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x78]
	add	rax, -1
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_683
.label_681:
	jmp	.label_679
.label_679:
	jmp	.label_662
.label_662:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x120
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408513
	.globl sub_408513
	.type sub_408513, @function
sub_408513:

	nop	word ptr cs:[rax + rax]
.label_664:
	cmp	dword ptr [rbp - 0x64], 1
	jne	.label_663
	test	byte ptr [rbp - 0x38], 1
	je	.label_666
	mov	edi, dword ptr [rbp - 0x34]
	call	iswspace
	cmp	eax, 0
	jne	.label_663
.label_666:
	jmp	.label_653
.label_673:
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
.label_689:
	cmp	dword ptr [rbp - 0xc], 1
	je	.label_661
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
.label_658:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x48]
	cmp	rdx, qword ptr [rbp - 0x60]
	mov	byte ptr [rbp - 0xd9], cl
	jae	.label_659
	lea	rdi, [rbp - 0x60]
	call	mbiter_multi_next
	mov	al, 1
	mov	byte ptr [rbp - 0xd9], al
.label_659:
	mov	al, byte ptr [rbp - 0xd9]
	test	al, 1
	jne	.label_669
	jmp	.label_656
.label_669:
	cmp	dword ptr [rbp - 0x64], 0
	jne	.label_657
	test	byte ptr [rbp - 0x38], 1
	je	.label_657
	mov	edi, dword ptr [rbp - 0x34]
	call	iswspace
	cmp	eax, 0
	je	.label_657
	jmp	.label_653
.label_686:
	cmp	dword ptr [rbp - 0xc], 0
	je	.label_678
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x78], rax
.label_688:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x78]
	movsx	eax, byte ptr [rdx]
	cmp	eax, 0
	mov	byte ptr [rbp - 0xda], cl
	je	.label_671
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
.label_671:
	mov	al, byte ptr [rbp - 0xda]
	test	al, 1
	jne	.label_680
	jmp	.label_685
.label_680:
	jmp	.label_687
.label_687:
	mov	rax, qword ptr [rbp - 0x78]
	add	rax, 1
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_688
.label_656:
	cmp	dword ptr [rbp - 0x64], 2
	jne	.label_654
	mov	rax, qword ptr [rbp - 0x70]
	mov	byte ptr [rax], 0
.label_654:
	jmp	.label_661
.label_661:
	jmp	.label_662
	.section	.text
	.align	16
	#Procedure 0x408720
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
	je	.label_691
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_692
.label_691:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_692
.label_692:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x10]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408767
	.globl sub_408767
	.type sub_408767, @function
sub_408767:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408770

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
	#Procedure 0x4087af
	.globl sub_4087af
	.type sub_4087af, @function
sub_4087af:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4087b0
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
	#Procedure 0x4087cf
	.globl sub_4087cf
	.type sub_4087cf, @function
sub_4087cf:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4087d0

	.globl mbuiter_multi_next
	.type mbuiter_multi_next, @function
mbuiter_multi_next:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	test	byte ptr [rdi + 0xc], 1
	je	.label_701
	jmp	.label_710
.label_705:
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax], 1
.label_706:
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
	jne	.label_696
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x18], 1
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x20], 0
	jmp	.label_702
.label_707:
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x18], 0
	jne	.label_712
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x18], 1
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_695
	jmp	.label_708
.label_700:
	movabs	rdi, OFFSET FLAT:label_583
	movabs	rsi, OFFSET FLAT:label_693
	mov	edx, 0x96
	movabs	rcx, OFFSET FLAT:label_694
	call	__assert_fail
.label_699:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x10]
	movsx	edi, byte ptr [rax]
	call	is_basic
	test	al, 1
	jne	.label_703
	jmp	.label_711
.label_703:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x18], 1
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x10]
	movsx	ecx, byte ptr [rax]
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x24], ecx
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x20], 1
	jmp	.label_704
.label_697:
	movabs	rdi, OFFSET FLAT:label_588
	movabs	rsi, OFFSET FLAT:label_693
	mov	edx, 0xb3
	movabs	rcx, OFFSET FLAT:label_694
	call	__assert_fail
.label_708:
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 0x24], 0
	jne	.label_697
	jmp	.label_709
.label_695:
	movabs	rdi, OFFSET FLAT:label_589
	movabs	rsi, OFFSET FLAT:label_693
	mov	edx, 0xb2
	movabs	rcx, OFFSET FLAT:label_694
	call	__assert_fail
.label_711:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 4
	mov	rdi, rax
	call	mbsinit
	cmp	eax, 0
	je	.label_700
	jmp	.label_705
.label_696:
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x18], -2
	jne	.label_707
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 0x10]
	call	strlen
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + 0x18], rax
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x20], 0
	jmp	.label_698
.label_701:
	mov	rax, qword ptr [rbp - 8]
	test	byte ptr [rax], 1
	je	.label_699
	jmp	.label_706
.label_709:
	jmp	.label_712
.label_712:
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x20], 1
	mov	rax, qword ptr [rbp - 8]
	add	rax, 4
	mov	rdi, rax
	call	mbsinit
	cmp	eax, 0
	je	.label_713
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax], 0
.label_713:
	jmp	.label_698
.label_698:
	jmp	.label_702
.label_702:
	jmp	.label_704
.label_704:
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0xc], 1
.label_710:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408a29
	.globl sub_408a29
	.type sub_408a29, @function
sub_408a29:

	nop	dword ptr [rax]
.label_714:
	mov	eax, 0x400
	mov	edi, eax
	call	xmalloc
	mov	qword ptr [word ptr [lbuf]],  rax
	mov	rax,  qword ptr [word ptr [lbuf]]
	mov	qword ptr [word ptr [label_168]],  rax
.label_715:
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408a56
	.globl sub_408a56
	.type sub_408a56, @function
sub_408a56:

	nop	
	.section	.text
	.align	16
	#Procedure 0x408a58

	.globl lbuf_alloc
	.type lbuf_alloc, @function
lbuf_alloc:
	push	rbp
	mov	rbp, rsp
	cmp	qword ptr [word ptr [lbuf]],  0
	je	.label_714
	jmp	.label_715
.label_716:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408a7a
	.globl sub_408a7a
	.type sub_408a7a, @function
sub_408a7a:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408a81
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
	jne	.label_716
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	jne	.label_716
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x408ac0

	.globl mulredc2
	.type mulredc2, @function
mulredc2:
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 0x128
	mov	rax, qword ptr [rbp + 0x18]
	mov	r10, qword ptr [rbp + 0x10]
	xor	r11d, r11d
	mov	ebx, r11d
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	qword ptr [rbp - 0x38], r9
	mov	qword ptr [rbp - 0x40], r10
	mov	qword ptr [rbp - 0x48], rax
	sub	rbx, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rbx
	mov	rax, qword ptr [rbp - 0x18]
	shr	rax, 0x3f
	cmp	rax, 0
	jne	.label_717
	jmp	.label_726
.label_721:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x120], rcx
	mul	qword ptr [rbp - 0x120]
	mov	qword ptr [rbp - 0x80], rax
	mov	qword ptr [rbp - 0x78], rdx
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x118], rcx
	mul	qword ptr [rbp - 0x118]
	mov	qword ptr [rbp - 0x58], rax
	mov	qword ptr [rbp - 0x50], rdx
	mov	rax, qword ptr [rbp - 0x48]
	imul	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x110], rcx
	mul	qword ptr [rbp - 0x110]
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x68], rdx
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x108], rcx
	mul	qword ptr [rbp - 0x108]
	mov	qword ptr [rbp - 0x90], rax
	mov	qword ptr [rbp - 0x88], rdx
	cmp	qword ptr [rbp - 0x80], 0
	setne	sil
	and	sil, 1
	movzx	edi, sil
	movsxd	rax, edi
	add	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x100], rdx
	add	rcx, qword ptr [rbp - 0x100]
	adc	rax, 0
	mov	qword ptr [rbp - 0x50], rax
	mov	qword ptr [rbp - 0x58], rcx
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0xf8], rdx
	add	rcx, qword ptr [rbp - 0xf8]
	adc	rax, 0
	mov	qword ptr [rbp - 0x50], rax
	mov	qword ptr [rbp - 0x58], rcx
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0x58]
	mov	r8, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0xe8], rcx
	mov	qword ptr [rbp - 0xf0], r8
	add	rdx, qword ptr [rbp - 0xf0]
	adc	rax, qword ptr [rbp - 0xe8]
	mov	qword ptr [rbp - 0x50], rax
	mov	qword ptr [rbp - 0x58], rdx
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xe0], rcx
	mul	qword ptr [rbp - 0xe0]
	mov	qword ptr [rbp - 0x80], rax
	mov	qword ptr [rbp - 0x78], rdx
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0xd8], rcx
	mul	qword ptr [rbp - 0xd8]
	mov	qword ptr [rbp - 0x90], rax
	mov	qword ptr [rbp - 0x88], rdx
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0xd0], rdx
	add	rcx, qword ptr [rbp - 0xd0]
	adc	rax, 0
	mov	qword ptr [rbp - 0x78], rax
	mov	qword ptr [rbp - 0x80], rcx
	mov	rax, qword ptr [rbp - 0x48]
	imul	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x90]
	mov	rdx, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0xc8], rdx
	add	rcx, qword ptr [rbp - 0xc8]
	adc	rax, 0
	mov	qword ptr [rbp - 0x50], rax
	mov	qword ptr [rbp - 0x58], rcx
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0xc0], rcx
	mul	qword ptr [rbp - 0xc0]
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x68], rdx
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0xb8], rcx
	mul	qword ptr [rbp - 0xb8]
	mov	qword ptr [rbp - 0x90], rax
	mov	qword ptr [rbp - 0x88], rdx
	cmp	qword ptr [rbp - 0x80], 0
	setne	sil
	and	sil, 1
	movzx	edi, sil
	movsxd	rax, edi
	add	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0xb0], rdx
	add	rcx, qword ptr [rbp - 0xb0]
	adc	rax, 0
	mov	qword ptr [rbp - 0x50], rax
	mov	qword ptr [rbp - 0x58], rcx
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0xa8], rdx
	add	rcx, qword ptr [rbp - 0xa8]
	adc	rax, 0
	mov	qword ptr [rbp - 0x50], rax
	mov	qword ptr [rbp - 0x58], rcx
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0x58]
	mov	r8, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x98], rcx
	mov	qword ptr [rbp - 0xa0], r8
	add	rdx, qword ptr [rbp - 0xa0]
	adc	rax, qword ptr [rbp - 0x98]
	mov	qword ptr [rbp - 0x50], rax
	mov	qword ptr [rbp - 0x58], rdx
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x38]
	ja	.label_719
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x38]
	jne	.label_720
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x40]
	jb	.label_720
.label_719:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x128], rcx
	mov	qword ptr [rbp - 0x130], rsi
	sub	rdx, qword ptr [rbp - 0x130]
	sbb	rax, qword ptr [rbp - 0x128]
	mov	qword ptr [rbp - 0x50], rax
	mov	qword ptr [rbp - 0x58], rdx
.label_720:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x58]
	add	rsp, 0x128
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408e42
	.globl sub_408e42
	.type sub_408e42, @function
sub_408e42:

	nop	dword ptr [rax + rax]
.label_727:
	movabs	rdi, OFFSET FLAT:label_722
	movabs	rsi, OFFSET FLAT:label_67
	mov	edx, 0x3e8
	movabs	rcx, OFFSET FLAT:label_723
	call	__assert_fail
.label_717:
	movabs	rdi, OFFSET FLAT:label_725
	movabs	rsi, OFFSET FLAT:label_67
	mov	edx, 0x3e7
	movabs	rcx, OFFSET FLAT:label_723
	call	__assert_fail
.label_718:
	movabs	rdi, OFFSET FLAT:label_728
	movabs	rsi, OFFSET FLAT:label_67
	mov	edx, 0x3e9
	movabs	rcx, OFFSET FLAT:label_723
	call	__assert_fail
.label_724:
	mov	rax, qword ptr [rbp - 0x38]
	shr	rax, 0x3f
	cmp	rax, 0
	jne	.label_718
	jmp	.label_721
.label_726:
	mov	rax, qword ptr [rbp - 0x28]
	shr	rax, 0x3f
	cmp	rax, 0
	jne	.label_727
	jmp	.label_724
	.section	.text
	.align	16
	#Procedure 0x408ef0

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
	#Procedure 0x408f22
	.globl sub_408f22
	.type sub_408f22, @function
sub_408f22:

	nop	word ptr cs:[rax + rax]
.label_762:
	imul	rdi, qword ptr [rbp - 0x28], 0x38
	call	mmalloca
	mov	qword ptr [rbp - 0x148], rax
.label_761:
	mov	rax, qword ptr [rbp - 0x148]
	mov	qword ptr [rbp - 0x140], rax
.label_763:
	mov	rax, qword ptr [rbp - 0x140]
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x40], 0
	jne	.label_752
	mov	byte ptr [rbp - 1], 0
	jmp	.label_755
.label_734:
	cmp	qword ptr [rbp - 0xb0], 0
	jbe	.label_759
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x138], rax
	mov	rax, qword ptr [rbp - 0x138]
	mov	rcx, qword ptr [rbp - 0xb0]
	sub	rcx, rax
	mov	qword ptr [rbp - 0xb0], rcx
.label_745:
	cmp	qword ptr [rbp - 0x138], 0
	jbe	.label_760
	lea	rdi, [rbp - 0xf0]
	call	mbuiter_multi_next
	xor	eax, eax
	mov	cl, al
	test	byte ptr [rbp - 0xd0], 1
	mov	byte ptr [rbp - 0x166], cl
	je	.label_748
	cmp	dword ptr [rbp - 0xcc], 0
	sete	al
	mov	byte ptr [rbp - 0x166], al
.label_748:
	mov	al, byte ptr [rbp - 0x166]
	xor	al, 0xff
	test	al, 1
	jne	.label_758
	call	abort
.label_752:
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
.label_743:
	lea	rdi, [rbp - 0x88]
	call	mbuiter_multi_next
	xor	eax, eax
	mov	cl, al
	test	byte ptr [rbp - 0x68], 1
	mov	byte ptr [rbp - 0x149], cl
	je	.label_756
	cmp	dword ptr [rbp - 0x64], 0
	sete	al
	mov	byte ptr [rbp - 0x149], al
.label_756:
	mov	al, byte ptr [rbp - 0x149]
	xor	al, 0xff
	test	al, 1
	jne	.label_731
	jmp	.label_735
.label_731:
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
	jmp	.label_743
.label_760:
	jmp	.label_746
.label_735:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rax + 8], 1
	mov	qword ptr [rbp - 0xa0], 0
	mov	qword ptr [rbp - 0x98], 2
.label_751:
	mov	rax, qword ptr [rbp - 0x98]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_753
	mov	rax, qword ptr [rbp - 0x98]
	sub	rax, 1
	imul	rax, rax, 0x30
	add	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xa8], rax
.label_740:
	mov	rax, qword ptr [rbp - 0xa8]
	test	byte ptr [rax + 0x10], 1
	je	.label_750
	mov	rax, qword ptr [rbp - 0xa0]
	imul	rax, rax, 0x30
	add	rax, qword ptr [rbp - 0x30]
	test	byte ptr [rax + 0x10], 1
	je	.label_750
	mov	rax, qword ptr [rbp - 0xa8]
	mov	ecx, dword ptr [rax + 0x14]
	mov	rax, qword ptr [rbp - 0xa0]
	imul	rax, rax, 0x30
	add	rax, qword ptr [rbp - 0x30]
	cmp	ecx, dword ptr [rax + 0x14]
	je	.label_754
	jmp	.label_730
.label_764:
	imul	rax, qword ptr [rbp - 0x28], 0x38
	cmp	rax, 0xfa1
	jae	.label_762
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
	jmp	.label_761
.label_742:
	jmp	.label_749
.label_749:
	mov	rax, qword ptr [rbp - 0x98]
	add	rax, 1
	mov	qword ptr [rbp - 0x98], rax
	jmp	.label_751
.label_758:
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, qword ptr [rbp - 0xe0]
	mov	qword ptr [rbp - 0xe0], rax
	mov	byte ptr [rbp - 0xe4], 0
	mov	rax, qword ptr [rbp - 0x138]
	add	rax, -1
	mov	qword ptr [rbp - 0x138], rax
	jmp	.label_745
.label_730:
	cmp	qword ptr [rbp - 0xa0], 0
	jne	.label_736
	mov	rax, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	qword ptr [rdx + rcx*8], rax
	jmp	.label_742
.label_733:
	mov	rax, qword ptr [rbp - 0xb0]
	imul	rax, rax, 0x30
	add	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 8]
	cmp	rax, qword ptr [rbp - 0x118]
	jne	.label_734
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
	jne	.label_734
.label_741:
	mov	rax, qword ptr [rbp - 0xb0]
	add	rax, 1
	mov	qword ptr [rbp - 0xb0], rax
	mov	rax, qword ptr [rbp - 0x118]
	add	rax, qword ptr [rbp - 0x120]
	mov	qword ptr [rbp - 0x120], rax
	mov	byte ptr [rbp - 0x124], 0
	mov	rax, qword ptr [rbp - 0xb0]
	cmp	rax, qword ptr [rbp - 0x28]
	jne	.label_738
	mov	rax, qword ptr [rbp - 0xe0]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
	jmp	.label_739
.label_739:
	mov	rdi, qword ptr [rbp - 0x40]
	call	freea
	mov	byte ptr [rbp - 1], 1
.label_755:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	mov	rsp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409307
	.globl sub_409307
	.type sub_409307, @function
sub_409307:

	nop	dword ptr [rax + rax]
.label_750:
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0xa0]
	imul	rcx, rcx, 0x30
	add	rcx, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rcx + 8]
	jne	.label_730
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
	jne	.label_730
.label_754:
	mov	rax, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rbp - 0xa0]
	add	rcx, 1
	mov	qword ptr [rbp - 0xa0], rcx
	sub	rax, rcx
	mov	rcx, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	qword ptr [rdx + rcx*8], rax
	jmp	.label_742
.label_753:
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
.label_732:
	lea	rdi, [rbp - 0x130]
	call	mbuiter_multi_next
	xor	eax, eax
	mov	cl, al
	test	byte ptr [rbp - 0x110], 1
	mov	byte ptr [rbp - 0x165], cl
	je	.label_747
	cmp	dword ptr [rbp - 0x10c], 0
	sete	al
	mov	byte ptr [rbp - 0x165], al
.label_747:
	mov	al, byte ptr [rbp - 0x165]
	xor	al, 0xff
	test	al, 1
	jne	.label_757
	jmp	.label_739
.label_757:
	mov	rax, qword ptr [rbp - 0xb0]
	imul	rax, rax, 0x30
	add	rax, qword ptr [rbp - 0x30]
	test	byte ptr [rax + 0x10], 1
	je	.label_733
	test	byte ptr [rbp - 0x110], 1
	je	.label_733
	mov	rax, qword ptr [rbp - 0xb0]
	imul	rax, rax, 0x30
	add	rax, qword ptr [rbp - 0x30]
	mov	ecx, dword ptr [rax + 0x14]
	cmp	ecx, dword ptr [rbp - 0x10c]
	je	.label_741
	jmp	.label_734
.label_738:
	jmp	.label_729
.label_744:
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, qword ptr [rbp - 0xe0]
	mov	qword ptr [rbp - 0xe0], rax
	mov	byte ptr [rbp - 0xe4], 0
	mov	rax, qword ptr [rbp - 0x118]
	add	rax, qword ptr [rbp - 0x120]
	mov	qword ptr [rbp - 0x120], rax
	mov	byte ptr [rbp - 0x124], 0
.label_746:
	jmp	.label_729
.label_729:
	jmp	.label_732
.label_759:
	lea	rdi, [rbp - 0xf0]
	call	mbuiter_multi_next
	xor	eax, eax
	mov	cl, al
	test	byte ptr [rbp - 0xd0], 1
	mov	byte ptr [rbp - 0x167], cl
	je	.label_737
	cmp	dword ptr [rbp - 0xcc], 0
	sete	al
	mov	byte ptr [rbp - 0x167], al
.label_737:
	mov	al, byte ptr [rbp - 0x167]
	xor	al, 0xff
	test	al, 1
	jne	.label_744
	call	abort
	.section	.text
	.align	16
	#Procedure 0x409556

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
	jae	.label_764
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x140], rcx
	jmp	.label_763
.label_736:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rdx, qword ptr [rbp - 0x38]
	sub	rax, qword ptr [rdx + rcx*8]
	mov	qword ptr [rbp - 0xa0], rax
	jmp	.label_740
	.section	.text
	.align	16
	#Procedure 0x4095c0
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
	#Procedure 0x4095ed
	.globl sub_4095ed
	.type sub_4095ed, @function
sub_4095ed:

	nop	dword ptr [rax]
.label_768:
	mov	rdi, qword ptr [rbp - 0x10]
	call	print_factors
	and	al, 1
	movzx	ecx, al
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	edx, al
	and	edx, ecx
	cmp	edx, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 1], al
	jmp	.label_766
	.section	.text
	.align	16
	#Procedure 0x409618

	.globl do_stdin
	.type do_stdin, @function
do_stdin:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	lea	rdi, [rbp - 0x18]
	mov	byte ptr [rbp - 1], 1
	call	init_tokenbuffer
.label_766:
	movabs	rsi, OFFSET FLAT:label_765
	mov	eax, 3
	mov	edx, eax
	lea	rcx, [rbp - 0x18]
	mov	rdi,  qword ptr [word ptr [stdin]]
	call	readtoken
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], -1
	jne	.label_768
	jmp	.label_767
.label_767:
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40967a
	.globl sub_40967a
	.type sub_40967a, @function
sub_40967a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409680
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
	ja	.label_769
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_771]]
	jmp	rcx
.label_769:
	mov	byte ptr [rbp - 1], 0
.label_770:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
.label_1394:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_770
.label_775:
	jmp	.label_772
.label_773:
	lea	rdi, [rbp - 0x20]
	call	__gmpz_clear
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4096e4
	.globl sub_4096e4
	.type sub_4096e4, @function
sub_4096e4:

	nop	dword ptr [rax]
.label_776:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x28]
	call	__gmpz_tdiv_q_ui
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x38], rax
	call	mp_factor_insert_ui
.label_772:
	jmp	.label_774
.label_781:
	mov	qword ptr [rbp - 0x28], 3
	mov	dword ptr [rbp - 0x2c], 1
.label_774:
	mov	eax, dword ptr [rbp - 0x2c]
	mov	ecx, eax
	cmp	rcx, 0x29c
	ja	.label_773
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x28]
	call	__gmpz_divisible_ui_p
	cmp	eax, 0
	jne	.label_776
	mov	eax, dword ptr [rbp - 0x2c]
	mov	ecx, eax
	add	ecx, 1
	mov	dword ptr [rbp - 0x2c], ecx
	mov	eax, eax
	mov	edx, eax
	movzx	eax,  byte ptr [byte ptr [+ (rdx * 1) + primes_diff]]
	mov	edx, eax
	add	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rdx
	mov	rdi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x28]
	imul	rdx, qword ptr [rbp - 0x28]
	mov	rsi, rdx
	call	__gmpz_cmp_ui
	cmp	eax, 0
	jge	.label_775
	jmp	.label_773
	.section	.text
	.align	16
	#Procedure 0x40978a

	.globl mp_factor_using_division
	.type mp_factor_using_division, @function
mp_factor_using_division:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_780
	movabs	rsi, OFFSET FLAT:label_779
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x30], eax
.label_780:
	jmp	.label_777
.label_777:
	lea	rdi, [rbp - 0x20]
	call	__gmpz_init
	xor	eax, eax
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 8]
	call	__gmpz_scan1
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x28]
	call	__gmpz_fdiv_q_2exp
.label_778:
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_781
	mov	eax, 2
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x10]
	call	mp_factor_insert_ui
	mov	rsi, qword ptr [rbp - 0x28]
	add	rsi, -1
	mov	qword ptr [rbp - 0x28], rsi
	jmp	.label_778
	.section	.text
	.align	16
	#Procedure 0x409820

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
	#Procedure 0x40983b
	.globl sub_40983b
	.type sub_40983b, @function
sub_40983b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409840

	.globl c_tolower
	.type c_tolower, @function
c_tolower:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_782
	jmp	.label_784
.label_784:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x41
	add	eax, 0x61
	mov	dword ptr [rbp - 4], eax
	jmp	.label_783
.label_782:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_783:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409877
	.globl sub_409877
	.type sub_409877, @function
sub_409877:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409880
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
	#Procedure 0x40989e
	.globl sub_40989e
	.type sub_40989e, @function
sub_40989e:

	nop	
.label_803:
	add	rsp, 0x1f0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4098a9
	.globl sub_4098a9
	.type sub_4098a9, @function
sub_4098a9:

	nop	word ptr [rax + rax]
.label_793:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_820
.label_806:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x50], rax
.label_818:
	jmp	.label_834
.label_834:
	mov	rax, qword ptr [rbp - 0x98]
	add	rax, -1
	mov	qword ptr [rbp - 0x98], rax
	cmp	rax, 0
	jne	.label_813
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0xa0]
	mov	qword ptr [rbp - 0x98], rax
	mov	rax, qword ptr [rbp - 0xa0]
	shl	rax, 1
	mov	qword ptr [rbp - 0xa0], rax
	mov	qword ptr [rbp - 0xd0], 0
.label_790:
	mov	rax, qword ptr [rbp - 0xd0]
	cmp	rax, qword ptr [rbp - 0x98]
	jae	.label_793
	lea	rdi, [rbp - 0x90]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	r9, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x10]
	mov	r10, qword ptr [rbp - 0x78]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	call	mulredc2
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x178], rdx
	add	rcx, qword ptr [rbp - 0x178]
	adc	rax, 0
	mov	qword ptr [rbp - 0x28], rax
	mov	qword ptr [rbp - 0x30], rcx
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 8]
	ja	.label_811
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 8]
	jne	.label_822
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x10]
	jb	.label_822
.label_811:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x180], rcx
	mov	qword ptr [rbp - 0x188], rsi
	sub	rdx, qword ptr [rbp - 0x188]
	sbb	rax, qword ptr [rbp - 0x180]
	mov	qword ptr [rbp - 0x28], rax
	mov	qword ptr [rbp - 0x30], rdx
.label_822:
	jmp	.label_785
.label_785:
	jmp	.label_788
.label_788:
	mov	rax, qword ptr [rbp - 0xd0]
	add	rax, 1
	mov	qword ptr [rbp - 0xd0], rax
	jmp	.label_790
.label_794:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	prime2_p
	test	al, 1
	jne	.label_795
	jmp	.label_798
.label_795:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	call	factor_insert_large
	jmp	.label_803
	.section	.text
	.align	16
	#Procedure 0x409a59

	.globl factor_using_pollard_rho2
	.type factor_using_pollard_rho2, @function
factor_using_pollard_rho2:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x1f0
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x98], 1
	mov	qword ptr [rbp - 0xa0], 1
	mov	eax, 1
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 8]
	jae	.label_843
	mov	qword ptr [rbp - 0xa8], 1
	mov	qword ptr [rbp - 0xb0], 0
	mov	qword ptr [rbp - 0xb8], 0x40
	jmp	.label_844
.label_819:
	mov	rax, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rbp - 0x80]
	jne	.label_826
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x88]
	jne	.label_826
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, rax
	call	factor_using_pollard_rho2
	jmp	.label_803
.label_843:
	mov	qword ptr [rbp - 0xa8], 0
	mov	qword ptr [rbp - 0xb0], 1
	mov	qword ptr [rbp - 0xb8], 0x80
.label_844:
	jmp	.label_835
.label_835:
	mov	rax, qword ptr [rbp - 0xb8]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0xb8], rcx
	cmp	rax, 0
	jbe	.label_837
	jmp	.label_836
.label_836:
	mov	rax, qword ptr [rbp - 0xa8]
	shl	rax, 1
	mov	rcx, qword ptr [rbp - 0xb0]
	shr	rcx, 0x3f
	or	rax, rcx
	mov	qword ptr [rbp - 0xa8], rax
	mov	rax, qword ptr [rbp - 0xb0]
	shl	rax, 1
	mov	qword ptr [rbp - 0xb0], rax
	mov	rax, qword ptr [rbp - 0xa8]
	cmp	rax, qword ptr [rbp - 8]
	ja	.label_839
	mov	rax, qword ptr [rbp - 0xa8]
	cmp	rax, qword ptr [rbp - 8]
	jne	.label_841
	mov	rax, qword ptr [rbp - 0xb0]
	cmp	rax, qword ptr [rbp - 0x10]
	jb	.label_841
.label_839:
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0xb0]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x1d0], rcx
	mov	qword ptr [rbp - 0x1d8], rsi
	sub	rdx, qword ptr [rbp - 0x1d8]
	sbb	rax, qword ptr [rbp - 0x1d0]
	mov	qword ptr [rbp - 0xa8], rax
	mov	qword ptr [rbp - 0xb0], rdx
.label_841:
	jmp	.label_835
.label_792:
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x88]
	call	factor_insert_multiplicity
.label_799:
	jmp	.label_797
.label_809:
	jmp	.label_789
.label_789:
	lea	rdi, [rbp - 0x90]
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	r8, qword ptr [rbp - 0x50]
	mov	r9, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x10]
	mov	r10, qword ptr [rbp - 0x78]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	call	mulredc2
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x190], rdx
	add	rcx, qword ptr [rbp - 0x190]
	adc	rax, 0
	mov	qword ptr [rbp - 0x48], rax
	mov	qword ptr [rbp - 0x50], rcx
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 8]
	ja	.label_800
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 8]
	jne	.label_812
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x10]
	jb	.label_812
.label_800:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x198], rcx
	mov	qword ptr [rbp - 0x1a0], rsi
	sub	rdx, qword ptr [rbp - 0x1a0]
	sbb	rax, qword ptr [rbp - 0x198]
	mov	qword ptr [rbp - 0x48], rax
	mov	qword ptr [rbp - 0x50], rdx
.label_812:
	jmp	.label_831
.label_831:
	jmp	.label_832
.label_832:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x1a8], rcx
	mov	qword ptr [rbp - 0x1b0], rsi
	sub	rdx, qword ptr [rbp - 0x1b0]
	sbb	rax, qword ptr [rbp - 0x1a8]
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0x70], rdx
	cmp	qword ptr [rbp - 0x68], 0
	jge	.label_833
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x1b8], rcx
	mov	qword ptr [rbp - 0x1c0], rsi
	add	rdx, qword ptr [rbp - 0x1c0]
	adc	rax, qword ptr [rbp - 0x1b8]
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0x70], rdx
.label_833:
	jmp	.label_804
.label_804:
	lea	rdi, [rbp - 0x80]
	mov	rsi, qword ptr [rbp - 0x68]
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 8]
	mov	r8, qword ptr [rbp - 0x10]
	call	gcd2_odd
	mov	qword ptr [rbp - 0x88], rax
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x80], 0
	mov	byte ptr [rbp - 0x1da], cl
	jne	.label_821
	cmp	qword ptr [rbp - 0x88], 1
	sete	al
	mov	byte ptr [rbp - 0x1da], al
.label_821:
	mov	al, byte ptr [rbp - 0x1da]
	test	al, 1
	jne	.label_789
	cmp	qword ptr [rbp - 0x80], 0
	jne	.label_819
	jmp	.label_823
.label_823:
	jmp	.label_825
.label_825:
	mov	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0xe8], rax
	mov	rax, qword ptr [rbp - 0xe8]
	shr	rax, 1
	and	rax, 0x7f
	movzx	ecx,  byte ptr [byte ptr [+ (rax * 1) + binvert_table]]
	mov	eax, ecx
	mov	qword ptr [rbp - 0xf0], rax
	mov	rax, qword ptr [rbp - 0xf0]
	shl	rax, 1
	mov	rdx, qword ptr [rbp - 0xf0]
	imul	rdx, qword ptr [rbp - 0xf0]
	imul	rdx, qword ptr [rbp - 0xe8]
	sub	rax, rdx
	mov	qword ptr [rbp - 0xf0], rax
	mov	rax, qword ptr [rbp - 0xf0]
	shl	rax, 1
	mov	rdx, qword ptr [rbp - 0xf0]
	imul	rdx, qword ptr [rbp - 0xf0]
	imul	rdx, qword ptr [rbp - 0xe8]
	sub	rax, rdx
	mov	qword ptr [rbp - 0xf0], rax
	mov	rax, qword ptr [rbp - 0xf0]
	shl	rax, 1
	mov	rdx, qword ptr [rbp - 0xf0]
	imul	rdx, qword ptr [rbp - 0xf0]
	imul	rdx, qword ptr [rbp - 0xe8]
	sub	rax, rdx
	mov	qword ptr [rbp - 0xf0], rax
	mov	rax, qword ptr [rbp - 0xf0]
	mov	qword ptr [rbp - 0xd8], rax
	mov	rax, qword ptr [rbp - 0x10]
	imul	rax, qword ptr [rbp - 0xd8]
	mov	qword ptr [rbp - 0xe0], rax
	mov	rax, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rbp - 0x88]
	jb	.label_827
	mov	rax, qword ptr [rbp - 0xe0]
	mov	rcx, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x1c8], rcx
	mul	qword ptr [rbp - 0x1c8]
	mov	qword ptr [rbp - 0x100], rax
	mov	qword ptr [rbp - 0xf8], rdx
	mov	rax, qword ptr [rbp - 8]
	sub	rax, qword ptr [rbp - 0xf8]
	imul	rax, qword ptr [rbp - 0xd8]
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 0xe0]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_817
.label_827:
	mov	rax, qword ptr [rbp - 0xe0]
	mov	qword ptr [rbp - 0x10], rax
	mov	qword ptr [rbp - 8], 0
.label_817:
	jmp	.label_787
.label_787:
	mov	rdi, qword ptr [rbp - 0x88]
	call	prime_p
	test	al, 1
	jne	.label_792
	mov	rdi, qword ptr [rbp - 0x88]
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsi, rax
	call	factor_using_pollard_rho
	jmp	.label_799
.label_807:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	call	factor_using_pollard_rho
	jmp	.label_803
.label_826:
	jmp	.label_805
.label_805:
	mov	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x110], rax
	mov	rax, qword ptr [rbp - 0x110]
	shr	rax, 1
	and	rax, 0x7f
	movzx	ecx,  byte ptr [byte ptr [+ (rax * 1) + binvert_table]]
	mov	eax, ecx
	mov	qword ptr [rbp - 0x118], rax
	mov	rax, qword ptr [rbp - 0x118]
	shl	rax, 1
	mov	rdx, qword ptr [rbp - 0x118]
	imul	rdx, qword ptr [rbp - 0x118]
	imul	rdx, qword ptr [rbp - 0x110]
	sub	rax, rdx
	mov	qword ptr [rbp - 0x118], rax
	mov	rax, qword ptr [rbp - 0x118]
	shl	rax, 1
	mov	rdx, qword ptr [rbp - 0x118]
	imul	rdx, qword ptr [rbp - 0x118]
	imul	rdx, qword ptr [rbp - 0x110]
	sub	rax, rdx
	mov	qword ptr [rbp - 0x118], rax
	mov	rax, qword ptr [rbp - 0x118]
	shl	rax, 1
	mov	rdx, qword ptr [rbp - 0x118]
	imul	rdx, qword ptr [rbp - 0x118]
	imul	rdx, qword ptr [rbp - 0x110]
	sub	rax, rdx
	mov	qword ptr [rbp - 0x118], rax
	mov	rax, qword ptr [rbp - 0x118]
	mov	qword ptr [rbp - 0x108], rax
	mov	rax, qword ptr [rbp - 0x108]
	imul	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
	mov	qword ptr [rbp - 8], 0
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rbp - 0x88]
	call	prime2_p
	test	al, 1
	jne	.label_801
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rbp - 0x88]
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, rax
	call	factor_using_pollard_rho2
	jmp	.label_810
.label_798:
	lea	rdi, [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 8]
	mov	r8, qword ptr [rbp - 0x10]
	call	mod2
	lea	rdi, [rbp - 0x38]
	mov	qword ptr [rbp - 0x30], rax
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 8]
	mov	r8, qword ptr [rbp - 0x10]
	call	mod2
	lea	rdi, [rbp - 0x48]
	mov	qword ptr [rbp - 0x40], rax
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 8]
	mov	r8, qword ptr [rbp - 0x10]
	call	mod2
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_816
.label_837:
	mov	rax, qword ptr [rbp - 0xa8]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0xb0]
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_842
.label_842:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x120], rcx
	mov	qword ptr [rbp - 0x128], rsi
	add	rdx, qword ptr [rbp - 0x128]
	adc	rax, qword ptr [rbp - 0x120]
	mov	qword ptr [rbp - 0x28], rax
	mov	qword ptr [rbp - 0x30], rdx
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 8]
	ja	.label_838
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 8]
	jne	.label_840
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x10]
	jb	.label_840
.label_838:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x130], rcx
	mov	qword ptr [rbp - 0x138], rsi
	sub	rdx, qword ptr [rbp - 0x138]
	sbb	rax, qword ptr [rbp - 0x130]
	mov	qword ptr [rbp - 0x28], rax
	mov	qword ptr [rbp - 0x30], rdx
.label_840:
	jmp	.label_845
.label_845:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x38], rax
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x40], rax
	mov	qword ptr [rbp - 0x50], rax
.label_816:
	mov	al, 1
	cmp	qword ptr [rbp - 8], 0
	mov	byte ptr [rbp - 0x1d9], al
	jne	.label_814
	cmp	qword ptr [rbp - 0x10], 1
	setne	al
	mov	byte ptr [rbp - 0x1d9], al
.label_814:
	mov	al, byte ptr [rbp - 0x1d9]
	test	al, 1
	jne	.label_824
	jmp	.label_803
.label_824:
	jmp	.label_829
.label_829:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0xc0], rax
	mov	rax, qword ptr [rbp - 0xc0]
	shr	rax, 1
	and	rax, 0x7f
	movzx	ecx,  byte ptr [byte ptr [+ (rax * 1) + binvert_table]]
	mov	eax, ecx
	mov	qword ptr [rbp - 0xc8], rax
	mov	rax, qword ptr [rbp - 0xc8]
	shl	rax, 1
	mov	rdx, qword ptr [rbp - 0xc8]
	imul	rdx, qword ptr [rbp - 0xc8]
	imul	rdx, qword ptr [rbp - 0xc0]
	sub	rax, rdx
	mov	qword ptr [rbp - 0xc8], rax
	mov	rax, qword ptr [rbp - 0xc8]
	shl	rax, 1
	mov	rdx, qword ptr [rbp - 0xc8]
	imul	rdx, qword ptr [rbp - 0xc8]
	imul	rdx, qword ptr [rbp - 0xc0]
	sub	rax, rdx
	mov	qword ptr [rbp - 0xc8], rax
	mov	rax, qword ptr [rbp - 0xc8]
	shl	rax, 1
	mov	rdx, qword ptr [rbp - 0xc8]
	imul	rdx, qword ptr [rbp - 0xc8]
	imul	rdx, qword ptr [rbp - 0xc0]
	sub	rax, rdx
	mov	qword ptr [rbp - 0xc8], rax
	mov	rax, qword ptr [rbp - 0xc8]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_820
.label_820:
	jmp	.label_813
.label_813:
	lea	rdi, [rbp - 0x90]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	r9, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x10]
	mov	r10, qword ptr [rbp - 0x78]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	call	mulredc2
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x140], rdx
	add	rcx, qword ptr [rbp - 0x140]
	adc	rax, 0
	mov	qword ptr [rbp - 0x28], rax
	mov	qword ptr [rbp - 0x30], rcx
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 8]
	ja	.label_828
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 8]
	jne	.label_786
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x10]
	jb	.label_786
.label_828:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x148], rcx
	mov	qword ptr [rbp - 0x150], rsi
	sub	rdx, qword ptr [rbp - 0x150]
	sbb	rax, qword ptr [rbp - 0x148]
	mov	qword ptr [rbp - 0x28], rax
	mov	qword ptr [rbp - 0x30], rdx
.label_786:
	jmp	.label_791
.label_791:
	jmp	.label_796
.label_796:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x158], rcx
	mov	qword ptr [rbp - 0x160], rsi
	sub	rdx, qword ptr [rbp - 0x160]
	sbb	rax, qword ptr [rbp - 0x158]
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0x70], rdx
	cmp	qword ptr [rbp - 0x68], 0
	jge	.label_808
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x168], rcx
	mov	qword ptr [rbp - 0x170], rsi
	add	rdx, qword ptr [rbp - 0x170]
	adc	rax, qword ptr [rbp - 0x168]
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0x70], rdx
.label_808:
	jmp	.label_830
.label_830:
	lea	rdi, [rbp - 0x90]
	mov	rsi, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	r8, qword ptr [rbp - 0x70]
	mov	r9, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x10]
	mov	r10, qword ptr [rbp - 0x78]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	call	mulredc2
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x98]
	and	rax, 0x1f
	cmp	rax, 1
	jne	.label_818
	lea	rdi, [rbp - 0x80]
	mov	rsi, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 8]
	mov	r8, qword ptr [rbp - 0x10]
	call	gcd2_odd
	mov	qword ptr [rbp - 0x88], rax
	cmp	qword ptr [rbp - 0x80], 0
	jne	.label_802
	cmp	qword ptr [rbp - 0x88], 1
	je	.label_806
.label_802:
	jmp	.label_809
.label_801:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x88]
	call	factor_insert_large
.label_810:
	jmp	.label_797
.label_797:
	cmp	qword ptr [rbp - 8], 0
	jne	.label_794
	mov	rdi, qword ptr [rbp - 0x10]
	call	prime_p
	test	al, 1
	jne	.label_815
	jmp	.label_807
.label_815:
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x10]
	call	factor_insert_multiplicity
	jmp	.label_803
	.section	.text
	.align	16
	#Procedure 0x40a4c0
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
	#Procedure 0x40a4ef
	.globl sub_40a4ef
	.type sub_40a4ef, @function
sub_40a4ef:

	nop	
	.section	.text
	.align	16
	#Procedure 0x40a4f0

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
	#Procedure 0x40a518
	.globl sub_40a518
	.type sub_40a518, @function
sub_40a518:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a520

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
.label_848:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx], 0
	mov	byte ptr [rbp - 0x21], cl
	je	.label_847
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax]
	call	strcmp
	cmp	eax, 0
	sete	cl
	xor	cl, 0xff
	mov	byte ptr [rbp - 0x21], cl
.label_847:
	mov	al, byte ptr [rbp - 0x21]
	test	al, 1
	jne	.label_854
	jmp	.label_857
.label_854:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_848
.label_857:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 8], 0
	je	.label_849
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
.label_849:
	movabs	rdi, OFFSET FLAT:label_853
	call	gettext
	movabs	rsi, OFFSET FLAT:label_13
	movabs	rdx, OFFSET FLAT:label_14
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
	je	.label_850
	movabs	rsi, OFFSET FLAT:label_856
	mov	eax, 3
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x20]
	call	strncmp
	cmp	eax, 0
	je	.label_850
	movabs	rdi, OFFSET FLAT:label_851
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x2c], eax
.label_850:
	movabs	rdi, OFFSET FLAT:label_846
	call	gettext
	movabs	rsi, OFFSET FLAT:label_14
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_852
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	movabs	rdx, OFFSET FLAT:label_419
	movabs	rsi, OFFSET FLAT:label_855
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
	#Procedure 0x40a6b9
	.globl sub_40a6b9
	.type sub_40a6b9, @function
sub_40a6b9:

	nop	dword ptr [rax]
.label_865:
	jmp	.label_858
.label_885:
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, 1
	mov	qword ptr [rbp - 0x138], rax
	mov	dword ptr [rbp - 0x14], 0
.label_897:
	mov	rax, qword ptr [rbp - 0x138]
	and	rax, 1
	cmp	rax, 0
	jne	.label_890
	mov	rax, qword ptr [rbp - 0x138]
	shr	rax, 1
	mov	qword ptr [rbp - 0x138], rax
	mov	eax, dword ptr [rbp - 0x14]
	add	eax, 1
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_897
.label_866:
	movabs	rdi, OFFSET FLAT:label_494
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	call	abort
.label_884:
	mov	rax, qword ptr [rbp - 0x180]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x170]
	mov	qword ptr [rbp - 0x158], rax
	jmp	.label_898
.label_898:
	jmp	.label_891
.label_891:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x10]
	sub	rsi, qword ptr [rbp - 0x28]
	cmp	rdx, rsi
	setb	dil
	and	dil, 1
	movzx	eax, dil
	movsxd	rdx, eax
	sub	rcx, rdx
	mov	qword ptr [rbp - 0x190], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	and	rcx, qword ptr [rbp - 0x190]
	add	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	sub	rdx, qword ptr [rbp - 0x28]
	sub	rcx, rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x138]
	mov	r8d, dword ptr [rbp - 0x14]
	mov	r9, qword ptr [rbp - 0x28]
	call	millerrabin
	test	al, 1
	jne	.label_886
	mov	byte ptr [rbp - 1], 0
	jmp	.label_873
.label_880:
	movabs	rdi, OFFSET FLAT:label_867
	movabs	rsi, OFFSET FLAT:label_67
	mov	edx, 0x4f4
	movabs	rcx, OFFSET FLAT:label_868
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x40a7fa

	.globl prime_p
	.type prime_p, @function
prime_p:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x220
	mov	qword ptr [rbp - 0x10], rdi
	cmp	qword ptr [rbp - 0x10], 1
	ja	.label_900
	mov	byte ptr [rbp - 1], 0
	jmp	.label_873
.label_878:
	mov	rax, qword ptr [rbp - 0x1d8]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x1c8]
	mov	qword ptr [rbp - 0x1b0], rax
	jmp	.label_862
.label_862:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x138]
	mov	r8d, dword ptr [rbp - 0x14]
	mov	r9, qword ptr [rbp - 0x28]
	call	millerrabin
	test	al, 1
	jne	.label_870
	mov	byte ptr [rbp - 1], 0
	jmp	.label_873
.label_893:
	movabs	rdi, OFFSET FLAT:label_895
	movabs	rsi, OFFSET FLAT:label_67
	mov	edx, 0x4c4
	movabs	rcx, OFFSET FLAT:label_868
	call	__assert_fail
.label_874:
	cmp	dword ptr [rbp - 0x194], 0x18
	sete	al
	and	al, 1
	mov	byte ptr [rbp - 0x15], al
.label_858:
	test	byte ptr [rbp - 0x15], 1
	je	.label_869
	mov	byte ptr [rbp - 1], 1
	jmp	.label_873
.label_890:
	mov	qword ptr [rbp - 0x140], 2
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x148], rax
	mov	rax, qword ptr [rbp - 0x148]
	shr	rax, 1
	and	rax, 0x7f
	movzx	ecx,  byte ptr [byte ptr [+ (rax * 1) + binvert_table]]
	mov	eax, ecx
	mov	qword ptr [rbp - 0x150], rax
	mov	rax, qword ptr [rbp - 0x150]
	shl	rax, 1
	mov	rdx, qword ptr [rbp - 0x150]
	imul	rdx, qword ptr [rbp - 0x150]
	imul	rdx, qword ptr [rbp - 0x148]
	sub	rax, rdx
	mov	qword ptr [rbp - 0x150], rax
	mov	rax, qword ptr [rbp - 0x150]
	shl	rax, 1
	mov	rdx, qword ptr [rbp - 0x150]
	imul	rdx, qword ptr [rbp - 0x150]
	imul	rdx, qword ptr [rbp - 0x148]
	sub	rax, rdx
	mov	qword ptr [rbp - 0x150], rax
	mov	rax, qword ptr [rbp - 0x150]
	shl	rax, 1
	mov	rdx, qword ptr [rbp - 0x150]
	imul	rdx, qword ptr [rbp - 0x150]
	imul	rdx, qword ptr [rbp - 0x148]
	sub	rax, rdx
	mov	qword ptr [rbp - 0x150], rax
	mov	rax, qword ptr [rbp - 0x150]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_899
.label_899:
	jmp	.label_883
.label_883:
	mov	eax, 1
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x10]
	jae	.label_893
	jmp	.label_889
.label_869:
	mov	eax, dword ptr [rbp - 0x194]
	mov	ecx, eax
	movzx	eax,  byte ptr [byte ptr [+ (rcx * 1) + primes_diff]]
	mov	ecx, eax
	add	rcx, qword ptr [rbp - 0x140]
	mov	qword ptr [rbp - 0x140], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x140]
	mov	qword ptr [rbp - 0x1e8], rdx
	mov	rax, rcx
	mul	qword ptr [rbp - 0x1e8]
	mov	qword ptr [rbp - 0x1a8], rax
	mov	qword ptr [rbp - 0x1a0], rdx
	cmp	qword ptr [rbp - 0x1a0], 0
	sete	sil
	and	sil, 1
	movzx	edi, sil
	movsxd	rax, edi
	cmp	rax, 0
	je	.label_881
	mov	rax, qword ptr [rbp - 0x1a8]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rdx
	jmp	.label_862
.label_886:
	test	byte ptr [byte ptr [flag_prove_primality]],  1
	je	.label_892
	xor	eax, eax
	mov	edi, eax
	lea	rdx, [rbp - 0x130]
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rcx, 1
	mov	rsi, rcx
	call	factor
.label_892:
	mov	dword ptr [rbp - 0x194], 0
.label_860:
	mov	eax, dword ptr [rbp - 0x194]
	mov	ecx, eax
	cmp	rcx, 0x29c
	jae	.label_866
	test	byte ptr [byte ptr [flag_prove_primality]],  1
	je	.label_874
	mov	byte ptr [rbp - 0x15], 1
	mov	dword ptr [rbp - 0x198], 0
.label_864:
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 0x198]
	movzx	edx, byte ptr [rbp - 0x36]
	cmp	eax, edx
	mov	byte ptr [rbp - 0x209], cl
	jae	.label_859
	mov	al, byte ptr [rbp - 0x15]
	mov	byte ptr [rbp - 0x209], al
.label_859:
	mov	al, byte ptr [rbp - 0x209]
	test	al, 1
	jne	.label_876
	jmp	.label_865
.label_876:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, 1
	mov	ecx, dword ptr [rbp - 0x198]
	mov	edx, ecx
	xor	ecx, ecx
	mov	qword ptr [rbp - 0x218], rdx
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x218]
	div	qword ptr [rbp + rsi*8 - 0x120]
	mov	r8, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	r9, qword ptr [rbp - 0x28]
	mov	rsi, rax
	mov	rdx, r8
	mov	r8, r9
	call	powm
	cmp	rax, qword ptr [rbp - 0x28]
	setne	r10b
	and	r10b, 1
	mov	byte ptr [rbp - 0x15], r10b
	mov	eax, dword ptr [rbp - 0x198]
	add	eax, 1
	mov	dword ptr [rbp - 0x198], eax
	jmp	.label_864
.label_870:
	jmp	.label_875
.label_875:
	mov	eax, dword ptr [rbp - 0x194]
	add	eax, 1
	mov	dword ptr [rbp - 0x194], eax
	jmp	.label_860
.label_889:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x160], rax
	mov	qword ptr [rbp - 0x168], 0
	mov	qword ptr [rbp - 0x178], 1
	mov	qword ptr [rbp - 0x180], 0
	mov	qword ptr [rbp - 0x170], 0
	mov	dword ptr [rbp - 0x184], 0x40
.label_896:
	cmp	dword ptr [rbp - 0x184], 0
	jbe	.label_884
	jmp	.label_887
.label_887:
	mov	rax, qword ptr [rbp - 0x160]
	shl	rax, 0x3f
	mov	rcx, qword ptr [rbp - 0x168]
	shr	rcx, 1
	or	rax, rcx
	mov	qword ptr [rbp - 0x168], rax
	mov	rax, qword ptr [rbp - 0x160]
	shr	rax, 1
	mov	qword ptr [rbp - 0x160], rax
	mov	rax, qword ptr [rbp - 0x170]
	shl	rax, 1
	mov	qword ptr [rbp - 0x170], rax
	mov	rax, qword ptr [rbp - 0x178]
	cmp	rax, qword ptr [rbp - 0x160]
	ja	.label_888
	mov	rax, qword ptr [rbp - 0x178]
	cmp	rax, qword ptr [rbp - 0x160]
	jne	.label_894
	mov	rax, qword ptr [rbp - 0x180]
	cmp	rax, qword ptr [rbp - 0x168]
	jb	.label_894
.label_888:
	mov	rax, qword ptr [rbp - 0x170]
	add	rax, 1
	mov	qword ptr [rbp - 0x170], rax
	mov	rax, qword ptr [rbp - 0x178]
	mov	rcx, qword ptr [rbp - 0x160]
	mov	rdx, qword ptr [rbp - 0x180]
	mov	rsi, qword ptr [rbp - 0x168]
	mov	qword ptr [rbp - 0x200], rcx
	mov	qword ptr [rbp - 0x208], rsi
	sub	rdx, qword ptr [rbp - 0x208]
	sbb	rax, qword ptr [rbp - 0x200]
	mov	qword ptr [rbp - 0x178], rax
	mov	qword ptr [rbp - 0x180], rdx
.label_894:
	jmp	.label_901
.label_901:
	mov	eax, dword ptr [rbp - 0x184]
	add	eax, -1
	mov	dword ptr [rbp - 0x184], eax
	jmp	.label_896
.label_900:
	cmp	qword ptr [rbp - 0x10], 0x17ded79
	jae	.label_885
	mov	byte ptr [rbp - 1], 1
	jmp	.label_873
.label_873:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x220
	pop	rbp
	ret	
.label_863:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x1b8], rax
	mov	qword ptr [rbp - 0x1c0], 0
	mov	rax, qword ptr [rbp - 0x1a0]
	mov	qword ptr [rbp - 0x1d0], rax
	mov	rax, qword ptr [rbp - 0x1a8]
	mov	qword ptr [rbp - 0x1d8], rax
	mov	qword ptr [rbp - 0x1c8], 0
	mov	dword ptr [rbp - 0x1dc], 0x40
.label_872:
	cmp	dword ptr [rbp - 0x1dc], 0
	jbe	.label_878
	jmp	.label_882
.label_882:
	mov	rax, qword ptr [rbp - 0x1b8]
	shl	rax, 0x3f
	mov	rcx, qword ptr [rbp - 0x1c0]
	shr	rcx, 1
	or	rax, rcx
	mov	qword ptr [rbp - 0x1c0], rax
	mov	rax, qword ptr [rbp - 0x1b8]
	shr	rax, 1
	mov	qword ptr [rbp - 0x1b8], rax
	mov	rax, qword ptr [rbp - 0x1c8]
	shl	rax, 1
	mov	qword ptr [rbp - 0x1c8], rax
	mov	rax, qword ptr [rbp - 0x1d0]
	cmp	rax, qword ptr [rbp - 0x1b8]
	ja	.label_861
	mov	rax, qword ptr [rbp - 0x1d0]
	cmp	rax, qword ptr [rbp - 0x1b8]
	jne	.label_871
	mov	rax, qword ptr [rbp - 0x1d8]
	cmp	rax, qword ptr [rbp - 0x1c0]
	jb	.label_871
.label_861:
	mov	rax, qword ptr [rbp - 0x1c8]
	add	rax, 1
	mov	qword ptr [rbp - 0x1c8], rax
	mov	rax, qword ptr [rbp - 0x1d0]
	mov	rcx, qword ptr [rbp - 0x1b8]
	mov	rdx, qword ptr [rbp - 0x1d8]
	mov	rsi, qword ptr [rbp - 0x1c0]
	mov	qword ptr [rbp - 0x1f0], rcx
	mov	qword ptr [rbp - 0x1f8], rsi
	sub	rdx, qword ptr [rbp - 0x1f8]
	sbb	rax, qword ptr [rbp - 0x1f0]
	mov	qword ptr [rbp - 0x1d0], rax
	mov	qword ptr [rbp - 0x1d8], rdx
.label_871:
	jmp	.label_877
.label_877:
	mov	eax, dword ptr [rbp - 0x1dc]
	add	eax, -1
	mov	dword ptr [rbp - 0x1dc], eax
	jmp	.label_872
.label_881:
	jmp	.label_879
.label_879:
	mov	rax, qword ptr [rbp - 0x1a0]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_880
	jmp	.label_863
.label_902:
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 8]
	add	rcx, 4
	mov	rdi, rcx
	call	memset
.label_903:
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
	#Procedure 0x40ae5b
	.globl sub_40ae5b
	.type sub_40ae5b, @function
sub_40ae5b:

	nop	
	.section	.text
	.align	16
	#Procedure 0x40ae5d
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
	jne	.label_904
	jmp	.label_902
.label_904:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 4]
	mov	qword ptr [rax + 4], rcx
	jmp	.label_903
	.section	.text
	.align	16
	#Procedure 0x40aea0

	.globl readtoken
	.type readtoken, @function
readtoken:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x80
	xor	eax, eax
	mov	r8d, 0x20
	mov	r9d, r8d
	lea	r10, [rbp - 0x70]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	rdi, r10
	mov	esi, eax
	mov	rdx, r9
	call	memset
	mov	qword ptr [rbp - 0x40], 0
.label_907:
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_911
	lea	rsi, [rbp - 0x70]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	dl, byte ptr [rcx + rax]
	mov	byte ptr [rbp - 0x71], dl
	movzx	edi, byte ptr [rbp - 0x71]
	call	set_nth_bit
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_907
.label_909:
	mov	eax, dword ptr [rbp - 0x34]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rsi, rdx
	add	rsi, 1
	mov	qword ptr [rbp - 0x40], rsi
	mov	rsi, qword ptr [rbp - 0x30]
	mov	byte ptr [rsi + rdx], cl
	mov	rdi, qword ptr [rbp - 0x10]
	call	getc_unlocked
	mov	dword ptr [rbp - 0x34], eax
	jmp	.label_918
.label_919:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x48], rax
	mov	qword ptr [rbp - 0x40], 0
.label_918:
	cmp	dword ptr [rbp - 0x34], 0
	jge	.label_912
	cmp	qword ptr [rbp - 0x40], 0
	jne	.label_912
	mov	qword ptr [rbp - 8], -1
	jmp	.label_917
.label_911:
	mov	rdi, qword ptr [rbp - 0x10]
	call	getc_unlocked
	mov	dword ptr [rbp - 0x34], eax
.label_908:
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [rbp - 0x34], 0
	mov	byte ptr [rbp - 0x72], cl
	jl	.label_910
	lea	rsi, [rbp - 0x70]
	movsxd	rdi, dword ptr [rbp - 0x34]
	call	get_nth_bit
	mov	byte ptr [rbp - 0x72], al
.label_910:
	mov	al, byte ptr [rbp - 0x72]
	test	al, 1
	jne	.label_915
	jmp	.label_919
.label_915:
	jmp	.label_905
.label_905:
	mov	rdi, qword ptr [rbp - 0x10]
	call	getc_unlocked
	mov	dword ptr [rbp - 0x34], eax
	jmp	.label_908
.label_914:
	lea	rsi, [rbp - 0x70]
	movsxd	rdi, dword ptr [rbp - 0x34]
	call	get_nth_bit
	test	al, 1
	jne	.label_913
	jmp	.label_909
.label_913:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	byte ptr [rcx + rax], 0
	jmp	.label_916
.label_912:
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x48]
	jne	.label_906
	lea	rsi, [rbp - 0x48]
	mov	eax, 1
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x30]
	call	x2nrealloc
	mov	qword ptr [rbp - 0x30], rax
.label_906:
	cmp	dword ptr [rbp - 0x34], 0
	jge	.label_914
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	byte ptr [rcx + rax], 0
	jmp	.label_916
.label_916:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 8], rax
.label_917:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x80
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b071
	.globl sub_40b071
	.type sub_40b071, @function
sub_40b071:

	nop	word ptr cs:[rax + rax]
.label_924:
	jmp	.label_920
.label_923:
	movabs	rax, 0x5555555555555554
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_922
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40b0a6

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
	jne	.label_923
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_921
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
.label_921:
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_924
	call	xalloc_die
.label_922:
	mov	rax, qword ptr [rbp - 0x20]
	shr	rax, 1
	add	rax, 1
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_920:
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
	#Procedure 0x40b167
	.globl sub_40b167
	.type sub_40b167, @function
sub_40b167:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b170

	.globl factor_insert_large
	.type factor_insert_large, @function
factor_insert_large:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	cmp	qword ptr [rbp - 0x10], 0
	jbe	.label_925
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 8], 0
	jne	.label_930
	jmp	.label_929
.label_930:
	movabs	rdi, OFFSET FLAT:label_926
	movabs	rsi, OFFSET FLAT:label_67
	mov	edx, 0x235
	movabs	rcx, OFFSET FLAT:label_927
	call	__assert_fail
.label_925:
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x18]
	call	factor_insert_multiplicity
.label_928:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b1e3
	.globl sub_40b1e3
	.type sub_40b1e3, @function
sub_40b1e3:

	nop	
.label_929:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 8], rax
	jmp	.label_928
.label_932:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b20a
	.globl sub_40b20a
	.type sub_40b20a, @function
sub_40b20a:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b214
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
	jb	.label_931
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	calloc
	mov	qword ptr [rbp - 0x18], rax
	cmp	rax, 0
	jne	.label_932
.label_931:
	call	xalloc_die
.label_933:
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	factor_insert_multiplicity
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b278
	.globl sub_40b278
	.type sub_40b278, @function
sub_40b278:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b27d

	.globl factor_insert_refind
	.type factor_insert_refind, @function
factor_insert_refind:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x14], edx
	mov	dword ptr [rbp - 0x18], ecx
	mov	dword ptr [rbp - 0x1c], 0
.label_934:
	mov	eax, dword ptr [rbp - 0x1c]
	cmp	eax, dword ptr [rbp - 0x18]
	jae	.label_933
	mov	eax, dword ptr [rbp - 0x14]
	add	eax, dword ptr [rbp - 0x1c]
	mov	eax, eax
	mov	ecx, eax
	movzx	eax,  byte ptr [byte ptr [+ (rcx * 1) + primes_diff]]
	mov	ecx, eax
	add	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rcx
	mov	eax, dword ptr [rbp - 0x1c]
	add	eax, 1
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_934
	.section	.text
	.align	16
	#Procedure 0x40b2d0
	.globl c_isupper
	.type c_isupper, @function
c_isupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_935
	jmp	.label_937
.label_937:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_936
.label_935:
	mov	byte ptr [rbp - 1], 0
.label_936:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b302
	.globl sub_40b302
	.type sub_40b302, @function
sub_40b302:

	nop	word ptr cs:[rax + rax]
.label_938:
	mov	byte ptr [rbp - 1], 0
.label_940:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b31e
	.globl sub_40b31e
	.type sub_40b31e, @function
sub_40b31e:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b329
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
	jb	.label_939
	jmp	.label_941
.label_941:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 0x1a
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_939
	jmp	.label_942
.label_942:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_938
	jmp	.label_939
.label_939:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_940
	.section	.text
	.align	16
	#Procedure 0x40b380
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
	jl	.label_944
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_943
.label_944:
	mov	edi, dword ptr [rbp - 4]
	call	iswcntrl
	mov	edi, 1
	xor	ecx, ecx
	cmp	eax, 0
	cmovne	edi, ecx
	mov	dword ptr [rbp - 0xc], edi
.label_943:
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b3cc
	.globl sub_40b3cc
	.type sub_40b3cc, @function
sub_40b3cc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40b3d0

	.globl set_nth_bit
	.type set_nth_bit, @function
set_nth_bit:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], 1
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 8]
	and	rdi, 0x3f
	mov	rcx, rdi
	shl	rsi, cl
	mov	rdi, qword ptr [rbp - 8]
	shr	rdi, 6
	mov	rax, qword ptr [rbp - 0x10]
	or	rsi, qword ptr [rax + rdi*8]
	mov	qword ptr [rax + rdi*8], rsi
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b40c
	.globl sub_40b40c
	.type sub_40b40c, @function
sub_40b40c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40b410
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
	#Procedure 0x40b447
	.globl sub_40b447
	.type sub_40b447, @function
sub_40b447:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b450

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
	#Procedure 0x40b48e
	.globl sub_40b48e
	.type sub_40b48e, @function
sub_40b48e:

	nop	
.label_953:
	mov	eax, 1
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	call	mp_factor_using_pollard_rho
.label_949:
	jmp	.label_946
.label_946:
	jmp	.label_945
.label_945:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b4b4
	.globl sub_40b4b4
	.type sub_40b4b4, @function
sub_40b4b4:

	nop	word ptr [rax + rax]
.label_955:
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 4], 0
	setg	cl
	and	cl, 1
	movzx	edx, cl
	mov	dword ptr [rbp - 0x14], edx
.label_954:
	mov	eax, dword ptr [rbp - 0x14]
	cmp	eax, 0
	je	.label_945
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	mp_factor_using_division
	mov	eax, 1
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 8]
	call	__gmpz_cmp_ui
	cmp	eax, 0
	je	.label_946
	jmp	.label_947
.label_947:
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_948
	movabs	rsi, OFFSET FLAT:label_951
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x18], eax
.label_948:
	jmp	.label_950
.label_950:
	mov	rdi, qword ptr [rbp - 8]
	call	mp_prime_p
	test	al, 1
	jne	.label_952
	jmp	.label_953
.label_952:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 8]
	call	mp_factor_insert
	jmp	.label_949
	.section	.text
	.align	16
	#Procedure 0x40b55c

	.globl mp_factor
	.type mp_factor, @function
mp_factor:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	call	mp_factor_init
	mov	rsi, qword ptr [rbp - 8]
	cmp	dword ptr [rsi + 4], 0
	jge	.label_955
	mov	eax, 0xffffffff
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_954
	.section	.text
	.align	16
	#Procedure 0x40b590
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
	#Procedure 0x40b5b7
	.globl sub_40b5b7
	.type sub_40b5b7, @function
sub_40b5b7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b5c0
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
	#Procedure 0x40b5f6
	.globl sub_40b5f6
	.type sub_40b5f6, @function
sub_40b5f6:

	nop	word ptr cs:[rax + rax]
.label_959:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_956
.label_962:
	mov	rax, qword ptr [rbp - 0x20]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rax, rdx
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rdx
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rax, rdx
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rdx
	jmp	.label_974
.label_982:
	movabs	rdi, OFFSET FLAT:label_895
	movabs	rsi, OFFSET FLAT:label_67
	mov	edx, 0x5c2
	movabs	rcx, OFFSET FLAT:label_967
	call	__assert_fail
.label_975:
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x50]
	call	factor_insert_multiplicity
.label_979:
	mov	rdi, qword ptr [rbp - 8]
	call	prime_p
	test	al, 1
	jne	.label_960
	jmp	.label_962
.label_960:
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 8]
	call	factor_insert_multiplicity
	jmp	.label_964
.label_984:
	mov	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x68], rax
	jmp	.label_983
.label_983:
	jmp	.label_981
.label_981:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 8]
	sub	rsi, qword ptr [rbp - 0x38]
	cmp	rdx, rsi
	setb	dil
	and	dil, 1
	movzx	eax, dil
	movsxd	rdx, eax
	sub	rcx, rdx
	mov	qword ptr [rbp - 0xa0], rcx
	mov	rcx, qword ptr [rbp - 8]
	and	rcx, qword ptr [rbp - 0xa0]
	add	rcx, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 8]
	sub	rdx, qword ptr [rbp - 0x38]
	sub	rcx, rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x28], rax
	mov	qword ptr [rbp - 0x30], rax
.label_974:
	cmp	qword ptr [rbp - 8], 1
	je	.label_964
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 8]
	jae	.label_968
	jmp	.label_970
.label_964:
	add	rsp, 0xf0
	pop	rbp
	ret	
.label_970:
	jmp	.label_972
.label_972:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0xa8], rax
	mov	rax, qword ptr [rbp - 0xa8]
	shr	rax, 1
	and	rax, 0x7f
	movzx	ecx,  byte ptr [byte ptr [+ (rax * 1) + binvert_table]]
	mov	eax, ecx
	mov	qword ptr [rbp - 0xb0], rax
	mov	rax, qword ptr [rbp - 0xb0]
	shl	rax, 1
	mov	rdx, qword ptr [rbp - 0xb0]
	imul	rdx, qword ptr [rbp - 0xb0]
	imul	rdx, qword ptr [rbp - 0xa8]
	sub	rax, rdx
	mov	qword ptr [rbp - 0xb0], rax
	mov	rax, qword ptr [rbp - 0xb0]
	shl	rax, 1
	mov	rdx, qword ptr [rbp - 0xb0]
	imul	rdx, qword ptr [rbp - 0xb0]
	imul	rdx, qword ptr [rbp - 0xa8]
	sub	rax, rdx
	mov	qword ptr [rbp - 0xb0], rax
	mov	rax, qword ptr [rbp - 0xb0]
	shl	rax, 1
	mov	rdx, qword ptr [rbp - 0xb0]
	imul	rdx, qword ptr [rbp - 0xb0]
	imul	rdx, qword ptr [rbp - 0xa8]
	sub	rax, rdx
	mov	qword ptr [rbp - 0xb0], rax
	mov	rax, qword ptr [rbp - 0xb0]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_956
.label_956:
	jmp	.label_961
.label_961:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x48]
	call	mulredc
	mov	qword ptr [rbp - 0x20], rax
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 8]
	sub	rsi, qword ptr [rbp - 0x10]
	cmp	rdx, rsi
	setb	dil
	and	dil, 1
	movzx	eax, dil
	movsxd	rdx, eax
	sub	rcx, rdx
	mov	qword ptr [rbp - 0xb8], rcx
	mov	rcx, qword ptr [rbp - 8]
	and	rcx, qword ptr [rbp - 0xb8]
	add	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 8]
	sub	rdx, qword ptr [rbp - 0x10]
	sub	rcx, rdx
	mov	qword ptr [rbp - 0x20], rcx
	jmp	.label_965
.label_965:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x28]
	cmp	rdx, qword ptr [rbp - 0x20]
	setb	sil
	and	sil, 1
	movzx	eax, sil
	movsxd	rdx, eax
	sub	rcx, rdx
	mov	qword ptr [rbp - 0xc0], rcx
	mov	rcx, qword ptr [rbp - 8]
	and	rcx, qword ptr [rbp - 0xc0]
	add	rcx, qword ptr [rbp - 0x28]
	sub	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x40], rcx
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x48]
	call	mulredc
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x58]
	and	rax, 0x1f
	cmp	rax, 1
	jne	.label_973
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 8]
	call	gcd_odd
	cmp	rax, 1
	je	.label_977
	jmp	.label_978
	.section	.text
	.align	16
	#Procedure 0x40b8fd

	.globl factor_using_pollard_rho
	.type factor_using_pollard_rho, @function
factor_using_pollard_rho:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xf0
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x58], 1
	mov	qword ptr [rbp - 0x60], 1
	jmp	.label_989
.label_989:
	mov	eax, 1
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 8]
	jae	.label_982
	jmp	.label_987
.label_977:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x30], rax
.label_973:
	jmp	.label_971
.label_971:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, -1
	mov	qword ptr [rbp - 0x58], rax
	cmp	rax, 0
	jne	.label_961
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x60]
	shl	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	qword ptr [rbp - 0xc8], 0
.label_957:
	mov	rax, qword ptr [rbp - 0xc8]
	cmp	rax, qword ptr [rbp - 0x58]
	jae	.label_959
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x48]
	call	mulredc
	mov	qword ptr [rbp - 0x20], rax
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 8]
	sub	rsi, qword ptr [rbp - 0x10]
	cmp	rdx, rsi
	setb	dil
	and	dil, 1
	movzx	eax, dil
	movsxd	rdx, eax
	sub	rcx, rdx
	mov	qword ptr [rbp - 0xd0], rcx
	mov	rcx, qword ptr [rbp - 8]
	and	rcx, qword ptr [rbp - 0xd0]
	add	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 8]
	sub	rdx, qword ptr [rbp - 0x10]
	sub	rcx, rdx
	mov	qword ptr [rbp - 0x20], rcx
	jmp	.label_969
.label_969:
	mov	rax, qword ptr [rbp - 0xc8]
	add	rax, 1
	mov	qword ptr [rbp - 0xc8], rax
	jmp	.label_957
.label_987:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 0
	mov	qword ptr [rbp - 0x88], 1
	mov	qword ptr [rbp - 0x90], 0
	mov	qword ptr [rbp - 0x80], 0
	mov	dword ptr [rbp - 0x94], 0x40
.label_986:
	cmp	dword ptr [rbp - 0x94], 0
	jbe	.label_984
	jmp	.label_990
.label_990:
	mov	rax, qword ptr [rbp - 0x70]
	shl	rax, 0x3f
	mov	rcx, qword ptr [rbp - 0x78]
	shr	rcx, 1
	or	rax, rcx
	mov	qword ptr [rbp - 0x78], rax
	mov	rax, qword ptr [rbp - 0x70]
	shr	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	mov	rax, qword ptr [rbp - 0x80]
	shl	rax, 1
	mov	qword ptr [rbp - 0x80], rax
	mov	rax, qword ptr [rbp - 0x88]
	cmp	rax, qword ptr [rbp - 0x70]
	ja	.label_980
	mov	rax, qword ptr [rbp - 0x88]
	cmp	rax, qword ptr [rbp - 0x70]
	jne	.label_985
	mov	rax, qword ptr [rbp - 0x90]
	cmp	rax, qword ptr [rbp - 0x78]
	jb	.label_985
.label_980:
	mov	rax, qword ptr [rbp - 0x80]
	add	rax, 1
	mov	qword ptr [rbp - 0x80], rax
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x90]
	mov	rsi, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0xe8], rcx
	mov	qword ptr [rbp - 0xf0], rsi
	sub	rdx, qword ptr [rbp - 0xf0]
	sbb	rax, qword ptr [rbp - 0xe8]
	mov	qword ptr [rbp - 0x88], rax
	mov	qword ptr [rbp - 0x90], rdx
.label_985:
	jmp	.label_988
.label_988:
	mov	eax, dword ptr [rbp - 0x94]
	add	eax, -1
	mov	dword ptr [rbp - 0x94], eax
	jmp	.label_986
.label_968:
	movabs	rdi, OFFSET FLAT:label_966
	movabs	rsi, OFFSET FLAT:label_67
	mov	edx, 0x5c8
	movabs	rcx, OFFSET FLAT:label_967
	call	__assert_fail
.label_978:
	jmp	.label_958
.label_958:
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x48]
	call	mulredc
	mov	qword ptr [rbp - 0x30], rax
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 8]
	sub	rsi, qword ptr [rbp - 0x10]
	cmp	rdx, rsi
	setb	dil
	and	dil, 1
	movzx	eax, dil
	movsxd	rdx, eax
	sub	rcx, rdx
	mov	qword ptr [rbp - 0xd8], rcx
	mov	rcx, qword ptr [rbp - 8]
	and	rcx, qword ptr [rbp - 0xd8]
	add	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 8]
	sub	rdx, qword ptr [rbp - 0x10]
	sub	rcx, rdx
	mov	qword ptr [rbp - 0x30], rcx
	jmp	.label_976
.label_976:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x28]
	cmp	rdx, qword ptr [rbp - 0x30]
	setb	sil
	and	sil, 1
	movzx	eax, sil
	movsxd	rdx, eax
	sub	rcx, rdx
	mov	qword ptr [rbp - 0xe0], rcx
	mov	rcx, qword ptr [rbp - 8]
	and	rcx, qword ptr [rbp - 0xe0]
	add	rcx, qword ptr [rbp - 0x28]
	sub	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x40], rcx
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rbp - 8]
	call	gcd_odd
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x50], 1
	je	.label_958
	mov	rax, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rbp - 0x50]
	jne	.label_963
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	factor_using_pollard_rho
	jmp	.label_964
.label_963:
	mov	rax, qword ptr [rbp - 8]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 8], rax
	mov	rdi, qword ptr [rbp - 0x50]
	call	prime_p
	test	al, 1
	jne	.label_975
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	factor_using_pollard_rho
	jmp	.label_979
	.section	.text
	.align	16
	#Procedure 0x40bc80

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
	je	.label_991
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_994
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	je	.label_995
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_992
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_993
.label_995:
	mov	byte ptr [rbp - 5], 0
.label_993:
	jmp	.label_991
.label_991:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40bcf3
	.globl sub_40bcf3
	.type sub_40bcf3, @function
sub_40bcf3:

	nop	word ptr cs:[rax + rax]
.label_1017:
	mov	byte ptr [rbp - 0x111], 1
	mov	rax, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_996
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
	je	.label_1004
	mov	byte ptr [rbp - 0x111], 0
.label_1004:
	jmp	.label_996
.label_996:
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
	je	.label_1013
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
	je	.label_1003
	mov	byte ptr [rbp - 0x121], 0
.label_1003:
	jmp	.label_1013
.label_1013:
	test	byte ptr [rbp - 0x111], 1
	je	.label_1014
	test	byte ptr [rbp - 0x121], 1
	je	.label_1014
	mov	byte ptr [rbp - 0x19], 1
	jmp	.label_999
.label_1011:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1012
.label_1018:
	call	__ctype_get_mb_cur_max
	cmp	rax, 1
	jbe	.label_1017
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
	jae	.label_1007
	jmp	.label_1006
.label_1006:
	lea	rdi, [rbp - 0x68]
	call	mbuiter_multi_next
	xor	eax, eax
	mov	cl, al
	test	byte ptr [rbp - 0x48], 1
	mov	byte ptr [rbp - 0x122], cl
	je	.label_1002
	cmp	dword ptr [rbp - 0x44], 0
	sete	al
	mov	byte ptr [rbp - 0x122], al
.label_1002:
	mov	al, byte ptr [rbp - 0x122]
	xor	al, 0xff
	test	al, 1
	jne	.label_1024
	call	abort
.label_1024:
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
	jb	.label_1006
	test	byte ptr [rbp - 0x90], 1
	je	.label_1016
	mov	edi, dword ptr [rbp - 0x8c]
	call	iswalnum
	cmp	eax, 0
	je	.label_1016
	mov	byte ptr [rbp - 0x69], 0
.label_1016:
	jmp	.label_1007
.label_1007:
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
.label_1023:
	lea	rdi, [rbp - 0xe0]
	call	mbuiter_multi_next
	xor	eax, eax
	mov	cl, al
	test	byte ptr [rbp - 0xc0], 1
	mov	byte ptr [rbp - 0x13d], cl
	je	.label_997
	cmp	dword ptr [rbp - 0xbc], 0
	sete	al
	mov	byte ptr [rbp - 0x13d], al
.label_997:
	mov	al, byte ptr [rbp - 0x13d]
	xor	al, 0xff
	test	al, 1
	jne	.label_1001
	jmp	.label_1021
.label_1001:
	lea	rdi, [rbp - 0x68]
	call	mbuiter_multi_next
	xor	eax, eax
	mov	cl, al
	test	byte ptr [rbp - 0x48], 1
	mov	byte ptr [rbp - 0x13e], cl
	je	.label_1010
	cmp	dword ptr [rbp - 0x44], 0
	sete	al
	mov	byte ptr [rbp - 0x13e], al
.label_1010:
	mov	al, byte ptr [rbp - 0x13e]
	xor	al, 0xff
	test	al, 1
	jne	.label_1022
	call	abort
.label_1022:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x58], rax
	mov	byte ptr [rbp - 0x5c], 0
	mov	rax, qword ptr [rbp - 0xc8]
	add	rax, qword ptr [rbp - 0xd0]
	mov	qword ptr [rbp - 0xd0], rax
	mov	byte ptr [rbp - 0xd4], 0
	jmp	.label_1023
.label_1025:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
.label_1012:
	jmp	.label_1015
.label_1015:
	jmp	.label_1009
.label_999:
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
	#Procedure 0x40c05c
	.globl sub_40c05c
	.type sub_40c05c, @function
sub_40c05c:

	nop	dword ptr [rax]
.label_1019:
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
	je	.label_1008
	cmp	dword ptr [rbp - 0x44], 0
	sete	al
	mov	byte ptr [rbp - 0x149], al
.label_1008:
	mov	al, byte ptr [rbp - 0x149]
	xor	al, 0xff
	test	al, 1
	jne	.label_1011
	jmp	.label_999
.label_1021:
	lea	rdi, [rbp - 0x68]
	mov	byte ptr [rbp - 0x6a], 1
	call	mbuiter_multi_next
	xor	eax, eax
	mov	cl, al
	test	byte ptr [rbp - 0x48], 1
	mov	byte ptr [rbp - 0x13f], cl
	je	.label_1020
	cmp	dword ptr [rbp - 0x44], 0
	sete	al
	mov	byte ptr [rbp - 0x13f], al
.label_1020:
	mov	al, byte ptr [rbp - 0x13f]
	xor	al, 0xff
	test	al, 1
	jne	.label_998
	jmp	.label_1005
.label_998:
	mov	eax, 0x30
	mov	edx, eax
	lea	rcx, [rbp - 0x110]
	lea	rsi, [rbp - 0x68]
	add	rsi, 0x10
	mov	rdi, rcx
	call	memcpy
	test	byte ptr [rbp - 0x100], 1
	je	.label_1000
	mov	edi, dword ptr [rbp - 0xfc]
	call	iswalnum
	cmp	eax, 0
	je	.label_1000
	mov	byte ptr [rbp - 0x6a], 0
.label_1000:
	jmp	.label_1005
.label_1005:
	test	byte ptr [rbp - 0x69], 1
	je	.label_1019
	test	byte ptr [rbp - 0x6a], 1
	je	.label_1019
	mov	byte ptr [rbp - 0x19], 1
	jmp	.label_999
.label_1014:
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_1025
	jmp	.label_999
	.section	.text
	.align	16
	#Procedure 0x40c194

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
.label_1009:
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_999
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x18]
	call	mbsstr
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_1018
	jmp	.label_999
.label_1026:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x70], rax
.label_1031:
	cmp	qword ptr [rbp - 0x70], 0
	jbe	.label_1028
	mov	rax, qword ptr [rbp - 0x70]
	and	rax, 1
	cmp	rax, 0
	je	.label_1030
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	r8, qword ptr [rbp - 0x50]
	mov	r9, qword ptr [rbp - 0x58]
	mov	rax, qword ptr [rbp - 0x60]
	mov	r10, qword ptr [rbp - 0x28]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	call	mulredc2
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x38], rax
.label_1030:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	r8, qword ptr [rbp - 0x50]
	mov	r9, qword ptr [rbp - 0x58]
	mov	rax, qword ptr [rbp - 0x60]
	mov	r10, qword ptr [rbp - 0x28]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	call	mulredc2
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x70]
	shr	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_1031
.label_1028:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x40]
	add	rsp, 0x80
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c2bc
	.globl sub_40c2bc
	.type sub_40c2bc, @function
sub_40c2bc:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c2c6

	.globl powm2
	.type powm2, @function
powm2:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x80
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	qword ptr [rbp - 0x30], r9
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 0x50], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rbp - 0x48], rcx
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 0x60], rcx
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rbp - 0x58], rcx
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 0x40], rcx
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rbp - 0x38], rcx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 0x70], rcx
	mov	dword ptr [rbp - 0x64], 0x40
.label_1027:
	cmp	dword ptr [rbp - 0x64], 0
	jbe	.label_1026
	mov	rax, qword ptr [rbp - 0x70]
	and	rax, 1
	cmp	rax, 0
	je	.label_1029
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	r8, qword ptr [rbp - 0x50]
	mov	r9, qword ptr [rbp - 0x58]
	mov	rax, qword ptr [rbp - 0x60]
	mov	r10, qword ptr [rbp - 0x28]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	call	mulredc2
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x38], rax
.label_1029:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	r8, qword ptr [rbp - 0x50]
	mov	r9, qword ptr [rbp - 0x58]
	mov	rax, qword ptr [rbp - 0x60]
	mov	r10, qword ptr [rbp - 0x28]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	call	mulredc2
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x48], rax
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, -1
	mov	dword ptr [rbp - 0x64], eax
	mov	rcx, qword ptr [rbp - 0x70]
	shr	rcx, 1
	mov	qword ptr [rbp - 0x70], rcx
	jmp	.label_1027
.label_1035:
	call	__errno_location
	cmp	dword ptr [rax], 4
	jne	.label_1039
	jmp	.label_1036
.label_1037:
	jmp	.label_1033
.label_1033:
	jmp	.label_1034
.label_1034:
	jmp	.label_1036
.label_1032:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1038
	.section	.text
	.align	16
	#Procedure 0x40c41f

	.globl safe_write
	.type safe_write, @function
safe_write:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	dword ptr [rbp - 0xc], edi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
.label_1036:
	mov	edi, dword ptr [rbp - 0xc]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	call	write
	xor	edi, edi
	mov	edx, edi
	mov	qword ptr [rbp - 0x28], rax
	cmp	rdx, qword ptr [rbp - 0x28]
	jg	.label_1035
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1038
.label_1038:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c46b
	.globl sub_40c46b
	.type sub_40c46b, @function
sub_40c46b:

	nop	word ptr [rax + rax]
.label_1039:
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_1032
	mov	eax, 0x7ff00000
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x20]
	jae	.label_1032
	mov	qword ptr [rbp - 0x20], 0x7ff00000
	jmp	.label_1037
	.section	.text
	.align	16
	#Procedure 0x40c4a0

	.globl mp_factor_using_pollard_rho
	.type mp_factor_using_pollard_rho, @function
mp_factor_using_pollard_rho:
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 0xc8
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_1043
	movabs	rsi, OFFSET FLAT:label_1049
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x9c], eax
.label_1043:
	jmp	.label_1056
.label_1056:
	xor	eax, eax
	mov	edx, eax
	lea	rsi, [rbp - 0x80]
	lea	rdi, [rbp - 0x70]
	mov	al, 0
	call	__gmpz_inits
	mov	ecx, 2
	mov	esi, ecx
	lea	rdi, [rbp - 0x50]
	call	__gmpz_init_set_si
	mov	ecx, 2
	mov	esi, ecx
	lea	rdi, [rbp - 0x30]
	call	__gmpz_init_set_si
	mov	ecx, 2
	mov	esi, ecx
	lea	rdi, [rbp - 0x40]
	call	__gmpz_init_set_si
	mov	ecx, 1
	mov	esi, ecx
	lea	rdi, [rbp - 0x60]
	call	__gmpz_init_set_ui
	mov	qword ptr [rbp - 0x88], 1
	mov	qword ptr [rbp - 0x90], 1
.label_1041:
	mov	eax, 1
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x10]
	call	__gmpz_cmp_ui
	cmp	eax, 0
	je	.label_1051
	jmp	.label_1052
.label_1052:
	jmp	.label_1045
.label_1045:
	lea	rax, [rbp - 0x30]
	lea	rdi, [rbp - 0x70]
	mov	rsi, rax
	mov	rdx, rax
	call	__gmpz_mul
	lea	rsi, [rbp - 0x70]
	lea	rdi, [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x10]
	call	__gmpz_mod
	lea	rax, [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdi, rax
	mov	rsi, rax
	call	__gmpz_add_ui
	lea	rdx, [rbp - 0x30]
	lea	rsi, [rbp - 0x40]
	lea	rdi, [rbp - 0x70]
	call	__gmpz_sub
	lea	rdx, [rbp - 0x70]
	lea	rsi, [rbp - 0x60]
	lea	rdi, [rbp - 0x80]
	call	__gmpz_mul
	lea	rsi, [rbp - 0x80]
	lea	rdi, [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x10]
	call	__gmpz_mod
	mov	rax, qword ptr [rbp - 0x88]
	and	rax, 0x1f
	cmp	rax, 1
	jne	.label_1054
	lea	rsi, [rbp - 0x60]
	lea	rdi, [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x10]
	call	__gmpz_gcd
	mov	eax, 1
	mov	esi, eax
	lea	rdi, [rbp - 0x70]
	call	__gmpz_cmp_ui
	cmp	eax, 0
	je	.label_1042
	jmp	.label_1044
.label_1051:
	xor	eax, eax
	mov	ecx, eax
	lea	r9, [rbp - 0x50]
	lea	r8, [rbp - 0x30]
	lea	rdx, [rbp - 0x40]
	lea	rsi, [rbp - 0x70]
	lea	rdi, [rbp - 0x80]
	lea	r10, [rbp - 0x60]
	mov	qword ptr [rbp - 0xa8], rdi
	mov	rdi, r10
	mov	r10, qword ptr [rbp - 0xa8]
	mov	qword ptr [rbp - 0xb0], rsi
	mov	rsi, r10
	mov	r11, qword ptr [rbp - 0xb0]
	mov	qword ptr [rbp - 0xb8], rdx
	mov	rdx, r11
	mov	rbx, qword ptr [rbp - 0xb8]
	mov	qword ptr [rbp - 0xc0], rcx
	mov	rcx, rbx
	mov	qword ptr [rsp], 0
	mov	al, 0
	call	__gmpz_clears
	add	rsp, 0xc8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c69a
	.globl sub_40c69a
	.type sub_40c69a, @function
sub_40c69a:

	nop	word ptr cs:[rax + rax]
.label_1057:
	lea	rsi, [rbp - 0x70]
	mov	rdi, qword ptr [rbp - 0x20]
	call	mp_factor_insert
.label_1048:
	mov	rdi, qword ptr [rbp - 0x10]
	call	mp_prime_p
	test	al, 1
	jne	.label_1047
	jmp	.label_1060
.label_1047:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x10]
	call	mp_factor_insert
	jmp	.label_1051
.label_1044:
	jmp	.label_1046
.label_1046:
	lea	rax, [rbp - 0x50]
	lea	rdi, [rbp - 0x70]
	mov	rsi, rax
	mov	rdx, rax
	call	__gmpz_mul
	lea	rsi, [rbp - 0x70]
	lea	rdi, [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x10]
	call	__gmpz_mod
	lea	rax, [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdi, rax
	mov	rsi, rax
	call	__gmpz_add_ui
	lea	rdx, [rbp - 0x50]
	lea	rsi, [rbp - 0x40]
	lea	rdi, [rbp - 0x70]
	call	__gmpz_sub
	lea	rax, [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdi, rax
	mov	rsi, rax
	call	__gmpz_gcd
	mov	eax, 1
	mov	esi, eax
	lea	rdi, [rbp - 0x70]
	call	__gmpz_cmp_ui
	cmp	eax, 0
	je	.label_1046
	lea	rdx, [rbp - 0x70]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x10]
	call	__gmpz_divexact
	lea	rdi, [rbp - 0x70]
	call	mp_prime_p
	test	al, 1
	jne	.label_1057
	jmp	.label_1059
.label_1059:
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_1058
	movabs	rsi, OFFSET FLAT:label_1040
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xa0], eax
.label_1058:
	jmp	.label_1055
.label_1055:
	lea	rdi, [rbp - 0x70]
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsi, rax
	call	mp_factor_using_pollard_rho
	jmp	.label_1048
.label_1061:
	lea	rsi, [rbp - 0x30]
	lea	rdi, [rbp - 0x50]
	call	__gmpz_set
	jmp	.label_1052
.label_1060:
	lea	rax, [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdi, rax
	mov	rsi, rax
	call	__gmpz_mod
	lea	rax, [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdi, rax
	mov	rsi, rax
	call	__gmpz_mod
	lea	rax, [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdi, rax
	mov	rsi, rax
	call	__gmpz_mod
	jmp	.label_1041
.label_1042:
	lea	rsi, [rbp - 0x30]
	lea	rdi, [rbp - 0x50]
	call	__gmpz_set
.label_1054:
	jmp	.label_1053
.label_1053:
	mov	rax, qword ptr [rbp - 0x88]
	add	rax, -1
	mov	qword ptr [rbp - 0x88], rax
	cmp	rax, 0
	jne	.label_1045
	lea	rsi, [rbp - 0x30]
	lea	rdi, [rbp - 0x40]
	call	__gmpz_set
	mov	rsi, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x88], rsi
	mov	rsi, qword ptr [rbp - 0x90]
	shl	rsi, 1
	mov	qword ptr [rbp - 0x90], rsi
	mov	qword ptr [rbp - 0x98], 0
.label_1050:
	mov	rax, qword ptr [rbp - 0x98]
	cmp	rax, qword ptr [rbp - 0x88]
	jae	.label_1061
	lea	rax, [rbp - 0x30]
	lea	rdi, [rbp - 0x70]
	mov	rsi, rax
	mov	rdx, rax
	call	__gmpz_mul
	lea	rsi, [rbp - 0x70]
	lea	rdi, [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x10]
	call	__gmpz_mod
	lea	rax, [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdi, rax
	mov	rsi, rax
	call	__gmpz_add_ui
	mov	rax, qword ptr [rbp - 0x98]
	add	rax, 1
	mov	qword ptr [rbp - 0x98], rax
	jmp	.label_1050
	.section	.text
	.align	16
	#Procedure 0x40c8e0

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
	je	.label_1062
	xor	eax, eax
	mov	esi, eax
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 8]
	call	rpl_fseeko
	mov	dword ptr [rbp - 0xc], eax
.label_1062:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c91b
	.globl sub_40c91b
	.type sub_40c91b, @function
sub_40c91b:

	nop	dword ptr [rax + rax]
.label_1068:
	cmp	dword ptr [rbp - 0x2c], 0
	jl	.label_1063
	movsxd	rax, dword ptr [rbp - 0x2c]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rcx + rax*8]
	cmp	rax, qword ptr [rbp - 0x10]
	je	.label_1066
.label_1063:
	mov	eax, dword ptr [rbp - 0x18]
	sub	eax, 1
	mov	dword ptr [rbp - 0x30], eax
.label_1067:
	mov	eax, dword ptr [rbp - 0x30]
	cmp	eax, dword ptr [rbp - 0x2c]
	jle	.label_1065
	movsxd	rax, dword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rcx + rax*8]
	mov	edx, dword ptr [rbp - 0x30]
	add	edx, 1
	movsxd	rcx, edx
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rsi + rcx*8], rax
	movsxd	rax, dword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dil, byte ptr [rcx + rax]
	mov	edx, dword ptr [rbp - 0x30]
	add	edx, 1
	movsxd	rax, edx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	byte ptr [rcx + rax], dil
	mov	eax, dword ptr [rbp - 0x30]
	add	eax, -1
	mov	dword ptr [rbp - 0x30], eax
	jmp	.label_1067
.label_1066:
	mov	eax, dword ptr [rbp - 0x14]
	movsxd	rcx, dword ptr [rbp - 0x2c]
	mov	rdx, qword ptr [rbp - 0x28]
	movzx	esi, byte ptr [rdx + rcx]
	add	esi, eax
	mov	dil, sil
	mov	byte ptr [rdx + rcx], dil
.label_1064:
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c9b7
	.globl sub_40c9b7
	.type sub_40c9b7, @function
sub_40c9b7:

	nop	word ptr cs:[rax + rax]
.label_1065:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rbp - 0x2c]
	add	ecx, 1
	movsxd	rdx, ecx
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rsi + rdx*8], rax
	mov	ecx, dword ptr [rbp - 0x14]
	mov	dil, cl
	mov	ecx, dword ptr [rbp - 0x2c]
	add	ecx, 1
	movsxd	rax, ecx
	mov	rdx, qword ptr [rbp - 0x28]
	mov	byte ptr [rdx + rax], dil
	mov	ecx, dword ptr [rbp - 0x18]
	add	ecx, 1
	mov	dil, cl
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0xfa], dil
	jmp	.label_1064
.label_1069:
	jmp	.label_1070
.label_1070:
	mov	eax, dword ptr [rbp - 0x2c]
	add	eax, -1
	mov	dword ptr [rbp - 0x2c], eax
	jmp	.label_1071
	.section	.text
	.align	16
	#Procedure 0x40ca1a

	.globl factor_insert_multiplicity
	.type factor_insert_multiplicity, @function
factor_insert_multiplicity:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x14], edx
	mov	rsi, qword ptr [rbp - 8]
	movzx	edx, byte ptr [rsi + 0xfa]
	mov	dword ptr [rbp - 0x18], edx
	mov	rsi, qword ptr [rbp - 8]
	add	rsi, 0x10
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 8]
	add	rsi, 0xe0
	mov	qword ptr [rbp - 0x28], rsi
	mov	edx, dword ptr [rbp - 0x18]
	sub	edx, 1
	mov	dword ptr [rbp - 0x2c], edx
.label_1071:
	cmp	dword ptr [rbp - 0x2c], 0
	jl	.label_1068
	movsxd	rax, dword ptr [rbp - 0x2c]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rcx + rax*8]
	cmp	rax, qword ptr [rbp - 0x10]
	ja	.label_1069
	jmp	.label_1068
	.section	.text
	.align	16
	#Procedure 0x40ca80

	.globl init_tokenbuffer
	.type init_tokenbuffer, @function
init_tokenbuffer:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + 8], 0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40caa1
	.globl sub_40caa1
	.type sub_40caa1, @function
sub_40caa1:

	nop	word ptr cs:[rax + rax]
.label_1089:
	mov	rax, qword ptr [rbp - 0x30]
	shl	rax, 3
	mov	rdi, rax
	call	mmalloca
	mov	qword ptr [rbp - 0x78], rax
.label_1088:
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x70], rax
.label_1090:
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x38], rax
	cmp	qword ptr [rbp - 0x38], 0
	jne	.label_1074
	mov	byte ptr [rbp - 1], 0
	jmp	.label_1078
.label_1079:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x38]
	sub	rax, qword ptr [rdx + rcx*8]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_1082
.label_1075:
	jmp	.label_1072
.label_1072:
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_1076
.label_1077:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rax], 0
	mov	qword ptr [rbp - 0x58], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x68], rax
.label_1085:
	mov	rax, qword ptr [rbp - 0x68]
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_1073
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x18]
	movzx	edx, byte ptr [rcx + rax]
	mov	rax, qword ptr [rbp - 0x68]
	movzx	esi, byte ptr [rax]
	cmp	edx, esi
	jne	.label_1087
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x68]
	add	rax, 1
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x30]
	jne	.label_1081
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	jmp	.label_1073
.label_1080:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x68]
	add	rax, 1
	mov	qword ptr [rbp - 0x68], rax
.label_1083:
	jmp	.label_1084
.label_1084:
	jmp	.label_1085
.label_1074:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rax + 8], 1
	mov	qword ptr [rbp - 0x48], 0
	mov	qword ptr [rbp - 0x40], 2
.label_1076:
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_1077
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x18]
	mov	dl, byte ptr [rcx + rax]
	mov	byte ptr [rbp - 0x49], dl
.label_1082:
	movzx	eax, byte ptr [rbp - 0x49]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x18]
	movzx	esi, byte ptr [rdx + rcx]
	cmp	eax, esi
	jne	.label_1086
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x48]
	add	rcx, 1
	mov	qword ptr [rbp - 0x48], rcx
	sub	rax, rcx
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	qword ptr [rdx + rcx*8], rax
	jmp	.label_1075
.label_1081:
	jmp	.label_1084
.label_1073:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdi, rax
	call	freea
	mov	byte ptr [rbp - 1], 1
.label_1078:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	mov	rsp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40cc57
	.globl sub_40cc57
	.type sub_40cc57, @function
sub_40cc57:

	nop	word ptr cs:[rax + rax]
.label_1087:
	cmp	qword ptr [rbp - 0x58], 0
	jbe	.label_1080
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
	jmp	.label_1083
	.section	.text
	.align	16
	#Procedure 0x40cc9e

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
	jae	.label_1091
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x70], rcx
	jmp	.label_1090
.label_1086:
	cmp	qword ptr [rbp - 0x48], 0
	jne	.label_1079
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	qword ptr [rdx + rcx*8], rax
	jmp	.label_1075
.label_1091:
	mov	rax, qword ptr [rbp - 0x30]
	shl	rax, 3
	cmp	rax, 0xfa1
	jae	.label_1089
	mov	rax, qword ptr [rbp - 0x30]
	lea	rax, [rax*8 + 0x2e]
	and	rax, 0xfffffffffffffff0
	mov	rcx, rsp
	sub	rcx, rax
	mov	rsp, rcx
	add	rcx, 0x1f
	and	rcx, 0xffffffffffffffe0
	mov	qword ptr [rbp - 0x78], rcx
	jmp	.label_1088
	.section	.text
	.align	16
	#Procedure 0x40cd40

	.globl mp_factor_init
	.type mp_factor_init, @function
mp_factor_init:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + 8], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + 0x10], 0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40cd6d
	.globl sub_40cd6d
	.type sub_40cd6d, @function
sub_40cd6d:

	nop	dword ptr [rax]
.label_1097:
	cmp	qword ptr [rbp - 0x108], 0
	je	.label_1092
	mov	edi, 0x20
	call	lbuf_putc
	mov	rdi, qword ptr [rbp - 0x108]
	mov	rsi, qword ptr [rbp - 0x110]
	call	print_uintmaxes
.label_1092:
	mov	edi, 0xa
	call	lbuf_putc
	add	rsp, 0x120
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40cdae
	.globl sub_40cdae
	.type sub_40cdae, @function
sub_40cdae:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40cdb3

	.globl print_factors_single
	.type print_factors_single, @function
print_factors_single:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x120
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	print_uintmaxes
	mov	edi, 0x3a
	call	lbuf_putc
	lea	rdx, [rbp - 0x110]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	factor
	mov	dword ptr [rbp - 0x114], 0
.label_1095:
	mov	eax, dword ptr [rbp - 0x114]
	movzx	ecx, byte ptr [rbp - 0x16]
	cmp	eax, ecx
	jae	.label_1097
	mov	dword ptr [rbp - 0x118], 0
.label_1094:
	mov	eax, dword ptr [rbp - 0x118]
	mov	ecx, dword ptr [rbp - 0x114]
	mov	edx, ecx
	movzx	ecx, byte ptr [rbp + rdx - 0x30]
	cmp	eax, ecx
	jae	.label_1096
	mov	edi, 0x20
	call	lbuf_putc
	xor	edi, edi
	mov	eax, dword ptr [rbp - 0x114]
	mov	ecx, eax
	mov	rsi, qword ptr [rbp + rcx*8 - 0x100]
	call	print_uintmaxes
	mov	eax, dword ptr [rbp - 0x118]
	add	eax, 1
	mov	dword ptr [rbp - 0x118], eax
	jmp	.label_1094
.label_1096:
	jmp	.label_1093
.label_1093:
	mov	eax, dword ptr [rbp - 0x114]
	add	eax, 1
	mov	dword ptr [rbp - 0x114], eax
	jmp	.label_1095
	.section	.text
	.align	16
	#Procedure 0x40ce80

	.globl lbuf_flush
	.type lbuf_flush, @function
lbuf_flush:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	edi, 1
	mov	rax,  qword ptr [word ptr [label_168]]
	mov	rcx,  qword ptr [word ptr [lbuf]]
	sub	rax, rcx
	mov	qword ptr [rbp - 8], rax
	mov	rsi,  qword ptr [word ptr [lbuf]]
	mov	rdx, qword ptr [rbp - 8]
	call	full_write
	cmp	rax, qword ptr [rbp - 8]
	je	.label_1098
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_142
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xc], esi
	call	gettext
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:label_138
	mov	esi, dword ptr [rbp - 0xc]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_1098:
	mov	rax,  qword ptr [word ptr [lbuf]]
	mov	qword ptr [word ptr [label_168]],  rax
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40cf0a
	.globl sub_40cf0a
	.type sub_40cf0a, @function
sub_40cf0a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40cf10
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
	#Procedure 0x40cf41
	.globl sub_40cf41
	.type sub_40cf41, @function
sub_40cf41:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40cf50

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
	#Procedure 0x40cf86
	.globl sub_40cf86
	.type sub_40cf86, @function
sub_40cf86:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40cf90
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
	#Procedure 0x40cfaa
	.globl sub_40cfaa
	.type sub_40cfaa, @function
sub_40cfaa:

	nop	word ptr [rax + rax]
.label_1100:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1099
.label_1099:
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
	#Procedure 0x40d023
	.globl sub_40d023
	.type sub_40d023, @function
sub_40d023:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d031

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
	je	.label_1100
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1099
	.section	.text
	.align	16
	#Procedure 0x40d060

	.globl mulredc
	.type mulredc, @function
mulredc:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x60], rdx
	mov	rax, rcx
	mul	qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0x28], rdx
	mov	rax, qword ptr [rbp - 0x30]
	imul	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x58], rcx
	mul	qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x48], rax
	mov	qword ptr [rbp - 0x40], rdx
	mov	rax, qword ptr [rbp - 0x28]
	sub	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x40]
	jae	.label_1101
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x50], rax
.label_1101:
	mov	rax, qword ptr [rbp - 0x50]
	pop	rbp
	ret	
.label_1104:
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
	jmp	.label_1105
.label_1103:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_1105:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d151
	.globl sub_40d151
	.type sub_40d151, @function
sub_40d151:

	nop	
	.section	.text
	.align	16
	#Procedure 0x40d152
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
	je	.label_1103
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x10]
	call	mbsstr_trimmed_wordbounded
	test	al, 1
	jne	.label_1102
	jmp	.label_1104
.label_1102:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1105
	.section	.text
	.align	16
	#Procedure 0x40d1a0
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
	#Procedure 0x40d1ca
	.globl sub_40d1ca
	.type sub_40d1ca, @function
sub_40d1ca:

	nop	word ptr [rax + rax]
.label_1106:
	mov	byte ptr [rbp - 1], 0
.label_1109:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d1de
	.globl sub_40d1de
	.type sub_40d1de, @function
sub_40d1de:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d1e3
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
	jb	.label_1107
	jmp	.label_1108
.label_1108:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x20
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_1106
	jmp	.label_1107
.label_1107:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1109
	.section	.text
	.align	16
	#Procedure 0x40d220
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	je	.label_1110
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1111
.label_1110:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1111
.label_1111:
	mov	rax, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rax]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d25b
	.globl sub_40d25b
	.type sub_40d25b, @function
sub_40d25b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d260

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
	jne	.label_1112
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1116
.label_1112:
	jmp	.label_1113
.label_1113:
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
	jne	.label_1115
	jmp	.label_1114
.label_1115:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	cmp	eax, ecx
	je	.label_1113
.label_1114:
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_1116:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d311
	.globl sub_40d311
	.type sub_40d311, @function
sub_40d311:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d320

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
	jne	.label_1117
	call	abort
.label_1117:
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
	#Procedure 0x40d384
	.globl sub_40d384
	.type sub_40d384, @function
sub_40d384:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d390

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
	#Procedure 0x40d3bc
	.globl sub_40d3bc
	.type sub_40d3bc, @function
sub_40d3bc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40d3c0

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
	jae	.label_1118
	call	xalloc_die
.label_1118:
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
	#Procedure 0x40d410

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
	jne	.label_1119
	lea	rax, [rbp - 0x34]
	mov	qword ptr [rbp - 0x10], rax
.label_1119:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	call	mbrtowc
	mov	rcx, -2
	mov	qword ptr [rbp - 0x30], rax
	cmp	rcx, qword ptr [rbp - 0x30]
	ja	.label_1120
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1120
	xor	edi, edi
	call	hard_locale
	test	al, 1
	jne	.label_1120
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x35], cl
	movzx	edx, byte ptr [rbp - 0x35]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], edx
	mov	qword ptr [rbp - 8], 1
	jmp	.label_1121
.label_1120:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
.label_1121:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d4b1
	.globl sub_40d4b1
	.type sub_40d4b1, @function
sub_40d4b1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d4c0

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
	jb	.label_1122
	mov	rdi, qword ptr [rbp - 0x18]
	call	malloc
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1124
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
	jmp	.label_1123
.label_1124:
	jmp	.label_1122
.label_1122:
	mov	qword ptr [rbp - 8], 0
.label_1123:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d55a
	.globl sub_40d55a
	.type sub_40d55a, @function
sub_40d55a:

	nop	word ptr [rax + rax]
.label_1141:
	jmp	.label_1127
.label_1127:
	jmp	.label_1129
.label_1129:
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_1130
	movabs	rsi, OFFSET FLAT:label_1134
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x84], eax
.label_1130:
	jmp	.label_1126
.label_1126:
	mov	edx, 0xa
	lea	rdi, [rbp - 0x40]
	mov	rsi, qword ptr [rbp - 0x10]
	call	__gmpz_init_set_str
	movabs	rdi, OFFSET FLAT:label_1132
	lea	rsi, [rbp - 0x40]
	mov	dword ptr [rbp - 0x88], eax
	mov	al, 0
	call	__gmp_printf
	lea	rsi, [rbp - 0x58]
	lea	rdi, [rbp - 0x40]
	mov	dword ptr [rbp - 0x8c], eax
	call	mp_factor
	mov	dword ptr [rbp - 0x5c], 0
.label_1125:
	mov	eax, dword ptr [rbp - 0x5c]
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x48]
	jae	.label_1128
	mov	dword ptr [rbp - 0x60], 0
.label_1131:
	mov	eax, dword ptr [rbp - 0x60]
	mov	ecx, eax
	mov	eax, dword ptr [rbp - 0x5c]
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x50]
	cmp	rcx, qword ptr [rsi + rdx*8]
	jae	.label_1135
	movabs	rdi, OFFSET FLAT:label_1133
	mov	eax, dword ptr [rbp - 0x5c]
	mov	ecx, eax
	shl	rcx, 4
	add	rcx, qword ptr [rbp - 0x58]
	mov	rsi, rcx
	mov	al, 0
	call	__gmp_printf
	mov	dword ptr [rbp - 0x90], eax
	mov	eax, dword ptr [rbp - 0x60]
	add	eax, 1
	mov	dword ptr [rbp - 0x60], eax
	jmp	.label_1131
.label_1146:
	movabs	rdi, OFFSET FLAT:label_1138
	call	gettext
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x80], rax
	call	quote
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x80]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 1], 0
	jmp	.label_1143
.label_1128:
	lea	rdi, [rbp - 0x58]
	call	mp_factor_clear
	lea	rdi, [rbp - 0x40]
	call	__gmpz_clear
	mov	edi, 0xa
	call	putchar_unlocked
	mov	rdi,  qword ptr [word ptr [stdout]]
	mov	dword ptr [rbp - 0x94], eax
	call	fflush_unlocked
	mov	byte ptr [rbp - 1], 1
	mov	dword ptr [rbp - 0x98], eax
.label_1143:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0xa0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d6c9
	.globl sub_40d6c9
	.type sub_40d6c9, @function
sub_40d6c9:

	nop	word ptr cs:[rax + rax]
.label_1147:
	jmp	.label_1127
.label_1144:
	mov	rax, qword ptr [rbp - 0x18]
	shl	rax, 1
	shr	rax, 1
	cmp	rax, qword ptr [rbp - 0x18]
	jne	.label_1147
	jmp	.label_1142
.label_1142:
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_1145
	movabs	rsi, OFFSET FLAT:label_1139
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x74], eax
.label_1145:
	jmp	.label_1137
.label_1137:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	call	print_factors_single
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1143
.label_1135:
	jmp	.label_1136
.label_1136:
	mov	eax, dword ptr [rbp - 0x5c]
	add	eax, 1
	mov	dword ptr [rbp - 0x5c], eax
	jmp	.label_1125
	.section	.text
	.align	16
	#Procedure 0x40d750

	.globl print_factors
	.type print_factors, @function
print_factors:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xa0
	mov	qword ptr [rbp - 0x10], rdi
	lea	rax, [rbp - 0x18]
	lea	rsi, [rbp - 0x20]
	mov	qword ptr [rbp - 0x68], rdi
	mov	rdi, rax
	mov	rdx, qword ptr [rbp - 0x68]
	call	strto2uintmax
	mov	dword ptr [rbp - 0x24], eax
	mov	ecx, eax
	test	eax, eax
	mov	dword ptr [rbp - 0x6c], ecx
	je	.label_1144
	jmp	.label_1140
.label_1140:
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 1
	mov	dword ptr [rbp - 0x70], eax
	je	.label_1141
	jmp	.label_1146
.label_1160:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x40], rax
.label_1151:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x40], rcx
	movsx	edx, byte ptr [rax]
	mov	dword ptr [rbp - 0x44], edx
	cmp	dword ptr [rbp - 0x44], 0
	jne	.label_1157
	jmp	.label_1149
.label_1152:
	mov	dword ptr [rbp - 0x34], 0
	jmp	.label_1151
.label_1159:
	movabs	rax, 0x1999999999999999
	mov	ecx, dword ptr [rbp - 0x48]
	sub	ecx, 0x30
	mov	dword ptr [rbp - 0x48], ecx
	cmp	qword ptr [rbp - 0x28], rax
	seta	dl
	and	dl, 1
	movzx	ecx, dl
	movsxd	rax, ecx
	cmp	rax, 0
	je	.label_1155
	mov	dword ptr [rbp - 0x34], 1
	jmp	.label_1148
.label_1153:
	jmp	.label_1156
	.section	.text
	.align	16
	#Procedure 0x40d816

	.globl strto2uintmax
	.type strto2uintmax, @function
strto2uintmax:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x28], 0
	mov	qword ptr [rbp - 0x30], 0
	mov	dword ptr [rbp - 0x34], 4
.label_1156:
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x35], cl
	movsx	edx, byte ptr [rbp - 0x35]
	cmp	edx, 0x20
	jne	.label_1161
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1153
.label_1149:
	jmp	.label_1150
.label_1150:
	cmp	dword ptr [rbp - 0x34], 0
	jne	.label_1148
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	movsx	edx, byte ptr [rax]
	mov	dword ptr [rbp - 0x48], edx
	cmp	dword ptr [rbp - 0x48], 0
	jne	.label_1159
	jmp	.label_1148
.label_1155:
	imul	rax, qword ptr [rbp - 0x28], 0xa
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x30]
	shr	rax, 0x3d
	mov	rcx, qword ptr [rbp - 0x30]
	shr	rcx, 0x3f
	add	rax, rcx
	mov	edx, eax
	mov	dword ptr [rbp - 0x1c], edx
	imul	rax, qword ptr [rbp - 0x30], 0xa
	mov	rcx, qword ptr [rbp - 0x30]
	shl	rcx, 1
	cmp	rax, rcx
	setb	sil
	and	sil, 1
	movzx	edx, sil
	add	edx, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 0x1c], edx
	imul	rax, qword ptr [rbp - 0x30], 0xa
	mov	qword ptr [rbp - 0x30], rax
	mov	edx, dword ptr [rbp - 0x48]
	mov	eax, edx
	add	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	edx, dword ptr [rbp - 0x48]
	mov	ecx, edx
	cmp	rax, rcx
	setb	sil
	and	sil, 1
	movzx	edx, sil
	add	edx, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 0x1c], edx
	mov	edx, dword ptr [rbp - 0x1c]
	mov	eax, edx
	add	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	edx, dword ptr [rbp - 0x1c]
	mov	ecx, edx
	cmp	rax, rcx
	setb	sil
	and	sil, 1
	movzx	edx, sil
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_1154
	mov	dword ptr [rbp - 0x34], 1
	jmp	.label_1148
.label_1154:
	jmp	.label_1150
.label_1148:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	eax, dword ptr [rbp - 0x34]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d96c
	.globl sub_40d96c
	.type sub_40d96c, @function
sub_40d96c:

	nop	dword ptr [rax]
.label_1161:
	movsx	eax, byte ptr [rbp - 0x35]
	cmp	eax, 0x2b
	jne	.label_1158
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1160
.label_1157:
	mov	eax, dword ptr [rbp - 0x44]
	sub	eax, 0x30
	cmp	eax, 9
	setbe	cl
	xor	cl, 0xff
	and	cl, 1
	movzx	eax, cl
	movsxd	rdx, eax
	cmp	rdx, 0
	je	.label_1152
	mov	dword ptr [rbp - 0x34], 4
	jmp	.label_1149
.label_1158:
	jmp	.label_1160
.label_1177:
	movabs	rax, OFFSET FLAT:primes_dtab
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rcx, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x50], rcx
	mov	rcx, qword ptr [rbp - 0x50]
	mov	edx, dword ptr [rbp - 0x34]
	mov	esi, edx
	shl	rsi, 4
	mov	rdi, rax
	add	rdi, rsi
	imul	rcx, qword ptr [rdi]
	mov	qword ptr [rbp - 0x40], rcx
	mov	rcx, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rbp - 0x34]
	mov	esi, edx
	shl	rsi, 4
	add	rax, rsi
	cmp	rcx, qword ptr [rax + 8]
	seta	r8b
	and	r8b, 1
	movzx	edx, r8b
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_1193
	jmp	.label_1180
	.section	.text
	.align	16
	#Procedure 0x40da23

	.globl factor_using_division
	.type factor_using_division, @function
factor_using_division:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x90
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	rcx, qword ptr [rbp - 0x18]
	and	rcx, 1
	cmp	rcx, 0
	jne	.label_1184
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_1203
	jmp	.label_1208
.label_1208:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x78], rax
	bsf	rcx, qword ptr [rbp - 0x78]
	mov	dword ptr [rbp - 0x24], ecx
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rbp - 0x24]
	shr	rax, cl
	mov	qword ptr [rbp - 0x18], rax
	mov	qword ptr [rbp - 0x10], 0
	mov	edx, dword ptr [rbp - 0x24]
	add	edx, 0x40
	mov	dword ptr [rbp - 0x24], edx
	jmp	.label_1209
.label_1166:
	mov	ecx, 1
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x18], rax
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	edx, dword ptr [rbp - 0x34]
	add	edx, 1
	call	factor_insert_refind
	jmp	.label_1164
.label_1214:
	mov	ecx, 6
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x18], rax
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	edx, dword ptr [rbp - 0x34]
	add	edx, 1
	call	factor_insert_refind
	jmp	.label_1198
.label_1193:
	mov	edx, 1
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x18], rax
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x30]
	call	factor_insert_multiplicity
	jmp	.label_1162
.label_1183:
	mov	ecx, 7
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x18], rax
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	edx, dword ptr [rbp - 0x34]
	add	edx, 1
	call	factor_insert_refind
	jmp	.label_1195
.label_1180:
	mov	eax, dword ptr [rbp - 0x34]
	add	eax, 1
	mov	eax, eax
	mov	ecx, eax
	movzx	eax,  byte ptr [byte ptr [+ (rcx * 1) + primes_diff]]
	mov	ecx, eax
	add	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x30], rcx
	mov	eax, dword ptr [rbp - 0x34]
	add	eax, 1
	mov	dword ptr [rbp - 0x34], eax
	jmp	.label_1186
.label_1181:
	jmp	.label_1205
.label_1205:
	mov	eax, dword ptr [rbp - 0x34]
	add	eax, 8
	mov	dword ptr [rbp - 0x34], eax
	jmp	.label_1178
.label_1179:
	mov	ecx, 2
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x18], rax
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	edx, dword ptr [rbp - 0x34]
	add	edx, 1
	call	factor_insert_refind
	jmp	.label_1176
.label_1189:
	jmp	.label_1170
.label_1170:
	jmp	.label_1174
.label_1174:
	jmp	.label_1176
.label_1176:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x68]
	imul	rax, qword ptr [rcx + 0x20]
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x68]
	cmp	rax, qword ptr [rcx + 0x28]
	seta	dl
	and	dl, 1
	movzx	esi, dl
	movsxd	rax, esi
	cmp	rax, 0
	je	.label_1179
	jmp	.label_1201
.label_1213:
	mov	ecx, 5
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x18], rax
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	edx, dword ptr [rbp - 0x34]
	add	edx, 1
	call	factor_insert_refind
	jmp	.label_1212
.label_1163:
	jmp	.label_1216
.label_1216:
	jmp	.label_1217
.label_1217:
	jmp	.label_1164
.label_1164:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x68]
	imul	rax, qword ptr [rcx + 0x10]
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x68]
	cmp	rax, qword ptr [rcx + 0x18]
	seta	dl
	and	dl, 1
	movzx	esi, dl
	movsxd	rax, esi
	cmp	rax, 0
	je	.label_1166
	jmp	.label_1189
.label_1182:
	jmp	.label_1192
.label_1192:
	jmp	.label_1196
.label_1196:
	jmp	.label_1198
.label_1198:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x68]
	imul	rax, qword ptr [rcx + 0x60]
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x68]
	cmp	rax, qword ptr [rcx + 0x68]
	seta	dl
	and	dl, 1
	movzx	esi, dl
	movsxd	rax, esi
	cmp	rax, 0
	je	.label_1214
	jmp	.label_1167
.label_1188:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x90
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40dc93
	.globl sub_40dc93
	.type sub_40dc93, @function
sub_40dc93:

	nop	dword ptr [rax]
.label_1202:
	xor	ecx, ecx
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x18], rax
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	edx, dword ptr [rbp - 0x34]
	add	edx, 1
	call	factor_insert_refind
	jmp	.label_1187
.label_1197:
	jmp	.label_1191
.label_1191:
	jmp	.label_1194
.label_1194:
	jmp	.label_1172
.label_1172:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x68]
	imul	rax, qword ptr [rcx + 0x40]
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x68]
	cmp	rax, qword ptr [rcx + 0x48]
	seta	dl
	and	dl, 1
	movzx	esi, dl
	movsxd	rax, esi
	cmp	rax, 0
	je	.label_1199
	jmp	.label_1218
.label_1171:
	cmp	qword ptr [rbp - 8], 0
	je	.label_1165
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx], rax
.label_1165:
	jmp	.label_1178
.label_1178:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	cmp	rcx, 0x29c
	jae	.label_1188
	movabs	rax, OFFSET FLAT:primes_dtab
	mov	ecx, dword ptr [rbp - 0x34]
	mov	edx, ecx
	shl	rdx, 4
	add	rax, rdx
	mov	qword ptr [rbp - 0x68], rax
	jmp	.label_1187
.label_1187:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x68]
	imul	rax, qword ptr [rcx]
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x68]
	cmp	rax, qword ptr [rcx + 8]
	seta	dl
	and	dl, 1
	movzx	esi, dl
	movsxd	rax, esi
	cmp	rax, 0
	je	.label_1202
	jmp	.label_1163
.label_1201:
	jmp	.label_1185
.label_1185:
	jmp	.label_1169
.label_1169:
	jmp	.label_1173
.label_1173:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x68]
	imul	rax, qword ptr [rcx + 0x30]
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x68]
	cmp	rax, qword ptr [rcx + 0x38]
	seta	dl
	and	dl, 1
	movzx	esi, dl
	movsxd	rax, esi
	cmp	rax, 0
	je	.label_1175
	jmp	.label_1197
.label_1203:
	jmp	.label_1200
.label_1200:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x70], rax
	bsf	rcx, qword ptr [rbp - 0x70]
	mov	dword ptr [rbp - 0x24], ecx
	jmp	.label_1204
.label_1204:
	mov	eax, 0x40
	mov	rcx, qword ptr [rbp - 0x10]
	sub	eax, dword ptr [rbp - 0x24]
	mov	eax, eax
	mov	edx, eax
	mov	qword ptr [rbp - 0x88], rcx
	mov	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x88]
	shl	rdx, cl
	mov	rsi, qword ptr [rbp - 0x18]
	mov	eax, dword ptr [rbp - 0x24]
	mov	ecx, eax
	shr	rsi, cl
	or	rdx, rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rbp - 0x24]
	mov	ecx, eax
	shr	rdx, cl
	mov	qword ptr [rbp - 0x10], rdx
	jmp	.label_1209
.label_1209:
	mov	eax, 2
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x20]
	mov	edx, dword ptr [rbp - 0x24]
	call	factor_insert_multiplicity
.label_1184:
	mov	qword ptr [rbp - 0x30], 3
	mov	dword ptr [rbp - 0x34], 0
.label_1186:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x10], 0
	mov	byte ptr [rbp - 0x89], cl
	jbe	.label_1206
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	cmp	rcx, 0x29c
	setb	dl
	mov	byte ptr [rbp - 0x89], dl
.label_1206:
	mov	al, byte ptr [rbp - 0x89]
	test	al, 1
	jne	.label_1219
	jmp	.label_1171
.label_1219:
	jmp	.label_1162
.label_1162:
	movabs	rax, OFFSET FLAT:primes_dtab
	mov	rcx, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x34]
	mov	esi, edx
	shl	rsi, 4
	add	rax, rsi
	imul	rcx, qword ptr [rax]
	mov	qword ptr [rbp - 0x48], rcx
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x80], rcx
	mul	qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x58], rax
	mov	qword ptr [rbp - 0x50], rdx
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x10]
	jbe	.label_1177
	jmp	.label_1180
.label_1167:
	jmp	.label_1207
.label_1207:
	jmp	.label_1215
.label_1215:
	jmp	.label_1195
.label_1195:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x68]
	imul	rax, qword ptr [rcx + 0x70]
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x68]
	cmp	rax, qword ptr [rcx + 0x78]
	seta	dl
	and	dl, 1
	movzx	esi, dl
	movsxd	rax, esi
	cmp	rax, 0
	je	.label_1183
	jmp	.label_1211
.label_1211:
	jmp	.label_1168
.label_1168:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	movzx	eax,  byte ptr [byte ptr [+ (rcx * 1) + primes_diff8]]
	mov	ecx, eax
	add	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x30], rcx
	mov	rcx, qword ptr [rbp - 0x30]
	imul	rcx, qword ptr [rbp - 0x30]
	cmp	rcx, qword ptr [rbp - 0x18]
	jbe	.label_1181
	jmp	.label_1188
.label_1218:
	jmp	.label_1190
.label_1190:
	jmp	.label_1210
.label_1210:
	jmp	.label_1212
.label_1212:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x68]
	imul	rax, qword ptr [rcx + 0x50]
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x68]
	cmp	rax, qword ptr [rcx + 0x58]
	seta	dl
	and	dl, 1
	movzx	esi, dl
	movsxd	rax, esi
	cmp	rax, 0
	je	.label_1213
	jmp	.label_1182
.label_1175:
	mov	ecx, 3
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x18], rax
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	edx, dword ptr [rbp - 0x34]
	add	edx, 1
	call	factor_insert_refind
	jmp	.label_1173
.label_1199:
	mov	ecx, 4
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x18], rax
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	edx, dword ptr [rbp - 0x34]
	add	edx, 1
	call	factor_insert_refind
	jmp	.label_1172
.label_1220:
	test	byte ptr [byte ptr [flag_prove_primality]],  1
	je	.label_1230
	lea	rsi, [rbp - 0x50]
	lea	rdi, [rbp - 0x60]
	call	__gmpz_set
	lea	rsi, [rbp - 0x78]
	lea	rdi, [rbp - 0x60]
	call	mp_factor
.label_1230:
	mov	dword ptr [rbp - 0x84], 0
.label_1231:
	mov	eax, dword ptr [rbp - 0x84]
	mov	ecx, eax
	cmp	rcx, 0x29c
	jae	.label_1229
	test	byte ptr [byte ptr [flag_prove_primality]],  1
	je	.label_1234
	mov	byte ptr [rbp - 0x11], 1
	mov	qword ptr [rbp - 0x90], 0
.label_1232:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x90]
	cmp	rdx, qword ptr [rbp - 0x68]
	mov	byte ptr [rbp - 0x91], cl
	jae	.label_1226
	mov	al, byte ptr [rbp - 0x11]
	mov	byte ptr [rbp - 0x91], al
.label_1226:
	mov	al, byte ptr [rbp - 0x91]
	test	al, 1
	jne	.label_1235
	jmp	.label_1221
.label_1235:
	lea	rsi, [rbp - 0x50]
	lea	rdi, [rbp - 0x60]
	mov	rax, qword ptr [rbp - 0x90]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x78]
	mov	rdx, rax
	call	__gmpz_divexact
	lea	rax, [rbp - 0x60]
	lea	rsi, [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, rax
	mov	rdx, rax
	call	__gmpz_powm
	mov	r8d, 1
	mov	esi, r8d
	lea	rdi, [rbp - 0x60]
	call	__gmpz_cmp_ui
	cmp	eax, 0
	setne	r9b
	and	r9b, 1
	mov	byte ptr [rbp - 0x11], r9b
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_1232
.label_1229:
	movabs	rdi, OFFSET FLAT:label_494
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	call	abort
.label_1223:
	test	byte ptr [byte ptr [flag_prove_primality]],  1
	je	.label_1233
	lea	rdi, [rbp - 0x78]
	call	mp_factor_clear
.label_1233:
	jmp	.label_1222
.label_1222:
	xor	eax, eax
	mov	r8d, eax
	lea	rcx, [rbp - 0x60]
	lea	rdx, [rbp - 0x50]
	lea	rsi, [rbp - 0x40]
	lea	rdi, [rbp - 0x30]
	mov	al, 0
	call	__gmpz_clears
	mov	al, byte ptr [rbp - 0x11]
	and	al, 1
	mov	byte ptr [rbp - 1], al
.label_1237:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0xa0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e16e
	.globl sub_40e16e
	.type sub_40e16e, @function
sub_40e16e:

	nop	word ptr cs:[rax + rax]
.label_1238:
	xor	eax, eax
	mov	r8d, eax
	lea	rcx, [rbp - 0x60]
	lea	rdx, [rbp - 0x50]
	lea	rsi, [rbp - 0x40]
	lea	rdi, [rbp - 0x30]
	mov	al, 0
	call	__gmpz_inits
	mov	r9d, 1
	mov	edx, r9d
	lea	rdi, [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0x10]
	call	__gmpz_sub_ui
	xor	r9d, r9d
	mov	esi, r9d
	lea	rdi, [rbp - 0x50]
	call	__gmpz_scan1
	lea	rsi, [rbp - 0x50]
	lea	rdi, [rbp - 0x30]
	mov	qword ptr [rbp - 0x80], rax
	mov	rdx, qword ptr [rbp - 0x80]
	call	__gmpz_tdiv_q_2exp
	mov	r9d, 2
	mov	esi, r9d
	lea	rdi, [rbp - 0x40]
	call	__gmpz_set_ui
	lea	r8, [rbp - 0x30]
	lea	rcx, [rbp - 0x60]
	lea	rdx, [rbp - 0x40]
	lea	rsi, [rbp - 0x50]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	r9, qword ptr [rbp - 0x80]
	call	mp_millerrabin
	test	al, 1
	jne	.label_1220
	mov	byte ptr [rbp - 0x11], 0
	jmp	.label_1222
	.section	.text
	.align	16
	#Procedure 0x40e212

	.globl mp_prime_p
	.type mp_prime_p, @function
mp_prime_p:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xa0
	mov	eax, 1
	mov	esi, eax
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	call	__gmpz_cmp_ui
	cmp	eax, 0
	jg	.label_1236
	mov	byte ptr [rbp - 1], 0
	jmp	.label_1237
.label_1228:
	jmp	.label_1225
.label_1225:
	mov	eax, dword ptr [rbp - 0x84]
	add	eax, 1
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_1231
.label_1236:
	mov	eax, 0x17ded79
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x10]
	call	__gmpz_cmp_ui
	cmp	eax, 0
	jge	.label_1238
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1237
.label_1234:
	cmp	dword ptr [rbp - 0x84], 0x18
	sete	al
	and	al, 1
	mov	byte ptr [rbp - 0x11], al
.label_1227:
	test	byte ptr [rbp - 0x11], 1
	je	.label_1224
	jmp	.label_1223
.label_1221:
	jmp	.label_1227
.label_1224:
	lea	rax, [rbp - 0x40]
	mov	ecx, dword ptr [rbp - 0x84]
	mov	edx, ecx
	movzx	ecx,  byte ptr [byte ptr [+ (rdx * 1) + primes_diff]]
	mov	edx, ecx
	mov	rdi, rax
	mov	rsi, rax
	call	__gmpz_add_ui
	lea	r8, [rbp - 0x30]
	lea	rcx, [rbp - 0x60]
	lea	rdx, [rbp - 0x40]
	lea	rsi, [rbp - 0x50]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	r9, qword ptr [rbp - 0x80]
	call	mp_millerrabin
	test	al, 1
	jne	.label_1228
	mov	byte ptr [rbp - 0x11], 0
	jmp	.label_1223
	.section	.text
	.align	16
	#Procedure 0x40e2f0

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
	ja	.label_1239
	jmp	.label_1241
.label_1241:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x27d8
	add	eax, 0x2001a
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1240
.label_1239:
	jmp	.label_1240
.label_1240:
	mov	edi, dword ptr [rbp - 4]
	call	nl_langinfo
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e33a
	.globl sub_40e33a
	.type sub_40e33a, @function
sub_40e33a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e340

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
	jae	.label_1242
	call	xalloc_die
.label_1242:
	mov	rax, qword ptr [rbp - 8]
	imul	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	xmalloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e388
	.globl sub_40e388
	.type sub_40e388, @function
sub_40e388:

	nop	dword ptr [rax + rax]
.label_1244:
	mov	rax, qword ptr [rbp - 8]
	and	rax, 0x10
	cmp	rax, 0
	je	.label_1243
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
.label_1243:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e3ce
	.globl sub_40e3ce
	.type sub_40e3ce, @function
sub_40e3ce:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e3dd

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
	je	.label_1244
	call	abort
.label_1245:
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 8]
	add	rcx, 0xc
	mov	rdi, rcx
	call	memset
.label_1246:
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
	#Procedure 0x40e44b
	.globl sub_40e44b
	.type sub_40e44b, @function
sub_40e44b:

	nop	
	.section	.text
	.align	16
	#Procedure 0x40e44d
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
	jne	.label_1247
	jmp	.label_1245
.label_1247:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0xc]
	mov	qword ptr [rax + 0xc], rcx
	jmp	.label_1246
	.section	.text
	.align	16
	#Procedure 0x40e4a0
	.globl c_isblank
	.type c_isblank, @function
c_isblank:

	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0x20
	mov	byte ptr [rbp - 5], al
	je	.label_1248
	cmp	dword ptr [rbp - 4], 9
	sete	al
	mov	byte ptr [rbp - 5], al
.label_1248:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e4ca
	.globl sub_40e4ca
	.type sub_40e4ca, @function
sub_40e4ca:

	nop	word ptr [rax + rax]
.label_1252:
	mov	rax, qword ptr [rbp - 0x10]
	shr	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_1249
	mov	rax, qword ptr [rbp - 0x10]
	shl	rax, 1
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1250
.label_1255:
	mov	rax, qword ptr [rbp - 0x18]
	shr	rax, 1
	mov	qword ptr [rbp - 0x18], rax
.label_1253:
	jmp	.label_1251
.label_1251:
	mov	rax, qword ptr [rbp - 0x10]
	and	rax, 1
	cmp	rax, 0
	jne	.label_1252
	mov	rax, qword ptr [rbp - 0x10]
	shr	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1251
	.section	.text
	.align	16
	#Procedure 0x40e53c

	.globl gcd_odd
	.type gcd_odd, @function
gcd_odd:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	and	rsi, 1
	cmp	rsi, 0
	jne	.label_1254
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x10], rax
.label_1254:
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_1255
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1250
.label_1249:
	mov	rax, qword ptr [rbp - 0x28]
	sar	rax, 0x3f
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x30]
	and	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x28]
	xor	rax, qword ptr [rbp - 0x30]
	sub	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1253
.label_1250:
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e5c1
	.globl sub_40e5c1
	.type sub_40e5c1, @function
sub_40e5c1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e5d0
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
	#Procedure 0x40e60a
	.globl sub_40e60a
	.type sub_40e60a, @function
sub_40e60a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e610
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	sub	edi, 0x7f
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1256
	jmp	.label_1257
.label_1257:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1258
.label_1256:
	mov	byte ptr [rbp - 1], 0
.label_1258:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e63f
	.globl sub_40e63f
	.type sub_40e63f, @function
sub_40e63f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x40e640

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
	je	.label_1259
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
.label_1259:
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
	#Procedure 0x40e7a4
	.globl sub_40e7a4
	.type sub_40e7a4, @function
sub_40e7a4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e7b0
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_1260
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_1260:
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
	#Procedure 0x40e7ed
	.globl sub_40e7ed
	.type sub_40e7ed, @function
sub_40e7ed:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40e7f0

	.globl mp_factor_insert
	.type mp_factor_insert, @function
mp_factor_insert:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 0x10]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 8]
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	sub	rsi, 1
	mov	qword ptr [rbp - 0x30], rsi
.label_1269:
	cmp	qword ptr [rbp - 0x30], 0
	jl	.label_1266
	mov	rax, qword ptr [rbp - 0x30]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	__gmpz_cmp
	cmp	eax, 0
	jg	.label_1267
	jmp	.label_1266
.label_1263:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rcx + rax*8]
	add	rdx, 1
	mov	qword ptr [rcx + rax*8], rdx
.label_1262:
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e87a
	.globl sub_40e87a
	.type sub_40e87a, @function
sub_40e87a:

	nop	word ptr cs:[rax + rax]
.label_1265:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	__gmpz_set
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	qword ptr [rsi + rax*8 + 8], 1
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rsi], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rsi + 8], rax
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rsi + 0x10], rax
	jmp	.label_1262
.label_1266:
	cmp	qword ptr [rbp - 0x30], 0
	jl	.label_1261
	mov	rax, qword ptr [rbp - 0x30]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	__gmpz_cmp
	cmp	eax, 0
	je	.label_1263
.label_1261:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, 1
	shl	rcx, 4
	mov	rdi, rax
	mov	rsi, rcx
	call	xrealloc
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, 1
	shl	rcx, 3
	mov	rdi, rax
	mov	rsi, rcx
	call	xrealloc
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x18]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x20]
	mov	rdi, rax
	call	__gmpz_init
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 1
	mov	qword ptr [rbp - 0x38], rax
.label_1268:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x30]
	jle	.label_1265
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x38]
	shl	rcx, 4
	add	rcx, qword ptr [rbp - 0x20]
	mov	rdi, rax
	mov	rsi, rcx
	call	__gmpz_set
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	qword ptr [rsi + rcx*8 + 8], rax
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, -1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1268
.label_1267:
	jmp	.label_1264
.label_1264:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, -1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1269
.label_1277:
	jmp	.label_1281
.label_1287:
	movabs	rdi, OFFSET FLAT:label_1285
	movabs	rsi, OFFSET FLAT:label_67
	mov	edx, 0x1e3
	movabs	rcx, OFFSET FLAT:label_1286
	call	__assert_fail
.label_1293:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x28]
	ja	.label_1272
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x28]
	jne	.label_1278
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x30]
	jbe	.label_1278
.label_1272:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x48], rcx
	mov	qword ptr [rbp - 0x50], rsi
	sub	rdx, qword ptr [rbp - 0x50]
	sbb	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x18], rax
	mov	qword ptr [rbp - 0x20], rdx
.label_1271:
	jmp	.label_1280
.label_1280:
	mov	rax, qword ptr [rbp - 0x18]
	shl	rax, 0x3f
	mov	rcx, qword ptr [rbp - 0x20]
	shr	rcx, 1
	or	rax, rcx
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x18]
	shr	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1284
.label_1284:
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 1
	cmp	rax, 0
	je	.label_1271
	jmp	.label_1273
.label_1278:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x18]
	ja	.label_1274
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x18]
	jne	.label_1277
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x20]
	jbe	.label_1277
.label_1274:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x38], rcx
	mov	qword ptr [rbp - 0x40], rsi
	sub	rdx, qword ptr [rbp - 0x40]
	sbb	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x28], rax
	mov	qword ptr [rbp - 0x30], rdx
.label_1282:
	jmp	.label_1290
.label_1290:
	mov	rax, qword ptr [rbp - 0x28]
	shl	rax, 0x3f
	mov	rcx, qword ptr [rbp - 0x30]
	shr	rcx, 1
	or	rax, rcx
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x28]
	shr	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1279
.label_1279:
	mov	rax, qword ptr [rbp - 0x30]
	and	rax, 1
	cmp	rax, 0
	je	.label_1282
	jmp	.label_1289
.label_1275:
	mov	rax, qword ptr [rbp - 0x20]
	or	rax, qword ptr [rbp - 0x18]
	cmp	rax, 0
	jne	.label_1291
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1270
.label_1291:
	jmp	.label_1283
.label_1283:
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 1
	cmp	rax, 0
	jne	.label_1288
	jmp	.label_1292
.label_1292:
	mov	rax, qword ptr [rbp - 0x18]
	shl	rax, 0x3f
	mov	rcx, qword ptr [rbp - 0x20]
	shr	rcx, 1
	or	rax, rcx
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x18]
	shr	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1283
	.section	.text
	.align	16
	#Procedure 0x40eba7

	.globl gcd2_odd
	.type gcd2_odd, @function
gcd2_odd:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	rcx, qword ptr [rbp - 0x30]
	and	rcx, 1
	cmp	rcx, 0
	je	.label_1287
	jmp	.label_1275
.label_1288:
	jmp	.label_1276
.label_1276:
	mov	rax, qword ptr [rbp - 0x28]
	or	rax, qword ptr [rbp - 0x18]
	cmp	rax, 0
	jne	.label_1293
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax], 0
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x20]
	call	gcd_odd
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1270
.label_1289:
	jmp	.label_1273
.label_1273:
	jmp	.label_1276
.label_1281:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_1270:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ec39
	.globl sub_40ec39
	.type sub_40ec39, @function
sub_40ec39:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40ec40

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
	#Procedure 0x40ecb2
	.globl sub_40ecb2
	.type sub_40ecb2, @function
sub_40ecb2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ecc0

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
	#Procedure 0x40ecf3
	.globl sub_40ecf3
	.type sub_40ecf3, @function
sub_40ecf3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ed00

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
	jne	.label_1294
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x20]
	jne	.label_1294
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_1294
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	mov	edi, eax
	call	lseek
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], -1
	jne	.label_1296
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1295
.label_1296:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax]
	and	ecx, 0xffffffef
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x90], rax
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1295
.label_1294:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	call	fseeko
	mov	dword ptr [rbp - 4], eax
.label_1295:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40edc2
	.globl sub_40edc2
	.type sub_40edc2, @function
sub_40edc2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40edd0

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
	jne	.label_1297
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
	jmp	.label_1298
.label_1297:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx], rax
.label_1298:
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
	jne	.label_1300
	jmp	.label_1299
.label_1300:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x14]
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x14], ecx
.label_1299:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ee85
	.globl sub_40ee85
	.type sub_40ee85, @function
sub_40ee85:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ee90

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_1301
	mov	eax,  dword ptr [dword ptr [exit_failure]]
	mov	dword ptr [rbp - 4], eax
	call	gettext
	xor	esi, esi
	movabs	rdx, OFFSET FLAT:label_138
	mov	edi, dword ptr [rbp - 4]
	mov	rcx, rax
	mov	al, 0
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40eecf
	.globl sub_40eecf
	.type sub_40eecf, @function
sub_40eecf:

	nop	
.label_1303:
	mov	byte ptr [rbp - 1], 0
.label_1305:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40eede
	.globl sub_40eede
	.type sub_40eede, @function
sub_40eede:

	nop	
	.section	.text
	.align	16
	#Procedure 0x40eee0
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
	jb	.label_1302
	jmp	.label_1304
.label_1304:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x14], eax
	ja	.label_1303
	jmp	.label_1302
.label_1302:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1305
.label_1312:
	mov	dword ptr [rbp - 0x4c], 1
.label_1307:
	mov	eax, dword ptr [rbp - 0x4c]
	cmp	eax, dword ptr [rbp - 0x2c]
	jae	.label_1310
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	call	mulredc
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x48]
	jne	.label_1306
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1308
.label_1310:
	mov	byte ptr [rbp - 1], 0
.label_1308:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ef75
	.globl sub_40ef75
	.type sub_40ef75, @function
sub_40ef75:

	nop	dword ptr [rax]
.label_1306:
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x38]
	jne	.label_1309
	mov	byte ptr [rbp - 1], 0
	jmp	.label_1308
.label_1309:
	jmp	.label_1311
.label_1311:
	mov	eax, dword ptr [rbp - 0x4c]
	add	eax, 1
	mov	dword ptr [rbp - 0x4c], eax
	jmp	.label_1307
	.section	.text
	.align	16
	#Procedure 0x40efa2

	.globl millerrabin
	.type millerrabin, @function
millerrabin:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	dword ptr [rbp - 0x2c], r8d
	mov	qword ptr [rbp - 0x38], r9
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	r8, qword ptr [rbp - 0x38]
	call	powm
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x38]
	je	.label_1313
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x48]
	jne	.label_1312
.label_1313:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1308
.label_1314:
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	je	.label_1318
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	xor	ecx, ecx
	mov	esi, ecx
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_1316
.label_1318:
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fflush
	cmp	eax, 0
	je	.label_1316
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], ecx
.label_1316:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_1315
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x20], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x20]
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 0x1c], 0xffffffff
.label_1315:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
.label_1317:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f09d
	.globl sub_40f09d
	.type sub_40f09d, @function
sub_40f09d:

	nop	
	.section	.text
	.align	16
	#Procedure 0x40f09f

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
	jge	.label_1314
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1317
	.section	.text
	.align	16
	#Procedure 0x40f0e0

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
	#Procedure 0x40f118
	.globl sub_40f118
	.type sub_40f118, @function
sub_40f118:

	nop	dword ptr [rax + rax]
.label_1320:
	mov	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xa0], rdx
.label_1322:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp + rcx*8 - 0x80], rax
	cmp	rax, 0
	setne	dl
	mov	byte ptr [rbp - 0x81], dl
.label_1325:
	mov	al, byte ptr [rbp - 0x81]
	test	al, 1
	jne	.label_1324
	jmp	.label_1319
.label_1324:
	jmp	.label_1321
.label_1321:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1323
.label_1319:
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
	#Procedure 0x40f1ac
	.globl sub_40f1ac
	.type sub_40f1ac, @function
sub_40f1ac:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40f1b3

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
.label_1323:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x30], 0xa
	mov	byte ptr [rbp - 0x81], cl
	jae	.label_1325
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x90], rax
	mov	dword ptr [rbp - 0x94], ecx
	ja	.label_1320
	mov	eax, dword ptr [rbp - 0x94]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x90]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0xa0], rcx
	jmp	.label_1322
	.section	.text
	.align	16
	#Procedure 0x40f295
	.globl sub_40f295
	.type sub_40f295, @function
sub_40f295:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f2a2
	.globl sub_40f2a2
	.type sub_40f2a2, @function
sub_40f2a2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f2c6
	.globl sub_40f2c6
	.type sub_40f2c6, @function
sub_40f2c6:

	nop	word ptr cs:[rax + rax]
