	.section	.text
	.align	16
	#Procedure 0x402c19
	.globl sub_402c19
	.type sub_402c19, @function
sub_402c19:

	hlt	
	.section	.text
	.align	16
	#Procedure 0x402c1a
	.globl sub_402c1a
	.type sub_402c1a, @function
sub_402c1a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402c52
	.globl sub_402c52
	.type sub_402c52, @function
sub_402c52:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402c9a
	.globl sub_402c9a
	.type sub_402c9a, @function
sub_402c9a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402cbc
	.globl sub_402cbc
	.type sub_402cbc, @function
sub_402cbc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402ccd
	.globl sub_402ccd
	.type sub_402ccd, @function
sub_402ccd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402ce6
	.globl sub_402ce6
	.type sub_402ce6, @function
sub_402ce6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402cf0
	.globl rotr16
	.type rotr16, @function
rotr16:

	mov	eax, edi
	mov	ecx, esi
	shr	eax, cl
	mov	ecx, 0x10
	sub	ecx, esi
	shl	edi, cl
	or	edi, eax
	mov	eax, edi
	ret	
	.section	.text
	.align	16
	#Procedure 0x402d04
	.globl sub_402d04
	.type sub_402d04, @function
sub_402d04:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402d10

	.globl zaptemp
	.type zaptemp, @function
zaptemp:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	r14, rdi
	mov	ebx, OFFSET FLAT:temphead
	nop	dword ptr [rax]
.label_10:
	mov	rbp, rbx
	mov	rbx, qword ptr [rbp]
	lea	rax, [rbx + 0xd]
	cmp	rax, r14
	jne	.label_10
	cmp	byte ptr [rbx + 0xc], 1
	jne	.label_12
	mov	edi, dword ptr [rbx + 8]
	call	wait_proc
.label_12:
	mov	r15, qword ptr [rbx]
	lea	r12, [rsp + 0x10]
	mov	rdi, r12
	call	cs_enter
	mov	rdi, r14
	call	unlink
	mov	r13d, eax
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rsp + 0xc], eax
	mov	qword ptr [rbp], r15
	mov	rdi, r12
	call	cs_leave
	test	r13d, r13d
	je	.label_9
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_13
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r14
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, dword ptr [rsp + 0xc]
	mov	rdx, r12
	call	error
.label_9:
	test	r15, r15
	jne	.label_11
	mov	qword ptr [word ptr [rip + temptail]],  rbp
.label_11:
	mov	rdi, rbx
	call	free
	add	rsp, 0x98
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402de1
	.globl sub_402de1
	.type sub_402de1, @function
sub_402de1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402df0

	.globl mergefps
	.type mergefps, @function
mergefps:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xb8
	mov	r15, r9
	mov	qword ptr [rsp + 0x58], r8
	mov	qword ptr [rsp + 0x50], rcx
	mov	rbp, rdx
	mov	qword ptr [rsp + 0x38], rsi
	mov	qword ptr [rsp + 0x20], rdi
	mov	esi, 0x38
	mov	rdi, rbp
	call	xnmalloc
	mov	r13, rax
	mov	esi, 8
	mov	rdi, rbp
	call	xnmalloc
	mov	rbx, rax
	mov	esi, 8
	mov	rdi, rbp
	call	xnmalloc
	mov	qword ptr [rsp + 0x28], rax
	mov	esi, 8
	mov	rdi, rbp
	call	xnmalloc
	mov	qword ptr [rsp], rax
	mov	rax,  qword ptr [word ptr [rip + keylist]]
	mov	qword ptr [rsp + 0xb0], rax
	mov	qword ptr [rsp + 0x68], 0
	test	rbp, rbp
	je	.label_29
	mov	qword ptr [rsp + 0x48], r13
	xor	r13d, r13d
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
.label_41:
	imul	rcx, r13, 0x38
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [rsp + 0x30], rcx
	lea	rax, [rax + rcx]
	mov	qword ptr [rsp + 8], rax
	mov	r14, r13
	shl	r14, 4
	add	r14, qword ptr [rsp + 0x20]
	mov	r12, rbp
	mov	qword ptr [rsp + 0x18], r14
	nop	word ptr cs:[rax + rax]
.label_34:
	mov	rbp, r12
	mov	rcx,  qword ptr [word ptr [rip + merge_buffer_size]]
	mov	rax,  qword ptr [word ptr [rip + sort_size]]
	xor	edx, edx
	div	rbp
	cmp	rcx, rax
	cmovbe	rcx, rax
	mov	esi, 0x20
	mov	r12, qword ptr [rsp + 8]
	mov	rdi, r12
	mov	rdx, rcx
	call	initbuf
	mov	rsi, qword ptr [r15 + r13*8]
	mov	rdx, qword ptr [r14]
	mov	rdi, r12
	call	fillbuf
	test	al, al
	jne	.label_17
	lea	r12, [rbp - 1]
	mov	rdi, qword ptr [r15 + r13*8]
	mov	rsi, qword ptr [r14]
	call	xfclose
	mov	rax, qword ptr [rsp + 0x38]
	cmp	r13, rax
	jae	.label_20
	dec	rax
	mov	qword ptr [rsp + 0x38], rax
	mov	rdi, qword ptr [r14]
	call	zaptemp
.label_20:
	mov	rax, qword ptr [rsp + 8]
	mov	rdi, qword ptr [rax]
	call	free
	cmp	r13, r12
	jae	.label_28
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0x10]
	nop	dword ptr [rax + rax]
.label_30:
	movups	xmm0, xmmword ptr [rcx + 0x10]
	movups	xmmword ptr [rcx], xmm0
	lea	rcx, [rcx + 0x10]
	mov	rdx, qword ptr [r15 + rax*8]
	mov	qword ptr [r15 + rax*8 - 8], rdx
	inc	rax
	cmp	rbp, rax
	jne	.label_30
.label_28:
	cmp	r13, r12
	mov	r14, qword ptr [rsp + 0x18]
	jb	.label_34
	jmp	.label_39
	.section	.text
	.align	16
	#Procedure 0x402f8c
	.globl sub_402f8c
	.type sub_402f8c, @function
sub_402f8c:

	nop	dword ptr [rax]
.label_17:
	mov	rdi, qword ptr [rsp + 8]
	call	buffer_linelim
	lea	rcx, [rax - 0x20]
	mov	qword ptr [rbx + r13*8], rcx
	mov	rcx, qword ptr [rsp + 0x48]
	mov	rdx, qword ptr [rsp + 0x30]
	mov	rcx, qword ptr [rcx + rdx + 0x10]
	shl	rcx, 5
	sub	rax, rcx
	mov	rcx, qword ptr [rsp + 0x28]
	mov	qword ptr [rcx + r13*8], rax
	inc	r13
	add	qword ptr [rsp + 0x10], 0x10
	inc	qword ptr [rsp + 0x40]
	cmp	r13, rbp
	mov	r12, rbp
	jb	.label_41
.label_39:
	test	r12, r12
	mov	r13, qword ptr [rsp + 0x48]
	je	.label_29
	xor	eax, eax
	mov	rcx, qword ptr [rsp]
	nop	
.label_42:
	mov	qword ptr [rcx + rax*8], rax
	inc	rax
	cmp	r12, rax
	jne	.label_42
	cmp	r12, 2
	jb	.label_51
	mov	ebp, 1
	nop	word ptr [rax + rax]
.label_26:
	mov	rax, qword ptr [rcx + rbp*8 - 8]
	mov	rdi, qword ptr [rbx + rax*8]
	mov	rax, qword ptr [rcx + rbp*8]
	mov	r14, rcx
	mov	rsi, qword ptr [rbx + rax*8]
	call	compare
	test	eax, eax
	jle	.label_21
	mov	rax, qword ptr [r14 + rbp*8 - 8]
	mov	rcx, qword ptr [r14 + rbp*8]
	mov	qword ptr [r14 + rbp*8 - 8], rcx
	mov	qword ptr [r14 + rbp*8], rax
	xor	ebp, ebp
.label_21:
	mov	rcx, r14
	inc	rbp
	cmp	rbp, r12
	jb	.label_26
.label_51:
	test	r12, r12
	je	.label_29
	mov	rcx, r12
	mov	rsi, qword ptr [rsp]
	mov	rax, rsi
	add	rax, 8
	mov	qword ptr [rsp + 0x40], rax
	lea	rax, [rcx - 1]
	mov	qword ptr [rsp + 0x30], rax
	mov	rax, qword ptr [rsp + 0x28]
	add	rax, 8
	mov	qword ptr [rsp + 0xa8], rax
	mov	rax, rbx
	add	rax, 8
	mov	qword ptr [rsp + 0xa0], rax
	lea	rax, [r13 + 0x38]
	mov	qword ptr [rsp + 0x98], rax
	mov	rax, qword ptr [rsp + 0x20]
	lea	rax, [rax + 0x10]
	mov	qword ptr [rsp + 0x90], rax
	lea	rax, [r15 + 8]
	mov	qword ptr [rsp + 0x88], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	xor	r12d, r12d
	mov	qword ptr [rsp + 0x60], r15
	nop	dword ptr [rax]
.label_33:
	mov	qword ptr [rsp + 8], rcx
	lea	rax, [rcx - 1]
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_48
.label_14:
	mov	qword ptr [rsi + rax*8], rbp
.label_48:
	mov	rax, qword ptr [rsi]
	mov	rbp, qword ptr [rbx + rax*8]
	cmp	byte ptr [byte ptr [rip + unique]],  1
	jne	.label_49
	mov	rdi, qword ptr [rsp + 0x18]
	test	rdi, rdi
	je	.label_50
	mov	rsi, rbp
	call	compare
	test	eax, eax
	je	.label_15
	lea	rdi, [rsp + 0x68]
	mov	rsi, qword ptr [rsp + 0x50]
	mov	rdx, qword ptr [rsp + 0x58]
	call	write_line
.label_50:
	cmp	r12, qword ptr [rbp + 8]
	jae	.label_19
	nop	dword ptr [rax + rax]
.label_23:
	test	r12, r12
	je	.label_18
	add	r12, r12
	cmp	r12, qword ptr [rbp + 8]
	jb	.label_23
	jmp	.label_24
.label_49:
	mov	rdi, rbp
	mov	rsi, qword ptr [rsp + 0x50]
	mov	rdx, qword ptr [rsp + 0x58]
	call	write_line
	jmp	.label_15
.label_18:
	mov	r12, qword ptr [rbp + 8]
.label_24:
	mov	rdi, qword ptr [rsp + 0x68]
	call	free
	mov	rdi, r12
	call	xmalloc
	mov	qword ptr [rsp + 0x68], rax
.label_19:
	mov	rdx, qword ptr [rbp + 8]
	mov	qword ptr [rsp + 0x70], rdx
	mov	rdi, qword ptr [rsp + 0x68]
	mov	rsi, qword ptr [rbp]
	call	memcpy
	cmp	qword ptr [rsp + 0xb0], 0
	je	.label_37
	mov	rax, qword ptr [rbp + 0x10]
	sub	rax, qword ptr [rbp]
	add	rax, qword ptr [rsp + 0x68]
	mov	qword ptr [rsp + 0x78], rax
	mov	rax, qword ptr [rbp + 0x18]
	sub	rax, qword ptr [rbp]
	add	rax, qword ptr [rsp + 0x68]
	mov	qword ptr [rsp + 0x80], rax
.label_37:
	lea	rax, [rsp + 0x68]
	mov	qword ptr [rsp + 0x18], rax
.label_15:
	mov	rsi, qword ptr [rsp]
	mov	rax, qword ptr [rsi]
	mov	rcx, qword ptr [rsp + 0x28]
	cmp	qword ptr [rcx + rax*8], rbp
	jae	.label_45
	add	rbp, -0x20
	mov	qword ptr [rbx + rax*8], rbp
	jmp	.label_47
	.section	.text
	.align	16
	#Procedure 0x4031de
	.globl sub_4031de
	.type sub_4031de, @function
sub_4031de:

	nop	
.label_45:
	imul	rdi, rax, 0x38
	add	rdi, r13
	mov	rsi, qword ptr [r15 + rax*8]
	shl	rax, 4
	mov	rcx, qword ptr [rsp + 0x20]
	mov	rdx, qword ptr [rcx + rax]
	call	fillbuf
	test	al, al
	je	.label_52
	mov	r15, r13
	mov	r13, qword ptr [rsp]
	mov	rbp, qword ptr [r13]
	imul	r14, rbp, 0x38
	lea	rdi, [r15 + r14]
	call	buffer_linelim
	mov	rsi, r13
	mov	r13, r15
	mov	r15, qword ptr [rsp + 0x60]
	lea	rcx, [rax - 0x20]
	mov	qword ptr [rbx + rbp*8], rcx
	mov	rcx, qword ptr [r13 + r14 + 0x10]
	shl	rcx, 5
	sub	rax, rcx
	mov	rcx, qword ptr [rsp + 0x28]
	mov	qword ptr [rcx + rbp*8], rax
.label_47:
	mov	rbp, qword ptr [rsi]
	cmp	qword ptr [rsp + 8], 2
	mov	eax, 0
	jb	.label_14
	mov	r15d, 1
	mov	r13, qword ptr [rsp + 8]
	mov	r14d, 1
	nop	word ptr [rax + rax]
.label_43:
	mov	rdi, qword ptr [rbx + rbp*8]
	mov	rax, qword ptr [rsi + r15*8]
	mov	rsi, qword ptr [rbx + rax*8]
	call	compare
	test	eax, eax
	js	.label_35
	mov	rsi, qword ptr [rsp]
	jne	.label_36
	cmp	rbp, qword ptr [rsi + r15*8]
	jae	.label_36
	mov	r13, r15
	jmp	.label_32
	.section	.text
	.align	16
	#Procedure 0x403296
	.globl sub_403296
	.type sub_403296, @function
sub_403296:

	nop	word ptr cs:[rax + rax]
.label_36:
	inc	r15
	mov	r14, r15
	jmp	.label_32
	.section	.text
	.align	16
	#Procedure 0x4032a8
	.globl sub_4032a8
	.type sub_4032a8, @function
sub_4032a8:

	nop	dword ptr [rax + rax]
.label_35:
	mov	r13, r15
	mov	rsi, qword ptr [rsp]
.label_32:
	lea	r15, [r13 + r14]
	shr	r15, 1
	cmp	r14, r13
	jb	.label_43
	dec	r14
	mov	eax, 0
	mov	r15, qword ptr [rsp + 0x60]
	mov	r13, qword ptr [rsp + 0x48]
	je	.label_14
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, r14
	nop	word ptr cs:[rax + rax]
.label_44:
	mov	rdx, qword ptr [rax]
	mov	qword ptr [rax - 8], rdx
	add	rax, 8
	dec	rcx
	jne	.label_44
	mov	rax, r14
	jmp	.label_14
	.section	.text
	.align	16
	#Procedure 0x403308
	.globl sub_403308
	.type sub_403308, @function
sub_403308:

	nop	dword ptr [rax + rax]
.label_52:
	mov	rsi, qword ptr [rsp + 8]
	cmp	rsi, 2
	mov	rdx, qword ptr [rsp]
	jb	.label_16
	mov	eax, 1
	nop	word ptr cs:[rax + rax]
.label_25:
	mov	rcx, qword ptr [rdx + rax*8]
	cmp	rcx, qword ptr [rdx]
	jbe	.label_22
	dec	rcx
	mov	qword ptr [rdx + rax*8], rcx
.label_22:
	inc	rax
	cmp	rsi, rax
	jne	.label_25
.label_16:
	mov	r14, qword ptr [rdx]
	mov	rdi, qword ptr [r15 + r14*8]
	mov	rbp, r14
	shl	rbp, 4
	mov	r15, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [r15 + rbp]
	call	xfclose
	mov	rax, qword ptr [rsp + 0x38]
	cmp	r14, rax
	jae	.label_31
	add	rbp, r15
	dec	rax
	mov	qword ptr [rsp + 0x38], rax
	mov	rdi, qword ptr [rbp]
	call	zaptemp
.label_31:
	mov	rax, qword ptr [rsp]
	mov	r15, qword ptr [rax]
	imul	rbp, r15, 0x38
	mov	rdi, qword ptr [r13 + rbp]
	call	free
	cmp	r15, qword ptr [rsp + 0x10]
	jae	.label_40
	mov	r8, qword ptr [rsp + 0x30]
	sub	r8, r15
	mov	rax, qword ptr [rsp + 0xa8]
	lea	rcx, [rax + r15*8]
	mov	rax, qword ptr [rsp + 0xa0]
	lea	rdx, [rax + r15*8]
	add	rbp, qword ptr [rsp + 0x98]
	mov	rax, qword ptr [rsp + 0x88]
	lea	rsi, [rax + r15*8]
	shl	r15, 4
	add	r15, qword ptr [rsp + 0x90]
	xor	edi, edi
	nop	word ptr cs:[rax + rax]
.label_46:
	mov	rax, qword ptr [rsi + rdi*8]
	mov	qword ptr [rsi + rdi*8 - 8], rax
	movups	xmm0, xmmword ptr [r15]
	movups	xmmword ptr [r15 - 0x10], xmm0
	mov	rax, qword ptr [rbp + 0x30]
	mov	qword ptr [rbp - 8], rax
	movups	xmm0, xmmword ptr [rbp]
	movups	xmm1, xmmword ptr [rbp + 0x10]
	movups	xmm2, xmmword ptr [rbp + 0x20]
	movups	xmmword ptr [rbp - 0x18], xmm2
	movups	xmmword ptr [rbp - 0x28], xmm1
	movups	xmmword ptr [rbp - 0x38], xmm0
	mov	rax, qword ptr [rdx + rdi*8]
	mov	qword ptr [rdx + rdi*8 - 8], rax
	mov	rax, qword ptr [rcx + rdi*8]
	mov	qword ptr [rcx + rdi*8 - 8], rax
	inc	rdi
	add	rbp, 0x38
	add	r15, 0x10
	cmp	r8, rdi
	jne	.label_46
.label_40:
	cmp	qword ptr [rsp + 0x10], 0
	mov	r15, qword ptr [rsp + 0x60]
	mov	rsi, qword ptr [rsp]
	je	.label_27
	mov	eax, 1
	mov	rdx, qword ptr [rsp + 8]
	nop	
.label_38:
	mov	rcx, qword ptr [rsi + rax*8]
	mov	qword ptr [rsi + rax*8 - 8], rcx
	inc	rax
	cmp	rdx, rax
	jne	.label_38
	dec	qword ptr [rsp + 0x30]
	mov	rcx, qword ptr [rsp + 0x10]
	test	rcx, rcx
	jne	.label_33
.label_27:
	cmp	qword ptr [rsp + 0x18], 0
	je	.label_29
	test	byte ptr [byte ptr [rip + unique]],  1
	je	.label_29
	lea	rdi, [rsp + 0x68]
	mov	rsi, qword ptr [rsp + 0x50]
	mov	rdx, qword ptr [rsp + 0x58]
	call	write_line
	mov	rdi, qword ptr [rsp + 0x68]
	call	free
.label_29:
	mov	rdi, qword ptr [rsp + 0x50]
	mov	rsi, qword ptr [rsp + 0x58]
	call	xfclose
	mov	rdi, r15
	call	free
	mov	rdi, r13
	call	free
	mov	rdi, qword ptr [rsp]
	call	free
	mov	rdi, qword ptr [rsp + 0x28]
	call	free
	mov	rdi, rbx
	call	free
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4034ff
	.globl sub_4034ff
	.type sub_4034ff, @function
sub_4034ff:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403500
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x40350a
	.globl sub_40350a
	.type sub_40350a, @function
sub_40350a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403510

	.globl gettext_quote
	.type gettext_quote, @function
gettext_quote:
	push	rbp
	push	r14
	push	rbx
	mov	r14d, esi
	mov	rbx, rdi
	xor	edi, edi
	mov	edx, 5
	mov	rsi, rbx
	call	dcgettext
	cmp	rax, rbx
	jne	.label_57
	call	locale_charset
	mov	rbp, rax
	mov	esi, 0x55
	mov	edx, 0x54
	mov	ecx, 0x46
	mov	r8d, 0x2d
	mov	r9d, 0x38
	mov	rdi, rbp
	push	0
	push	0
	call	strcaseeq0
	add	rsp, 0x10
	test	eax, eax
	je	.label_53
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_58
	mov	eax, OFFSET FLAT:label_59
	jmp	.label_56
.label_53:
	mov	esi, 0x47
	mov	edx, 0x42
	mov	ecx, 0x31
	mov	r8d, 0x38
	mov	r9d, 0x30
	mov	rdi, rbp
	push	0x30
	push	0x33
	call	strcaseeq0
	add	rsp, 0x10
	test	eax, eax
	je	.label_62
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_54
	mov	eax, OFFSET FLAT:label_55
	jmp	.label_56
.label_62:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:label_60
	mov	eax, OFFSET FLAT:label_61
.label_56:
	cmove	rax, rcx
.label_57:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4035cd
	.globl sub_4035cd
	.type sub_4035cd, @function
sub_4035cd:

	nop	dword ptr [rax]
.label_63:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_65:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_66
	inc	r9
	cmp	r9, 0xa
	jb	.label_64
.label_66:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	16
	#Procedure 0x4035ff
	.globl sub_4035ff
	.type sub_4035ff, @function
sub_4035ff:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403600

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_64:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_63
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_65
	.section	.text
	.align	16
	#Procedure 0x403629
	.globl sub_403629
	.type sub_403629, @function
sub_403629:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403630

	.globl pipe_fork
	.type pipe_fork, @function
pipe_fork:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	rbx, rsi
	mov	rbp, rdi
	mov	esi, 0x80000
	call	rpl_pipe2
	mov	r12d, 0xffffffff
	test	eax, eax
	js	.label_68
	mov	eax,  dword ptr [dword ptr [rip + nmerge]]
	inc	eax
	cmp	eax,  dword ptr [dword ptr [rip + nprocs]]
	jae	.label_71
	call	reap_some
.label_71:
	test	rbx, rbx
	je	.label_70
	mov	qword ptr [rsp + 8], rbp
	movsd	xmm0,  qword ptr [word ptr [rip + label_74]]
	movsd	qword ptr [rsp], xmm0
	lea	r15, [rsp + 0x10]
	nop	word ptr cs:[rax + rax]
.label_73:
	mov	rdi, r15
	call	cs_enter
	mov	r13,  qword ptr [word ptr [rip + temphead]]
	mov	qword ptr [word ptr [rip + temphead]],  0
	call	fork
	mov	r12d, eax
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	test	r12d, r12d
	je	.label_67
	mov	qword ptr [word ptr [rip + temphead]],  r13
.label_67:
	mov	rdi, r15
	call	cs_leave
	mov	dword ptr [rbp], r14d
	test	r12d, r12d
	jns	.label_72
	cmp	r14d, 0xb
	jne	.label_72
	dec	rbx
	movsd	xmm0, qword ptr [rsp]
	call	xnanosleep
	movsd	xmm0, qword ptr [rsp]
	addsd	xmm0, xmm0
	movsd	qword ptr [rsp], xmm0
	call	reap_exited
	test	rbx, rbx
	jne	.label_73
.label_72:
	test	r12d, r12d
	js	.label_69
	je	.label_70
	inc	dword ptr [dword ptr [rip + nprocs]]
	jmp	.label_68
.label_69:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	rbp, qword ptr [rsp + 8]
	mov	edi, dword ptr [rbp]
	call	close
	mov	edi, dword ptr [rbp + 4]
	call	close
	mov	dword ptr [rbx], r14d
.label_68:
	mov	eax, r12d
	add	rsp, 0x98
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40375d
	.globl sub_40375d
	.type sub_40375d, @function
sub_40375d:

	nop	word ptr cs:[rax + rax]
.label_70:
	xor	r12d, r12d
	xor	edi, edi
	call	close
	mov	edi, 1
	call	close
	jmp	.label_68
	.section	.text
	.align	16
	#Procedure 0x403780

	.globl randread_new
	.type randread_new, @function
randread_new:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r15, rsi
	mov	rbx, rdi
	test	r15, r15
	je	.label_75
	test	rbx, rbx
	je	.label_77
	mov	esi, OFFSET FLAT:label_78
	mov	rdi, rbx
	call	fopen_safer
	mov	r12, rax
	xor	r14d, r14d
	test	r12, r12
	je	.label_76
	mov	rdi, r12
	mov	rsi, rbx
	call	simple_new
	mov	r14, rax
	lea	rsi, [r14 + 0x18]
	cmp	r15, 0x1000
	mov	ecx, 0x1000
	cmovbe	rcx, r15
	xor	edx, edx
	mov	rdi, r12
	call	setvbuf
	jmp	.label_76
.label_75:
	xor	edi, edi
	xor	esi, esi
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	simple_new
.label_77:
	xor	edi, edi
	mov	rsi, rbx
	call	simple_new
	mov	r14, rax
	mov	qword ptr [r14 + 0x18], 0
	mov	rbx, r14
	add	rbx, 0x20
	mov	rdi, rbx
	mov	rsi, r15
	call	get_nonce
	mov	rdi, rbx
	call	isaac_seed
.label_76:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x40382d
	.globl sub_40382d
	.type sub_40382d, @function
sub_40382d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403830

	.globl simple_new
	.type simple_new, @function
simple_new:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	mov	edi, 0x1038
	call	xmalloc
	mov	qword ptr [rax], rbx
	mov	qword ptr [word ptr [rax + 8]], OFFSET FLAT:randread_error
	mov	qword ptr [rax + 0x10], r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x40385b
	.globl sub_40385b
	.type sub_40385b, @function
sub_40385b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403860

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_79
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_81
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_79
.label_81:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_79
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_80
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_80:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_79:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	.section	.text
	.align	16
	#Procedure 0x4038d7
	.globl sub_4038d7
	.type sub_4038d7, @function
sub_4038d7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4038e0
	.globl c_tolower
	.type c_tolower, @function
c_tolower:

	lea	ecx, [rdi - 0x41]
	lea	eax, [rdi + 0x20]
	cmp	ecx, 0x1a
	cmovae	eax, edi
	ret	
	.section	.text
	.align	16
	#Procedure 0x4038ed
	.globl sub_4038ed
	.type sub_4038ed, @function
sub_4038ed:

	nop	dword ptr [rax]
.label_85:
	test	eax, eax
	jle	.label_82
	movups	xmm0, xmmword ptr [rbp]
	movups	xmm1, xmmword ptr [rbp + 0x10]
	movups	xmmword ptr [r14 - 0x10], xmm1
	movups	xmmword ptr [r14 - 0x20], xmm0
	movups	xmm0, xmmword ptr [rbx]
	movups	xmm1, xmmword ptr [rbx + 0x10]
	movups	xmmword ptr [rbp + 0x10], xmm1
	movups	xmmword ptr [rbp], xmm0
	movups	xmm0, xmmword ptr [r14 - 0x20]
	movups	xmm1, xmmword ptr [r14 - 0x10]
	movups	xmmword ptr [rbx + 0x10], xmm1
	movups	xmmword ptr [rbx], xmm0
.label_82:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40392f

	.globl sequential_sort
	.type sequential_sort, @function
sequential_sort:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r15d, ecx
	mov	r14, rdx
	mov	rbp, rsi
	mov	r12, rdi
	cmp	rbp, 2
	jne	.label_86
	lea	rbp, [r12 - 0x20]
	lea	rbx, [r12 - 0x40]
	mov	rdi, rbp
	mov	rsi, rbx
	call	compare
	test	r15b, r15b
	je	.label_85
	xor	ecx, ecx
	test	eax, eax
	setg	cl
	mov	rax, rcx
	not	rax
	shl	rax, 5
	movups	xmm0, xmmword ptr [r12 + rax]
	movups	xmm1, xmmword ptr [r12 + rax + 0x10]
	movups	xmmword ptr [r14 - 0x10], xmm1
	movups	xmmword ptr [r14 - 0x20], xmm0
	shl	rcx, 5
	movups	xmm0, xmmword ptr [r12 + rcx - 0x40]
	movups	xmm1, xmmword ptr [r12 + rcx - 0x30]
	movups	xmmword ptr [r14 - 0x30], xmm1
	movups	xmmword ptr [r14 - 0x40], xmm0
	jmp	.label_82
.label_86:
	mov	rbx, rbp
	shr	rbx, 1
	mov	rsi, rbp
	sub	rsi, rbx
	mov	rax, rbx
	neg	rax
	mov	rcx, rbx
	shl	rcx, 5
	mov	rdi, r12
	sub	rdi, rcx
	xor	edx, edx
	test	r15b, r15b
	cmovne	rdx, rax
	shl	rdx, 5
	add	rdx, r14
	movzx	ecx, r15b
	call	sequential_sort
	cmp	rbp, 4
	jb	.label_84
	mov	eax, r15d
	xor	al, 1
	movzx	ecx, al
	mov	rdi, r12
	mov	rsi, rbx
	mov	rdx, r14
	call	sequential_sort
	jmp	.label_83
.label_84:
	test	r15b, r15b
	jne	.label_83
	movups	xmm0, xmmword ptr [r12 - 0x20]
	movups	xmm1, xmmword ptr [r12 - 0x10]
	movups	xmmword ptr [r14 - 0x10], xmm1
	movups	xmmword ptr [r14 - 0x20], xmm0
.label_83:
	test	r15b, r15b
	mov	rdi, r12
	cmovne	rdi, r14
	cmovne	r14, r12
	mov	rsi, rbp
	mov	rdx, r14
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	jmp	mergelines
	.section	.text
	.align	16
	#Procedure 0x403a3e
	.globl sub_403a3e
	.type sub_403a3e, @function
sub_403a3e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403a40

	.globl rotr_sz
	.type rotr_sz, @function
rotr_sz:
	mov	ecx, esi
	ror	rdi, cl
	mov	rax, rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x403a49
	.globl sub_403a49
	.type sub_403a49, @function
sub_403a49:

	nop	dword ptr [rax]
.label_87:
	mov	rcx, qword ptr [rax + 0x40]
	mov	rdi, qword ptr [rax + 0x48]
	jmp	rcx
	.section	.text
	.align	16
	#Procedure 0x403a5a
	.globl sub_403a5a
	.type sub_403a5a, @function
sub_403a5a:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403a61

	.globl call_freefun
	.type call_freefun, @function
call_freefun:
	mov	rax, rdi
	test	byte ptr [rax + 0x50], 1
	jne	.label_87
	mov	rdi, rsi
	jmp	qword ptr [rax + 0x40]
	.section	.text
	.align	16
	#Procedure 0x403a70

	.globl heap_remove_top
	.type heap_remove_top, @function
heap_remove_top:
	push	rbx
	mov	rax, qword ptr [rdi + 0x10]
	xor	ebx, ebx
	test	rax, rax
	je	.label_88
	mov	rcx, qword ptr [rdi]
	mov	rbx, qword ptr [rcx + 8]
	lea	rdx, [rax - 1]
	mov	qword ptr [rdi + 0x10], rdx
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rdi]
	mov	rsi, qword ptr [rdi + 0x10]
	mov	rdx, qword ptr [rdi + 0x18]
	mov	rdi, rax
	call	heapify_down
.label_88:
	mov	rax, rbx
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x403aab
	.globl sub_403aab
	.type sub_403aab, @function
sub_403aab:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403ab0
	.globl hash_print_statistics
	.type hash_print_statistics, @function
hash_print_statistics:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r13, rsi
	mov	rbx, rdi
	call	hash_get_n_entries
	mov	rbp, rax
	mov	rdi, rbx
	call	hash_get_n_buckets
	mov	r12, rax
	mov	rdi, rbx
	call	hash_get_n_buckets_used
	mov	r15, rax
	mov	rdi, rbx
	call	hash_get_max_bucket_length
	mov	r14, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_90
	xor	eax, eax
	mov	rdi, r13
	mov	rcx, rbp
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_95
	xor	eax, eax
	mov	rdi, r13
	mov	rcx, r12
	call	__fprintf_chk
	movq	xmm1, r15
	movdqa	xmm2,  xmmword ptr [word ptr [rip + label_91]]
	punpckldq	xmm1, xmm2
	movapd	xmm3,  xmmword ptr [word ptr [rip + label_92]]
	subpd	xmm1, xmm3
	pshufd	xmm0, xmm1, 0x4e
	addpd	xmm0, xmm1
	mulsd	xmm0,  qword ptr [word ptr [rip + label_93]]
	movq	xmm1, r12
	punpckldq	xmm1, xmm2
	subpd	xmm1, xmm3
	pshufd	xmm2, xmm1, 0x4e
	addpd	xmm2, xmm1
	divsd	xmm0, xmm2
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_94
	mov	al, 1
	mov	rdi, r13
	mov	rcx, r15
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_89
	xor	eax, eax
	mov	rdi, r13
	mov	rcx, r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	__fprintf_chk
	.section	.text
	.align	16
	#Procedure 0x403b9c
	.globl sub_403b9c
	.type sub_403b9c, @function
sub_403b9c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403ba0

	.globl sort
	.type sort, @function
sort:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xf8
	mov	r15, rcx
	mov	qword ptr [rsp + 0x40], rdx
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x68], 0
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	mov	qword ptr [rsp + 0x10], rsi
	test	rsi, rsi
	mov	r12d, 0
	je	.label_102
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	lea	rbp, [rsp + 0x50]
	xor	r12d, r12d
	mov	qword ptr [rsp + 0x30], r15
	nop	word ptr cs:[rax + rax]
.label_112:
	mov	rax, qword ptr [rsp + 0x28]
	mov	rbx, qword ptr [rax]
	mov	esi, OFFSET FLAT:label_96
	mov	rdi, rbx
	call	xfopen
	mov	qword ptr [rsp + 0x38], rax
	cmp	r15, 2
	mov	r14d, 0x30
	jb	.label_100
	mov	r14d, 0x20
	mov	eax, 1
	nop	word ptr cs:[rax + rax]
.label_108:
	add	rax, rax
	add	r14, 0x20
	cmp	rax, r15
	jb	.label_108
.label_100:
	cmp	qword ptr [rsp + 0x68], 0
	jne	.label_109
	lea	rdi, [rsp + 0x38]
	mov	rsi, qword ptr [rsp + 0x28]
	mov	rdx, qword ptr [rsp + 0x10]
	mov	rcx, r14
	call	sort_buffer_size
	mov	rdi, rbp
	mov	rsi, r14
	mov	rdx, rax
	call	initbuf
.label_109:
	mov	byte ptr [rsp + 0x80], 0
	add	qword ptr [rsp + 0x28], 8
	dec	qword ptr [rsp + 0x10]
	mov	rax, qword ptr [rsp + 0x38]
	mov	qword ptr [rsp + 0x48], rax
	mov	rax, r14
	or	rax, 1
	mov	qword ptr [rsp + 0x88], rax
	mov	qword ptr [rsp + 0x90], rbx
	nop	dword ptr [rax]
.label_104:
	mov	rdi, rbp
	mov	rsi, qword ptr [rsp + 0x48]
	mov	rdx, rbx
	call	fillbuf
	test	al, al
	je	.label_97
	cmp	qword ptr [rsp + 0x10], 0
	je	.label_106
	movzx	eax, byte ptr [rsp + 0x80]
	test	al, al
	je	.label_106
	mov	rax, qword ptr [rsp + 0x58]
	mov	rcx, qword ptr [rsp + 0x68]
	sub	rcx, rax
	mov	rdx, qword ptr [rsp + 0x60]
	imul	rdx, r14
	sub	rcx, rdx
	cmp	qword ptr [rsp + 0x88], rcx
	jae	.label_106
	mov	qword ptr [rsp + 0x70], rax
	mov	eax, 7
	jmp	.label_115
	.section	.text
	.align	16
	#Procedure 0x403d0e
	.globl sub_403d0e
	.type sub_403d0e, @function
sub_403d0e:

	nop	
.label_106:
	mov	qword ptr [word ptr [rip + saved_line]],  0
	mov	rdi, rbp
	call	buffer_linelim
	mov	r15, rax
	mov	rax, r12
	or	rax, qword ptr [rsp + 0x10]
	or	rax, qword ptr [rsp + 0x70]
	jne	.label_103
	movzx	eax, byte ptr [rsp + 0x80]
	test	al, al
	je	.label_103
	mov	rdi, qword ptr [rsp + 0x48]
	mov	rsi, rbx
	call	xfclose
	mov	esi, OFFSET FLAT:label_110
	mov	r13, qword ptr [rsp + 0x40]
	mov	rdi, r13
	call	xfopen
	mov	qword ptr [rsp + 0x20], rax
	mov	al, 1
	mov	qword ptr [rsp + 0x18], rax
	jmp	.label_111
	.section	.text
	.align	16
	#Procedure 0x403d6e
	.globl sub_403d6e
	.type sub_403d6e, @function
sub_403d6e:

	nop	
.label_103:
	inc	r12
	lea	rdi, [rsp + 0x20]
	call	create_temp
	mov	r13, rax
	add	r13, 0xd
.label_111:
	cmp	qword ptr [rsp + 0x60], 2
	jb	.label_98
	lea	rax, [rsp + 0x98]
	mov	rdi, rax
	mov	rbp, qword ptr [rsp + 0x30]
	mov	rsi, rbp
	call	queue_init
	mov	rbx, r12
	mov	r12, qword ptr [rsp + 0x60]
	mov	rdi, rbp
	mov	rsi, r12
	mov	rdx, r15
	call	merge_tree_init
	sub	rax, -0x80
	mov	r9, qword ptr [rsp + 0x20]
	mov	qword ptr [rsp], r13
	mov	rdi, r15
	mov	rsi, rbp
	mov	rdx, r12
	mov	r12, rbx
	mov	rcx, rax
	lea	r8, [rsp + 0x98]
	call	sortlines
	jmp	.label_99
	.section	.text
	.align	16
	#Procedure 0x403de5
	.globl sub_403de5
	.type sub_403de5, @function
sub_403de5:

	nop	word ptr cs:[rax + rax]
.label_98:
	add	r15, -0x20
	mov	rsi, qword ptr [rsp + 0x20]
	mov	rdi, r15
	mov	rdx, r13
	call	write_unique
.label_99:
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rsi, r13
	call	xfclose
	mov	rax, qword ptr [rsp + 0x18]
	and	al, 1
	movzx	eax, al
	shl	eax, 3
	lea	rbp, [rsp + 0x50]
	mov	rbx, qword ptr [rsp + 0x90]
.label_115:
	mov	ecx, eax
	and	cl, 0xf
	je	.label_104
	cmp	cl, 7
	mov	r15, qword ptr [rsp + 0x30]
	je	.label_107
	jmp	.label_113
	.section	.text
	.align	16
	#Procedure 0x403e42
	.globl sub_403e42
	.type sub_403e42, @function
sub_403e42:

	nop	word ptr cs:[rax + rax]
.label_97:
	mov	r15, qword ptr [rsp + 0x30]
.label_107:
	mov	rdi, qword ptr [rsp + 0x38]
	mov	rsi, rbx
	call	xfclose
	xor	eax, eax
.label_113:
	cmp	qword ptr [rsp + 0x10], 0
	je	.label_102
	test	eax, eax
	je	.label_112
.label_102:
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
	mov	rax, qword ptr [rsp + 0x18]
	test	al, 1
	jne	.label_114
	mov	rbp,  qword ptr [word ptr [rip + temphead]]
	mov	esi, 0x10
	mov	rdi, r12
	call	xnmalloc
	mov	rbx, rax
	test	rbp, rbp
	je	.label_101
	mov	rax, rbx
	add	rax, 8
	nop	word ptr [rax + rax]
.label_105:
	lea	rcx, [rbp + 0xd]
	mov	qword ptr [rax - 8], rcx
	mov	qword ptr [rax], rbp
	mov	rbp, qword ptr [rbp]
	add	rax, 0x10
	test	rbp, rbp
	jne	.label_105
.label_101:
	mov	rdi, rbx
	mov	rsi, r12
	mov	rdx, r12
	mov	rcx, qword ptr [rsp + 0x40]
	call	merge
	mov	rdi, rbx
	call	free
.label_114:
	call	reap_all
	add	rsp, 0xf8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403efa
	.globl sub_403efa
	.type sub_403efa, @function
sub_403efa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403f00
	.globl c_isblank
	.type c_isblank, @function
c_isblank:

	cmp	edi, 0x20
	sete	cl
	cmp	edi, 9
	sete	al
	or	al, cl
	ret	
	.section	.text
	.align	16
	#Procedure 0x403f0f
	.globl sub_403f0f
	.type sub_403f0f, @function
sub_403f0f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403f10

	.globl maybe_create_temp
	.type maybe_create_temp, @function
maybe_create_temp:
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x10
	mov	r14, rdi
	movzx	esi, sil
	lea	rdi, [rsp + 4]
	call	create_temp_file
	mov	r15, rax
	xor	ebx, ebx
	test	r15, r15
	je	.label_117
	mov	rbx, r15
	mov	byte ptr [rbx + 0xc], 0
	cmp	qword ptr [word ptr [rip + compress_program]],  0
	je	.label_119
	lea	rdi, [rsp + 8]
	mov	esi, 4
	call	pipe_fork
	mov	dword ptr [rbx + 8], eax
	test	eax, eax
	jle	.label_120
	mov	edi, dword ptr [rsp + 4]
	call	close
	mov	edi, dword ptr [rsp + 8]
	call	close
	mov	eax, dword ptr [rsp + 0xc]
	mov	dword ptr [rsp + 4], eax
	mov	rdi, rbx
	call	register_proc
	jmp	.label_119
.label_120:
	je	.label_122
.label_119:
	mov	edi, dword ptr [rsp + 4]
	mov	esi, OFFSET FLAT:label_110
	call	fdopen
	mov	qword ptr [r14], rax
	test	rax, rax
	je	.label_118
.label_117:
	mov	rax, rbx
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_118:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_116
	mov	edx, 5
	call	dcgettext
	add	r15, 0xd
	mov	rdi, rax
	mov	rsi, r15
	call	sort_die
.label_122:
	mov	edi, dword ptr [rsp + 0xc]
	call	close
	mov	edi, dword ptr [rsp + 4]
	mov	esi, 1
	call	move_fd
	mov	edi, dword ptr [rsp + 8]
	xor	esi, esi
	call	move_fd
	mov	rdi,  qword ptr [word ptr [rip + compress_program]]
	xor	edx, edx
	xor	eax, eax
	mov	rsi, rdi
	call	execlp
	call	__errno_location
	mov	edi, dword ptr [rax]
	mov	esi, OFFSET FLAT:label_121
	call	async_safe_die
	.section	.text
	.align	16
	#Procedure 0x40400a
	.globl sub_40400a
	.type sub_40400a, @function
sub_40400a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404010

	.globl xfclose
	.type xfclose, @function
xfclose:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	call	fileno
	cmp	eax, 1
	je	.label_129
	test	eax, eax
	jne	.label_125
	mov	rdi, rbx
	call	feof_unlocked
	test	eax, eax
	je	.label_124
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	clearerr_unlocked
.label_129:
	mov	rdi, rbx
	call	fflush_unlocked
	test	eax, eax
	je	.label_124
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_127
	jmp	.label_128
.label_125:
	mov	rdi, rbx
	call	rpl_fclose
	test	eax, eax
	jne	.label_123
.label_124:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_123:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_126
.label_128:
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	sort_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404090
	.globl gnu_mbswidth
	.type gnu_mbswidth, @function
gnu_mbswidth:

	push	rbp
	push	rbx
	push	rax
	mov	ebp, esi
	mov	rbx, rdi
	call	strlen
	mov	rdi, rbx
	mov	rsi, rax
	mov	edx, ebp
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	mbsnwidth
	.section	.text
	.align	16
	#Procedure 0x4040ad
	.globl sub_4040ad
	.type sub_4040ad, @function
sub_4040ad:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4040b0

	.globl mbsnwidth
	.type mbsnwidth, @function
mbsnwidth:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r14d, edx
	mov	r15, rsi
	mov	rbx, rdi
	lea	r12, [rbx + r15]
	call	__ctype_get_mb_cur_max
	cmp	rax, 1
	jbe	.label_144
	xor	ebp, ebp
	test	r15, r15
	jle	.label_133
	mov	eax, r14d
	and	eax, 2
	mov	dword ptr [rsp + 0xc], eax
	and	r14d, 1
	mov	eax, r14d
	xor	eax, 1
	mov	dword ptr [rsp + 0x14], eax
	lea	eax, [r14*4]
	xor	eax, 5
	mov	dword ptr [rsp + 0x10], eax
	xor	r15d, r15d
	lea	r13, [rsp]
	mov	ebp, 0x7fffffff
	nop	dword ptr [rax + rax]
.label_139:
	movsx	eax, byte ptr [rbx]
	add	eax, -0x20
	cmp	eax, 0x5e
	ja	.label_141
	jmp	qword ptr [word ptr [+ (rax * 8) + label_137]]
.label_1564:
	inc	rbx
	inc	r15d
.label_142:
	cmp	rbx, r12
	jb	.label_139
	jmp	.label_140
.label_141:
	mov	qword ptr [rsp], 0
	nop	word ptr [rax + rax]
.label_138:
	mov	rdx, r12
	sub	rdx, rbx
	lea	rdi, [rsp + 8]
	mov	rsi, rbx
	mov	rcx, r13
	call	rpl_mbrtowc
	mov	r13, rax
	cmp	r13, -2
	je	.label_146
	test	r13, r13
	je	.label_147
	cmp	r13, -1
	jne	.label_148
	mov	ecx, 1
	test	r14d, r14d
	jne	.label_132
	inc	rbx
	inc	r15d
	mov	ecx, 5
	jmp	.label_132
	.section	.text
	.align	16
	#Procedure 0x404198
	.globl sub_404198
	.type sub_404198, @function
sub_404198:

	nop	dword ptr [rax + rax]
.label_146:
	add	r15d, dword ptr [rsp + 0x14]
	test	r14d, r14d
	cmove	rbx, r12
	mov	ecx, dword ptr [rsp + 0x10]
	jmp	.label_132
	.section	.text
	.align	16
	#Procedure 0x4041b2
	.globl sub_4041b2
	.type sub_4041b2, @function
sub_4041b2:

	nop	word ptr cs:[rax + rax]
.label_147:
	mov	r13d, 1
.label_148:
	mov	edi, dword ptr [rsp + 8]
	call	wcwidth
	test	eax, eax
	js	.label_143
	mov	edx, 0x7fffffff
	sub	edx, r15d
	mov	ecx, 7
	cmp	eax, edx
	jg	.label_132
	add	r15d, eax
	jmp	.label_145
.label_143:
	mov	ecx, 1
	cmp	dword ptr [rsp + 0xc], 0
	jne	.label_132
	mov	edi, dword ptr [rsp + 8]
	call	iswcntrl
	test	eax, eax
	jne	.label_145
	cmp	r15d, 0x7fffffff
	jne	.label_131
	mov	ecx, 7
	mov	r15d, 0x7fffffff
	jmp	.label_132
.label_131:
	inc	r15d
	nop	dword ptr [rax + rax]
.label_145:
	add	rbx, r13
	xor	ecx, ecx
.label_132:
	lea	r13, [rsp]
	mov	eax, ecx
	and	al, 7
	jne	.label_136
	mov	rdi, r13
	call	mbsinit
	test	eax, eax
	je	.label_138
	jmp	.label_142
.label_136:
	cmp	al, 5
	je	.label_142
	and	cl, 7
	je	.label_142
	mov	r15d, 0xffffffff
	cmp	cl, 7
	jne	.label_140
	jmp	.label_133
.label_144:
	and	r14d, 2
	xor	r15d, r15d
	jmp	.label_134
.label_135:
	inc	r15d
	nop	
.label_134:
	cmp	rbx, r12
	jae	.label_140
	movzx	ebp, byte ptr [rbx]
	inc	rbx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbp*2]
	test	ah, 0x40
	jne	.label_130
	mov	ebp, 0xffffffff
	test	r14d, r14d
	jne	.label_133
	test	al, 2
	jne	.label_134
.label_130:
	mov	ebp, 0x7fffffff
	cmp	r15d, 0x7fffffff
	jne	.label_135
	jmp	.label_133
.label_140:
	mov	ebp, r15d
.label_133:
	mov	eax, ebp
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
	#Procedure 0x4042be
	.globl sub_4042be
	.type sub_4042be, @function
sub_4042be:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4042c0

	.globl add_temp_dir
	.type add_temp_dir, @function
add_temp_dir:
	push	rbx
	mov	rbx, rdi
	mov	rax,  qword ptr [word ptr [rip + temp_dir_count]]
	cmp	rax,  qword ptr [word ptr [rip + temp_dir_alloc]]
	jne	.label_149
	mov	rdi,  qword ptr [word ptr [rip + temp_dirs]]
	mov	esi, OFFSET FLAT:temp_dir_alloc
	mov	edx, 8
	call	x2nrealloc
	mov	qword ptr [word ptr [rip + temp_dirs]],  rax
.label_149:
	mov	rax,  qword ptr [word ptr [rip + temp_dir_count]]
	lea	rcx, [rax + 1]
	mov	qword ptr [word ptr [rip + temp_dir_count]],  rcx
	mov	rcx,  qword ptr [word ptr [rip + temp_dirs]]
	mov	qword ptr [rcx + rax*8], rbx
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x404310

	.globl specify_sort_size
	.type specify_sort_size, @function
specify_sort_size:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x10
	mov	rbx, rdx
	mov	ebp, esi
	mov	r14d, edi
	lea	rsi, [rsp + 8]
	lea	rcx, [rsp]
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:label_153
	mov	rdi, rbx
	call	xstrtoumax
	cmp	eax, 2
	je	.label_156
	test	eax, eax
	jne	.label_150
	mov	rax, qword ptr [rsp + 8]
	movsx	eax, byte ptr [rax - 1]
	add	eax, -0x30
	cmp	eax, 9
	ja	.label_151
	mov	rcx, qword ptr [rsp]
	mov	eax, 1
	mov	rdx, rcx
	shr	rdx, 0x36
	jne	.label_150
	shl	rcx, 0xa
	mov	qword ptr [rsp], rcx
	jmp	.label_151
.label_156:
	mov	rcx, qword ptr [rsp + 8]
	movsx	edx, byte ptr [rcx - 1]
	add	edx, -0x30
	mov	eax, 2
	cmp	edx, 9
	ja	.label_150
	cmp	byte ptr [rcx + 1], 0
	jne	.label_150
	movsx	ecx, byte ptr [rcx]
	cmp	ecx, 0x62
	je	.label_151
	cmp	ecx, 0x25
	jne	.label_150
	call	physmem_total
	movq	xmm2, qword ptr [rsp]
	punpckldq	xmm2,  xmmword ptr [word ptr [rip + label_91]]
	subpd	xmm2,  xmmword ptr [word ptr [rip + label_92]]
	pshufd	xmm1, xmm2, 0x4e
	addpd	xmm1, xmm2
	mulsd	xmm1, xmm0
	divsd	xmm1,  qword ptr [word ptr [rip + label_93]]
	mov	eax, 1
	movsd	xmm0,  qword ptr [word ptr [rip + label_155]]
	ucomisd	xmm0, xmm1
	jbe	.label_150
	movsd	xmm0,  qword ptr [word ptr [rip + label_154]]
	movapd	xmm2, xmm1
	subsd	xmm2, xmm0
	cvttsd2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttsd2si	rax, xmm1
	ucomisd	xmm1, xmm0
	cmovae	rax, rcx
	mov	qword ptr [rsp], rax
.label_151:
	mov	rcx, qword ptr [rsp]
	cmp	rcx,  qword ptr [word ptr [rip + sort_size]]
	jb	.label_152
	mov	qword ptr [word ptr [rip + sort_size]],  rcx
	mov	eax, 1
	cmp	rcx, qword ptr [rsp]
	jne	.label_150
	mov	eax,  dword ptr [dword ptr [rip + nmerge]]
	imul	rax, rax, 0x22
	cmp	rcx, rax
	cmova	rax, rcx
	mov	qword ptr [word ptr [rip + sort_size]],  rax
.label_152:
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_150:
	movsx	edx, bpl
	mov	ecx, OFFSET FLAT:long_options
	mov	edi, eax
	mov	esi, r14d
	mov	r8, rbx
	call	xstrtol_fatal
	.section	.text
	.align	16
	#Procedure 0x404481
	.globl sub_404481
	.type sub_404481, @function
sub_404481:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404490

	.globl xcalloc
	.type xcalloc, @function
xcalloc:
	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_157
	call	rpl_calloc
	test	rax, rax
	je	.label_157
	pop	rcx
	ret	
.label_157:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4044b6
	.globl sub_4044b6
	.type sub_4044b6, @function
sub_4044b6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4044c0

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:label_158
	nop	
.label_171:
	mov	edi, OFFSET FLAT:label_162
	call	strcmp
	test	eax, eax
	je	.label_169
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_171
.label_169:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:label_162
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_163
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_160
	mov	ecx, OFFSET FLAT:label_161
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_159
	mov	esi, OFFSET FLAT:label_167
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_159
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_168
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_159:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_164
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:label_162
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_161
	mov	ecx, OFFSET FLAT:label_162
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_170
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:label_165
	mov	ecx, OFFSET FLAT:label_166
	cmove	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rdx
	mov	rdx, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	__printf_chk
	.section	.text
	.align	16
	#Procedure 0x4045da
	.globl sub_4045da
	.type sub_4045da, @function
sub_4045da:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4045e0

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	sub	rsp, 0xd8
	test	al, al
	je	.label_179
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_179:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x10
	cmp	esi, 0xb
	ja	.label_181
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_180
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_173
	test	esi, esi
	jne	.label_181
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_184
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_175
.label_181:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_172
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_173
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_183
.label_180:
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
.label_173:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_176
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_178
.label_176:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_178:
	mov	edx, dword ptr [rax]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
.label_183:
	cmp	eax, 6
	jne	.label_172
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_174
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_177
.label_172:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_185
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_182
.label_184:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_175:
	mov	esi, dword ptr [rax]
	call	rpl_fcntl_DUPFD
	add	rsp, 0xd8
	ret	
.label_174:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_177:
	mov	esi, dword ptr [rax]
	call	rpl_fcntl_DUPFD_CLOEXEC
	add	rsp, 0xd8
	ret	
.label_185:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_182:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
	.section	.text
	.align	16
	#Procedure 0x404794
	.globl sub_404794
	.type sub_404794, @function
sub_404794:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4047a0

	.globl queue_insert
	.type queue_insert, @function
queue_insert:
	push	r15
	push	r14
	push	rbx
	mov	r14, rsi
	mov	rbx, rdi
	lea	r15, [rbx + 8]
	mov	rdi, r15
	call	pthread_mutex_lock
	mov	rdi, qword ptr [rbx]
	mov	rsi, r14
	call	heap_insert
	mov	byte ptr [r14 + 0x54], 1
	add	rbx, 0x30
	mov	rdi, rbx
	call	pthread_cond_signal
	mov	rdi, r15
	pop	rbx
	pop	r14
	pop	r15
	jmp	pthread_mutex_unlock
.label_190:
	add	r14, 0x10
.label_191:
	cmp	r14, qword ptr [r15 + 8]
	jae	.label_193
	mov	rdi, qword ptr [r14 + 8]
	test	rdi, rdi
	je	.label_190
	nop	word ptr cs:[rax + rax]
.label_189:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_189
	jmp	.label_190
.label_187:
	mov	r14, qword ptr [r15]
	jmp	.label_191
	.section	.text
	.align	16
	#Procedure 0x404818
	.globl sub_404818
	.type sub_404818, @function
sub_404818:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404821
	.globl hash_free
	.type hash_free, @function
hash_free:

	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	cmp	qword ptr [r15 + 0x40], 0
	je	.label_187
	cmp	qword ptr [r15 + 0x20], 0
	je	.label_187
	mov	r14, qword ptr [r15]
	jmp	.label_195
	.section	.text
	.align	16
	#Procedure 0x40483c
	.globl sub_40483c
	.type sub_40483c, @function
sub_40483c:

	nop	dword ptr [rax + rax]
.label_193:
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_186
	nop	dword ptr [rax]
.label_192:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_192
.label_186:
	mov	rdi, qword ptr [r15]
	call	free
	mov	rdi, r15
	pop	rbx
	pop	r14
	pop	r15
	jmp	free
	.section	.text
	.align	16
	#Procedure 0x404874
	.globl sub_404874
	.type sub_404874, @function
sub_404874:

	nop	word ptr cs:[rax + rax]
.label_188:
	add	r14, 0x10
.label_195:
	cmp	r14, qword ptr [r15 + 8]
	jae	.label_187
	cmp	qword ptr [r14], 0
	je	.label_188
	test	r14, r14
	je	.label_188
	mov	rbx, r14
	nop	dword ptr [rax + rax]
.label_194:
	mov	rdi, qword ptr [rbx]
	call	qword ptr [r15 + 0x40]
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	jne	.label_194
	jmp	.label_188
	.section	.text
	.align	16
	#Procedure 0x4048b0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	jmp	x2nrealloc
	.section	.text
	.align	16
	#Procedure 0x4048ba
	.globl sub_4048ba
	.type sub_4048ba, @function
sub_4048ba:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4048c0

	.globl heap_insert
	.type heap_insert, @function
heap_insert:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	mov	rax, qword ptr [rbx + 8]
	dec	rax
	cmp	rax, qword ptr [rbx + 0x10]
	ja	.label_196
	lea	rsi, [rbx + 8]
	mov	rdi, qword ptr [rbx]
	mov	edx, 8
	call	x2nrealloc
	mov	qword ptr [rbx], rax
.label_196:
	mov	rax, qword ptr [rbx + 0x10]
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 0x10], rcx
	mov	rcx, qword ptr [rbx]
	mov	qword ptr [rcx + rax*8 + 8], r14
	mov	rdi, qword ptr [rbx]
	mov	rsi, qword ptr [rbx + 0x10]
	mov	rdx, qword ptr [rbx + 0x18]
	call	heapify_up
	xor	eax, eax
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x404919
	.globl sub_404919
	.type sub_404919, @function
sub_404919:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404920

	.globl dup_safer_flag
	.type dup_safer_flag, @function
dup_safer_flag:
	and	esi, 0x80000
	mov	eax, 0x406
	cmovne	esi, eax
	mov	edx, 3
	xor	eax, eax
	jmp	rpl_fcntl
	.section	.text
	.align	16
	#Procedure 0x40493a
	.globl sub_40493a
	.type sub_40493a, @function
sub_40493a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404940

	.globl queue_pop
	.type queue_pop, @function
queue_pop:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r15, rdi
	lea	r14, [r15 + 8]
	mov	rdi, r14
	call	pthread_mutex_lock
	mov	rdi, qword ptr [r15]
	call	heap_remove_top
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_198
	lea	r12, [r15 + 0x30]
	nop	dword ptr [rax + rax]
.label_197:
	mov	rdi, r12
	mov	rsi, r14
	call	pthread_cond_wait
	mov	rdi, qword ptr [r15]
	call	heap_remove_top
	mov	rbx, rax
	test	rbx, rbx
	je	.label_197
.label_198:
	mov	rdi, r14
	call	pthread_mutex_unlock
	mov	rdi, rbx
	call	lock_node
	mov	byte ptr [rbx + 0x54], 0
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x4049ae
	.globl sub_4049ae
	.type sub_4049ae, @function
sub_4049ae:

	nop	
.label_199:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x4049b3
	.globl sub_4049b3
	.type sub_4049b3, @function
sub_4049b3:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4049b5

	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:
	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_199
	movabs	rax, 0x3ffffff03ffffff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
	.section	.text
	.align	16
	#Procedure 0x4049d0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_200
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_200
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_200:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	16
	#Procedure 0x4049f6
	.globl sub_4049f6
	.type sub_4049f6, @function
sub_4049f6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404a00

	.globl struct_month_cmp
	.type struct_month_cmp, @function
struct_month_cmp:
	mov	rdi, qword ptr [rdi]
	mov	rsi, qword ptr [rsi]
	jmp	strcmp
	.section	.text
	.align	16
	#Procedure 0x404a0b
	.globl sub_404a0b
	.type sub_404a0b, @function
sub_404a0b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404a10

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
	#Procedure 0x404a46
	.globl sub_404a46
	.type sub_404a46, @function
sub_404a46:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404a50
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	mov	rax, rcx
	mov	rcx, rdx
	mov	rdx, rsi
	mov	rsi, rdi
	xor	edi, edi
	mov	r8, rax
	jmp	quotearg_n_custom_mem
	.section	.text
	.align	16
	#Procedure 0x404a66
	.globl sub_404a66
	.type sub_404a66, @function
sub_404a66:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404a70

	.globl keycompare
	.type keycompare, @function
keycompare:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xff8
	mov	r15,  qword ptr [word ptr [rip + keylist]]
	mov	r13, qword ptr [rdi + 0x10]
	mov	qword ptr [rsp + 0x38], rdi
	mov	rbp, qword ptr [rdi + 0x18]
	mov	r12, qword ptr [rsi + 0x10]
	mov	qword ptr [rsp + 0x40], rsi
	mov	r14, qword ptr [rsi + 0x18]
	mov	byte ptr [rsp + 7], al
	mov	byte ptr [rsp + 6], al
	mov	qword ptr [rsp + 0x48], rax
	jmp	.label_204
	.section	.text
	.align	16
	#Procedure 0x404ab1
	.globl sub_404ab1
	.type sub_404ab1, @function
sub_404ab1:

	nop	word ptr cs:[rax + rax]
.label_244:
	mov	rdi, qword ptr [rsp + 0x38]
	mov	rsi, r15
	call	begfield
	mov	r13, rax
	mov	rdi, qword ptr [rsp + 0x40]
	mov	rsi, r15
	call	begfield
	mov	r12, rax
.label_204:
	mov	rcx, rbp
	mov	rbp, qword ptr [r15 + 0x20]
	mov	rax, qword ptr [r15 + 0x28]
	cmp	r13, rcx
	cmova	rcx, r13
	cmp	r12, r14
	cmova	r14, r12
	mov	qword ptr [rsp + 8], rcx
	sub	rcx, r13
	mov	qword ptr [rsp + 0x18], rcx
	mov	qword ptr [rsp + 0x20], r14
	sub	r14, r12
	cmp	byte ptr [byte ptr [rip + hard_LC_COLLATE]],  0
	mov	qword ptr [rsp + 0x30], rax
	mov	qword ptr [rsp + 0x28], r15
	jne	.label_213
	mov	rdi, r15
	call	key_numeric
	test	al, al
	mov	rax, qword ptr [rsp + 0x30]
	jne	.label_213
	cmp	byte ptr [r15 + 0x36], 0
	jne	.label_213
	cmp	byte ptr [r15 + 0x33], 0
	jne	.label_213
	cmp	byte ptr [r15 + 0x38], 0
	je	.label_235
	nop	dword ptr [rax + rax]
.label_213:
	or	rax, rbp
	setne	byte ptr [rsp + 0x17]
	je	.label_223
	mov	qword ptr [rsp + 0x20], rbp
	mov	rbx, qword ptr [rsp + 0x18]
	lea	rdi, [r14 + rbx + 2]
	cmp	rdi, 0xfa1
	lea	rax, [rsp + 0x50]
	mov	qword ptr [rsp + 8], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x48], rax
	jb	.label_227
	call	xmalloc
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x48], rax
.label_227:
	test	rbx, rbx
	mov	ebp, 0
	je	.label_238
	mov	rbx, qword ptr [rsp + 0x18]
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_255:
	mov	r15, qword ptr [rsp + 0x20]
	test	r15, r15
	je	.label_243
	movsx	edi, byte ptr [r13]
	call	to_uchar
	movzx	eax, al
	cmp	byte ptr [r15 + rax], 0
	jne	.label_225
.label_243:
	movzx	eax, byte ptr [r13]
	mov	r15, qword ptr [rsp + 0x30]
	test	r15, r15
	je	.label_247
	movsx	edi, al
	call	to_uchar
	movzx	eax, al
	movzx	eax, byte ptr [r15 + rax]
.label_247:
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rbp], al
	inc	rbp
.label_225:
	inc	r13
	dec	rbx
	jne	.label_255
.label_238:
	mov	rax, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rsp + 0x18]
	lea	r13, [rax + rcx + 1]
	mov	qword ptr [rsp + 0x18], rbp
	mov	byte ptr [rax + rbp], 0
	test	r14, r14
	mov	r15d, 0
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_201
	xor	r15d, r15d
	nop	dword ptr [rax + rax]
.label_230:
	test	rbp, rbp
	je	.label_216
	movsx	edi, byte ptr [r12]
	call	to_uchar
	movzx	eax, al
	cmp	byte ptr [rbp + rax], 0
	jne	.label_218
.label_216:
	movzx	eax, byte ptr [r12]
	mov	rbx, qword ptr [rsp + 0x30]
	test	rbx, rbx
	je	.label_221
	movsx	edi, al
	call	to_uchar
	movzx	eax, al
	movzx	eax, byte ptr [rbx + rax]
.label_221:
	mov	byte ptr [r13 + r15], al
	inc	r15
.label_218:
	inc	r12
	dec	r14
	jne	.label_230
.label_201:
	mov	byte ptr [r13 + r15], 0
	mov	r14, r15
	mov	rbx, qword ptr [rsp + 0x28]
	mov	r15, qword ptr [rsp + 0x18]
	jmp	.label_233
	.section	.text
	.align	16
	#Procedure 0x404c8c
	.globl sub_404c8c
	.type sub_404c8c, @function
sub_404c8c:

	nop	dword ptr [rax]
.label_223:
	mov	rcx, qword ptr [rsp + 8]
	mov	al, byte ptr [rcx]
	mov	byte ptr [rsp + 7], al
	mov	byte ptr [rcx], 0
	mov	rcx, qword ptr [rsp + 0x20]
	mov	al, byte ptr [rcx]
	mov	byte ptr [rsp + 6], al
	mov	byte ptr [rcx], 0
	mov	qword ptr [rsp + 8], r13
	mov	r13, r12
	mov	r15, qword ptr [rsp + 0x18]
	mov	rbx, qword ptr [rsp + 0x28]
.label_233:
	cmp	byte ptr [rbx + 0x32], 0
	je	.label_246
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, r13
	call	numcompare
	jmp	.label_211
	.section	.text
	.align	16
	#Procedure 0x404cd3
	.globl sub_404cd3
	.type sub_404cd3, @function
sub_404cd3:

	nop	word ptr cs:[rax + rax]
.label_246:
	cmp	byte ptr [rbx + 0x34], 0
	je	.label_242
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, r13
	call	general_numcompare
	jmp	.label_211
.label_242:
	cmp	byte ptr [rbx + 0x35], 0
	je	.label_253
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, r13
	call	human_numcompare
	nop	dword ptr [rax]
.label_211:
	mov	edx, eax
.label_202:
	cmp	byte ptr [rsp + 0x17], 0
	je	.label_207
	mov	rdi, qword ptr [rsp + 0x48]
	mov	ebp, edx
	call	free
	mov	edx, ebp
	jmp	.label_209
	.section	.text
	.align	16
	#Procedure 0x404d29
	.globl sub_404d29
	.type sub_404d29, @function
sub_404d29:

	nop	dword ptr [rax]
.label_207:
	mov	al, byte ptr [rsp + 7]
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r15], al
	mov	al, byte ptr [rsp + 6]
	mov	byte ptr [r13 + r14], al
.label_209:
	test	edx, edx
	jne	.label_205
	mov	r15, rbx
	mov	r15, qword ptr [r15 + 0x40]
	xor	eax, eax
	test	r15, r15
	je	.label_222
	cmp	qword ptr [r15 + 0x10], -1
	je	.label_219
	mov	rdi, qword ptr [rsp + 0x38]
	mov	rsi, r15
	call	limfield
	mov	rbp, rax
	mov	rdi, qword ptr [rsp + 0x40]
	mov	rsi, r15
	call	limfield
	mov	r14, rax
	jmp	.label_251
	.section	.text
	.align	16
	#Procedure 0x404d89
	.globl sub_404d89
	.type sub_404d89, @function
sub_404d89:

	nop	dword ptr [rax]
.label_219:
	mov	rcx, qword ptr [rsp + 0x38]
	mov	rax, qword ptr [rcx]
	mov	rcx, qword ptr [rcx + 8]
	lea	rbp, [rax + rcx - 1]
	mov	rcx, qword ptr [rsp + 0x40]
	mov	rax, qword ptr [rcx]
	mov	rcx, qword ptr [rcx + 8]
	lea	r14, [rax + rcx - 1]
.label_251:
	cmp	qword ptr [r15], -1
	jne	.label_244
	mov	rax, qword ptr [rsp + 0x38]
	mov	r13, qword ptr [rax]
	mov	rax, qword ptr [rsp + 0x40]
	mov	r12, qword ptr [rax]
	cmp	byte ptr [r15 + 0x30], 0
	je	.label_204
	jmp	.label_249
	.section	.text
	.align	16
	#Procedure 0x404dd9
	.globl sub_404dd9
	.type sub_404dd9, @function
sub_404dd9:

	nop	dword ptr [rax]
.label_252:
	inc	r13
.label_249:
	cmp	r13, rbp
	jae	.label_250
	movsx	edi, byte ptr [r13]
	call	to_uchar
	movzx	eax, al
	cmp	byte ptr [byte ptr [rax + blanks]],  0
	jne	.label_252
	jmp	.label_250
.label_208:
	inc	r12
.label_250:
	cmp	r12, r14
	jae	.label_204
	movsx	edi, byte ptr [r12]
	call	to_uchar
	movzx	eax, al
	cmp	byte ptr [byte ptr [rax + blanks]],  0
	jne	.label_208
	jmp	.label_204
.label_253:
	cmp	byte ptr [rbx + 0x36], 0
	je	.label_212
	xor	esi, esi
	mov	rdi, qword ptr [rsp + 8]
	call	getmonth
	mov	ebp, eax
	xor	esi, esi
	mov	rdi, r13
	call	getmonth
	mov	edx, ebp
	sub	edx, eax
	jmp	.label_202
.label_212:
	cmp	byte ptr [rbx + 0x33], 0
	je	.label_239
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, r15
	mov	rdx, r13
	mov	rcx, r14
	call	compare_random
	jmp	.label_211
.label_235:
	mov	rbx, r15
	test	rbp, rbp
	je	.label_229
	test	rax, rax
	jne	.label_232
	jmp	.label_234
.label_239:
	cmp	byte ptr [rbx + 0x38], 0
	je	.label_236
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, r13
	call	filevercmp
	jmp	.label_211
.label_229:
	mov	rbp, qword ptr [rsp + 0x18]
	test	rbp, rbp
	je	.label_240
	mov	edx, 1
	test	r14, r14
	je	.label_205
	cmp	qword ptr [rsp + 0x30], 0
	je	.label_226
	nop	word ptr cs:[rax + rax]
.label_210:
	cmp	r12, qword ptr [rsp + 0x20]
	jae	.label_248
	cmp	r13, qword ptr [rsp + 8]
	jae	.label_248
	movsx	edi, byte ptr [r13]
	inc	r13
	call	to_uchar
	movzx	eax, al
	mov	r15, qword ptr [rsp + 0x30]
	movsx	edi, byte ptr [r15 + rax]
	call	to_uchar
	movzx	ebp, al
	movsx	edi, byte ptr [r12]
	inc	r12
	call	to_uchar
	movzx	eax, al
	movsx	edi, byte ptr [r15 + rax]
	call	to_uchar
	mov	edx, ebp
	movzx	eax, al
	sub	edx, eax
	je	.label_210
	jmp	.label_205
.label_241:
	inc	r13
	inc	r12
.label_232:
	xor	r15d, r15d
	cmp	r13, qword ptr [rsp + 8]
	jae	.label_217
.label_206:
	movsx	edi, byte ptr [r13]
	call	to_uchar
	movzx	eax, al
	mov	r14b, 1
	cmp	byte ptr [rbp + rax], 0
	je	.label_220
	inc	r13
	cmp	r13, qword ptr [rsp + 8]
	jb	.label_206
	xor	r14d, r14d
	jmp	.label_220
.label_217:
	xor	r14d, r14d
	jmp	.label_220
	.section	.text
	.align	16
	#Procedure 0x404f6b
	.globl sub_404f6b
	.type sub_404f6b, @function
sub_404f6b:

	nop	dword ptr [rax + rax]
.label_237:
	inc	r12
.label_220:
	cmp	r12, qword ptr [rsp + 0x20]
	jae	.label_231
	movsx	edi, byte ptr [r12]
	call	to_uchar
	movzx	eax, al
	cmp	byte ptr [rbp + rax], 0
	jne	.label_237
	mov	r15d, 1
	test	r14b, r14b
	je	.label_231
	movsx	edi, byte ptr [r13]
	call	to_uchar
	movzx	eax, al
	mov	rbx, qword ptr [rsp + 0x30]
	movsx	edi, byte ptr [rbx + rax]
	call	to_uchar
	movzx	r14d, al
	movsx	edi, byte ptr [r12]
	call	to_uchar
	movzx	eax, al
	movsx	edi, byte ptr [rbx + rax]
	call	to_uchar
	mov	edx, r14d
	movzx	eax, al
	sub	edx, eax
	mov	rbx, qword ptr [rsp + 0x28]
	je	.label_241
	jmp	.label_205
.label_231:
	movzx	edx, r14b
	sub	edx, r15d
	mov	rbx, qword ptr [rsp + 0x28]
	jmp	.label_209
.label_236:
	test	r15, r15
	je	.label_254
	mov	edx, 1
	test	r14, r14
	je	.label_202
	lea	rsi, [r15 + 1]
	lea	rcx, [r14 + 1]
	mov	rdi, qword ptr [rsp + 8]
	mov	rdx, r13
	call	xmemcoll0
	jmp	.label_211
.label_214:
	inc	r13
	inc	r12
.label_234:
	xor	r14d, r14d
	cmp	r13, qword ptr [rsp + 8]
	jae	.label_215
	nop	dword ptr [rax + rax]
.label_245:
	movsx	edi, byte ptr [r13]
	call	to_uchar
	movzx	eax, al
	mov	r15b, 1
	cmp	byte ptr [rbp + rax], 0
	je	.label_228
	inc	r13
	cmp	r13, qword ptr [rsp + 8]
	jb	.label_245
	xor	r15d, r15d
	jmp	.label_228
.label_215:
	xor	r15d, r15d
	jmp	.label_228
	.section	.text
	.align	16
	#Procedure 0x40506b
	.globl sub_40506b
	.type sub_40506b, @function
sub_40506b:

	nop	dword ptr [rax + rax]
.label_203:
	inc	r12
.label_228:
	cmp	r12, qword ptr [rsp + 0x20]
	jae	.label_224
	movsx	edi, byte ptr [r12]
	call	to_uchar
	movzx	eax, al
	cmp	byte ptr [rbp + rax], 0
	jne	.label_203
	mov	r14d, 1
	test	r15b, r15b
	je	.label_224
	movsx	edi, byte ptr [r13]
	call	to_uchar
	movzx	ebx, al
	movsx	edi, byte ptr [r12]
	call	to_uchar
	mov	edx, ebx
	movzx	eax, al
	sub	edx, eax
	mov	rbx, qword ptr [rsp + 0x28]
	je	.label_214
	jmp	.label_205
.label_224:
	movzx	edx, r15b
	sub	edx, r14d
	mov	rbx, qword ptr [rsp + 0x28]
	jmp	.label_209
.label_240:
	neg	r14
	sbb	edx, edx
	jmp	.label_209
.label_254:
	mov	rax, r14
	neg	rax
	sbb	edx, edx
	jmp	.label_202
.label_226:
	mov	rax, qword ptr [rsp + 0x18]
	cmp	rax, r14
	mov	rdx, r14
	cmovb	rdx, rax
	mov	rdi, r13
	mov	rsi, r12
	call	memcmp
	mov	edx, eax
	test	edx, edx
	jne	.label_205
.label_248:
	xor	eax, eax
	cmp	qword ptr [rsp + 0x18], r14
	setne	cl
	mov	edx, 0xffffffff
	jb	.label_205
	mov	al, cl
	mov	edx, eax
	jmp	.label_209
.label_205:
	mov	eax, edx
	neg	eax
	cmp	byte ptr [rbx + 0x37], 0
	cmove	eax, edx
.label_222:
	add	rsp, 0xff8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405143
	.globl sub_405143
	.type sub_405143, @function
sub_405143:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405150
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	add	edi, -0x20
	cmp	edi, 0x5f
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x40515a
	.globl sub_40515a
	.type sub_40515a, @function
sub_40515a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405160

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
	je	.label_256
	mov	esi, OFFSET FLAT:label_257
	jmp	.label_258
.label_256:
	mov	esi, OFFSET FLAT:label_259
.label_258:
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
	.align	16
	#Procedure 0x4051d0
	.globl timespec_sign
	.type timespec_sign, @function
timespec_sign:

	xor	ecx, ecx
	or	rsi, rdi
	setne	cl
	test	rdi, rdi
	mov	eax, 0xffffffff
	cmovns	eax, ecx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4051e4
	.globl sub_4051e4
	.type sub_4051e4, @function
sub_4051e4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4051f0

	.globl getmonth
	.type getmonth, @function
getmonth:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	qword ptr [rsp + 8], rsi
	mov	r15, rdi
	nop	word ptr cs:[rax + rax]
.label_262:
	mov	r12, r15
	movsx	edi, byte ptr [r12]
	call	to_uchar
	movzx	eax, al
	lea	r15, [r12 + 1]
	cmp	byte ptr [byte ptr [rax + blanks]],  0
	jne	.label_262
	mov	ecx, 0xc
	xor	edx, edx
.label_260:
	lea	rax, [rcx + rdx]
	shr	rax, 1
	mov	rsi, rax
	shl	rsi, 4
	mov	rbp,  qword ptr [word ptr [rsi + monthtab]]
	mov	r14b, byte ptr [rbp]
	test	r14b, r14b
	je	.label_269
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 0x10], rsi
	mov	qword ptr [rsp + 0x20], rdx
	mov	qword ptr [rsp + 0x18], rcx
	mov	r13, -1
	nop	word ptr cs:[rax + rax]
.label_267:
	movsx	edi, byte ptr [r15 + r13]
	call	to_uchar
	movzx	eax, al
	movsx	edi,  byte ptr [byte ptr [rax + fold_toupper]]
	call	to_uchar
	mov	ebx, eax
	movsx	edi, r14b
	call	to_uchar
	cmp	bl, al
	jb	.label_264
	ja	.label_266
	movzx	r14d, byte ptr [rbp + r13 + 2]
	inc	r13
	test	r14b, r14b
	jne	.label_267
	jmp	.label_270
	.section	.text
	.align	16
	#Procedure 0x4052ba
	.globl sub_4052ba
	.type sub_4052ba, @function
sub_4052ba:

	nop	word ptr [rax + rax]
.label_266:
	mov	rax, qword ptr [rsp]
	inc	rax
	mov	rdx, rax
	mov	rcx, qword ptr [rsp + 0x18]
.label_263:
	xor	eax, eax
	cmp	rdx, rcx
	jb	.label_260
	jmp	.label_261
.label_270:
	add	r15, r13
	mov	r12, r15
	mov	rsi, qword ptr [rsp + 0x10]
.label_269:
	mov	rax, qword ptr [rsp + 8]
	test	rax, rax
	je	.label_265
	mov	qword ptr [rax], r12
.label_265:
	mov	eax,  dword ptr [dword ptr [rsi + label_268]]
.label_261:
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
	#Procedure 0x405309
	.globl sub_405309
	.type sub_405309, @function
sub_405309:

	nop	dword ptr [rax]
.label_264:
	mov	rcx, qword ptr [rsp]
	mov	rdx, qword ptr [rsp + 0x20]
	jmp	.label_263
	.section	.text
	.align	16
	#Procedure 0x40531b
	.globl sub_40531b
	.type sub_40531b, @function
sub_40531b:

	nop	dword ptr [rax + rax]
.label_273:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_271
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r14
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 2
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rbx
	call	error
	nop	dword ptr [rax]
.label_281:
	test	r14, r14
	je	.label_274
	mov	edi, 1
	xor	esi, esi
	call	ftruncate
	test	eax, eax
	je	.label_274
	call	__errno_location
	mov	ebp, dword ptr [rax]
	call	get_outstatus
	test	rax, rax
	je	.label_273
	mov	ecx, 0xf000
	and	ecx, dword ptr [rax + 0x18]
	cmp	ecx, 0x8000
	je	.label_273
.label_274:
	mov	rbx,  qword ptr [word ptr [rip + stdout]]
	jmp	.label_272
	.section	.text
	.align	16
	#Procedure 0x40539a

	.globl stream_open
	.type stream_open, @function
stream_open:
	push	rbp
	push	r14
	push	rbx
	mov	rbp, rsi
	mov	r14, rdi
	mov	al, byte ptr [rbp]
	cmp	al, 0x77
	je	.label_281
	cmp	al, 0x72
	jne	.label_282
	cmp	byte ptr [r14], 0x2d
	jne	.label_276
	cmp	byte ptr [r14 + 1], 0
	je	.label_280
.label_276:
	xor	ebx, ebx
	mov	esi, 0x80000
	xor	eax, eax
	mov	rdi, r14
	call	open
	test	eax, eax
	js	.label_275
	mov	edi, eax
	mov	rsi, rbp
	call	fdopen
	mov	rbx, rax
	jmp	.label_275
.label_280:
	mov	byte ptr [byte ptr [rip + have_read_stdin]],  1
	mov	rbx,  qword ptr [word ptr [rip + stdin]]
.label_275:
	mov	esi, 2
	mov	rdi, rbx
	call	fadvise
.label_272:
	mov	rax, rbx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_282:
	mov	edi, OFFSET FLAT:label_277
	mov	esi, OFFSET FLAT:label_278
	mov	edx, 0x3d6
	mov	ecx, OFFSET FLAT:label_279
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x405420
	.globl heap_free
	.type heap_free, @function
heap_free:

	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rdi, rbx
	pop	rbx
	jmp	free
	.section	.text
	.align	16
	#Procedure 0x405435
	.globl sub_405435
	.type sub_405435, @function
sub_405435:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405440

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
	mov	r13, rsi
	mov	r15, rdi
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_283
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbx, qword ptr [r15]
	test	rbx, rbx
	je	.label_289
	xor	r12d, r12d
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_285:
	test	rbp, rbp
	je	.label_287
	mov	rdi, r12
	mov	rsi, r13
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	je	.label_284
.label_287:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, qword ptr [r15 + rbp*8]
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_290
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	r12, r13
	jmp	.label_286
	.section	.text
	.align	16
	#Procedure 0x4054d3
	.globl sub_4054d3
	.type sub_4054d3, @function
sub_4054d3:

	nop	word ptr cs:[rax + rax]
.label_284:
	mov	rax,  qword ptr [word ptr [rip + stderr]]
	mov	qword ptr [rsp], rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_288
	xor	eax, eax
	mov	rdi, qword ptr [rsp]
	call	__fprintf_chk
.label_286:
	mov	rbx, qword ptr [r15 + rbp*8 + 8]
	inc	rbp
	add	r13, r14
	test	rbx, rbx
	jne	.label_285
.label_289:
	mov	rsi,  qword ptr [word ptr [rip + stderr]]
	mov	edi, 0xa
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	putc_unlocked
	.section	.text
	.align	16
	#Procedure 0x40553e
	.globl sub_40553e
	.type sub_40553e, @function
sub_40553e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x405540

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
	je	.label_291
	test	ecx, ecx
	cmove	rbx, qword ptr [rsp + 8]
	mov	rax, rbx
.label_291:
	add	rsp, 0x10
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40556c
	.globl sub_40556c
	.type sub_40556c, @function
sub_40556c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405570

	.globl physmem_total
	.type physmem_total, @function
physmem_total:
	push	rbx
	sub	rsp, 0x70
	mov	edi, 0x55
	call	sysconf
	mov	rbx, rax
	mov	edi, 0x1e
	call	sysconf
	mov	rcx, rax
	or	rcx, rbx
	js	.label_294
	cvtsi2sd	xmm1, rax
	cvtsi2sd	xmm0, rbx
.label_293:
	mulsd	xmm0, xmm1
	jmp	.label_296
.label_294:
	lea	rdi, [rsp]
	call	sysinfo
	test	eax, eax
	je	.label_295
	movsd	xmm0,  qword ptr [word ptr [rip + label_292]]
.label_296:
	add	rsp, 0x70
	pop	rbx
	ret	
.label_295:
	movq	xmm0, qword ptr [rsp + 0x20]
	punpckldq	xmm0,  xmmword ptr [word ptr [rip + label_91]]
	subpd	xmm0,  xmmword ptr [word ptr [rip + label_92]]
	pshufd	xmm1, xmm0, 0x4e
	addpd	xmm1, xmm0
	mov	eax, dword ptr [rsp + 0x68]
	xorps	xmm0, xmm0
	cvtsi2sd	xmm0, rax
	jmp	.label_293
	.section	.text
	.align	16
	#Procedure 0x4055ec
	.globl sub_4055ec
	.type sub_4055ec, @function
sub_4055ec:

	nop	dword ptr [rax]
.label_302:
	shr	rdi, 1
	or	rax, rdi
	cvtsi2ss	xmm0, rax
	addss	xmm0, xmm0
.label_301:
	divss	xmm0, dword ptr [rsi + 8]
	movss	xmm1,  dword ptr [dword ptr [rip + label_297]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rdi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rdi, rcx
	xor	eax, eax
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_298]]
	jae	.label_299
.label_300:
	push	rax
	call	next_prime
	mov	rcx, rax
	xor	eax, eax
	mov	rdx, rcx
	shr	rdx, 0x3c
	cmove	rax, rcx
	add	rsp, 8
.label_299:
	ret	
	.section	.text
	.align	16
	#Procedure 0x405657
	.globl sub_405657
	.type sub_405657, @function
sub_405657:

	nop	
	.section	.text
	.align	16
	#Procedure 0x405659

	.globl compute_bucket_size
	.type compute_bucket_size, @function
compute_bucket_size:
	cmp	byte ptr [rsi + 0x10], 0
	jne	.label_300
	mov	eax, edi
	and	eax, 1
	test	rdi, rdi
	js	.label_302
	cvtsi2ss	xmm0, rdi
	jmp	.label_301
	.section	.text
	.align	16
	#Procedure 0x405670

	.globl hash_get_n_buckets_used
	.type hash_get_n_buckets_used, @function
hash_get_n_buckets_used:
	mov	rax, qword ptr [rdi + 0x18]
	ret	
	.section	.text
	.align	16
	#Procedure 0x405675
	.globl sub_405675
	.type sub_405675, @function
sub_405675:

	nop	word ptr cs:[rax + rax]
.label_304:
	call	__errno_location
	mov	dword ptr [rax], 0
	xor	eax, eax
.label_305:
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
	#Procedure 0x40569c
	.globl sub_40569c
	.type sub_40569c, @function
sub_40569c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4056a3

	.globl memcoll
	.type memcoll, @function
memcoll:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rcx
	mov	r14, rdx
	mov	rbx, rsi
	mov	r12, rdi
	cmp	rbx, r15
	jne	.label_303
	mov	rdi, r12
	mov	rsi, r14
	mov	rdx, rbx
	call	memcmp
	test	eax, eax
	je	.label_304
.label_303:
	mov	bpl, byte ptr [r12 + rbx]
	mov	r13b, byte ptr [r14 + r15]
	mov	byte ptr [r12 + rbx], 0
	mov	byte ptr [r14 + r15], 0
	lea	rsi, [rbx + 1]
	lea	rcx, [r15 + 1]
	mov	rdi, r12
	mov	rdx, r14
	call	strcoll_loop
	mov	byte ptr [r12 + rbx], bpl
	mov	byte ptr [r14 + r15], r13b
	jmp	.label_305
	.section	.text
	.align	16
	#Procedure 0x405700

	.globl specify_nthreads
	.type specify_nthreads, @function
specify_nthreads:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x10
	mov	rbx, rdx
	mov	ebp, esi
	mov	r14d, edi
	lea	rcx, [rsp + 8]
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:label_166
	mov	rdi, rbx
	call	xstrtoul
	test	eax, eax
	je	.label_307
	mov	rcx, -1
	cmp	eax, 1
	je	.label_309
	movsx	edx, bpl
	mov	ecx, OFFSET FLAT:long_options
	mov	edi, eax
	mov	esi, r14d
	mov	r8, rbx
	call	xstrtol_fatal
.label_308:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_306
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 2
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	nop	dword ptr [rax + rax]
.label_307:
	mov	rcx, qword ptr [rsp + 8]
	test	rcx, rcx
	je	.label_308
.label_309:
	mov	rax, rcx
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405790

	.globl isaac_seed
	.type isaac_seed, @function
isaac_seed:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	movabs	rbp, 0x647c4677a2884b7c
	movabs	r15, 0xb9f8b322c73ac862
	movabs	r14, 0x8c0ea5053d4712a0
	movabs	rbx, 0xb29b2e824a595524
	movabs	r13, 0x82f053db8355e0ce
	movabs	rdx, 0x48fe4a0fa5a09315
	movabs	rax, 0xae985bf2cbfc89ed
	movabs	r12, 0x98f5704f6c44c0ab
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x28], rdi
	nop	word ptr cs:[rax + rax]
.label_310:
	mov	qword ptr [rsp + 0x20], rcx
	add	rbp, qword ptr [rdi + rcx*8]
	add	r15, qword ptr [rdi + rcx*8 + 8]
	add	r14, qword ptr [rdi + rcx*8 + 0x10]
	add	rbx, qword ptr [rdi + rcx*8 + 0x18]
	add	r13, qword ptr [rdi + rcx*8 + 0x20]
	add	rdx, qword ptr [rdi + rcx*8 + 0x28]
	mov	qword ptr [rsp], rdx
	add	rax, qword ptr [rdi + rcx*8 + 0x30]
	mov	qword ptr [rsp + 8], rax
	add	r12, qword ptr [rdi + rcx*8 + 0x38]
	sub	rbp, r13
	mov	rdi, r12
	call	just
	shr	rax, 9
	xor	rax, qword ptr [rsp]
	mov	qword ptr [rsp], rax
	add	r12, rbp
	sub	r15, rax
	lea	rax, [r15 + rbp]
	mov	qword ptr [rsp + 0x18], rax
	shl	rbp, 9
	xor	rbp, qword ptr [rsp + 8]
	mov	qword ptr [rsp + 8], rbp
	sub	r14, rbp
	mov	rdi, r15
	call	just
	shr	rax, 0x17
	xor	r12, rax
	add	r15, r14
	mov	qword ptr [rsp + 0x30], r15
	sub	rbx, r12
	lea	rax, [rbx + r14]
	mov	qword ptr [rsp + 0x10], rax
	shl	r14, 0xf
	mov	rbp, r14
	xor	rbp, qword ptr [rsp + 0x18]
	sub	r13, rbp
	mov	rdi, rbx
	call	just
	mov	r15, rax
	shr	r15, 0xe
	xor	r15, qword ptr [rsp + 0x30]
	add	rbx, r13
	mov	qword ptr [rsp + 0x18], rbx
	mov	rdi, qword ptr [rsp]
	sub	rdi, r15
	mov	qword ptr [rsp], rdi
	mov	r14, r13
	shl	r14, 0x14
	xor	r14, qword ptr [rsp + 0x10]
	add	r13, rdi
	mov	qword ptr [rsp + 0x10], r13
	mov	r13, qword ptr [rsp + 8]
	sub	r13, r14
	call	just
	mov	rcx, qword ptr [rsp + 0x20]
	mov	rdi, qword ptr [rsp + 0x28]
	mov	rbx, rax
	shr	rbx, 0x11
	xor	rbx, qword ptr [rsp + 0x18]
	mov	rdx, qword ptr [rsp]
	mov	rax, r13
	add	rdx, rax
	sub	r12, rbx
	shl	r13, 0xe
	xor	r13, qword ptr [rsp + 0x10]
	add	rax, r12
	mov	qword ptr [rdi + rcx*8], rbp
	mov	qword ptr [rdi + rcx*8 + 8], r15
	mov	qword ptr [rdi + rcx*8 + 0x10], r14
	mov	qword ptr [rdi + rcx*8 + 0x18], rbx
	mov	qword ptr [rdi + rcx*8 + 0x20], r13
	mov	qword ptr [rdi + rcx*8 + 0x28], rdx
	mov	qword ptr [rdi + rcx*8 + 0x30], rax
	mov	qword ptr [rdi + rcx*8 + 0x38], r12
	add	rcx, 8
	cmp	rcx, 0x100
	jl	.label_310
	xor	ecx, ecx
	nop	
.label_311:
	mov	qword ptr [rsp + 0x20], rcx
	add	rbp, qword ptr [rdi + rcx*8]
	add	r15, qword ptr [rdi + rcx*8 + 8]
	add	r14, qword ptr [rdi + rcx*8 + 0x10]
	add	rbx, qword ptr [rdi + rcx*8 + 0x18]
	add	r13, qword ptr [rdi + rcx*8 + 0x20]
	add	rdx, qword ptr [rdi + rcx*8 + 0x28]
	mov	qword ptr [rsp], rdx
	add	rax, qword ptr [rdi + rcx*8 + 0x30]
	mov	qword ptr [rsp + 8], rax
	add	r12, qword ptr [rdi + rcx*8 + 0x38]
	sub	rbp, r13
	mov	rdi, r12
	call	just
	shr	rax, 9
	xor	rax, qword ptr [rsp]
	mov	qword ptr [rsp], rax
	add	r12, rbp
	sub	r15, rax
	lea	rax, [r15 + rbp]
	mov	qword ptr [rsp + 0x18], rax
	shl	rbp, 9
	xor	rbp, qword ptr [rsp + 8]
	sub	r14, rbp
	mov	rdi, r15
	call	just
	shr	rax, 0x17
	xor	rax, r12
	add	r15, r14
	sub	rbx, rax
	mov	r12, rax
	lea	rax, [rbx + r14]
	mov	qword ptr [rsp + 0x10], rax
	shl	r14, 0xf
	xor	r14, qword ptr [rsp + 0x18]
	mov	qword ptr [rsp + 8], r14
	sub	r13, r14
	mov	rdi, rbx
	call	just
	shr	rax, 0xe
	xor	r15, rax
	add	rbx, r13
	mov	rdi, qword ptr [rsp]
	sub	rdi, r15
	mov	qword ptr [rsp], rdi
	mov	r14, r13
	shl	r14, 0x14
	xor	r14, qword ptr [rsp + 0x10]
	add	r13, rdi
	sub	rbp, r14
	call	just
	mov	rcx, qword ptr [rsp + 0x20]
	mov	rdi, qword ptr [rsp + 0x28]
	shr	rax, 0x11
	xor	rbx, rax
	mov	rdx, qword ptr [rsp]
	add	rdx, rbp
	sub	r12, rbx
	mov	rax, rbp
	shl	rax, 0xe
	xor	r13, rax
	add	rbp, r12
	mov	rsi, qword ptr [rsp + 8]
	mov	qword ptr [rdi + rcx*8], rsi
	mov	qword ptr [rdi + rcx*8 + 8], r15
	mov	qword ptr [rdi + rcx*8 + 0x10], r14
	mov	qword ptr [rdi + rcx*8 + 0x18], rbx
	mov	qword ptr [rdi + rcx*8 + 0x20], r13
	mov	qword ptr [rdi + rcx*8 + 0x28], rdx
	mov	qword ptr [rdi + rcx*8 + 0x30], rbp
	mov	qword ptr [rdi + rcx*8 + 0x38], r12
	add	rcx, 8
	cmp	rcx, 0x100
	mov	rax, rbp
	mov	rbp, rsi
	jl	.label_311
	xorps	xmm0, xmm0
	movups	xmmword ptr [rdi + 0x800], xmm0
	mov	qword ptr [rdi + 0x810], 0
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405aac
	.globl sub_405aac
	.type sub_405aac, @function
sub_405aac:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405ab0

	.globl sighandler
	.type sighandler, @function
sighandler:
	push	rbx
	mov	ebx, edi
	call	cleanup
	xor	esi, esi
	mov	edi, ebx
	call	signal
	mov	edi, ebx
	pop	rbx
	jmp	raise
	.section	.text
	.align	16
	#Procedure 0x405ac9
	.globl sub_405ac9
	.type sub_405ac9, @function
sub_405ac9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405ad0

	.globl rpl_nanosleep
	.type rpl_nanosleep, @function
rpl_nanosleep:
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x10
	mov	r15, rsi
	cmp	qword ptr [rdi + 8], 0x3b9aca00
	jb	.label_312
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	eax, 0xffffffff
	jmp	.label_314
.label_312:
	mov	rbx, qword ptr [rdi]
	mov	rcx, qword ptr [rdi + 8]
	lea	r14, [rsp]
	nop	word ptr cs:[rax + rax]
.label_315:
	mov	qword ptr [rsp + 8], rcx
	cmp	rbx, 0x1fa401
	jl	.label_313
	mov	qword ptr [rsp], 0x1fa400
	mov	rdi, r14
	mov	rsi, r15
	call	nanosleep
	add	rbx, -0x1fa400
	test	eax, eax
	mov	ecx, 0
	je	.label_315
	test	r15, r15
	je	.label_314
	add	qword ptr [r15], rbx
	jmp	.label_314
.label_313:
	mov	qword ptr [rsp], rbx
	lea	rdi, [rsp]
	mov	rsi, r15
	call	nanosleep
.label_314:
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x405b65
	.globl sub_405b65
	.type sub_405b65, @function
sub_405b65:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405b70

	.globl mergelines_node
	.type mergelines_node, @function
mergelines_node:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rcx
	mov	r12, rdx
	mov	r14, rsi
	mov	rbx, rdi
	mov	rax, qword ptr [rbx]
	mov	qword ptr [rsp], rax
	mov	r13, qword ptr [rbx + 8]
	mov	eax, dword ptr [rbx + 0x50]
	lea	ecx, [rax + rax + 2]
	shr	r14, cl
	inc	r14
	cmp	eax, 1
	jbe	.label_323
	mov	rdi, qword ptr [rbx]
	mov	rax, qword ptr [rbx + 0x20]
	mov	rbp, qword ptr [rax]
	jmp	.label_324
.label_320:
	movups	xmm0, xmmword ptr [rax - 0x20]
	movups	xmm1, xmmword ptr [rax - 0x10]
	movups	xmmword ptr [rbp - 0x10], xmm1
	movups	xmmword ptr [rbp - 0x20], xmm0
	add	rbp, -0x20
	mov	rdi, qword ptr [rbx]
.label_324:
	cmp	rdi, qword ptr [rbx + 0x10]
	je	.label_326
	mov	rsi, qword ptr [rbx + 8]
	cmp	rsi, qword ptr [rbx + 0x18]
	je	.label_326
	test	r14, r14
	lea	r14, [r14 - 1]
	je	.label_326
	add	rdi, -0x20
	add	rsi, -0x20
	call	compare
	test	eax, eax
	jle	.label_333
	mov	rax, qword ptr [rbx + 8]
	lea	rcx, [rax - 0x20]
	mov	qword ptr [rbx + 8], rcx
	jmp	.label_320
	.section	.text
	.align	16
	#Procedure 0x405c0b
	.globl sub_405c0b
	.type sub_405c0b, @function
sub_405c0b:

	nop	dword ptr [rax + rax]
.label_333:
	mov	rax, qword ptr [rbx]
	lea	rcx, [rax - 0x20]
	mov	qword ptr [rbx], rcx
	jmp	.label_320
.label_323:
	mov	rdi, qword ptr [rbx]
	cmp	rdi, qword ptr [rbx + 0x10]
	je	.label_322
	nop	word ptr cs:[rax + rax]
.label_318:
	mov	rbp, r14
	mov	rsi, qword ptr [rbx + 8]
	cmp	rsi, qword ptr [rbx + 0x18]
	je	.label_319
	test	rbp, rbp
	je	.label_327
	add	rdi, -0x20
	add	rsi, -0x20
	call	compare
	test	eax, eax
	jle	.label_328
	mov	rdi, qword ptr [rbx + 8]
	add	rdi, -0x20
	mov	qword ptr [rbx + 8], rdi
	jmp	.label_329
	.section	.text
	.align	16
	#Procedure 0x405c61
	.globl sub_405c61
	.type sub_405c61, @function
sub_405c61:

	nop	word ptr cs:[rax + rax]
.label_328:
	mov	rdi, qword ptr [rbx]
	add	rdi, -0x20
	mov	qword ptr [rbx], rdi
.label_329:
	mov	rsi, r12
	mov	rdx, r15
	call	write_unique
	lea	r14, [rbp - 1]
	mov	rdi, qword ptr [rbx]
	cmp	rdi, qword ptr [rbx + 0x10]
	jne	.label_318
.label_327:
	dec	rbp
.label_319:
	mov	r14, rbp
.label_322:
	mov	rax, r13
	sub	rax, qword ptr [rbx + 8]
	sar	rax, 5
	cmp	qword ptr [rbx + 0x30], rax
	jne	.label_321
	test	r14, r14
	je	.label_317
	mov	rdi, qword ptr [rbx]
	cmp	rdi, qword ptr [rbx + 0x10]
	je	.label_317
	mov	ebp, 1
	sub	rbp, r14
	nop	dword ptr [rax + rax]
.label_331:
	add	rdi, -0x20
	mov	qword ptr [rbx], rdi
	mov	rsi, r12
	mov	rdx, r15
	call	write_unique
	test	rbp, rbp
	je	.label_317
	mov	rdi, qword ptr [rbx]
	inc	rbp
	cmp	rdi, qword ptr [rbx + 0x10]
	jne	.label_331
	jmp	.label_317
.label_326:
	mov	rax, r13
	sub	rax, qword ptr [rbx + 8]
	sar	rax, 5
	cmp	qword ptr [rbx + 0x30], rax
	jne	.label_334
	test	r14, r14
	je	.label_316
	mov	rcx, qword ptr [rbx]
	cmp	rcx, qword ptr [rbx + 0x10]
	je	.label_316
	mov	eax, 1
	sub	rax, r14
	nop	
.label_330:
	lea	rdx, [rcx - 0x20]
	mov	qword ptr [rbx], rdx
	movups	xmm0, xmmword ptr [rcx - 0x20]
	movups	xmm1, xmmword ptr [rcx - 0x10]
	movups	xmmword ptr [rbp - 0x10], xmm1
	movups	xmmword ptr [rbp - 0x20], xmm0
	lea	rbp, [rbp - 0x20]
	test	rax, rax
	je	.label_316
	mov	rcx, qword ptr [rbx]
	inc	rax
	cmp	rcx, qword ptr [rbx + 0x10]
	jne	.label_330
	jmp	.label_316
.label_321:
	mov	rax, qword ptr [rsp]
	sub	rax, qword ptr [rbx]
	sar	rax, 5
	cmp	qword ptr [rbx + 0x28], rax
	jne	.label_317
	test	r14, r14
	je	.label_317
	mov	rdi, qword ptr [rbx + 8]
	cmp	rdi, qword ptr [rbx + 0x18]
	je	.label_317
	mov	ebp, 1
	sub	rbp, r14
	nop	dword ptr [rax]
.label_325:
	add	rdi, -0x20
	mov	qword ptr [rbx + 8], rdi
	mov	rsi, r12
	mov	rdx, r15
	call	write_unique
	test	rbp, rbp
	je	.label_317
	mov	rdi, qword ptr [rbx + 8]
	inc	rbp
	cmp	rdi, qword ptr [rbx + 0x18]
	jne	.label_325
	jmp	.label_317
.label_334:
	mov	rax, qword ptr [rsp]
	sub	rax, qword ptr [rbx]
	sar	rax, 5
	cmp	qword ptr [rbx + 0x28], rax
	jne	.label_316
	test	r14, r14
	je	.label_316
	mov	rcx, qword ptr [rbx + 8]
	cmp	rcx, qword ptr [rbx + 0x18]
	je	.label_316
	mov	eax, 1
	sub	rax, r14
	nop	
.label_332:
	lea	rdx, [rcx - 0x20]
	mov	qword ptr [rbx + 8], rdx
	movups	xmm0, xmmword ptr [rcx - 0x20]
	movups	xmm1, xmmword ptr [rcx - 0x10]
	movups	xmmword ptr [rbp - 0x10], xmm1
	movups	xmmword ptr [rbp - 0x20], xmm0
	lea	rbp, [rbp - 0x20]
	test	rax, rax
	je	.label_316
	mov	rcx, qword ptr [rbx + 8]
	inc	rax
	cmp	rcx, qword ptr [rbx + 0x18]
	jne	.label_332
.label_316:
	mov	rax, qword ptr [rbx + 0x20]
	mov	qword ptr [rax], rbp
.label_317:
	mov	rax, qword ptr [rsp]
	sub	rax, qword ptr [rbx]
	sar	rax, 5
	sub	r13, qword ptr [rbx + 8]
	sar	r13, 5
	sub	qword ptr [rbx + 0x28], rax
	sub	qword ptr [rbx + 0x30], r13
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
	#Procedure 0x405e4f
	.globl sub_405e4f
	.type sub_405e4f, @function
sub_405e4f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x405e50

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
	mov	r13, r8
	mov	r14d, edx
	mov	rbp, rsi
	mov	rbx, rdi
	cmp	r14d, 0x25
	jae	.label_344
	mov	qword ptr [rsp + 8], rcx
	call	__errno_location
	mov	r12, rax
	mov	dword ptr [r12], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_341:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_341
	test	rbp, rbp
	lea	rsi, [rsp + 0x10]
	cmovne	rsi, rbp
	mov	r15d, 4
	cmp	al, 0x2d
	je	.label_338
	mov	rdi, rbx
	mov	edx, r14d
	mov	r14, rsi
	call	strtoul
	mov	rcx, r14
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rcx]
	cmp	rax, rbx
	je	.label_345
	mov	eax, dword ptr [r12]
	xor	r12d, r12d
	test	eax, eax
	mov	rbp, r13
	je	.label_351
	cmp	eax, 0x22
	jne	.label_338
	mov	r12d, 1
.label_351:
	test	rbp, rbp
	jne	.label_336
	jmp	.label_337
.label_345:
	mov	rbp, r13
	test	rbp, rbp
	je	.label_338
	movsx	esi, byte ptr [rax]
	test	esi, esi
	je	.label_338
	mov	rdi, rbp
	call	strchr
	mov	rcx, r14
	test	rax, rax
	je	.label_338
	mov	qword ptr [rsp], 1
	xor	r12d, r12d
.label_336:
	mov	rax, qword ptr [rcx]
	movsx	ebx, byte ptr [rax]
	test	ebx, ebx
	je	.label_337
	mov	rdi, rbp
	mov	esi, ebx
	call	strchr
	test	rax, rax
	je	.label_349
	mov	r15d, 0x400
	mov	r13d, 1
	add	ebx, -0x45
	cmp	ebx, 0x2f
	ja	.label_350
	movabs	rax, 0x814400308945
	bt	rax, rbx
	jae	.label_350
	mov	esi, 0x30
	mov	rdi, rbp
	call	strchr
	mov	r13d, 1
	mov	rsi, r14
	test	rax, rax
	je	.label_339
	mov	rax, qword ptr [rsi]
	movsx	ecx, byte ptr [rax + 1]
	mov	r13d, 1
	cmp	ecx, 0x42
	je	.label_342
	cmp	ecx, 0x44
	je	.label_342
	cmp	ecx, 0x69
	jne	.label_339
	xor	ecx, ecx
	cmp	byte ptr [rax + 2], 0x42
	sete	cl
	lea	r13, [rcx + rcx + 1]
	jmp	.label_339
.label_342:
	mov	r15d, 0x3e8
	mov	r13d, 2
	jmp	.label_339
.label_350:
	mov	rsi, r14
.label_339:
	mov	rax, qword ptr [rsi]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x42
	cmp	ecx, 0x35
	ja	.label_349
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_352]]
.label_1662:
	lea	rdi, [rsp]
	mov	edx, 3
	jmp	.label_340
.label_349:
	mov	rax, qword ptr [rsp]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
	or	r12d, 2
	jmp	.label_335
.label_1663:
	lea	rdi, [rsp]
	mov	edx, 1
	jmp	.label_340
.label_1664:
	lea	rdi, [rsp]
	mov	edx, 2
	jmp	.label_340
.label_1666:
	lea	rdi, [rsp]
	mov	edx, 4
	jmp	.label_340
.label_1660:
	lea	rdi, [rsp]
	mov	esi, 0x400
	call	bkm_scale
	jmp	.label_343
.label_1661:
	lea	rdi, [rsp]
	mov	edx, 6
	jmp	.label_340
.label_1665:
	lea	rdi, [rsp]
	mov	edx, 5
	jmp	.label_340
.label_1667:
	lea	rdi, [rsp]
	mov	edx, 8
	jmp	.label_340
.label_1668:
	lea	rdi, [rsp]
	mov	edx, 7
.label_340:
	mov	esi, r15d
	call	bkm_scale_by_power
.label_343:
	mov	rsi, r14
.label_1670:
	or	eax, r12d
	mov	rcx, qword ptr [rsi]
	lea	rdx, [rcx + r13]
	mov	qword ptr [rsi], rdx
	mov	r12d, eax
	or	r12d, 2
	cmp	byte ptr [rcx + r13], 0
	cmove	r12d, eax
.label_337:
	mov	rax, qword ptr [rsp]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
.label_335:
	mov	r15d, r12d
.label_338:
	mov	eax, r15d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1669:
	lea	rdi, [rsp]
	mov	esi, 0x200
	call	bkm_scale
	jmp	.label_343
.label_1671:
	lea	rdi, [rsp]
	mov	esi, 2
	call	bkm_scale
	jmp	.label_343
.label_344:
	mov	edi, OFFSET FLAT:label_346
	mov	esi, OFFSET FLAT:label_347
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_348
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x4060f2
	.globl sub_4060f2
	.type sub_4060f2, @function
sub_4060f2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406100

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	.section	.text
	.align	16
	#Procedure 0x406109
	.globl sub_406109
	.type sub_406109, @function
sub_406109:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406110

	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x38
	mov	r14, r8
	mov	rbx, rcx
	mov	ebp, edi
	mov	rax,  qword ptr [word ptr [rip + label_353]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_354]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_355]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	lea	r15, [rsp]
	mov	rdi, r15
	call	set_custom_quoting
	mov	edi, ebp
	mov	rsi, rbx
	mov	rdx, r14
	mov	rcx, r15
	call	quotearg_n_options
	add	rsp, 0x38
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406178
	.globl sub_406178
	.type sub_406178, @function
sub_406178:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406180

	.globl md5_read_ctx
	.type md5_read_ctx, @function
md5_read_ctx:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	mov	esi, dword ptr [r14]
	mov	rdi, rbx
	call	set_uint32
	lea	rdi, [rbx + 4]
	mov	esi, dword ptr [r14 + 4]
	call	set_uint32
	lea	rdi, [rbx + 8]
	mov	esi, dword ptr [r14 + 8]
	call	set_uint32
	lea	rdi, [rbx + 0xc]
	mov	esi, dword ptr [r14 + 0xc]
	call	set_uint32
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x4061c7
	.globl sub_4061c7
	.type sub_4061c7, @function
sub_4061c7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4061d0
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
	#Procedure 0x406203
	.globl sub_406203
	.type sub_406203, @function
sub_406203:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406210

	.globl queue_check_insert
	.type queue_check_insert, @function
queue_check_insert:
	cmp	byte ptr [rsi + 0x54], 0
	jne	.label_356
	mov	rcx, qword ptr [rsi]
	mov	rax, qword ptr [rsi + 8]
	cmp	rcx, qword ptr [rsi + 0x10]
	mov	rcx, qword ptr [rsi + 0x18]
	jne	.label_358
	cmp	rax, rcx
	je	.label_356
	cmp	qword ptr [rsi + 0x28], 0
	jne	.label_356
	jmp	.label_357
.label_358:
	cmp	rax, rcx
	jne	.label_357
	cmp	qword ptr [rsi + 0x30], 0
	je	.label_357
.label_356:
	ret	
.label_357:
	jmp	queue_insert
	.section	.text
	.align	16
	#Procedure 0x406247
	.globl sub_406247
	.type sub_406247, @function
sub_406247:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406250

	.globl set_uint32
	.type set_uint32, @function
set_uint32:
	mov	dword ptr [rdi], esi
	ret	
	.section	.text
	.align	16
	#Procedure 0x406253
	.globl sub_406253
	.type sub_406253, @function
sub_406253:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406260
	.globl rotl32
	.type rotl32, @function
rotl32:

	mov	ecx, esi
	rol	edi, cl
	mov	eax, edi
	ret	
	.section	.text
	.align	16
	#Procedure 0x406267
	.globl sub_406267
	.type sub_406267, @function
sub_406267:

	nop	word ptr [rax + rax]
.label_360:
	mov	rdi, qword ptr [rdi + 0x40]
.label_361:
	test	rdi, rdi
	je	.label_359
	movzx	eax, byte ptr [rdi + 0x32]
	movzx	ecx, byte ptr [rdi + 0x34]
	add	ecx, eax
	movzx	eax, byte ptr [rdi + 0x35]
	add	eax, ecx
	movzx	ecx, byte ptr [rdi + 0x36]
	add	ecx, eax
	movzx	eax, byte ptr [rdi + 0x33]
	or	al, byte ptr [rdi + 0x38]
	cmp	qword ptr [rdi + 0x20], 0
	setne	dl
	or	dl, al
	movzx	eax, dl
	add	eax, ecx
	cmp	eax, 2
	jb	.label_360
	push	rbx
	sub	rsp, 0x20
	mov	byte ptr [rdi + 0x37], 0
	mov	word ptr [rdi + 0x30], 0
	lea	rbx, [rsp]
	mov	rsi, rbx
	call	key_to_opts
	mov	rdi, rbx
	call	incompatible_options
.label_359:
	ret	
	.section	.text
	.align	16
	#Procedure 0x4062ce
	.globl sub_4062ce
	.type sub_4062ce, @function
sub_4062ce:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4062d0

	.globl check_ordering_compatibility
	.type check_ordering_compatibility, @function
check_ordering_compatibility:
	mov	rdi,  qword ptr [word ptr [rip + keylist]]
	jmp	.label_361
	.section	.text
	.align	16
	#Procedure 0x4062d9
	.globl sub_4062d9
	.type sub_4062d9, @function
sub_4062d9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4062e0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x4062e8
	.globl sub_4062e8
	.type sub_4062e8, @function
sub_4062e8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4062f0
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
	mov	r8d, dword ptr [rbp]
	mov	r9d, dword ptr [rbp + 4]
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
	#Procedure 0x406362
	.globl sub_406362
	.type sub_406362, @function
sub_406362:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406370

	.globl verrevcmp
	.type verrevcmp, @function
verrevcmp:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	qword ptr [rsp + 0x18], rcx
	mov	qword ptr [rsp + 0x10], rdx
	mov	qword ptr [rsp + 0x20], rsi
	mov	qword ptr [rsp + 8], rdi
	xor	r12d, r12d
	xor	r14d, r14d
.label_367:
	cmp	r12, qword ptr [rsp + 0x18]
	jb	.label_365
	cmp	r14, qword ptr [rsp + 0x20]
	jae	.label_373
.label_365:
	lea	r13, [r14 - 1]
	lea	r15, [r12 - 1]
	jmp	.label_370
	.section	.text
	.align	16
	#Procedure 0x4063b5
	.globl sub_4063b5
	.type sub_4063b5, @function
sub_4063b5:

	nop	word ptr cs:[rax + rax]
.label_372:
	inc	r14
	inc	r12
	inc	r13
	inc	r15
.label_370:
	cmp	r14, qword ptr [rsp + 0x20]
	jae	.label_375
	mov	rax, qword ptr [rsp + 8]
	movsx	edi, byte ptr [rax + r14]
	call	c_isdigit
	test	al, al
	je	.label_379
.label_375:
	cmp	r12, qword ptr [rsp + 0x18]
	jae	.label_380
	mov	rax, qword ptr [rsp + 0x10]
	movsx	edi, byte ptr [rax + r12]
	call	c_isdigit
	test	al, al
	jne	.label_380
.label_379:
	xor	ebx, ebx
	cmp	qword ptr [rsp + 0x20], r14
	mov	ebp, 0
	je	.label_362
	mov	rax, qword ptr [rsp + 8]
	movzx	edi, byte ptr [rax + r14]
	call	order
	mov	ebp, eax
.label_362:
	cmp	qword ptr [rsp + 0x18], r12
	je	.label_366
	mov	rax, qword ptr [rsp + 0x10]
	movzx	edi, byte ptr [rax + r12]
	call	order
	mov	ebx, eax
.label_366:
	sub	ebp, ebx
	je	.label_372
	jmp	.label_363
.label_380:
	mov	r14, r13
	mov	rbp, qword ptr [rsp + 8]
	nop	dword ptr [rax + rax]
.label_376:
	cmp	byte ptr [rbp + r14 + 1], 0x30
	lea	r14, [r14 + 1]
	je	.label_376
	mov	rbx, qword ptr [rsp + 0x10]
	nop	word ptr cs:[rax + rax]
.label_368:
	cmp	byte ptr [rbx + r15 + 1], 0x30
	lea	r15, [r15 + 1]
	je	.label_368
	movsx	edi, byte ptr [rbp + r14]
	call	c_isdigit
	test	al, al
	je	.label_364
	lea	r12, [rbp + r14]
	lea	rbx, [rbx + r15]
	xor	ebp, ebp
	xor	r13d, r13d
	nop	dword ptr [rax]
.label_374:
	movsx	edi, byte ptr [rbx + rbp]
	call	c_isdigit
	test	al, al
	je	.label_369
	test	r13d, r13d
	jne	.label_371
	movsx	r13d, byte ptr [r12 + rbp]
	movsx	eax, byte ptr [rbx + rbp]
	sub	r13d, eax
.label_371:
	movsx	edi, byte ptr [r12 + rbp + 1]
	call	c_isdigit
	inc	rbp
	test	al, al
	jne	.label_374
	add	r14, rbp
	add	r12, rbp
	jmp	.label_378
	.section	.text
	.align	16
	#Procedure 0x4064d8
	.globl sub_4064d8
	.type sub_4064d8, @function
sub_4064d8:

	nop	dword ptr [rax + rax]
.label_364:
	lea	rax, [rbp + r14]
	xor	r13d, r13d
	jmp	.label_377
.label_369:
	add	r12, rbp
	add	r14, rbp
.label_378:
	add	r15, rbp
	mov	rax, r12
.label_377:
	mov	r12, r15
	movsx	edi, byte ptr [rax]
	call	c_isdigit
	mov	ebp, 1
	test	al, al
	jne	.label_363
	mov	rax, qword ptr [rsp + 0x10]
	movsx	edi, byte ptr [rax + r12]
	call	c_isdigit
	mov	ebp, 0xffffffff
	test	al, al
	jne	.label_363
	test	r13d, r13d
	mov	ebp, r13d
	je	.label_367
	jmp	.label_363
.label_373:
	xor	ebp, ebp
.label_363:
	mov	eax, ebp
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
	#Procedure 0x406543
	.globl sub_406543
	.type sub_406543, @function
sub_406543:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406550

	.globl isaac_refill
	.type isaac_refill, @function
isaac_refill:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	rbp, rsi
	mov	r14, rdi
	mov	rbx, qword ptr [r14 + 0x800]
	mov	rax, qword ptr [r14 + 0x810]
	inc	rax
	mov	r12, qword ptr [r14 + 0x808]
	add	r12, rax
	mov	qword ptr [r14 + 0x810], rax
	lea	rcx, [r14 + 0x400]
	lea	rax, [r14 + 0x20]
	cmp	rcx, rax
	mov	qword ptr [rsp + 0x20], rcx
	cmova	rax, rcx
	mov	rcx, r14
	not	rcx
	add	rcx, rax
	shr	rcx, 5
	lea	rax, [rcx*4]
	mov	qword ptr [rsp + 0x18], rax
	shl	rcx, 5
	lea	rax, [rbp + rcx + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 8], r14
	mov	r15, qword ptr [rsp + 8]
	nop	
.label_382:
	mov	qword ptr [rsp], rbp
	mov	r13, rbx
	shl	r13, 0x15
	xor	r13, rbx
	not	r13
	add	r13, qword ptr [r14 + 0x400]
	mov	rbx, qword ptr [r14]
	mov	rdi, r15
	mov	rsi, rbx
	call	ind
	add	rax, r12
	add	rax, r13
	mov	qword ptr [r14], rax
	shr	rax, 8
	mov	rdi, r15
	mov	rsi, rax
	call	ind
	add	rbx, rax
	mov	rdi, rbx
	call	just
	mov	rbx, rax
	mov	qword ptr [rbp], rbx
	mov	rdi, r13
	call	just
	mov	rbp, rax
	shr	rbp, 5
	xor	rbp, r13
	add	rbp, qword ptr [r14 + 0x408]
	mov	r12, qword ptr [r14 + 8]
	mov	rdi, r15
	mov	rsi, r12
	call	ind
	add	rbx, rbp
	add	rbx, rax
	mov	qword ptr [r14 + 8], rbx
	shr	rbx, 8
	mov	rdi, r15
	mov	rsi, rbx
	call	ind
	add	r12, rax
	mov	rdi, r12
	call	just
	mov	rbx, rax
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax + 8], rbx
	mov	r12, rbp
	shl	r12, 0xc
	xor	r12, rbp
	add	r12, qword ptr [r14 + 0x410]
	mov	rbp, qword ptr [r14 + 0x10]
	mov	rdi, r15
	mov	rsi, rbp
	call	ind
	add	rbx, r12
	add	rbx, rax
	mov	qword ptr [r14 + 0x10], rbx
	shr	rbx, 8
	mov	rdi, r15
	mov	rsi, rbx
	call	ind
	add	rbp, rax
	mov	rdi, rbp
	call	just
	mov	rbp, rax
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax + 0x10], rbp
	mov	rdi, r12
	call	just
	mov	rbx, rax
	shr	rbx, 0x21
	xor	rbx, r12
	add	rbx, qword ptr [r14 + 0x418]
	mov	r12, qword ptr [r14 + 0x18]
	mov	rdi, r15
	mov	rsi, r12
	call	ind
	add	rbp, rbx
	add	rbp, rax
	mov	qword ptr [r14 + 0x18], rbp
	shr	rbp, 8
	mov	rdi, r15
	mov	rsi, rbp
	mov	rbp, qword ptr [rsp]
	call	ind
	add	r12, rax
	mov	rdi, r12
	call	just
	mov	r12, rax
	mov	qword ptr [rbp + 0x18], r12
	add	r14, 0x20
	add	rbp, 0x20
	cmp	r14, qword ptr [rsp + 0x20]
	jb	.label_382
	mov	rcx, qword ptr [rsp + 8]
	lea	rax, [rcx + 0x800]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rsp + 0x18]
	lea	r13, [rcx + rax*8 + 0x38]
	mov	r14, qword ptr [rsp + 8]
	nop	
.label_381:
	mov	r15, rbx
	shl	r15, 0x15
	xor	r15, rbx
	not	r15
	add	r15, qword ptr [r13 - 0x418]
	mov	rbx, qword ptr [r13 - 0x18]
	mov	rdi, r14
	mov	rsi, rbx
	call	ind
	add	rax, r12
	add	rax, r15
	mov	qword ptr [r13 - 0x18], rax
	shr	rax, 8
	mov	rdi, r14
	mov	rsi, rax
	call	ind
	add	rbx, rax
	mov	rdi, rbx
	call	just
	mov	rbp, rax
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rax], rbp
	mov	r12, rax
	mov	rdi, r15
	call	just
	mov	rbx, rax
	shr	rbx, 5
	xor	rbx, r15
	add	rbx, qword ptr [r13 - 0x410]
	mov	r15, qword ptr [r13 - 0x10]
	mov	rdi, r14
	mov	rsi, r15
	call	ind
	add	rbp, rbx
	add	rbp, rax
	mov	qword ptr [r13 - 0x10], rbp
	shr	rbp, 8
	mov	rdi, r14
	mov	rsi, rbp
	call	ind
	add	r15, rax
	mov	rdi, r15
	call	just
	mov	rbp, rax
	mov	qword ptr [r12 + 8], rbp
	mov	qword ptr [rsp + 0x10], r12
	mov	r15, rbx
	shl	r15, 0xc
	xor	r15, rbx
	add	r15, qword ptr [r13 - 0x408]
	mov	rbx, qword ptr [r13 - 8]
	mov	rdi, r14
	mov	rsi, rbx
	call	ind
	add	rbp, r15
	add	rbp, rax
	mov	qword ptr [r13 - 8], rbp
	shr	rbp, 8
	mov	rdi, r14
	mov	rsi, rbp
	call	ind
	add	rbx, rax
	mov	rdi, rbx
	call	just
	mov	rbp, rax
	mov	qword ptr [r12 + 0x10], rbp
	mov	rdi, r15
	call	just
	mov	rbx, rax
	shr	rbx, 0x21
	xor	rbx, r15
	add	rbx, qword ptr [r13 - 0x400]
	mov	r15, qword ptr [r13]
	mov	rdi, r14
	mov	rsi, r15
	call	ind
	add	rbp, rbx
	add	rbp, rax
	mov	qword ptr [r13], rbp
	shr	rbp, 8
	mov	rdi, r14
	mov	rsi, rbp
	call	ind
	add	r15, rax
	mov	rdi, r15
	call	just
	mov	r12, rax
	mov	rcx, qword ptr [rsp + 0x10]
	mov	qword ptr [rcx + 0x18], r12
	lea	rax, [r13 + 0x20]
	add	r13, 8
	add	rcx, 0x20
	mov	qword ptr [rsp + 0x10], rcx
	cmp	r13, qword ptr [rsp]
	mov	r13, rax
	jb	.label_381
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax + 0x800], rbx
	mov	qword ptr [rax + 0x808], r12
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
	#Procedure 0x4068e2
	.globl sub_4068e2
	.type sub_4068e2, @function
sub_4068e2:

	nop	word ptr cs:[rax + rax]
.label_383:
	mov	qword ptr [r15 + 0x18], r14
	mov	qword ptr [r15 + 0x10], r14
	mov	rax, qword ptr [rsi]
	mov	qword ptr [r15 + 0x20], rax
	mov	qword ptr [r15 + 8], rsi
.label_385:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x406909
	.globl sub_406909
	.type sub_406909, @function
sub_406909:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406913

	.globl _obstack_free
	.type _obstack_free, @function
_obstack_free:
	push	r15
	push	r14
	push	rbx
	mov	r14, rsi
	mov	r15, rdi
	mov	rsi, qword ptr [r15 + 8]
	test	rsi, rsi
	je	.label_386
	nop	word ptr cs:[rax + rax]
.label_387:
	cmp	rsi, r14
	jae	.label_384
	cmp	qword ptr [rsi], r14
	jae	.label_383
.label_384:
	mov	rbx, qword ptr [rsi + 8]
	mov	rdi, r15
	call	call_freefun
	or	byte ptr [r15 + 0x50], 2
	test	rbx, rbx
	mov	rsi, rbx
	jne	.label_387
.label_386:
	test	r14, r14
	je	.label_385
	call	abort
	.section	.text
	.align	16
	#Procedure 0x406960

	.globl _obstack_memory_used
	.type _obstack_memory_used, @function
_obstack_memory_used:
	mov	rcx, qword ptr [rdi + 8]
	xor	eax, eax
	test	rcx, rcx
	je	.label_388
	xor	eax, eax
	nop	dword ptr [rax]
.label_389:
	sub	rax, rcx
	add	rax, qword ptr [rcx]
	mov	rcx, qword ptr [rcx + 8]
	test	rcx, rcx
	jne	.label_389
.label_388:
	ret	
	.section	.text
	.align	16
	#Procedure 0x406980

	.globl find_unit_order
	.type find_unit_order, @function
find_unit_order:
	push	rbx
	sub	rsp, 0x10
	mov	bl, byte ptr [rdi]
	xor	eax, eax
	cmp	bl, 0x2d
	sete	al
	add	rax, rdi
	mov	qword ptr [rsp + 8], rax
	lea	rdi, [rsp + 8]
	call	traverse_raw_number
	mov	ecx, eax
	xor	eax, eax
	cmp	cl, 0x31
	jb	.label_390
	mov	rax, qword ptr [rsp + 8]
	movzx	eax, byte ptr [rax]
	movsx	ecx,  byte ptr [byte ptr [rax + unit_order]]
	mov	eax, ecx
	neg	eax
	cmp	bl, 0x2d
	cmovne	eax, ecx
.label_390:
	add	rsp, 0x10
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4069c9
	.globl sub_4069c9
	.type sub_4069c9, @function
sub_4069c9:

	nop	dword ptr [rax]
.label_394:
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_392
	.section	.text
	.align	16
	#Procedure 0x4069dc

	.globl rpl_fcntl_DUPFD_CLOEXEC
	.type rpl_fcntl_DUPFD_CLOEXEC, @function
rpl_fcntl_DUPFD_CLOEXEC:
	push	rbp
	push	r14
	push	rbx
	mov	r14d, esi
	mov	ebp, edi
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0
	js	.label_395
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebp
	mov	edx, r14d
	call	fcntl
	mov	ebx, eax
	test	ebx, ebx
	jns	.label_394
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_394
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
	test	ebx, ebx
	js	.label_391
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
	jmp	.label_392
.label_395:
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
.label_392:
	test	ebx, ebx
	js	.label_391
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	jne	.label_391
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_393
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebx
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_391
.label_393:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	mov	dword ptr [rbp], r14d
	mov	ebx, 0xffffffff
.label_391:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406a93
	.globl sub_406a93
	.type sub_406a93, @function
sub_406a93:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406aa0

	.globl hash_get_n_buckets
	.type hash_get_n_buckets, @function
hash_get_n_buckets:
	mov	rax, qword ptr [rdi + 0x10]
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

	.globl bkm_scale_by_power
	.type bkm_scale_by_power, @function
bkm_scale_by_power:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	ebx, edx
	mov	r14d, esi
	mov	r15, rdi
	xor	ebp, ebp
	test	ebx, ebx
	je	.label_396
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_397:
	mov	rdi, r15
	mov	esi, r14d
	call	bkm_scale
	or	ebp, eax
	dec	ebx
	jne	.label_397
.label_396:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406aee
	.globl sub_406aee
	.type sub_406aee, @function
sub_406aee:

	nop	
	.section	.text
	.align	16
	#Procedure 0x406af0

	.globl physmem_available
	.type physmem_available, @function
physmem_available:
	push	rbx
	sub	rsp, 0x70
	mov	edi, 0x56
	call	sysconf
	mov	rbx, rax
	mov	edi, 0x1e
	call	sysconf
	mov	rcx, rax
	or	rcx, rbx
	js	.label_400
	cvtsi2sd	xmm1, rax
	cvtsi2sd	xmm0, rbx
.label_398:
	mulsd	xmm0, xmm1
	jmp	.label_401
.label_399:
	movq	xmm0, qword ptr [rsp + 0x28]
	movdqa	xmm1,  xmmword ptr [word ptr [rip + label_91]]
	punpckldq	xmm0, xmm1
	movapd	xmm2,  xmmword ptr [word ptr [rip + label_92]]
	subpd	xmm0, xmm2
	pshufd	xmm3, xmm0, 0x4e
	addpd	xmm3, xmm0
	movq	xmm0, qword ptr [rsp + 0x38]
	punpckldq	xmm0, xmm1
	subpd	xmm0, xmm2
	pshufd	xmm1, xmm0, 0x4e
	addpd	xmm1, xmm0
	addsd	xmm1, xmm3
	mov	eax, dword ptr [rsp + 0x68]
	xorps	xmm0, xmm0
	cvtsi2sd	xmm0, rax
	jmp	.label_398
	.section	.text
	.align	16
	#Procedure 0x406b74
	.globl sub_406b74
	.type sub_406b74, @function
sub_406b74:

	nop	word ptr cs:[rax + rax]
.label_400:
	lea	rdi, [rsp]
	call	sysinfo
	test	eax, eax
	je	.label_399
	call	physmem_total
	mulsd	xmm0,  qword ptr [word ptr [rip + label_74]]
.label_401:
	add	rsp, 0x70
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x406ba0
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	mov	rax, rdx
	xor	edx, edx
	mov	rcx, rax
	jmp	quotearg_alloc_mem
	.section	.text
	.align	16
	#Procedure 0x406baa
	.globl sub_406baa
	.type sub_406baa, @function
sub_406baa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406bb0

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
	call	xcharalloc
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
	je	.label_402
	mov	qword ptr [rax], rbx
.label_402:
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
	#Procedure 0x406c9c
	.globl sub_406c9c
	.type sub_406c9c, @function
sub_406c9c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406ca0

	.globl default_sort_size
	.type default_sort_size, @function
default_sort_size:
	push	r14
	push	rbx
	sub	rsp, 0x18
	lea	r14, [rsp]
	mov	edi, 2
	mov	rsi, r14
	call	getrlimit
	cmp	eax, 1
	sbb	rbx, rbx
	not	rbx
	or	rbx, qword ptr [rsp]
	mov	edi, 9
	mov	rsi, r14
	call	getrlimit
	test	eax, eax
	jne	.label_403
	mov	rax, qword ptr [rsp]
	cmp	rax, rbx
	cmovb	rbx, rax
.label_403:
	shr	rbx, 1
	lea	rsi, [rsp]
	mov	edi, 5
	call	getrlimit
	test	eax, eax
	jne	.label_406
	mov	rax, qword ptr [rsp]
	shr	rax, 4
	lea	rax, [rax + rax*4]
	lea	rax, [rax + rax*2]
	cmp	rax, rbx
	cmovb	rbx, rax
.label_406:
	call	physmem_available
	movsd	qword ptr [rsp + 0x10], xmm0
	call	physmem_total
	movsd	xmm1,  qword ptr [word ptr [rip + label_404]]
	mulsd	xmm1, xmm0
	movsd	xmm6, qword ptr [rsp + 0x10]
	maxsd	xmm6, xmm1
	mulsd	xmm0,  qword ptr [word ptr [rip + label_405]]
	movq	xmm1, rbx
	movdqa	xmm2,  xmmword ptr [word ptr [rip + label_91]]
	punpckldq	xmm1, xmm2
	movapd	xmm3,  xmmword ptr [word ptr [rip + label_92]]
	subpd	xmm1, xmm3
	pshufd	xmm4, xmm1, 0x4e
	addpd	xmm4, xmm1
	movsd	xmm1,  qword ptr [word ptr [rip + label_154]]
	movapd	xmm5, xmm0
	subsd	xmm5, xmm1
	cvttsd2si	rax, xmm5
	movabs	rcx, 0x8000000000000000
	xor	rax, rcx
	cvttsd2si	rdx, xmm0
	ucomisd	xmm0, xmm1
	cmovae	rdx, rax
	ucomisd	xmm4, xmm0
	cmovbe	rdx, rbx
	movq	xmm0, rdx
	punpckldq	xmm0, xmm2
	subpd	xmm0, xmm3
	pshufd	xmm2, xmm0, 0x4e
	addpd	xmm2, xmm0
	movapd	xmm3, xmm6
	movapd	xmm0, xmm3
	subsd	xmm0, xmm1
	cvttsd2si	rsi, xmm0
	xor	rsi, rcx
	cvttsd2si	rax, xmm3
	ucomisd	xmm3, xmm1
	cmovae	rax, rsi
	ucomisd	xmm2, xmm3
	cmovbe	rax, rdx
	mov	ecx,  dword ptr [dword ptr [rip + nmerge]]
	imul	rcx, rcx, 0x22
	cmp	rax, rcx
	cmovbe	rax, rcx
	add	rsp, 0x18
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x406df0

	.globl key_to_opts
	.type key_to_opts, @function
key_to_opts:
	cmp	byte ptr [rdi + 0x30], 0
	jne	.label_415
	cmp	byte ptr [rdi + 0x31], 0
	je	.label_416
.label_415:
	mov	byte ptr [rsi], 0x62
	inc	rsi
.label_416:
	mov	eax, OFFSET FLAT:nondictionary
	cmp	qword ptr [rdi + 0x20], rax
	jne	.label_407
	mov	byte ptr [rsi], 0x64
	inc	rsi
.label_407:
	cmp	qword ptr [rdi + 0x28], 0
	je	.label_409
	mov	byte ptr [rsi], 0x66
	inc	rsi
.label_409:
	cmp	byte ptr [rdi + 0x34], 0
	je	.label_411
	mov	byte ptr [rsi], 0x67
	inc	rsi
.label_411:
	cmp	byte ptr [rdi + 0x35], 0
	je	.label_413
	mov	byte ptr [rsi], 0x68
	inc	rsi
.label_413:
	mov	eax, OFFSET FLAT:nonprinting
	cmp	qword ptr [rdi + 0x20], rax
	jne	.label_417
	mov	byte ptr [rsi], 0x69
	inc	rsi
.label_417:
	cmp	byte ptr [rdi + 0x36], 0
	je	.label_408
	mov	byte ptr [rsi], 0x4d
	inc	rsi
.label_408:
	cmp	byte ptr [rdi + 0x32], 0
	je	.label_410
	mov	byte ptr [rsi], 0x6e
	inc	rsi
.label_410:
	cmp	byte ptr [rdi + 0x33], 0
	je	.label_412
	mov	byte ptr [rsi], 0x52
	inc	rsi
.label_412:
	cmp	byte ptr [rdi + 0x37], 0
	je	.label_414
	mov	byte ptr [rsi], 0x72
	inc	rsi
.label_414:
	cmp	byte ptr [rdi + 0x38], 0
	je	.label_418
	mov	byte ptr [rsi], 0x56
	inc	rsi
.label_418:
	mov	byte ptr [rsi], 0
	ret	
	.section	.text
	.align	16
	#Procedure 0x406e89
	.globl sub_406e89
	.type sub_406e89, @function
sub_406e89:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406e90

	.globl key_numeric
	.type key_numeric, @function
key_numeric:
	mov	al, 1
	cmp	byte ptr [rdi + 0x32], 0
	jne	.label_419
	cmp	byte ptr [rdi + 0x34], 0
	jne	.label_419
	cmp	byte ptr [rdi + 0x35], 0
	setne	al
.label_419:
	ret	
	.section	.text
	.align	16
	#Procedure 0x406ea6
	.globl sub_406ea6
	.type sub_406ea6, @function
sub_406ea6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406eb0
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
	#Procedure 0x406ebf
	.globl sub_406ebf
	.type sub_406ebf, @function
sub_406ebf:

	nop	
	.section	.text
	.align	16
	#Procedure 0x406ec0
	.globl hash_get_entries
	.type hash_get_entries, @function
hash_get_entries:

	mov	r8, qword ptr [rdi]
	xor	eax, eax
	cmp	r8, qword ptr [rdi + 8]
	jae	.label_420
	xor	eax, eax
.label_423:
	cmp	qword ptr [r8], 0
	je	.label_421
	test	r8, r8
	je	.label_421
	mov	r9, r8
	nop	dword ptr [rax + rax]
.label_422:
	cmp	rax, rdx
	jae	.label_420
	mov	rcx, qword ptr [r9]
	mov	qword ptr [rsi + rax*8], rcx
	inc	rax
	mov	r9, qword ptr [r9 + 8]
	test	r9, r9
	jne	.label_422
.label_421:
	add	r8, 0x10
	cmp	r8, qword ptr [rdi + 8]
	jb	.label_423
.label_420:
	ret	
	.section	.text
	.align	16
	#Procedure 0x406f03
	.globl sub_406f03
	.type sub_406f03, @function
sub_406f03:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406f10

	.globl _obstack_begin_worker
	.type _obstack_begin_worker, @function
_obstack_begin_worker:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	test	rdx, rdx
	mov	ebx, 0x10
	cmovne	rbx, rdx
	test	rsi, rsi
	mov	eax, 0xfe0
	cmovne	rax, rsi
	mov	qword ptr [r14], rax
	lea	r15, [rbx - 1]
	mov	qword ptr [r14 + 0x30], r15
	mov	rsi, rax
	call	call_chunkfun
	mov	qword ptr [r14 + 8], rax
	test	rax, rax
	je	.label_424
	lea	rcx, [rax + r15 + 0x10]
	neg	rbx
	and	rbx, rcx
	mov	qword ptr [r14 + 0x10], rbx
	mov	qword ptr [r14 + 0x18], rbx
	mov	rcx, qword ptr [r14]
	add	rcx, rax
	mov	qword ptr [rax], rcx
	mov	qword ptr [r14 + 0x20], rcx
	mov	qword ptr [rax + 8], 0
	and	byte ptr [r14 + 0x50], 0xf9
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_424:
	call	qword ptr [word ptr [rip + obstack_alloc_failed_handler]]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406f90

	.globl close_stream
	.type close_stream, @function
close_stream:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	__fpending
	mov	r14, rax
	mov	rdi, rbx
	call	ferror_unlocked
	mov	ebp, eax
	mov	rdi, rbx
	call	rpl_fclose
	test	ebp, ebp
	je	.label_426
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_425
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_425
.label_426:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_425
	test	cl, cl
	jne	.label_425
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_425:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406ff6
	.globl sub_406ff6
	.type sub_406ff6, @function
sub_406ff6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407000

	.globl heapify_down
	.type heapify_down, @function
heapify_down:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r15, rdx
	mov	r13, rsi
	mov	rbx, rdi
	mov	r12, qword ptr [rbx + 8]
	mov	rax, r13
	shr	rax, 1
	mov	qword ptr [rsp + 0x10], rax
	mov	ebp, 1
	je	.label_427
	mov	r14d, 1
	mov	qword ptr [rsp + 8], r13
	nop	dword ptr [rax + rax]
.label_430:
	lea	rbp, [r14 + r14]
	cmp	rbp, r13
	jae	.label_429
	mov	rdi, qword ptr [rbx + rbp*8]
	mov	r13, r12
	mov	r12, rbp
	or	r12, 1
	mov	rsi, qword ptr [rbx + r12*8]
	call	r15
	test	eax, eax
	cmovs	rbp, r12
	mov	r12, r13
	mov	r13, qword ptr [rsp + 8]
.label_429:
	mov	rdi, qword ptr [rbx + rbp*8]
	mov	rsi, r12
	call	r15
	test	eax, eax
	jle	.label_428
	mov	rax, qword ptr [rbx + rbp*8]
	mov	qword ptr [rbx + r14*8], rax
	cmp	rbp, qword ptr [rsp + 0x10]
	mov	r14, rbp
	jbe	.label_430
	jmp	.label_427
.label_428:
	mov	rbp, r14
.label_427:
	mov	qword ptr [rbx + rbp*8], r12
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
	#Procedure 0x4070a4
	.globl sub_4070a4
	.type sub_4070a4, @function
sub_4070a4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4070b0
	.globl timespectod
	.type timespectod, @function
timespectod:

	cvtsi2sd	xmm1, rdi
	cvtsi2sd	xmm0, rsi
	divsd	xmm0,  qword ptr [word ptr [rip + label_431]]
	addsd	xmm0, xmm1
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

	.globl mergelines
	.type mergelines, @function
mergelines:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	r15, rsi
	mov	r13, rdi
	mov	rcx, r15
	shr	rcx, 1
	sub	r15, rcx
	mov	rax, rcx
	shl	rax, 5
	mov	rbp, r13
	sub	rbp, rax
.label_436:
	mov	qword ptr [rsp], rcx
	lea	r12, [r14 - 0x20]
	nop	word ptr cs:[rax + rax]
.label_434:
	lea	rbx, [rbp - 0x20]
	mov	rdi, r12
	mov	rsi, rbx
	call	compare
	add	r13, -0x20
	test	eax, eax
	jle	.label_437
	movups	xmm0, xmmword ptr [rbx]
	movups	xmm1, xmmword ptr [rbx + 0x10]
	movups	xmmword ptr [r13 + 0x10], xmm1
	movups	xmmword ptr [r13], xmm0
	dec	r15
	mov	rbp, rbx
	jne	.label_434
	jmp	.label_432
	.section	.text
	.align	16
	#Procedure 0x407142
	.globl sub_407142
	.type sub_407142, @function
sub_407142:

	nop	word ptr cs:[rax + rax]
.label_437:
	movups	xmm0, xmmword ptr [r12]
	movups	xmm1, xmmword ptr [r12 + 0x10]
	movups	xmmword ptr [r13 + 0x10], xmm1
	movups	xmmword ptr [r13], xmm0
	mov	rcx, qword ptr [rsp]
	dec	rcx
	mov	r14, r12
	jne	.label_436
	jmp	.label_435
.label_432:
	mov	rax, -0x20
	xor	ecx, ecx
	mov	rdx, qword ptr [rsp]
.label_433:
	movups	xmm0, xmmword ptr [r14 + rax]
	movups	xmm1, xmmword ptr [r14 + rax + 0x10]
	movups	xmmword ptr [r13 + rax + 0x10], xmm1
	movups	xmmword ptr [r13 + rax], xmm0
	add	rax, -0x20
	inc	rcx
	cmp	rcx, rdx
	jne	.label_433
.label_435:
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
	#Procedure 0x4071b2
	.globl sub_4071b2
	.type sub_4071b2, @function
sub_4071b2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4071c0

	.globl quotearg_n_style_colon
	.type quotearg_n_style_colon, @function
quotearg_n_style_colon:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x40
	mov	r14, rdx
	mov	ebp, edi
	lea	rbx, [rsp + 8]
	mov	rdi, rbx
	call	quoting_options_from_style
	mov	esi, 0x3a
	mov	edx, 1
	mov	rdi, rbx
	call	set_char_quoting
	mov	rdx, -1
	mov	edi, ebp
	mov	rsi, r14
	mov	rcx, rbx
	call	quotearg_n_options
	add	rsp, 0x40
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407209
	.globl sub_407209
	.type sub_407209, @function
sub_407209:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407210

	.globl bkm_scale
	.type bkm_scale, @function
bkm_scale:
	movsxd	rcx, esi
	mov	rsi, -1
	mov	rax, -1
	xor	edx, edx
	div	rcx
	mov	rdx, qword ptr [rdi]
	imul	rcx, rdx
	cmp	rax, rdx
	cmovb	rcx, rsi
	sbb	eax, eax
	and	eax, 1
	mov	qword ptr [rdi], rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40723d
	.globl sub_40723d
	.type sub_40723d, @function
sub_40723d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407240

	.globl md5_process_block
	.type md5_process_block, @function
md5_process_block:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r8, rsi
	and	r8, 0xfffffffffffffffc
	add	r8, rdi
	mov	r10d, dword ptr [rdx]
	mov	ebx, dword ptr [rdx + 4]
	mov	r9d, dword ptr [rdx + 8]
	mov	ebp, dword ptr [rdx + 0xc]
	mov	rax, rsi
	shr	rax, 0x20
	mov	ecx, dword ptr [rdx + 0x10]
	add	ecx, esi
	mov	dword ptr [rdx + 0x10], ecx
	adc	eax, 0
	mov	qword ptr [rsp - 0x28], rdx
	add	dword ptr [rdx + 0x14], eax
	cmp	rdi, r8
	jae	.label_438
	mov	qword ptr [rsp - 0x20], r8
	nop	word ptr [rax + rax]
.label_439:
	mov	qword ptr [rsp - 0x78], rbx
	mov	qword ptr [rsp - 8], rbp
	mov	qword ptr [rsp], r9
	mov	dword ptr [rsp - 0x34], r10d
	mov	eax, r9d
	xor	eax, ebp
	and	eax, ebx
	xor	eax, ebp
	add	eax, r10d
	mov	ecx, dword ptr [rdi]
	mov	esi, dword ptr [rdi + 4]
	mov	qword ptr [rsp - 0x58], rsi
	lea	edx, [rcx + rax - 0x28955b88]
	mov	r10, rcx
	mov	qword ptr [rsp - 0x10], r10
	rol	edx, 7
	mov	rax, qword ptr [rsp - 0x78]
	add	edx, eax
	mov	rax, qword ptr [rsp - 0x78]
	xor	eax, r9d
	and	eax, edx
	xor	eax, r9d
	lea	ecx, [rbp + rsi]
	lea	ebp, [rax + rcx - 0x173848aa]
	rol	ebp, 0xc
	add	ebp, edx
	mov	eax, edx
	mov	rcx, qword ptr [rsp - 0x78]
	xor	eax, ecx
	and	eax, ebp
	mov	rcx, qword ptr [rsp - 0x78]
	xor	eax, ecx
	mov	ecx, dword ptr [rdi + 8]
	mov	qword ptr [rsp - 0x30], rcx
	lea	ecx, [r9 + rcx]
	lea	ebx, [rax + rcx + 0x242070db]
	rol	ebx, 0x11
	add	ebx, ebp
	mov	eax, ebp
	xor	eax, edx
	and	eax, ebx
	xor	eax, edx
	mov	esi, dword ptr [rdi + 0xc]
	mov	rcx, qword ptr [rsp - 0x78]
	lea	ecx, [rcx + rsi]
	mov	r12, rsi
	mov	qword ptr [rsp - 0x18], r12
	lea	eax, [rax + rcx - 0x3e423112]
	rol	eax, 0x16
	add	eax, ebx
	mov	ecx, ebx
	xor	ecx, ebp
	and	ecx, eax
	xor	ecx, ebp
	mov	esi, dword ptr [rdi + 0x10]
	mov	dword ptr [rsp - 0x64], esi
	add	edx, esi
	lea	ecx, [rcx + rdx - 0xa83f051]
	rol	ecx, 7
	add	ecx, eax
	mov	edx, eax
	xor	edx, ebx
	and	edx, ecx
	xor	edx, ebx
	mov	esi, dword ptr [rdi + 0x14]
	mov	dword ptr [rsp - 0x6c], esi
	add	ebp, esi
	lea	r8d, [rdx + rbp + 0x4787c62a]
	rol	r8d, 0xc
	add	r8d, ecx
	mov	edx, ecx
	xor	edx, eax
	and	edx, r8d
	xor	edx, eax
	mov	esi, dword ptr [rdi + 0x18]
	add	ebx, esi
	mov	dword ptr [rsp - 0x38], esi
	lea	ebx, [rdx + rbx - 0x57cfb9ed]
	rol	ebx, 0x11
	add	ebx, r8d
	mov	ebp, r8d
	xor	ebp, ecx
	and	ebp, ebx
	xor	ebp, ecx
	mov	edx, dword ptr [rdi + 0x1c]
	mov	dword ptr [rsp - 0x60], edx
	add	eax, edx
	lea	r9d, [rbp + rax - 0x2b96aff]
	rol	r9d, 0x16
	add	r9d, ebx
	mov	eax, ebx
	xor	eax, r8d
	and	eax, r9d
	xor	eax, r8d
	mov	edx, dword ptr [rdi + 0x20]
	mov	dword ptr [rsp - 0x68], edx
	add	ecx, edx
	lea	ecx, [rax + rcx + 0x698098d8]
	rol	ecx, 7
	add	ecx, r9d
	mov	eax, r9d
	xor	eax, ebx
	and	eax, ecx
	xor	eax, ebx
	mov	edx, dword ptr [rdi + 0x24]
	mov	dword ptr [rsp - 0x7c], edx
	add	r8d, edx
	lea	ebp, [rax + r8 - 0x74bb0851]
	rol	ebp, 0xc
	add	ebp, ecx
	mov	eax, ecx
	xor	eax, r9d
	and	eax, ebp
	xor	eax, r9d
	mov	edx, dword ptr [rdi + 0x28]
	add	ebx, edx
	mov	r13d, edx
	mov	dword ptr [rsp - 0x48], r13d
	lea	r15d, [rax + rbx - 0xa44f]
	rol	r15d, 0x11
	add	r15d, ebp
	mov	eax, ebp
	xor	eax, ecx
	and	eax, r15d
	xor	eax, ecx
	mov	edx, dword ptr [rdi + 0x2c]
	add	r9d, edx
	mov	dword ptr [rsp - 0x5c], edx
	lea	r11d, [rax + r9 - 0x76a32842]
	rol	r11d, 0x16
	add	r11d, r15d
	mov	eax, r15d
	xor	eax, ebp
	and	eax, r11d
	xor	eax, ebp
	mov	ebx, dword ptr [rdi + 0x30]
	mov	dword ptr [rsp - 0x40], ebx
	add	ecx, ebx
	lea	ecx, [rax + rcx + 0x6b901122]
	rol	ecx, 7
	add	ecx, r11d
	mov	eax, r11d
	xor	eax, r15d
	and	eax, ecx
	xor	eax, r15d
	mov	ebx, dword ptr [rdi + 0x34]
	add	ebp, ebx
	lea	r9d, [rax + rbp - 0x2678e6d]
	rol	r9d, 0xc
	add	r9d, ecx
	mov	eax, ecx
	xor	eax, r11d
	and	eax, r9d
	xor	eax, r11d
	mov	r14d, dword ptr [rdi + 0x38]
	add	r15d, r14d
	lea	r8d, [rax + r15 - 0x5986bc72]
	rol	r8d, 0x11
	add	r8d, r9d
	mov	eax, r9d
	xor	eax, ecx
	and	eax, r8d
	xor	eax, ecx
	mov	ebp, dword ptr [rdi + 0x3c]
	add	r11d, ebp
	mov	r15d, ebp
	mov	dword ptr [rsp - 0x3c], r15d
	lea	r11d, [rax + r11 + 0x49b40821]
	rol	r11d, 0x16
	add	r11d, r8d
	mov	eax, r11d
	xor	eax, r8d
	and	eax, r9d
	xor	eax, r8d
	mov	rbp, qword ptr [rsp - 0x58]
	add	ecx, ebp
	lea	ecx, [rax + rcx - 0x9e1da9e]
	rol	ecx, 5
	add	ecx, r11d
	mov	eax, ecx
	xor	eax, r11d
	and	eax, r8d
	xor	eax, r11d
	add	r9d, esi
	lea	ebp, [rax + r9 - 0x3fbf4cc0]
	rol	ebp, 9
	add	ebp, ecx
	mov	eax, ebp
	xor	eax, ecx
	and	eax, r11d
	xor	eax, ecx
	add	r8d, edx
	lea	r8d, [rax + r8 + 0x265e5a51]
	rol	r8d, 0xe
	add	r8d, ebp
	mov	eax, r8d
	xor	eax, ebp
	and	eax, ecx
	xor	eax, ebp
	add	r11d, r10d
	lea	r11d, [rax + r11 - 0x16493856]
	rol	r11d, 0x14
	add	r11d, r8d
	mov	eax, r11d
	xor	eax, r8d
	and	eax, ebp
	xor	eax, r8d
	mov	r9d, dword ptr [rsp - 0x6c]
	add	ecx, r9d
	lea	ecx, [rax + rcx - 0x29d0efa3]
	rol	ecx, 5
	add	ecx, r11d
	mov	eax, ecx
	xor	eax, r11d
	and	eax, r8d
	xor	eax, r11d
	add	ebp, r13d
	lea	ebp, [rax + rbp + 0x2441453]
	rol	ebp, 9
	add	ebp, ecx
	mov	eax, ebp
	xor	eax, ecx
	and	eax, r11d
	xor	eax, ecx
	add	r8d, r15d
	lea	r8d, [rax + r8 - 0x275e197f]
	rol	r8d, 0xe
	add	r8d, ebp
	mov	eax, r8d
	xor	eax, ebp
	and	eax, ecx
	xor	eax, ebp
	mov	r10d, dword ptr [rsp - 0x64]
	add	r11d, r10d
	lea	r11d, [rax + r11 - 0x182c0438]
	rol	r11d, 0x14
	add	r11d, r8d
	mov	eax, r11d
	xor	eax, r8d
	and	eax, ebp
	xor	eax, r8d
	add	ecx, dword ptr [rsp - 0x7c]
	lea	ecx, [rax + rcx + 0x21e1cde6]
	rol	ecx, 5
	add	ecx, r11d
	mov	eax, ecx
	xor	eax, r11d
	and	eax, r8d
	xor	eax, r11d
	mov	r13d, r14d
	mov	dword ptr [rsp - 0x4c], r13d
	add	ebp, r13d
	lea	ebp, [rax + rbp - 0x3cc8f82a]
	rol	ebp, 9
	add	ebp, ecx
	mov	eax, ebp
	xor	eax, ecx
	and	eax, r11d
	xor	eax, ecx
	add	r8d, r12d
	lea	r8d, [rax + r8 - 0xb2af279]
	rol	r8d, 0xe
	add	r8d, ebp
	mov	eax, r8d
	xor	eax, ebp
	and	eax, ecx
	xor	eax, ebp
	mov	esi, dword ptr [rsp - 0x68]
	add	r11d, esi
	lea	r11d, [rax + r11 + 0x455a14ed]
	rol	r11d, 0x14
	add	r11d, r8d
	mov	eax, r11d
	xor	eax, r8d
	and	eax, ebp
	xor	eax, r8d
	add	ecx, ebx
	mov	dword ptr [rsp - 0x44], ebx
	lea	ecx, [rax + rcx - 0x561c16fb]
	rol	ecx, 5
	add	ecx, r11d
	mov	eax, ecx
	xor	eax, r11d
	and	eax, r8d
	xor	eax, r11d
	mov	rdx, qword ptr [rsp - 0x30]
	add	ebp, edx
	lea	r14d, [rax + rbp - 0x3105c08]
	rol	r14d, 9
	add	r14d, ecx
	mov	eax, r14d
	xor	eax, ecx
	and	eax, r11d
	xor	eax, ecx
	mov	edx, dword ptr [rsp - 0x60]
	add	r8d, edx
	lea	r8d, [rax + r8 + 0x676f02d9]
	rol	r8d, 0xe
	add	r8d, r14d
	mov	ebp, r8d
	xor	ebp, r14d
	mov	eax, ebp
	and	eax, ecx
	xor	eax, r14d
	mov	r15d, dword ptr [rsp - 0x40]
	add	r11d, r15d
	lea	eax, [rax + r11 - 0x72d5b376]
	rol	eax, 0x14
	add	eax, r8d
	xor	ebp, eax
	add	ecx, r9d
	lea	r11d, [rbp + rcx - 0x5c6be]
	rol	r11d, 4
	add	r11d, eax
	mov	ecx, eax
	xor	ecx, r8d
	xor	ecx, r11d
	add	r14d, esi
	lea	r14d, [rcx + r14 - 0x788e097f]
	rol	r14d, 0xb
	add	r14d, r11d
	mov	ebp, r11d
	xor	ebp, eax
	xor	ebp, r14d
	add	r8d, dword ptr [rsp - 0x5c]
	lea	ebp, [rbp + r8 + 0x6d9d6122]
	rol	ebp, 0x10
	add	ebp, r14d
	mov	ecx, r14d
	xor	ecx, r11d
	xor	ecx, ebp
	add	eax, r13d
	lea	r8d, [rcx + rax - 0x21ac7f4]
	rol	r8d, 0x17
	add	r8d, ebp
	mov	eax, ebp
	xor	eax, r14d
	xor	eax, r8d
	mov	rcx, qword ptr [rsp - 0x58]
	add	r11d, ecx
	lea	r11d, [rax + r11 - 0x5b4115bc]
	rol	r11d, 4
	add	r11d, r8d
	mov	ecx, r8d
	xor	ecx, ebp
	xor	ecx, r11d
	add	r14d, r10d
	lea	r14d, [rcx + r14 + 0x4bdecfa9]
	rol	r14d, 0xb
	add	r14d, r11d
	mov	eax, r11d
	xor	eax, r8d
	xor	eax, r14d
	add	ebp, edx
	lea	ebp, [rax + rbp - 0x944b4a0]
	rol	ebp, 0x10
	add	ebp, r14d
	mov	eax, r14d
	xor	eax, r11d
	xor	eax, ebp
	mov	r10d, dword ptr [rsp - 0x48]
	add	r8d, r10d
	lea	r8d, [rax + r8 - 0x41404390]
	rol	r8d, 0x17
	add	r8d, ebp
	mov	eax, ebp
	xor	eax, r14d
	xor	eax, r8d
	add	r11d, ebx
	lea	eax, [rax + r11 + 0x289b7ec6]
	rol	eax, 4
	add	eax, r8d
	mov	ecx, r8d
	xor	ecx, ebp
	xor	ecx, eax
	mov	rsi, qword ptr [rsp - 0x10]
	add	r14d, esi
	lea	r11d, [rcx + r14 - 0x155ed806]
	rol	r11d, 0xb
	add	r11d, eax
	mov	ecx, eax
	xor	ecx, r8d
	xor	ecx, r11d
	mov	r9, qword ptr [rsp - 0x18]
	add	ebp, r9d
	lea	r14d, [rcx + rbp - 0x2b10cf7b]
	rol	r14d, 0x10
	add	r14d, r11d
	mov	ecx, r11d
	xor	ecx, eax
	xor	ecx, r14d
	mov	r12d, dword ptr [rsp - 0x38]
	add	r8d, r12d
	lea	r8d, [rcx + r8 + 0x4881d05]
	rol	r8d, 0x17
	add	r8d, r14d
	mov	ecx, r14d
	xor	ecx, r11d
	xor	ecx, r8d
	add	eax, dword ptr [rsp - 0x7c]
	lea	ecx, [rcx + rax - 0x262b2fc7]
	rol	ecx, 4
	add	ecx, r8d
	mov	eax, r8d
	xor	eax, r14d
	xor	eax, ecx
	add	r11d, r15d
	lea	edx, [rax + r11 - 0x1924661b]
	rol	edx, 0xb
	add	edx, ecx
	mov	ebp, ecx
	xor	ebp, r8d
	xor	ebp, edx
	mov	r13d, dword ptr [rsp - 0x3c]
	add	r14d, r13d
	lea	r11d, [rbp + r14 + 0x1fa27cf8]
	rol	r11d, 0x10
	add	r11d, edx
	mov	ebp, edx
	xor	ebp, ecx
	xor	ebp, r11d
	mov	rax, qword ptr [rsp - 0x30]
	add	r8d, eax
	mov	r14, rax
	lea	r8d, [rbp + r8 - 0x3b53a99b]
	add	ecx, esi
	rol	r8d, 0x17
	add	r8d, r11d
	mov	eax, edx
	not	eax
	or	eax, r8d
	xor	eax, r11d
	lea	ecx, [rax + rcx - 0xbd6ddbc]
	add	edx, dword ptr [rsp - 0x60]
	rol	ecx, 6
	add	ecx, r8d
	mov	eax, r11d
	not	eax
	or	eax, ecx
	xor	eax, r8d
	lea	ebp, [rax + rdx + 0x432aff97]
	add	r11d, dword ptr [rsp - 0x4c]
	rol	ebp, 0xa
	add	ebp, ecx
	mov	eax, r8d
	not	eax
	or	eax, ebp
	xor	eax, ecx
	lea	eax, [rax + r11 - 0x546bdc59]
	add	r8d, dword ptr [rsp - 0x6c]
	rol	eax, 0xf
	add	eax, ebp
	mov	edx, ecx
	not	edx
	or	edx, eax
	xor	edx, ebp
	lea	esi, [rdx + r8 - 0x36c5fc7]
	add	ecx, r15d
	rol	esi, 0x15
	add	esi, eax
	mov	edx, ebp
	not	edx
	or	edx, esi
	xor	edx, eax
	lea	ecx, [rdx + rcx + 0x655b59c3]
	add	ebp, r9d
	rol	ecx, 6
	add	ecx, esi
	mov	edx, eax
	not	edx
	or	edx, ecx
	xor	edx, esi
	lea	ebp, [rdx + rbp - 0x70f3336e]
	add	eax, r10d
	mov	rbx, qword ptr [rsp - 0x78]
	rol	ebp, 0xa
	add	ebp, ecx
	mov	edx, esi
	not	edx
	or	edx, ebp
	xor	edx, ecx
	lea	eax, [rdx + rax - 0x100b83]
	rol	eax, 0xf
	add	eax, ebp
	mov	rdx, qword ptr [rsp - 0x58]
	add	esi, edx
	mov	edx, ecx
	not	edx
	or	edx, eax
	xor	edx, ebp
	lea	r8d, [rdx + rsi - 0x7a7ba22f]
	rol	r8d, 0x15
	add	r8d, eax
	add	ecx, dword ptr [rsp - 0x68]
	mov	edx, ebp
	not	edx
	or	edx, r8d
	xor	edx, eax
	lea	ecx, [rdx + rcx + 0x6fa87e4f]
	rol	ecx, 6
	add	ecx, r8d
	add	ebp, r13d
	mov	edx, eax
	not	edx
	or	edx, ecx
	xor	edx, r8d
	lea	edx, [rdx + rbp - 0x1d31920]
	rol	edx, 0xa
	add	edx, ecx
	add	eax, r12d
	mov	esi, r8d
	not	esi
	or	esi, edx
	xor	esi, ecx
	lea	ebp, [rsi + rax - 0x5cfebcec]
	rol	ebp, 0xf
	add	ebp, edx
	add	r8d, dword ptr [rsp - 0x44]
	mov	eax, ecx
	not	eax
	or	eax, ebp
	xor	eax, edx
	lea	esi, [rax + r8 + 0x4e0811a1]
	mov	r8, qword ptr [rsp - 0x20]
	mov	r10d, dword ptr [rsp - 0x34]
	rol	esi, 0x15
	add	esi, ebp
	add	ecx, dword ptr [rsp - 0x64]
	mov	eax, edx
	not	eax
	or	eax, esi
	xor	eax, ebp
	lea	ecx, [rax + rcx - 0x8ac817e]
	rol	ecx, 6
	add	ecx, esi
	add	edx, dword ptr [rsp - 0x5c]
	mov	eax, ebp
	not	eax
	or	eax, ecx
	xor	eax, esi
	lea	edx, [rax + rdx - 0x42c50dcb]
	rol	edx, 0xa
	add	edx, ecx
	add	ebp, r14d
	mov	eax, esi
	not	eax
	or	eax, edx
	xor	eax, ecx
	lea	eax, [rax + rbp + 0x2ad7d2bb]
	add	esi, dword ptr [rsp - 0x7c]
	rol	eax, 0xf
	add	eax, edx
	add	r10d, ecx
	not	ecx
	or	ecx, eax
	xor	ecx, edx
	lea	ecx, [rcx + rsi - 0x14792c6f]
	rol	ecx, 0x15
	add	ebx, eax
	add	ebx, ecx
	mov	rcx, qword ptr [rsp]
	add	eax, ecx
	mov	rcx, qword ptr [rsp - 8]
	add	edx, ecx
	add	rdi, 0x40
	cmp	rdi, r8
	mov	r9d, eax
	mov	ebp, edx
	jb	.label_439
	jmp	.label_440
.label_438:
	mov	edx, ebp
	mov	eax, r9d
.label_440:
	mov	rcx, qword ptr [rsp - 0x28]
	mov	dword ptr [rcx], r10d
	mov	dword ptr [rcx + 4], ebx
	mov	dword ptr [rcx + 8], eax
	mov	dword ptr [rcx + 0xc], edx
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
	#Procedure 0x407a4c
	.globl sub_407a4c
	.type sub_407a4c, @function
sub_407a4c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407a50

	.globl reap_some
	.type reap_some, @function
reap_some:
	push	rax
	mov	edi, 0xffffffff
	call	reap
	pop	rax
	jmp	reap_exited
	.section	.text
	.align	16
	#Procedure 0x407a5e
	.globl sub_407a5e
	.type sub_407a5e, @function
sub_407a5e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x407a60

	.globl reap_exited
	.type reap_exited, @function
reap_exited:
	push	rax
	cmp	dword ptr [dword ptr [rip + nprocs]],  0
	jle	.label_441
	nop	word ptr [rax + rax]
.label_442:
	xor	edi, edi
	call	reap
	test	eax, eax
	je	.label_441
	mov	eax,  dword ptr [dword ptr [rip + nprocs]]
	test	eax, eax
	jg	.label_442
.label_441:
	pop	rax
	ret	
	.section	.text
	.align	16
	#Procedure 0x407a87
	.globl sub_407a87
	.type sub_407a87, @function
sub_407a87:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407a90
	.globl mkstemp_safer
	.type mkstemp_safer, @function
mkstemp_safer:

	push	rax
	call	mkstemp
	mov	edi, eax
	pop	rax
	jmp	fd_safer
	.section	.text
	.align	16
	#Procedure 0x407a9e
	.globl sub_407a9e
	.type sub_407a9e, @function
sub_407a9e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x407aa0

	.globl initbuf
	.type initbuf, @function
initbuf:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rsi
	mov	r15, rdi
	lea	r12, [r14 + 1]
	nop	word ptr cs:[rax + rax]
.label_444:
	mov	eax, edx
	and	eax, 0x1f
	mov	ebx, 0x20
	sub	rbx, rax
	add	rbx, rdx
	mov	rdi, rbx
	call	malloc
	mov	qword ptr [r15], rax
	test	rax, rax
	jne	.label_443
	shr	rbx, 1
	cmp	rbx, r12
	mov	rdx, rbx
	ja	.label_444
	call	xalloc_die
.label_443:
	mov	qword ptr [r15 + 0x28], r14
	mov	qword ptr [r15 + 0x18], rbx
	mov	qword ptr [r15 + 0x20], 0
	mov	byte ptr [r15 + 0x30], 0
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 8], xmm0
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x407b19
	.globl sub_407b19
	.type sub_407b19, @function
sub_407b19:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407b20

	.globl md5_process_bytes
	.type md5_process_bytes, @function
md5_process_bytes:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	r12, rsi
	mov	r15, rdi
	mov	r13d, dword ptr [r14 + 0x18]
	test	r13, r13
	je	.label_445
	mov	ebx, 0x80
	sub	rbx, r13
	cmp	rbx, r12
	cmova	rbx, r12
	lea	rdi, [r14 + r13 + 0x1c]
	mov	rsi, r15
	mov	rdx, rbx
	call	memcpy
	mov	esi, dword ptr [r14 + 0x18]
	add	rsi, rbx
	mov	dword ptr [r14 + 0x18], esi
	cmp	esi, 0x41
	jb	.label_449
	lea	rbp, [r14 + 0x1c]
	and	esi, 0xffffffc0
	mov	rdi, rbp
	mov	rdx, r14
	call	md5_process_block
	mov	edx, dword ptr [r14 + 0x18]
	and	edx, 0x3f
	mov	dword ptr [r14 + 0x18], edx
	add	r13, rbx
	and	r13, 0xffffffffffffffc0
	add	r13, rbp
	mov	rdi, rbp
	mov	rsi, r13
	call	memcpy
.label_449:
	add	r15, rbx
	sub	r12, rbx
.label_445:
	cmp	r12, 0x40
	jb	.label_446
	mov	rbx, r12
	and	rbx, 0xffffffffffffffc0
	mov	rdi, r15
	mov	rsi, rbx
	mov	rdx, r14
	call	md5_process_block
	add	r15, rbx
	and	r12d, 0x3f
.label_446:
	test	r12, r12
	je	.label_447
	mov	ebx, dword ptr [r14 + 0x18]
	lea	rdi, [r14 + rbx + 0x1c]
	mov	rsi, r15
	mov	rdx, r12
	call	memcpy
	add	rbx, r12
	cmp	rbx, 0x40
	jb	.label_448
	lea	rbp, [r14 + 0x1c]
	mov	esi, 0x40
	mov	rdi, rbp
	mov	rdx, r14
	call	md5_process_block
	add	rbx, -0x40
	lea	rsi, [r14 + 0x5c]
	mov	rdi, rbp
	mov	rdx, rbx
	call	memcpy
.label_448:
	mov	dword ptr [r14 + 0x18], ebx
.label_447:
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
	#Procedure 0x407c22
	.globl sub_407c22
	.type sub_407c22, @function
sub_407c22:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407c30

	.globl md5_finish_ctx
	.type md5_finish_ctx, @function
md5_finish_ctx:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	mov	eax, dword ptr [rbx + 0x18]
	cmp	rax, 0x38
	mov	ecx, 0x10
	mov	r15d, 0x20
	cmovb	r15, rcx
	mov	ecx, dword ptr [rbx + 0x10]
	add	ecx, eax
	mov	dword ptr [rbx + 0x10], ecx
	jae	.label_450
	inc	dword ptr [rbx + 0x14]
.label_450:
	mov	ecx, dword ptr [rbx + 0x10]
	shl	ecx, 3
	lea	r12, [rbx + 0x1c]
	mov	dword ptr [rbx + r15*4 + 0x14], ecx
	mov	ecx, dword ptr [rbx + 0x10]
	mov	edx, dword ptr [rbx + 0x14]
	shld	edx, ecx, 3
	mov	dword ptr [rbx + r15*4 + 0x18], edx
	lea	rdi, [rbx + rax + 0x1c]
	lea	rdx, [r15*4 - 8]
	sub	rdx, rax
	mov	esi, OFFSET FLAT:fillbuf_0
	call	memcpy
	shl	r15, 2
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, rbx
	call	md5_process_block
	mov	rdi, rbx
	mov	rsi, r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	md5_read_ctx
	.section	.text
	.align	16
	#Procedure 0x407cc1
	.globl sub_407cc1
	.type sub_407cc1, @function
sub_407cc1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407cd0

	.globl randread_error
	.type randread_error, @function
randread_error:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_451
	mov	r14d,  dword ptr [dword ptr [rip + exit_failure]]
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	edi, edi
	test	r15d, r15d
	jne	.label_454
	mov	esi, OFFSET FLAT:label_452
	jmp	.label_453
.label_454:
	mov	esi, OFFSET FLAT:label_455
.label_453:
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	xor	eax, eax
	mov	edi, r14d
	mov	esi, r15d
	mov	rdx, rbp
	call	error
.label_451:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x407d2e
	.globl sub_407d2e
	.type sub_407d2e, @function
sub_407d2e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x407d30

	.globl inttostr
	.type inttostr, @function
inttostr:
	mov	byte ptr [rsi + 0xb], 0
	test	edi, edi
	js	.label_456
	add	rsi, 0xb
	nop	dword ptr [rax]
.label_459:
	movsxd	rax, edi
	imul	rcx, rax, 0x66666667
	mov	rdx, rcx
	shr	rdx, 0x3f
	sar	rcx, 0x22
	add	ecx, edx
	lea	edx, [rcx + rcx]
	lea	edx, [rdx + rdx*4]
	neg	edx
	lea	edx, [rdi + rdx + 0x30]
	mov	byte ptr [rsi - 1], dl
	dec	rsi
	add	eax, 9
	cmp	eax, 0x12
	mov	edi, ecx
	ja	.label_459
	jmp	.label_458
.label_456:
	add	rsi, 0xa
	nop	dword ptr [rax]
.label_457:
	movsxd	rax, edi
	imul	rdi, rax, 0x66666667
	mov	rcx, rdi
	shr	rcx, 0x3f
	sar	rdi, 0x22
	add	edi, ecx
	lea	ecx, [rdi + rdi]
	lea	ecx, [rcx + rcx*4]
	mov	edx, eax
	sub	edx, ecx
	mov	ecx, 0x30
	sub	ecx, edx
	mov	byte ptr [rsi], cl
	add	eax, 9
	dec	rsi
	cmp	eax, 0x12
	ja	.label_457
	mov	byte ptr [rsi], 0x2d
.label_458:
	mov	rax, rsi
	ret	
	.section	.text
	.align	16
	#Procedure 0x407dbc
	.globl sub_407dbc
	.type sub_407dbc, @function
sub_407dbc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407dc0

	.globl rpl_fcntl_DUPFD
	.type rpl_fcntl_DUPFD, @function
rpl_fcntl_DUPFD:
	mov	ecx, esi
	xor	esi, esi
	xor	eax, eax
	mov	edx, ecx
	jmp	fcntl
	.section	.text
	.align	16
	#Procedure 0x407dcd
	.globl sub_407dcd
	.type sub_407dcd, @function
sub_407dcd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407dd0

	.globl readisaac
	.type readisaac, @function
readisaac:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rdx
	mov	rbx, rsi
	mov	r14, rdi
	mov	r12, qword ptr [r14]
	lea	r13, [r14 + 0x820]
	mov	rsi, r13
	sub	rsi, r12
	add	rsi, 0x800
	cmp	r12, r15
	jae	.label_462
	lea	rbp, [r14 + 8]
	mov	rdi, rbx
	mov	rdx, r12
	call	memcpy
	add	rbx, r12
	sub	r15, r12
	xor	r12d, r12d
	nop	dword ptr [rax + rax]
.label_463:
	cmp	r15, 0x800
	jb	.label_460
	mov	rdi, rbp
	mov	rsi, rbx
	call	isaac_refill
	add	rbx, 0x800
	add	r15, -0x800
	jne	.label_463
	jmp	.label_461
.label_460:
	mov	rdi, rbp
	mov	rsi, r13
	call	isaac_refill
	mov	r12d, 0x800
	mov	rsi, r13
.label_462:
	mov	rdi, rbx
	mov	rdx, r15
	call	memcpy
	sub	r12, r15
.label_461:
	mov	qword ptr [r14], r12
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
	#Procedure 0x407e7a
	.globl sub_407e7a
	.type sub_407e7a, @function
sub_407e7a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407e80

	.globl xstrtoumax
	.type xstrtoumax, @function
xstrtoumax:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r13, r8
	mov	r14d, edx
	mov	rbp, rsi
	mov	rbx, rdi
	cmp	r14d, 0x25
	jae	.label_464
	mov	qword ptr [rsp + 8], rcx
	call	__errno_location
	mov	r12, rax
	mov	dword ptr [r12], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_477:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_477
	test	rbp, rbp
	lea	rsi, [rsp + 0x10]
	cmovne	rsi, rbp
	mov	r15d, 4
	cmp	al, 0x2d
	je	.label_473
	mov	rdi, rbx
	mov	edx, r14d
	mov	r14, rsi
	call	strtoumax
	mov	rcx, r14
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rcx]
	cmp	rax, rbx
	je	.label_466
	mov	eax, dword ptr [r12]
	xor	r12d, r12d
	test	eax, eax
	mov	rbp, r13
	je	.label_471
	cmp	eax, 0x22
	jne	.label_473
	mov	r12d, 1
.label_471:
	test	rbp, rbp
	jne	.label_475
	jmp	.label_479
.label_466:
	mov	rbp, r13
	test	rbp, rbp
	je	.label_473
	movsx	esi, byte ptr [rax]
	test	esi, esi
	je	.label_473
	mov	rdi, rbp
	call	strchr
	mov	rcx, r14
	test	rax, rax
	je	.label_473
	mov	qword ptr [rsp], 1
	xor	r12d, r12d
.label_475:
	mov	rax, qword ptr [rcx]
	movsx	ebx, byte ptr [rax]
	test	ebx, ebx
	je	.label_479
	mov	rdi, rbp
	mov	esi, ebx
	call	strchr
	test	rax, rax
	je	.label_469
	mov	r15d, 0x400
	mov	r13d, 1
	add	ebx, -0x45
	cmp	ebx, 0x2f
	ja	.label_470
	movabs	rax, 0x814400308945
	bt	rax, rbx
	jae	.label_470
	mov	esi, 0x30
	mov	rdi, rbp
	call	strchr
	mov	r13d, 1
	mov	rsi, r14
	test	rax, rax
	je	.label_476
	mov	rax, qword ptr [rsi]
	movsx	ecx, byte ptr [rax + 1]
	mov	r13d, 1
	cmp	ecx, 0x42
	je	.label_478
	cmp	ecx, 0x44
	je	.label_478
	cmp	ecx, 0x69
	jne	.label_476
	xor	ecx, ecx
	cmp	byte ptr [rax + 2], 0x42
	sete	cl
	lea	r13, [rcx + rcx + 1]
	jmp	.label_476
.label_478:
	mov	r15d, 0x3e8
	mov	r13d, 2
	jmp	.label_476
.label_470:
	mov	rsi, r14
.label_476:
	mov	rax, qword ptr [rsi]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x42
	cmp	ecx, 0x35
	ja	.label_469
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_472]]
.label_1483:
	lea	rdi, [rsp]
	mov	edx, 3
	jmp	.label_465
.label_469:
	mov	rax, qword ptr [rsp]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
	or	r12d, 2
	jmp	.label_474
.label_1484:
	lea	rdi, [rsp]
	mov	edx, 1
	jmp	.label_465
.label_1485:
	lea	rdi, [rsp]
	mov	edx, 2
	jmp	.label_465
.label_1487:
	lea	rdi, [rsp]
	mov	edx, 4
	jmp	.label_465
.label_1481:
	lea	rdi, [rsp]
	mov	esi, 0x400
	call	bkm_scale_0
	jmp	.label_467
.label_1482:
	lea	rdi, [rsp]
	mov	edx, 6
	jmp	.label_465
.label_1486:
	lea	rdi, [rsp]
	mov	edx, 5
	jmp	.label_465
.label_1488:
	lea	rdi, [rsp]
	mov	edx, 8
	jmp	.label_465
.label_1489:
	lea	rdi, [rsp]
	mov	edx, 7
.label_465:
	mov	esi, r15d
	call	bkm_scale_by_power_0
.label_467:
	mov	rsi, r14
.label_1491:
	or	eax, r12d
	mov	rcx, qword ptr [rsi]
	lea	rdx, [rcx + r13]
	mov	qword ptr [rsi], rdx
	mov	r12d, eax
	or	r12d, 2
	cmp	byte ptr [rcx + r13], 0
	cmove	r12d, eax
.label_479:
	mov	rax, qword ptr [rsp]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
.label_474:
	mov	r15d, r12d
.label_473:
	mov	eax, r15d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1490:
	lea	rdi, [rsp]
	mov	esi, 0x200
	call	bkm_scale_0
	jmp	.label_467
.label_1492:
	lea	rdi, [rsp]
	mov	esi, 2
	call	bkm_scale_0
	jmp	.label_467
.label_464:
	mov	edi, OFFSET FLAT:label_346
	mov	esi, OFFSET FLAT:label_347
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_468
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x408122
	.globl sub_408122
	.type sub_408122, @function
sub_408122:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408130

	.globl parse_field_count
	.type parse_field_count, @function
parse_field_count:
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r14, rdx
	mov	rbx, rsi
	mov	r15, rdi
	lea	rsi, [rsp + 0x10]
	lea	rcx, [rsp + 8]
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:label_166
	call	xstrtoumax
	mov	ecx, eax
	cmp	eax, 4
	ja	.label_483
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_480]]
.label_1757:
	xor	eax, eax
	test	r14, r14
	je	.label_481
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_482
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	xor	edi, edi
	mov	edx, 5
	mov	rsi, r14
	call	dcgettext
	mov	r14, rax
	mov	rdi, r15
	call	quote
	mov	rbx, rax
	mov	edi, 2
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r12
	mov	rcx, r14
	mov	r8, rbx
	call	error
	nop	dword ptr [rax]
.label_1755:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rbx], rax
	jmp	.label_483
.label_1756:
	mov	qword ptr [rbx], -1
.label_483:
	mov	rax, qword ptr [rsp + 0x10]
.label_481:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_487:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4081e5
	.globl sub_4081e5
	.type sub_4081e5, @function
sub_4081e5:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4081ec

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_486
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_485
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_484
.label_485:
	call	xalloc_die
.label_486:
	test	rcx, rcx
	jne	.label_488
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	xor	ecx, ecx
	cmp	r8, 0x80
	seta	cl
	add	rcx, rax
.label_488:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_487
.label_484:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
	.section	.text
	.align	16
	#Procedure 0x408260
	.globl rotr32
	.type rotr32, @function
rotr32:

	mov	ecx, esi
	ror	edi, cl
	mov	eax, edi
	ret	
	.section	.text
	.align	16
	#Procedure 0x408267
	.globl sub_408267
	.type sub_408267, @function
sub_408267:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408270

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
	je	.label_492
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 0x18], r14
	xor	ebp, ebp
	nop	dword ptr [rax + rax]
.label_489:
	mov	rdi, r15
	mov	rsi, r12
	mov	rdx, rbx
	call	strncmp
	test	eax, eax
	jne	.label_490
	mov	rdi, r15
	call	strlen
	cmp	rax, rbx
	je	.label_494
	cmp	qword ptr [rsp + 8], -1
	je	.label_495
	mov	rax, qword ptr [rsp + 0x18]
	test	rax, rax
	je	.label_491
	mov	rdi, qword ptr [rsp + 8]
	imul	rdi, r13
	add	rdi, rax
	mov	rsi, r14
	mov	rdx, r13
	call	memcmp
	test	eax, eax
	je	.label_490
.label_491:
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_490
.label_495:
	mov	qword ptr [rsp + 8], rbp
	nop	word ptr [rax + rax]
.label_490:
	mov	rax, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rax + rbp*8 + 8]
	inc	rbp
	add	r14, r13
	test	r15, r15
	jne	.label_489
	jmp	.label_493
.label_492:
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
.label_493:
	mov	rax, qword ptr [rsp + 0x10]
	test	al, 1
	mov	rbp, -2
	cmove	rbp, qword ptr [rsp + 8]
.label_494:
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
	.align	16
	#Procedure 0x40836d
	.globl sub_40836d
	.type sub_40836d, @function
sub_40836d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408370

	.globl hash_rehash
	.type hash_rehash, @function
hash_rehash:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x50
	mov	rbx, rdi
	mov	rax, qword ptr [rbx + 0x28]
	mov	rdi, rsi
	mov	rsi, rax
	call	compute_bucket_size
	mov	rbp, rax
	test	rbp, rbp
	je	.label_496
	mov	r14b, 1
	cmp	rbp, qword ptr [rbx + 0x10]
	je	.label_498
	mov	esi, 0x10
	mov	rdi, rbp
	call	rpl_calloc
	mov	qword ptr [rsp], rax
	test	rax, rax
	je	.label_496
	mov	qword ptr [rsp + 0x10], rbp
	shl	rbp, 4
	add	rbp, qword ptr [rsp]
	mov	qword ptr [rsp + 8], rbp
	xorps	xmm0, xmm0
	movups	xmmword ptr [rsp + 0x18], xmm0
	mov	rax, qword ptr [rbx + 0x28]
	mov	qword ptr [rsp + 0x28], rax
	mov	rax, qword ptr [rbx + 0x30]
	mov	qword ptr [rsp + 0x30], rax
	mov	rax, qword ptr [rbx + 0x38]
	mov	qword ptr [rsp + 0x38], rax
	mov	rax, qword ptr [rbx + 0x40]
	mov	qword ptr [rsp + 0x40], rax
	mov	rax, qword ptr [rbx + 0x48]
	mov	qword ptr [rsp + 0x48], rax
	lea	rdi, [rsp]
	xor	edx, edx
	mov	rsi, rbx
	call	transfer_entries
	test	al, al
	je	.label_499
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rbx], rax
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rbx + 8], rax
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rbx + 0x10], rax
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rbx + 0x18], rax
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [rbx + 0x48], rax
	jmp	.label_498
.label_497:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x408450
	.globl sub_408450
	.type sub_408450, @function
sub_408450:

	nop	dword ptr [rax + rax]
.label_499:
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [rbx + 0x48], rax
	lea	rsi, [rsp]
	mov	edx, 1
	mov	rdi, rbx
	call	transfer_entries
	test	al, al
	je	.label_497
	lea	rsi, [rsp]
	xor	edx, edx
	mov	rdi, rbx
	call	transfer_entries
	test	al, al
	je	.label_497
	mov	rdi, qword ptr [rsp]
	call	free
.label_496:
	xor	r14d, r14d
.label_498:
	mov	eax, r14d
	add	rsp, 0x50
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4084a0

	.globl field_sep
	.type field_sep, @function
field_sep:
	push	rbx
	mov	ebx, edi
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	cmp	bl, 0xa
	sete	cl
	mov	al, byte ptr [rax + rbx*2]
	and	al, 1
	or	al, cl
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4084ba
	.globl sub_4084ba
	.type sub_4084ba, @function
sub_4084ba:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4084c0
	.globl rotl64
	.type rotl64, @function
rotl64:

	mov	ecx, esi
	rol	rdi, cl
	mov	rax, rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x4084c9
	.globl sub_4084c9
	.type sub_4084c9, @function
sub_4084c9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4084d0

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_500
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x4084f2
	.globl sub_4084f2
	.type sub_4084f2, @function
sub_4084f2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408500

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
	mov	r12d, edx
	mov	rbp, rsi
	mov	r14, rdi
	mov	r15, qword ptr [rbp]
	mov	al, 1
	cmp	r15, qword ptr [rbp + 8]
	jae	.label_501
	mov	qword ptr [rsp], rbp
	nop	dword ptr [rax + rax]
.label_508:
	cmp	qword ptr [r15], 0
	je	.label_505
	mov	rbx, qword ptr [r15 + 8]
	test	rbx, rbx
	je	.label_510
	nop	word ptr cs:[rax + rax]
.label_504:
	mov	r13, qword ptr [rbx]
	mov	rdi, r14
	mov	rsi, r13
	call	safe_hasher
	mov	rbp, qword ptr [rbx + 8]
	cmp	qword ptr [rax], 0
	je	.label_506
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rbx + 8], rcx
	mov	qword ptr [rax + 8], rbx
	jmp	.label_507
	.section	.text
	.align	16
	#Procedure 0x408576
	.globl sub_408576
	.type sub_408576, @function
sub_408576:

	nop	word ptr cs:[rax + rax]
.label_506:
	mov	qword ptr [rax], r13
	inc	qword ptr [r14 + 0x18]
	mov	rdi, r14
	mov	rsi, rbx
	call	free_entry
.label_507:
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_504
.label_510:
	mov	r13, qword ptr [r15]
	mov	qword ptr [r15 + 8], 0
	test	r12b, r12b
	mov	rbp, qword ptr [rsp]
	jne	.label_505
	mov	rdi, r14
	mov	rsi, r13
	call	safe_hasher
	mov	rbx, rax
	cmp	qword ptr [rbx], 0
	je	.label_509
	mov	rdi, r14
	call	allocate_entry
	test	rax, rax
	je	.label_502
	mov	qword ptr [rax], r13
	mov	rcx, qword ptr [rbx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbx + 8], rax
	jmp	.label_503
.label_509:
	mov	qword ptr [rbx], r13
	inc	qword ptr [r14 + 0x18]
.label_503:
	mov	qword ptr [r15], 0
	dec	qword ptr [rbp + 0x18]
.label_505:
	add	r15, 0x10
	cmp	r15, qword ptr [rbp + 8]
	jb	.label_508
	mov	al, 1
.label_501:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_502:
	xor	eax, eax
	jmp	.label_501
	.section	.text
	.align	16
	#Procedure 0x408615
	.globl sub_408615
	.type sub_408615, @function
sub_408615:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408620

	.globl initialize_exit_failure
	.type initialize_exit_failure, @function
initialize_exit_failure:
	mov	dword ptr [dword ptr [rip + exit_failure]],  2
	ret	
	.section	.text
	.align	16
	#Procedure 0x40862b
	.globl sub_40862b
	.type sub_40862b, @function
sub_40862b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408630

	.globl ind
	.type ind, @function
ind:
	and	esi, 0x7f8
	mov	rax, qword ptr [rdi + rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40863b
	.globl sub_40863b
	.type sub_40863b, @function
sub_40863b:

	nop	dword ptr [rax + rax]
.label_516:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_511
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rsi,  qword ptr [word ptr [rip + compress_program]]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 2
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	.section	.text
	.align	16
	#Procedure 0x408680

	.globl reap
	.type reap, @function
reap:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	cmp	ebp, 1
	sbb	edi, edi
	or	edi, ebp
	xor	edx, edx
	test	ebp, ebp
	sete	dl
	lea	rsi, [rsp + 4]
	call	waitpid
	mov	ebx, eax
	test	ebx, ebx
	js	.label_516
	je	.label_512
	test	ebp, ebp
	jg	.label_513
	mov	edi, ebx
	call	delete_proc
	test	al, al
	je	.label_512
.label_513:
	movzx	eax, word ptr [rsp + 4]
	test	ax, 0xff7f
	jne	.label_515
	dec	dword ptr [dword ptr [rip + nprocs]]
.label_512:
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_515:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_514
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi,  qword ptr [word ptr [rip + compress_program]]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 2
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408710
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	mov	eax,  dword ptr [dword ptr [rip + label_517]]
	mov	dword ptr [rdi + 0x10], eax
	movups	xmm0,  xmmword ptr [word ptr [rip + default_tuning]]
	movups	xmmword ptr [rdi], xmm0
	ret	
	.section	.text
	.align	16
	#Procedure 0x408724
	.globl sub_408724
	.type sub_408724, @function
sub_408724:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408730

	.globl begfield
	.type begfield, @function
begfield:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r14, rsi
	mov	rbx, qword ptr [rdi]
	mov	rax, qword ptr [rdi + 8]
	lea	r15, [rbx + rax - 1]
	mov	r13, qword ptr [r14]
	mov	r12, qword ptr [r14 + 8]
	cmp	dword ptr [dword ptr [rip + tab]],  0x80
	je	.label_527
	cmp	rbx, r15
	jae	.label_523
	mov	eax,  dword ptr [dword ptr [rip + tab]]
	nop	word ptr [rax + rax]
.label_529:
	test	r13, r13
	jne	.label_531
	jmp	.label_523
	.section	.text
	.align	16
	#Procedure 0x40877a
	.globl sub_40877a
	.type sub_40877a, @function
sub_40877a:

	nop	word ptr [rax + rax]
.label_532:
	inc	rbx
.label_531:
	cmp	rbx, r15
	jae	.label_519
	movsx	edx, byte ptr [rbx]
	mov	cl, 1
	cmp	edx, eax
	jne	.label_532
	jmp	.label_525
	.section	.text
	.align	16
	#Procedure 0x408793
	.globl sub_408793
	.type sub_408793, @function
sub_408793:

	nop	word ptr cs:[rax + rax]
.label_519:
	xor	ecx, ecx
.label_525:
	dec	r13
	lea	rdx, [rbx + 1]
	test	cl, cl
	cmovne	rbx, rdx
	cmp	rbx, r15
	jb	.label_529
	jmp	.label_523
	.section	.text
	.align	16
	#Procedure 0x4087b6
	.globl sub_4087b6
	.type sub_4087b6, @function
sub_4087b6:

	nop	word ptr cs:[rax + rax]
.label_522:
	dec	r13
.label_527:
	cmp	rbx, r15
	jae	.label_523
	test	r13, r13
	jne	.label_521
	jmp	.label_523
	.section	.text
	.align	16
	#Procedure 0x4087cf
	.globl sub_4087cf
	.type sub_4087cf, @function
sub_4087cf:

	nop	
.label_518:
	inc	rbx
.label_521:
	cmp	rbx, r15
	jae	.label_530
	movsx	edi, byte ptr [rbx]
	call	to_uchar
	movzx	eax, al
	cmp	byte ptr [byte ptr [rax + blanks]],  0
	jne	.label_518
	jmp	.label_530
	.section	.text
	.align	16
	#Procedure 0x4087ee
	.globl sub_4087ee
	.type sub_4087ee, @function
sub_4087ee:

	nop	
.label_520:
	inc	rbx
.label_530:
	cmp	rbx, r15
	jae	.label_522
	movsx	edi, byte ptr [rbx]
	call	to_uchar
	movzx	eax, al
	cmp	byte ptr [byte ptr [rax + blanks]],  0
	je	.label_520
	jmp	.label_522
.label_523:
	cmp	byte ptr [r14 + 0x30], 0
	jne	.label_524
	jmp	.label_526
	.section	.text
	.align	16
	#Procedure 0x408817
	.globl sub_408817
	.type sub_408817, @function
sub_408817:

	nop	word ptr [rax + rax]
.label_528:
	inc	rbx
.label_524:
	cmp	rbx, r15
	jae	.label_526
	movsx	edi, byte ptr [rbx]
	call	to_uchar
	movzx	eax, al
	cmp	byte ptr [byte ptr [rax + blanks]],  0
	jne	.label_528
.label_526:
	add	rbx, r12
	cmp	r15, rbx
	cmovb	rbx, r15
	mov	rax, rbx
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x408853
	.globl sub_408853
	.type sub_408853, @function
sub_408853:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408860

	.globl init_node
	.type init_node, @function
init_node:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, r8
	mov	r15, rcx
	mov	r12, rdx
	mov	r13, rsi
	mov	qword ptr [rsp], r14
	neg	r14
	shl	r14, 5
	jmp	.label_533
	.section	.text
	.align	16
	#Procedure 0x408884
	.globl sub_408884
	.type sub_408884, @function
sub_408884:

	nop	word ptr cs:[rax + rax]
.label_534:
	mov	rcx, r15
	shr	rcx, 1
	sub	r15, rcx
	mov	qword ptr [r13 + 0x40], rbp
	mov	r9d, 1
	mov	rdi, r13
	mov	rsi, rbp
	mov	rdx, rbx
	mov	r8, qword ptr [rsp]
	call	init_node
	mov	qword ptr [r13 + 0x48], rax
	xor	r9d, r9d
	mov	rdi, r13
	mov	r13, rax
.label_533:
	lea	rax, [rdi + 0x28]
	lea	rcx, [rdi + 0x30]
	lea	rdx, [rdi + 0x10]
	lea	rsi, [rdi + 0x18]
	and	r9b, 1
	cmovne	rsi, rdx
	test	r9b, r9b
	cmovne	rcx, rax
	mov	rax, qword ptr [rcx]
	mov	rcx, rax
	shr	rcx, 1
	sub	rax, rcx
	mov	rbx, r12
	add	rbx, r14
	mov	rdx, rcx
	shl	rdx, 5
	mov	r12, rbx
	sub	r12, rdx
	mov	rbp, r13
	sub	rbp, -0x80
	mov	qword ptr [r13 + 0x10], rbx
	mov	qword ptr [r13], rbx
	mov	qword ptr [r13 + 0x18], r12
	mov	qword ptr [r13 + 8], r12
	mov	qword ptr [r13 + 0x20], rsi
	mov	qword ptr [r13 + 0x28], rcx
	mov	qword ptr [r13 + 0x30], rax
	mov	qword ptr [r13 + 0x38], rdi
	mov	eax, dword ptr [rdi + 0x50]
	inc	eax
	mov	dword ptr [r13 + 0x50], eax
	mov	byte ptr [r13 + 0x54], 0
	lea	rdi, [r13 + 0x58]
	xor	esi, esi
	call	pthread_mutex_init
	cmp	r15, 2
	jae	.label_534
	xorps	xmm0, xmm0
	movups	xmmword ptr [r13 + 0x40], xmm0
	mov	rax, rbp
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
	#Procedure 0x408964
	.globl sub_408964
	.type sub_408964, @function
sub_408964:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408970

	.globl umaxtostr
	.type umaxtostr, @function
umaxtostr:
	mov	rcx, rdi
	mov	byte ptr [rsi + 0x14], 0
	add	rsi, 0x14
	movabs	r8, 0xcccccccccccccccd
	nop	word ptr cs:[rax + rax]
.label_535:
	mov	rax, rcx
	mul	r8
	shr	rdx, 3
	lea	eax, [rdx + rdx]
	lea	eax, [rax + rax*4]
	mov	edi, ecx
	sub	edi, eax
	or	edi, 0x30
	mov	byte ptr [rsi - 1], dil
	dec	rsi
	cmp	rcx, 9
	mov	rcx, rdx
	ja	.label_535
	mov	rax, rsi
	ret	
	.section	.text
	.align	16
	#Procedure 0x4089bb
	.globl sub_4089bb
	.type sub_4089bb, @function
sub_4089bb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4089c0
	.globl timespec_cmp
	.type timespec_cmp, @function
timespec_cmp:

	mov	eax, 0xffffffff
	cmp	rdi, rdx
	jl	.label_536
	mov	eax, 1
	jg	.label_536
	sub	esi, ecx
	mov	eax, esi
.label_536:
	ret	
	.section	.text
	.align	16
	#Procedure 0x4089d6
	.globl sub_4089d6
	.type sub_4089d6, @function
sub_4089d6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4089e0

	.globl proctab_hasher
	.type proctab_hasher, @function
proctab_hasher:
	movsxd	rax, dword ptr [rdi + 8]
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4089ed
	.globl sub_4089ed
	.type sub_4089ed, @function
sub_4089ed:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4089f0
	.globl randread_set_handler_arg
	.type randread_set_handler_arg, @function
randread_set_handler_arg:

	mov	qword ptr [rdi + 0x10], rsi
	ret	
	.section	.text
	.align	16
	#Procedure 0x4089f5
	.globl sub_4089f5
	.type sub_4089f5, @function
sub_4089f5:

	nop	word ptr cs:[rax + rax]
.label_539:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_537
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, rbx
	call	sort_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408a20

	.globl check_output
	.type check_output, @function
check_output:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_538
	mov	esi, 0x80041
	mov	edx, 0x1b6
	xor	eax, eax
	mov	rdi, rbx
	call	open
	test	eax, eax
	js	.label_539
	mov	esi, 1
	mov	edi, eax
	pop	rbx
	jmp	move_fd
.label_538:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x408a50

	.globl _obstack_allocated_p
	.type _obstack_allocated_p, @function
_obstack_allocated_p:
	mov	rcx, qword ptr [rdi + 8]
	jmp	.label_540
	.section	.text
	.align	16
	#Procedure 0x408a56
	.globl sub_408a56
	.type sub_408a56, @function
sub_408a56:

	nop	word ptr cs:[rax + rax]
.label_543:
	mov	rcx, qword ptr [rcx + 8]
.label_540:
	test	rcx, rcx
	je	.label_541
	cmp	rcx, rsi
	jae	.label_543
	mov	eax, 1
	cmp	qword ptr [rcx], rsi
	jb	.label_543
	jmp	.label_542
.label_541:
	xor	eax, eax
.label_542:
	ret	
	.section	.text
	.align	16
	#Procedure 0x408a7d
	.globl sub_408a7d
	.type sub_408a7d, @function
sub_408a7d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408a80
	.globl md5_buffer
	.type md5_buffer, @function
md5_buffer:

	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0xa8
	mov	r14, rdx
	mov	r15, rsi
	mov	rbx, rdi
	lea	r12, [rsp + 8]
	mov	rdi, r12
	call	md5_init_ctx
	mov	rdi, rbx
	mov	rsi, r15
	mov	rdx, r12
	call	md5_process_bytes
	mov	rdi, r12
	mov	rsi, r14
	call	md5_finish_ctx
	add	rsp, 0xa8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x408acc
	.globl sub_408acc
	.type sub_408acc, @function
sub_408acc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408ad0

	.globl dup_safer
	.type dup_safer, @function
dup_safer:
	xor	esi, esi
	mov	edx, 3
	xor	eax, eax
	jmp	rpl_fcntl
	.section	.text
	.align	16
	#Procedure 0x408ade
	.globl sub_408ade
	.type sub_408ade, @function
sub_408ade:

	nop	
	.section	.text
	.align	16
	#Procedure 0x408ae0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	.section	.text
	.align	16
	#Procedure 0x408ae8
	.globl sub_408ae8
	.type sub_408ae8, @function
sub_408ae8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408af0

	.globl next_prime
	.type next_prime, @function
next_prime:
	push	r14
	push	rbx
	push	rax
	cmp	rdi, 0xa
	mov	ebx, 0xa
	cmovae	rbx, rdi
	or	rbx, 1
	mov	r14, -1
	jmp	.label_544
	.section	.text
	.align	16
	#Procedure 0x408b0e
	.globl sub_408b0e
	.type sub_408b0e, @function
sub_408b0e:

	nop	
.label_545:
	add	rbx, 2
.label_544:
	cmp	rbx, -1
	je	.label_546
	mov	rdi, rbx
	call	is_prime
	test	al, al
	je	.label_545
	mov	r14, rbx
.label_546:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x408b34
	.globl sub_408b34
	.type sub_408b34, @function
sub_408b34:

	nop	word ptr cs:[rax + rax]
.label_548:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_547
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x408b4b
	.globl sub_408b4b
	.type sub_408b4b, @function
sub_408b4b:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408b55

	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:
	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_548
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_548
.label_547:
	ret	
	.section	.text
	.align	16
	#Procedure 0x408b70

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
	je	.label_560
	mov	edx, OFFSET FLAT:label_555
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_562
.label_560:
	mov	edx, OFFSET FLAT:label_563
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_562:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_567
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
	mov	esi, OFFSET FLAT:label_564
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_550
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_552]]
.label_1740:
	add	rsp, 8
	jmp	.label_549
.label_550:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_559
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
	jmp	.label_549
.label_1741:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_565
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
.label_1742:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_551
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
.label_1743:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_557
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
.label_1744:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_553
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
	jmp	.label_549
.label_1745:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_556
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
	jmp	.label_549
.label_1746:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_554
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
	jmp	.label_549
.label_1747:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_558
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
	jmp	.label_549
.label_1749:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_561
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
	jmp	.label_549
.label_1748:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_566
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
.label_549:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x408ec8
	.globl sub_408ec8
	.type sub_408ec8, @function
sub_408ec8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408ed0

	.globl collate_error
	.type collate_error, @function
collate_error:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	qword ptr [rsp], r8
	mov	rbx, rcx
	mov	r12, rdx
	mov	r13, rsi
	mov	ebp, edi
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_568
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rcx
	call	error
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_569
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	r14d,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_570
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	xor	edi, edi
	mov	esi, 8
	mov	rdx, r13
	mov	rcx, r12
	call	quotearg_n_style_mem
	mov	rbp, rax
	mov	edi, 1
	mov	esi, 8
	mov	rdx, rbx
	mov	rcx, qword ptr [rsp]
	call	quotearg_n_style_mem
	mov	rbx, rax
	xor	esi, esi
	xor	eax, eax
	mov	edi, r14d
	mov	rdx, r15
	mov	rcx, rbp
	mov	r8, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	error
	.section	.text
	.align	16
	#Procedure 0x408f9a
	.globl sub_408f9a
	.type sub_408f9a, @function
sub_408f9a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408fa0

	.globl cleanup
	.type cleanup, @function
cleanup:
	push	rbx
	mov	rbx,  qword ptr [word ptr [rip + temphead]]
	jmp	.label_571
	.section	.text
	.align	16
	#Procedure 0x408faa
	.globl sub_408faa
	.type sub_408faa, @function
sub_408faa:

	nop	word ptr [rax + rax]
.label_572:
	lea	rdi, [rbx + 0xd]
	call	unlink
	mov	rbx, qword ptr [rbx]
.label_571:
	test	rbx, rbx
	jne	.label_572
	mov	qword ptr [word ptr [rip + temphead]],  0
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x408fce
	.globl sub_408fce
	.type sub_408fce, @function
sub_408fce:

	nop	
	.section	.text
	.align	16
	#Procedure 0x408fd0

	.globl readtokens0_init
	.type readtokens0_init, @function
readtokens0_init:
	push	rbx
	mov	rbx, rdi
	lea	rdi, [rbx + 0x18]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx], xmm0
	mov	qword ptr [rbx + 0x10], 0
	xor	esi, esi
	xor	edx, edx
	mov	ecx, OFFSET FLAT:malloc
	mov	r8d, OFFSET FLAT:free
	call	_obstack_begin
	lea	rdi, [rbx + 0x70]
	xor	esi, esi
	xor	edx, edx
	mov	ecx, OFFSET FLAT:malloc
	mov	r8d, OFFSET FLAT:free
	call	_obstack_begin
	add	rbx, 0xc8
	xor	esi, esi
	xor	edx, edx
	mov	ecx, OFFSET FLAT:malloc
	mov	r8d, OFFSET FLAT:free
	mov	rdi, rbx
	pop	rbx
	jmp	_obstack_begin
	.section	.text
	.align	16
	#Procedure 0x409031
	.globl sub_409031
	.type sub_409031, @function
sub_409031:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409040
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_573
	movabs	rax, 0x7e0000007e03ff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_573:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x40905e
	.globl sub_40905e
	.type sub_40905e, @function
sub_40905e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x409060

	.globl create_temp_file
	.type create_temp_file, @function
create_temp_file:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	dword ptr [rsp + 0xc], esi
	mov	r14, rdi
	mov	rax,  qword ptr [word ptr [rip + create_temp_file.temp_dir_index]]
	mov	rcx,  qword ptr [word ptr [rip + temp_dirs]]
	mov	r12, qword ptr [rcx + rax*8]
	mov	rdi, r12
	call	strlen
	mov	rbx, rax
	lea	rdi, [rbx + 0x20]
	and	rdi, 0xfffffffffffffff8
	call	xmalloc
	mov	rbp, rax
	lea	r13, [rbp + 0xd]
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, rbx
	call	memcpy
	movabs	rax, 0x58585874726f732f
	mov	qword ptr [rbp + rbx + 0xd], rax
	mov	dword ptr [rbp + rbx + 0x15], 0x585858
	mov	qword ptr [rbp], 0
	mov	rax,  qword ptr [word ptr [rip + create_temp_file.temp_dir_index]]
	inc	rax
	xor	ecx, ecx
	cmp	rax,  qword ptr [word ptr [rip + temp_dir_count]]
	cmovne	rcx, rax
	mov	qword ptr [word ptr [rip + create_temp_file.temp_dir_index]],  rcx
	lea	rdi, [rsp + 0x10]
	call	cs_enter
	mov	esi, 0x80000
	mov	rdi, r13
	call	mkostemp_safer
	mov	ebx, eax
	test	ebx, ebx
	js	.label_574
	mov	rax,  qword ptr [word ptr [rip + temptail]]
	mov	qword ptr [rax], rbp
	mov	qword ptr [word ptr [rip + temptail]],  rbp
.label_574:
	call	__errno_location
	mov	r15, rax
	mov	r13d, dword ptr [r15]
	lea	rdi, [rsp + 0x10]
	call	cs_leave
	mov	dword ptr [r15], r13d
	test	ebx, ebx
	jns	.label_577
	cmp	r13d, 0x18
	jne	.label_575
	mov	eax, dword ptr [rsp + 0xc]
	test	al, al
	je	.label_575
	mov	rdi, rbp
	call	free
	xor	ebp, ebp
.label_577:
	mov	dword ptr [r14], ebx
	mov	rax, rbp
	add	rsp, 0x98
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_575:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_576
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r12
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 2
	xor	eax, eax
	mov	esi, r13d
	mov	rdx, rbx
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4091b0

	.globl traverse_raw_number
	.type traverse_raw_number, @function
traverse_raw_number:
	mov	rcx, qword ptr [rdi]
	lea	r9, [rcx + 1]
	mov	dl, byte ptr [rcx]
	movzx	r10d, dl
	lea	eax, [r10 - 0x30]
	cmp	eax, 9
	ja	.label_583
	mov	r8d,  dword ptr [dword ptr [rip + thousands_sep]]
	xor	esi, esi
	nop	
.label_584:
	cmp	sil, dl
	mov	al, dl
	jb	.label_579
	mov	al, sil
.label_579:
	movsx	r11d, byte ptr [r9]
	add	rcx, 2
	cmp	r11d, r8d
	cmovne	rcx, r9
	lea	r9, [rcx + 1]
	movzx	edx, byte ptr [rcx]
	movzx	r10d, dl
	lea	esi, [r10 - 0x30]
	cmp	esi, 0xa
	mov	sil, al
	jb	.label_584
	cmp	r11d, r8d
	jne	.label_578
	jmp	.label_585
.label_581:
	mov	rcx, r9
.label_585:
	dec	rcx
	mov	qword ptr [rdi], rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x409211
	.globl sub_409211
	.type sub_409211, @function
sub_409211:

	nop	word ptr [rax + rax]
.label_583:
	xor	eax, eax
.label_578:
	cmp	r10d,  dword ptr [dword ptr [rip + decimal_point]]
	jne	.label_581
	movzx	esi, byte ptr [r9]
	inc	r9
	lea	ecx, [rsi - 0x30]
	cmp	ecx, 9
	ja	.label_581
	mov	rcx, r9
	nop	word ptr cs:[rax + rax]
.label_582:
	cmp	al, sil
	jb	.label_580
	mov	sil, al
.label_580:
	mov	al, sil
	movzx	esi, byte ptr [rcx]
	inc	rcx
	mov	edx, esi
	add	edx, -0x30
	cmp	edx, 0xa
	jb	.label_582
	jmp	.label_585
	.section	.text
	.align	16
	#Procedure 0x409260

	.globl xstrtol_error
	.type xstrtol_error, @function
xstrtol_error:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r15d, r9d
	mov	r14, r8
	mov	eax, esi
	dec	edi
	cmp	edi, 4
	jae	.label_586
	movsxd	rsi, edi
	mov	rsi,  qword ptr [word ptr [+ (rsi * 8) + label_587]]
	cdqe	
	test	eax, eax
	js	.label_588
	shl	rax, 5
	mov	rbx, qword ptr [rcx + rax]
	mov	ebp, OFFSET FLAT:label_589
	jmp	.label_590
.label_586:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40929b
	.globl sub_40929b
	.type sub_40929b, @function
sub_40929b:

	nop	word ptr cs:[rax + rax]
.label_588:
	lea	rbx, [rsp + 6]
	mov	ebp, OFFSET FLAT:label_589
	sub	rbp, rax
	mov	byte ptr [rsp + 6], dl
	mov	byte ptr [rsp + 7], 0
.label_590:
	xor	edi, edi
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	xor	eax, eax
	mov	edi, r15d
	mov	rdx, rcx
	mov	rcx, rbp
	mov	r8, rbx
	mov	r9, r14
	call	error
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_591:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_126
.label_593:
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	sort_die
	nop	word ptr cs:[rax + rax]
.label_592:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_537
	jmp	.label_593
	.section	.text
	.align	16
	#Procedure 0x409322

	.globl random_md5_state_init
	.type random_md5_state_init, @function
random_md5_state_init:
	push	r14
	push	rbx
	sub	rsp, 0x18
	mov	r14, rdi
	mov	esi, 0x10
	call	randread_new
	mov	rbx, rax
	test	rbx, rbx
	je	.label_592
	lea	rsi, [rsp]
	mov	edx, 0x10
	mov	rdi, rbx
	call	randread
	mov	rdi, rbx
	call	randread_free
	test	eax, eax
	jne	.label_591
	mov	edi, OFFSET FLAT:random_md5_state
	call	md5_init_ctx
	lea	rdi, [rsp]
	mov	esi, 0x10
	mov	edx, OFFSET FLAT:random_md5_state
	call	md5_process_bytes
	add	rsp, 0x18
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x409380

	.globl xmemdup
	.type xmemdup, @function
xmemdup:
	push	r15
	push	r14
	push	rbx
	mov	r15, rsi
	mov	r14, rdi
	mov	rdi, r15
	call	xmalloc
	mov	rbx, rax
	mov	rdi, rbx
	mov	rsi, r14
	mov	rdx, r15
	call	memcpy
	mov	rax, rbx
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x4093ad
	.globl sub_4093ad
	.type sub_4093ad, @function
sub_4093ad:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4093b0
	.globl xstrdup
	.type xstrdup, @function
xstrdup:

	push	rbx
	mov	rbx, rdi
	call	strlen
	lea	rsi, [rax + 1]
	mov	rdi, rbx
	pop	rbx
	jmp	xmemdup
	.section	.text
	.align	16
	#Procedure 0x4093c3
	.globl sub_4093c3
	.type sub_4093c3, @function
sub_4093c3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4093d0
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
	#Procedure 0x4093df
	.globl sub_4093df
	.type sub_4093df, @function
sub_4093df:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4093e0

	.globl buffer_linelim
	.type buffer_linelim, @function
buffer_linelim:
	mov	rax, qword ptr [rdi]
	add	rax, qword ptr [rdi + 0x18]
	ret	
	.section	.text
	.align	16
	#Procedure 0x4093e8
	.globl sub_4093e8
	.type sub_4093e8, @function
sub_4093e8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4093f0

	.globl make_timespec
	.type make_timespec, @function
make_timespec:
	mov	rax, rdi
	mov	rdx, rsi
	ret	
	.section	.text
	.align	16
	#Procedure 0x4093f7
	.globl sub_4093f7
	.type sub_4093f7, @function
sub_4093f7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409400

	.globl sort_buffer_size
	.type sort_buffer_size, @function
sort_buffer_size:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	r15, rcx
	mov	r12, rdx
	mov	r14, rsi
	mov	qword ptr [rsp], rdi
	lea	rbx, [r15 + 2]
	test	r12, r12
	je	.label_594
	inc	r15
	xor	r13d, r13d
	nop	word ptr cs:[rax + rax]
.label_601:
	test	r13, r13
	je	.label_606
	mov	rax, qword ptr [r14 + r13*8]
	cmp	byte ptr [rax], 0x2d
	jne	.label_595
	cmp	byte ptr [rax + 1], 0
	je	.label_599
.label_595:
	mov	rdi, qword ptr [r14 + r13*8]
	lea	rsi, [rsp + 8]
	call	stat
	jmp	.label_604
	.section	.text
	.align	16
	#Procedure 0x409464
	.globl sub_409464
	.type sub_409464, @function
sub_409464:

	nop	word ptr cs:[rax + rax]
.label_606:
	mov	rax, qword ptr [rsp]
	mov	rdi, qword ptr [rax + r13*8]
	call	fileno
	mov	edi, eax
	jmp	.label_607
.label_599:
	xor	edi, edi
.label_607:
	lea	rsi, [rsp + 8]
	call	fstat
.label_604:
	test	eax, eax
	jne	.label_598
	mov	eax, dword ptr [rsp + 0x20]
	mov	ecx, 0xf000
	and	eax, ecx
	cmp	eax, 0x8000
	jne	.label_600
	mov	rbp, qword ptr [rsp + 0x38]
	jmp	.label_605
	.section	.text
	.align	16
	#Procedure 0x4094ae
	.globl sub_4094ae
	.type sub_4094ae, @function
sub_4094ae:

	nop	
.label_600:
	mov	rax,  qword ptr [word ptr [rip + sort_size]]
	test	rax, rax
	mov	ebp, 0x20000
	jne	.label_603
.label_605:
	cmp	qword ptr [word ptr [rip + sort_buffer_size.size_bound]],  0
	jne	.label_597
	mov	rax,  qword ptr [word ptr [rip + sort_size]]
	mov	qword ptr [word ptr [rip + sort_buffer_size.size_bound]],  rax
	test	rax, rax
	jne	.label_597
	call	default_sort_size
	mov	qword ptr [word ptr [rip + sort_buffer_size.size_bound]],  rax
	nop	word ptr [rax + rax]
.label_597:
	mov	rcx, rbp
	imul	rcx, r15
	inc	rcx
	xor	edx, edx
	mov	rax, rcx
	div	r15
	cmp	rbp, rax
	jne	.label_602
	mov	rax,  qword ptr [word ptr [rip + sort_buffer_size.size_bound]]
	sub	rax, rbx
	cmp	rax, rcx
	jbe	.label_602
	add	rbx, rcx
	inc	r13
	cmp	r13, r12
	jb	.label_601
	jmp	.label_594
.label_602:
	mov	rax,  qword ptr [word ptr [rip + sort_buffer_size.size_bound]]
.label_603:
	mov	rbx, rax
.label_594:
	mov	rax, rbx
	add	rsp, 0x98
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_598:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_596
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [r14 + r13*8]
	mov	rdi, rax
	call	sort_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409570

	.globl insertkey
	.type insertkey, @function
insertkey:
	push	rax
	mov	esi, 0x48
	call	xmemdup
	mov	ecx, OFFSET FLAT:keylist
.label_608:
	mov	rdx, rcx
	mov	rcx, qword ptr [rdx]
	test	rcx, rcx
	lea	rcx, [rcx + 0x40]
	jne	.label_608
	mov	qword ptr [rdx], rax
	mov	qword ptr [rax + 0x40], 0
	pop	rax
	ret	
	.section	.text
	.align	16
	#Procedure 0x40959c
	.globl sub_40959c
	.type sub_40959c, @function
sub_40959c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4095a0

	.globl _obstack_begin
	.type _obstack_begin, @function
_obstack_begin:
	push	rax
	mov	qword ptr [rdi + 0x38], rcx
	mov	qword ptr [rdi + 0x40], r8
	and	byte ptr [rdi + 0x50], 0xfe
	call	_obstack_begin_worker
	mov	eax, 1
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4095b9
	.globl sub_4095b9
	.type sub_4095b9, @function
sub_4095b9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4095c0

	.globl open_temp
	.type open_temp, @function
open_temp:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x10
	mov	rbx, rdi
	cmp	byte ptr [rbx + 0xc], 1
	jne	.label_609
	mov	edi, dword ptr [rbx + 8]
	call	wait_proc
.label_609:
	lea	rdi, [rbx + 0xd]
	xor	ebp, ebp
	xor	esi, esi
	xor	eax, eax
	call	open
	mov	r14d, eax
	test	r14d, r14d
	js	.label_615
	lea	rdi, [rsp + 8]
	mov	esi, 9
	call	pipe_fork
	cmp	eax, -1
	je	.label_611
	test	eax, eax
	je	.label_613
	mov	dword ptr [rbx + 8], eax
	mov	rdi, rbx
	call	register_proc
	mov	edi, r14d
	call	close
	mov	edi, dword ptr [rsp + 0xc]
	call	close
	mov	edi, dword ptr [rsp + 8]
	mov	esi, OFFSET FLAT:label_96
	call	fdopen
	mov	rbp, rax
	test	rbp, rbp
	jne	.label_615
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	mov	edi, dword ptr [rsp + 8]
	call	close
	mov	dword ptr [rbx], ebp
	jmp	.label_612
.label_611:
	call	__errno_location
	mov	rbp, rax
	mov	ebx, dword ptr [rbp]
	cmp	ebx, 0x18
	jne	.label_616
	mov	edi, r14d
	call	close
	mov	dword ptr [rbp], 0x18
.label_612:
	xor	ebp, ebp
.label_615:
	mov	rax, rbp
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_613:
	mov	edi, dword ptr [rsp + 8]
	call	close
	xor	esi, esi
	mov	edi, r14d
	call	move_fd
	mov	edi, dword ptr [rsp + 0xc]
	mov	esi, 1
	call	move_fd
	mov	rdi,  qword ptr [word ptr [rip + compress_program]]
	mov	edx, OFFSET FLAT:label_617
	xor	ecx, ecx
	xor	eax, eax
	mov	rsi, rdi
	call	execlp
	call	__errno_location
	mov	edi, dword ptr [rax]
	mov	esi, OFFSET FLAT:label_610
	call	async_safe_die
.label_616:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_614
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rsi,  qword ptr [word ptr [rip + compress_program]]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 2
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409710

	.globl hash_get_n_entries
	.type hash_get_n_entries, @function
hash_get_n_entries:
	mov	rax, qword ptr [rdi + 0x20]
	ret	
	.section	.text
	.align	16
	#Procedure 0x409715
	.globl sub_409715
	.type sub_409715, @function
sub_409715:

	nop	word ptr cs:[rax + rax]
.label_619:
	xor	eax, eax
.label_618:
	add	rsp, 0x18
	ret	
	.section	.text
	.align	16
	#Procedure 0x409727
	.globl sub_409727
	.type sub_409727, @function
sub_409727:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40972a

	.globl delete_proc
	.type delete_proc, @function
delete_proc:
	sub	rsp, 0x18
	mov	dword ptr [rsp + 0x10], edi
	mov	rdi,  qword ptr [word ptr [rip + proctab]]
	lea	rsi, [rsp + 8]
	call	hash_delete
	test	rax, rax
	je	.label_619
	mov	byte ptr [rax + 0xc], 2
	mov	al, 1
	jmp	.label_618
	.section	.text
	.align	16
	#Procedure 0x409750

	.globl inittables
	.type inittables, @function
inittables:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	xor	ebx, ebx
	call	__ctype_b_loc
	mov	r14, rax
	nop	word ptr cs:[rax + rax]
.label_627:
	movzx	edi, bl
	call	field_sep
	mov	byte ptr [byte ptr [rbx + blanks]],  al
	mov	rax, qword ptr [r14]
	movzx	eax, word ptr [rax + rbx*2]
	shr	eax, 0xe
	not	eax
	and	eax, 1
	mov	byte ptr [byte ptr [rbx + nonprinting]],  al
	mov	rax, qword ptr [r14]
	test	byte ptr [rax + rbx*2], 8
	jne	.label_626
	movzx	edi, bl
	call	field_sep
	xor	al, 1
	jmp	.label_624
	.section	.text
	.align	16
	#Procedure 0x4097a8
	.globl sub_4097a8
	.type sub_4097a8, @function
sub_4097a8:

	nop	dword ptr [rax + rax]
.label_626:
	xor	eax, eax
.label_624:
	mov	byte ptr [byte ptr [rbx + nondictionary]],  al
	mov	edi, ebx
	call	toupper
	mov	byte ptr [byte ptr [rbx + fold_toupper]],  al
	inc	rbx
	cmp	rbx, 0x100
	jne	.label_627
	cmp	byte ptr [byte ptr [rip + hard_LC_TIME]],  0
	je	.label_620
	xor	r13d, r13d
	nop	word ptr cs:[rax + rax]
.label_623:
	lea	edi, [r13 + 0x2000e]
	call	rpl_nl_langinfo
	mov	rbx, rax
	mov	rdi, rbx
	call	strlen
	mov	r14, rax
	lea	rdi, [r14 + 1]
	call	xmalloc
	mov	r15, rax
	mov	rax, r13
	shl	rax, 4
	mov	qword ptr [word ptr [rax + monthtab]],  r15
	inc	r13
	mov	dword ptr [dword ptr [rax + label_268]],  r13d
	test	r14, r14
	mov	ebp, 0
	je	.label_621
	call	__ctype_b_loc
	mov	r12, rax
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_625:
	movsx	edi, byte ptr [rbx]
	call	to_uchar
	movzx	eax, al
	mov	rcx, qword ptr [r12]
	test	byte ptr [rcx + rax*2], 1
	jne	.label_622
	movzx	eax,  byte ptr [byte ptr [rax + fold_toupper]]
	mov	byte ptr [r15 + rbp], al
	inc	rbp
.label_622:
	inc	rbx
	dec	r14
	jne	.label_625
.label_621:
	mov	byte ptr [r15 + rbp], 0
	cmp	r13, 0xc
	jne	.label_623
	mov	edi, OFFSET FLAT:monthtab
	mov	esi, 0xc
	mov	edx, 0x10
	mov	ecx, OFFSET FLAT:struct_month_cmp
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	qsort
.label_620:
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
	#Procedure 0x4098c0

	.globl heapify_up
	.type heapify_up, @function
heapify_up:
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
	mov	r14, qword ptr [r12 + rbx*8]
	mov	r13d, 1
	cmp	rbx, 1
	je	.label_628
	mov	r13d, 1
	nop	word ptr [rax + rax]
.label_629:
	mov	rbp, rbx
	shr	rbp, 1
	mov	rdi, qword ptr [r12 + rbp*8]
	mov	rsi, r14
	call	r15
	test	eax, eax
	jg	.label_630
	mov	rax, qword ptr [r12 + rbp*8]
	mov	qword ptr [r12 + rbx*8], rax
	cmp	rbp, 1
	mov	rbx, rbp
	jne	.label_629
	jmp	.label_628
.label_630:
	mov	r13, rbx
.label_628:
	mov	qword ptr [r12 + r13*8], r14
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
	#Procedure 0x40992d
	.globl sub_40992d
	.type sub_40992d, @function
sub_40992d:

	nop	dword ptr [rax]
.label_631:
	ret	
.label_633:
	xor	eax, eax
	jmp	.label_631
	.section	.text
	.align	16
	#Procedure 0x409935
	.globl sub_409935
	.type sub_409935, @function
sub_409935:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40993f
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	add	edi, -0x21
	cmp	edi, 0x5d
	ja	.label_633
	mov	al, 1
	jmp	qword ptr [word ptr [+ (rdi * 8) + label_632]]
	.section	.text
	.align	16
	#Procedure 0x409950

	.globl specify_nmerge
	.type specify_nmerge, @function
specify_nmerge:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x30
	mov	r12, rdx
	mov	r15d, esi
	mov	r14d, edi
	lea	rcx, [rsp + 8]
	xor	esi, esi
	mov	edx, 0xa
	xor	r8d, r8d
	mov	rdi, r12
	call	xstrtoumax
	mov	ebx, eax
	lea	rsi, [rsp + 0x10]
	mov	edi, 7
	call	getrlimit
	mov	ecx, dword ptr [rsp + 0x10]
	add	ecx, -3
	test	eax, eax
	mov	ebp, 0x11
	cmove	ebp, ecx
	test	ebx, ebx
	jne	.label_637
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [dword ptr [rip + nmerge]],  eax
	mov	ecx, eax
	cmp	rcx, rax
	jne	.label_634
	cmp	eax, 1
	jbe	.label_641
	cmp	ebp, eax
	jb	.label_634
	add	rsp, 0x30
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_637:
	cmp	ebx, 1
	jne	.label_636
.label_634:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_640
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	movsxd	rax, r14d
	shl	rax, 5
	mov	r14,  qword ptr [word ptr [rax + long_options]]
	mov	rdi, r12
	call	quote
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r15
	mov	rcx, r14
	mov	r8, rbx
	call	error
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_638
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	lea	rsi, [rsp + 0x25]
	mov	edi, ebp
	call	uinttostr
	jmp	.label_639
.label_641:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_642
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	movsxd	rax, r14d
	shl	rax, 5
	mov	r14,  qword ptr [word ptr [rax + long_options]]
	mov	rdi, r12
	call	quote
	mov	rbp, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	mov	rcx, r14
	mov	r8, rbp
	call	error
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_643
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, OFFSET FLAT:label_635
	call	quote
.label_639:
	mov	rbp, rax
	mov	edi, 2
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	mov	rcx, r14
	mov	r8, rbp
	call	error
.label_636:
	movsx	edx, r15b
	mov	ecx, OFFSET FLAT:long_options
	mov	edi, ebx
	mov	esi, r14d
	mov	r8, r12
	call	xstrtol_fatal
	.section	.text
	.align	16
	#Procedure 0x409ac5
	.globl sub_409ac5
	.type sub_409ac5, @function
sub_409ac5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409ad0

	.globl sort_die
	.type sort_die, @function
sort_die:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rsi
	mov	r14, rdi
	call	__errno_location
	mov	ebp, dword ptr [rax]
	test	rbx, rbx
	jne	.label_646
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_644
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
.label_646:
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbx
	call	quotearg_n_style_colon
	mov	rbx, rax
	mov	edi, 2
	mov	edx, OFFSET FLAT:label_645
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	mov	r8, rbx
	call	error
	nop	word ptr cs:[rax + rax]
.label_648:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_537
	mov	edx, 5
	call	dcgettext
	shl	rbx, 4
	mov	rsi, qword ptr [r14 + rbx]
	mov	rdi, rax
	call	sort_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x409b52

	.globl mergefiles
	.type mergefiles, @function
mergefiles:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, r8
	mov	r12, rcx
	mov	rbp, rdx
	mov	r13, rsi
	mov	r14, rdi
	lea	rdx, [rsp]
	mov	rsi, rbp
	call	open_input_files
	mov	rbx, rax
	cmp	rbx, rbp
	jae	.label_647
	cmp	rbx, 1
	jbe	.label_648
.label_647:
	mov	r9, qword ptr [rsp]
	mov	rdi, r14
	mov	rsi, r13
	mov	rdx, rbx
	mov	rcx, r12
	mov	r8, r15
	call	mergefps
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
	#Procedure 0x409bb0

	.globl heap_alloc
	.type heap_alloc, @function
heap_alloc:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r15, rsi
	mov	r14, rdi
	mov	edi, 0x20
	call	xmalloc
	mov	r12, rax
	test	r15, r15
	mov	ebx, 1
	cmovne	rbx, r15
	mov	esi, 8
	mov	rdi, rbx
	call	xnmalloc
	mov	qword ptr [r12], rax
	mov	qword ptr [rax], 0
	mov	qword ptr [r12 + 8], rbx
	mov	qword ptr [r12 + 0x10], 0
	test	r14, r14
	mov	eax, OFFSET FLAT:heap_default_compare
	cmovne	rax, r14
	mov	qword ptr [r12 + 0x18], rax
	mov	rax, r12
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x409c1d
	.globl sub_409c1d
	.type sub_409c1d, @function
sub_409c1d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409c20

	.globl match_suffix
	.type match_suffix, @function
match_suffix:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r12, rdi
	mov	rax, qword ptr [r12]
	mov	cl, byte ptr [rax]
	xor	r14d, r14d
	test	cl, cl
	je	.label_649
	xor	r15d, r15d
	xor	ebx, ebx
	xor	r14d, r14d
.label_652:
	test	bl, 1
	jne	.label_653
	cmp	cl, 0x2e
	jne	.label_650
	test	r14, r14
	cmove	r14, rax
	mov	bl, 1
	jmp	.label_651
	.section	.text
	.align	16
	#Procedure 0x409c55
	.globl sub_409c55
	.type sub_409c55, @function
sub_409c55:

	nop	word ptr cs:[rax + rax]
.label_654:
	mov	rax, qword ptr [r12]
	xor	ebx, ebx
	cmp	byte ptr [rax], 0x7e
	cmovne	r14, rbx
.label_651:
	mov	rcx, qword ptr [r12]
	lea	rax, [rcx + 1]
	mov	qword ptr [r12], rax
	movzx	ecx, byte ptr [rcx + 1]
	test	cl, cl
	jne	.label_652
.label_649:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_653:
	movsx	edi, cl
	call	c_isalpha
	test	al, al
	je	.label_654
	xor	ebx, ebx
	jmp	.label_651
.label_650:
	movsx	edi, cl
	call	c_isalnum
	test	al, al
	jne	.label_651
	mov	rax, qword ptr [r12]
	cmp	byte ptr [rax], 0x7e
	cmovne	r14, r15
	jmp	.label_651
	.section	.text
	.align	16
	#Procedure 0x409cb9
	.globl sub_409cb9
	.type sub_409cb9, @function
sub_409cb9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409cc0
	.globl xmemcoll
	.type xmemcoll, @function
xmemcoll:

	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r14, rcx
	mov	r15, rdx
	mov	r12, rsi
	mov	rbx, rdi
	call	memcoll
	mov	ebp, eax
	call	__errno_location
	mov	edi, dword ptr [rax]
	test	edi, edi
	je	.label_655
	mov	rsi, rbx
	mov	rdx, r12
	mov	rcx, r15
	mov	r8, r14
	call	collate_error
.label_655:
	mov	eax, ebp
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409d02
	.globl sub_409d02
	.type sub_409d02, @function
sub_409d02:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409d10

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
	jns	.label_656
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
.label_656:
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
	#Procedure 0x409d78
	.globl sub_409d78
	.type sub_409d78, @function
sub_409d78:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409d80
	.globl hash_clear
	.type hash_clear, @function
hash_clear:

	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	mov	r14, qword ptr [r15]
	jmp	.label_657
	.section	.text
	.align	16
	#Procedure 0x409d8d
	.globl sub_409d8d
	.type sub_409d8d, @function
sub_409d8d:

	nop	dword ptr [rax]
.label_663:
	add	r14, 0x10
.label_657:
	cmp	r14, qword ptr [r15 + 8]
	jae	.label_662
	cmp	qword ptr [r14], 0
	je	.label_663
	mov	rbx, qword ptr [r14 + 8]
	mov	rax, qword ptr [r15 + 0x40]
	test	rax, rax
	setne	cl
	test	rbx, rbx
	je	.label_658
	nop	word ptr cs:[rax + rax]
.label_659:
	test	cl, 1
	je	.label_660
	mov	rdi, qword ptr [rbx]
	call	rax
.label_660:
	mov	qword ptr [rbx], 0
	mov	rdx, qword ptr [rbx + 8]
	mov	rax, qword ptr [r15 + 0x48]
	mov	qword ptr [rbx + 8], rax
	mov	qword ptr [r15 + 0x48], rbx
	mov	rax, qword ptr [r15 + 0x40]
	test	rax, rax
	setne	cl
	test	rdx, rdx
	mov	rbx, rdx
	jne	.label_659
.label_658:
	test	cl, cl
	je	.label_661
	mov	rdi, qword ptr [r14]
	call	rax
.label_661:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	jmp	.label_663
.label_662:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x18], xmm0
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x409e13
	.globl sub_409e13
	.type sub_409e13, @function
sub_409e13:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409e20

	.globl badfieldspec
	.type badfieldspec, @function
badfieldspec:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_664
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	xor	edi, edi
	mov	edx, 5
	mov	rsi, rbx
	call	dcgettext
	mov	r12, rax
	mov	rdi, r14
	call	quote
	mov	rbx, rax
	mov	edi, 2
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r15
	mov	rcx, r12
	mov	r8, rbx
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409e80

	.globl bkm_scale_by_power_0
	.type bkm_scale_by_power_0, @function
bkm_scale_by_power_0:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	ebx, edx
	mov	r14d, esi
	mov	r15, rdi
	xor	ebp, ebp
	test	ebx, ebx
	je	.label_665
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_666:
	mov	rdi, r15
	mov	esi, r14d
	call	bkm_scale_0
	or	ebp, eax
	dec	ebx
	jne	.label_666
.label_665:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409ebe
	.globl sub_409ebe
	.type sub_409ebe, @function
sub_409ebe:

	nop	
	.section	.text
	.align	16
	#Procedure 0x409ec0

	.globl randread
	.type randread, @function
randread:
	cmp	qword ptr [rdi], 0
	je	.label_667
	jmp	readsource
.label_667:
	add	rdi, 0x18
	jmp	readisaac
	.section	.text
	.align	16
	#Procedure 0x409ed1
	.globl sub_409ed1
	.type sub_409ed1, @function
sub_409ed1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409ee0

	.globl readsource
	.type readsource, @function
readsource:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r13, rdx
	mov	r14, rsi
	mov	r15, rdi
	mov	rcx, qword ptr [r15]
	mov	esi, 1
	mov	rdi, r14
	call	fread_unlocked
	mov	rbx, rax
	call	__errno_location
	mov	r12, rax
	jmp	.label_669
	.section	.text
	.align	16
	#Procedure 0x409f0f
	.globl sub_409f0f
	.type sub_409f0f, @function
sub_409f0f:

	nop	
.label_668:
	add	r14, rbx
	mov	ebx, dword ptr [r12]
	mov	rdi, qword ptr [r15]
	call	ferror_unlocked
	test	eax, eax
	cmove	ebx, eax
	mov	dword ptr [r12], ebx
	mov	rdi, qword ptr [r15 + 0x10]
	call	qword ptr [r15 + 8]
	mov	rcx, qword ptr [r15]
	mov	esi, 1
	mov	rdi, r14
	mov	rdx, r13
	call	fread_unlocked
	mov	rbx, rax
.label_669:
	sub	r13, rbx
	jne	.label_668
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x409f55
	.globl sub_409f55
	.type sub_409f55, @function
sub_409f55:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409f60
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	.section	.text
	.align	16
	#Procedure 0x409f6a
	.globl sub_409f6a
	.type sub_409f6a, @function
sub_409f6a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409f70
	.globl hash_get_next
	.type hash_get_next, @function
hash_get_next:

	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	call	safe_hasher
	mov	rcx, rax
	nop	word ptr cs:[rax + rax]
.label_674:
	cmp	qword ptr [rcx], rbx
	jne	.label_670
	mov	rdx, qword ptr [rcx + 8]
	test	rdx, rdx
	jne	.label_672
.label_670:
	mov	rcx, qword ptr [rcx + 8]
	test	rcx, rcx
	jne	.label_674
	mov	rdx, qword ptr [r14 + 8]
	add	rax, 0x10
	nop	
.label_673:
	cmp	rax, rdx
	mov	ecx, 0
	jae	.label_671
	mov	rcx, qword ptr [rax]
	add	rax, 0x10
	test	rcx, rcx
	je	.label_673
	jmp	.label_671
.label_672:
	mov	rcx, qword ptr [rdx]
.label_671:
	mov	rax, rcx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x409fd6
	.globl sub_409fd6
	.type sub_409fd6, @function
sub_409fd6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409fe0

	.globl safe_hasher
	.type safe_hasher, @function
safe_hasher:
	push	rbx
	mov	rbx, rdi
	mov	rax, qword ptr [rbx + 0x10]
	mov	rdi, rsi
	mov	rsi, rax
	call	qword ptr [rbx + 0x30]
	cmp	rax, qword ptr [rbx + 0x10]
	jae	.label_675
	shl	rax, 4
	add	rax, qword ptr [rbx]
	pop	rbx
	ret	
.label_675:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40a005
	.globl sub_40a005
	.type sub_40a005, @function
sub_40a005:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a010

	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_676
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_676:
	push	rax
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40a033
	.globl sub_40a033
	.type sub_40a033, @function
sub_40a033:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a040

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_677
	test	rax, rax
	je	.label_678
.label_677:
	pop	rbx
	ret	
.label_678:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40a05a
	.globl sub_40a05a
	.type sub_40a05a, @function
sub_40a05a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a060

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	.section	.text
	.align	16
	#Procedure 0x40a065
	.globl sub_40a065
	.type sub_40a065, @function
sub_40a065:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a070

	.globl memcoll0
	.type memcoll0, @function
memcoll0:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r15, rcx
	mov	r14, rdx
	mov	rbx, rsi
	mov	r12, rdi
	cmp	rbx, r15
	jne	.label_679
	mov	rdi, r12
	mov	rsi, r14
	mov	rdx, rbx
	call	memcmp
	test	eax, eax
	je	.label_680
.label_679:
	mov	rdi, r12
	mov	rsi, rbx
	mov	rdx, r14
	mov	rcx, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	strcoll_loop
.label_680:
	call	__errno_location
	mov	dword ptr [rax], 0
	xor	eax, eax
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_681:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a0d2
	.globl sub_40a0d2
	.type sub_40a0d2, @function
sub_40a0d2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a0dc

	.globl wait_proc
	.type wait_proc, @function
wait_proc:
	push	rbx
	mov	ebx, edi
	call	delete_proc
	test	al, al
	je	.label_681
	mov	edi, ebx
	pop	rbx
	jmp	reap
	.section	.text
	.align	16
	#Procedure 0x40a0f0

	.globl queue_init
	.type queue_init, @function
queue_init:
	push	rbx
	mov	rbx, rdi
	add	rsi, rsi
	mov	edi, OFFSET FLAT:compare_nodes
	call	heap_alloc
	mov	qword ptr [rbx], rax
	lea	rdi, [rbx + 8]
	xor	esi, esi
	call	pthread_mutex_init
	add	rbx, 0x30
	xor	esi, esi
	mov	rdi, rbx
	pop	rbx
	jmp	pthread_cond_init
	.section	.text
	.align	16
	#Procedure 0x40a11e
	.globl sub_40a11e
	.type sub_40a11e, @function
sub_40a11e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x40a120

	.globl unlock_node
	.type unlock_node, @function
unlock_node:
	add	rdi, 0x58
	jmp	pthread_mutex_unlock
	.section	.text
	.align	16
	#Procedure 0x40a129
	.globl sub_40a129
	.type sub_40a129, @function
sub_40a129:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40a130
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_682
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_682:
	push	rax
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40a156
	.globl sub_40a156
	.type sub_40a156, @function
sub_40a156:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a160

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_683
	test	rbx, rbx
	jne	.label_683
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_683:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_685
	test	rax, rax
	je	.label_684
.label_685:
	pop	rbx
	ret	
.label_684:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40a190

	.globl free_entry
	.type free_entry, @function
free_entry:
	mov	qword ptr [rsi], 0
	mov	rax, qword ptr [rdi + 0x48]
	mov	qword ptr [rsi + 8], rax
	mov	qword ptr [rdi + 0x48], rsi
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a1a4
	.globl sub_40a1a4
	.type sub_40a1a4, @function
sub_40a1a4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a1b0

	.globl xstrtol_fatal
	.type xstrtol_fatal, @function
xstrtol_fatal:
	push	rax
	mov	r9d,  dword ptr [dword ptr [rip + exit_failure]]
	call	xstrtol_error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40a1c2
	.globl sub_40a1c2
	.type sub_40a1c2, @function
sub_40a1c2:

	nop	word ptr cs:[rax + rax]
.label_687:
	mov	eax, ebx
.label_686:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a1dd
	.globl sub_40a1dd
	.type sub_40a1dd, @function
sub_40a1dd:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a1ec

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
	ja	.label_687
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
	jmp	.label_686
	.section	.text
	.align	16
	#Procedure 0x40a220
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_688
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_689
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_691
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_160
	mov	ecx, OFFSET FLAT:label_161
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_690
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x40a294
	.globl sub_40a294
	.type sub_40a294, @function
sub_40a294:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a2a0

	.globl num_processors
	.type num_processors, @function
num_processors:
	push	r14
	push	rbx
	push	rax
	mov	rbx, -1
	cmp	edi, 2
	jne	.label_692
	mov	edi, OFFSET FLAT:label_693
	call	getenv
	mov	rdi, rax
	call	parse_omp_threads
	mov	r14, rax
	mov	edi, OFFSET FLAT:label_694
	call	getenv
	mov	rdi, rax
	call	parse_omp_threads
	cmp	rax, 1
	sbb	rbx, rbx
	or	rbx, rax
	cmp	r14, rbx
	mov	rax, rbx
	cmovb	rax, r14
	mov	edi, 1
	test	r14, r14
	jne	.label_695
.label_692:
	call	num_processors_ignoring_omp
	cmp	rax, rbx
	cmovb	rbx, rax
	mov	rax, rbx
.label_695:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a30c
	.globl sub_40a30c
	.type sub_40a30c, @function
sub_40a30c:

	nop	dword ptr [rax]
.label_696:
	mov	edi, ebx
	call	dup2
	mov	edi, ebx
	pop	rbx
	jmp	close
	.section	.text
	.align	16
	#Procedure 0x40a31f
	.globl sub_40a31f
	.type sub_40a31f, @function
sub_40a31f:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a327

	.globl move_fd
	.type move_fd, @function
move_fd:
	push	rbx
	mov	ebx, edi
	cmp	ebx, esi
	jne	.label_696
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a330

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_699
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_698
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_697
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_698
	mov	esi, OFFSET FLAT:label_701
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_702
	add	r14, 3
	mov	qword ptr [word ptr [rip + __progname]],  r14
.label_702:
	mov	rbx, r14
.label_698:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_699:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:label_700
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40a3d1
	.globl sub_40a3d1
	.type sub_40a3d1, @function
sub_40a3d1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a3e0

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
	je	.label_703
	cmp	r15, -2
	jb	.label_703
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_703
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_703:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a436
	.globl sub_40a436
	.type sub_40a436, @function
sub_40a436:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a440

	.globl key_warnings
	.type key_warnings, @function
key_warnings:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xd8
	mov	r13d, esi
	mov	rax, qword ptr [rdi + 0x40]
	mov	qword ptr [rsp + 0x40], rax
	movups	xmm0, xmmword ptr [rdi]
	movups	xmm1, xmmword ptr [rdi + 0x10]
	movups	xmm2, xmmword ptr [rdi + 0x20]
	movups	xmm3, xmmword ptr [rdi + 0x30]
	movaps	xmmword ptr [rsp + 0x30], xmm3
	movaps	xmmword ptr [rsp + 0x20], xmm2
	movaps	xmmword ptr [rsp + 0x10], xmm1
	movaps	xmmword ptr [rsp], xmm0
	mov	rbx,  qword ptr [word ptr [rip + keylist]]
	test	rbx, rbx
	je	.label_723
	mov	r15d, 1
	lea	r12, [rsp + 0xc0]
	nop	dword ptr [rax]
.label_724:
	cmp	byte ptr [rbx + 0x39], 0
	je	.label_713
	mov	qword ptr [rsp + 0x58], r15
	mov	r15, qword ptr [rbx]
	mov	rax, qword ptr [rbx + 0x10]
	mov	qword ptr [rsp + 0x50], rax
	xor	ebp, ebp
	cmp	r15, -1
	sete	bpl
	lea	rdi, [rbp + r15]
	mov	word ptr [rsp + 0x90], 0x2b
	mov	rsi, r12
	call	umaxtostr
	mov	edx, 0x2d
	lea	rdi, [rsp + 0x91]
	mov	rsi, rax
	call	__stpcpy_chk
	mov	r14, rax
	mov	dword ptr [rsp + 0x60], 0x206b2d
	lea	rdi, [rbp + r15 + 1]
	mov	rsi, r12
	call	umaxtostr
	mov	edx, 0x2c
	lea	rdi, [rsp + 0x63]
	mov	rsi, rax
	call	__stpcpy_chk
	mov	r15, rax
	cmp	qword ptr [rbx + 0x10], -1
	je	.label_712
	mov	ebp, r13d
	mov	r13, r14
	add	r13, 2
	mov	byte ptr [r14 + 2], 0
	mov	word ptr [r14], 0x2d20
	mov	r14, qword ptr [rsp + 0x50]
	lea	rdi, [r14 + 1]
	mov	rsi, r12
	call	umaxtostr
	mov	rdi, r13
	mov	r13d, ebp
	mov	rsi, rax
	call	stpcpy
	mov	rbp, r15
	inc	rbp
	mov	word ptr [r15], 0x2c
	xor	eax, eax
	cmp	qword ptr [rbx + 0x18], -1
	sete	al
	lea	rdi, [rax + r14 + 1]
	mov	rsi, r12
	call	umaxtostr
	mov	rdi, rbp
	mov	rsi, rax
	call	stpcpy
.label_712:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_706
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	lea	rsi, [rsp + 0x90]
	call	quote_n
	mov	r15, rax
	mov	edi, 1
	lea	rsi, [rsp + 0x60]
	call	quote_n
	mov	rbp, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	mov	rcx, r15
	mov	r8, rbp
	call	error
	mov	r15, qword ptr [rsp + 0x58]
.label_713:
	mov	rax, qword ptr [rbx]
	cmp	rax, -1
	je	.label_709
	cmp	qword ptr [rbx + 0x10], rax
	jae	.label_709
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_729
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, r15
	call	error
	mov	bpl, 1
	jmp	.label_708
	.section	.text
	.align	16
	#Procedure 0x40a611
	.globl sub_40a611
	.type sub_40a611, @function
sub_40a611:

	nop	word ptr cs:[rax + rax]
.label_709:
	xor	ebp, ebp
.label_708:
	mov	rdi, rbx
	call	key_numeric
	mov	cl, 1
	test	al, al
	jne	.label_730
	cmp	byte ptr [rbx + 0x36], 0
	setne	cl
.label_730:
	cmp	qword ptr [rbx + 0x10], 0
	je	.label_719
	xor	eax, eax
	jmp	.label_722
	.section	.text
	.align	16
	#Procedure 0x40a642
	.globl sub_40a642
	.type sub_40a642, @function
sub_40a642:

	nop	word ptr cs:[rax + rax]
.label_719:
	cmp	qword ptr [rbx + 0x18], 0
	setne	al
.label_722:
	test	bpl, bpl
	jne	.label_707
	cmp	dword ptr [dword ptr [rip + tab]],  0x80
	setne	dl
	or	dl, r13b
	or	al, dl
	jne	.label_707
	movzx	eax, byte ptr [rbx + 0x30]
	test	al, al
	setne	dl
	or	cl, dl
	cmp	cl, 1
	jne	.label_705
	test	al, al
	jne	.label_727
	cmp	qword ptr [rbx + 8], 0
	jne	.label_705
.label_727:
	cmp	byte ptr [rbx + 0x31], 0
	jne	.label_707
	cmp	qword ptr [rbx + 0x18], 0
	je	.label_707
.label_705:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_710
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, r15
	call	error
	nop	
.label_707:
	test	r13b, r13b
	jne	.label_721
	mov	rdi, rbx
	call	key_numeric
	test	al, al
	je	.label_721
	mov	rax, qword ptr [rbx]
	lea	rcx, [rax + 1]
	add	rax, 2
	test	rcx, rcx
	cmovne	rax, rcx
	cmp	qword ptr [rbx + 0x10], rax
	jb	.label_721
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_714
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, r15
	call	error
	nop	
.label_721:
	mov	rax, qword ptr [rsp + 0x20]
	test	rax, rax
	je	.label_711
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_711
	mov	qword ptr [rsp + 0x20], 0
.label_711:
	mov	rax, qword ptr [rsp + 0x28]
	test	rax, rax
	je	.label_717
	cmp	rax, qword ptr [rbx + 0x28]
	jne	.label_717
	mov	qword ptr [rsp + 0x28], 0
.label_717:
	movzx	eax, byte ptr [rbx + 0x30]
	xor	al, 1
	and	byte ptr [rsp + 0x30], al
	movzx	eax, byte ptr [rbx + 0x31]
	xor	al, 1
	and	byte ptr [rsp + 0x31], al
	movzx	eax, byte ptr [rbx + 0x36]
	xor	al, 1
	and	byte ptr [rsp + 0x36], al
	movzx	eax, byte ptr [rbx + 0x32]
	xor	al, 1
	and	byte ptr [rsp + 0x32], al
	movzx	eax, byte ptr [rbx + 0x34]
	xor	al, 1
	and	byte ptr [rsp + 0x34], al
	movzx	eax, byte ptr [rbx + 0x35]
	xor	al, 1
	and	byte ptr [rsp + 0x35], al
	movzx	eax, byte ptr [rbx + 0x33]
	xor	al, 1
	and	byte ptr [rsp + 0x33], al
	movzx	eax, byte ptr [rbx + 0x38]
	xor	al, 1
	and	byte ptr [rsp + 0x38], al
	movzx	eax, byte ptr [rbx + 0x37]
	xor	al, 1
	and	byte ptr [rsp + 0x37], al
	inc	r15
	mov	rbx, qword ptr [rbx + 0x40]
	test	rbx, rbx
	jne	.label_724
.label_723:
	lea	rdi, [rsp]
	call	default_key_compare
	test	al, al
	je	.label_718
	cmp	byte ptr [rsp + 0x37], 0
	je	.label_720
	mov	al,  byte ptr [byte ptr [rip + stable]]
	test	al, al
	je	.label_726
	cmp	qword ptr [word ptr [rip + keylist]],  0
	jne	.label_718
	jmp	.label_720
.label_726:
	cmp	byte ptr [byte ptr [rip + unique]],  1
	jne	.label_720
	mov	rax,  qword ptr [word ptr [rip + keylist]]
	test	rax, rax
	je	.label_720
.label_718:
	mov	bpl, byte ptr [rsp + 0x37]
	mov	al,  byte ptr [byte ptr [rip + stable]]
	test	al, al
	jne	.label_704
	mov	al,  byte ptr [byte ptr [rip + unique]]
	test	al, al
	jne	.label_704
	mov	byte ptr [rsp + 0x37], 0
.label_704:
	lea	rdi, [rsp]
	lea	rbx, [rsp + 0x60]
	mov	rsi, rbx
	call	key_to_opts
	mov	rdi, rbx
	call	strlen
	mov	rdi, rax
	call	select_plural
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_715
	mov	edx, OFFSET FLAT:label_716
	mov	r8d, 5
	mov	rcx, rax
	call	dcngettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, rbx
	call	error
	mov	byte ptr [rsp + 0x37], bpl
.label_720:
	cmp	byte ptr [rsp + 0x37], 0
	je	.label_728
	mov	al,  byte ptr [byte ptr [rip + stable]]
	test	al, al
	jne	.label_728
	cmp	qword ptr [word ptr [rip + keylist]],  0
	je	.label_728
	mov	al,  byte ptr [byte ptr [rip + unique]]
	xor	al, 1
	test	al, 1
	je	.label_728
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_725
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_728:
	add	rsp, 0xd8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a8bf
	.globl sub_40a8bf
	.type sub_40a8bf, @function
sub_40a8bf:

	nop	
	.section	.text
	.align	16
	#Procedure 0x40a8c0

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	mov	edi, 1
	jmp	usage
	.section	.text
	.align	16
	#Procedure 0x40a8ca
	.globl sub_40a8ca
	.type sub_40a8ca, @function
sub_40a8ca:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a8d0

	.globl uinttostr
	.type uinttostr, @function
uinttostr:
	mov	byte ptr [rsi + 0xa], 0
	add	rsi, 0xa
	mov	r8d, 0xcccccccd
	nop	
.label_731:
	mov	ecx, edi
	imul	rcx, r8
	shr	rcx, 0x23
	lea	edx, [rcx + rcx]
	lea	edx, [rdx + rdx*4]
	mov	eax, edi
	sub	eax, edx
	or	eax, 0x30
	mov	byte ptr [rsi - 1], al
	dec	rsi
	cmp	edi, 9
	mov	edi, ecx
	ja	.label_731
	mov	rax, rsi
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a908
	.globl sub_40a908
	.type sub_40a908, @function
sub_40a908:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a910
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
	je	.label_732
	add	rbx, 8
	nop	word ptr cs:[rax + rax]
.label_733:
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	mov	rax, r13
	je	.label_732
	mov	r13, qword ptr [rbx]
	add	rbx, 8
	add	r15, r14
	test	r13, r13
	mov	eax, 0
	jne	.label_733
.label_732:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a973
	.globl sub_40a973
	.type sub_40a973, @function
sub_40a973:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a980

	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:
	add	edi, -0x30
	cmp	edi, 0xa
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a98a
	.globl sub_40a98a
	.type sub_40a98a, @function
sub_40a98a:

	nop	word ptr [rax + rax]
.label_1722:
	mov	qword ptr [word ptr [rsi + 40]], OFFSET FLAT:fold_toupper
	jmp	.label_735
	.section	.text
	.align	16
	#Procedure 0x40a99a

	.globl set_ordering
	.type set_ordering, @function
set_ordering:
	mov	cl, byte ptr [rdi]
	test	cl, cl
	je	.label_738
	mov	eax, edx
	or	eax, 2
	dec	edx
	nop	word ptr cs:[rax + rax]
.label_734:
	movsx	ecx, cl
	add	ecx, -0x4d
	cmp	ecx, 0x25
	ja	.label_738
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_737]]
.label_1723:
	mov	byte ptr [rsi + 0x34], 1
	jmp	.label_735
.label_1718:
	mov	byte ptr [rsi + 0x33], 1
	jmp	.label_735
.label_1719:
	mov	byte ptr [rsi + 0x38], 1
	jmp	.label_735
.label_1725:
	cmp	qword ptr [rsi + 0x20], 0
	jne	.label_735
	mov	qword ptr [word ptr [rsi + 32]], OFFSET FLAT:nonprinting
	jmp	.label_735
.label_1727:
	mov	byte ptr [rsi + 0x37], 1
	nop	word ptr [rax + rax]
.label_735:
	movzx	ecx, byte ptr [rdi + 1]
	inc	rdi
	test	cl, cl
	jne	.label_734
.label_738:
	mov	rax, rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x40aa13
	.globl sub_40aa13
	.type sub_40aa13, @function
sub_40aa13:

	nop	word ptr cs:[rax + rax]
.label_1717:
	mov	byte ptr [rsi + 0x36], 1
	jmp	.label_735
.label_1721:
	mov	qword ptr [word ptr [rsi + 32]], OFFSET FLAT:nondictionary
	jmp	.label_735
.label_1724:
	mov	byte ptr [rsi + 0x35], 1
	jmp	.label_735
.label_1720:
	cmp	eax, 2
	jne	.label_736
	mov	byte ptr [rsi + 0x30], 1
.label_736:
	cmp	edx, 1
	ja	.label_735
	mov	byte ptr [rsi + 0x31], 1
	jmp	.label_735
.label_1726:
	mov	byte ptr [rsi + 0x32], 1
	jmp	.label_735
	.section	.text
	.align	16
	#Procedure 0x40aa50
	.globl randread_set_handler
	.type randread_set_handler, @function
randread_set_handler:

	mov	qword ptr [rdi + 8], rsi
	ret	
	.section	.text
	.align	16
	#Procedure 0x40aa55
	.globl sub_40aa55
	.type sub_40aa55, @function
sub_40aa55:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40aa60

	.globl incompatible_options
	.type incompatible_options, @function
incompatible_options:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_739
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 2
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, rbx
	call	error
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40aa90

	.globl mkostemp_safer
	.type mkostemp_safer, @function
mkostemp_safer:
	push	rbx
	mov	ebx, esi
	call	mkostemp
	mov	edi, eax
	mov	esi, ebx
	pop	rbx
	jmp	fd_safer_flag
	.section	.text
	.align	16
	#Procedure 0x40aaa2
	.globl sub_40aaa2
	.type sub_40aaa2, @function
sub_40aaa2:

	nop	word ptr cs:[rax + rax]
.label_740:
	push	rax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40aab6
	.globl sub_40aab6
	.type sub_40aab6, @function
sub_40aab6:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40aabb

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_740
	test	rdx, rdx
	je	.label_740
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40aae0

	.globl create_temp
	.type create_temp, @function
create_temp:
	xor	esi, esi
	jmp	maybe_create_temp
	.section	.text
	.align	16
	#Procedure 0x40aae7
	.globl sub_40aae7
	.type sub_40aae7, @function
sub_40aae7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40aaf0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_166
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_741
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ab15
	.globl sub_40ab15
	.type sub_40ab15, @function
sub_40ab15:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ab20

	.globl to_uchar
	.type to_uchar, @function
to_uchar:
	mov	eax, edi
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ab23
	.globl sub_40ab23
	.type sub_40ab23, @function
sub_40ab23:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ab30

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_746
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_751
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	mov	rcx, rdx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_759
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_stdin_note
	call	emit_mandatory_arg_note
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_749
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_742
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_755
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_763
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_752
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_764
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_753
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_760
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_743
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_747
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_754
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_748
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_761
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_744
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_750
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_756
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_762
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_745
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_758
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_ancillary_info
	mov	edi, ebp
	call	exit
.label_746:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_757
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx,  qword ptr [word ptr [rip + program_name]]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	edi, ebp
	call	exit
	.section	.text
	.align	16
	#Procedure 0x40ae20

	.globl key_init
	.type key_init, @function
key_init:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rdi + 0x30], xmm0
	movups	xmmword ptr [rdi + 0x20], xmm0
	movups	xmmword ptr [rdi + 0x10], xmm0
	movups	xmmword ptr [rdi], xmm0
	mov	qword ptr [rdi + 0x40], 0
	mov	qword ptr [rdi + 0x10], -1
	mov	rax, rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ae46
	.globl sub_40ae46
	.type sub_40ae46, @function
sub_40ae46:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ae50

	.globl avoid_trashing_input
	.type avoid_trashing_input, @function
avoid_trashing_input:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xa8
	mov	r15, rcx
	mov	r12, rsi
	mov	rbx, rdi
	mov	qword ptr [rsp + 8], rdx
	cmp	r12, rdx
	jae	.label_766
	mov	rax, r12
	shl	rax, 4
	add	rbx, rax
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_769:
	mov	rax, qword ptr [rbx]
	movzx	ecx, byte ptr [rax]
	mov	r14d, 0x2d
	sub	r14d, ecx
	jne	.label_767
	movzx	r14d, byte ptr [rax + 1]
	neg	r14d
.label_767:
	test	r15, r15
	je	.label_772
	mov	rsi, qword ptr [rbx]
	mov	rdi, r15
	call	strcmp
	test	r14d, r14d
	je	.label_772
	test	eax, eax
	je	.label_773
.label_772:
	call	get_outstatus
	mov	r13, rax
	test	r13, r13
	je	.label_766
	test	r14d, r14d
	je	.label_768
	mov	rdi, qword ptr [rbx]
	lea	rsi, [rsp + 0x18]
	call	stat
	jmp	.label_770
	.section	.text
	.align	16
	#Procedure 0x40aee7
	.globl sub_40aee7
	.type sub_40aee7, @function
sub_40aee7:

	nop	word ptr [rax + rax]
.label_768:
	xor	edi, edi
	lea	rsi, [rsp + 0x18]
	call	fstat
.label_770:
	test	eax, eax
	jne	.label_765
	mov	rax, qword ptr [rsp + 0x20]
	cmp	rax, qword ptr [r13 + 8]
	jne	.label_765
	mov	rax, qword ptr [rsp + 0x18]
	cmp	rax, qword ptr [r13]
	jne	.label_765
	nop	word ptr cs:[rax + rax]
.label_773:
	test	rbp, rbp
	jne	.label_771
	lea	rdi, [rsp + 0x10]
	call	create_temp
	mov	rbp, rax
	mov	rcx, qword ptr [rsp + 0x10]
	lea	r8, [rbp + 0xd]
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	mergefiles
.label_771:
	lea	rax, [rbp + 0xd]
	mov	qword ptr [rbx], rax
	mov	qword ptr [rbx + 8], rbp
.label_765:
	inc	r12
	add	rbx, 0x10
	cmp	r12, qword ptr [rsp + 8]
	jb	.label_769
.label_766:
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
	#Procedure 0x40af79
	.globl sub_40af79
	.type sub_40af79, @function
sub_40af79:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40af80

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x40af8a
	.globl sub_40af8a
	.type sub_40af8a, @function
sub_40af8a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40af90
	.globl quote_mem
	.type quote_mem, @function
quote_mem:

	mov	rax, rsi
	mov	rcx, rdi
	xor	edi, edi
	mov	rsi, rcx
	mov	rdx, rax
	jmp	quote_n_mem
	.section	.text
	.align	16
	#Procedure 0x40afa0

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	.section	.text
	.align	16
	#Procedure 0x40afa9
	.globl sub_40afa9
	.type sub_40afa9, @function
sub_40afa9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40afb0

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quote_n
	.section	.text
	.align	16
	#Procedure 0x40afba
	.globl sub_40afba
	.type sub_40afba, @function
sub_40afba:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40afc0
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	mov	rax, rdx
	mov	rcx, rsi
	mov	rdx, rdi
	xor	edi, edi
	mov	rsi, rdx
	mov	rdx, rcx
	mov	rcx, rax
	jmp	quotearg_n_custom
	.section	.text
	.align	16
	#Procedure 0x40afd9
	.globl sub_40afd9
	.type sub_40afd9, @function
sub_40afd9:

	nop	dword ptr [rax]
.label_777:
	mov	rdi, qword ptr [rsp + 0x10]
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	debug_line
	.section	.text
	.align	16
	#Procedure 0x40aff8

	.globl write_line
	.type write_line, @function
write_line:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r14, rdx
	mov	r15, rsi
	mov	rbx, qword ptr [rdi]
	mov	r12, qword ptr [rdi + 8]
	lea	rbp, [rbx + r12]
	test	r14, r14
	jne	.label_779
	cmp	byte ptr [byte ptr [rip + debug]],  1
	jne	.label_779
	mov	qword ptr [rsp + 0x10], rdi
	mov	qword ptr [rsp + 8], r14
	dec	r12
	mov	r14d, 0xa
	mov	r13d, 0x3e
	nop	word ptr cs:[rax + rax]
.label_775:
	cmp	rbx, rbp
	jae	.label_777
	test	r12, r12
	movsx	eax, byte ptr [rbx]
	lea	rbx, [rbx + 1]
	mov	edi, eax
	cmove	edi, r14d
	cmp	eax, 9
	cmove	edi, r13d
	mov	rsi, r15
	call	fputc_unlocked
	dec	r12
	cmp	eax, -1
	jne	.label_775
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_776
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, qword ptr [rsp + 8]
	call	sort_die
.label_779:
	mov	al,  byte ptr [byte ptr [rip + eolchar]]
	test	al, al
	jne	.label_778
	mov	al, 0xa
	jmp	.label_774
.label_780:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_776
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	sort_die
	nop	word ptr cs:[rax + rax]
.label_778:
	xor	eax, eax
.label_774:
	mov	byte ptr [rbx + r12 - 1], al
	mov	esi, 1
	mov	rdi, rbx
	mov	rdx, r12
	mov	rcx, r15
	call	fwrite_unlocked
	cmp	rax, r12
	jne	.label_780
	mov	byte ptr [rbp - 1], 0
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
	#Procedure 0x40b100

	.globl is_prime
	.type is_prime, @function
is_prime:
	mov	r8, rdi
	mov	esi, 3
	cmp	r8, 0xa
	jb	.label_781
	mov	esi, 3
	mov	edi, 9
	mov	ecx, 0x10
	nop	dword ptr [rax]
.label_782:
	xor	edx, edx
	mov	rax, r8
	div	rsi
	test	rdx, rdx
	je	.label_781
	add	rdi, rcx
	add	rsi, 2
	add	rcx, 8
	cmp	rdi, r8
	jb	.label_782
.label_781:
	xor	edx, edx
	mov	rax, r8
	div	rsi
	test	rdx, rdx
	setne	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b14c
	.globl sub_40b14c
	.type sub_40b14c, @function
sub_40b14c:

	nop	dword ptr [rax]
.label_784:
	mov	ecx, 1
.label_783:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	16
	#Procedure 0x40b160
	.globl sub_40b160
	.type sub_40b160, @function
sub_40b160:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b165

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_784
	test	rsi, rsi
	mov	ecx, 1
	je	.label_783
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_783
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b1a0
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
	#Procedure 0x40b1d3
	.globl sub_40b1d3
	.type sub_40b1d3, @function
sub_40b1d3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b1e0

	.globl check_inputs
	.type check_inputs, @function
check_inputs:
	push	r15
	push	r14
	push	rbx
	mov	r14, rsi
	mov	r15, rdi
	test	r14, r14
	je	.label_787
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_788:
	mov	rax, qword ptr [r15 + rbx*8]
	cmp	byte ptr [rax], 0x2d
	jne	.label_789
	cmp	byte ptr [rax + 1], 0
	je	.label_790
.label_789:
	mov	rdi, qword ptr [r15 + rbx*8]
	mov	esi, 4
	call	euidaccess
	test	eax, eax
	jne	.label_792
.label_790:
	inc	rbx
	cmp	rbx, r14
	jb	.label_788
.label_787:
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_792:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_791
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [r15 + rbx*8]
	mov	rdi, rax
	call	sort_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40b250

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
	#Procedure 0x40b267
	.globl sub_40b267
	.type sub_40b267, @function
sub_40b267:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b270

	.globl fillbuf
	.type fillbuf, @function
fillbuf:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x58
	mov	qword ptr [rsp + 0x28], rsi
	mov	r15, rdi
	mov	rax,  qword ptr [word ptr [rip + keylist]]
	mov	qword ptr [rsp + 0x18], rax
	mov	cl,  byte ptr [byte ptr [rip + eolchar]]
	xor	eax, eax
	test	cl, cl
	mov	dword ptr [rsp + 8], 0
	jne	.label_806
	mov	cl, 0xa
	mov	dword ptr [rsp + 8], ecx
.label_806:
	cmp	byte ptr [r15 + 0x30], 0
	jne	.label_800
	mov	qword ptr [rsp + 0x40], rdx
	mov	rax, qword ptr [r15 + 0x28]
	mov	qword ptr [rsp + 0x30], rax
	mov	r14,  qword ptr [word ptr [rip + merge_buffer_size]]
	mov	rsi, qword ptr [r15 + 8]
	mov	rdx, qword ptr [r15 + 0x20]
	cmp	rsi, rdx
	je	.label_805
	mov	rdi, qword ptr [r15]
	add	rsi, rdi
	sub	rsi, rdx
	call	memmove
	mov	rax, qword ptr [r15 + 0x20]
	mov	qword ptr [r15 + 8], rax
	mov	qword ptr [r15 + 0x10], 0
.label_805:
	add	r14, -0x22
	mov	rax, qword ptr [rsp + 0x30]
	mov	rcx, rax
	neg	rcx
	mov	qword ptr [rsp + 0x48], rcx
	inc	rax
	mov	qword ptr [rsp + 0x50], rax
	mov	eax, dword ptr [rsp + 8]
	movzx	eax, al
	mov	dword ptr [rsp + 0xc], eax
	mov	qword ptr [rsp + 0x20], r15
	jmp	.label_809
	.section	.text
	.align	16
	#Procedure 0x40b325
	.globl sub_40b325
	.type sub_40b325, @function
sub_40b325:

	nop	word ptr cs:[rax + rax]
.label_814:
	mov	rax, qword ptr [r15 + 0x18]
	shr	rax, 5
	mov	qword ptr [rsp + 0x38], rax
	mov	rdi, qword ptr [r15]
	mov	edx, 0x20
	lea	rsi, [rsp + 0x38]
	call	x2nrealloc
	mov	qword ptr [r15], rax
	mov	rax, qword ptr [rsp + 0x38]
	shl	rax, 5
	mov	qword ptr [r15 + 0x18], rax
.label_809:
	mov	rbx, qword ptr [r15]
	mov	r13, qword ptr [r15 + 8]
	add	r13, rbx
	mov	rdi, r15
	call	buffer_linelim
	mov	rcx, qword ptr [r15 + 0x10]
	mov	rdx, rcx
	shl	rdx, 5
	mov	r12, rax
	sub	r12, rdx
	mov	rbp, rcx
	imul	rbp, qword ptr [rsp + 0x48]
	add	rbp, rax
	test	rcx, rcx
	je	.label_813
	neg	rcx
	mov	rbx, qword ptr [r12]
	shl	rcx, 5
	add	rbx, qword ptr [rax + rcx + 8]
.label_813:
	mov	rdi, r13
	sub	rbp, rdi
	nop	dword ptr [rax]
.label_810:
	mov	rcx, qword ptr [rsp + 0x50]
	cmp	rcx, rbp
	jae	.label_804
	lea	rax, [rbp - 1]
	xor	edx, edx
	div	rcx
	mov	r15, rax
	mov	esi, 1
	mov	r13, rdi
	mov	rdx, r15
	mov	rcx, qword ptr [rsp + 0x28]
	call	fread_unlocked
	mov	rdi, r13
	lea	rcx, [rdi + rax]
	sub	rbp, rax
	cmp	rax, r15
	je	.label_794
	mov	r15, qword ptr [rsp + 0x28]
	mov	qword ptr [rsp + 0x10], rcx
	mov	rdi, r15
	call	ferror_unlocked
	test	eax, eax
	jne	.label_793
	mov	rdi, r15
	call	feof_unlocked
	test	eax, eax
	je	.label_797
	mov	r15, qword ptr [rsp + 0x20]
	mov	byte ptr [r15 + 0x30], 1
	mov	eax, 1
	mov	rcx, qword ptr [rsp + 0x10]
	cmp	qword ptr [r15], rcx
	mov	rdi, r13
	je	.label_799
	cmp	rbx, rcx
	je	.label_794
	movsx	eax, byte ptr [rcx - 1]
	cmp	eax, dword ptr [rsp + 0xc]
	je	.label_794
	mov	eax, dword ptr [rsp + 8]
	mov	byte ptr [rcx], al
	inc	rcx
	jmp	.label_794
.label_797:
	mov	rcx, qword ptr [rsp + 0x10]
	mov	rdi, r13
.label_794:
	mov	qword ptr [rsp + 0x10], rcx
	mov	rdx, rcx
	sub	rdx, rdi
	jmp	.label_811
	.section	.text
	.align	16
	#Procedure 0x40b463
	.globl sub_40b463
	.type sub_40b463, @function
sub_40b463:

	nop	word ptr cs:[rax + rax]
.label_798:
	sub	rbp, qword ptr [rsp + 0x30]
	mov	rdx, qword ptr [rsp + 0x10]
	sub	rdx, rbx
	mov	rdi, rbx
.label_811:
	mov	esi, dword ptr [rsp + 0xc]
	call	memchr
	test	rax, rax
	je	.label_796
	mov	r13, r12
	mov	r15, rbx
	mov	rcx, r14
	mov	byte ptr [rax], 0
	lea	rbx, [rax + 1]
	lea	r12, [r13 - 0x20]
	mov	qword ptr [r13 - 0x20], r15
	mov	r14, rbx
	sub	r14, r15
	mov	qword ptr [r13 - 0x18], r14
	cmp	rcx, r14
	cmova	r14, rcx
	cmp	qword ptr [rsp + 0x18], 0
	je	.label_798
	mov	rsi, qword ptr [rsp + 0x18]
	cmp	qword ptr [rsi + 0x10], -1
	je	.label_808
	mov	rdi, r12
	call	limfield
	mov	rsi, qword ptr [rsp + 0x18]
.label_808:
	mov	qword ptr [r13 - 8], rax
	cmp	qword ptr [rsi], -1
	je	.label_812
	mov	rdi, r12
	call	begfield
	mov	qword ptr [r13 - 0x10], rax
	jmp	.label_798
	.section	.text
	.align	16
	#Procedure 0x40b4f7
	.globl sub_40b4f7
	.type sub_40b4f7, @function
sub_40b4f7:

	nop	word ptr [rax + rax]
.label_812:
	cmp	byte ptr [rsi + 0x30], 0
	je	.label_802
	dec	r15
	nop	dword ptr [rax]
.label_801:
	movsx	edi, byte ptr [r15 + 1]
	inc	r15
	call	to_uchar
	movzx	eax, al
	cmp	byte ptr [byte ptr [rax + blanks]],  0
	jne	.label_801
.label_802:
	mov	qword ptr [r13 - 0x10], r15
	jmp	.label_798
	.section	.text
	.align	16
	#Procedure 0x40b532
	.globl sub_40b532
	.type sub_40b532, @function
sub_40b532:

	nop	word ptr cs:[rax + rax]
.label_796:
	mov	r15, qword ptr [rsp + 0x20]
	movzx	eax, byte ptr [r15 + 0x30]
	lea	eax, [rax + rax*4]
	mov	rdi, qword ptr [rsp + 0x10]
.label_799:
	mov	ecx, eax
	and	cl, 7
	je	.label_810
	cmp	cl, 5
	jne	.label_803
.label_804:
	mov	rax, rdi
	sub	rax, qword ptr [r15]
	mov	qword ptr [r15 + 8], rax
	mov	rbp, rdi
	mov	rdi, r15
	call	buffer_linelim
	sub	rax, r12
	sar	rax, 5
	mov	qword ptr [r15 + 0x10], rax
	je	.label_814
	jmp	.label_795
	.section	.text
	.align	16
	#Procedure 0x40b58a
	.globl sub_40b58a
	.type sub_40b58a, @function
sub_40b58a:

	nop	word ptr [rax + rax]
.label_803:
	test	eax, eax
	je	.label_809
	xor	eax, eax
	jmp	.label_800
.label_795:
	sub	rbp, rbx
	mov	qword ptr [r15 + 0x20], rbp
	add	r14, 0x22
	mov	qword ptr [word ptr [rip + merge_buffer_size]],  r14
	mov	al, 1
.label_800:
	add	rsp, 0x58
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_793:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_807
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, qword ptr [rsp + 0x40]
	call	sort_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40b5e0

	.globl human_numcompare
	.type human_numcompare, @function
human_numcompare:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rsi
	mov	rbx, rdi
	dec	rbx
	nop	dword ptr [rax]
.label_816:
	movsx	edi, byte ptr [rbx + 1]
	inc	rbx
	call	to_uchar
	movzx	eax, al
	cmp	byte ptr [byte ptr [rax + blanks]],  0
	jne	.label_816
	dec	r14
	nop	dword ptr [rax + rax]
.label_817:
	movsx	edi, byte ptr [r14 + 1]
	inc	r14
	call	to_uchar
	movzx	eax, al
	cmp	byte ptr [byte ptr [rax + blanks]],  0
	jne	.label_817
	mov	rdi, rbx
	call	find_unit_order
	mov	ebp, eax
	mov	rdi, r14
	call	find_unit_order
	sub	ebp, eax
	je	.label_815
	mov	eax, ebp
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_815:
	mov	edx,  dword ptr [dword ptr [rip + decimal_point]]
	mov	ecx,  dword ptr [dword ptr [rip + thousands_sep]]
	mov	rdi, rbx
	mov	rsi, r14
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strnumcmp
	.section	.text
	.align	16
	#Procedure 0x40b661
	.globl sub_40b661
	.type sub_40b661, @function
sub_40b661:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b670

	.globl strnumcmp
	.type strnumcmp, @function
strnumcmp:
	jmp	numcompare_0
	.section	.text
	.align	16
	#Procedure 0x40b672
	.globl sub_40b672
	.type sub_40b672, @function
sub_40b672:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b680

	.globl numcompare_0
	.type numcompare_0, @function
numcompare_0:
	push	rbp
	push	r14
	push	rbx
	mov	r8, rdi
	movzx	r9d, byte ptr [r8]
	cmp	r9d, 0x2d
	mov	r10b, byte ptr [rsi]
	movzx	r11d, r10b
	jne	.label_847
	inc	r8
	nop	
.label_853:
	movzx	edi, byte ptr [r8]
	inc	r8
	cmp	edi, 0x30
	je	.label_853
	cmp	edi, ecx
	je	.label_853
	cmp	r10b, 0x2d
	jne	.label_857
	dec	r8
	nop	dword ptr [rax]
.label_833:
	movzx	eax, byte ptr [rsi + 1]
	inc	rsi
	cmp	eax, 0x30
	je	.label_833
	cmp	eax, ecx
	je	.label_833
	lea	ebp, [rdi - 0x30]
	cmp	ebp, 0xa
	setb	r11b
	cmp	al, dil
	jne	.label_859
	cmp	ebp, 9
	ja	.label_859
	nop	dword ptr [rax]
.label_828:
	mov	dil, byte ptr [r8 + 1]
	inc	r8
	movzx	r10d, dil
	cmp	r10d, ecx
	je	.label_828
.label_865:
	movzx	eax, byte ptr [rsi + 1]
	inc	rsi
	cmp	eax, ecx
	je	.label_865
	lea	ebp, [r10 - 0x30]
	cmp	ebp, 0xa
	setb	r11b
	cmp	al, r10b
	jne	.label_824
	cmp	ebp, 9
	jbe	.label_828
	jmp	.label_824
.label_847:
	cmp	r10b, 0x2d
	jne	.label_830
	inc	rsi
	nop	word ptr cs:[rax + rax]
.label_836:
	movzx	eax, byte ptr [rsi]
	inc	rsi
	cmp	eax, 0x30
	je	.label_836
	cmp	eax, ecx
	je	.label_836
	cmp	eax, edx
	jne	.label_837
	nop	word ptr cs:[rax + rax]
.label_819:
	mov	al, byte ptr [rsi]
	inc	rsi
	cmp	al, 0x30
	je	.label_819
.label_837:
	movzx	esi, al
	add	esi, -0x30
	mov	eax, 1
	cmp	esi, 0xa
	jb	.label_823
	cmp	r9b, 0x30
	jne	.label_846
	jmp	.label_849
.label_857:
	cmp	edi, edx
	jne	.label_850
.label_851:
	mov	dil, byte ptr [r8]
	inc	r8
	cmp	dil, 0x30
	je	.label_851
.label_850:
	movzx	edi, dil
	add	edi, -0x30
	mov	eax, 0xffffffff
	cmp	edi, 0xa
	jb	.label_823
	cmp	r10b, 0x30
	je	.label_829
	cmp	r11d, ecx
	jne	.label_858
	nop	dword ptr [rax]
.label_829:
	movzx	r11d, byte ptr [rsi + 1]
	inc	rsi
	cmp	r11d, 0x30
	je	.label_829
	cmp	r11d, ecx
	mov	r10b, r11b
	je	.label_829
.label_858:
	cmp	r11d, edx
	jne	.label_861
	inc	rsi
	nop	
.label_835:
	mov	r10b, byte ptr [rsi]
	inc	rsi
	cmp	r10b, 0x30
	je	.label_835
.label_861:
	movzx	eax, r10b
	add	eax, -0x30
	cmp	eax, 0xa
	sbb	eax, eax
	jmp	.label_823
.label_830:
	cmp	r9b, 0x30
	jne	.label_820
	jmp	.label_822
.label_859:
	mov	r10d, edi
.label_824:
	movzx	r9d, al
	cmp	r10d, edx
	setne	bl
	lea	ebp, [r9 - 0x30]
	cmp	ebp, 0xa
	setb	r14b
	cmp	r9d, edx
	setne	al
	or	al, r11b
	cmp	al, 1
	jne	.label_825
	or	bl, r14b
	je	.label_825
	movzx	eax, dil
	add	eax, -0x30
	xor	edx, edx
	cmp	eax, 9
	ja	.label_832
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_838:
	movzx	edi, byte ptr [r8 + 1]
	inc	r8
	cmp	edi, ecx
	je	.label_838
	inc	rdx
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_838
.label_832:
	xor	edi, edi
	cmp	ebp, 9
	ja	.label_842
	xor	edi, edi
.label_843:
	movzx	eax, byte ptr [rsi + 1]
	inc	rsi
	cmp	eax, ecx
	je	.label_843
	inc	rdi
	add	eax, -0x30
	cmp	eax, 0xa
	jb	.label_843
.label_842:
	cmp	rdx, rdi
	jne	.label_848
	sub	r9d, r10d
	xor	eax, eax
	test	rdx, rdx
	cmovne	eax, r9d
	jmp	.label_823
.label_825:
	movsx	edx, dl
	mov	rdi, rsi
	mov	rsi, r8
	jmp	.label_852
.label_848:
	mov	ecx, 1
	mov	eax, 0xffffffff
	jmp	.label_856
.label_846:
	cmp	r9d, ecx
	jne	.label_840
.label_849:
	movzx	r9d, byte ptr [r8 + 1]
	inc	r8
	cmp	r9d, 0x30
	jne	.label_846
	jmp	.label_849
.label_840:
	cmp	r9d, edx
	jne	.label_860
	inc	r8
	nop	word ptr cs:[rax + rax]
.label_863:
	mov	r9b, byte ptr [r8]
	inc	r8
	cmp	r9b, 0x30
	je	.label_863
.label_860:
	movzx	eax, r9b
	add	eax, -0x30
	cmp	eax, 0xa
	sbb	eax, eax
	and	eax, 1
	jmp	.label_823
.label_820:
	cmp	r9d, ecx
	jne	.label_818
.label_822:
	movzx	r9d, byte ptr [r8 + 1]
	inc	r8
	cmp	r9d, 0x30
	jne	.label_820
	jmp	.label_822
.label_818:
	cmp	r10b, 0x30
	je	.label_826
	cmp	r11d, ecx
	jne	.label_827
.label_826:
	movzx	r10d, byte ptr [rsi + 1]
	inc	rsi
	cmp	r10d, 0x30
	je	.label_826
	cmp	r10d, ecx
	je	.label_826
.label_827:
	movzx	edi, r9b
	jmp	.label_831
	.section	.text
	.align	16
	#Procedure 0x40b939
	.globl sub_40b939
	.type sub_40b939, @function
sub_40b939:

	nop	dword ptr [rax]
.label_844:
	cmp	ebp, 9
	ja	.label_834
	nop	word ptr cs:[rax + rax]
.label_864:
	mov	r9b, byte ptr [r8 + 1]
	inc	r8
	movzx	edi, r9b
	cmp	edi, ecx
	je	.label_864
	nop	
.label_841:
	movzx	r10d, byte ptr [rsi + 1]
	inc	rsi
	cmp	r10d, ecx
	je	.label_841
.label_831:
	lea	ebp, [rdi - 0x30]
	cmp	ebp, 0xa
	setb	al
	cmp	dil, r10b
	je	.label_844
.label_834:
	movzx	r10d, r10b
	cmp	edi, edx
	setne	r14b
	lea	r11d, [r10 - 0x30]
	cmp	r11d, 0xa
	setb	bpl
	cmp	r10d, edx
	setne	bl
	or	bl, al
	cmp	bl, 1
	jne	.label_845
	or	r14b, bpl
	je	.label_845
	movzx	eax, r9b
	add	eax, -0x30
	xor	edx, edx
	cmp	eax, 9
	ja	.label_855
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_839:
	movzx	eax, byte ptr [r8 + 1]
	inc	r8
	cmp	eax, ecx
	je	.label_839
	inc	rdx
	add	eax, -0x30
	cmp	eax, 0xa
	jb	.label_839
.label_855:
	xor	eax, eax
	cmp	r11d, 9
	ja	.label_862
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_854:
	movzx	ebx, byte ptr [rsi + 1]
	inc	rsi
	cmp	ebx, ecx
	je	.label_854
	inc	rax
	add	ebx, -0x30
	cmp	ebx, 0xa
	jb	.label_854
.label_862:
	cmp	rdx, rax
	jne	.label_821
	sub	edi, r10d
	xor	eax, eax
	test	rdx, rdx
	cmovne	eax, edi
	jmp	.label_823
.label_845:
	movsx	edx, dl
	mov	rdi, r8
.label_852:
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fraccompare
.label_821:
	mov	ecx, 0xffffffff
	mov	eax, 1
.label_856:
	cmovb	eax, ecx
.label_823:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ba36
	.globl sub_40ba36
	.type sub_40ba36, @function
sub_40ba36:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ba40

	.globl fraccompare
	.type fraccompare, @function
fraccompare:
	cmp	byte ptr [rdi], dl
	jne	.label_866
	cmp	byte ptr [rsi], dl
	jne	.label_866
	inc	rdi
	inc	rsi
	nop	
.label_872:
	movsx	eax, byte ptr [rdi]
	movsx	edx, byte ptr [rsi]
	lea	ecx, [rax - 0x30]
	cmp	al, dl
	jne	.label_867
	inc	rdi
	inc	rsi
	xor	eax, eax
	cmp	ecx, 0xa
	jb	.label_872
	jmp	.label_869
.label_866:
	cmp	byte ptr [rdi], dl
	jne	.label_870
	inc	rdi
	nop	word ptr cs:[rax + rax]
.label_868:
	movsx	eax, byte ptr [rdi]
	inc	rdi
	cmp	eax, 0x30
	je	.label_868
	add	eax, -0x30
	cmp	eax, 0xa
	sbb	eax, eax
	and	eax, 1
	ret	
.label_870:
	xor	eax, eax
	cmp	byte ptr [rsi], dl
	jne	.label_869
	inc	rsi
.label_871:
	movsx	eax, byte ptr [rsi]
	inc	rsi
	cmp	eax, 0x30
	je	.label_871
	add	eax, -0x30
	cmp	eax, 0xa
	sbb	eax, eax
.label_869:
	ret	
.label_867:
	lea	r8d, [rdx - 0x30]
	cmp	ecx, 9
	ja	.label_873
	cmp	r8d, 9
	ja	.label_873
	sub	eax, edx
	ret	
.label_873:
	cmp	ecx, 0xa
	jb	.label_868
	xor	eax, eax
	cmp	r8d, 0xa
	jb	.label_871
	jmp	.label_869
	.section	.text
	.align	16
	#Procedure 0x40bad5
	.globl sub_40bad5
	.type sub_40bad5, @function
sub_40bad5:

	nop	word ptr cs:[rax + rax]
.label_875:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_874
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_874:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40bb14
	.globl sub_40bb14
	.type sub_40bb14, @function
sub_40bb14:

	nop	
	.section	.text
	.align	16
	#Procedure 0x40bb16

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
	jne	.label_876
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_876
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_875
.label_876:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
	.section	.text
	.align	16
	#Procedure 0x40bb50

	.globl sortlines_thread
	.type sortlines_thread, @function
sortlines_thread:
	push	rax
	mov	rax, qword ptr [rdi]
	mov	rsi, qword ptr [rdi + 8]
	mov	rdx, qword ptr [rdi + 0x10]
	mov	rcx, qword ptr [rdi + 0x18]
	mov	r8, qword ptr [rdi + 0x20]
	mov	r9, qword ptr [rdi + 0x28]
	mov	rdi, qword ptr [rdi + 0x30]
	mov	qword ptr [rsp], rdi
	mov	rdi, rax
	call	sortlines
	xor	eax, eax
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40bb7c
	.globl sub_40bb7c
	.type sub_40bb7c, @function
sub_40bb7c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40bb80

	.globl num_processors_via_affinity_mask
	.type num_processors_via_affinity_mask, @function
num_processors_via_affinity_mask:
	sub	rsp, 0x88
	lea	rdx, [rsp + 8]
	xor	edi, edi
	mov	esi, 0x80
	call	sched_getaffinity
	test	eax, eax
	jne	.label_877
	lea	rsi, [rsp + 8]
	mov	edi, 0x80
	call	__sched_cpucount
	test	eax, eax
	je	.label_877
	cdqe	
	add	rsp, 0x88
	ret	
.label_877:
	xor	eax, eax
	add	rsp, 0x88
	ret	
	.section	.text
	.align	16
	#Procedure 0x40bbc3
	.globl sub_40bbc3
	.type sub_40bbc3, @function
sub_40bbc3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40bbd0
	.globl xzalloc
	.type xzalloc, @function
xzalloc:

	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	call	xmalloc
	mov	rbx, rax
	xor	esi, esi
	mov	rdi, rbx
	mov	rdx, r14
	call	memset
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x40bbf7
	.globl sub_40bbf7
	.type sub_40bbf7, @function
sub_40bbf7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40bc00

	.globl explicit_bzero
	.type explicit_bzero, @function
explicit_bzero:
	mov	rax, rsi
	xor	esi, esi
	mov	rdx, rax
	jmp	memset
	.section	.text
	.align	16
	#Procedure 0x40bc0d
	.globl sub_40bc0d
	.type sub_40bc0d, @function
sub_40bc0d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40bc10

	.globl print_and_abort
	.type print_and_abort, @function
print_and_abort:
	push	rbx
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_878
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_879
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	exit
	.section	.text
	.align	16
	#Procedure 0x40bc4b
	.globl sub_40bc4b
	.type sub_40bc4b, @function
sub_40bc4b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40bc50
	.globl md5_stream
	.type md5_stream, @function
md5_stream:

	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xa0
	mov	r14, rsi
	mov	r12, rdi
	mov	edi, 0x8048
	call	malloc
	mov	r15, rax
	mov	eax, 1
	test	r15, r15
	je	.label_880
	lea	r13, [rsp]
	mov	rdi, r13
	call	md5_init_ctx
	jmp	.label_882
	.section	.text
	.align	16
	#Procedure 0x40bc8f
	.globl sub_40bc8f
	.type sub_40bc8f, @function
sub_40bc8f:

	nop	
.label_884:
	mov	esi, 0x8000
	mov	rdi, r15
	mov	rdx, r13
	call	md5_process_block
.label_882:
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_885:
	mov	rdi, r12
	call	feof_unlocked
	test	eax, eax
	jne	.label_883
	lea	rdi, [r15 + rbx]
	mov	edx, 0x8000
	sub	rdx, rbx
	mov	esi, 1
	mov	rcx, r12
	call	fread_unlocked
	add	rbx, rax
	cmp	rbx, 0x8000
	je	.label_884
	test	rax, rax
	jne	.label_885
	mov	rdi, r12
	call	ferror_unlocked
	test	eax, eax
	je	.label_883
	mov	rdi, r15
	call	free
	mov	eax, 1
	jmp	.label_880
.label_883:
	test	rbx, rbx
	je	.label_881
	lea	rdx, [rsp]
	mov	rdi, r15
	mov	rsi, rbx
	call	md5_process_bytes
.label_881:
	lea	rdi, [rsp]
	mov	rsi, r14
	call	md5_finish_ctx
	mov	rdi, r15
	call	free
	xor	eax, eax
.label_880:
	add	rsp, 0xa0
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x40bd3c
	.globl sub_40bd3c
	.type sub_40bd3c, @function
sub_40bd3c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40bd40

	.globl compare_random
	.type compare_random, @function
compare_random:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x1148
	mov	rbx, rcx
	mov	r14, rdx
	mov	r13, rsi
	mov	rbp, rdi
	lea	rdi, [rsp + 0xfc]
	mov	esi, OFFSET FLAT:random_md5_state
	mov	edx, 0x9c
	call	memcpy
	lea	rdi, [rsp + 0x60]
	mov	esi, OFFSET FLAT:random_md5_state
	mov	edx, 0x9c
	call	memcpy
	cmp	byte ptr [byte ptr [rip + hard_LC_COLLATE]],  0
	je	.label_887
	lea	r15, [rsp + 0x1a0]
	mov	qword ptr [rsp + 0x28], rbp
	lea	rax, [rbp + r13]
	mov	qword ptr [rsp + 0x38], rax
	mov	rbp, r14
	lea	rax, [r14 + rbx]
	mov	qword ptr [rsp + 0x20], rax
	add	rbx, r13
	lea	rdx, [rbx + rbx*2 + 2]
	mov	r14d, 0xfa0
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	dword ptr [rsp + 0xc], 0
	mov	qword ptr [rsp + 0x30], rdx
	jmp	.label_890
.label_894:
	cmp	r13, rbx
	cmovb	rbx, r13
	mov	r13d, 0
	seta	r13b
	sbb	r13d, 0
	mov	rdi, r15
	mov	rsi, r12
	mov	rdx, rbx
	call	memcmp
	mov	rdx, qword ptr [rsp + 0x30]
	test	eax, eax
	cmovne	r13d, eax
	mov	dword ptr [rsp + 0xc], r13d
	nop	
.label_890:
	cmp	r14, rdx
	jae	.label_889
	lea	rbx, [r14 + r14*2]
	shr	rbx, 1
	cmp	rdx, rbx
	cmova	rbx, rdx
	mov	rdi, qword ptr [rsp + 0x10]
	call	free
	mov	rdi, rbx
	call	malloc
	test	rax, rax
	mov	r14d, 0xfa0
	cmovne	r14, rbx
	mov	rcx, rax
	mov	qword ptr [rsp + 0x10], rcx
	mov	rbx, rax
	lea	rax, [rsp + 0x1a0]
	cmove	rbx, rax
	mov	r12, rbp
	mov	rbp, qword ptr [rsp + 0x28]
	jmp	.label_892
	.section	.text
	.align	16
	#Procedure 0x40be63
	.globl sub_40be63
	.type sub_40be63, @function
sub_40be63:

	nop	word ptr cs:[rax + rax]
.label_889:
	mov	r12, rbp
	mov	rbp, qword ptr [rsp + 0x28]
	mov	rbx, r15
.label_892:
	mov	r15, qword ptr [rsp + 0x38]
	cmp	rbp, r15
	mov	r13d, 0
	jae	.label_901
	mov	rdi, rbx
	mov	rsi, rbp
	mov	rdx, r14
	call	xstrxfrm
	mov	r13, rax
	inc	r13
.label_901:
	cmp	r12, qword ptr [rsp + 0x20]
	mov	eax, 0
	jae	.label_893
	lea	rdi, [rbx + r13]
	mov	rdx, r14
	sub	rdx, r13
	mov	eax, 0
	cmovb	rdi, rax
	cmovb	rdx, rax
	mov	rsi, r12
	call	xstrxfrm
	inc	rax
.label_893:
	cmp	r14, r13
	setb	cl
	mov	qword ptr [rsp + 0x18], rax
	lea	rax, [rax + r13]
	cmp	rax, r14
	ja	.label_897
	test	cl, cl
	je	.label_891
.label_897:
	lea	r14, [rax + rax*2]
	shr	r14, 1
	movabs	rcx, 0x5555555555555555
	cmp	rax, rcx
	cmovae	r14, rax
	mov	rdi, qword ptr [rsp + 0x10]
	call	free
	mov	rdi, r14
	call	xmalloc
	mov	rbx, rax
	cmp	rbp, r15
	jae	.label_888
	mov	rdi, rbx
	mov	rsi, rbp
	mov	rdx, r13
	call	strxfrm
.label_888:
	cmp	r12, qword ptr [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rbx
	jae	.label_891
	mov	rdi, rbx
	add	rdi, r13
	mov	rsi, r12
	mov	rdx, qword ptr [rsp + 0x18]
	call	strxfrm
.label_891:
	cmp	rbp, r15
	jae	.label_896
	mov	rdi, rbp
	call	strlen
	lea	rbp, [rbp + rax + 1]
.label_896:
	cmp	r12, qword ptr [rsp + 0x20]
	jae	.label_898
	mov	rdi, r12
	call	strlen
	lea	r12, [r12 + rax + 1]
.label_898:
	cmp	rbp, r15
	jb	.label_899
	cmp	r12, qword ptr [rsp + 0x20]
	jae	.label_900
.label_899:
	mov	qword ptr [rsp + 0x28], rbp
	mov	rbp, r12
	mov	rdi, rbx
	mov	rsi, r13
	lea	rdx, [rsp + 0x60]
	call	md5_process_bytes
	mov	r15, rbx
	lea	r12, [rbx + r13]
	mov	rdi, r12
	mov	rbx, qword ptr [rsp + 0x18]
	mov	rsi, rbx
	lea	rdx, [rsp + 0xfc]
	call	md5_process_bytes
	cmp	dword ptr [rsp + 0xc], 0
	mov	rdx, qword ptr [rsp + 0x30]
	jne	.label_890
	jmp	.label_894
.label_900:
	lea	rbp, [rbx + r13]
	jmp	.label_895
.label_887:
	mov	qword ptr [rsp + 0x18], rbx
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	dword ptr [rsp + 0xc], 0
	mov	rbx, rbp
	mov	rbp, r14
.label_895:
	lea	r14, [rsp + 0x60]
	mov	rdi, rbx
	mov	rsi, r13
	mov	rdx, r14
	call	md5_process_bytes
	lea	r12, [rsp + 0x40]
	mov	rdi, r14
	mov	rsi, r12
	call	md5_finish_ctx
	mov	r15, rbp
	mov	rdi, rbp
	mov	rsi, qword ptr [rsp + 0x18]
	lea	rbp, [rsp + 0xfc]
	mov	rdx, rbp
	call	md5_process_bytes
	lea	r14, [rsp + 0x50]
	mov	rdi, rbp
	mov	rsi, r14
	call	md5_finish_ctx
	mov	edx, 0x10
	mov	rdi, r12
	mov	rsi, r14
	call	memcmp
	mov	r14d, eax
	test	r14d, r14d
	jne	.label_886
	mov	eax, dword ptr [rsp + 0xc]
	test	eax, eax
	mov	r14d, eax
	jne	.label_886
	mov	rax, qword ptr [rsp + 0x18]
	cmp	r13, rax
	mov	rdx, rax
	cmovb	rdx, r13
	mov	rdi, rbx
	mov	rsi, r15
	call	memcmp
	mov	r14d, eax
	test	r14d, r14d
	jne	.label_886
	xor	r14d, r14d
	cmp	r13, qword ptr [rsp + 0x18]
	seta	r14b
	sbb	r14d, 0
.label_886:
	mov	rdi, qword ptr [rsp + 0x10]
	call	free
	mov	eax, r14d
	add	rsp, 0x1148
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c0a4
	.globl sub_40c0a4
	.type sub_40c0a4, @function
sub_40c0a4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c0b0

	.globl get_outstatus
	.type get_outstatus, @function
get_outstatus:
	cmp	dword ptr [dword ptr [rip + get_outstatus.outstat_errno]],  0
	jne	.label_902
	push	rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:get_outstatus.outstat
	call	fstat
	mov	ecx, 0xffffffff
	test	eax, eax
	je	.label_903
	call	__errno_location
	mov	ecx, dword ptr [rax]
.label_903:
	mov	dword ptr [dword ptr [rip + get_outstatus.outstat_errno]],  ecx
	add	rsp, 8
.label_902:
	xor	eax, eax
	cmp	dword ptr [dword ptr [rip + get_outstatus.outstat_errno]],  0
	mov	ecx, OFFSET FLAT:get_outstatus.outstat
	cmovs	rax, rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c0f6
	.globl sub_40c0f6
	.type sub_40c0f6, @function
sub_40c0f6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c100

	.globl heap_default_compare
	.type heap_default_compare, @function
heap_default_compare:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c103
	.globl sub_40c103
	.type sub_40c103, @function
sub_40c103:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c110

	.globl sortlines
	.type sortlines, @function
sortlines:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x58
	mov	r15, r9
	mov	rbp, rcx
	mov	r13, rdx
	mov	r12, rsi
	mov	rbx, rdi
	mov	rdx, qword ptr [rsp + 0x90]
	mov	rax, qword ptr [rbp + 0x30]
	add	rax, qword ptr [rbp + 0x28]
	mov	r14, r12
	shr	r14, 1
	mov	qword ptr [rsp + 0x20], rbx
	mov	qword ptr [rsp + 0x28], r14
	mov	qword ptr [rsp + 0x30], r13
	mov	rcx, qword ptr [rbp + 0x40]
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 8], r8
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x48], r15
	mov	qword ptr [rsp + 0x50], rdx
	cmp	r12, 2
	jb	.label_905
	cmp	rax, 0x20000
	jb	.label_905
	lea	rdi, [rsp + 0x18]
	lea	rcx, [rsp + 0x20]
	xor	esi, esi
	mov	edx, OFFSET FLAT:sortlines_thread
	call	pthread_create
	test	eax, eax
	je	.label_906
.label_905:
	mov	qword ptr [rsp + 0x10], r15
	mov	r14, qword ptr [rbp + 0x28]
	mov	r12, qword ptr [rbp + 0x30]
	mov	rax, r13
	shl	rax, 5
	mov	r15, rbx
	sub	r15, rax
	cmp	r12, 2
	jb	.label_907
	mov	rax, r14
	shl	rax, 5
	mov	rdi, rbx
	sub	rdi, rax
	mov	rax, r14
	shl	rax, 4
	and	rax, 0xffffffffffffffe0
	mov	rdx, r15
	sub	rdx, rax
	xor	ecx, ecx
	mov	rsi, r12
	call	sequential_sort
.label_907:
	cmp	r14, 2
	jb	.label_904
	xor	ecx, ecx
	mov	rdi, rbx
	mov	rsi, r14
	mov	rdx, r15
	call	sequential_sort
.label_904:
	mov	qword ptr [rbp], rbx
	shl	r14, 5
	sub	rbx, r14
	mov	qword ptr [rbp + 8], rbx
	mov	qword ptr [rbp + 0x10], rbx
	shl	r12, 5
	sub	rbx, r12
	mov	qword ptr [rbp + 0x18], rbx
	mov	rbx, qword ptr [rsp + 8]
	mov	rdi, rbx
	mov	rsi, rbp
	call	queue_insert
	mov	rdi, rbx
	mov	rsi, r13
	mov	rdx, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsp + 0x90]
	call	merge_loop
.label_908:
	add	rsp, 0x58
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_906:
	sub	r12, r14
	mov	rax, qword ptr [rbp + 0x28]
	mov	rcx, qword ptr [rbp + 0x48]
	shl	rax, 5
	sub	rbx, rax
	mov	rax, qword ptr [rsp + 0x90]
	mov	qword ptr [rsp], rax
	mov	rdi, rbx
	mov	rsi, r12
	mov	rdx, r13
	mov	r8, qword ptr [rsp + 8]
	mov	r9, r15
	call	sortlines
	mov	rdi, qword ptr [rsp + 0x18]
	xor	esi, esi
	call	pthread_join
	jmp	.label_908
.label_909:
	neg	r14
	sbb	eax, eax
.label_910:
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
	#Procedure 0x40c2a4
	.globl sub_40c2a4
	.type sub_40c2a4, @function
sub_40c2a4:

	nop	
	.section	.text
	.align	16
	#Procedure 0x40c2a6

	.globl strcoll_loop
	.type strcoll_loop, @function
strcoll_loop:
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
	call	__errno_location
	mov	r13, rax
	nop	
.label_911:
	mov	dword ptr [r13], 0
	mov	rdi, rbx
	mov	rsi, r12
	call	strcoll
	test	eax, eax
	jne	.label_910
	mov	rdi, rbx
	call	strlen
	mov	rbp, rax
	inc	rbp
	mov	rdi, r12
	call	strlen
	inc	rax
	sub	r14, rax
	sub	r15, rbp
	je	.label_909
	add	r12, rax
	add	rbx, rbp
	mov	eax, 1
	test	r14, r14
	jne	.label_911
	jmp	.label_910
	.section	.text
	.align	16
	#Procedure 0x40c310

	.globl cs_leave
	.type cs_leave, @function
cs_leave:
	mov	rax, rdi
	cmp	byte ptr [rax], 0
	je	.label_912
	add	rax, 8
	mov	edi, 2
	xor	edx, edx
	mov	rsi, rax
	jmp	pthread_sigmask
.label_912:
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c32c
	.globl sub_40c32c
	.type sub_40c32c, @function
sub_40c32c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40c330

	.globl rpl_pipe2
	.type rpl_pipe2, @function
rpl_pipe2:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	rbx, rdi
	mov	r14d, dword ptr [rbx]
	mov	r15d, dword ptr [rbx + 4]
	cmp	dword ptr [dword ptr [rip + rpl_pipe2.have_pipe2_really]],  0
	js	.label_916
	mov	rdi, rbx
	mov	r12d, esi
	call	pipe2
	mov	ebp, eax
	test	ebp, ebp
	jns	.label_915
	call	__errno_location
	cmp	dword ptr [rax], 0x26
	jne	.label_915
	mov	dword ptr [dword ptr [rip + rpl_pipe2.have_pipe2_really]],  0xffffffff
	mov	esi, r12d
.label_916:
	test	esi, 0xfff7f7ff
	je	.label_917
	call	__errno_location
	mov	dword ptr [rax], 0x16
.label_919:
	mov	ebp, 0xffffffff
	jmp	.label_914
.label_915:
	mov	dword ptr [dword ptr [rip + rpl_pipe2.have_pipe2_really]],  1
.label_914:
	mov	eax, ebp
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_917:
	mov	r12d, esi
	mov	rdi, rbx
	call	pipe
	mov	ebp, 0xffffffff
	test	eax, eax
	js	.label_914
	mov	eax, r12d
	test	ah, 8
	je	.label_918
	mov	edi, dword ptr [rbx + 4]
	mov	esi, 3
	xor	edx, edx
	xor	eax, eax
	call	rpl_fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_913
	mov	edi, dword ptr [rbx + 4]
	or	ecx, 0x800
	mov	esi, 4
	xor	eax, eax
	mov	edx, ecx
	call	rpl_fcntl
	cmp	eax, -1
	je	.label_913
	mov	edi, dword ptr [rbx]
	mov	esi, 3
	xor	edx, edx
	xor	eax, eax
	call	rpl_fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_913
	mov	edi, dword ptr [rbx]
	or	ecx, 0x800
	mov	esi, 4
	xor	eax, eax
	mov	edx, ecx
	call	rpl_fcntl
	cmp	eax, -1
	je	.label_913
.label_918:
	xor	ebp, ebp
	test	r12d, 0x80000
	je	.label_914
	mov	edi, dword ptr [rbx + 4]
	mov	esi, 1
	xor	edx, edx
	xor	eax, eax
	call	rpl_fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_913
	mov	edi, dword ptr [rbx + 4]
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edx, ecx
	call	rpl_fcntl
	cmp	eax, -1
	je	.label_913
	mov	edi, dword ptr [rbx]
	xor	ebp, ebp
	mov	esi, 1
	xor	edx, edx
	xor	eax, eax
	call	rpl_fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_913
	mov	edi, dword ptr [rbx]
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edx, ecx
	call	rpl_fcntl
	cmp	eax, -1
	jne	.label_914
.label_913:
	call	__errno_location
	mov	rbp, rax
	mov	r12d, dword ptr [rbp]
	mov	edi, dword ptr [rbx]
	call	close
	mov	edi, dword ptr [rbx + 4]
	call	close
	mov	dword ptr [rbx], r14d
	mov	dword ptr [rbx + 4], r15d
	mov	dword ptr [rbp], r12d
	jmp	.label_919
	.section	.text
	.align	16
	#Procedure 0x40c4cc
	.globl sub_40c4cc
	.type sub_40c4cc, @function
sub_40c4cc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40c4d0

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x40c4de
	.globl sub_40c4de
	.type sub_40c4de, @function
sub_40c4de:

	nop	
	.section	.text
	.align	16
	#Procedure 0x40c4e0

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
	js	.label_920
	mov	eax, dword ptr [r13]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_923
	cmp	r12d, 0x7fffffff
	je	.label_925
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
	mov	qword ptr [word ptr [rip + slotvec]],  r14
	jne	.label_921
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_921:
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	movsxd	rbp, r15d
	mov	rdx, rbp
	sub	rdx, rax
	shl	rax, 4
	mov	rdi, r14
	add	rdi, rax
	shl	rdx, 4
	xor	esi, esi
	call	memset
	mov	dword ptr [dword ptr [rip + nslots]],  ebp
	mov	rbp, r14
	mov	rbx, qword ptr [rsp + 0x10]
	mov	r15, qword ptr [rsp + 8]
.label_923:
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
	jbe	.label_926
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_922
.label_926:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_924
	mov	rdi, r14
	call	free
.label_924:
	mov	rdi, r15
	call	xcharalloc
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
.label_922:
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
.label_920:
	call	abort
.label_925:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40c69d
	.globl sub_40c69d
	.type sub_40c69d, @function
sub_40c69d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40c6a0

	.globl quotearg_n_style_mem
	.type quotearg_n_style_mem, @function
quotearg_n_style_mem:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x38
	mov	r14, rcx
	mov	rbx, rdx
	mov	ebp, edi
	lea	r15, [rsp]
	mov	rdi, r15
	call	quoting_options_from_style
	mov	edi, ebp
	mov	rsi, rbx
	mov	rdx, r14
	mov	rcx, r15
	call	quotearg_n_options
	add	rsp, 0x38
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c6d9
	.globl sub_40c6d9
	.type sub_40c6d9, @function
sub_40c6d9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40c6e0

	.globl quotearg_style
	.type quotearg_style, @function
quotearg_style:
	mov	rax, rsi
	mov	ecx, edi
	xor	edi, edi
	mov	esi, ecx
	mov	rdx, rax
	jmp	quotearg_n_style
	.section	.text
	.align	16
	#Procedure 0x40c6f1
	.globl sub_40c6f1
	.type sub_40c6f1, @function
sub_40c6f1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c700
	.globl quotearg_style_mem
	.type quotearg_style_mem, @function
quotearg_style_mem:

	mov	rax, rdx
	mov	rcx, rsi
	mov	edx, edi
	xor	edi, edi
	mov	esi, edx
	mov	rdx, rcx
	mov	rcx, rax
	jmp	quotearg_n_style_mem
	.section	.text
	.align	16
	#Procedure 0x40c714
	.globl sub_40c714
	.type sub_40c714, @function
sub_40c714:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c720

	.globl hash_get_max_bucket_length
	.type hash_get_max_bucket_length, @function
hash_get_max_bucket_length:
	mov	rcx, qword ptr [rdi]
	xor	eax, eax
	cmp	rcx, qword ptr [rdi + 8]
	jae	.label_927
	mov	rdx, qword ptr [rdi + 8]
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_930:
	cmp	qword ptr [rcx], 0
	je	.label_928
	xor	esi, esi
	mov	rdi, rcx
	nop	dword ptr [rax + rax]
.label_929:
	mov	rdi, qword ptr [rdi + 8]
	inc	rsi
	test	rdi, rdi
	jne	.label_929
	cmp	rsi, rax
	cmova	rax, rsi
.label_928:
	add	rcx, 0x10
	cmp	rcx, rdx
	jb	.label_930
.label_927:
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c76d
	.globl sub_40c76d
	.type sub_40c76d, @function
sub_40c76d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40c770
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
	xor	ebx, ebx
	cmp	r13, qword ptr [r12 + 8]
	jae	.label_931
	xor	ebx, ebx
.label_933:
	cmp	qword ptr [r13], 0
	je	.label_932
	test	r13, r13
	je	.label_932
	mov	rbp, r13
	nop	word ptr cs:[rax + rax]
.label_934:
	mov	rdi, qword ptr [rbp]
	mov	rsi, r14
	call	r15
	test	al, al
	je	.label_931
	inc	rbx
	mov	rbp, qword ptr [rbp + 8]
	test	rbp, rbp
	jne	.label_934
.label_932:
	add	r13, 0x10
	cmp	r13, qword ptr [r12 + 8]
	jb	.label_933
.label_931:
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
	#Procedure 0x40c7e7
	.globl sub_40c7e7
	.type sub_40c7e7, @function
sub_40c7e7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c7f0

	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x40
	mov	eax, edx
	mov	r14, rsi
	mov	rbx, rdi
	mov	rcx,  qword ptr [word ptr [rip + label_353]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_354]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_355]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	lea	r15, [rsp]
	mov	edx, 1
	mov	rdi, r15
	mov	esi, eax
	call	set_char_quoting
	xor	edi, edi
	mov	rsi, rbx
	mov	rdx, r14
	mov	rcx, r15
	call	quotearg_n_options
	add	rsp, 0x40
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c85d
	.globl sub_40c85d
	.type sub_40c85d, @function
sub_40c85d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40c860

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	mov	eax, esi
	mov	rsi, -1
	mov	edx, eax
	jmp	quotearg_char_mem
	.section	.text
	.align	16
	#Procedure 0x40c86d
	.globl sub_40c86d
	.type sub_40c86d, @function
sub_40c86d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40c870

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	.section	.text
	.align	16
	#Procedure 0x40c877
	.globl sub_40c877
	.type sub_40c877, @function
sub_40c877:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c880

	.globl default_key_compare
	.type default_key_compare, @function
default_key_compare:
	push	rbx
	mov	rbx, rdi
	cmp	qword ptr [rbx + 0x20], 0
	je	.label_935
	xor	eax, eax
	jmp	.label_936
.label_939:
	cmp	byte ptr [rbx + 0x31], 0
	je	.label_940
	xor	eax, eax
	jmp	.label_936
.label_937:
	cmp	byte ptr [rbx + 0x33], 0
	sete	al
.label_936:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c8a2
	.globl sub_40c8a2
	.type sub_40c8a2, @function
sub_40c8a2:

	nop	dword ptr [rax + rax]
.label_938:
	cmp	byte ptr [rbx + 0x38], 0
	je	.label_937
	xor	eax, eax
	jmp	.label_936
.label_940:
	mov	rdi, rbx
	call	key_numeric
	test	al, al
	je	.label_942
	xor	eax, eax
	jmp	.label_936
.label_942:
	cmp	byte ptr [rbx + 0x36], 0
	je	.label_938
	xor	eax, eax
	jmp	.label_936
.label_941:
	cmp	byte ptr [rbx + 0x30], 0
	je	.label_939
	xor	eax, eax
	jmp	.label_936
.label_935:
	cmp	qword ptr [rbx + 0x28], 0
	je	.label_941
	xor	eax, eax
	jmp	.label_936
.label_944:
	mov	rdi, rbx
	mov	rsi, r12
	mov	rdx, r15
	mov	rcx, r14
	call	mergelines_node
	mov	rdi, r13
	mov	rsi, rbx
	call	queue_check_insert
	mov	rdi, r13
	mov	rsi, rbx
	call	queue_check_insert_parent
	mov	rdi, rbx
	call	unlock_node
.label_943:
	mov	rdi, r13
	call	queue_pop
	mov	rbx, rax
	cmp	dword ptr [rbx + 0x50], 0
	jne	.label_944
	mov	rdi, rbx
	call	unlock_node
	mov	rdi, r13
	mov	rsi, rbx
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	jmp	queue_insert
	.section	.text
	.align	16
	#Procedure 0x40c93c
	.globl sub_40c93c
	.type sub_40c93c, @function
sub_40c93c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40c940

	.globl merge_loop
	.type merge_loop, @function
merge_loop:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r14, rcx
	mov	r15, rdx
	mov	r12, rsi
	mov	r13, rdi
	jmp	.label_943
	.section	.text
	.align	16
	#Procedure 0x40c957
	.globl sub_40c957
	.type sub_40c957, @function
sub_40c957:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c960

	.globl lock_node
	.type lock_node, @function
lock_node:
	add	rdi, 0x58
	jmp	pthread_mutex_lock
	.section	.text
	.align	16
	#Procedure 0x40c969
	.globl sub_40c969
	.type sub_40c969, @function
sub_40c969:

	nop	dword ptr [rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40c970

	.globl xfopen
	.type xfopen, @function
xfopen:
	push	rbx
	mov	rbx, rdi
	call	stream_open
	test	rax, rax
	je	.label_945
	pop	rbx
	ret	
.label_945:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_537
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, rbx
	call	sort_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40c9a0

	.globl posix2_version
	.type posix2_version, @function
posix2_version:
	push	rax
	mov	edi, OFFSET FLAT:label_946
	call	getenv
	mov	ecx, 0x31069
	test	rax, rax
	je	.label_947
	mov	ecx, 0x31069
	cmp	byte ptr [rax], 0
	je	.label_947
	lea	rsi, [rsp]
	mov	edx, 0xa
	mov	rdi, rax
	call	strtol
	mov	rcx, qword ptr [rsp]
	cmp	byte ptr [rcx], 0
	mov	ecx, 0x31069
	cmove	rcx, rax
.label_947:
	cmp	rcx, 0x7fffffff
	mov	edx, 0x7fffffff
	cmovl	edx, ecx
	cmp	rcx, -0x80000000
	mov	eax, 0x80000000
	cmovge	eax, edx
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ca00

	.globl order
	.type order, @function
order:
	push	rbx
	mov	ebx, edi
	call	c_isdigit
	mov	ecx, eax
	xor	eax, eax
	test	cl, cl
	jne	.label_948
	mov	edi, ebx
	call	c_isalpha
	test	al, al
	mov	eax, ebx
	jne	.label_948
	mov	ecx, ebx
	or	ecx, 0x100
	cmp	bl, 0x7e
	mov	eax, 0xffffffff
	cmovne	eax, ecx
.label_948:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ca32
	.globl sub_40ca32
	.type sub_40ca32, @function
sub_40ca32:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ca40

	.globl raw_comparator
	.type raw_comparator, @function
raw_comparator:
	cmp	rdi, rsi
	sete	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ca47
	.globl sub_40ca47
	.type sub_40ca47, @function
sub_40ca47:

	nop	word ptr [rax + rax]
.label_949:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40ca55
	.globl sub_40ca55
	.type sub_40ca55, @function
sub_40ca55:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ca63

	.globl quoting_options_from_style
	.type quoting_options_from_style, @function
quoting_options_from_style:
	sub	rsp, 0x38
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x30], 0
	cmp	esi, 0xa
	je	.label_949
	mov	dword ptr [rdi], esi
	mov	eax, dword ptr [rsp + 0x30]
	mov	dword ptr [rdi + 0x34], eax
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rdi + 0x24], xmm2
	movups	xmmword ptr [rdi + 0x14], xmm1
	movups	xmmword ptr [rdi + 4], xmm0
	mov	rax, rdi
	add	rsp, 0x38
	ret	
	.section	.text
	.align	16
	#Procedure 0x40cab0

	.globl num_processors_ignoring_omp
	.type num_processors_ignoring_omp, @function
num_processors_ignoring_omp:
	push	rax
	cmp	edi, 1
	jne	.label_952
	call	num_processors_via_affinity_mask
	test	rax, rax
	jne	.label_950
	mov	edi, 0x54
	call	sysconf
	test	rax, rax
	jg	.label_950
	jmp	.label_951
.label_952:
	mov	edi, 0x53
	call	sysconf
	mov	rcx, rax
	cmp	rcx, 1
	jne	.label_953
	call	num_processors_via_affinity_mask
	mov	rcx, rax
	mov	eax, 1
	test	rcx, rcx
	je	.label_950
.label_953:
	test	rcx, rcx
	mov	rax, rcx
	jg	.label_950
.label_951:
	mov	eax, 1
.label_950:
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40cb05
	.globl sub_40cb05
	.type sub_40cb05, @function
sub_40cb05:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40cb10

	.globl queue_check_insert_parent
	.type queue_check_insert_parent, @function
queue_check_insert_parent:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	cmp	dword ptr [rbx + 0x50], 2
	jb	.label_954
	mov	rdi, qword ptr [rbx + 0x38]
	call	lock_node
	mov	rsi, qword ptr [rbx + 0x38]
	mov	rdi, r14
	call	queue_check_insert
	mov	rdi, qword ptr [rbx + 0x38]
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	unlock_node
.label_954:
	mov	rax, qword ptr [rbx + 0x28]
	add	rax, qword ptr [rbx + 0x30]
	jne	.label_955
	mov	rsi, qword ptr [rbx + 0x38]
	mov	rdi, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	queue_insert
.label_955:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x40cb6a
	.globl sub_40cb6a
	.type sub_40cb6a, @function
sub_40cb6a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40cb70

	.globl general_numcompare
	.type general_numcompare, @function
general_numcompare:
	push	r14
	push	rbx
	sub	rsp, 0x28
	mov	r14, rsi
	mov	rbx, rdi
	lea	rsi, [rsp + 0x10]
	call	strtold
	fstp	xword ptr [rsp + 0x1c]
	lea	rsi, [rsp + 8]
	mov	rdi, r14
	call	strtold
	mov	rcx, qword ptr [rsp + 8]
	cmp	qword ptr [rsp + 0x10], rbx
	je	.label_961
	mov	eax, 1
	cmp	rcx, r14
	je	.label_957
	fld	xword ptr [rsp + 0x1c]
	fxch	st(1)
	fucomi	st(1)
	jbe	.label_960
	fstp	st(0)
	fstp	st(0)
	mov	eax, 0xffffffff
	jmp	.label_962
.label_958:
	xor	eax, eax
	fucomi	st(1)
	jne	.label_956
	jnp	.label_959
.label_956:
	fxch	st(1)
	fucomip	st(0)
	mov	eax, 0xffffffff
	fldz	
	fxch	st(1)
	jnp	.label_959
	fstp	st(1)
	fucomip	st(0)
	mov	eax, 1
	fldz	
	fldz	
	jnp	.label_959
	fstp	st(1)
	fstp	st(0)
	mov	rdi, rbx
	mov	rsi, r14
	call	nan_compare
	jmp	.label_962
	.section	.text
	.align	16
	#Procedure 0x40cbfa
	.globl sub_40cbfa
	.type sub_40cbfa, @function
sub_40cbfa:

	nop	word ptr cs:[rax + rax]
.label_960:
	fxch	st(1)
	fucomi	st(1)
	jbe	.label_958
	fstp	st(1)
.label_957:
	fstp	st(0)
.label_962:
	fldz	
	fldz	
.label_959:
	fstp	st(1)
	fstp	st(0)
	add	rsp, 0x28
	pop	rbx
	pop	r14
	ret	
.label_961:
	fstp	st(0)
	xor	edx, edx
	cmp	rcx, r14
	mov	eax, 0xffffffff
	cmove	eax, edx
	jmp	.label_962
	.section	.text
	.align	16
	#Procedure 0x40cc30
	.globl rotr8
	.type rotr8, @function
rotr8:

	mov	eax, edi
	mov	ecx, esi
	shr	eax, cl
	mov	ecx, 8
	sub	ecx, esi
	shl	edi, cl
	or	edi, eax
	mov	eax, edi
	ret	
	.section	.text
	.align	16
	#Procedure 0x40cc44
	.globl sub_40cc44
	.type sub_40cc44, @function
sub_40cc44:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40cc50

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x40cc5a
	.globl sub_40cc5a
	.type sub_40cc5a, @function
sub_40cc5a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40cc60
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quotearg_n
	.section	.text
	.align	16
	#Procedure 0x40cc6d
	.globl sub_40cc6d
	.type sub_40cc6d, @function
sub_40cc6d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40cc70
	.globl quotearg_mem
	.type quotearg_mem, @function
quotearg_mem:

	mov	rax, rsi
	mov	rcx, rdi
	xor	edi, edi
	mov	rsi, rcx
	mov	rdx, rax
	jmp	quotearg_n_mem
	.section	.text
	.align	16
	#Procedure 0x40cc80

	.globl debug_width
	.type debug_width, @function
debug_width:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	sub	rsi, rbx
	xor	edx, edx
	call	mbsnwidth
	cdqe	
	cmp	rbx, r14
	jae	.label_964
	nop	dword ptr [rax + rax]
.label_963:
	xor	ecx, ecx
	cmp	byte ptr [rbx], 9
	lea	rbx, [rbx + 1]
	sete	cl
	add	rax, rcx
	cmp	r14, rbx
	jne	.label_963
.label_964:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ccbc
	.globl sub_40ccbc
	.type sub_40ccbc, @function
sub_40ccbc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40ccc0

	.globl md5_init_ctx
	.type md5_init_ctx, @function
md5_init_ctx:
	mov	dword ptr [rdi], 0x67452301
	mov	dword ptr [rdi + 4], 0xefcdab89
	mov	dword ptr [rdi + 8], 0x98badcfe
	mov	dword ptr [rdi + 0xc], 0x10325476
	mov	dword ptr [rdi + 0x14], 0
	mov	dword ptr [rdi + 0x10], 0
	mov	dword ptr [rdi + 0x18], 0
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ccf1
	.globl sub_40ccf1
	.type sub_40ccf1, @function
sub_40ccf1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40cd00

	.globl limfield
	.type limfield, @function
limfield:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r14, rsi
	mov	rbx, qword ptr [rdi]
	mov	rax, qword ptr [rdi + 8]
	lea	r15, [rbx + rax - 1]
	mov	r13, qword ptr [r14 + 0x10]
	mov	r12, qword ptr [r14 + 0x18]
	cmp	r12, 1
	adc	r13, 0
	cmp	dword ptr [dword ptr [rip + tab]],  0x80
	je	.label_965
	cmp	rbx, r15
	jae	.label_967
	mov	eax,  dword ptr [dword ptr [rip + tab]]
	nop	word ptr cs:[rax + rax]
.label_977:
	test	r13, r13
	je	.label_967
	dec	r13
	jmp	.label_973
	.section	.text
	.align	16
	#Procedure 0x40cd5e
	.globl sub_40cd5e
	.type sub_40cd5e, @function
sub_40cd5e:

	nop	
.label_979:
	inc	rbx
.label_973:
	cmp	rbx, r15
	jae	.label_970
	movsx	ecx, byte ptr [rbx]
	cmp	ecx, eax
	jne	.label_979
	lea	rcx, [rbx + 1]
	mov	rdx, r13
	or	rdx, r12
	cmovne	rbx, rcx
.label_970:
	cmp	rbx, r15
	jb	.label_977
	jmp	.label_967
	.section	.text
	.align	16
	#Procedure 0x40cd84
	.globl sub_40cd84
	.type sub_40cd84, @function
sub_40cd84:

	nop	word ptr cs:[rax + rax]
.label_968:
	dec	r13
.label_965:
	cmp	rbx, r15
	jae	.label_967
	test	r13, r13
	jne	.label_972
	jmp	.label_967
	.section	.text
	.align	16
	#Procedure 0x40cd9f
	.globl sub_40cd9f
	.type sub_40cd9f, @function
sub_40cd9f:

	nop	
.label_978:
	inc	rbx
.label_972:
	cmp	rbx, r15
	jae	.label_975
	movsx	edi, byte ptr [rbx]
	call	to_uchar
	movzx	eax, al
	cmp	byte ptr [byte ptr [rax + blanks]],  0
	jne	.label_978
	jmp	.label_975
	.section	.text
	.align	16
	#Procedure 0x40cdbe
	.globl sub_40cdbe
	.type sub_40cdbe, @function
sub_40cdbe:

	nop	
.label_971:
	inc	rbx
.label_975:
	cmp	rbx, r15
	jae	.label_968
	movsx	edi, byte ptr [rbx]
	call	to_uchar
	movzx	eax, al
	cmp	byte ptr [byte ptr [rax + blanks]],  0
	je	.label_971
	jmp	.label_968
.label_967:
	test	r12, r12
	je	.label_974
	cmp	byte ptr [r14 + 0x31], 0
	jne	.label_969
	jmp	.label_976
	.section	.text
	.align	16
	#Procedure 0x40cdec
	.globl sub_40cdec
	.type sub_40cdec, @function
sub_40cdec:

	nop	dword ptr [rax]
.label_966:
	inc	rbx
.label_969:
	cmp	rbx, r15
	jae	.label_976
	movsx	edi, byte ptr [rbx]
	call	to_uchar
	movzx	eax, al
	cmp	byte ptr [byte ptr [rax + blanks]],  0
	jne	.label_966
.label_976:
	add	rbx, r12
	cmp	r15, rbx
	cmovb	rbx, r15
.label_974:
	mov	rax, rbx
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ce23
	.globl sub_40ce23
	.type sub_40ce23, @function
sub_40ce23:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ce30

	.globl hash_find_entry
	.type hash_find_entry, @function
hash_find_entry:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r12d, ecx
	mov	rbp, rdx
	mov	r13, rsi
	mov	r14, rdi
	call	safe_hasher
	mov	rbx, rax
	mov	qword ptr [rbp], rbx
	mov	rsi, qword ptr [rbx]
	xor	r15d, r15d
	test	rsi, rsi
	je	.label_982
	cmp	rsi, r13
	je	.label_980
	mov	rdi, r13
	call	qword ptr [r14 + 0x38]
	test	al, al
	je	.label_984
.label_980:
	mov	r15, qword ptr [rbx]
	test	r12b, r12b
	je	.label_982
	mov	rsi, qword ptr [rbx + 8]
	test	rsi, rsi
	je	.label_986
	movups	xmm0, xmmword ptr [rsi]
	movups	xmmword ptr [rbx], xmm0
	jmp	.label_981
.label_983:
	mov	rsi, qword ptr [rbx]
	mov	r15, qword ptr [rsi]
	test	r12b, r12b
	je	.label_982
	mov	rax, qword ptr [rsi + 8]
	mov	qword ptr [rbx], rax
.label_981:
	mov	rdi, r14
	call	free_entry
.label_982:
	mov	rax, r15
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
	#Procedure 0x40ceb7
	.globl sub_40ceb7
	.type sub_40ceb7, @function
sub_40ceb7:

	nop	word ptr [rax + rax]
.label_986:
	mov	qword ptr [rbx], 0
	jmp	.label_982
.label_984:
	mov	rax, qword ptr [rbx + 8]
	xor	r15d, r15d
	test	rax, rax
	je	.label_982
	add	rbx, 8
	xor	r15d, r15d
	nop	
.label_985:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r13
	je	.label_983
	mov	rdi, r13
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_983
	mov	rbx, qword ptr [rbx]
	mov	rax, qword ptr [rbx + 8]
	add	rbx, 8
	test	rax, rax
	jne	.label_985
	jmp	.label_982
.label_989:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_987
.label_988:
	mov	eax, 1
	test	bpl, bpl
	je	.label_987
	mov	al, byte ptr [rsp + 0x40]
	movsx	ecx, byte ptr [rsp + 0x48]
	mov	dword ptr [rsp], ecx
	movsx	esi, r13b
	movsx	edx, r12b
	movsx	ecx, r15b
	movsx	r8d, r14b
	movsx	r9d, al
	mov	rdi, rbx
	call	strcaseeq1
.label_987:
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
	#Procedure 0x40cf48
	.globl sub_40cf48
	.type sub_40cf48, @function
sub_40cf48:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40cf4b

	.globl strcaseeq0
	.type strcaseeq0, @function
strcaseeq0:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14d, r9d
	mov	r15d, r8d
	mov	r12d, ecx
	mov	r13d, edx
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	call	c_isupper
	movsx	ecx, byte ptr [rbx]
	test	al, al
	je	.label_989
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_988
	jmp	.label_987
	.section	.text
	.align	16
	#Procedure 0x40cf80

	.globl xstrxfrm
	.type xstrxfrm, @function
xstrxfrm:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r15, rdx
	mov	r14, rsi
	mov	rbx, rdi
	call	__errno_location
	mov	rbp, rax
	mov	dword ptr [rbp], 0
	mov	rdi, rbx
	mov	rsi, r14
	mov	rdx, r15
	call	strxfrm
	mov	ebp, dword ptr [rbp]
	test	ebp, ebp
	jne	.label_992
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_992:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_993
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rcx
	call	error
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_990
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_991
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 8
	mov	rdx, r14
	call	quotearg_n_style
	mov	rcx, rax
	mov	edi, 2
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d040

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x218
	mov	rbx, rsi
	mov	dword ptr [rsp + 0xc], edi
	mov	edi, OFFSET FLAT:label_1096
	call	getenv
	mov	qword ptr [rsp + 0x58], rax
	call	posix2_version
	add	eax, 0xfffcf250
	cmp	eax, 0x2b8
	seta	al
	mov	dword ptr [rsp + 0x2c], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	rdi, qword ptr [rbx]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_166
	call	setlocale
	mov	qword ptr [rsp + 0xa8], rax
	test	rax, rax
	setne	byte ptr [rsp + 0x1f]
	mov	edi, OFFSET FLAT:label_1038
	mov	esi, OFFSET FLAT:label_1039
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_1038
	call	textdomain
	call	initialize_exit_failure
	mov	edi, 3
	call	hard_locale
	mov	byte ptr [byte ptr [rip + hard_LC_COLLATE]],  al
	mov	edi, 2
	call	hard_locale
	mov	byte ptr [byte ptr [rip + hard_LC_TIME]],  al
	call	localeconv
	mov	rbx, rax
	mov	rax, qword ptr [rbx]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	eax, al
	mov	dword ptr [dword ptr [rip + decimal_point]],  eax
	test	al, al
	je	.label_1062
	mov	rax, qword ptr [rbx]
	cmp	byte ptr [rax + 1], 0
	je	.label_1066
.label_1062:
	mov	dword ptr [dword ptr [rip + decimal_point]],  0x2e
.label_1066:
	mov	rax, qword ptr [rbx + 8]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	eax, al
	mov	dword ptr [dword ptr [rip + thousands_sep]],  eax
	test	al, al
	je	.label_1075
	mov	rax, qword ptr [rbx + 8]
	cmp	byte ptr [rax + 1], 0
	je	.label_1077
.label_1075:
	mov	dword ptr [dword ptr [rip + thousands_sep]],  0xffffffff
.label_1077:
	mov	byte ptr [byte ptr [rip + have_read_stdin]],  0
	call	inittables
	mov	edi, OFFSET FLAT:caught_signals
	call	sigemptyset
	mov	rbp, -0x2c
	lea	rbx, [rsp + 0xb0]
	nop	dword ptr [rax]
.label_1101:
	mov	edi,  dword ptr [dword ptr [rbp + label_1013]]
	xor	esi, esi
	mov	rdx, rbx
	call	sigaction
	cmp	qword ptr [rsp + 0xb0], 1
	je	.label_1095
	mov	esi,  dword ptr [dword ptr [rbp + label_1013]]
	mov	edi, OFFSET FLAT:caught_signals
	call	sigaddset
.label_1095:
	add	rbp, 4
	jne	.label_1101
	mov	qword ptr [word ptr [rsp + 176]], OFFSET FLAT:sighandler
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1104]]
	movups	xmmword ptr [rsp + 0x128], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1105]]
	movups	xmmword ptr [rsp + 0x118], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1106]]
	movups	xmmword ptr [rsp + 0x108], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1107]]
	movups	xmmword ptr [rsp + 0xf8], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1108]]
	movups	xmmword ptr [rsp + 0xe8], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1109]]
	movups	xmmword ptr [rsp + 0xd8], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1110]]
	movups	xmmword ptr [rsp + 0xc8], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + caught_signals]]
	movups	xmmword ptr [rsp + 0xb8], xmm0
	mov	dword ptr [rsp + 0x138], 0
	mov	rbp, -0x2c
	lea	rbx, [rsp + 0xb0]
	nop	
.label_1022:
	mov	esi,  dword ptr [dword ptr [rbp + label_1013]]
	mov	edi, OFFSET FLAT:caught_signals
	call	sigismember
	test	eax, eax
	je	.label_1015
	mov	edi,  dword ptr [dword ptr [rbp + label_1013]]
	xor	edx, edx
	mov	rsi, rbx
	call	sigaction
.label_1015:
	add	rbp, 4
	jne	.label_1022
	xor	eax, eax
	mov	qword ptr [rsp + 0x30], rax
	mov	edi, 0x11
	xor	esi, esi
	call	signal
	mov	edi, OFFSET FLAT:exit_cleanup
	call	atexit
	lea	rdi, [rsp + 0x60]
	call	key_init
	mov	qword ptr [rsp + 0x60], -1
	mov	ebx, dword ptr [rsp + 0xc]
	movsxd	rdi, ebx
	mov	esi, 8
	call	xnmalloc
	mov	r15, rax
	cmp	qword ptr [rsp + 0x58], 0
	sete	byte ptr [rsp + 0x1e]
	mov	eax, 0
	mov	qword ptr [rsp + 0x50], rax
	mov	r12d, 0
	xor	eax, eax
	mov	qword ptr [rsp + 0x48], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x40], rax
	xor	r13d, r13d
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	xor	edx, edx
	mov	rbp, qword ptr [rsp + 0x10]
	jmp	.label_1043
	.section	.text
	.align	16
	#Procedure 0x40d2ea
	.globl sub_40d2ea
	.type sub_40d2ea, @function
sub_40d2ea:

	nop	word ptr [rax + rax]
.label_997:
	mov	r13b, cl
	mov	edx, eax
.label_1043:
	mov	dword ptr [rsp + 0xb0], 0xffffffff
	cmp	edx, -1
	je	.label_1060
	cmp	qword ptr [rsp + 0x58], 0
	je	.label_1068
	test	r12, r12
	je	.label_1068
	mov	eax, dword ptr [rsp + 0x2c]
	test	al, 1
	je	.label_1072
	mov	rax, qword ptr [rsp + 0x20]
	test	al, al
	jne	.label_1072
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	cmp	eax, ebx
	je	.label_1072
	mov	rcx, qword ptr [rbp + rax*8]
	cmp	byte ptr [rcx], 0x2d
	jne	.label_1072
	cmp	byte ptr [rcx + 1], 0x6f
	jne	.label_1072
	inc	eax
	cmp	eax, ebx
	jne	.label_1068
	mov	al, byte ptr [rcx + 2]
	test	al, al
	je	.label_1072
	nop	word ptr [rax + rax]
.label_1068:
	mov	edx, OFFSET FLAT:short_options
	mov	ecx, OFFSET FLAT:long_options
	mov	edi, ebx
	mov	rsi, rbp
	lea	r8, [rsp + 0xb0]
	call	getopt_long
	mov	ebx, dword ptr [rsp + 0xc]
	mov	rbp, qword ptr [rsp + 0x10]
	mov	r14d, eax
	lea	esi, [r14 + 0x83]
	cmp	esi, 0x10a
	ja	.label_1099
	mov	eax, 0x6d
	mov	cl, 1
	mov	edx, 0xffffffff
	jmp	qword ptr [word ptr [+ (rsi * 8) + label_1113]]
.label_1697:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	cmp	byte ptr [rax], 0x2b
	jne	.label_1069
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	cmp	eax, ebx
	je	.label_1119
	mov	rax, qword ptr [rbp + rax*8]
	cmp	byte ptr [rax], 0x2d
	jne	.label_1119
	movsx	eax, byte ptr [rax + 1]
	add	eax, -0x30
	cmp	eax, 0xa
	setb	dl
	jmp	.label_1125
	.section	.text
	.align	16
	#Procedure 0x40d3fd
	.globl sub_40d3fd
	.type sub_40d3fd, @function
sub_40d3fd:

	nop	dword ptr [rax]
.label_1060:
	mov	edx, 0xffffffff
.label_1072:
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	cmp	eax, ebx
	jge	.label_996
	lea	ecx, [rax + 1]
	mov	dword ptr [dword ptr [rip + optind]],  ecx
	mov	rax, qword ptr [rbp + rax*8]
	mov	qword ptr [r15 + r12*8], rax
	inc	r12
	mov	ecx, r13d
	mov	eax, edx
	jmp	.label_997
.label_1707:
	mov	byte ptr [byte ptr [rip + eolchar]],  1
	mov	eax, 0x7a
	jmp	.label_1005
.label_1710:
	mov	byte ptr [byte ptr [rip + debug]],  1
	mov	eax, 0x82
	jmp	.label_1005
.label_1700:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	call	add_temp_dir
	mov	ebx, dword ptr [rsp + 0xc]
	mov	rbp, qword ptr [rsp + 0x10]
	mov	eax, 0x54
	jmp	.label_1005
.label_1701:
	lea	rdi, [rsp + 0x1d0]
	call	key_init
	mov	r14, rax
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	mov	edx, OFFSET FLAT:label_1026
	mov	rsi, r14
	call	parse_field_count
	mov	rcx, qword ptr [r14]
	lea	rdx, [rcx - 1]
	mov	qword ptr [r14], rdx
	test	rcx, rcx
	je	.label_1037
	cmp	byte ptr [rax], 0x2e
	jne	.label_995
	inc	rax
	lea	rsi, [r14 + 8]
	mov	edx, OFFSET FLAT:label_1045
	mov	rdi, rax
	call	parse_field_count
	mov	rcx, qword ptr [r14 + 8]
	lea	rdx, [rcx - 1]
	mov	qword ptr [r14 + 8], rdx
	test	rcx, rcx
	je	.label_1049
.label_995:
	cmp	qword ptr [r14], 0
	jne	.label_1055
	cmp	qword ptr [r14 + 8], 0
	jne	.label_1055
	mov	qword ptr [r14], -1
.label_1055:
	xor	edx, edx
	mov	rdi, rax
	mov	rsi, r14
	call	set_ordering
	cmp	byte ptr [rax], 0x2c
	jne	.label_1130
	inc	rax
	lea	rsi, [r14 + 0x10]
	mov	edx, OFFSET FLAT:label_1064
	mov	rdi, rax
	call	parse_field_count
	mov	rcx, qword ptr [r14 + 0x10]
	lea	rdx, [rcx - 1]
	mov	qword ptr [r14 + 0x10], rdx
	test	rcx, rcx
	je	.label_1037
	cmp	byte ptr [rax], 0x2e
	jne	.label_1076
	inc	rax
	mov	rsi, r14
	add	rsi, 0x18
	mov	edx, OFFSET FLAT:label_1045
	mov	rdi, rax
	call	parse_field_count
.label_1076:
	mov	edx, 1
	mov	rdi, rax
	mov	rsi, r14
	call	set_ordering
	jmp	.label_1084
.label_1703:
	mov	byte ptr [byte ptr [rip + stable]],  1
	mov	eax, 0x73
	jmp	.label_1005
.label_1709:
	mov	rdi,  qword ptr [word ptr [rip + compress_program]]
	test	rdi, rdi
	je	.label_1091
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	call	strcmp
	mov	ebx, dword ptr [rsp + 0xc]
	mov	rbp, qword ptr [rsp + 0x10]
	test	eax, eax
	jne	.label_1098
.label_1091:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [word ptr [rip + compress_program]],  rax
	mov	eax, 0x81
	jmp	.label_1005
.label_1714:
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	mov	edi, OFFSET FLAT:label_1114
	mov	edx, OFFSET FLAT:sort_args
	mov	ecx, OFFSET FLAT:sort_types
	mov	r8d, 1
	call	__xargmatch_internal
	movsx	r14d,  byte ptr [byte ptr [rax + sort_types]]
.label_1698:
	mov	byte ptr [rsp + 0x2a], r14b
	mov	byte ptr [rsp + 0x2b], 0
	lea	rdi, [rsp + 0x2a]
	lea	rsi, [rsp + 0x60]
	mov	edx, 2
	call	set_ordering
	mov	ebx, dword ptr [rsp + 0xc]
	mov	rbp, qword ptr [rsp + 0x10]
.label_1070:
	mov	ecx, r13d
	mov	eax, r14d
	jmp	.label_997
.label_1699:
	mov	edi, dword ptr [rsp + 0xb0]
	mov	rdx,  qword ptr [word ptr [rip + optarg]]
	movsx	esi, r14b
	call	specify_sort_size
	mov	ebx, dword ptr [rsp + 0xc]
	mov	rbp, qword ptr [rsp + 0x10]
	mov	eax, 0x53
	jmp	.label_1005
.label_1702:
	mov	rdi, qword ptr [rsp + 0x30]
	test	rdi, rdi
	je	.label_1011
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	call	strcmp
	mov	ebx, dword ptr [rsp + 0xc]
	mov	rbp, qword ptr [rsp + 0x10]
	test	eax, eax
	jne	.label_1016
.label_1011:
	mov	eax, 0x6f
	mov	rcx,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [rsp + 0x30], rcx
	jmp	.label_1005
.label_1704:
	mov	rcx,  qword ptr [word ptr [rip + optarg]]
	mov	al, byte ptr [rcx]
	test	al, al
	je	.label_1024
	mov	dl, byte ptr [rcx + 1]
	test	dl, dl
	je	.label_1079
	cmp	al, 0x5c
	jne	.label_1035
	cmp	dl, 0x30
	jne	.label_1035
	cmp	byte ptr [rcx + 2], 0
	jne	.label_1035
	xor	eax, eax
.label_1079:
	mov	ecx,  dword ptr [dword ptr [rip + tab]]
	cmp	ecx, 0x80
	movsx	eax, al
	je	.label_1044
	cmp	ecx, eax
	jne	.label_1047
.label_1044:
	mov	dword ptr [dword ptr [rip + tab]],  eax
	mov	eax, 0x74
	jmp	.label_1005
.label_1706:
	mov	rcx,  qword ptr [word ptr [rip + optarg]]
	movsxd	rdx,  dword ptr [dword ptr [rip + optind]]
	mov	eax, 0x79
	cmp	rcx, qword ptr [rbp + rdx*8 - 8]
	jne	.label_1005
	nop	word ptr cs:[rax + rax]
.label_1063:
	movsx	eax, byte ptr [rcx]
	lea	edx, [rax - 0x30]
	inc	rcx
	cmp	edx, 0xa
	jb	.label_1063
	cmp	al, 1
	adc	dword ptr [dword ptr [rip + optind]],  -1
	jmp	.label_1070
.label_1711:
	mov	eax, 0x83
	mov	rcx,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [rsp + 0x50], rcx
	jmp	.label_1005
.label_1715:
	mov	edi, dword ptr [rsp + 0xb0]
	mov	rdx,  qword ptr [word ptr [rip + optarg]]
	movsx	esi, r14b
	call	specify_nthreads
	mov	ebx, dword ptr [rsp + 0xc]
	mov	rbp, qword ptr [rsp + 0x10]
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 0x87
	jmp	.label_1005
.label_1705:
	mov	byte ptr [byte ptr [rip + unique]],  1
	mov	eax, 0x75
	jmp	.label_1005
.label_1708:
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	mov	r14d, 0x63
	test	rsi, rsi
	je	.label_1092
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	mov	edi, OFFSET FLAT:label_1097
	mov	edx, OFFSET FLAT:check_args
	mov	ecx, OFFSET FLAT:check_types
	mov	r8d, 1
	call	__xargmatch_internal
	mov	ebx, dword ptr [rsp + 0xc]
	mov	rbp, qword ptr [rsp + 0x10]
	movsx	r14d,  byte ptr [byte ptr [rax + check_types]]
.label_1092:
	mov	rax, qword ptr [rsp + 0x20]
	test	al, al
	je	.label_1115
	movsx	eax, al
	cmp	eax, r14d
	jne	.label_1116
.label_1115:
	mov	ecx, r13d
	mov	al, r14b
	mov	qword ptr [rsp + 0x20], rax
	mov	eax, r14d
	jmp	.label_997
.label_1712:
	mov	edi, dword ptr [rsp + 0xb0]
	mov	rdx,  qword ptr [word ptr [rip + optarg]]
	movsx	esi, r14b
	call	specify_nmerge
	mov	ebx, dword ptr [rsp + 0xc]
	mov	rbp, qword ptr [rsp + 0x10]
	mov	eax, 0x84
	jmp	.label_1005
.label_1713:
	mov	rdi, qword ptr [rsp + 0x40]
	test	rdi, rdi
	je	.label_1003
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	call	strcmp
	mov	ebx, dword ptr [rsp + 0xc]
	mov	rbp, qword ptr [rsp + 0x10]
	test	eax, eax
	jne	.label_1002
.label_1003:
	mov	eax, 0x85
	mov	rcx,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [rsp + 0x40], rcx
.label_1005:
	mov	ecx, r13d
	jmp	.label_997
.label_1130:
	mov	qword ptr [r14 + 0x10], -1
	mov	qword ptr [r14 + 0x18], 0
.label_1084:
	cmp	byte ptr [rax], 0
	jne	.label_1127
	mov	rdi, r14
	call	insertkey
	mov	eax, 0x6b
	mov	ecx, r13d
.label_1121:
	mov	rbp, qword ptr [rsp + 0x10]
	mov	ebx, dword ptr [rsp + 0xc]
	jmp	.label_997
.label_1119:
	xor	edx, edx
.label_1125:
	mov	eax, edx
	and	al, byte ptr [rsp + 0x1e]
	mov	ecx, dword ptr [rsp + 0x2c]
	and	cl, 1
	or	cl, al
	mov	dword ptr [rsp + 0x2c], ecx
	je	.label_1025
	mov	dword ptr [rsp + 0x38], edx
	lea	rdi, [rsp + 0x1d0]
	call	key_init
	mov	rbx, rax
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	inc	rdi
	xor	ebp, ebp
	xor	edx, edx
	mov	rsi, rbx
	call	parse_field_count
	test	rax, rax
	je	.label_1041
	cmp	byte ptr [rax], 0x2e
	mov	rbp, rax
	jne	.label_1041
	inc	rax
	lea	rsi, [rbx + 8]
	xor	edx, edx
	mov	rdi, rax
	call	parse_field_count
	mov	rbp, rax
.label_1041:
	cmp	qword ptr [rbx], 0
	jne	.label_1057
	cmp	qword ptr [rbx + 8], 0
	jne	.label_1057
	mov	qword ptr [rbx], -1
.label_1057:
	test	rbp, rbp
	je	.label_1061
	xor	edx, edx
	mov	rdi, rbp
	mov	rsi, rbx
	call	set_ordering
	cmp	byte ptr [rax], 0
	je	.label_1067
.label_1061:
	mov	rbp, qword ptr [rsp + 0x10]
	mov	ebx, dword ptr [rsp + 0xc]
	jmp	.label_1069
.label_1025:
	mov	dword ptr [rsp + 0x2c], 0
.label_1069:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [r15 + r12*8], rax
	inc	r12
	jmp	.label_1070
.label_1067:
	mov	eax, dword ptr [rsp + 0x38]
	test	al, al
	je	.label_1050
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	lea	ecx, [rax + 1]
	mov	dword ptr [dword ptr [rip + optind]],  ecx
	mov	rcx, qword ptr [rsp + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rsp + 0x38], rax
	lea	rdi, [rax + 1]
	lea	rsi, [rbx + 0x10]
	mov	edx, OFFSET FLAT:label_1080
	mov	rbp, rsi
	call	parse_field_count
	test	rax, rax
	je	.label_1006
	cmp	byte ptr [rax], 0x2e
	jne	.label_1093
	inc	rax
	mov	rsi, rbx
	add	rsi, 0x18
	mov	edx, OFFSET FLAT:label_1045
	mov	rdi, rax
	call	parse_field_count
.label_1093:
	cmp	qword ptr [rbx + 0x18], 0
	jne	.label_1028
	mov	rcx, qword ptr [rbp]
	test	rcx, rcx
	je	.label_1028
	dec	rcx
	mov	qword ptr [rbp], rcx
.label_1028:
	mov	edx, 1
	mov	rdi, rax
	mov	rsi, rbx
	call	set_ordering
	cmp	byte ptr [rax], 0
	jne	.label_1053
.label_1050:
	mov	byte ptr [rbx + 0x39], 1
	mov	rdi, rbx
	call	insertkey
	mov	ecx, r13d
	mov	eax, r14d
	jmp	.label_1121
.label_996:
	mov	rbx, qword ptr [rsp + 0x50]
	test	rbx, rbx
	je	.label_1078
	mov	r14, qword ptr [rsp + 0x20]
	test	r12, r12
	jne	.label_1126
	mov	esi, OFFSET FLAT:label_96
	mov	rdi, rbx
	call	xfopen
	mov	r12, rbx
	mov	rbx, rax
	lea	rbp, [rsp + 0xb0]
	mov	rdi, rbp
	call	readtokens0_init
	mov	rdi, rbx
	mov	rsi, rbp
	call	readtokens0
	test	al, al
	je	.label_1058
	mov	rdi, rbx
	mov	rsi, r12
	call	xfclose
	cmp	qword ptr [rsp + 0xb0], 0
	mov	rbx, r12
	je	.label_1088
	mov	rdi, r15
	call	free
	mov	r12, qword ptr [rsp + 0xb0]
	mov	r15, qword ptr [rsp + 0xb8]
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_1030:
	cmp	rbp, r12
	jae	.label_1023
	mov	rax, qword ptr [r15 + rbp*8]
	cmp	byte ptr [rax], 0x2d
	jne	.label_1048
	cmp	byte ptr [rax + 1], 0
	je	.label_1103
.label_1048:
	mov	rax, qword ptr [r15 + rbp*8]
	inc	rbp
	cmp	byte ptr [rax], 0
	jne	.label_1030
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1036
	mov	edx, 5
	call	dcgettext
	mov	rdx, rbx
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 2
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	mov	r8, rbp
	call	error
.label_1078:
	mov	r14, qword ptr [rsp + 0x20]
.label_1023:
	mov	qword ptr [rsp + 0x20], r14
	mov	rbp,  qword ptr [word ptr [rip + keylist]]
	xor	ebx, ebx
	test	rbp, rbp
	je	.label_1052
	nop	word ptr [rax + rax]
.label_1100:
	mov	rdi, rbp
	call	default_key_compare
	test	al, al
	je	.label_994
	cmp	byte ptr [rbp + 0x37], 0
	jne	.label_994
	mov	rax, qword ptr [rsp + 0x80]
	mov	qword ptr [rbp + 0x20], rax
	mov	rax, qword ptr [rsp + 0x88]
	mov	qword ptr [rbp + 0x28], rax
	movzx	eax, byte ptr [rsp + 0x90]
	mov	byte ptr [rbp + 0x30], al
	movzx	eax, byte ptr [rsp + 0x91]
	mov	byte ptr [rbp + 0x31], al
	movzx	eax, byte ptr [rsp + 0x96]
	mov	byte ptr [rbp + 0x36], al
	movzx	eax, byte ptr [rsp + 0x92]
	mov	byte ptr [rbp + 0x32], al
	movzx	eax, byte ptr [rsp + 0x94]
	mov	byte ptr [rbp + 0x34], al
	movzx	eax, byte ptr [rsp + 0x95]
	mov	byte ptr [rbp + 0x35], al
	movzx	eax, byte ptr [rsp + 0x98]
	mov	byte ptr [rbp + 0x38], al
	movzx	eax, byte ptr [rsp + 0x93]
	mov	byte ptr [rbp + 0x33], al
	movzx	eax, byte ptr [rsp + 0x97]
	mov	byte ptr [rbp + 0x37], al
	nop	word ptr cs:[rax + rax]
.label_994:
	or	bl, byte ptr [rbp + 0x33]
	mov	rbp, qword ptr [rbp + 0x40]
	test	rbp, rbp
	jne	.label_1100
	cmp	qword ptr [word ptr [rip + keylist]],  0
	je	.label_1052
	xor	r14d, r14d
	mov	rbp, qword ptr [rsp + 0x30]
	jmp	.label_1112
.label_1052:
	mov	rbp, qword ptr [rsp + 0x30]
	lea	rdi, [rsp + 0x60]
	call	default_key_compare
	test	al, al
	je	.label_1117
	xor	r14d, r14d
	jmp	.label_1112
.label_1117:
	lea	rdi, [rsp + 0x60]
	call	insertkey
	or	bl, byte ptr [rsp + 0x93]
	mov	r14b, 1
.label_1112:
	call	check_ordering_compatibility
	cmp	byte ptr [byte ptr [rip + debug]],  1
	jne	.label_1123
	test	rbp, rbp
	jne	.label_1128
	mov	rax, qword ptr [rsp + 0x20]
	test	al, al
	jne	.label_1128
	cmp	qword ptr [rsp + 0xa8], 0
	mov	al, byte ptr [rsp + 0x1f]
	je	.label_998
	mov	edi, 3
	mov	esi, OFFSET FLAT:label_166
	call	setlocale
	test	rax, rax
	setne	al
.label_998:
	test	al, al
	jne	.label_1027
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1073
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_1042
	xor	eax, eax
	call	error
.label_1027:
	cmp	byte ptr [byte ptr [rip + hard_LC_COLLATE]],  0
	je	.label_1129
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1021
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 3
	xor	esi, esi
	call	setlocale
	mov	rdi, rax
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	mov	rbp, qword ptr [rsp + 0x30]
	jmp	.label_1029
.label_1129:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1046
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_1042
	xor	eax, eax
.label_1029:
	call	error
	movzx	esi, r14b
	lea	rdi, [rsp + 0x60]
	call	key_warnings
.label_1123:
	mov	al, byte ptr [rsp + 0x97]
	mov	byte ptr [byte ptr [rip + reverse]],  al
	test	bl, 1
	je	.label_1051
	mov	rdi, qword ptr [rsp + 0x40]
	call	random_md5_state_init
.label_1051:
	cmp	qword ptr [word ptr [rip + temp_dir_count]],  0
	mov	rbx, qword ptr [rsp + 0x20]
	jne	.label_1089
	mov	edi, OFFSET FLAT:label_1111
	call	getenv
	test	rax, rax
	mov	edi, OFFSET FLAT:label_744
	cmovne	rdi, rax
	call	add_temp_dir
.label_1089:
	test	r12, r12
	jne	.label_1012
	mov	rdi, r15
	call	free
	mov	edi, 8
	call	xmalloc
	mov	r15, rax
	mov	qword ptr [word ptr [r15]], OFFSET FLAT:label_1071
	mov	r12d, 1
.label_1012:
	mov	rax,  qword ptr [word ptr [rip + sort_size]]
	test	rax, rax
	je	.label_1083
	mov	ecx,  dword ptr [dword ptr [rip + nmerge]]
	imul	rcx, rcx, 0x22
	cmp	rax, rcx
	cmova	rcx, rax
	mov	qword ptr [word ptr [rip + sort_size]],  rcx
.label_1083:
	test	bl, bl
	je	.label_1085
	cmp	r12, 2
	jae	.label_1000
	test	rbp, rbp
	jne	.label_1090
	mov	rdi, qword ptr [r15]
	movsx	esi, bl
	call	check
	movzx	ebx, al
	xor	ebx, 1
	jmp	.label_1004
.label_1085:
	mov	rdi, r15
	mov	rsi, r12
	call	check_inputs
	mov	rdi, rbp
	call	check_output
	test	r13b, 1
	jne	.label_1118
	movabs	rbp, 0xffffffffffffff
	mov	rcx, qword ptr [rsp + 0x48]
	test	rcx, rcx
	jne	.label_1120
	mov	edi, 2
	call	num_processors
	cmp	rax, 8
	mov	ecx, 8
	cmovb	rcx, rax
.label_1120:
	cmp	rcx, rbp
	cmovb	rbp, rcx
	mov	rdi, r15
	mov	rsi, r12
	mov	rdx, qword ptr [rsp + 0x30]
	mov	rcx, rbp
	call	sort
	jmp	.label_1124
.label_1118:
	mov	esi, 0x10
	mov	rdi, r12
	call	xcalloc
	test	r12, r12
	je	.label_1034
	xor	ecx, ecx
	mov	rdx, rax
	nop	
.label_1065:
	mov	rsi, qword ptr [r15 + rcx*8]
	mov	qword ptr [rdx], rsi
	inc	rcx
	add	rdx, 0x10
	cmp	rcx, r12
	jb	.label_1065
.label_1034:
	xor	esi, esi
	mov	rdi, rax
	mov	rdx, r12
	mov	rcx, rbp
	call	merge
.label_1124:
	xor	ebx, ebx
	cmp	byte ptr [byte ptr [rip + have_read_stdin]],  1
	jne	.label_1004
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	call	rpl_fclose
	cmp	eax, -1
	je	.label_1010
.label_1004:
	mov	eax, ebx
	add	rsp, 0x218
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1103:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1018
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi, qword ptr [r15 + rbp*8]
.label_1122:
	mov	edi, 4
.label_1040:
	call	quotearg_style
.label_1102:
	mov	rcx, rax
	mov	edi, 2
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_1695:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	qword ptr [rsp], 0
	mov	esi, OFFSET FLAT:label_162
	mov	edx, OFFSET FLAT:label_160
	mov	r8d, OFFSET FLAT:label_1032
	mov	r9d, OFFSET FLAT:label_1033
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_1696:
	xor	edi, edi
	call	usage
.label_1099:
	mov	edi, 2
	call	usage
.label_1116:
	mov	edi, OFFSET FLAT:label_1054
	call	incompatible_options
.label_1037:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	mov	esi, OFFSET FLAT:label_1056
	call	badfieldspec
.label_1126:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1059
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi, qword ptr [r15]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1074
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_879
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	edi, 2
	call	usage
.label_1058:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1086
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r12
	jmp	.label_1040
.label_1088:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1094
	mov	edx, 5
	call	dcgettext
	mov	rsi, rbx
	mov	rbx, rax
	jmp	.label_1122
.label_1000:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1001
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rsi, qword ptr [r15 + 8]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	movsx	r8d, bl
	mov	edi, 2
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
.label_1090:
	mov	byte ptr [byte ptr [rip + main.opts.64]],  bl
	mov	edi, OFFSET FLAT:main.opts.64
	call	incompatible_options
.label_1035:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1087
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	call	quote
	jmp	.label_1102
.label_1128:
	mov	rax, qword ptr [rsp + 0x20]
	test	al, al
	jne	.label_999
	mov	al, 0x6f
	mov	qword ptr [rsp + 0x20], rax
.label_999:
	mov	rax, qword ptr [rsp + 0x20]
	mov	byte ptr [byte ptr [rip + main.opts]],  al
	mov	edi, OFFSET FLAT:main.opts
	call	incompatible_options
.label_1024:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1007
	jmp	.label_1008
.label_1047:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1009
	jmp	.label_1008
.label_1127:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	mov	esi, OFFSET FLAT:label_1014
	call	badfieldspec
.label_1098:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1017
	jmp	.label_1008
.label_1016:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1020
	jmp	.label_1008
.label_1002:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1019
.label_1008:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 2
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_1049:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	mov	esi, OFFSET FLAT:label_1031
	call	badfieldspec
.label_1010:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_126
	mov	edx, 5
	call	dcgettext
	mov	esi, OFFSET FLAT:label_1071
	mov	rdi, rax
	call	sort_die
.label_1006:
	mov	edi, OFFSET FLAT:label_1081
	mov	esi, OFFSET FLAT:label_278
	mov	edx, 0x1112
	mov	ecx, OFFSET FLAT:label_1082
	call	__assert_fail
.label_1053:
	mov	esi, OFFSET FLAT:label_1014
	mov	rdi, qword ptr [rsp + 0x38]
	call	badfieldspec
	.section	.text
	.align	16
	#Procedure 0x40e0e0

	.globl reap_all
	.type reap_all, @function
reap_all:
	push	rax
	jmp	.label_1131
	.section	.text
	.align	16
	#Procedure 0x40e0e3
	.globl sub_40e0e3
	.type sub_40e0e3, @function
sub_40e0e3:

	nop	word ptr cs:[rax + rax]
.label_1132:
	mov	edi, 0xffffffff
	call	reap
.label_1131:
	cmp	dword ptr [dword ptr [rip + nprocs]],  0
	jg	.label_1132
	pop	rax
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e105
	.globl sub_40e105
	.type sub_40e105, @function
sub_40e105:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e110

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_878
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_1042
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40e140
	.globl c_islower
	.type c_islower, @function
c_islower:

	add	edi, -0x61
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e14a
	.globl sub_40e14a
	.type sub_40e14a, @function
sub_40e14a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e150

	.globl async_safe_die
	.type async_safe_die, @function
async_safe_die:
	push	rbp
	push	rbx
	sub	rsp, 0x18
	mov	rbx, rsi
	mov	ebp, edi
	mov	rdi, rbx
	call	strlen
	mov	edi, 2
	mov	rsi, rbx
	mov	rdx, rax
	call	write
	test	ebp, ebp
	je	.label_1134
	lea	rsi, [rsp + 0xc]
	mov	edi, ebp
	call	inttostr
	mov	rbx, rax
	mov	edi, 2
	mov	esi, OFFSET FLAT:label_1135
	mov	edx, 8
	call	write
	mov	rdi, rbx
	call	strlen
	mov	edi, 2
	mov	rsi, rbx
	mov	rdx, rax
	call	write
.label_1134:
	mov	edi, 2
	mov	esi, OFFSET FLAT:label_1133
	mov	edx, 1
	call	write
	mov	edi, 2
	call	_exit
	.section	.text
	.align	16
	#Procedure 0x40e1d0

	.globl select_plural
	.type select_plural, @function
select_plural:
	mov	rax, rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e1d4
	.globl sub_40e1d4
	.type sub_40e1d4, @function
sub_40e1d4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e1e0

	.globl nan_compare
	.type nan_compare, @function
nan_compare:
	push	rbx
	sub	rsp, 0x20
	mov	rbx, rsi
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	xor	esi, esi
	call	strtold
	fstp	xword ptr [rsp + 0x10]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp], xmm0
	xor	esi, esi
	mov	rdi, rbx
	call	strtold
	fstp	xword ptr [rsp]
	lea	rdi, [rsp + 0x10]
	lea	rsi, [rsp]
	mov	edx, 0x10
	call	memcmp
	add	rsp, 0x20
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e228
	.globl sub_40e228
	.type sub_40e228, @function
sub_40e228:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e230

	.globl numcompare
	.type numcompare, @function
numcompare:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	dec	rbx
	nop	dword ptr [rax]
.label_1136:
	movsx	edi, byte ptr [rbx + 1]
	inc	rbx
	call	to_uchar
	movzx	eax, al
	cmp	byte ptr [byte ptr [rax + blanks]],  0
	jne	.label_1136
	dec	r14
	nop	dword ptr [rax + rax]
.label_1137:
	movsx	edi, byte ptr [r14 + 1]
	inc	r14
	call	to_uchar
	movzx	eax, al
	cmp	byte ptr [byte ptr [rax + blanks]],  0
	jne	.label_1137
	mov	edx,  dword ptr [dword ptr [rip + decimal_point]]
	mov	ecx,  dword ptr [dword ptr [rip + thousands_sep]]
	mov	rdi, rbx
	mov	rsi, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	strnumcmp
	.section	.text
	.align	16
	#Procedure 0x40e297
	.globl sub_40e297
	.type sub_40e297, @function
sub_40e297:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e2a0

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
	mov	rbx, r8
	mov	r12, rsi
	mov	r15, rdi
	test	rdx, rdx
	mov	ebp, OFFSET FLAT:raw_hasher
	cmovne	rbp, rdx
	test	rcx, rcx
	mov	r14d, OFFSET FLAT:raw_comparator
	cmovne	r14, rcx
	mov	edi, 0x50
	call	malloc
	mov	r13, rax
	xor	eax, eax
	test	r13, r13
	je	.label_1139
	mov	qword ptr [rsp], rbx
	test	r12, r12
	mov	ebx, OFFSET FLAT:default_tuning
	cmovne	rbx, r12
	mov	qword ptr [r13 + 0x28], rbx
	mov	rdi, r13
	call	check_tuning
	test	al, al
	je	.label_1138
	mov	rdi, r15
	mov	rsi, rbx
	call	compute_bucket_size
	mov	qword ptr [r13 + 0x10], rax
	test	rax, rax
	je	.label_1138
	mov	esi, 0x10
	mov	rdi, rax
	call	rpl_calloc
	mov	qword ptr [r13], rax
	test	rax, rax
	je	.label_1138
	mov	rcx, qword ptr [r13 + 0x10]
	shl	rcx, 4
	add	rax, rcx
	mov	qword ptr [r13 + 8], rax
	xorps	xmm0, xmm0
	movups	xmmword ptr [r13 + 0x18], xmm0
	mov	qword ptr [r13 + 0x30], rbp
	mov	qword ptr [r13 + 0x38], r14
	mov	rax, qword ptr [rsp]
	mov	qword ptr [r13 + 0x40], rax
	mov	qword ptr [r13 + 0x48], 0
	mov	rax, r13
	jmp	.label_1139
.label_1138:
	mov	rdi, r13
	call	free
	xor	eax, eax
.label_1139:
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
	#Procedure 0x40e37c
	.globl sub_40e37c
	.type sub_40e37c, @function
sub_40e37c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40e380
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	lea	ecx, [rdi - 0x61]
	lea	eax, [rdi - 0x20]
	cmp	ecx, 0x1a
	cmovae	eax, edi
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e38d
	.globl sub_40e38d
	.type sub_40e38d, @function
sub_40e38d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40e390

	.globl c_isupper
	.type c_isupper, @function
c_isupper:
	add	edi, -0x41
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e39a
	.globl sub_40e39a
	.type sub_40e39a, @function
sub_40e39a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e3a0

	.globl allocate_entry
	.type allocate_entry, @function
allocate_entry:
	mov	rax, qword ptr [rdi + 0x48]
	test	rax, rax
	je	.label_1140
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rdi + 0x48], rcx
	ret	
.label_1140:
	push	rax
	mov	edi, 0x10
	call	malloc
	add	rsp, 8
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e3c2
	.globl sub_40e3c2
	.type sub_40e3c2, @function
sub_40e3c2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e3d0

	.globl check_tuning
	.type check_tuning, @function
check_tuning:
	mov	rcx, qword ptr [rdi + 0x28]
	mov	edx, OFFSET FLAT:default_tuning
	mov	al, 1
	cmp	rcx, rdx
	je	.label_1141
	movss	xmm0, dword ptr [rcx + 8]
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_1142]]
	jbe	.label_1143
	movss	xmm1,  dword ptr [dword ptr [rip + label_1146]]
	ucomiss	xmm1, xmm0
	jbe	.label_1143
	movss	xmm1, dword ptr [rcx + 0xc]
	ucomiss	xmm1,  dword ptr [dword ptr [rip + label_1145]]
	jbe	.label_1143
	movss	xmm1, dword ptr [rcx]
	xorps	xmm2, xmm2
	ucomiss	xmm1, xmm2
	jb	.label_1143
	addss	xmm1,  dword ptr [dword ptr [rip + label_1142]]
	ucomiss	xmm0, xmm1
	jbe	.label_1143
	movss	xmm0, dword ptr [rcx + 4]
	movss	xmm2,  dword ptr [dword ptr [rip + label_1144]]
	ucomiss	xmm2, xmm0
	jb	.label_1143
	ucomiss	xmm0, xmm1
	ja	.label_1141
.label_1143:
	mov	qword ptr [word ptr [rdi + 40]], OFFSET FLAT:default_tuning
	xor	eax, eax
.label_1141:
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e444
	.globl sub_40e444
	.type sub_40e444, @function
sub_40e444:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e450

	.globl quotearg_n_style
	.type quotearg_n_style, @function
quotearg_n_style:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x40
	mov	rbx, rdx
	mov	ebp, edi
	lea	r14, [rsp + 8]
	mov	rdi, r14
	call	quoting_options_from_style
	mov	rdx, -1
	mov	edi, ebp
	mov	rsi, rbx
	mov	rcx, r14
	call	quotearg_n_options
	add	rsp, 0x40
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e487
	.globl sub_40e487
	.type sub_40e487, @function
sub_40e487:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e490

	.globl exit_cleanup
	.type exit_cleanup, @function
exit_cleanup:
	push	rbx
	sub	rsp, 0x90
	cmp	qword ptr [word ptr [rip + temphead]],  0
	je	.label_1147
	lea	rbx, [rsp + 8]
	mov	rdi, rbx
	call	cs_enter
	call	cleanup
	mov	rdi, rbx
	call	cs_leave
.label_1147:
	call	close_stdout
	add	rsp, 0x90
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e4ca
	.globl sub_40e4ca
	.type sub_40e4ca, @function
sub_40e4ca:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e4d0

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
	mov	qword ptr [rsp + 0xb0], rax
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
	mov	qword ptr [rsp + 0x60], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x38], rax
	mov	eax, 0
	xor	r9d, r9d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xa0], rcx
.label_1232:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_1205
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_1239]]
.label_1606:
	mov	r14d, r10d
	mov	edi, OFFSET FLAT:label_1243
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_61
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10d, r14d
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_1607:
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_1255
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_1255
	xor	r14d, r14d
.label_1153:
	cmp	r14, r11
	jae	.label_1148
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_1148:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_1153
.label_1255:
	mov	rbp, qword ptr [rsp + 0x70]
	mov	rdi, rbp
	mov	rbx, r11
	call	strlen
	mov	r11, rbx
	mov	qword ptr [rsp + 0x38], rax
	mov	edi, r15d
	mov	qword ptr [rsp + 0x40], rbp
	mov	r13b, 1
	mov	sil, r12b
	mov	r8, qword ptr [rsp + 0x30]
	mov	r10b, byte ptr [rsp + 0x17]
	mov	r9d, dword ptr [rsp + 0x48]
	jmp	.label_1161
.label_1599:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_1161
.label_1602:
	mov	al, 1
.label_1600:
	mov	r12b, 1
.label_1603:
	test	r12b, 1
	mov	cl, 1
	je	.label_1176
	mov	ecx, eax
.label_1176:
	mov	al, cl
.label_1601:
	test	r12b, 1
	jne	.label_1180
	test	r11, r11
	je	.label_1245
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_1245:
	mov	r14d, 1
	jmp	.label_1186
.label_1180:
	xor	r14d, r14d
.label_1186:
	mov	ecx, OFFSET FLAT:label_61
	mov	qword ptr [rsp + 0x40], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x38], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_1161
.label_1604:
	test	r12b, 1
	jne	.label_1197
	test	r11, r11
	je	.label_1172
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_1172:
	mov	r14d, 1
	jmp	.label_1202
.label_1605:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_60
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	sil, 1
	jmp	.label_1161
.label_1197:
	xor	r14d, r14d
.label_1202:
	mov	eax, OFFSET FLAT:label_60
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_1161:
	cmp	qword ptr [rsp + 0xf0], 0
	setne	r12b
	cmp	edi, 2
	setne	r15b
	sete	bl
	mov	ecx, r13d
	and	cl, 1
	sete	byte ptr [rsp + 0x2b]
	mov	eax, r15d
	mov	byte ptr [rsp + 0x1e], cl
	and	al, cl
	cmp	qword ptr [rsp + 0x38], 0
	setne	cl
	mov	edx, ecx
	mov	byte ptr [rsp + 0x2e], al
	and	dl, al
	mov	byte ptr [rsp + 0x2f], dl
	mov	eax, esi
	and	al, 1
	sete	dl
	and	bl, al
	mov	byte ptr [rsp + 0x2c], bl
	mov	byte ptr [rsp + 7], al
	and	r12b, al
	mov	byte ptr [rsp + 0x2d], r12b
	or	dl, r15b
	mov	byte ptr [rsp + 0x1f], dl
	mov	byte ptr [rsp + 0x1d], r13b
	mov	qword ptr [rsp + 0xa8], rsi
	and	r13b, sil
	and	r13b, cl
	mov	byte ptr [rsp + 0x2a], r13b
	xor	esi, esi
	mov	qword ptr [rsp + 0x68], rdi
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r12, rdi
	mov	rdi, r8
	jmp	.label_1215
	.section	.text
	.align	16
	#Procedure 0x40e7ac
	.globl sub_40e7ac
	.type sub_40e7ac, @function
sub_40e7ac:

	nop	dword ptr [rax]
.label_1158:
	inc	rsi
.label_1215:
	cmp	rbp, -1
	je	.label_1248
	cmp	rsi, rbp
	jne	.label_1169
	jmp	.label_1252
	.section	.text
	.align	16
	#Procedure 0x40e7c3
	.globl sub_40e7c3
	.type sub_40e7c3, @function
sub_40e7c3:

	nop	word ptr cs:[rax + rax]
.label_1248:
	cmp	byte ptr [rdi + rsi], 0
	je	.label_1252
.label_1169:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_1256
	mov	rax, qword ptr [rsp + 0x38]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_1244
	cmp	rbp, -1
	jne	.label_1244
	mov	r15d, r10d
	mov	rbp, r11
	mov	r13d, r9d
	mov	r12, r14
	mov	r14, rsi
	call	strlen
	mov	rsi, r14
	mov	r14, r12
	mov	r9d, r13d
	mov	r12, qword ptr [rsp + 0x68]
	mov	r10d, r15d
	mov	r11, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_1244:
	cmp	rbx, rbp
	jbe	.label_1160
.label_1256:
	xor	r8d, r8d
.label_1187:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_1162
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_1165]]
.label_1619:
	test	rsi, rsi
	jne	.label_1156
	jmp	.label_1170
	.section	.text
	.align	16
	#Procedure 0x40e85e
	.globl sub_40e85e
	.type sub_40e85e, @function
sub_40e85e:

	nop	
.label_1160:
	mov	qword ptr [rsp + 0x20], rbp
	mov	ebp, r9d
	mov	r15d, r10d
	mov	rbx, r11
	mov	r12, rsi
	lea	rdi, [rdi + rsi]
	mov	rsi, qword ptr [rsp + 0x40]
	mov	rdx, qword ptr [rsp + 0x38]
	call	memcmp
	test	eax, eax
	sete	r8b
	jne	.label_1184
	cmp	byte ptr [rsp + 7], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_1187
	jmp	.label_1198
.label_1184:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_1187
.label_1623:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_1206
	test	rsi, rsi
	jne	.label_1208
	cmp	rbp, 1
	je	.label_1170
	xor	r13d, r13d
	jmp	.label_1166
.label_1612:
	cmp	byte ptr [rsp + 0x1e], 0
	je	.label_1214
	cmp	byte ptr [rsp + 7], 0
	jne	.label_1150
	cmp	r12d, 2
	jne	.label_1200
	mov	eax, r9d
	and	al, 1
	jne	.label_1200
	cmp	r14, r11
	jae	.label_1209
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_1209:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_1220
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_1220:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_1226
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_1226:
	add	r14, 3
	mov	r9b, 1
.label_1200:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_1167
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_1167:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_1233
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_1233
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_1233
	cmp	r14, r11
	jae	.label_1253
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_1253:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_1260
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_1260:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_1166
.label_1613:
	mov	bl, 0x62
	jmp	.label_1254
.label_1614:
	mov	cl, 0x74
	jmp	.label_1192
.label_1615:
	mov	bl, 0x76
	jmp	.label_1254
.label_1616:
	mov	bl, 0x66
	jmp	.label_1254
.label_1617:
	mov	cl, 0x72
	jmp	.label_1192
.label_1620:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_1259
	cmp	byte ptr [rsp + 7], 0
	jne	.label_1150
	test	r11, r11
	sete	al
	mov	rcx, qword ptr [rsp + 0x60]
	mov	rdx, rcx
	test	rdx, rdx
	setne	cl
	or	cl, al
	cmove	rdx, r11
	mov	qword ptr [rsp + 0x60], rdx
	mov	eax, 0
	cmove	r11, rax
	cmp	r14, r11
	jae	.label_1155
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_1155:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_1168
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_1168:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_1171
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_1171:
	add	r14, 3
	xor	r9d, r9d
.label_1259:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_1166
.label_1621:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_1183
	cmp	r12d, 2
	jne	.label_1156
	cmp	byte ptr [rsp + 7], 0
	je	.label_1156
	jmp	.label_1150
.label_1622:
	cmp	r12d, 2
	jne	.label_1193
	cmp	byte ptr [rsp + 7], 0
	jne	.label_1150
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_1159
.label_1162:
	mov	dword ptr [rsp + 0x4c], r8d
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xb0], 1
	jne	.label_1194
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
.label_1203:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2b]
	mov	qword ptr [rsp + 0x58], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 0x17]
	mov	r12, qword ptr [rsp + 0x68]
	mov	r9d, dword ptr [rsp + 0x48]
	ja	.label_1188
	test	r8b, r8b
	je	.label_1188
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x4c]
	jmp	.label_1166
.label_1206:
	test	rsi, rsi
	jne	.label_1231
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_1231
.label_1170:
	mov	dl, 1
.label_1618:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_1150
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_1166:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_1240
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_1241
	jmp	.label_1149
	.section	.text
	.align	16
	#Procedure 0x40eba4
	.globl sub_40eba4
	.type sub_40eba4, @function
sub_40eba4:

	nop	word ptr cs:[rax + rax]
.label_1240:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_1149
.label_1241:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_1249
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_1159
	jmp	.label_1258
	.section	.text
	.align	16
	#Procedure 0x40ebed
	.globl sub_40ebed
	.type sub_40ebed, @function
sub_40ebed:

	nop	dword ptr [rax]
.label_1149:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_1258
	jmp	.label_1159
.label_1249:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_1258
.label_1214:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_1158
	xor	r15d, r15d
	jmp	.label_1156
.label_1193:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x2a], 0
	je	.label_1192
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_1159
.label_1192:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_1150
.label_1254:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1e], 0
	mov	r13d, 0
	je	.label_1166
	nop	word ptr cs:[rax + rax]
.label_1258:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_1150
	cmp	r12d, 2
	jne	.label_1177
	mov	eax, r9d
	and	al, 1
	jne	.label_1177
	cmp	r14, r11
	jae	.label_1181
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_1181:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_1223
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_1223:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_1190
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_1190:
	add	r14, 3
	mov	r9b, 1
.label_1177:
	cmp	r14, r11
	jae	.label_1196
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_1196:
	inc	r14
	jmp	.label_1178
.label_1194:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_1204
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_1204:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x58], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x50], rsi
.label_1211:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_1219
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_1222
	cmp	rbp, -2
	je	.label_1227
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2c]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_1229
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_1154:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_1224
	bt	rsi, rdx
	jb	.label_1198
.label_1224:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_1154
.label_1229:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_1251
	xor	r13d, r13d
.label_1251:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x50]
	je	.label_1211
	jmp	.label_1203
.label_1233:
	xor	r13d, r13d
	jmp	.label_1166
.label_1231:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_1166
.label_1183:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_1156
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_1156
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_1156
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_1216
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_1235
	cmp	byte ptr [rsp + 7], 0
	jne	.label_1150
	mov	r15b, byte ptr [rdi + rcx]
	cmp	r14, r11
	jae	.label_1173
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_1173:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_1199
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_1199:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_1185
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_1185:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_1189
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x3f
.label_1189:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r13d, r13d
	jmp	.label_1166
.label_1156:
	xor	eax, eax
.label_1208:
	xor	r13d, r13d
	jmp	.label_1166
.label_1188:
	add	qword ptr [rsp + 0x58], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_1201
	.section	.text
	.align	16
	#Procedure 0x40eed3
	.globl sub_40eed3
	.type sub_40eed3, @function
sub_40eed3:

	nop	word ptr cs:[rax + rax]
.label_1151:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_1201:
	test	r8b, r8b
	je	.label_1237
	mov	ecx, dword ptr [rsp + 0x4c]
	test	cl, 1
	je	.label_1210
	cmp	r14, r11
	jae	.label_1212
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_1212:
	inc	r14
	mov	dword ptr [rsp + 0x4c], 0
	jmp	.label_1210
	.section	.text
	.align	16
	#Procedure 0x40ef1c
	.globl sub_40ef1c
	.type sub_40ef1c, @function
sub_40ef1c:

	nop	dword ptr [rax]
.label_1237:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_1198
	cmp	r12d, 2
	jne	.label_1218
	mov	eax, r9d
	and	al, 1
	jne	.label_1218
	cmp	r14, r11
	jae	.label_1221
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_1221:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_1225
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_1225:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_1230
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_1230:
	add	r14, 3
	mov	r9b, 1
.label_1218:
	cmp	r14, r11
	jae	.label_1195
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_1195:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_1236
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_1236:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_1242
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_1242:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_1210:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x58], rdx
	jbe	.label_1159
	test	r9b, 1
	je	.label_1207
	mov	ebx, eax
	and	bl, 1
	jne	.label_1207
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_1257
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_1257:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_1246
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_1246:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_1207:
	cmp	r14, r11
	jae	.label_1151
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_1151
	.section	.text
	.align	16
	#Procedure 0x40f023
	.globl sub_40f023
	.type sub_40f023, @function
sub_40f023:

	nop	word ptr cs:[rax + rax]
.label_1159:
	test	r9b, 1
	je	.label_1163
	and	al, 1
	jne	.label_1163
	cmp	r14, r11
	jae	.label_1164
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_1164:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_1157
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_1157:
	add	r14, 2
	xor	r9d, r9d
.label_1163:
	mov	ebx, r15d
.label_1178:
	cmp	r14, r11
	jae	.label_1175
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_1175:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_1158
.label_1222:
	xor	r13d, r13d
.label_1219:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_1203
.label_1227:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbx, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	jae	.label_1191
	mov	rsi, qword ptr [rsp + 0x50]
.label_1174:
	mov	rax, qword ptr [rsp + 0x58]
	cmp	byte ptr [rax + r12], 0
	je	.label_1152
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_1174
	xor	r13d, r13d
	jmp	.label_1203
.label_1191:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_1203
.label_1152:
	xor	r13d, r13d
	jmp	.label_1203
.label_1216:
	xor	r13d, r13d
	jmp	.label_1166
.label_1235:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_1166
	.section	.text
	.align	16
	#Procedure 0x40f0f8
	.globl sub_40f0f8
	.type sub_40f0f8, @function
sub_40f0f8:

	nop	dword ptr [rax + rax]
.label_1252:
	test	r14, r14
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0xa8]
	and	cl, 1
	mov	qword ptr [rsp + 0x20], rbp
	je	.label_1213
	or	dl, al
	je	.label_1198
.label_1213:
	test	cl, cl
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x1d]
	mov	rsi, qword ptr [rsp + 0xa8]
	je	.label_1217
	or	dl, al
	jne	.label_1217
	test	r10b, 1
	jne	.label_1228
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_1217
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x60]
	je	.label_1232
.label_1217:
	mov	rdx, qword ptr [rsp + 0x40]
	test	rdx, rdx
	je	.label_1234
	test	cl, cl
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_1238
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_1238
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_1250:
	cmp	r14, r11
	jae	.label_1247
	mov	byte ptr [rcx + r14], al
.label_1247:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_1250
	jmp	.label_1238
.label_1150:
	mov	qword ptr [rsp + 0x20], rbp
.label_1198:
	mov	rdx, rdi
	mov	r9d, dword ptr [rsp + 0x18]
	test	byte ptr [rsp + 0x1d], 1
	mov	r8d, 4
	mov	rax, qword ptr [rsp + 0x68]
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
.label_1179:
	mov	r14, rax
.label_1182:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1228:
	sub	rsp, 8
	mov	r8d, 5
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 0x68]
	mov	rdx, qword ptr [rsp + 0x38]
	mov	rcx, qword ptr [rsp + 0x28]
	mov	r9d, dword ptr [rsp + 0x20]
	push	qword ptr [rsp + 0x78]
	push	qword ptr [rsp + 0x88]
	push	qword ptr [rsp + 0x108]
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	jmp	.label_1179
.label_1234:
	mov	rcx, qword ptr [rsp + 8]
.label_1238:
	cmp	r14, r11
	jae	.label_1182
	mov	byte ptr [rcx + r14], 0
	jmp	.label_1182
.label_1205:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40f28c
	.globl sub_40f28c
	.type sub_40f28c, @function
sub_40f28c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40f290
	.globl rotl8
	.type rotl8, @function
rotl8:

	mov	eax, edi
	mov	ecx, esi
	shl	eax, cl
	mov	ecx, 8
	sub	ecx, esi
	shr	edi, cl
	or	edi, eax
	mov	eax, edi
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f2a4
	.globl sub_40f2a4
	.type sub_40f2a4, @function
sub_40f2a4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f2b0

	.globl fdadvise
	.type fdadvise, @function
fdadvise:
	jmp	posix_fadvise
	.section	.text
	.align	16
	#Procedure 0x40f2b5
	.globl sub_40f2b5
	.type sub_40f2b5, @function
sub_40f2b5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f2c0

	.globl fadvise
	.type fadvise, @function
fadvise:
	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_1261
	call	fileno
	xor	esi, esi
	xor	edx, edx
	mov	edi, eax
	mov	ecx, ebx
	pop	rbx
	jmp	fdadvise
.label_1261:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f2da
	.globl sub_40f2da
	.type sub_40f2da, @function
sub_40f2da:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f2e0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_1262
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_1262:
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
	#Procedure 0x40f363
	.globl sub_40f363
	.type sub_40f363, @function
sub_40f363:

	nop	word ptr cs:[rax + rax]
.label_1263:
	call	qword ptr [word ptr [rip + obstack_alloc_failed_handler]]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f380

	.globl _obstack_newchunk
	.type _obstack_newchunk, @function
_obstack_newchunk:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r13, rdi
	mov	rcx, qword ptr [r13]
	mov	r14, qword ptr [r13 + 0x18]
	sub	r14, qword ptr [r13 + 0x10]
	lea	rdx, [r14 + rsi]
	add	rdx, qword ptr [r13 + 0x30]
	setb	al
	mov	rbx, r14
	shr	rbx, 3
	add	rbx, 0x64
	add	rbx, rdx
	cmovb	rbx, rdx
	cmp	rbx, rcx
	cmovb	rbx, rcx
	add	rsi, r14
	jb	.label_1263
	test	al, al
	jne	.label_1263
	mov	r15, qword ptr [r13 + 8]
	mov	rdi, r13
	mov	rsi, rbx
	call	call_chunkfun
	mov	r12, rax
	test	r12, r12
	je	.label_1263
	mov	qword ptr [r13 + 8], r12
	mov	qword ptr [r12 + 8], r15
	add	rbx, r12
	mov	qword ptr [r13 + 0x20], rbx
	mov	qword ptr [r12], rbx
	mov	rsi, qword ptr [r13 + 0x10]
	mov	rbx, qword ptr [r13 + 0x30]
	lea	rax, [rbx + r12 + 0x10]
	not	rbx
	and	rbx, rax
	mov	rdi, rbx
	mov	rdx, r14
	call	memcpy
	test	byte ptr [r13 + 0x50], 2
	jne	.label_1264
	mov	rax, qword ptr [r13 + 0x30]
	lea	rcx, [rax + r15 + 0x10]
	not	rax
	and	rax, rcx
	cmp	qword ptr [r13 + 0x10], rax
	jne	.label_1264
	mov	rax, qword ptr [r15 + 8]
	mov	qword ptr [r12 + 8], rax
	mov	rdi, r13
	mov	rsi, r15
	call	call_freefun
.label_1264:
	mov	qword ptr [r13 + 0x10], rbx
	add	r14, rbx
	mov	qword ptr [r13 + 0x18], r14
	and	byte ptr [r13 + 0x50], 0xfd
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f460

	.globl check
	.type check, @function
check:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	r12d, esi
	mov	r14, rdi
	mov	esi, OFFSET FLAT:label_96
	call	xfopen
	mov	r15, rax
	mov	rax,  qword ptr [word ptr [rip + keylist]]
	mov	qword ptr [rsp + 0x40], rax
	mov	bl,  byte ptr [byte ptr [rip + unique]]
	mov	rax,  qword ptr [word ptr [rip + merge_buffer_size]]
	mov	rdx,  qword ptr [word ptr [rip + sort_size]]
	cmp	rax, rdx
	cmova	rdx, rax
	lea	rbp, [rsp + 0x48]
	mov	esi, 0x20
	mov	rdi, rbp
	call	initbuf
	mov	qword ptr [rsp + 0x20], 0
	mov	rdi, rbp
	mov	rsi, r15
	mov	rdx, r14
	call	fillbuf
	mov	r13b, 1
	test	al, al
	je	.label_1265
	mov	dword ptr [rsp + 0x1c], r12d
	xor	bl, 1
	movzx	r13d, bl
	xor	r12d, r12d
	lea	rbx, [rsp + 0x48]
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r15
.label_1273:
	mov	rdi, rbx
	call	buffer_linelim
	mov	rbp, rax
	mov	r15, qword ptr [rsp + 0x58]
	test	r12, r12
	je	.label_1266
	lea	rsi, [rbp - 0x20]
	lea	rdi, [rsp + 0x20]
	call	compare
	cmp	r13d, eax
	jle	.label_1270
.label_1266:
	shl	r15, 5
	mov	rbx, rbp
	sub	rbx, r15
	add	rbp, -0x20
	nop	dword ptr [rax]
.label_1277:
	cmp	rbx, rbp
	jae	.label_1275
	lea	r15, [rbp - 0x20]
	mov	rdi, rbp
	mov	rsi, r15
	call	compare
	cmp	r13d, eax
	mov	rbp, r15
	jg	.label_1277
	jmp	.label_1271
	.section	.text
	.align	16
	#Procedure 0x40f561
	.globl sub_40f561
	.type sub_40f561, @function
sub_40f561:

	nop	word ptr cs:[rax + rax]
.label_1275:
	mov	rax, qword ptr [rsp + 8]
	add	rax, qword ptr [rsp + 0x58]
	mov	qword ptr [rsp + 8], rax
	cmp	r12, qword ptr [rbp + 8]
	jae	.label_1280
	mov	rax, qword ptr [rbp + 8]
	mov	r15, qword ptr [rsp + 0x10]
	lea	rbx, [rsp + 0x48]
	nop	word ptr cs:[rax + rax]
.label_1267:
	add	r12, r12
	je	.label_1269
	cmp	r12, rax
	jb	.label_1267
	jmp	.label_1272
	.section	.text
	.align	16
	#Procedure 0x40f5ac
	.globl sub_40f5ac
	.type sub_40f5ac, @function
sub_40f5ac:

	nop	dword ptr [rax]
.label_1280:
	mov	r15, qword ptr [rsp + 0x10]
	lea	rbx, [rsp + 0x48]
	jmp	.label_1274
.label_1269:
	mov	r12, rax
.label_1272:
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	mov	rdi, r12
	call	xmalloc
	mov	qword ptr [rsp + 0x20], rax
.label_1274:
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rbp]
	mov	rdx, qword ptr [rbp + 8]
	call	memcpy
	mov	rax, qword ptr [rbp + 8]
	mov	qword ptr [rsp + 0x28], rax
	cmp	qword ptr [rsp + 0x40], 0
	je	.label_1279
	mov	rax, qword ptr [rbp + 0x10]
	sub	rax, qword ptr [rbp]
	add	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [rsp + 0x30], rax
	mov	rax, qword ptr [rbp + 0x18]
	sub	rax, qword ptr [rbp]
	add	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [rsp + 0x38], rax
.label_1279:
	mov	rdi, rbx
	mov	rsi, r15
	mov	rdx, r14
	call	fillbuf
	test	al, al
	jne	.label_1273
	mov	r13b, 1
	jmp	.label_1265
.label_1271:
	add	r15, 0x20
	mov	rbp, r15
.label_1270:
	mov	eax, dword ptr [rsp + 0x1c]
	cmp	al, 0x63
	jne	.label_1276
	add	rbp, -0x20
	lea	rdi, [rsp + 0x48]
	call	buffer_linelim
	sub	rax, rbp
	sar	rax, 5
	mov	rbx, qword ptr [rsp + 8]
	add	rbx, rax
	mov	rax,  qword ptr [word ptr [rip + stderr]]
	mov	qword ptr [rsp + 8], rax
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1278
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	mov	r15,  qword ptr [word ptr [rip + program_name]]
	lea	rsi, [rsp + 0x80]
	mov	rdi, rbx
	call	umaxtostr
	mov	r9, rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, qword ptr [rsp + 8]
	mov	rdx, r12
	mov	rcx, r15
	mov	r8, r14
	call	__fprintf_chk
	mov	r15,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1268
	mov	edx, 5
	call	dcgettext
	mov	rdi, rbp
	mov	rsi, r15
	mov	rdx, rax
	call	write_line
	jmp	.label_1281
.label_1276:
	xor	r13d, r13d
.label_1281:
	mov	r15, qword ptr [rsp + 0x10]
.label_1265:
	mov	rdi, r15
	mov	rsi, r14
	call	xfclose
	mov	rdi, qword ptr [rsp + 0x48]
	call	free
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	mov	eax, r13d
	add	rsp, 0x98
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f726
	.globl sub_40f726
	.type sub_40f726, @function
sub_40f726:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f730

	.globl bkm_scale_0
	.type bkm_scale_0, @function
bkm_scale_0:
	movsxd	rcx, esi
	mov	rsi, -1
	mov	rax, -1
	xor	edx, edx
	div	rcx
	mov	rdx, qword ptr [rdi]
	imul	rcx, rdx
	cmp	rax, rdx
	cmovb	rcx, rsi
	sbb	eax, eax
	and	eax, 1
	mov	qword ptr [rdi], rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f75d
	.globl sub_40f75d
	.type sub_40f75d, @function
sub_40f75d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40f760

	.globl hash_insert_if_absent
	.type hash_insert_if_absent, @function
hash_insert_if_absent:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdx
	mov	r14, rsi
	mov	r15, rdi
	test	r14, r14
	je	.label_1286
	lea	rdx, [rsp]
	xor	ebp, ebp
	xor	ecx, ecx
	mov	rdi, r15
	mov	rsi, r14
	call	hash_find_entry
	test	rax, rax
	je	.label_1284
	test	rbx, rbx
	je	.label_1285
	mov	qword ptr [rbx], rax
	jmp	.label_1285
.label_1284:
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [r15 + 0x18]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_1290
	cvtsi2ss	xmm0, rcx
	jmp	.label_1295
.label_1290:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_1295:
	mov	rcx, qword ptr [r15 + 0x28]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_1283
	cvtsi2ss	xmm1, rax
	jmp	.label_1289
.label_1283:
	shr	rax, 1
	or	rdx, rax
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_1289:
	mulss	xmm1, dword ptr [rcx + 8]
	ucomiss	xmm0, xmm1
	jbe	.label_1291
	mov	rdi, r15
	call	check_tuning
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [r15 + 0x18]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_1282
	cvtsi2ss	xmm2, rcx
	jmp	.label_1287
.label_1282:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm2, rdx
	addss	xmm2, xmm2
.label_1287:
	mov	rcx, qword ptr [r15 + 0x28]
	movss	xmm1, dword ptr [rcx + 8]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_1293
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rax
	jmp	.label_1296
.label_1293:
	shr	rax, 1
	or	rdx, rax
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_1296:
	movaps	xmm3, xmm1
	mulss	xmm3, xmm0
	ucomiss	xmm2, xmm3
	jbe	.label_1291
	cmp	byte ptr [rcx + 0x10], 0
	mulss	xmm0, dword ptr [rcx + 0xc]
	jne	.label_1292
	mulss	xmm0, xmm1
.label_1292:
	mov	ebp, 0xffffffff
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_298]]
	jae	.label_1285
	movss	xmm1,  dword ptr [dword ptr [rip + label_297]]
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
	je	.label_1285
	lea	rdx, [rsp]
	xor	ecx, ecx
	mov	rdi, r15
	mov	rsi, r14
	call	hash_find_entry
	test	rax, rax
	jne	.label_1286
.label_1291:
	mov	rax, qword ptr [rsp]
	cmp	qword ptr [rax], 0
	je	.label_1288
	mov	rdi, r15
	call	allocate_entry
	mov	ebp, 0xffffffff
	test	rax, rax
	je	.label_1285
	mov	qword ptr [rax], r14
	mov	rcx, qword ptr [rsp]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	rcx, qword ptr [rsp]
	mov	qword ptr [rcx + 8], rax
	inc	qword ptr [r15 + 0x20]
	jmp	.label_1294
.label_1288:
	mov	qword ptr [rax], r14
	inc	qword ptr [r15 + 0x20]
	inc	qword ptr [r15 + 0x18]
.label_1294:
	mov	ebp, 1
.label_1285:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1286:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40f932
	.globl sub_40f932
	.type sub_40f932, @function
sub_40f932:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f940

	.globl proctab_comparator
	.type proctab_comparator, @function
proctab_comparator:
	mov	eax, dword ptr [rdi + 8]
	cmp	eax, dword ptr [rsi + 8]
	sete	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f94a
	.globl sub_40f94a
	.type sub_40f94a, @function
sub_40f94a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f950

	.globl save_token
	.type save_token, @function
save_token:
	push	r15
	push	r14
	push	rbx
	mov	rbx, rdi
	mov	r15, qword ptr [rbx + 0x28]
	mov	r14, qword ptr [rbx + 0x30]
	cmp	r14, r15
	jne	.label_1297
	or	byte ptr [rbx + 0x68], 2
.label_1297:
	mov	rcx, qword ptr [rbx + 0x48]
	mov	rax, qword ptr [rbx + 0x30]
	add	rax, rcx
	not	rcx
	and	rcx, rax
	mov	qword ptr [rbx + 0x30], rcx
	mov	rdx, qword ptr [rbx + 0x20]
	mov	rax, qword ptr [rbx + 0x38]
	sub	rcx, rdx
	mov	rsi, rax
	sub	rsi, rdx
	cmp	rcx, rsi
	jbe	.label_1299
	mov	qword ptr [rbx + 0x30], rax
.label_1299:
	dec	r14
	mov	rax, qword ptr [rbx + 0x30]
	mov	qword ptr [rbx + 0x28], rax
	mov	rax, qword ptr [rbx + 0x90]
	sub	rax, qword ptr [rbx + 0x88]
	cmp	rax, 7
	ja	.label_1298
	lea	rdi, [rbx + 0x70]
	mov	esi, 8
	call	_obstack_newchunk
.label_1298:
	mov	rax, qword ptr [rbx + 0x88]
	mov	qword ptr [rax], r15
	add	qword ptr [rbx + 0x88], 8
	sub	r14, r15
	mov	rax, qword ptr [rbx + 0xe8]
	sub	rax, qword ptr [rbx + 0xe0]
	cmp	rax, 7
	ja	.label_1300
	lea	rdi, [rbx + 0xc8]
	mov	esi, 8
	call	_obstack_newchunk
.label_1300:
	mov	rax, qword ptr [rbx + 0xe0]
	mov	qword ptr [rax], r14
	add	qword ptr [rbx + 0xe0], 8
	inc	qword ptr [rbx]
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x40fa1a
	.globl sub_40fa1a
	.type sub_40fa1a, @function
sub_40fa1a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40fa20

	.globl compare_nodes
	.type compare_nodes, @function
compare_nodes:
	mov	eax, dword ptr [rsi + 0x50]
	cmp	dword ptr [rdi + 0x50], eax
	jne	.label_1301
	mov	rax, qword ptr [rdi + 0x30]
	add	rax, qword ptr [rdi + 0x28]
	mov	rcx, qword ptr [rsi + 0x30]
	add	rcx, qword ptr [rsi + 0x28]
	cmp	rax, rcx
.label_1301:
	setb	al
	movzx	eax, al
	ret	
	.section	.text
	.align	16
	#Procedure 0x40fa42
	.globl sub_40fa42
	.type sub_40fa42, @function
sub_40fa42:

	nop	word ptr cs:[rax + rax]
.label_1302:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x40fa56

	.globl write_unique
	.type write_unique, @function
write_unique:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdx
	mov	r15, rsi
	mov	rbx, rdi
	cmp	byte ptr [byte ptr [rip + unique]],  1
	jne	.label_1303
	cmp	qword ptr [word ptr [rip + saved_line]],  0
	je	.label_1305
	mov	esi, OFFSET FLAT:saved_line
	mov	rdi, rbx
	call	compare
	test	eax, eax
	je	.label_1302
.label_1305:
	movups	xmm0, xmmword ptr [rbx]
	movups	xmm1, xmmword ptr [rbx + 0x10]
	movups	xmmword ptr [word ptr [rip + label_1304]],  xmm1
	movups	xmmword ptr [word ptr [rip + saved_line]],  xmm0
.label_1303:
	mov	rdi, rbx
	mov	rsi, r15
	mov	rdx, r14
	pop	rbx
	pop	r14
	pop	r15
	jmp	write_line
	.section	.text
	.align	16
	#Procedure 0x40fab0

	.globl get_nonce
	.type get_nonce, @function
get_nonce:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x18
	mov	rbx, rsi
	mov	r14, rdi
	xor	r15d, r15d
	mov	edi, OFFSET FLAT:label_1307
	xor	esi, esi
	xor	eax, eax
	call	open
	mov	ebp, eax
	test	ebp, ebp
	js	.label_1308
	cmp	rbx, 0x800
	mov	edx, 0x800
	cmovbe	rdx, rbx
	mov	edi, ebp
	mov	rsi, r14
	call	read
	mov	rbx, rax
	mov	edi, ebp
	call	close
	xor	r15d, r15d
	test	rbx, rbx
	js	.label_1308
	cmp	rbx, 0x7ff
	mov	r15, rbx
	ja	.label_1306
.label_1308:
	mov	eax, 0x800
	sub	rax, r15
	cmp	rax, 0x10
	mov	ebx, 0x10
	cmovbe	rbx, rax
	lea	rbp, [rsp + 8]
	xor	esi, esi
	mov	rdi, rbp
	call	gettimeofday
	lea	rdi, [r14 + r15]
	mov	rsi, rbp
	mov	rdx, rbx
	call	memcpy
	add	rbx, r15
	cmp	rbx, 0x7ff
	ja	.label_1306
	mov	eax, 0x800
	sub	rax, rbx
	cmp	rax, 4
	mov	r15d, 4
	cmovbe	r15, rax
	call	getpid
	mov	dword ptr [rsp + 8], eax
	lea	rdi, [r14 + rbx]
	lea	rsi, [rsp + 8]
	mov	rdx, r15
	call	memcpy
	add	r15, rbx
	cmp	r15, 0x7ff
	ja	.label_1306
	mov	eax, 0x800
	sub	rax, r15
	cmp	rax, 4
	mov	ebx, 4
	cmovbe	rbx, rax
	call	getppid
	mov	dword ptr [rsp + 8], eax
	lea	rdi, [r14 + r15]
	lea	rsi, [rsp + 8]
	mov	rdx, rbx
	call	memcpy
	add	rbx, r15
	cmp	rbx, 0x7ff
	ja	.label_1306
	mov	eax, 0x800
	sub	rax, rbx
	cmp	rax, 4
	mov	r15d, 4
	cmovbe	r15, rax
	call	getuid
	mov	dword ptr [rsp + 8], eax
	lea	rdi, [r14 + rbx]
	lea	rsi, [rsp + 8]
	mov	rdx, r15
	call	memcpy
	add	r15, rbx
	cmp	r15, 0x7ff
	ja	.label_1306
	mov	eax, 0x800
	sub	rax, r15
	cmp	rax, 4
	mov	ebx, 4
	cmovbe	rbx, rax
	call	getgid
	mov	dword ptr [rsp + 8], eax
	add	r14, r15
	lea	rsi, [rsp + 8]
	mov	rdi, r14
	mov	rdx, rbx
	call	memcpy
.label_1306:
	add	rsp, 0x18
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40fc49
	.globl sub_40fc49
	.type sub_40fc49, @function
sub_40fc49:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40fc50

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_1317
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_1315
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_1315
.label_1317:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_1309
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_1309:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_1319:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_645
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	word ptr cs:[rax + rax]
.label_1315:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1311
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_1319
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_1042
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_1325:
	shr	rax, 1
	or	rcx, rax
	cvtsi2ss	xmm0, rcx
	addss	xmm0, xmm0
.label_1326:
	mov	rcx, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x28]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_1316
	cvtsi2ss	xmm1, rcx
	jmp	.label_1321
	.section	.text
	.align	16
	#Procedure 0x40fd38

	.globl hash_delete
	.type hash_delete, @function
hash_delete:
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x10
	mov	r15, rdi
	lea	rdx, [rsp + 8]
	mov	ecx, 1
	call	hash_find_entry
	mov	r14, rax
	xor	eax, eax
	test	r14, r14
	je	.label_1324
	dec	qword ptr [r15 + 0x20]
	mov	rax, qword ptr [rsp + 8]
	cmp	qword ptr [rax], 0
	jne	.label_1314
	mov	rax, qword ptr [r15 + 0x18]
	dec	rax
	mov	qword ptr [r15 + 0x18], rax
	mov	ecx, eax
	and	ecx, 1
	test	rax, rax
	js	.label_1325
	cvtsi2ss	xmm0, rax
	jmp	.label_1326
.label_1316:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_1321:
	mulss	xmm1, dword ptr [rax]
	ucomiss	xmm1, xmm0
	jbe	.label_1314
	mov	rdi, r15
	call	check_tuning
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [r15 + 0x18]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_1322
	xorps	xmm1, xmm1
	cvtsi2ss	xmm1, rcx
	jmp	.label_1310
.label_1322:
	shr	rcx, 1
	or	rdx, rcx
	xorps	xmm1, xmm1
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_1310:
	mov	rcx, qword ptr [r15 + 0x28]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_1312
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rax
	jmp	.label_1320
.label_1312:
	shr	rax, 1
	or	rdx, rax
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_1320:
	movss	xmm2, dword ptr [rcx]
	mulss	xmm2, xmm0
	ucomiss	xmm2, xmm1
	jbe	.label_1314
	mulss	xmm0, dword ptr [rcx + 4]
	cmp	byte ptr [rcx + 0x10], 0
	jne	.label_1318
	mulss	xmm0, dword ptr [rcx + 8]
.label_1318:
	movss	xmm1,  dword ptr [dword ptr [rip + label_297]]
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
	jne	.label_1314
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_1313
	nop	dword ptr [rax + rax]
.label_1323:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_1323
.label_1313:
	mov	qword ptr [r15 + 0x48], 0
.label_1314:
	mov	rax, r14
.label_1324:
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x40fe96
	.globl sub_40fe96
	.type sub_40fe96, @function
sub_40fe96:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40fea0
	.globl rotl16
	.type rotl16, @function
rotl16:

	mov	eax, edi
	mov	ecx, esi
	shl	eax, cl
	mov	ecx, 0x10
	sub	ecx, esi
	shr	edi, cl
	or	edi, eax
	mov	eax, edi
	ret	
	.section	.text
	.align	16
	#Procedure 0x40feb4
	.globl sub_40feb4
	.type sub_40feb4, @function
sub_40feb4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40fec0

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
	je	.label_1327
	lea	r15, [rsp]
	nop	dword ptr [rax + rax]
.label_1328:
	mov	eax, dword ptr [r14]
	mov	ebx, 0xffffffff
	or	eax, 4
	cmp	eax, 4
	jne	.label_1327
	mov	dword ptr [r14], 0
	xor	ebx, ebx
	xor	esi, esi
	mov	rdi, r15
	call	rpl_nanosleep
	test	eax, eax
	jne	.label_1328
.label_1327:
	mov	eax, ebx
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ff33
	.globl sub_40ff33
	.type sub_40ff33, @function
sub_40ff33:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ff40

	.globl fd_safer_flag
	.type fd_safer_flag, @function
fd_safer_flag:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	ebx, edi
	cmp	ebx, 2
	ja	.label_1329
	mov	edi, ebx
	call	dup_safer_flag
	mov	r14d, eax
	call	__errno_location
	mov	rbp, rax
	mov	r15d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	mov	dword ptr [rbp], r15d
	mov	eax, r14d
	jmp	.label_1330
.label_1329:
	mov	eax, ebx
.label_1330:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ff81
	.globl sub_40ff81
	.type sub_40ff81, @function
sub_40ff81:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ff90
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_1331
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_1333:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_1333
.label_1331:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_1335
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_1334]], OFFSET FLAT:slot0
.label_1335:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_1332
	mov	rdi, r14
.label_1658:
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_1332:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x410021
	.globl sub_410021
	.type sub_410021, @function
sub_410021:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410030

	.globl readtokens0
	.type readtokens0, @function
readtokens0:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	call	fgetc
	mov	ebp, eax
	cmp	ebp, -1
	je	.label_1336
	lea	r15, [rbx + 0x18]
	nop	dword ptr [rax]
.label_1338:
	mov	rax, qword ptr [rbx + 0x38]
	cmp	rax, qword ptr [rbx + 0x30]
	jne	.label_1340
	mov	esi, 1
	mov	rdi, r15
	call	_obstack_newchunk
.label_1340:
	mov	rax, qword ptr [rbx + 0x30]
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 0x30], rcx
	mov	byte ptr [rax], bpl
	test	ebp, ebp
	jne	.label_1345
	mov	rdi, rbx
	call	save_token
.label_1345:
	mov	rdi, r14
	call	fgetc
	mov	ebp, eax
	cmp	ebp, -1
	jne	.label_1338
.label_1336:
	mov	rax, qword ptr [rbx + 0x30]
	cmp	rax, qword ptr [rbx + 0x28]
	je	.label_1341
	cmp	qword ptr [rbx + 0x38], rax
	jne	.label_1344
	lea	rdi, [rbx + 0x18]
	mov	esi, 1
	call	_obstack_newchunk
.label_1344:
	mov	rax, qword ptr [rbx + 0x30]
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 0x30], rcx
	mov	byte ptr [rax], 0
	mov	rdi, rbx
	call	save_token
.label_1341:
	mov	rax, qword ptr [rbx + 0x90]
	sub	rax, qword ptr [rbx + 0x88]
	cmp	rax, 7
	ja	.label_1337
	lea	rdi, [rbx + 0x70]
	mov	esi, 8
	call	_obstack_newchunk
.label_1337:
	mov	rax, qword ptr [rbx + 0x88]
	mov	qword ptr [rax], 0
	mov	rcx, qword ptr [rbx + 0x88]
	add	rcx, 8
	mov	qword ptr [rbx + 0x88], rcx
	mov	rax, qword ptr [rbx + 0x80]
	cmp	rcx, rax
	jne	.label_1346
	or	byte ptr [rbx + 0xc0], 2
.label_1346:
	mov	rdx, qword ptr [rbx + 0xa0]
	mov	rcx, qword ptr [rbx + 0x88]
	add	rcx, rdx
	not	rdx
	and	rdx, rcx
	mov	qword ptr [rbx + 0x88], rdx
	mov	rsi, qword ptr [rbx + 0x78]
	mov	rcx, qword ptr [rbx + 0x90]
	sub	rdx, rsi
	mov	rdi, rcx
	sub	rdi, rsi
	cmp	rdx, rdi
	jbe	.label_1343
	mov	qword ptr [rbx + 0x88], rcx
.label_1343:
	mov	rcx, qword ptr [rbx + 0x88]
	mov	qword ptr [rbx + 0x80], rcx
	mov	qword ptr [rbx + 8], rax
	mov	rax, qword ptr [rbx + 0xd8]
	cmp	qword ptr [rbx + 0xe0], rax
	jne	.label_1342
	or	byte ptr [rbx + 0x118], 2
.label_1342:
	mov	rdx, qword ptr [rbx + 0xf8]
	mov	rcx, qword ptr [rbx + 0xe0]
	add	rcx, rdx
	not	rdx
	and	rdx, rcx
	mov	qword ptr [rbx + 0xe0], rdx
	mov	rsi, qword ptr [rbx + 0xd0]
	mov	rcx, qword ptr [rbx + 0xe8]
	sub	rdx, rsi
	mov	rdi, rcx
	sub	rdi, rsi
	cmp	rdx, rdi
	jbe	.label_1339
	mov	qword ptr [rbx + 0xe0], rcx
.label_1339:
	mov	rcx, qword ptr [rbx + 0xe0]
	mov	qword ptr [rbx + 0xd8], rcx
	mov	qword ptr [rbx + 0x10], rax
	mov	rdi, r14
	call	ferror
	test	eax, eax
	sete	al
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4101ed
	.globl sub_4101ed
	.type sub_4101ed, @function
sub_4101ed:

	nop	dword ptr [rax]
.label_1348:
	mov	r15, qword ptr [rbx]
.label_1347:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x410202
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
	call	safe_hasher
	mov	rbx, rax
	xor	r15d, r15d
	cmp	qword ptr [rbx], 0
	je	.label_1347
	test	rbx, rbx
	je	.label_1347
	xor	r15d, r15d
	nop	word ptr [rax + rax]
.label_1349:
	mov	rsi, qword ptr [rbx]
	cmp	rsi, r12
	je	.label_1348
	mov	rdi, r12
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_1348
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	jne	.label_1349
	jmp	.label_1347
	.section	.text
	.align	16
	#Procedure 0x410250

	.globl _obstack_begin_1
	.type _obstack_begin_1, @function
_obstack_begin_1:
	push	rax
	mov	qword ptr [rdi + 0x38], rcx
	mov	qword ptr [rdi + 0x40], r8
	mov	qword ptr [rdi + 0x48], r9
	or	byte ptr [rdi + 0x50], 1
	call	_obstack_begin_worker
	mov	eax, 1
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x41026d
	.globl sub_41026d
	.type sub_41026d, @function
sub_41026d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x410270

	.globl cs_enter
	.type cs_enter, @function
cs_enter:
	push	rbx
	mov	rbx, rdi
	lea	rdx, [rbx + 8]
	xor	edi, edi
	mov	esi, OFFSET FLAT:caught_signals
	call	pthread_sigmask
	test	eax, eax
	sete	byte ptr [rbx]
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x41028b
	.globl sub_41028b
	.type sub_41028b, @function
sub_41028b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410290

	.globl merge_tree_init
	.type merge_tree_init, @function
merge_tree_init:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	r12, rsi
	mov	r15, rdi
	shl	rdi, 8
	call	xmalloc
	mov	rbx, rax
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx + 0x10], xmm0
	movups	xmmword ptr [rbx], xmm0
	mov	qword ptr [rbx + 0x20], 0
	mov	qword ptr [rbx + 0x30], r12
	mov	qword ptr [rbx + 0x28], r12
	mov	qword ptr [rbx + 0x38], 0
	mov	dword ptr [rbx + 0x50], 0
	mov	byte ptr [rbx + 0x54], 0
	lea	rdi, [rbx + 0x58]
	xor	esi, esi
	call	pthread_mutex_init
	mov	rsi, rbx
	sub	rsi, -0x80
	xor	r9d, r9d
	mov	rdi, rbx
	mov	rdx, r14
	mov	rcx, r15
	mov	r8, r12
	call	init_node
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x41030f
	.globl sub_41030f
	.type sub_41030f, @function
sub_41030f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x410310
	.globl readtokens0_free
	.type readtokens0_free, @function
readtokens0_free:

	push	rbx
	mov	rbx, rdi
	lea	rdi, [rbx + 0x18]
	xor	esi, esi
	call	_obstack_free
	lea	rdi, [rbx + 0x70]
	xor	esi, esi
	call	_obstack_free
	add	rbx, 0xc8
	xor	esi, esi
	mov	rdi, rbx
	pop	rbx
	jmp	_obstack_free
	.section	.text
	.align	16
	#Procedure 0x41033c
	.globl sub_41033c
	.type sub_41033c, @function
sub_41033c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x410340

	.globl register_proc
	.type register_proc, @function
register_proc:
	push	rbx
	mov	rbx, rdi
	cmp	qword ptr [word ptr [rip + proctab]],  0
	jne	.label_1350
	mov	edi, 0x2f
	xor	esi, esi
	mov	edx, OFFSET FLAT:proctab_hasher
	mov	ecx, OFFSET FLAT:proctab_comparator
	xor	r8d, r8d
	call	hash_initialize
	mov	qword ptr [word ptr [rip + proctab]],  rax
	test	rax, rax
	je	.label_1351
.label_1350:
	mov	byte ptr [rbx + 0xc], 1
	mov	rdi,  qword ptr [word ptr [rip + proctab]]
	mov	rsi, rbx
	call	hash_insert
	test	rax, rax
	je	.label_1351
	pop	rbx
	ret	
.label_1351:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x410392
	.globl sub_410392
	.type sub_410392, @function
sub_410392:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4103a0
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
	#Procedure 0x4103b3
	.globl sub_4103b3
	.type sub_4103b3, @function
sub_4103b3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4103c0
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_1352
.label_1353:
	ret	
.label_1352:
	cmp	edi, 0x7f
	je	.label_1353
	xor	eax, eax
	jmp	.label_1353
	.section	.text
	.align	16
	#Procedure 0x4103d1
	.globl sub_4103d1
	.type sub_4103d1, @function
sub_4103d1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4103e0
	.globl rotl_sz
	.type rotl_sz, @function
rotl_sz:

	mov	ecx, esi
	rol	rdi, cl
	mov	rax, rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x4103e9
	.globl sub_4103e9
	.type sub_4103e9, @function
sub_4103e9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4103f0

	.globl strcaseeq1
	.type strcaseeq1, @function
strcaseeq1:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	dword ptr [rsp + 4], r9d
	mov	r15d, r8d
	mov	r12d, ecx
	mov	r13d, edx
	mov	ebp, esi
	mov	rbx, rdi
	mov	r14b, byte ptr [rsp + 0x40]
	mov	edi, ebp
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 1]
	test	al, al
	je	.label_1356
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_1354
	jmp	.label_1355
.label_1356:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_1355
.label_1354:
	mov	eax, 1
	test	bpl, bpl
	je	.label_1355
	movsx	esi, r13b
	movsx	edx, r12b
	movsx	ecx, r15b
	mov	eax, dword ptr [rsp + 4]
	movsx	r8d, al
	movsx	r9d, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq2
.label_1355:
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
	#Procedure 0x410478
	.globl sub_410478
	.type sub_410478, @function
sub_410478:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410480

	.globl strcaseeq2
	.type strcaseeq2, @function
strcaseeq2:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14d, r9d
	mov	r15d, r8d
	mov	r12d, ecx
	mov	r13d, edx
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 2]
	test	al, al
	je	.label_1357
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_1359
	jmp	.label_1358
.label_1357:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_1358
.label_1359:
	mov	eax, 1
	test	bpl, bpl
	je	.label_1358
	movsx	esi, r13b
	movsx	edx, r12b
	movsx	ecx, r15b
	movsx	r8d, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq3
.label_1358:
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
	#Procedure 0x4104f9
	.globl sub_4104f9
	.type sub_4104f9, @function
sub_4104f9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x410500

	.globl strcaseeq3
	.type strcaseeq3, @function
strcaseeq3:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r14d, r8d
	mov	r15d, ecx
	mov	r12d, edx
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 3]
	test	al, al
	je	.label_1362
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_1361
	jmp	.label_1360
.label_1362:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_1360
.label_1361:
	mov	eax, 1
	test	bpl, bpl
	je	.label_1360
	movsx	esi, r12b
	movsx	edx, r15b
	movsx	ecx, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq4
.label_1360:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410563
	.globl sub_410563
	.type sub_410563, @function
sub_410563:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410570

	.globl strcaseeq4
	.type strcaseeq4, @function
strcaseeq4:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14d, ecx
	mov	r15d, edx
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 4]
	test	al, al
	je	.label_1365
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_1363
	jmp	.label_1364
.label_1365:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_1364
.label_1363:
	mov	eax, 1
	test	bpl, bpl
	je	.label_1364
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_1364:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4105cf
	.globl sub_4105cf
	.type sub_4105cf, @function
sub_4105cf:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4105d0

	.globl strcaseeq5
	.type strcaseeq5, @function
strcaseeq5:
	push	rbp
	push	r14
	push	rbx
	mov	r14d, edx
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 5]
	test	al, al
	je	.label_1366
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_1368
	jmp	.label_1367
.label_1366:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_1367
.label_1368:
	mov	eax, 1
	test	bpl, bpl
	je	.label_1367
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_1367:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410619
	.globl sub_410619
	.type sub_410619, @function
sub_410619:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x410620

	.globl strcaseeq6
	.type strcaseeq6, @function
strcaseeq6:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 6]
	test	al, al
	je	.label_1371
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_1370
	jmp	.label_1369
.label_1371:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_1369
.label_1370:
	mov	eax, 1
	test	bpl, bpl
	je	.label_1369
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_1369:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410665
	.globl sub_410665
	.type sub_410665, @function
sub_410665:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410670

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_1374
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_1373
	jmp	.label_1372
.label_1374:
	mov	eax, 1
	test	cl, cl
	je	.label_1372
.label_1373:
	xor	eax, eax
.label_1372:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x41069f
	.globl sub_41069f
	.type sub_41069f, @function
sub_41069f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4106a0

	.globl open_input_files
	.type open_input_files, @function
open_input_files:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	rbx, rdx
	mov	r14, rsi
	mov	r12, rdi
	mov	esi, 8
	mov	rdi, r14
	call	xnmalloc
	mov	r15, rax
	mov	qword ptr [rbx], r15
	xor	ebx, ebx
	test	r14, r14
	je	.label_1376
	add	r12, 8
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_1378:
	mov	rdi, qword ptr [r12]
	test	rdi, rdi
	je	.label_1375
	cmp	byte ptr [rdi + 0xc], 0
	je	.label_1375
	call	open_temp
	jmp	.label_1377
	.section	.text
	.align	16
	#Procedure 0x4106f6
	.globl sub_4106f6
	.type sub_4106f6, @function
sub_4106f6:

	nop	word ptr cs:[rax + rax]
.label_1375:
	mov	rdi, qword ptr [r12 - 8]
	mov	esi, OFFSET FLAT:label_96
	call	stream_open
.label_1377:
	mov	qword ptr [r15 + rbx*8], rax
	test	rax, rax
	je	.label_1376
	inc	rbx
	add	r12, 0x10
	cmp	rbx, r14
	jb	.label_1378
.label_1376:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x410733
	.globl sub_410733
	.type sub_410733, @function
sub_410733:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410740

	.globl xmemcoll0
	.type xmemcoll0, @function
xmemcoll0:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r15, rcx
	mov	r14, rdx
	mov	rbx, rsi
	mov	r12, rdi
	call	memcoll0
	mov	ebp, eax
	call	__errno_location
	mov	edi, dword ptr [rax]
	test	edi, edi
	je	.label_1379
	dec	rbx
	dec	r15
	mov	rsi, r12
	mov	rdx, rbx
	mov	rcx, r14
	mov	r8, r15
	call	collate_error
.label_1379:
	mov	eax, ebp
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410788
	.globl sub_410788
	.type sub_410788, @function
sub_410788:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410790

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_1380
	ret	
.label_1380:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	.section	.text
	.align	16
	#Procedure 0x4107a3
	.globl sub_4107a3
	.type sub_4107a3, @function
sub_4107a3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4107b0

	.globl merge
	.type merge, @function
merge:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	qword ptr [rsp + 0x10], rcx
	mov	r8, rdx
	mov	r14, rsi
	mov	eax,  dword ptr [dword ptr [rip + nmerge]]
	cmp	rax, r8
	mov	qword ptr [rsp + 8], rdi
	jae	.label_1390
	lea	rax, [rdi + 8]
	mov	qword ptr [rsp + 0x20], rax
	lea	rsi, [rsp]
	nop	word ptr [rax + rax]
.label_1389:
	mov	r12, r14
	mov	ecx,  dword ptr [dword ptr [rip + nmerge]]
	cmp	rcx, r8
	mov	qword ptr [rsp + 0x18], r8
	jbe	.label_1394
	xor	r13d, r13d
	xor	r15d, r15d
	mov	rbp, r8
	jmp	.label_1381
	.section	.text
	.align	16
	#Procedure 0x410811
	.globl sub_410811
	.type sub_410811, @function
sub_410811:

	nop	word ptr cs:[rax + rax]
.label_1394:
	mov	r14, qword ptr [rsp + 0x20]
	xor	r15d, r15d
	xor	r13d, r13d
	nop	dword ptr [rax + rax]
.label_1392:
	lea	rdi, [rsp]
	call	create_temp
	mov	rbp, rax
	mov	rdi, r15
	shl	rdi, 4
	add	rdi, qword ptr [rsp + 8]
	mov	edx,  dword ptr [dword ptr [rip + nmerge]]
	cmp	r12, rdx
	mov	rsi, rdx
	cmovb	rsi, r12
	mov	rcx, qword ptr [rsp]
	lea	rbx, [rbp + 0xd]
	mov	r8, rbx
	call	mergefiles
	lea	rsi, [rsp]
	mov	r8, qword ptr [rsp + 0x18]
	cmp	r12, rax
	mov	rcx, rax
	cmovb	rcx, r12
	sub	r12, rcx
	mov	qword ptr [r14 - 8], rbx
	mov	qword ptr [r14], rbp
	add	r15, rax
	inc	r13
	mov	ecx,  dword ptr [dword ptr [rip + nmerge]]
	mov	rbp, r8
	sub	rbp, r15
	add	r14, 0x10
	cmp	rcx, rbp
	jbe	.label_1392
.label_1381:
	mov	r14, r12
	xor	edx, edx
	mov	rax, r13
	div	rcx
	sub	rcx, rdx
	sub	rbp, rcx
	mov	rbx, r13
	jbe	.label_1383
	inc	rbp
	mov	rdi, rsi
	call	create_temp
	mov	qword ptr [rsp + 0x28], rax
	mov	rdi, r15
	shl	rdi, 4
	mov	r13, qword ptr [rsp + 8]
	add	rdi, r13
	cmp	r14, rbp
	mov	rsi, rbp
	cmovb	rsi, r14
	mov	rcx, qword ptr [rsp]
	lea	r12, [rax + 0xd]
	mov	rdx, rbp
	mov	r8, r12
	call	mergefiles
	mov	r8, qword ptr [rsp + 0x18]
	cmp	r14, rax
	mov	rcx, rax
	cmovb	rcx, r14
	sub	r14, rcx
	mov	rcx, rbx
	shl	rcx, 4
	mov	qword ptr [r13 + rcx], r12
	inc	rbx
	mov	rdx, qword ptr [rsp + 0x28]
	mov	qword ptr [r13 + rcx + 8], rdx
	add	r15, rax
	jmp	.label_1395
	.section	.text
	.align	16
	#Procedure 0x410922
	.globl sub_410922
	.type sub_410922, @function
sub_410922:

	nop	word ptr cs:[rax + rax]
.label_1383:
	mov	r13, qword ptr [rsp + 8]
.label_1395:
	mov	rdi, rbx
	shl	rdi, 4
	add	rdi, r13
	mov	rsi, r15
	shl	rsi, 4
	add	rsi, r13
	mov	rdx, r8
	sub	rdx, r15
	shl	rdx, 4
	mov	rbp, r8
	call	memmove
	add	r14, rbx
	add	rbx, rbp
	sub	rbx, r15
	mov	eax,  dword ptr [dword ptr [rip + nmerge]]
	cmp	rax, rbx
	mov	r8, rbx
	lea	rsi, [rsp]
	jb	.label_1389
	jmp	.label_1396
.label_1390:
	mov	rbx, r8
.label_1396:
	mov	r15, qword ptr [rsp + 8]
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	mov	rcx, qword ptr [rsp + 0x10]
	call	avoid_trashing_input
	lea	rax, [r15 + 0x10]
	mov	qword ptr [rsp + 0x20], rax
	lea	r12, [rsp + 0x30]
	jmp	.label_1386
	.section	.text
	.align	16
	#Procedure 0x4109a7
	.globl sub_4109a7
	.type sub_4109a7, @function
sub_4109a7:

	nop	word ptr [rax + rax]
.label_1384:
	cmp	r14, r13
	mov	rsi, r13
	cmovb	rsi, r14
	mov	qword ptr [rsp + 0x28], rsi
	mov	rcx, qword ptr [rsp + 0x30]
	mov	rbx, r15
	add	rbx, 0xd
	mov	r9, qword ptr [rsp]
	mov	r12, r14
	mov	r14, qword ptr [rsp + 8]
	mov	rdi, r14
	mov	rdx, r13
	mov	r8, rbx
	call	mergefps
	mov	qword ptr [r14], rbx
	mov	qword ptr [r14 + 8], r15
	mov	r15, r14
	mov	r14, r12
	lea	r12, [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x18]
	sub	rbx, r13
	mov	rdx, rbx
	shl	rdx, 4
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rsi, rbp
	call	memmove
	inc	r14
	sub	r14, qword ptr [rsp + 0x28]
	inc	rbx
.label_1386:
	mov	rdi, r15
	mov	rsi, rbx
	lea	rdx, [rsp]
	call	open_input_files
	mov	r13, rax
	cmp	r13, rbx
	jne	.label_1393
	mov	esi, OFFSET FLAT:label_110
	mov	rdi, qword ptr [rsp + 0x10]
	call	stream_open
	test	rax, rax
	jne	.label_1382
	call	__errno_location
	cmp	r13, 3
	jb	.label_1385
	cmp	dword ptr [rax], 0x18
	je	.label_1387
	jmp	.label_1385
	.section	.text
	.align	16
	#Procedure 0x410a5f
	.globl sub_410a5f
	.type sub_410a5f, @function
sub_410a5f:

	nop	
.label_1393:
	cmp	r13, 2
	jbe	.label_1388
.label_1387:
	mov	qword ptr [rsp + 0x18], rbx
	mov	rbx, qword ptr [rsp]
	mov	rbp, r13
	shl	rbp, 4
	add	rbp, r15
	nop	dword ptr [rax]
.label_1391:
	mov	rdi, qword ptr [rbx + r13*8 - 8]
	dec	r13
	mov	rsi, qword ptr [rbp - 0x10]
	add	rbp, -0x10
	call	xfclose
	xor	esi, esi
	cmp	r13, 2
	seta	sil
	mov	rdi, r12
	call	maybe_create_temp
	mov	r15, rax
	test	r15, r15
	je	.label_1391
	jmp	.label_1384
.label_1382:
	mov	r9, qword ptr [rsp]
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	mov	rcx, rax
	mov	r8, qword ptr [rsp + 0x10]
	call	mergefps
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1385:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_537
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, qword ptr [rsp + 0x10]
	call	sort_die
.label_1388:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_537
	mov	edx, 5
	call	dcgettext
	shl	r13, 4
	mov	rsi, qword ptr [r15 + r13]
	mov	rdi, rax
	call	sort_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x410b20
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_1397:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_1397
	jmp	version_etc_arn
	.section	.text
	.align	16
	#Procedure 0x410b41
	.globl sub_410b41
	.type sub_410b41, @function
sub_410b41:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410b50

	.globl compare
	.type compare, @function
compare:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	cmp	qword ptr [word ptr [rip + keylist]],  0
	je	.label_1400
	mov	rdi, rbx
	mov	rsi, r14
	call	keycompare
	mov	ecx, eax
	test	ecx, ecx
	jne	.label_1399
	xor	ecx, ecx
	mov	al,  byte ptr [byte ptr [rip + unique]]
	test	al, al
	jne	.label_1399
	mov	al,  byte ptr [byte ptr [rip + stable]]
	test	al, al
	jne	.label_1399
.label_1400:
	mov	rsi, qword ptr [rbx + 8]
	mov	rcx, qword ptr [r14 + 8]
	lea	r15, [rcx - 1]
	mov	r12, rsi
	dec	r12
	je	.label_1402
	mov	eax, 1
	test	r15, r15
	je	.label_1398
	cmp	byte ptr [byte ptr [rip + hard_LC_COLLATE]],  0
	mov	rdi, qword ptr [rbx]
	mov	rdx, qword ptr [r14]
	je	.label_1401
	call	xmemcoll0
	jmp	.label_1398
.label_1401:
	cmp	r12, r15
	mov	rax, r15
	cmovb	rax, r12
	mov	rsi, rdx
	mov	rdx, rax
	call	memcmp
	test	eax, eax
	jne	.label_1398
	xor	ecx, ecx
	cmp	r12, r15
	setne	cl
	mov	eax, 0xffffffff
	cmovae	eax, ecx
.label_1398:
	mov	ecx, eax
	neg	ecx
	cmp	byte ptr [byte ptr [rip + reverse]],  0
	cmove	ecx, eax
.label_1399:
	mov	eax, ecx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x410c0c
	.globl sub_410c0c
	.type sub_410c0c, @function
sub_410c0c:

	nop	word ptr cs:[rax + rax]
.label_1402:
	neg	r15
	sbb	eax, eax
	jmp	.label_1398
	.section	.text
	.align	16
	#Procedure 0x410c20

	.globl mark_key
	.type mark_key, @function
mark_key:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_1403
	nop	
.label_1405:
	mov	edi, 0x20
	call	putchar_unlocked
	dec	rbx
	jne	.label_1405
.label_1403:
	test	r14, r14
	je	.label_1406
	nop	word ptr cs:[rax + rax]
.label_1407:
	mov	edi, 0x5f
	call	putchar_unlocked
	dec	r14
	jne	.label_1407
	mov	edi, 0xa
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	putchar_unlocked
.label_1406:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1404
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	__printf_chk
	.section	.text
	.align	16
	#Procedure 0x410c9a
	.globl sub_410c9a
	.type sub_410c9a, @function
sub_410c9a:

	nop	word ptr [rax + rax]
.label_1408:
	xor	eax, eax
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x410caa
	.globl sub_410caa
	.type sub_410caa, @function
sub_410caa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410cb0

	.globl randread_free
	.type randread_free, @function
randread_free:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	r14, qword ptr [rbx]
	mov	esi, 0x1038
	call	explicit_bzero
	mov	rdi, rbx
	call	free
	test	r14, r14
	je	.label_1408
	mov	rdi, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	rpl_fclose
	.section	.text
	.align	16
	#Procedure 0x410ce0
	.globl rotr64
	.type rotr64, @function
rotr64:

	mov	ecx, esi
	ror	rdi, cl
	mov	rax, rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x410ce9
	.globl sub_410ce9
	.type sub_410ce9, @function
sub_410ce9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x410cf0
	.globl hash_table_ok
	.type hash_table_ok, @function
hash_table_ok:

	mov	rsi, qword ptr [rdi]
	xor	edx, edx
	cmp	rsi, qword ptr [rdi + 8]
	mov	ecx, 0
	jae	.label_1409
	mov	r8, qword ptr [rdi + 8]
	xor	ecx, ecx
	xor	edx, edx
	nop	dword ptr [rax + rax]
.label_1414:
	cmp	qword ptr [rsi], 0
	je	.label_1411
	mov	rax, rsi
	nop	dword ptr [rax]
.label_1412:
	inc	rcx
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_1412
	inc	rdx
.label_1411:
	add	rsi, 0x10
	cmp	rsi, r8
	jb	.label_1414
.label_1409:
	cmp	rdx, qword ptr [rdi + 0x18]
	jne	.label_1410
	mov	al, 1
	cmp	rcx, qword ptr [rdi + 0x20]
	je	.label_1413
.label_1410:
	xor	eax, eax
.label_1413:
	ret	
	.section	.text
	.align	16
	#Procedure 0x410d49
	.globl sub_410d49
	.type sub_410d49, @function
sub_410d49:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x410d50

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_1416
	cmp	byte ptr [rax], 0x43
	jne	.label_1418
	cmp	byte ptr [rax + 1], 0
	je	.label_1415
.label_1418:
	mov	esi, OFFSET FLAT:label_1417
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_1416
.label_1415:
	xor	ebx, ebx
.label_1416:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x410d81
	.globl sub_410d81
	.type sub_410d81, @function
sub_410d81:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410d90

	.globl just
	.type just, @function
just:
	mov	rax, rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x410d94
	.globl sub_410d94
	.type sub_410d94, @function
sub_410d94:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410da0

	.globl dtotimespec
	.type dtotimespec, @function
dtotimespec:
	push	rax
	movabs	rdi, 0x7fffffffffffffff
	ucomisd	xmm0,  qword ptr [word ptr [rip + label_1419]]
	jbe	.label_1420
	movsd	xmm1,  qword ptr [word ptr [rip + label_154]]
	ucomisd	xmm1, xmm0
	jbe	.label_1422
	cvttsd2si	rdi, xmm0
	xorps	xmm1, xmm1
	cvtsi2sd	xmm1, rdi
	subsd	xmm0, xmm1
	mulsd	xmm0,  qword ptr [word ptr [rip + label_431]]
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
	shr	rax, 0x3f
	sar	rdx, 0x1a
	add	rdx, rax
	imul	rax, rdx, 0x3b9aca00
	mov	rsi, rcx
	sub	rsi, rax
	add	rsi, 0x3b9aca00
	sub	rcx, rax
	cmovns	rsi, rcx
	add	rdi, rdx
	sar	rcx, 0x3f
	add	rcx, rdi
	mov	rdi, rcx
	jmp	.label_1421
.label_1422:
	mov	esi, 0x3b9ac9ff
.label_1421:
	call	make_timespec
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x410e51
	.globl sub_410e51
	.type sub_410e51, @function
sub_410e51:

	nop	dword ptr [rax + rax]
.label_1420:
	inc	rdi
	xor	esi, esi
	jmp	.label_1421
	.section	.text
	.align	16
	#Procedure 0x410e60

	.globl debug_line
	.type debug_line, @function
debug_line:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	mov	rbx,  qword ptr [word ptr [rip + keylist]]
	mov	rsi, rbx
	call	debug_key
	test	rbx, rbx
	jne	.label_1425
	jmp	.label_1424
	.section	.text
	.align	16
	#Procedure 0x410e7d
	.globl sub_410e7d
	.type sub_410e7d, @function
sub_410e7d:

	nop	dword ptr [rax]
.label_1423:
	mov	rdi, r14
	mov	rsi, rbx
	call	debug_key
.label_1425:
	mov	rbx, qword ptr [rbx + 0x40]
	test	rbx, rbx
	jne	.label_1423
	mov	al,  byte ptr [byte ptr [rip + unique]]
	test	al, al
	jne	.label_1424
	test	byte ptr [byte ptr [rip + stable]],  1
	jne	.label_1424
	xor	esi, esi
	mov	rdi, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	debug_key
.label_1424:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x410ebd
	.globl sub_410ebd
	.type sub_410ebd, @function
sub_410ebd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x410ec0

	.globl debug_key
	.type debug_key, @function
debug_key:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r12, rsi
	mov	r13, rdi
	mov	r14, qword ptr [r13]
	mov	rax, qword ptr [r13 + 8]
	lea	r15, [r14 + rax - 1]
	test	r12, r12
	je	.label_1426
	cmp	qword ptr [r12], -1
	mov	rbx, r14
	je	.label_1437
	mov	rdi, r13
	mov	rsi, r12
	call	begfield
	mov	rbx, rax
.label_1437:
	cmp	qword ptr [r12 + 0x10], -1
	je	.label_1427
	mov	rdi, r13
	mov	rsi, r12
	call	limfield
	mov	r15, rax
.label_1427:
	cmp	byte ptr [r12 + 0x30], 0
	je	.label_1432
	cmp	qword ptr [r12], -1
	je	.label_1436
.label_1432:
	cmp	byte ptr [r12 + 0x36], 0
	jne	.label_1436
	mov	rdi, r12
	call	key_numeric
	test	al, al
	je	.label_1429
.label_1436:
	mov	bpl, byte ptr [r15]
	mov	byte ptr [r15], 0
	dec	rbx
	nop	dword ptr [rax]
.label_1434:
	movsx	edi, byte ptr [rbx + 1]
	inc	rbx
	call	to_uchar
	movzx	eax, al
	cmp	byte ptr [byte ptr [rax + blanks]],  0
	jne	.label_1434
	mov	qword ptr [rsp + 8], rbx
	cmp	r15, rbx
	jb	.label_1433
	cmp	byte ptr [r12 + 0x36], 0
	je	.label_1440
	lea	rsi, [rsp + 8]
	mov	rdi, rbx
	call	getmonth
	jmp	.label_1428
.label_1426:
	mov	rbx, r14
	jmp	.label_1429
.label_1440:
	cmp	byte ptr [r12 + 0x34], 0
	je	.label_1431
	lea	rsi, [rsp + 8]
	mov	rdi, rbx
	call	strtold
	fstp	st(0)
	jmp	.label_1428
.label_1431:
	cmp	byte ptr [r12 + 0x32], 0
	jne	.label_1438
	cmp	byte ptr [r12 + 0x35], 0
	je	.label_1433
.label_1438:
	cmp	rbx, r15
	jae	.label_1430
	cmp	byte ptr [rbx], 0x2d
	sete	al
	jmp	.label_1441
.label_1433:
	mov	qword ptr [rsp + 8], r15
.label_1428:
	mov	byte ptr [r15], bpl
	mov	r15, qword ptr [rsp + 8]
.label_1429:
	mov	rdi, r14
	mov	rsi, rbx
	call	debug_width
	mov	r14, rax
	mov	rdi, rbx
	mov	rsi, r15
	call	debug_width
	mov	rdi, r14
	mov	rsi, rax
	call	mark_key
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1430:
	xor	eax, eax
.label_1441:
	movzx	eax, al
	add	rax, rbx
	mov	qword ptr [rsp + 0x10], rax
	lea	rdi, [rsp + 0x10]
	call	traverse_raw_number
	cmp	al, 0x30
	jb	.label_1428
	mov	rax, qword ptr [rsp + 0x10]
	cmp	byte ptr [r12 + 0x35], 0
	je	.label_1435
	movzx	ecx, byte ptr [rax]
	cmp	byte ptr [byte ptr [rcx + unit_order]],  0
	setne	cl
	jmp	.label_1439
.label_1435:
	xor	ecx, ecx
.label_1439:
	movzx	ecx, cl
	add	rax, rcx
	mov	qword ptr [rsp + 8], rax
	jmp	.label_1428
	.section	.text
	.align	16
	#Procedure 0x41104d
	.globl sub_41104d
	.type sub_41104d, @function
sub_41104d:

	nop	dword ptr [rax]
.label_1443:
	add	rcx, 0x10
.label_1445:
	cmp	rcx, qword ptr [rdi + 8]
	jae	.label_1442
	mov	rax, qword ptr [rcx]
	test	rax, rax
	je	.label_1443
.label_1444:
	ret	
.label_1442:
	push	rax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x411069
	.globl sub_411069
	.type sub_411069, @function
sub_411069:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x411070
	.globl hash_get_first
	.type hash_get_first, @function
hash_get_first:

	xor	eax, eax
	cmp	qword ptr [rdi + 0x20], 0
	je	.label_1444
	mov	rcx, qword ptr [rdi]
	jmp	.label_1445
	.section	.text
	.align	16
	#Procedure 0x41107e
	.globl sub_41107e
	.type sub_41107e, @function
sub_41107e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x411080
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	add	edi, -0x21
	cmp	edi, 0x5e
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x41108a
	.globl sub_41108a
	.type sub_41108a, @function
sub_41108a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411090

	.globl emit_stdin_note
	.type emit_stdin_note, @function
emit_stdin_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1446
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x4110b2
	.globl sub_4110b2
	.type sub_4110b2, @function
sub_4110b2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4110c0

	.globl c_isspace
	.type c_isspace, @function
c_isspace:
	add	edi, -9
	cmp	edi, 0x17
	ja	.label_1447
	mov	eax, 0x80001f
	mov	ecx, edi
	shr	eax, cl
	and	eax, 1
	ret	
.label_1447:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x4110d8
	.globl sub_4110d8
	.type sub_4110d8, @function
sub_4110d8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4110e0

	.globl raw_hasher
	.type raw_hasher, @function
raw_hasher:
	push	rbx
	mov	rbx, rsi
	mov	esi, 3
	call	rotr_sz
	xor	edx, edx
	div	rbx
	mov	rax, rdx
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4110f8
	.globl sub_4110f8
	.type sub_4110f8, @function
sub_4110f8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411100

	.globl filevercmp
	.type filevercmp, @function
filevercmp:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	rbx, rsi
	mov	rbp, rdi
	call	strcmp
	mov	r14d, eax
	xor	eax, eax
	test	r14d, r14d
	je	.label_1450
	mov	cl, byte ptr [rbp]
	mov	eax, 0xffffffff
	test	cl, cl
	je	.label_1450
	cmp	byte ptr [rbx], 0
	je	.label_1453
	cmp	cl, 0x2e
	jne	.label_1448
	cmp	byte ptr [rbp + 1], 0
	je	.label_1450
.label_1448:
	cmp	byte ptr [rbx], 0x2e
	jne	.label_1452
	cmp	byte ptr [rbx + 1], 0
	je	.label_1453
.label_1452:
	cmp	byte ptr [rbp], 0x2e
	jne	.label_1455
	cmp	byte ptr [rbp + 1], 0x2e
	jne	.label_1455
	cmp	byte ptr [rbp + 2], 0
	je	.label_1450
.label_1455:
	cmp	byte ptr [rbx], 0x2e
	jne	.label_1457
	cmp	byte ptr [rbx + 1], 0x2e
	jne	.label_1457
	cmp	byte ptr [rbx + 2], 0
	je	.label_1453
.label_1457:
	cmp	byte ptr [rbp], 0x2e
	jne	.label_1451
	cmp	byte ptr [rbx], 0x2e
	jne	.label_1450
	cmp	byte ptr [rbp], 0x2e
	je	.label_1454
.label_1451:
	cmp	byte ptr [rbx], 0x2e
	mov	eax, 1
	je	.label_1450
	cmp	byte ptr [rbp], 0x2e
	jne	.label_1456
.label_1454:
	cmp	byte ptr [rbx], 0x2e
	jne	.label_1456
	inc	rbp
	inc	rbx
.label_1456:
	mov	qword ptr [rsp + 8], rbp
	mov	qword ptr [rsp], rbx
	lea	rdi, [rsp + 8]
	call	match_suffix
	mov	r13, rax
	lea	rdi, [rsp]
	call	match_suffix
	test	r13, r13
	mov	rcx, qword ptr [rsp + 8]
	mov	r15, rcx
	cmovne	r15, r13
	sub	r15, rbp
	test	rax, rax
	mov	rdx, qword ptr [rsp]
	mov	r12, rdx
	cmovne	r12, rax
	sub	r12, rbx
	or	r13, rax
	je	.label_1449
	cmp	r15, r12
	jne	.label_1449
	mov	qword ptr [rsp + 0x10], rdx
	mov	r13, rcx
	mov	rdi, rbp
	mov	rsi, rbx
	mov	rdx, r15
	call	strncmp
	test	eax, eax
	jne	.label_1449
	sub	r13, rbp
	mov	rax, qword ptr [rsp + 0x10]
	sub	rax, rbx
	mov	r12, rax
	mov	r15, r13
.label_1449:
	mov	rdi, rbp
	mov	rsi, r15
	mov	rdx, rbx
	mov	rcx, r12
	call	verrevcmp
	test	eax, eax
	cmovne	r14d, eax
	mov	eax, r14d
	jmp	.label_1450
.label_1453:
	mov	eax, 1
.label_1450:
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
	#Procedure 0x411264
	.globl sub_411264
	.type sub_411264, @function
sub_411264:

	nop	word ptr cs:[rax + rax]
.label_1458:
	mov	rcx, qword ptr [rax + 0x38]
	mov	rdi, qword ptr [rax + 0x48]
	jmp	rcx
	.section	.text
	.align	16
	#Procedure 0x41127a
	.globl sub_41127a
	.type sub_41127a, @function
sub_41127a:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x411281

	.globl call_chunkfun
	.type call_chunkfun, @function
call_chunkfun:
	mov	rax, rdi
	test	byte ptr [rax + 0x50], 1
	jne	.label_1458
	mov	rdi, rsi
	jmp	qword ptr [rax + 0x38]
.label_1462:
	mov	rax, rbx
	jmp	.label_1459
	.section	.text
	.align	16
	#Procedure 0x411295

	.globl fopen_safer
	.type fopen_safer, @function
fopen_safer:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rsi
	call	fopen
	mov	rbx, rax
	xor	eax, eax
	test	rbx, rbx
	je	.label_1459
	mov	rdi, rbx
	call	fileno
	cmp	eax, 2
	ja	.label_1462
	mov	edi, eax
	call	dup_safer
	mov	ebp, eax
	test	ebp, ebp
	js	.label_1463
	mov	rdi, rbx
	call	rpl_fclose
	test	eax, eax
	jne	.label_1460
	mov	edi, ebp
	mov	rsi, r14
	call	fdopen
	test	rax, rax
	jne	.label_1459
.label_1460:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	jmp	.label_1461
.label_1463:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	rdi, rbx
	call	rpl_fclose
	mov	dword ptr [rbp], r14d
.label_1461:
	xor	eax, eax
.label_1459:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x411316
	.globl sub_411316
	.type sub_411316, @function
sub_411316:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411320

	.globl parse_omp_threads
	.type parse_omp_threads, @function
parse_omp_threads:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	xor	r14d, r14d
	test	rbx, rbx
	je	.label_1464
	mov	al, byte ptr [rbx]
	jmp	.label_1468
	.section	.text
	.align	16
	#Procedure 0x411337
	.globl sub_411337
	.type sub_411337, @function
sub_411337:

	nop	word ptr [rax + rax]
.label_1470:
	movzx	eax, byte ptr [rbx + 1]
	inc	rbx
.label_1468:
	test	al, al
	je	.label_1465
	movsx	edi, al
	call	c_isspace
	test	al, al
	jne	.label_1470
.label_1465:
	movsx	edi, byte ptr [rbx]
	call	c_isdigit
	xor	r14d, r14d
	test	al, al
	je	.label_1464
	mov	qword ptr [rsp], 0
	lea	rsi, [rsp]
	mov	edx, 0xa
	mov	rdi, rbx
	call	strtoul
	mov	r14, rax
	cmp	qword ptr [rsp], 0
	je	.label_1472
	mov	rax, qword ptr [rsp]
	mov	al, byte ptr [rax]
	jmp	.label_1466
	.section	.text
	.align	16
	#Procedure 0x411391
	.globl sub_411391
	.type sub_411391, @function
sub_411391:

	nop	word ptr cs:[rax + rax]
.label_1467:
	mov	rcx, qword ptr [rsp]
.label_1471:
	mov	al, byte ptr [rcx]
	cmp	al, 0x2c
	je	.label_1464
	test	al, al
	je	.label_1464
.label_1472:
	xor	r14d, r14d
.label_1464:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x4113bc
	.globl sub_4113bc
	.type sub_4113bc, @function
sub_4113bc:

	nop	
.label_1469:
	lea	rax, [rcx + 1]
	mov	qword ptr [rsp], rax
	movzx	eax, byte ptr [rcx + 1]
.label_1466:
	test	al, al
	je	.label_1467
	movsx	edi, al
	call	c_isspace
	mov	rcx, qword ptr [rsp]
	test	al, al
	jne	.label_1469
	jmp	.label_1471
	.section	.text
	.align	16
	#Procedure 0x411445
	.globl sub_411445
	.type sub_411445, @function
sub_411445:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411452
	.globl sub_411452
	.type sub_411452, @function
sub_411452:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411476
	.globl sub_411476
	.type sub_411476, @function
sub_411476:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411489
	.globl sub_411489
	.type sub_411489, @function
sub_411489:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x411490

	.globl stat
	.type stat, @function
stat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__xstat
	.section	.text
	.align	16
	#Procedure 0x4114a0

	.globl fstat
	.type fstat, @function
fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat
