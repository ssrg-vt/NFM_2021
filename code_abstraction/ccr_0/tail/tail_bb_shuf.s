	.section	.text
	.align	16
	#Procedure 0x401b79
	.globl sub_401b79
	.type sub_401b79, @function
sub_401b79:

	hlt	
	.section	.text
	.align	16
	#Procedure 0x401b7a
	.globl sub_401b7a
	.type sub_401b7a, @function
sub_401b7a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401bb2
	.globl sub_401bb2
	.type sub_401bb2, @function
sub_401bb2:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401bfa
	.globl sub_401bfa
	.type sub_401bfa, @function
sub_401bfa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401c1c
	.globl sub_401c1c
	.type sub_401c1c, @function
sub_401c1c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401c2d
	.globl sub_401c2d
	.type sub_401c2d, @function
sub_401c2d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401c46
	.globl sub_401c46
	.type sub_401c46, @function
sub_401c46:

	nop	word ptr cs:[rax + rax]
.label_11:
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
	#Procedure 0x401c86
	.globl sub_401c86
	.type sub_401c86, @function
sub_401c86:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401c89

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
.label_10:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	rdx, qword ptr [rbp - 8]
	mov	byte ptr [rbp - 0x19], cl
	jae	.label_9
	mov	rax, qword ptr [rbp - 8]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	cmp	rdx, 0
	setne	sil
	mov	byte ptr [rbp - 0x19], sil
.label_9:
	mov	al, byte ptr [rbp - 0x19]
	test	al, 1
	jne	.label_8
	jmp	.label_11
.label_8:
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
	jmp	.label_10
	.section	.text
	.align	16
	#Procedure 0x401d10

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_16
	movabs	rdi, OFFSET FLAT:label_13
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	dword ptr [rbp - 0x1c], eax
	call	abort
.label_12:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rax
.label_19:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	sub	rax, rcx
	cmp	rax, 7
	jl	.label_15
	movabs	rsi, OFFSET FLAT:label_14
	mov	eax, 7
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, -7
	mov	rdi, rcx
	call	strncmp
	cmp	eax, 0
	jne	.label_15
	movabs	rsi, OFFSET FLAT:label_17
	mov	eax, 3
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rcx
	mov	rdi, qword ptr [rbp - 0x18]
	call	strncmp
	cmp	eax, 0
	jne	.label_18
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 3
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname]],  rax
.label_18:
	jmp	.label_15
.label_15:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [program_name]],  rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname_full]],  rax
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401dfb
	.globl sub_401dfb
	.type sub_401dfb, @function
sub_401dfb:

	nop	dword ptr [rax]
.label_16:
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 8]
	call	strrchr
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_12
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_19
.label_20:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_21
.label_21:
	mov	rax, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rax]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401e4b
	.globl sub_401e4b
	.type sub_401e4b, @function
sub_401e4b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401e50
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	je	.label_20
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_21
	.section	.text
	.align	16
	#Procedure 0x401e70

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
	#Procedure 0x401e98
	.globl sub_401e98
	.type sub_401e98, @function
sub_401e98:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401ea0

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
	jne	.label_23
	movabs	rax, OFFSET FLAT:label_22
	mov	qword ptr [rbp - 8], rax
.label_23:
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_24
	movabs	rax, OFFSET FLAT:label_25
	mov	qword ptr [rbp - 8], rax
.label_24:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401ef7
	.globl sub_401ef7
	.type sub_401ef7, @function
sub_401ef7:

	nop	word ptr [rax + rax]
.label_28:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_26
.label_26:
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
	je	.label_27
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_27:
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0x78
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402023
	.globl sub_402023
	.type sub_402023, @function
sub_402023:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40202f

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
	je	.label_28
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_26
	.section	.text
	.align	16
	#Procedure 0x402060

	.globl dtotimespec
	.type dtotimespec, @function
dtotimespec:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	movsd	xmm1,  qword ptr [word ptr [rip + label_29]]
	movsd	qword ptr [rbp - 0x18], xmm0
	movsd	xmm0, qword ptr [rbp - 0x18]
	ucomisd	xmm0, xmm1
	ja	.label_30
	movabs	rdi, 0x8000000000000000
	xor	eax, eax
	mov	esi, eax
	call	make_timespec
	mov	qword ptr [rbp - 0x10], rax
	mov	qword ptr [rbp - 8], rdx
	jmp	.label_35
.label_30:
	movsd	xmm0,  qword ptr [word ptr [rip + label_31]]
	ucomisd	xmm0, qword ptr [rbp - 0x18]
	ja	.label_32
	movabs	rdi, 0x7fffffffffffffff
	mov	eax, 0x3b9ac9ff
	mov	esi, eax
	call	make_timespec
	mov	qword ptr [rbp - 0x10], rax
	mov	qword ptr [rbp - 8], rdx
	jmp	.label_35
.label_32:
	mov	eax, 0x3b9aca00
	mov	ecx, eax
	movsd	xmm0,  qword ptr [word ptr [rip + label_33]]
	cvttsd2si	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rdx
	movsd	xmm1, qword ptr [rbp - 0x18]
	cvtsi2sd	xmm2, qword ptr [rbp - 0x20]
	subsd	xmm1, xmm2
	mulsd	xmm0, xmm1
	movsd	qword ptr [rbp - 0x28], xmm0
	cvttsd2si	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x30], rdx
	cvtsi2sd	xmm0, qword ptr [rbp - 0x30]
	movsd	xmm1, qword ptr [rbp - 0x28]
	ucomisd	xmm1, xmm0
	seta	sil
	and	sil, 1
	movzx	eax, sil
	movsxd	rdx, eax
	add	rdx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x30], rdx
	mov	rax, qword ptr [rbp - 0x30]
	cqo	
	idiv	rcx
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x30]
	cqo	
	idiv	rcx
	mov	qword ptr [rbp - 0x30], rdx
	cmp	qword ptr [rbp - 0x30], 0
	jge	.label_34
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, -1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 0x3b9aca00
	mov	qword ptr [rbp - 0x30], rax
.label_34:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x30]
	call	make_timespec
	mov	qword ptr [rbp - 0x10], rax
	mov	qword ptr [rbp - 8], rdx
.label_35:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4021a1
	.globl sub_4021a1
	.type sub_4021a1, @function
sub_4021a1:

	nop	word ptr cs:[rax + rax]
.label_43:
	jmp	.label_37
.label_37:
	jmp	.label_41
.label_41:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_42
.label_40:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
.label_39:
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4021d9
	.globl sub_4021d9
	.type sub_4021d9, @function
sub_4021d9:

	nop	dword ptr [rax]
.label_38:
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
	jmp	.label_36
	.section	.text
	.align	16
	#Procedure 0x40220f
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
.label_42:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_40
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax], 0
	je	.label_37
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x38], rax
.label_36:
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_43
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x20]
	jb	.label_38
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_39
.label_45:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_44
.label_44:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x10]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40229e
	.globl sub_40229e
	.type sub_40229e, @function
sub_40229e:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4022a7
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
	je	.label_45
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_44
	.section	.text
	.align	16
	#Procedure 0x4022d0
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
	#Procedure 0x402307
	.globl sub_402307
	.type sub_402307, @function
sub_402307:

	nop	word ptr [rax + rax]
.label_54:
	mov	eax, 1
	mov	dword ptr [rbp - 0x4c], eax
	jmp	.label_46
.label_46:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x50], eax
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_48
	xor	eax, eax
	mov	dword ptr [rbp - 0x54], eax
	jmp	.label_47
.label_48:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x54], ecx
.label_47:
	mov	eax, dword ptr [rbp - 0x54]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x58], eax
	mov	qword ptr [rbp - 0x60], rcx
	call	quote
	movabs	rdx, OFFSET FLAT:label_49
	mov	edi, dword ptr [rbp - 0x50]
	mov	esi, dword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	r8, rax
	mov	al, 0
	call	error
.label_51:
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0x58
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402385
	.globl sub_402385
	.type sub_402385, @function
sub_402385:

	nop	word ptr cs:[rax + rax]
.label_57:
	cmp	dword ptr [rbp - 0x40], 1
	jne	.label_53
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	jmp	.label_55
.label_53:
	cmp	dword ptr [rbp - 0x40], 3
	jne	.label_52
	call	__errno_location
	mov	dword ptr [rax], 0
.label_52:
	jmp	.label_55
.label_55:
	jmp	.label_50
.label_50:
	cmp	dword ptr [rbp - 0x40], 0
	je	.label_51
	cmp	dword ptr [rbp - 0x3c], 0
	je	.label_54
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0x4c], eax
	jmp	.label_46
.label_59:
	call	__errno_location
	mov	dword ptr [rax], 0x22
.label_58:
	jmp	.label_56
.label_56:
	jmp	.label_50
	.section	.text
	.align	16
	#Procedure 0x4023fc

	.globl xnumtoumax
	.type xnumtoumax, @function
xnumtoumax:
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 0x58
	mov	eax, dword ptr [rbp + 0x10]
	xor	r10d, r10d
	mov	r11d, r10d
	lea	rbx, [rbp - 0x48]
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	qword ptr [rbp - 0x38], r9
	mov	dword ptr [rbp - 0x3c], eax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rbp - 0x14]
	mov	r8, qword ptr [rbp - 0x30]
	mov	rsi, r11
	mov	rcx, rbx
	call	xstrtoumax
	mov	dword ptr [rbp - 0x40], eax
	cmp	dword ptr [rbp - 0x40], 0
	jne	.label_57
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x20]
	jb	.label_60
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x48]
	jae	.label_56
.label_60:
	mov	dword ptr [rbp - 0x40], 1
	cmp	qword ptr [rbp - 0x48], 0x3fffffff
	jbe	.label_59
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	jmp	.label_58
	.section	.text
	.align	16
	#Procedure 0x402490
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
	jb	.label_61
	jmp	.label_64
.label_64:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 0x1a
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_61
	jmp	.label_62
.label_62:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_63
	jmp	.label_61
.label_61:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_65
.label_63:
	mov	byte ptr [rbp - 1], 0
.label_65:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4024f5
	.globl sub_4024f5
	.type sub_4024f5, @function
sub_4024f5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402500

	.globl argmatch_valid
	.type argmatch_valid, @function
argmatch_valid:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	movabs	rax, OFFSET FLAT:label_66
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
.label_71:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_69
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_74
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	imul	rcx, qword ptr [rbp - 0x20]
	add	rax, rcx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	memcmp
	cmp	eax, 0
	je	.label_70
.label_74:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x38], rdi
	mov	rdi, rax
	call	quote
	movabs	rsi, OFFSET FLAT:label_67
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
	jmp	.label_68
.label_69:
	mov	edi, 0xa
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	putc_unlocked
	mov	dword ptr [rbp - 0x50], eax
	add	rsp, 0x50
	pop	rbp
	ret	
.label_70:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x48], rdi
	mov	rdi, rax
	call	quote
	movabs	rsi, OFFSET FLAT:label_73
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x4c], eax
.label_68:
	jmp	.label_72
.label_72:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_71
.label_78:
	mov	rax, qword ptr [rbp - 0x198]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x1a8], rdx
.label_75:
	mov	rax, qword ptr [rbp - 0x1a8]
	lea	rcx, [rbp - 0x30]
	mov	edx, dword ptr [rax]
	mov	dword ptr [rbp - 0x10], edx
	mov	qword ptr [rbp - 0x1b0], rcx
.label_77:
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
	#Procedure 0x4026a9
	.globl sub_4026a9
	.type sub_4026a9, @function
sub_4026a9:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4026b4

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
	je	.label_76
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
.label_76:
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
	je	.label_77
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
	ja	.label_78
	mov	eax, dword ptr [rbp - 0x19c]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x198]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x1a8], rcx
	jmp	.label_75
	.section	.text
	.align	16
	#Procedure 0x402850

	.globl allocate_entry
	.type allocate_entry, @function
allocate_entry:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	cmp	qword ptr [rdi + 0x48], 0
	je	.label_79
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x48]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x48], rax
	jmp	.label_80
.label_79:
	mov	eax, 0x10
	mov	edi, eax
	call	malloc
	mov	qword ptr [rbp - 0x10], rax
.label_80:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4028a6
	.globl sub_4028a6
	.type sub_4028a6, @function
sub_4028a6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4028b0

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
	#Procedure 0x40295d
	.globl sub_40295d
	.type sub_40295d, @function
sub_40295d:

	nop	dword ptr [rax]
.label_86:
	test	byte ptr [rbp - 0x41], 1
	je	.label_81
	mov	qword ptr [rbp - 8], -2
	jmp	.label_82
	.section	.text
	.align	16
	#Procedure 0x402977

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
.label_92:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_86
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x38]
	call	strncmp
	cmp	eax, 0
	jne	.label_87
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx + rax*8]
	call	strlen
	cmp	rax, qword ptr [rbp - 0x38]
	jne	.label_88
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_82
.label_81:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 8], rax
.label_82:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402a1f
	.globl sub_402a1f
	.type sub_402a1f, @function
sub_402a1f:

	nop	word ptr cs:[rax + rax]
.label_88:
	cmp	qword ptr [rbp - 0x40], -1
	jne	.label_85
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_84
.label_85:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_89
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
	je	.label_91
.label_89:
	mov	byte ptr [rbp - 0x41], 1
.label_91:
	jmp	.label_84
.label_84:
	jmp	.label_83
.label_83:
	jmp	.label_87
.label_87:
	jmp	.label_90
.label_90:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_92
	.section	.text
	.align	16
	#Procedure 0x402ab0

	.globl emit_stdin_note
	.type emit_stdin_note, @function
emit_stdin_note:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_93
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 4], eax
	add	rsp, 0x10
	pop	rbp
	ret	
.label_1744:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x200
	call	bkm_scale
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_98
.label_120:
	movzx	eax, byte ptr [rbp - 0x59]
	cmp	eax, 0x2d
	jne	.label_107
	mov	dword ptr [rbp - 4], 4
	jmp	.label_95
.label_113:
	jmp	.label_99
.label_1737:
	lea	rdi, [rbp - 0x48]
	mov	edx, 3
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_98
.label_133:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	or	edx, 2
	mov	dword ptr [rbp - 4], edx
	jmp	.label_95
.label_1736:
	lea	rdi, [rbp - 0x48]
	mov	edx, 6
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_98
.label_1746:
	lea	rdi, [rbp - 0x48]
	mov	esi, 2
	call	bkm_scale
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_98
.label_117:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_115
	mov	dword ptr [rbp - 0x60], 0x400
	mov	dword ptr [rbp - 0x64], 1
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	jne	.label_123
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	or	edx, 2
	mov	dword ptr [rbp - 4], edx
	jmp	.label_95
.label_132:
	mov	dword ptr [rbp - 0x60], 0x3e8
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, 1
	mov	dword ptr [rbp - 0x64], eax
.label_102:
	jmp	.label_128
.label_128:
	jmp	.label_122
.label_122:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x42
	mov	eax, ecx
	sub	ecx, 0x35
	mov	qword ptr [rbp - 0xc0], rax
	mov	dword ptr [rbp - 0xc4], ecx
	ja	.label_133
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_97]]
	jmp	rcx
.label_1738:
	lea	rdi, [rbp - 0x48]
	mov	edx, 1
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_98
.label_119:
	movabs	rdi, OFFSET FLAT:label_109
	movabs	rsi, OFFSET FLAT:label_110
	mov	edx, 0x54
	movabs	rcx, OFFSET FLAT:label_111
	call	__assert_fail
.label_1741:
	lea	rdi, [rbp - 0x48]
	mov	edx, 4
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_98
.label_103:
	mov	dword ptr [rbp - 4], 4
	jmp	.label_95
.label_1745:
	mov	dword ptr [rbp - 0x68], 0
	jmp	.label_98
	.section	.text
	.align	16
	#Procedure 0x402c8e

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
	jg	.label_119
	cmp	dword ptr [rbp - 0x1c], 0x24
	jg	.label_119
	jmp	.label_127
.label_127:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_130
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_114
.label_1742:
	lea	rdi, [rbp - 0x48]
	mov	edx, 8
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_98
.label_1735:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x400
	call	bkm_scale
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_98
.label_1740:
	lea	rdi, [rbp - 0x48]
	mov	edx, 5
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_98
.label_98:
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
	je	.label_105
	mov	eax, dword ptr [rbp - 0x4c]
	or	eax, 2
	mov	dword ptr [rbp - 0x4c], eax
.label_105:
	jmp	.label_115
.label_115:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
.label_95:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xd0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402d84
	.globl sub_402d84
	.type sub_402d84, @function
sub_402d84:

	nop	dword ptr [rax + rax]
.label_104:
	mov	dword ptr [rbp - 0x4c], 1
.label_129:
	jmp	.label_99
.label_99:
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_117
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
	jmp	.label_95
.label_123:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x45
	mov	dword ptr [rbp - 0x7c], ecx
	mov	dword ptr [rbp - 0x80], edx
	je	.label_96
	jmp	.label_131
.label_131:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0x84], eax
	je	.label_96
	jmp	.label_134
.label_134:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x4b
	mov	dword ptr [rbp - 0x88], eax
	je	.label_96
	jmp	.label_136
.label_136:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0x8c], eax
	je	.label_96
	jmp	.label_101
.label_101:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x50
	mov	dword ptr [rbp - 0x90], eax
	je	.label_96
	jmp	.label_125
.label_125:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x54
	mov	dword ptr [rbp - 0x94], eax
	je	.label_96
	jmp	.label_112
.label_112:
	mov	eax, dword ptr [rbp - 0x7c]
	add	eax, -0x59
	sub	eax, 2
	mov	dword ptr [rbp - 0x98], eax
	jb	.label_96
	jmp	.label_116
.label_116:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0x9c], eax
	je	.label_96
	jmp	.label_106
.label_106:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x6b
	mov	dword ptr [rbp - 0xa0], eax
	je	.label_96
	jmp	.label_118
.label_118:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0xa4], eax
	je	.label_96
	jmp	.label_121
.label_121:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0xa8], eax
	jne	.label_122
	jmp	.label_96
.label_96:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x30]
	call	strchr
	cmp	rax, 0
	je	.label_128
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 1]
	mov	edx, ecx
	sub	edx, 0x42
	mov	dword ptr [rbp - 0xac], ecx
	mov	dword ptr [rbp - 0xb0], edx
	je	.label_132
	jmp	.label_135
.label_135:
	mov	eax, dword ptr [rbp - 0xac]
	sub	eax, 0x44
	mov	dword ptr [rbp - 0xb4], eax
	je	.label_132
	jmp	.label_100
.label_100:
	mov	eax, dword ptr [rbp - 0xac]
	sub	eax, 0x69
	mov	dword ptr [rbp - 0xb8], eax
	jne	.label_102
	jmp	.label_126
.label_126:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x42
	jne	.label_108
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, 2
	mov	dword ptr [rbp - 0x64], eax
.label_108:
	jmp	.label_102
.label_130:
	lea	rax, [rbp - 0x38]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_114
.label_114:
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x40], rax
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x59], cl
.label_124:
	movzx	eax, byte ptr [rbp - 0x59]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x78], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x78]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x2000
	cmp	edx, 0
	je	.label_120
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x58], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x59], dl
	jmp	.label_124
.label_94:
	call	__errno_location
	cmp	dword ptr [rax], 0
	je	.label_129
	call	__errno_location
	cmp	dword ptr [rax], 0x22
	je	.label_104
	mov	dword ptr [rbp - 4], 4
	jmp	.label_95
.label_107:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rbp - 0x1c]
	call	strtoumax
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x10]
	jne	.label_94
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_103
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_103
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	je	.label_103
	mov	qword ptr [rbp - 0x48], 1
	jmp	.label_113
.label_1743:
	lea	rdi, [rbp - 0x48]
	mov	edx, 7
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_98
.label_1739:
	lea	rdi, [rbp - 0x48]
	mov	edx, 2
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_98
.label_138:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	call	__gl_setmode
	mov	dword ptr [rbp - 0x10], eax
.label_137:
	mov	eax, dword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4030a7
	.globl sub_4030a7
	.type sub_4030a7, @function
sub_4030a7:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4030b2

	.globl set_binary_mode
	.type set_binary_mode, @function
set_binary_mode:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	edi, dword ptr [rbp - 4]
	call	__gl_setmode_check
	mov	dword ptr [rbp - 0xc], eax
	cmp	dword ptr [rbp - 0xc], 0
	je	.label_138
	mov	eax, dword ptr [rbp - 0xc]
	mov	dword ptr [rbp - 0x10], eax
	jmp	.label_137
.label_143:
	jmp	.label_139
.label_139:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_142
	.section	.text
	.align	16
	#Procedure 0x4030f6

	.globl tailable_stdin
	.type tailable_stdin, @function
tailable_stdin:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], 0
.label_142:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_144
	mov	rax, qword ptr [rbp - 0x20]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x10]
	test	byte ptr [rax + 0x34], 1
	jne	.label_143
	mov	rax, qword ptr [rbp - 0x20]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	mov	ecx, OFFSET FLAT:label_140
	mov	esi, ecx
	call	strcmp
	cmp	eax, 0
	jne	.label_143
	mov	byte ptr [rbp - 1], 1
	jmp	.label_141
.label_144:
	mov	byte ptr [rbp - 1], 0
.label_141:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403171
	.globl sub_403171
	.type sub_403171, @function
sub_403171:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403180

	.globl wd_hasher
	.type wd_hasher, @function
wd_hasher:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	movsxd	rax, dword ptr [rsi + 0x44]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	mov	rax, rdx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4031a9
	.globl sub_4031a9
	.type sub_4031a9, @function
sub_4031a9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4031b0
	.globl get_stat_birthtime
	.type get_stat_birthtime, @function
get_stat_birthtime:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x28], -1
	mov	qword ptr [rbp - 0x20], -1
	movups	xmm0, xmmword ptr [rbp - 0x28]
	movaps	xmmword ptr [rbp - 0x10], xmm0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4031da
	.globl sub_4031da
	.type sub_4031da, @function
sub_4031da:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4031e0

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
	#Procedure 0x4031f2
	.globl sub_4031f2
	.type sub_4031f2, @function
sub_4031f2:

	nop	word ptr cs:[rax + rax]
.label_151:
	lea	rdx, [rbp - 0x30]
	xor	ecx, ecx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	hash_find_entry
	cmp	rax, 0
	je	.label_149
	call	abort
.label_161:
	lea	rdx, [rbp - 0x30]
	xor	ecx, ecx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	hash_find_entry
	mov	qword ptr [rbp - 0x28], rax
	cmp	rax, 0
	je	.label_164
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_154
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_154:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_150
.label_160:
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
	js	.label_162
	movss	xmm0, dword ptr [rbp - 0xb0]
	movss	dword ptr [rbp - 0xb4], xmm0
.label_162:
	movss	xmm0, dword ptr [rbp - 0xb4]
	mov	rax, qword ptr [rbp - 0x38]
	mulss	xmm0, dword ptr [rax + 0xc]
	mov	rax, qword ptr [rbp - 0x38]
	mulss	xmm0, dword ptr [rax + 8]
	movss	dword ptr [rbp - 0xac], xmm0
.label_153:
	movss	xmm0, dword ptr [rbp - 0xac]
	movss	xmm1,  dword ptr [dword ptr [rip + label_156]]
	movss	dword ptr [rbp - 0x3c], xmm0
	movss	xmm0, dword ptr [rbp - 0x3c]
	ucomiss	xmm0, xmm1
	jb	.label_157
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_150
.label_149:
	jmp	.label_145
.label_145:
	jmp	.label_147
.label_147:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax], 0
	je	.label_148
	mov	rdi, qword ptr [rbp - 0x10]
	call	allocate_entry
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x48], 0
	jne	.label_146
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_150
.label_148:
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
.label_150:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xc0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40337f
	.globl sub_40337f
	.type sub_40337f, @function
sub_40337f:

	nop	word ptr cs:[rax + rax]
.label_157:
	mov	rdi, qword ptr [rbp - 0x10]
	movss	xmm0, dword ptr [rbp - 0x3c]
	movss	xmm1,  dword ptr [dword ptr [rip + label_152]]
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
	jne	.label_151
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_150
	.section	.text
	.align	16
	#Procedure 0x4033de

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
	jne	.label_161
	call	abort
.label_146:
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
	jmp	.label_150
.label_164:
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
	js	.label_155
	movss	xmm0, dword ptr [rbp - 0x5c]
	movss	dword ptr [rbp - 0x60], xmm0
.label_155:
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
	js	.label_159
	movss	xmm0, dword ptr [rbp - 0x6c]
	movss	dword ptr [rbp - 0x70], xmm0
.label_159:
	movss	xmm0, dword ptr [rbp - 0x70]
	movss	xmm1, dword ptr [rbp - 0x68]
	mulss	xmm1, xmm0
	movss	xmm0, dword ptr [rbp - 0x64]
	ucomiss	xmm0, xmm1
	jbe	.label_147
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
	js	.label_158
	movss	xmm0, dword ptr [rbp - 0x8c]
	movss	dword ptr [rbp - 0x90], xmm0
.label_158:
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
	js	.label_165
	movss	xmm0, dword ptr [rbp - 0x9c]
	movss	dword ptr [rbp - 0xa0], xmm0
.label_165:
	movss	xmm0, dword ptr [rbp - 0xa0]
	movss	xmm1, dword ptr [rbp - 0x98]
	mulss	xmm1, xmm0
	movss	xmm0, dword ptr [rbp - 0x94]
	ucomiss	xmm0, xmm1
	jbe	.label_145
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x38]
	test	byte ptr [rax + 0x10], 1
	je	.label_160
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
	js	.label_163
	movss	xmm0, dword ptr [rbp - 0xa4]
	movss	dword ptr [rbp - 0xa8], xmm0
.label_163:
	movss	xmm0, dword ptr [rbp - 0xa8]
	mov	rax, qword ptr [rbp - 0x38]
	mulss	xmm0, dword ptr [rax + 0xc]
	movss	dword ptr [rbp - 0xac], xmm0
	jmp	.label_153
.label_170:
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + 8], rax
	je	.label_166
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	movabs	rax, OFFSET FLAT:slot0
	mov	qword ptr [word ptr [slotvec0]],  0x100
	mov	qword ptr [word ptr [label_168]],  rax
.label_166:
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 8], rax
	je	.label_167
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	free
	movabs	rax, OFFSET FLAT:slotvec0
	mov	qword ptr [word ptr [slotvec]],  rax
.label_167:
	mov	dword ptr [dword ptr [nslots]],  1
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403726
	.globl sub_403726
	.type sub_403726, @function
sub_403726:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403732
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rax,  qword ptr [word ptr [slotvec]]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 0xc], 1
.label_169:
	mov	eax, dword ptr [rbp - 0xc]
	cmp	eax,  dword ptr [dword ptr [nslots]]
	jge	.label_170
	movsxd	rax, dword ptr [rbp - 0xc]
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, 1
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_169
.label_174:
	mov	edi, 1
	call	exit
	.section	.text
	.align	16
	#Procedure 0x40378a
	.globl sub_40378a
	.type sub_40378a, @function
sub_40378a:

	nop	dword ptr [rax]
.label_181:
	call	abort
.label_171:
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_175
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x58], esi
	call	gettext
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x60], rax
	call	quotearg_n_style_colon
	xor	edi, edi
	mov	r8, qword ptr [rbp - 0x48]
	mov	esi, dword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_174
.label_176:
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_177
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x64], esi
	call	gettext
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x70], rax
	call	quotearg_n_style_colon
	xor	edi, edi
	mov	r8, qword ptr [rbp - 0x48]
	mov	esi, dword ptr [rbp - 0x64]
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_174
	.section	.text
	.align	16
	#Procedure 0x403824

	.globl xlseek
	.type xlseek, @function
xlseek:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x80
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x14], edx
	mov	qword ptr [rbp - 0x20], rcx
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rbp - 0x14]
	call	lseek
	xor	edx, edx
	mov	ecx, edx
	mov	qword ptr [rbp - 0x28], rax
	cmp	rcx, qword ptr [rbp - 0x28]
	jg	.label_172
	mov	rax, qword ptr [rbp - 0x28]
	add	rsp, 0x80
	pop	rbp
	ret	
.label_179:
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_180
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x74], esi
	call	gettext
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x80], rax
	call	quotearg_n_style_colon
	xor	edi, edi
	mov	r8, qword ptr [rbp - 0x48]
	mov	esi, dword ptr [rbp - 0x74]
	mov	rdx, qword ptr [rbp - 0x80]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_174
.label_172:
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rbp - 0x40]
	call	offtostr
	mov	qword ptr [rbp - 0x48], rax
	mov	ecx, dword ptr [rbp - 0x14]
	test	ecx, ecx
	mov	dword ptr [rbp - 0x4c], ecx
	je	.label_171
	jmp	.label_173
.label_173:
	mov	eax, dword ptr [rbp - 0x4c]
	sub	eax, 1
	mov	dword ptr [rbp - 0x50], eax
	je	.label_176
	jmp	.label_178
.label_178:
	mov	eax, dword ptr [rbp - 0x4c]
	sub	eax, 2
	mov	dword ptr [rbp - 0x54], eax
	je	.label_179
	jmp	.label_181
	.section	.text
	.align	16
	#Procedure 0x403900
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
	je	.label_182
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_183
.label_182:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_183
.label_183:
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
	#Procedure 0x4039c5
	.globl sub_4039c5
	.type sub_4039c5, @function
sub_4039c5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4039d0

	.globl xset_binary_mode
	.type xset_binary_mode, @function
xset_binary_mode:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	call	set_binary_mode
	cmp	eax, 0
	jge	.label_184
	call	xset_binary_mode_error
.label_184:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4039fd
	.globl sub_4039fd
	.type sub_4039fd, @function
sub_4039fd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403a00
	.globl timespec_sign
	.type timespec_sign, @function
timespec_sign:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 8], rsi
	cmp	qword ptr [rbp - 0x10], 0
	jge	.label_185
	mov	eax, 0xffffffff
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_187
.label_185:
	mov	al, 1
	cmp	qword ptr [rbp - 0x10], 0
	mov	byte ptr [rbp - 0x15], al
	jne	.label_186
	cmp	qword ptr [rbp - 8], 0
	setne	al
	mov	byte ptr [rbp - 0x15], al
.label_186:
	mov	al, byte ptr [rbp - 0x15]
	and	al, 1
	movzx	ecx, al
	mov	dword ptr [rbp - 0x14], ecx
.label_187:
	mov	eax, dword ptr [rbp - 0x14]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403a4f
	.globl sub_403a4f
	.type sub_403a4f, @function
sub_403a4f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403a50
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
	je	.label_188
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_189
.label_188:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_189
.label_189:
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
	#Procedure 0x403ac2
	.globl sub_403ac2
	.type sub_403ac2, @function
sub_403ac2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403ad0

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
	#Procedure 0x403af5
	.globl sub_403af5
	.type sub_403af5, @function
sub_403af5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403b00
	.globl get_stat_mtime_ns
	.type get_stat_mtime_ns, @function
get_stat_mtime_ns:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rdi + 0x60]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403b12
	.globl sub_403b12
	.type sub_403b12, @function
sub_403b12:

	nop	word ptr cs:[rax + rax]
.label_194:
	mov	byte ptr [rbp - 1], 0
.label_193:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403b2e
	.globl sub_403b2e
	.type sub_403b2e, @function
sub_403b2e:

	nop	dword ptr [rax]
.label_190:
	jmp	.label_191
.label_191:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_192
	.section	.text
	.align	16
	#Procedure 0x403b48

	.globl any_remote_file
	.type any_remote_file, @function
any_remote_file:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], 0
.label_192:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_194
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x20]
	imul	rcx, rcx, 0x60
	add	rcx, qword ptr [rbp - 0x10]
	cmp	eax, dword ptr [rcx + 0x38]
	jg	.label_190
	mov	rax, qword ptr [rbp - 0x20]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x10]
	test	byte ptr [rax + 0x35], 1
	je	.label_190
	mov	byte ptr [rbp - 1], 1
	jmp	.label_193
	.section	.text
	.align	16
	#Procedure 0x403ba0
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_195
	jmp	.label_197
.label_197:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x61
	add	eax, 0x41
	mov	dword ptr [rbp - 4], eax
	jmp	.label_196
.label_195:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_196:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403bd7
	.globl sub_403bd7
	.type sub_403bd7, @function
sub_403bd7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403be0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_198
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	jne	.label_199
.label_198:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
	jmp	.label_200
.label_199:
	mov	rdi, qword ptr [rbp - 0x10]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
.label_200:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403c38
	.globl sub_403c38
	.type sub_403c38, @function
sub_403c38:

	nop	dword ptr [rax + rax]
.label_202:
	mov	dword ptr [rbp - 4], 0
.label_201:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403c50
	.globl sub_403c50
	.type sub_403c50, @function
sub_403c50:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403c57

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
	jne	.label_203
	test	byte ptr [rbp - 0x13], 1
	je	.label_202
	test	byte ptr [rbp - 0x11], 1
	jne	.label_203
	call	__errno_location
	cmp	dword ptr [rax], 9
	je	.label_202
.label_203:
	test	byte ptr [rbp - 0x13], 1
	jne	.label_204
	call	__errno_location
	mov	dword ptr [rax], 0
.label_204:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_201
	.section	.text
	.align	16
	#Procedure 0x403cf0
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
	#Procedure 0x403d26
	.globl sub_403d26
	.type sub_403d26, @function
sub_403d26:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403d30

	.globl sub_403d30
	.type sub_403d30, @function
sub_403d30:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_205
	.section	.text
	.align	16
	#Procedure 0x403d39
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
	ja	.label_206
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_207]]
	jmp	rcx
.label_206:
	mov	byte ptr [rbp - 1], 0
.label_205:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403d71
	.globl sub_403d71
	.type sub_403d71, @function
sub_403d71:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403d80
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
	#Procedure 0x403dc2
	.globl sub_403dc2
	.type sub_403dc2, @function
sub_403dc2:

	nop	word ptr cs:[rax + rax]
.label_209:
	mov	byte ptr [rbp - 1], 0
.label_210:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403dde
	.globl sub_403dde
	.type sub_403dde, @function
sub_403dde:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403dec
	.globl c_islower
	.type c_islower, @function
c_islower:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_209
	jmp	.label_208
.label_208:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_210
	.section	.text
	.align	16
	#Procedure 0x403e10
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rax,  qword ptr [word ptr [default_tuning]]
	mov	qword ptr [rdi], rax
	mov	rax,  qword ptr [word ptr [label_211]]
	mov	qword ptr [rdi + 8], rax
	mov	ecx,  dword ptr [dword ptr [label_212]]
	mov	dword ptr [rdi + 0x10], ecx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403e3f
	.globl sub_403e3f
	.type sub_403e3f, @function
sub_403e3f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403e40
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
	#Procedure 0x403e67
	.globl sub_403e67
	.type sub_403e67, @function
sub_403e67:

	nop	word ptr [rax + rax]
.label_220:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x38], rax
.label_217:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax + 8], 0
	je	.label_218
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rcx + 8]
	cmp	rax, qword ptr [rcx]
	je	.label_215
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x38]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rcx + 8]
	mov	rsi, qword ptr [rcx]
	call	rax
	test	al, 1
	jne	.label_215
	jmp	.label_219
.label_215:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x50], rax
	test	byte ptr [rbp - 0x21], 1
	je	.label_213
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
.label_213:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_214
.label_219:
	jmp	.label_216
.label_216:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_217
	.section	.text
	.align	16
	#Procedure 0x403f27

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
	jne	.label_221
	mov	qword ptr [rbp - 8], 0
	jmp	.label_214
.label_218:
	mov	qword ptr [rbp - 8], 0
.label_214:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403f8b
	.globl sub_403f8b
	.type sub_403f8b, @function
sub_403f8b:

	nop	word ptr cs:[rax + rax]
.label_224:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rax], 0
.label_225:
	jmp	.label_222
.label_222:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_214
.label_221:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rcx]
	je	.label_223
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x38]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rcx]
	call	rax
	test	al, 1
	jne	.label_223
	jmp	.label_220
.label_223:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x40], rax
	test	byte ptr [rbp - 0x21], 1
	je	.label_222
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax + 8], 0
	je	.label_224
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
	jmp	.label_225
.label_228:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
.label_227:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404052
	.globl sub_404052
	.type sub_404052, @function
sub_404052:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404061

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
	jne	.label_226
	lea	rax, [rbp - 0x34]
	mov	qword ptr [rbp - 0x10], rax
.label_226:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	call	mbrtowc
	mov	rcx, -2
	mov	qword ptr [rbp - 0x30], rax
	cmp	rcx, qword ptr [rbp - 0x30]
	ja	.label_228
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_228
	xor	edi, edi
	call	hard_locale
	test	al, 1
	jne	.label_228
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x35], cl
	movzx	edx, byte ptr [rbp - 0x35]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], edx
	mov	qword ptr [rbp - 8], 1
	jmp	.label_227
	.section	.text
	.align	16
	#Procedure 0x4040f0

	.globl any_live_files
	.type any_live_files, @function
any_live_files:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	test	byte ptr [byte ptr [reopen_inaccessible_files]],  1
	je	.label_233
	cmp	dword ptr [dword ptr [follow_mode]],  1
	jne	.label_233
	mov	byte ptr [rbp - 1], 1
	jmp	.label_232
.label_230:
	jmp	.label_229
.label_229:
	jmp	.label_231
.label_231:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_234
.label_236:
	mov	byte ptr [rbp - 1], 0
.label_232:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40414a
	.globl sub_40414a
	.type sub_40414a, @function
sub_40414a:

	nop	dword ptr [rax]
.label_233:
	mov	qword ptr [rbp - 0x20], 0
.label_234:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_236
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x20]
	imul	rcx, rcx, 0x60
	add	rcx, qword ptr [rbp - 0x10]
	cmp	eax, dword ptr [rcx + 0x38]
	jg	.label_235
	mov	byte ptr [rbp - 1], 1
	jmp	.label_232
.label_235:
	mov	rax, qword ptr [rbp - 0x20]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x10]
	test	byte ptr [rax + 0x34], 1
	jne	.label_230
	test	byte ptr [byte ptr [reopen_inaccessible_files]],  1
	je	.label_230
	mov	byte ptr [rbp - 1], 1
	jmp	.label_232
	.section	.text
	.align	16
	#Procedure 0x4041b0

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
	#Procedure 0x4041d0

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
	jne	.label_238
	mov	qword ptr [rbp - 8], 0
	jmp	.label_240
.label_238:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x28], rax
.label_242:
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_241
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rcx]
	je	.label_237
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x38]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rcx]
	call	rax
	test	al, 1
	jne	.label_237
	jmp	.label_239
.label_237:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_240
.label_241:
	mov	qword ptr [rbp - 8], 0
.label_240:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404274
	.globl sub_404274
	.type sub_404274, @function
sub_404274:

	nop	word ptr [rax + rax]
.label_239:
	jmp	.label_243
.label_243:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_242
	.section	.text
	.align	16
	#Procedure 0x404290
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
	#Procedure 0x4042b7
	.globl sub_4042b7
	.type sub_4042b7, @function
sub_4042b7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4042c0

	.globl record_open_fd
	.type record_open_fd, @function
record_open_fd:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	dword ptr [rbp - 0x24], r8d
	mov	esi, dword ptr [rbp - 0xc]
	mov	rcx, qword ptr [rbp - 8]
	mov	dword ptr [rcx + 0x38], esi
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx + 8], rcx
	mov	rcx, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x40], rcx
	call	get_stat_mtime
	mov	qword ptr [rbp - 0x38], rax
	mov	qword ptr [rbp - 0x30], rdx
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 0x18], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx + 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx + 0x28], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	esi, dword ptr [rax + 0x18]
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x30], esi
	mov	esi, dword ptr [rbp - 0x24]
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x40], esi
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x58], 0
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x34], 0
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40436f
	.globl sub_40436f
	.type sub_40436f, @function
sub_40436f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x404370

	.globl fd_safer
	.type fd_safer, @function
fd_safer:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_244
	cmp	dword ptr [rbp - 4], 2
	jg	.label_244
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
.label_244:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4043cf
	.globl sub_4043cf
	.type sub_4043cf, @function
sub_4043cf:

	nop	
.label_246:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_248
.label_252:
	jmp	.label_247
.label_247:
	jmp	.label_249
.label_249:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_251
.label_245:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
.label_250:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40441a
	.globl sub_40441a
	.type sub_40441a, @function
sub_40441a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404420
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
.label_251:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_245
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax], 0
	je	.label_247
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x38], rax
.label_248:
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_252
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rcx]
	mov	rsi, qword ptr [rbp - 0x20]
	call	rax
	test	al, 1
	jne	.label_246
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_250
	.section	.text
	.align	16
	#Procedure 0x4044a0
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	sub	edi, 0x7f
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_253
	jmp	.label_254
.label_254:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_255
.label_253:
	mov	byte ptr [rbp - 1], 0
.label_255:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4044cf
	.globl sub_4044cf
	.type sub_4044cf, @function
sub_4044cf:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4044d0

	.globl wd_comparator
	.type wd_comparator, @function
wd_comparator:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	eax, dword ptr [rsi + 0x44]
	mov	rsi, qword ptr [rbp - 0x20]
	cmp	eax, dword ptr [rsi + 0x44]
	sete	cl
	and	cl, 1
	movzx	eax, cl
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404505
	.globl sub_404505
	.type sub_404505, @function
sub_404505:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404510
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
	#Procedure 0x404526
	.globl sub_404526
	.type sub_404526, @function
sub_404526:

	nop	word ptr cs:[rax + rax]
.label_259:
	jmp	.label_256
.label_256:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_257
.label_260:
	mov	qword ptr [rbp - 8], 0
.label_258:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404558
	.globl sub_404558
	.type sub_404558, @function
sub_404558:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40455f
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
.label_257:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_260
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	imul	rcx, qword ptr [rbp - 0x30]
	add	rax, rcx
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsi, rax
	call	memcmp
	cmp	eax, 0
	jne	.label_259
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_258
.label_261:
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
	#Procedure 0x4045ee

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
	jne	.label_263
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_263:
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 0xa
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_262
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_261
.label_262:
	call	abort
.label_276:
	movabs	rdi, OFFSET FLAT:label_264
	movabs	rsi, OFFSET FLAT:label_265
	mov	edx, 0x3c9
	movabs	rcx, OFFSET FLAT:label_266
	call	__assert_fail
.label_277:
	jmp	.label_274
.label_275:
	jmp	.label_274
.label_274:
	jmp	.label_269
.label_269:
	mov	al, byte ptr [rbp - 0x11]
	and	al, 1
	movzx	eax, al
	add	rsp, 0xb0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404688
	.globl sub_404688
	.type sub_404688, @function
sub_404688:

	nop	
	.section	.text
	.align	16
	#Procedure 0x40468a

	.globl fremote
	.type fremote, @function
fremote:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xb0
	lea	rax, [rbp - 0x90]
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	byte ptr [rbp - 0x11], 1
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, rax
	call	fstatfs
	mov	dword ptr [rbp - 0x94], eax
	cmp	dword ptr [rbp - 0x94], 0
	je	.label_270
	call	__errno_location
	cmp	dword ptr [rax], 0x26
	je	.label_267
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_268
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x98], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0xa0], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_267:
	jmp	.label_269
.label_270:
	mov	rdi, qword ptr [rbp - 0x90]
	call	is_local_fs_type
	mov	ecx, eax
	sub	eax, -1
	mov	dword ptr [rbp - 0xa4], ecx
	mov	dword ptr [rbp - 0xa8], eax
	je	.label_275
	jmp	.label_273
.label_273:
	mov	eax, dword ptr [rbp - 0xa4]
	test	eax, eax
	je	.label_277
	jmp	.label_271
.label_271:
	mov	eax, dword ptr [rbp - 0xa4]
	sub	eax, 1
	mov	dword ptr [rbp - 0xac], eax
	je	.label_272
	jmp	.label_276
.label_272:
	mov	byte ptr [rbp - 0x11], 0
	jmp	.label_274
.label_280:
	jmp	.label_278
.label_278:
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 8]
	cqo	
	idiv	rcx
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
	cqo	
	idiv	rcx
	mov	qword ptr [rbp - 8], rax
	cmp	rax, 0
	jne	.label_278
	jmp	.label_281
.label_281:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4047d8
	.globl sub_4047d8
	.type sub_4047d8, @function
sub_4047d8:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4047e3

	.globl offtostr
	.type offtostr, @function
offtostr:
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
	jge	.label_280
	jmp	.label_279
.label_279:
	mov	eax, 0x30
	mov	ecx, eax
	mov	eax, 0xa
	mov	edx, eax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rdx
	cqo	
	mov	rsi, qword ptr [rbp - 0x20]
	idiv	rsi
	sub	rcx, rdx
	mov	dil, cl
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, rcx
	add	rdx, -1
	mov	qword ptr [rbp - 0x18], rdx
	mov	byte ptr [rcx - 1], dil
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 8]
	cqo	
	idiv	rcx
	mov	qword ptr [rbp - 8], rax
	cmp	rax, 0
	jne	.label_279
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x18], rcx
	mov	byte ptr [rax - 1], 0x2d
	jmp	.label_281
.label_287:
	jmp	.label_282
.label_286:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_283
	jmp	.label_282
.label_282:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x20], rax
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_284
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax], 0
	je	.label_287
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_285
.label_284:
	mov	qword ptr [rbp - 8], 0
.label_285:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4048eb
	.globl sub_4048eb
	.type sub_4048eb, @function
sub_4048eb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4048f3
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
.label_283:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x18]
	jne	.label_286
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax + 8], 0
	je	.label_286
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_285
	.section	.text
	.align	16
	#Procedure 0x404950

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
	#Procedure 0x40496f
	.globl sub_40496f
	.type sub_40496f, @function
sub_40496f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x404970

	.globl rpl_nanosleep
	.type rpl_nanosleep, @function
rpl_nanosleep:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	cmp	qword ptr [rsi + 8], 0
	jl	.label_292
	mov	eax, 0x3b9aca00
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	cmp	rcx, qword ptr [rdx + 8]
	jg	.label_291
.label_292:
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_290
.label_291:
	mov	qword ptr [rbp - 0x20], 0x1fa400
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x30], rax
.label_289:
	mov	eax, 0x1fa400
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x28]
	jge	.label_293
	lea	rdi, [rbp - 0x38]
	mov	qword ptr [rbp - 0x38], 0x1fa400
	mov	rsi, qword ptr [rbp - 0x18]
	call	nanosleep
	mov	dword ptr [rbp - 0x3c], eax
	mov	rsi, qword ptr [rbp - 0x28]
	sub	rsi, 0x1fa400
	mov	qword ptr [rbp - 0x28], rsi
	cmp	dword ptr [rbp - 0x3c], 0
	je	.label_288
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_294
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rcx]
	mov	qword ptr [rcx], rax
.label_294:
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_290
.label_288:
	mov	qword ptr [rbp - 0x30], 0
	jmp	.label_289
.label_293:
	lea	rdi, [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x38], rax
	mov	rsi, qword ptr [rbp - 0x18]
	call	nanosleep
	mov	dword ptr [rbp - 4], eax
.label_290:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404a6e
	.globl sub_404a6e
	.type sub_404a6e, @function
sub_404a6e:

	nop	
.label_295:
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x40], 0
	je	.label_301
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rcx]
	call	rax
.label_301:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 8], 0
.label_297:
	jmp	.label_298
.label_298:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_300
	.section	.text
	.align	16
	#Procedure 0x404abd
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
.label_300:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_302
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax], 0
	je	.label_297
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x18], rax
.label_299:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_295
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x40], 0
	je	.label_296
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx]
	call	rax
.label_296:
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
	jmp	.label_299
.label_302:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x18], 0
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x20], 0
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404b89
	.globl sub_404b89
	.type sub_404b89, @function
sub_404b89:

	nop	dword ptr [rax]
.label_308:
	mov	eax, 0x2000
	mov	ecx, eax
	mov	qword ptr [rbp - 0x2048], rcx
	jmp	.label_307
.label_307:
	mov	rax, qword ptr [rbp - 0x2048]
	lea	rsi, [rbp - 0x2030]
	mov	qword ptr [rbp - 0x2038], rax
	mov	edi, dword ptr [rbp - 0x14]
	mov	rdx, qword ptr [rbp - 0x2038]
	call	safe_read
	mov	qword ptr [rbp - 0x2040], rax
	cmp	qword ptr [rbp - 0x2040], -1
	jne	.label_304
	call	__errno_location
	cmp	dword ptr [rax], 0xb
	je	.label_310
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_312
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x204c], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x2058], rax
	call	quotearg_style
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x204c]
	mov	rdx, qword ptr [rbp - 0x2058]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_304:
	cmp	qword ptr [rbp - 0x2040], 0
	jne	.label_314
	jmp	.label_303
.label_309:
	jmp	.label_305
.label_305:
	jmp	.label_306
.label_303:
	mov	rax, qword ptr [rbp - 0x28]
	add	rsp, 0x2060
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404c61
	.globl sub_404c61
	.type sub_404c61, @function
sub_404c61:

	nop	word ptr cs:[rax + rax]
.label_314:
	test	byte ptr [rbp - 1], 1
	je	.label_311
	mov	rdi, qword ptr [rbp - 0x10]
	call	write_header
	mov	byte ptr [rbp - 1], 0
.label_311:
	lea	rdi, [rbp - 0x2030]
	mov	rsi, qword ptr [rbp - 0x2040]
	call	xwrite_stdout
	mov	rsi, qword ptr [rbp - 0x2040]
	add	rsi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rsi
	cmp	qword ptr [rbp - 0x20], -1
	je	.label_305
	mov	rax, qword ptr [rbp - 0x2040]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x30], rcx
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_313
	cmp	qword ptr [rbp - 0x20], -2
	jne	.label_309
.label_313:
	jmp	.label_303
.label_310:
	jmp	.label_303
	.section	.text
	.align	16
	#Procedure 0x404ce4

	.globl dump_remainder
	.type dump_remainder, @function
dump_remainder:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x2060
	mov	al, dil
	and	al, 1
	mov	byte ptr [rbp - 1], al
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x14], edx
	mov	qword ptr [rbp - 0x20], rcx
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x30], rcx
	mov	qword ptr [rbp - 0x28], 0
.label_306:
	cmp	qword ptr [rbp - 0x30], 0x2000
	jae	.label_308
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x2048], rax
	jmp	.label_307
.label_320:
	cmp	qword ptr [rbp - 0x2038], -1
	jne	.label_319
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_312
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x2044], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x2050], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x2044]
	mov	rdx, qword ptr [rbp - 0x2050]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	dword ptr [rbp - 4], 1
	jmp	.label_316
	.section	.text
	.align	16
	#Procedure 0x404d94

	.globl start_bytes
	.type start_bytes, @function
start_bytes:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x2050
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
.label_315:
	xor	eax, eax
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x20]
	jae	.label_318
	mov	eax, 0x2000
	mov	edx, eax
	lea	rsi, [rbp - 0x2030]
	mov	edi, dword ptr [rbp - 0x14]
	call	safe_read
	mov	qword ptr [rbp - 0x2038], rax
	cmp	qword ptr [rbp - 0x2038], 0
	jne	.label_320
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_316
.label_317:
	mov	rax, qword ptr [rbp - 0x2038]
	sub	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x2040], rax
	cmp	qword ptr [rbp - 0x2040], 0
	je	.label_321
	lea	rax, [rbp - 0x2030]
	add	rax, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x2040]
	mov	rdi, rax
	call	xwrite_stdout
.label_321:
	jmp	.label_318
.label_319:
	mov	rax, qword ptr [rbp - 0x2038]
	mov	rcx, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rcx]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x2038]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_317
	mov	rax, qword ptr [rbp - 0x2038]
	mov	rcx, qword ptr [rbp - 0x20]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x20], rcx
	jmp	.label_322
.label_318:
	mov	dword ptr [rbp - 4], 0
.label_316:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x2050
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404e7e
	.globl sub_404e7e
	.type sub_404e7e, @function
sub_404e7e:

	nop	word ptr cs:[rax + rax]
.label_322:
	jmp	.label_315
	.section	.text
	.align	16
	#Procedure 0x404e90

	.globl cl_strtod
	.type cl_strtod, @function
cl_strtod:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	lea	rax, [rbp - 0x18]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, rax
	call	strtod
	movsd	qword ptr [rbp - 0x20], xmm0
	mov	rax, qword ptr [rbp - 0x18]
	cmp	byte ptr [rax], 0
	je	.label_323
	call	__errno_location
	lea	rsi, [rbp - 0x30]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x24], ecx
	mov	rdi, qword ptr [rbp - 8]
	call	c_strtod
	movsd	qword ptr [rbp - 0x38], xmm0
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_326
	movsd	xmm0, qword ptr [rbp - 0x38]
	movsd	qword ptr [rbp - 0x20], xmm0
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_324
.label_326:
	mov	eax, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x3c], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x3c]
	mov	dword ptr [rax], ecx
.label_324:
	jmp	.label_323
.label_323:
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_325
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
.label_325:
	movsd	xmm0, qword ptr [rbp - 0x20]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404f39
	.globl sub_404f39
	.type sub_404f39, @function
sub_404f39:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404f40

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
	#Procedure 0x404fb5
	.globl sub_404fb5
	.type sub_404fb5, @function
sub_404fb5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404fc0

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
.label_328:
	mov	eax, dword ptr [rbp - 0x10]
	mov	ecx, eax
	add	ecx, -1
	mov	dword ptr [rbp - 0x10], ecx
	cmp	eax, 0
	je	.label_327
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	call	bkm_scale
	or	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_328
.label_327:
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40500d
	.globl sub_40500d
	.type sub_40500d, @function
sub_40500d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405010
	.globl stat_time_normalize
	.type stat_time_normalize, @function
stat_time_normalize:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405020
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
	#Procedure 0x40503f
	.globl sub_40503f
	.type sub_40503f, @function
sub_40503f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x405040

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_329
	mov	eax,  dword ptr [dword ptr [exit_failure]]
	mov	dword ptr [rbp - 4], eax
	call	gettext
	xor	esi, esi
	movabs	rdx, OFFSET FLAT:label_330
	mov	edi, dword ptr [rbp - 4]
	mov	rcx, rax
	mov	al, 0
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40507f
	.globl sub_40507f
	.type sub_40507f, @function
sub_40507f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x405080

	.globl close_fd
	.type close_fd, @function
close_fd:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	cmp	dword ptr [rbp - 4], -1
	je	.label_331
	cmp	dword ptr [rbp - 4], 0
	je	.label_331
	mov	edi, dword ptr [rbp - 4]
	call	close
	cmp	eax, 0
	je	.label_331
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_332
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rax
	call	quotearg_style
	xor	edi, edi
	mov	r8d, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 0x14]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_331:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4050fc
	.globl sub_4050fc
	.type sub_4050fc, @function
sub_4050fc:

	nop	dword ptr [rax]
.label_335:
	movabs	rdi, OFFSET FLAT:label_333
	call	gettext
	mov	qword ptr [rbp - 0x28], rax
.label_336:
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
	#Procedure 0x405168
	.globl sub_405168
	.type sub_405168, @function
sub_405168:

	nop	
	.section	.text
	.align	16
	#Procedure 0x405169

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
	jne	.label_335
	movabs	rdi, OFFSET FLAT:label_334
	call	gettext
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_336
	.section	.text
	.align	16
	#Procedure 0x4051a0
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x30
	sub	edi, 9
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_337
	jmp	.label_339
.label_339:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_338
.label_337:
	mov	byte ptr [rbp - 1], 0
.label_338:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4051d2
	.globl sub_4051d2
	.type sub_4051d2, @function
sub_4051d2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4051e0

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
	#Procedure 0x405213
	.globl sub_405213
	.type sub_405213, @function
sub_405213:

	nop	word ptr cs:[rax + rax]
.label_344:
	mov	byte ptr [rbp - 1], 0
.label_343:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40522e
	.globl sub_40522e
	.type sub_40522e, @function
sub_40522e:

	nop	dword ptr [rax]
.label_340:
	jmp	.label_341
.label_341:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_342
	.section	.text
	.align	16
	#Procedure 0x405248

	.globl any_non_remote_file
	.type any_non_remote_file, @function
any_non_remote_file:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], 0
.label_342:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_344
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x20]
	imul	rcx, rcx, 0x60
	add	rcx, qword ptr [rbp - 0x10]
	cmp	eax, dword ptr [rcx + 0x38]
	jg	.label_340
	mov	rax, qword ptr [rbp - 0x20]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x10]
	test	byte ptr [rax + 0x35], 1
	jne	.label_340
	mov	byte ptr [rbp - 1], 1
	jmp	.label_343
	.section	.text
	.align	16
	#Procedure 0x4052a0
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
	#Procedure 0x4052d7
	.globl sub_4052d7
	.type sub_4052d7, @function
sub_4052d7:

	nop	word ptr [rax + rax]
.label_356:
	jmp	.label_345
.label_345:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x10], rax
.label_351:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_349
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x18], rax
.label_350:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_348
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_350
.label_349:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x48]
	mov	qword ptr [rbp - 0x18], rax
.label_347:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_346
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_347
.label_346:
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
	#Procedure 0x40539b
	.globl sub_40539b
	.type sub_40539b, @function
sub_40539b:

	nop	word ptr cs:[rax + rax]
.label_348:
	jmp	.label_352
.label_352:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_351
	.section	.text
	.align	16
	#Procedure 0x4053bb

	.globl hash_free
	.type hash_free, @function
hash_free:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	cmp	qword ptr [rdi + 0x40], 0
	je	.label_345
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x20], 0
	je	.label_345
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x10], rax
.label_355:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_356
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax], 0
	je	.label_353
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rax
.label_357:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_358
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx]
	call	rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_357
.label_358:
	jmp	.label_353
.label_353:
	jmp	.label_354
.label_354:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_355
	.section	.text
	.align	16
	#Procedure 0x405460
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x21
	sub	edi, 0x5d
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_359
	jmp	.label_361
.label_361:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_360
.label_359:
	mov	byte ptr [rbp - 1], 0
.label_360:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405492
	.globl sub_405492
	.type sub_405492, @function
sub_405492:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4054a0
	.globl c_isblank
	.type c_isblank, @function
c_isblank:

	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0x20
	mov	byte ptr [rbp - 5], al
	je	.label_362
	cmp	dword ptr [rbp - 4], 9
	sete	al
	mov	byte ptr [rbp - 5], al
.label_362:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4054ca
	.globl sub_4054ca
	.type sub_4054ca, @function
sub_4054ca:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4054d0
	.globl c_isupper
	.type c_isupper, @function
c_isupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_363
	jmp	.label_365
.label_365:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_364
.label_363:
	mov	byte ptr [rbp - 1], 0
.label_364:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405502
	.globl sub_405502
	.type sub_405502, @function
sub_405502:

	nop	word ptr cs:[rax + rax]
.label_375:
	mov	byte ptr [rbp - 1], 1
.label_373:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405522
	.globl sub_405522
	.type sub_405522, @function
sub_405522:

	nop	word ptr [rax + rax]
.label_378:
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
.label_372:
	jmp	.label_369
.label_369:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_370
.label_371:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rax + 8], 0
	test	byte ptr [rbp - 0x19], 1
	je	.label_368
	jmp	.label_366
	.section	.text
	.align	16
	#Procedure 0x405588

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
.label_374:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_375
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax], 0
	je	.label_379
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x30], rax
.label_370:
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_371
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
	je	.label_378
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx + 8], rax
	jmp	.label_372
.label_367:
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
	jmp	.label_377
.label_368:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x40]
	call	safe_hasher
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x48]
	cmp	qword ptr [rax], 0
	je	.label_376
	mov	rdi, qword ptr [rbp - 0x10]
	call	allocate_entry
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x50], 0
	jne	.label_367
	mov	byte ptr [rbp - 1], 0
	jmp	.label_373
.label_376:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x18]
	add	rcx, 1
	mov	qword ptr [rax + 0x18], rcx
.label_377:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rax + 0x18]
	add	rcx, -1
	mov	qword ptr [rax + 0x18], rcx
.label_379:
	jmp	.label_366
.label_366:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_374
.label_381:
	mov	byte ptr [rbp - 1], 0
.label_380:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4056fe
	.globl sub_4056fe
	.type sub_4056fe, @function
sub_4056fe:

	nop	word ptr cs:[rax + rax]
.label_387:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x18]
	jne	.label_381
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x20]
	jne	.label_381
	mov	byte ptr [rbp - 1], 1
	jmp	.label_380
	.section	.text
	.align	16
	#Procedure 0x40573a
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
.label_384:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_387
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax], 0
	je	.label_382
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
.label_383:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_385
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_383
.label_385:
	jmp	.label_382
.label_382:
	jmp	.label_386
.label_386:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_384
	.section	.text
	.align	16
	#Procedure 0x4057e0

	.globl c_tolower
	.type c_tolower, @function
c_tolower:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_388
	jmp	.label_390
.label_390:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x41
	add	eax, 0x61
	mov	dword ptr [rbp - 4], eax
	jmp	.label_389
.label_388:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_389:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405817
	.globl sub_405817
	.type sub_405817, @function
sub_405817:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405820

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	push	rbp
	mov	rbp, rsp
	mov	edi, 1
	call	usage
	.section	.text
	.align	16
	#Procedure 0x40582e
	.globl sub_40582e
	.type sub_40582e, @function
sub_40582e:

	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405830

	.globl xnanosleep
	.type xnanosleep, @function
xnanosleep:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movsd	qword ptr [rbp - 0x10], xmm0
	movsd	xmm0, qword ptr [rbp - 0x10]
	call	dtotimespec
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x18], rdx
.label_394:
	call	__errno_location
	lea	rdi, [rbp - 0x20]
	xor	ecx, ecx
	mov	esi, ecx
	mov	dword ptr [rax], 0
	call	rpl_nanosleep
	cmp	eax, 0
	jne	.label_393
	jmp	.label_391
.label_392:
	jmp	.label_394
.label_391:
	mov	dword ptr [rbp - 4], 0
.label_395:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40588a
	.globl sub_40588a
	.type sub_40588a, @function
sub_40588a:

	nop	word ptr cs:[rax + rax]
.label_393:
	call	__errno_location
	cmp	dword ptr [rax], 4
	je	.label_392
	call	__errno_location
	cmp	dword ptr [rax], 0
	je	.label_392
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_395
	.section	.text
	.align	16
	#Procedure 0x4058c0

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
	je	.label_396
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
.label_396:
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
	#Procedure 0x405a24
	.globl sub_405a24
	.type sub_405a24, @function
sub_405a24:

	nop	word ptr cs:[rax + rax]
.label_407:
	mov	eax, dword ptr [rbp - 0x98]
	and	eax, 0xf000
	cmp	eax, 0x8000
	je	.label_398
	mov	eax, dword ptr [rbp - 0x98]
	and	eax, 0xf000
	cmp	eax, 0x1000
	je	.label_398
	mov	eax, dword ptr [rbp - 0x98]
	and	eax, 0xf000
	cmp	eax, 0xc000
	je	.label_398
	mov	eax, dword ptr [rbp - 0x98]
	and	eax, 0xf000
	cmp	eax, 0x2000
	je	.label_398
	movabs	rdi, OFFSET FLAT:label_399
	mov	byte ptr [rbp - 0x15], 0
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x3c], 0xffffffff
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x36], 0
	mov	cl,  byte ptr [byte ptr [reopen_inaccessible_files]]
	xor	cl, 0xff
	mov	rax, qword ptr [rbp - 8]
	and	cl, 1
	mov	byte ptr [rax + 0x34], cl
	call	gettext
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0xd8], rax
	call	pretty_name
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rax
	call	quotearg_n_style_colon
	mov	rdx, qword ptr [rbp - 8]
	test	byte ptr [rdx + 0x34], 1
	mov	qword ptr [rbp - 0xe0], rax
	je	.label_400
	movabs	rdi, OFFSET FLAT:label_403
	call	gettext
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_397
	.section	.text
	.align	16
	#Procedure 0x405b11

	.globl tail_file
	.type tail_file, @function
tail_file:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x100
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rsi]
	mov	eax, OFFSET FLAT:label_140
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	sete	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x16], cl
	test	byte ptr [rbp - 0x16], 1
	je	.label_416
	xor	eax, eax
	mov	byte ptr [byte ptr [have_read_stdin]],  1
	mov	dword ptr [rbp - 0x14], 0
	mov	edi, eax
	mov	esi, eax
	call	xset_binary_mode
	jmp	.label_412
.label_413:
	test	byte ptr [rbp - 0x16], 1
	jne	.label_414
	mov	edi, dword ptr [rbp - 0x14]
	call	close
	cmp	eax, 0
	je	.label_414
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_312
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xf4], esi
	call	gettext
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x100], rax
	call	pretty_name
	mov	edi, 4
	mov	rsi, rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0xf4]
	mov	rdx, qword ptr [rbp - 0x100]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x15], 0
.label_414:
	jmp	.label_402
.label_402:
	jmp	.label_401
.label_401:
	mov	al, byte ptr [rbp - 0x15]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x100
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405bf8
	.globl sub_405bf8
	.type sub_405bf8, @function
sub_405bf8:

	nop	dword ptr [rax]
.label_400:
	movabs	rax, OFFSET FLAT:label_22
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_397
.label_397:
	mov	rax, qword ptr [rbp - 0xe8]
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0xd8]
	mov	rcx, qword ptr [rbp - 0xe0]
	mov	r8, rax
	mov	al, 0
	call	error
.label_398:
	jmp	.label_404
.label_404:
	test	byte ptr [rbp - 0x15], 1
	jne	.label_406
	mov	al,  byte ptr [byte ptr [reopen_inaccessible_files]]
	xor	al, 0xff
	mov	rcx, qword ptr [rbp - 8]
	and	al, 1
	mov	byte ptr [rcx + 0x34], al
	mov	edi, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 8]
	mov	dword ptr [rbp - 0xec], edi
	mov	rdi, rcx
	call	pretty_name
	mov	edi, dword ptr [rbp - 0xec]
	mov	rsi, rax
	call	close_fd
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x38], 0xffffffff
	jmp	.label_405
.label_406:
	lea	rcx, [rbp - 0xb0]
	mov	eax, 1
	mov	edx, 0xffffffff
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0x14]
	mov	r8, qword ptr [rbp - 0x20]
	mov	r9b, byte ptr [rbp - 0x16]
	test	r9b, 1
	cmovne	eax, edx
	mov	rdx, r8
	mov	r8d, eax
	call	record_open_fd
	mov	edi, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 8]
	mov	dword ptr [rbp - 0xf0], edi
	mov	rdi, rcx
	call	pretty_name
	mov	edi, dword ptr [rbp - 0xf0]
	mov	rsi, rax
	call	fremote
	mov	rcx, qword ptr [rbp - 8]
	and	al, 1
	mov	byte ptr [rcx + 0x35], al
.label_405:
	jmp	.label_402
.label_408:
	test	byte ptr [byte ptr [print_headers]],  1
	je	.label_415
	mov	rdi, qword ptr [rbp - 8]
	call	pretty_name
	mov	rdi, rax
	call	write_header
.label_415:
	mov	rdi, qword ptr [rbp - 8]
	call	pretty_name
	lea	rcx, [rbp - 0x20]
	mov	esi, dword ptr [rbp - 0x14]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	tail
	and	al, 1
	mov	byte ptr [rbp - 0x15], al
	test	byte ptr [byte ptr [forever]],  1
	je	.label_413
	lea	rsi, [rbp - 0xb0]
	mov	al, byte ptr [rbp - 0x15]
	and	al, 1
	movzx	ecx, al
	sub	ecx, 1
	mov	rdx, qword ptr [rbp - 8]
	mov	dword ptr [rdx + 0x3c], ecx
	mov	edi, dword ptr [rbp - 0x14]
	call	fstat
	cmp	eax, 0
	jge	.label_407
	mov	byte ptr [rbp - 0x15], 0
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x3c], ecx
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_312
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xc4], esi
	call	gettext
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0xd0], rax
	call	pretty_name
	mov	edi, 4
	mov	rsi, rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0xc4]
	mov	rdx, qword ptr [rbp - 0xd0]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_404
.label_416:
	xor	esi, esi
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax]
	mov	al, 0
	call	open_safer
	mov	dword ptr [rbp - 0x14], eax
.label_412:
	xor	eax, eax
	mov	cl, al
	test	byte ptr [byte ptr [reopen_inaccessible_files]],  1
	mov	byte ptr [rbp - 0xb1], cl
	je	.label_411
	cmp	dword ptr [rbp - 0x14], -1
	sete	al
	mov	byte ptr [rbp - 0xb1], al
.label_411:
	mov	al, byte ptr [rbp - 0xb1]
	xor	al, 0xff
	mov	rcx, qword ptr [rbp - 8]
	and	al, 1
	mov	byte ptr [rcx + 0x36], al
	cmp	dword ptr [rbp - 0x14], -1
	jne	.label_408
	test	byte ptr [byte ptr [forever]],  1
	je	.label_409
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x38], 0xffffffff
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x3c], ecx
	mov	dl,  byte ptr [byte ptr [reopen_inaccessible_files]]
	xor	dl, 0xff
	mov	rax, qword ptr [rbp - 8]
	and	dl, 1
	mov	byte ptr [rax + 0x34], dl
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x28], 0
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x20], 0
.label_409:
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_410
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xb8], esi
	call	gettext
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0xc0], rax
	call	pretty_name
	mov	edi, 4
	mov	rsi, rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0xb8]
	mov	rdx, qword ptr [rbp - 0xc0]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x15], 0
	jmp	.label_401
	.section	.text
	.align	16
	#Procedure 0x405ed0
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
	#Procedure 0x405ef7
	.globl sub_405ef7
	.type sub_405ef7, @function
sub_405ef7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405f00
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
	#Procedure 0x405f31
	.globl sub_405f31
	.type sub_405f31, @function
sub_405f31:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405f40
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
	#Procedure 0x405f6f
	.globl sub_405f6f
	.type sub_405f6f, @function
sub_405f6f:

	nop	
.label_418:
	mov	byte ptr [rbp - 1], 0
.label_420:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405f7e
	.globl sub_405f7e
	.type sub_405f7e, @function
sub_405f7e:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405f86
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
	jb	.label_417
	jmp	.label_419
.label_419:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x7f
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_418
	jmp	.label_417
.label_417:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_420
.label_422:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_421
.label_421:
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
	#Procedure 0x406033
	.globl sub_406033
	.type sub_406033, @function
sub_406033:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406041

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
	je	.label_422
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_421
.label_425:
	movabs	rsi, OFFSET FLAT:label_423
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_424
	movabs	rax, OFFSET FLAT:label_427
	movabs	rcx, OFFSET FLAT:label_428
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_429
.label_424:
	movabs	rax, OFFSET FLAT:label_430
	movabs	rcx, OFFSET FLAT:label_431
	cmp	dword ptr [rbp - 0x14], 9
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
.label_429:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4060e1
	.globl sub_4060e1
	.type sub_4060e1, @function
sub_4060e1:

	nop	dword ptr [rax + rax]
.label_434:
	call	locale_charset
	movabs	rsi, OFFSET FLAT:label_426
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_425
	movabs	rax, OFFSET FLAT:label_432
	movabs	rcx, OFFSET FLAT:label_433
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_429
	.section	.text
	.align	16
	#Procedure 0x406139

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
	je	.label_434
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_429
.label_436:
	mov	eax, 0x7fffffff
	mov	ecx, eax
	mov	qword ptr [rbp - 0x30], rcx
	jmp	.label_435
.label_435:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x28], rax
.label_437:
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, eax
	mov	eax, ecx
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406196
	.globl sub_406196
	.type sub_406196, @function
sub_406196:

	nop	dword ptr [rax]
.label_438:
	cmp	qword ptr [rbp - 8], 0x7fffffff
	jge	.label_436
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_435
	.section	.text
	.align	16
	#Procedure 0x4061b4

	.globl posix2_version
	.type posix2_version, @function
posix2_version:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	movabs	rdi, OFFSET FLAT:label_440
	mov	qword ptr [rbp - 8], 0x31069
	call	getenv
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_439
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_439
	lea	rsi, [rbp - 0x18]
	mov	edx, 0xa
	mov	rdi, qword ptr [rbp - 0x10]
	call	strtol
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x18]
	cmp	byte ptr [rax], 0
	jne	.label_441
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_441:
	jmp	.label_439
.label_439:
	cmp	qword ptr [rbp - 8], -0x80000000
	jge	.label_438
	mov	rax, -0x80000000
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_437
.label_444:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x10], rax
.label_442:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406255
	.globl sub_406255
	.type sub_406255, @function
sub_406255:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406260

	.globl pretty_name
	.type pretty_name, @function
pretty_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi]
	mov	eax, OFFSET FLAT:label_140
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_444
	movabs	rdi, OFFSET FLAT:label_443
	call	gettext
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_442
	.section	.text
	.align	16
	#Procedure 0x4062a0

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
	#Procedure 0x4062b2
	.globl sub_4062b2
	.type sub_4062b2, @function
sub_4062b2:

	nop	word ptr cs:[rax + rax]
.label_465:
	mov	al, 1
	mov	ecx, dword ptr [rbp - 0x168]
	and	ecx, 0xf000
	cmp	ecx, 0x1000
	mov	byte ptr [rbp - 0x1b9], al
	je	.label_467
	xor	eax, eax
	mov	cl, al
	mov	byte ptr [rbp - 0x1b9], cl
	jmp	.label_467
.label_467:
	mov	al, byte ptr [rbp - 0x1b9]
	and	al, 1
	mov	byte ptr [byte ptr [monitor_output]],  al
	test	byte ptr [byte ptr [disable_inotify]],  1
	jne	.label_448
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x28]
	call	tailable_stdin
	test	al, 1
	jne	.label_447
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x28]
	call	any_remote_file
	test	al, 1
	jne	.label_447
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x28]
	call	any_non_remote_file
	test	al, 1
	jne	.label_456
	jmp	.label_447
.label_456:
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x28]
	call	any_symlinks
	test	al, 1
	jne	.label_447
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x28]
	call	any_non_regular_fifo
	test	al, 1
	jne	.label_447
	test	byte ptr [rbp - 0x15], 1
	jne	.label_448
	cmp	dword ptr [dword ptr [follow_mode]],  2
	jne	.label_448
.label_447:
	mov	byte ptr [byte ptr [disable_inotify]],  1
.label_448:
	test	byte ptr [byte ptr [disable_inotify]],  1
	jne	.label_446
	call	inotify_init
	xor	ecx, ecx
	mov	dword ptr [rbp - 0x184], eax
	cmp	ecx, dword ptr [rbp - 0x184]
	jg	.label_461
	mov	rdi,  qword ptr [word ptr [stdout]]
	call	fflush_unlocked
	cmp	eax, 0
	je	.label_476
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_452
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x1c0], esi
	call	gettext
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x1c0]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_487:
	movabs	rax, OFFSET FLAT:main.dummy_stdin
	mov	qword ptr [rbp - 0x28], 1
	mov	qword ptr [rbp - 0x30], rax
.label_486:
	mov	byte ptr [rbp - 0x51], 0
	mov	qword ptr [rbp - 0x40], 0
.label_460:
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_453
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	edx, OFFSET FLAT:label_140
	mov	esi, edx
	call	strcmp
	cmp	eax, 0
	jne	.label_479
	mov	byte ptr [rbp - 0x51], 1
.label_479:
	jmp	.label_459
.label_459:
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_460
.label_457:
	mov	eax, 1
	xor	ecx, ecx
	mov	dl, byte ptr [rbp - 0x15]
	test	dl, 1
	cmovne	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_471:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x1d0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406492
	.globl sub_406492
	.type sub_406492, @function
sub_406492:

	nop	dword ptr [rax + rax]
.label_475:
	test	byte ptr [byte ptr [forever]],  1
	je	.label_468
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x28]
	call	ignore_fifo_and_pipe
	cmp	rax, 0
	je	.label_468
	mov	edi, 1
	lea	rsi, [rbp - 0x180]
	call	fstat
	cmp	eax, 0
	jge	.label_465
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_478
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x1b8], esi
	call	gettext
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x1b8]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_451:
	test	byte ptr [byte ptr [forever]],  1
	je	.label_445
	test	byte ptr [rbp - 0x51], 1
	je	.label_445
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [dword ptr [pid]],  0
	mov	byte ptr [rbp - 0x1b1], cl
	jne	.label_450
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [dword ptr [follow_mode]],  2
	mov	byte ptr [rbp - 0x1b1], cl
	jne	.label_450
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x28], 1
	mov	byte ptr [rbp - 0x1b1], cl
	jne	.label_450
	xor	edi, edi
	lea	rsi, [rbp - 0xe8]
	call	fstat
	xor	edi, edi
	mov	cl, dil
	cmp	eax, 0
	mov	byte ptr [rbp - 0x1b1], cl
	jne	.label_450
	mov	eax, dword ptr [rbp - 0xd0]
	and	eax, 0xf000
	cmp	eax, 0x8000
	sete	cl
	xor	cl, 0xff
	mov	byte ptr [rbp - 0x1b1], cl
.label_450:
	mov	al, byte ptr [rbp - 0x1b1]
	and	al, 1
	mov	byte ptr [rbp - 0xe9], al
	test	byte ptr [rbp - 0xe9], 1
	jne	.label_472
	xor	edi, edi
	call	isatty
	cmp	eax, 0
	je	.label_472
	movabs	rdi, OFFSET FLAT:label_477
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
.label_472:
	jmp	.label_445
.label_445:
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_458
	test	byte ptr [byte ptr [forever]],  1
	jne	.label_458
	test	byte ptr [byte ptr [from_start]],  1
	jne	.label_458
	mov	dword ptr [rbp - 4], 0
	jmp	.label_471
.label_453:
	test	byte ptr [rbp - 0x51], 1
	je	.label_451
	cmp	dword ptr [dword ptr [follow_mode]],  1
	jne	.label_451
	movabs	rdi, OFFSET FLAT:label_455
	call	gettext
	mov	edi, 4
	movabs	rsi, OFFSET FLAT:label_140
	mov	qword ptr [rbp - 0x1b0], rax
	call	quotearg_style
	mov	edi, 1
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x1b0]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_481:
	cmp	dword ptr [rbp - 0x14], 1
	je	.label_463
	cmp	dword ptr [rbp - 0x14], 0
	jne	.label_464
	cmp	qword ptr [rbp - 0x28], 1
	jbe	.label_464
.label_463:
	mov	byte ptr [byte ptr [print_headers]],  1
.label_464:
	mov	edi, 1
	xor	esi, esi
	call	xset_binary_mode
	mov	qword ptr [rbp - 0x40], 0
.label_474:
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_475
	mov	rax, qword ptr [rbp - 0x40]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdi, rax
	call	tail_file
	and	al, 1
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0x15]
	and	al, 1
	movzx	edx, al
	and	edx, ecx
	cmp	edx, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x15], al
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_474
.label_458:
	mov	eax, 0x60
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x28]
	call	xnmalloc
	mov	qword ptr [rbp - 0x38], rax
	mov	qword ptr [rbp - 0x40], 0
.label_454:
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_481
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x40]
	imul	rcx, rcx, 0x60
	add	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_454
.label_470:
	jmp	.label_461
.label_461:
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_462
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x1c4], esi
	call	gettext
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x1c4]
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	qword ptr [rbp - 0x40], 0
.label_449:
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_469
	mov	rax, qword ptr [rbp - 0x40]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x38]
	cmp	dword ptr [rax + 0x44], -1
	je	.label_473
	mov	edi, dword ptr [rbp - 0x184]
	mov	rax, qword ptr [rbp - 0x40]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x38]
	mov	esi, dword ptr [rax + 0x44]
	call	inotify_rm_watch
	mov	dword ptr [rbp - 0x1c8], eax
.label_473:
	mov	rax, qword ptr [rbp - 0x40]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x38]
	cmp	dword ptr [rax + 0x48], -1
	je	.label_480
	mov	edi, dword ptr [rbp - 0x184]
	mov	rax, qword ptr [rbp - 0x40]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x38]
	mov	esi, dword ptr [rax + 0x48]
	call	inotify_rm_watch
	mov	dword ptr [rbp - 0x1cc], eax
.label_480:
	jmp	.label_466
.label_466:
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_449
.label_469:
	jmp	.label_446
.label_446:
	mov	byte ptr [byte ptr [disable_inotify]],  1
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x28]
	movsd	xmm0, qword ptr [rbp - 0x50]
	call	tail_forever
.label_468:
	test	byte ptr [byte ptr [have_read_stdin]],  1
	je	.label_457
	xor	edi, edi
	call	close
	cmp	eax, 0
	jge	.label_457
	call	__errno_location
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:label_140
	mov	esi, dword ptr [rax]
	mov	al, 0
	call	error
.label_476:
	mov	edi, dword ptr [rbp - 0x184]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x28]
	movsd	xmm0, qword ptr [rbp - 0x50]
	call	tail_forever_inotify
	test	al, 1
	jne	.label_470
	mov	dword ptr [rbp - 4], 1
	jmp	.label_471
	.section	.text
	.align	16
	#Procedure 0x4068b4

	.globl main
	.type main, @function
main:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x1d0
	movsd	xmm0,  qword ptr [word ptr [rip + label_488]]
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x14], 0
	mov	byte ptr [rbp - 0x15], 1
	mov	qword ptr [rbp - 0x20], 0xa
	movsd	qword ptr [rbp - 0x50], xmm0
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rsi]
	call	set_program_name
	mov	edi, 6
	movabs	rsi, OFFSET FLAT:label_22
	call	setlocale
	movabs	rdi, OFFSET FLAT:label_484
	movabs	rsi, OFFSET FLAT:label_485
	mov	qword ptr [rbp - 0x190], rax
	call	bindtextdomain
	movabs	rdi, OFFSET FLAT:label_484
	mov	qword ptr [rbp - 0x198], rax
	call	textdomain
	movabs	rdi, OFFSET FLAT:close_stdout
	mov	qword ptr [rbp - 0x1a0], rax
	call	atexit
	lea	rdx, [rbp - 0x20]
	mov	byte ptr [byte ptr [have_read_stdin]],  0
	mov	byte ptr [byte ptr [count_lines]],  1
	mov	byte ptr [byte ptr [print_headers]],  0
	mov	byte ptr [byte ptr [from_start]],  0
	mov	byte ptr [byte ptr [forever]],  0
	mov	byte ptr [byte ptr [line_end]],  0xa
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x1a4], eax
	call	parse_obsolete_option
	lea	rdx, [rbp - 0x20]
	lea	rcx, [rbp - 0x14]
	lea	r8, [rbp - 0x50]
	and	al, 1
	mov	byte ptr [rbp - 0x41], al
	mov	al, byte ptr [rbp - 0x41]
	and	al, 1
	movzx	edi, al
	mov	r9d, dword ptr [rbp - 8]
	sub	r9d, edi
	mov	dword ptr [rbp - 8], r9d
	mov	al, byte ptr [rbp - 0x41]
	and	al, 1
	movzx	edi, al
	mov	rsi, qword ptr [rbp - 0x10]
	movsxd	r10, edi
	shl	r10, 3
	add	rsi, r10
	mov	qword ptr [rbp - 0x10], rsi
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	parse_options
	test	byte ptr [byte ptr [from_start]],  1
	je	.label_482
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_483
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, -1
	mov	qword ptr [rbp - 0x20], rax
.label_483:
	jmp	.label_482
.label_482:
	mov	eax,  dword ptr [dword ptr [optind]]
	cmp	eax, dword ptr [rbp - 8]
	jge	.label_487
	mov	eax, dword ptr [rbp - 8]
	sub	eax,  dword ptr [dword ptr [optind]]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x28], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	movsxd	rdx,  dword ptr [dword ptr [optind]]
	shl	rdx, 3
	add	rcx, rdx
	mov	qword ptr [rbp - 0x30], rcx
	jmp	.label_486
	.section	.text
	.align	16
	#Procedure 0x406a50
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
	#Procedure 0x406a6a
	.globl sub_406a6a
	.type sub_406a6a, @function
sub_406a6a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406a70

	.globl die_pipe
	.type die_pipe, @function
die_pipe:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	edi, 0xd
	call	raise
	mov	edi, 1
	mov	dword ptr [rbp - 4], eax
	call	exit
	.section	.text
	.align	16
	#Procedure 0x406a8f
	.globl sub_406a8f
	.type sub_406a8f, @function
sub_406a8f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x406a90

	.globl make_timespec
	.type make_timespec, @function
make_timespec:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rsi
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x28], rsi
	movups	xmm0, xmmword ptr [rbp - 0x30]
	movaps	xmmword ptr [rbp - 0x10], xmm0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406abe
	.globl sub_406abe
	.type sub_406abe, @function
sub_406abe:

	nop	
	.section	.text
	.align	16
	#Procedure 0x406ac0
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x20
	sub	edi, 0x5e
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_489
	jmp	.label_491
.label_491:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_490
.label_489:
	mov	byte ptr [rbp - 1], 0
.label_490:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406af2
	.globl sub_406af2
	.type sub_406af2, @function
sub_406af2:

	nop	word ptr cs:[rax + rax]
.label_496:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406b06
	.globl sub_406b06
	.type sub_406b06, @function
sub_406b06:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406b0c

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
.label_498:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_496
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax], 0
	je	.label_494
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x28], 1
.label_497:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_492
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_497
.label_492:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x18]
	jbe	.label_493
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
.label_493:
	jmp	.label_494
.label_494:
	jmp	.label_495
.label_495:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_498
	.section	.text
	.align	16
	#Procedure 0x406bb0
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
	#Procedure 0x406be6
	.globl sub_406be6
	.type sub_406be6, @function
sub_406be6:

	nop	word ptr cs:[rax + rax]
.label_521:
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 0x38], -1
	jne	.label_506
	movabs	rdi, OFFSET FLAT:label_510
	mov	byte ptr [rbp - 0xa9], 1
	call	gettext
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x130], rax
	call	pretty_name
	mov	edi, 4
	mov	rsi, rax
	call	quotearg_style
	xor	edi, edi
	mov	dword ptr [rbp - 0x134], edi
	mov	esi, dword ptr [rbp - 0x134]
	mov	rdx, qword ptr [rbp - 0x130]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_501
.label_530:
	mov	eax, dword ptr [rbp - 0x88]
	and	eax, 0xf000
	cmp	eax, 0x8000
	je	.label_527
	mov	eax, dword ptr [rbp - 0x88]
	and	eax, 0xf000
	cmp	eax, 0x1000
	je	.label_527
	mov	eax, dword ptr [rbp - 0x88]
	and	eax, 0xf000
	cmp	eax, 0xc000
	je	.label_527
	mov	eax, dword ptr [rbp - 0x88]
	and	eax, 0xf000
	cmp	eax, 0x2000
	je	.label_527
	xor	eax, eax
	mov	cl, al
	mov	byte ptr [rbp - 0xa1], 0
	mov	rdx, qword ptr [rbp - 8]
	mov	dword ptr [rdx + 0x3c], 0xffffffff
	mov	rdx, qword ptr [rbp - 8]
	mov	byte ptr [rdx + 0x36], 0
	test	byte ptr [byte ptr [reopen_inaccessible_files]],  1
	mov	byte ptr [rbp - 0xd9], cl
	je	.label_536
	cmp	dword ptr [dword ptr [follow_mode]],  1
	sete	al
	mov	byte ptr [rbp - 0xd9], al
.label_536:
	mov	al, byte ptr [rbp - 0xd9]
	xor	al, 0xff
	mov	rcx, qword ptr [rbp - 8]
	and	al, 1
	mov	byte ptr [rcx + 0x34], al
	test	byte ptr [rbp - 0xa3], 1
	jne	.label_545
	mov	eax, dword ptr [rbp - 0xa8]
	mov	rcx, qword ptr [rbp - 8]
	cmp	eax, dword ptr [rcx + 0x3c]
	je	.label_511
.label_545:
	movabs	rdi, OFFSET FLAT:label_516
	call	gettext
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0xe8], rax
	call	pretty_name
	mov	edi, 4
	mov	rsi, rax
	call	quotearg_style
	mov	rsi, qword ptr [rbp - 8]
	test	byte ptr [rsi + 0x34], 1
	mov	qword ptr [rbp - 0xf0], rax
	je	.label_525
	movabs	rdi, OFFSET FLAT:label_403
	call	gettext
	mov	qword ptr [rbp - 0xf8], rax
	jmp	.label_512
.label_527:
	mov	edi, dword ptr [rbp - 0xb0]
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rbp - 0xfc], edi
	mov	rdi, rax
	call	pretty_name
	mov	edi, dword ptr [rbp - 0xfc]
	mov	rsi, rax
	call	fremote
	mov	rsi, qword ptr [rbp - 8]
	mov	cl, al
	and	cl, 1
	mov	byte ptr [rsi + 0x35], cl
	test	al, 1
	jne	.label_543
	jmp	.label_538
.label_543:
	test	byte ptr [byte ptr [disable_inotify]],  1
	jne	.label_538
	movabs	rdi, OFFSET FLAT:label_540
	mov	byte ptr [rbp - 0xa1], 0
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x3c], 0xffffffff
	call	gettext
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x108], rax
	call	pretty_name
	mov	edi, 4
	mov	rsi, rax
	call	quotearg_style
	xor	edi, edi
	mov	dword ptr [rbp - 0x10c], edi
	mov	esi, dword ptr [rbp - 0x10c]
	mov	rdx, qword ptr [rbp - 0x108]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	rcx, qword ptr [rbp - 8]
	mov	byte ptr [rcx + 0x34], 1
	mov	rcx, qword ptr [rbp - 8]
	mov	byte ptr [rcx + 0x35], 1
	jmp	.label_518
.label_538:
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x3c], 0
.label_518:
	jmp	.label_513
.label_513:
	jmp	.label_524
.label_524:
	jmp	.label_526
.label_526:
	mov	byte ptr [rbp - 0xa9], 0
	test	byte ptr [rbp - 0xa1], 1
	jne	.label_528
	mov	edi, dword ptr [rbp - 0xb0]
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rbp - 0x110], edi
	mov	rdi, rax
	call	pretty_name
	mov	edi, dword ptr [rbp - 0x110]
	mov	rsi, rax
	call	close_fd
	mov	rax, qword ptr [rbp - 8]
	mov	edi, dword ptr [rax + 0x38]
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rbp - 0x114], edi
	mov	rdi, rax
	call	pretty_name
	mov	edi, dword ptr [rbp - 0x114]
	mov	rsi, rax
	call	close_fd
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x38], 0xffffffff
	jmp	.label_505
.label_534:
	jmp	.label_539
.label_539:
	jmp	.label_541
.label_533:
	movabs	rdi, OFFSET FLAT:label_542
	movabs	rsi, OFFSET FLAT:label_265
	mov	edx, 0x3df
	movabs	rcx, OFFSET FLAT:label_515
	call	__assert_fail
.label_546:
	mov	eax, 0x800
	xor	ecx, ecx
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdx]
	mov	sil, byte ptr [rbp - 9]
	test	sil, 1
	cmovne	eax, ecx
	or	eax, 0
	mov	esi, eax
	mov	al, 0
	call	open_safer
	mov	dword ptr [rbp - 0xb4], eax
.label_519:
	mov	eax, dword ptr [rbp - 0xb4]
	mov	dword ptr [rbp - 0xb0], eax
	mov	rdi, qword ptr [rbp - 8]
	call	valid_file_spec
	test	al, 1
	jne	.label_520
	jmp	.label_533
.label_520:
	jmp	.label_522
.label_517:
	cmp	dword ptr [rbp - 0xb0], -1
	je	.label_523
	lea	rsi, [rbp - 0xa0]
	mov	edi, dword ptr [rbp - 0xb0]
	call	fstat
	cmp	eax, 0
	jge	.label_530
.label_523:
	mov	byte ptr [rbp - 0xa1], 0
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x3c], ecx
	mov	rax, qword ptr [rbp - 8]
	test	byte ptr [rax + 0x36], 1
	jne	.label_531
	test	byte ptr [rbp - 0xa3], 1
	je	.label_534
	movabs	rdi, OFFSET FLAT:label_535
	mov	rax, qword ptr [rbp - 8]
	mov	esi, dword ptr [rax + 0x3c]
	mov	dword ptr [rbp - 0xc8], esi
	call	gettext
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0xd0], rax
	call	pretty_name
	mov	edi, 4
	mov	rsi, rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0xc8]
	mov	rdx, qword ptr [rbp - 0xd0]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_539
.label_522:
	xor	eax, eax
	mov	cl, al
	test	byte ptr [byte ptr [reopen_inaccessible_files]],  1
	mov	byte ptr [rbp - 0xb5], cl
	je	.label_548
	cmp	dword ptr [rbp - 0xb0], -1
	sete	al
	mov	byte ptr [rbp - 0xb5], al
.label_548:
	mov	al, byte ptr [rbp - 0xb5]
	xor	al, 0xff
	mov	rcx, qword ptr [rbp - 8]
	and	al, 1
	mov	byte ptr [rcx + 0x36], al
	test	byte ptr [byte ptr [disable_inotify]],  1
	jne	.label_517
	lea	rsi, [rbp - 0xa0]
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax]
	call	lstat
	cmp	eax, 0
	jne	.label_517
	mov	eax, dword ptr [rbp - 0x88]
	and	eax, 0xf000
	cmp	eax, 0xa000
	jne	.label_517
	movabs	rdi, OFFSET FLAT:label_537
	mov	byte ptr [rbp - 0xa1], 0
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x3c], 0xffffffff
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x34], 1
	call	gettext
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0xc0], rax
	call	pretty_name
	mov	edi, 4
	mov	rsi, rax
	call	quotearg_style
	xor	edi, edi
	mov	dword ptr [rbp - 0xc4], edi
	mov	esi, dword ptr [rbp - 0xc4]
	mov	rdx, qword ptr [rbp - 0xc0]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_526
.label_529:
	movabs	rdi, OFFSET FLAT:label_544
	call	gettext
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x120], rax
	call	pretty_name
	mov	edi, 4
	mov	rsi, rax
	call	quotearg_style
	xor	edi, edi
	mov	dword ptr [rbp - 0x124], edi
	mov	esi, dword ptr [rbp - 0x124]
	mov	rdx, qword ptr [rbp - 0x120]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_502
.label_507:
	mov	edi, dword ptr [rbp - 0xb0]
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rbp - 0x14c], edi
	mov	rdi, rax
	call	pretty_name
	mov	edi, dword ptr [rbp - 0x14c]
	mov	rsi, rax
	call	close_fd
.label_499:
	jmp	.label_501
.label_501:
	jmp	.label_502
.label_502:
	jmp	.label_505
.label_505:
	test	byte ptr [rbp - 0xa9], 1
	je	.label_504
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xb0]
	test	byte ptr [rbp - 0xa2], 1
	mov	qword ptr [rbp - 0x158], rdi
	mov	dword ptr [rbp - 0x15c], esi
	je	.label_503
	mov	eax, 0xffffffff
	mov	dword ptr [rbp - 0x160], eax
	jmp	.label_508
.label_503:
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	movzx	ecx, al
	mov	dword ptr [rbp - 0x160], ecx
.label_508:
	mov	eax, dword ptr [rbp - 0x160]
	xor	ecx, ecx
	mov	edx, ecx
	lea	rcx, [rbp - 0xa0]
	mov	rdi, qword ptr [rbp - 0x158]
	mov	esi, dword ptr [rbp - 0x15c]
	mov	r8d, eax
	call	record_open_fd
	mov	edi, dword ptr [rbp - 0xb0]
	mov	rcx, qword ptr [rbp - 8]
	mov	dword ptr [rbp - 0x164], edi
	mov	rdi, rcx
	call	pretty_name
	xor	esi, esi
	xor	edx, edx
	mov	edi, dword ptr [rbp - 0x164]
	mov	rcx, rax
	call	xlseek
	mov	qword ptr [rbp - 0x170], rax
.label_504:
	add	rsp, 0x170
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407211
	.globl sub_407211
	.type sub_407211, @function
sub_407211:

	nop	word ptr cs:[rax + rax]
.label_506:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x28]
	cmp	rax, qword ptr [rbp - 0x98]
	jne	.label_509
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x20]
	cmp	rax, qword ptr [rbp - 0xa0]
	je	.label_507
.label_509:
	movabs	rdi, OFFSET FLAT:label_500
	mov	byte ptr [rbp - 0xa9], 1
	call	gettext
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x140], rax
	call	pretty_name
	mov	edi, 4
	mov	rsi, rax
	call	quotearg_style
	xor	edi, edi
	mov	dword ptr [rbp - 0x144], edi
	mov	esi, dword ptr [rbp - 0x144]
	mov	rdx, qword ptr [rbp - 0x140]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	rcx, qword ptr [rbp - 8]
	mov	edi, dword ptr [rcx + 0x38]
	mov	rcx, qword ptr [rbp - 8]
	mov	dword ptr [rbp - 0x148], edi
	mov	rdi, rcx
	call	pretty_name
	mov	edi, dword ptr [rbp - 0x148]
	mov	rsi, rax
	call	close_fd
	jmp	.label_499
	.section	.text
	.align	16
	#Procedure 0x4072c5

	.globl recheck
	.type recheck, @function
recheck:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x170
	mov	al, sil
	mov	qword ptr [rbp - 8], rdi
	and	al, 1
	mov	byte ptr [rbp - 9], al
	mov	byte ptr [rbp - 0xa1], 1
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi]
	mov	esi, OFFSET FLAT:label_140
	call	strcmp
	cmp	eax, 0
	sete	cl
	and	cl, 1
	mov	byte ptr [rbp - 0xa2], cl
	mov	rsi, qword ptr [rbp - 8]
	mov	cl, byte ptr [rsi + 0x36]
	and	cl, 1
	mov	byte ptr [rbp - 0xa3], cl
	mov	rsi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rsi + 0x3c]
	mov	dword ptr [rbp - 0xa8], eax
	test	byte ptr [rbp - 0xa2], 1
	je	.label_546
	xor	eax, eax
	mov	dword ptr [rbp - 0xb4], eax
	jmp	.label_519
.label_528:
	cmp	dword ptr [rbp - 0xa8], 0
	je	.label_521
	cmp	dword ptr [rbp - 0xa8], 2
	je	.label_521
	mov	byte ptr [rbp - 0xa9], 1
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 0x38], -1
	jne	.label_547
	jmp	.label_529
.label_531:
	mov	eax, dword ptr [rbp - 0xa8]
	mov	dword ptr [rbp - 0xd4], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0xd4]
	cmp	ecx, dword ptr [rax]
	je	.label_532
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	rdi, qword ptr [rbp - 8]
	mov	dword ptr [rbp - 0xd8], esi
	call	pretty_name
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rax
	call	quotearg_n_style_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_330
	mov	esi, dword ptr [rbp - 0xd8]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_532:
	jmp	.label_541
.label_541:
	jmp	.label_524
.label_525:
	movabs	rax, OFFSET FLAT:label_22
	mov	qword ptr [rbp - 0xf8], rax
	jmp	.label_512
.label_512:
	mov	rax, qword ptr [rbp - 0xf8]
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0xe8]
	mov	rcx, qword ptr [rbp - 0xf0]
	mov	r8, rax
	mov	al, 0
	call	error
.label_511:
	jmp	.label_513
.label_547:
	movabs	rdi, OFFSET FLAT:label_514
	movabs	rsi, OFFSET FLAT:label_265
	mov	edx, 0x42c
	movabs	rcx, OFFSET FLAT:label_515
	call	__assert_fail
.label_554:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x30]
	and	ecx, 0xf000
	cmp	ecx, 0x8000
	jne	.label_549
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_549
	movabs	rdi, OFFSET FLAT:label_555
	call	gettext
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0xa8]
	mov	qword ptr [rbp - 0xd0], rax
	call	quotearg_n_style_colon
	xor	esi, esi
	mov	edi, esi
	mov	rdx, qword ptr [rbp - 0xd0]
	mov	rcx, rax
	mov	al, 0
	call	error
	xor	esi, esi
	xor	edx, edx
	mov	rcx, qword ptr [rbp - 8]
	mov	edi, dword ptr [rcx + 0x38]
	mov	rcx, qword ptr [rbp - 0xa8]
	call	xlseek
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 8], 0
	mov	qword ptr [rbp - 0xd8], rax
	jmp	.label_550
.label_549:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x30]
	and	ecx, 0xf000
	cmp	ecx, 0x8000
	jne	.label_552
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 8]
	jne	.label_552
	lea	rdi, [rbp - 0xa0]
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0xe0], rax
	call	get_stat_mtime
	mov	qword ptr [rbp - 0xb8], rax
	mov	qword ptr [rbp - 0xb0], rdx
	mov	rax, qword ptr [rbp - 0xe0]
	mov	rdi, qword ptr [rax + 0x10]
	mov	rsi, qword ptr [rax + 0x18]
	mov	rdx, qword ptr [rbp - 0xb8]
	mov	rcx, qword ptr [rbp - 0xb0]
	call	timespec_cmp
	cmp	eax, 0
	jne	.label_552
	jmp	.label_553
.label_551:
	jmp	.label_553
.label_553:
	add	rsp, 0xf0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407566
	.globl sub_407566
	.type sub_407566, @function
sub_407566:

	nop	word ptr [rax + rax]
.label_557:
	mov	rdi, qword ptr [rbp - 8]
	call	pretty_name
	lea	rsi, [rbp - 0xa0]
	mov	qword ptr [rbp - 0xa8], rax
	mov	rax, qword ptr [rbp - 8]
	mov	edi, dword ptr [rax + 0x38]
	call	fstat
	cmp	eax, 0
	je	.label_554
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x3c], ecx
	mov	rax, qword ptr [rbp - 8]
	mov	edi, dword ptr [rax + 0x38]
	mov	rsi, qword ptr [rbp - 0xa8]
	call	close_fd
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x38], 0xffffffff
	jmp	.label_553
	.section	.text
	.align	16
	#Procedure 0x4075cc

	.globl check_fspec
	.type check_fspec, @function
check_fspec:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xf0
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	cmp	dword ptr [rsi + 0x38], -1
	jne	.label_557
	jmp	.label_553
.label_552:
	jmp	.label_550
.label_550:
	xor	eax, eax
	mov	cl, al
	test	byte ptr [byte ptr [print_headers]],  1
	mov	byte ptr [rbp - 0xe1], cl
	je	.label_556
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx]
	setne	dl
	mov	byte ptr [rbp - 0xe1], dl
.label_556:
	mov	al, byte ptr [rbp - 0xe1]
	mov	rcx, -1
	and	al, 1
	mov	byte ptr [rbp - 0xb9], al
	mov	al, byte ptr [rbp - 0xb9]
	mov	rsi, qword ptr [rbp - 0xa8]
	mov	rdx, qword ptr [rbp - 8]
	mov	edx, dword ptr [rdx + 0x38]
	and	al, 1
	movzx	edi, al
	call	dump_remainder
	mov	qword ptr [rbp - 0xc8], rax
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rcx, qword ptr [rbp - 8]
	add	rax, qword ptr [rcx + 8]
	mov	qword ptr [rcx + 8], rax
	cmp	qword ptr [rbp - 0xc8], 0
	je	.label_553
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	rdi,  qword ptr [word ptr [stdout]]
	call	fflush_unlocked
	cmp	eax, 0
	je	.label_551
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_452
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xe8], esi
	call	gettext
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0xe8]
	mov	rdx, rax
	mov	al, 0
	call	error
	.section	.text
	.align	16
	#Procedure 0x4076d0

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
	jl	.label_559
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_558
.label_559:
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
.label_558:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407758
	.globl sub_407758
	.type sub_407758, @function
sub_407758:

	nop	dword ptr [rax + rax]
.label_571:
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
	js	.label_560
	movss	xmm0, dword ptr [rbp - 0xb0]
	movss	dword ptr [rbp - 0xb4], xmm0
.label_560:
	movss	xmm0, dword ptr [rbp - 0xb4]
	mov	rax, qword ptr [rbp - 0x30]
	mulss	xmm0, dword ptr [rax + 4]
	mov	rax, qword ptr [rbp - 0x30]
	mulss	xmm0, dword ptr [rax + 8]
	movss	dword ptr [rbp - 0xac], xmm0
.label_567:
	movss	xmm0, dword ptr [rbp - 0xac]
	movss	xmm1,  dword ptr [dword ptr [rip + label_152]]
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
	jne	.label_565
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x48]
	mov	qword ptr [rbp - 0x40], rax
.label_562:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_561
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_562
.label_568:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x20]
	add	rcx, -1
	mov	qword ptr [rax + 0x20], rcx
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax], 0
	jne	.label_566
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
	js	.label_573
	movss	xmm0, dword ptr [rbp - 0x5c]
	movss	dword ptr [rbp - 0x60], xmm0
.label_573:
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
	js	.label_569
	movss	xmm0, dword ptr [rbp - 0x6c]
	movss	dword ptr [rbp - 0x70], xmm0
.label_569:
	movss	xmm0, dword ptr [rbp - 0x70]
	movss	xmm1, dword ptr [rbp - 0x68]
	mulss	xmm1, xmm0
	movss	xmm0, dword ptr [rbp - 0x64]
	ucomiss	xmm1, xmm0
	jbe	.label_564
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
	js	.label_572
	movss	xmm0, dword ptr [rbp - 0x8c]
	movss	dword ptr [rbp - 0x90], xmm0
.label_572:
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
	js	.label_574
	movss	xmm0, dword ptr [rbp - 0x9c]
	movss	dword ptr [rbp - 0xa0], xmm0
.label_574:
	movss	xmm0, dword ptr [rbp - 0xa0]
	movss	xmm1, dword ptr [rbp - 0x98]
	mulss	xmm1, xmm0
	movss	xmm0, dword ptr [rbp - 0x94]
	ucomiss	xmm1, xmm0
	jbe	.label_563
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x30]
	test	byte ptr [rax + 0x10], 1
	je	.label_571
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
	js	.label_575
	movss	xmm0, dword ptr [rbp - 0xa4]
	movss	dword ptr [rbp - 0xa8], xmm0
.label_575:
	movss	xmm0, dword ptr [rbp - 0xa8]
	mov	rax, qword ptr [rbp - 0x30]
	mulss	xmm0, dword ptr [rax + 4]
	movss	dword ptr [rbp - 0xac], xmm0
	jmp	.label_567
	.section	.text
	.align	16
	#Procedure 0x407ade

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
	jne	.label_568
	mov	qword ptr [rbp - 8], 0
	jmp	.label_570
.label_561:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x48], 0
.label_565:
	jmp	.label_563
.label_563:
	jmp	.label_564
.label_564:
	jmp	.label_566
.label_566:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_570:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0xc0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407b53
	.globl sub_407b53
	.type sub_407b53, @function
sub_407b53:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407b60

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
	jb	.label_576
	call	abort
.label_576:
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
	#Procedure 0x407bc4
	.globl sub_407bc4
	.type sub_407bc4, @function
sub_407bc4:

	nop	word ptr cs:[rax + rax]
.label_578:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	cmp	eax, ecx
	je	.label_577
.label_579:
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_580:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407c0e
	.globl sub_407c0e
	.type sub_407c0e, @function
sub_407c0e:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407c1d

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
	jne	.label_581
	mov	dword ptr [rbp - 4], 0
	jmp	.label_580
.label_581:
	jmp	.label_577
.label_577:
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
	jne	.label_578
	jmp	.label_579
	.section	.text
	.align	16
	#Procedure 0x407c90
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_582
	call	gettext
	movabs	rsi, OFFSET FLAT:label_584
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_583
	mov	dword ptr [rbp - 4], eax
	call	gettext
	movabs	rsi, OFFSET FLAT:label_586
	movabs	rdx, OFFSET FLAT:label_587
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_585
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
	#Procedure 0x407d16
	.globl sub_407d16
	.type sub_407d16, @function
sub_407d16:

	nop	
	nop	dword ptr [rax + rax]
.label_608:
	test	byte ptr [byte ptr [from_start]],  1
	je	.label_598
	test	byte ptr [byte ptr [presume_input_pipe]],  1
	jne	.label_596
	movabs	rax, 0x7fffffffffffffff
	cmp	qword ptr [rbp - 0x20], rax
	ja	.label_596
	mov	eax, dword ptr [rbp - 0xa0]
	and	eax, 0xf000
	cmp	eax, 0x8000
	jne	.label_600
	mov	edx, 1
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	call	xlseek
	cmp	rax, 0
	jge	.label_605
.label_600:
	mov	edx, 1
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsi, qword ptr [rbp - 0x20]
	call	lseek
	cmp	rax, -1
	je	.label_596
.label_605:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rcx]
	mov	qword ptr [rcx], rax
	jmp	.label_595
.label_594:
	cmp	qword ptr [rbp - 0xd0], -1
	jne	.label_597
	xor	eax, eax
	mov	esi, eax
	mov	edx, 1
	mov	edi, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x10]
	call	xlseek
	mov	qword ptr [rbp - 0xd0], rax
.label_597:
	mov	rax, qword ptr [rbp - 0xd0]
	cmp	rax, qword ptr [rbp - 0xc8]
	jge	.label_599
	mov	rax, qword ptr [rbp - 0xc8]
	sub	rax, qword ptr [rbp - 0xd0]
	mov	qword ptr [rbp - 0xd8], rax
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0xd8]
	jae	.label_603
	xor	edx, edx
	mov	rax, qword ptr [rbp - 0xc8]
	sub	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0xd0], rax
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsi, qword ptr [rbp - 0xd0]
	mov	rcx, qword ptr [rbp - 0x10]
	call	xlseek
	mov	qword ptr [rbp - 0x100], rax
.label_603:
	jmp	.label_599
.label_599:
	mov	rax, qword ptr [rbp - 0xd0]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
.label_588:
	xor	edi, edi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x20]
	call	dump_remainder
	mov	rcx, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rcx]
	mov	qword ptr [rcx], rax
	mov	byte ptr [rbp - 1], 1
.label_589:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x100
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407e89
	.globl sub_407e89
	.type sub_407e89, @function
sub_407e89:

	nop	
.label_591:
	mov	eax, 0x200
	mov	ecx, eax
	mov	qword ptr [rbp - 0xf8], rcx
	jmp	.label_590
.label_590:
	mov	rax, qword ptr [rbp - 0xf8]
	mov	rcx, qword ptr [rbp - 0xf0]
	cmp	rcx, rax
	jg	.label_594
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x14]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	call	pipe_bytes
	and	al, 1
	mov	byte ptr [rbp - 1], al
	jmp	.label_589
.label_602:
	mov	edx, 2
	xor	eax, eax
	mov	ecx, eax
	mov	edi, dword ptr [rbp - 0x14]
	sub	rcx, qword ptr [rbp - 0x20]
	mov	rsi, rcx
	call	lseek
	mov	qword ptr [rbp - 0xd0], rax
	cmp	rax, -1
	je	.label_606
	mov	rax, qword ptr [rbp - 0xd0]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0xc8], rax
.label_606:
	jmp	.label_592
.label_592:
	jmp	.label_593
.label_593:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0xc8]
	cmp	rcx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0xf0], rdx
	jge	.label_591
	movabs	rax, 0x2000000000000000
	cmp	qword ptr [rbp - 0x80], rax
	ja	.label_591
	mov	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0xf8], rax
	jmp	.label_590
	.section	.text
	.align	16
	#Procedure 0x407f57

	.globl tail_bytes
	.type tail_bytes, @function
tail_bytes:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x100
	lea	rax, [rbp - 0xb8]
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsi, rax
	call	fstat
	cmp	eax, 0
	je	.label_608
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_607
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xdc], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0xe8], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0xdc]
	mov	rdx, qword ptr [rbp - 0xe8]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 1], 0
	jmp	.label_589
.label_596:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x14]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	call	start_bytes
	mov	dword ptr [rbp - 0xbc], eax
	cmp	dword ptr [rbp - 0xbc], 0
	je	.label_604
	cmp	dword ptr [rbp - 0xbc], 0
	setl	al
	and	al, 1
	mov	byte ptr [rbp - 1], al
	jmp	.label_589
.label_598:
	mov	qword ptr [rbp - 0xc8], -1
	mov	qword ptr [rbp - 0xd0], -1
	test	byte ptr [byte ptr [presume_input_pipe]],  1
	jne	.label_593
	movabs	rax, 0x7fffffffffffffff
	cmp	qword ptr [rbp - 0x20], rax
	ja	.label_593
	lea	rdi, [rbp - 0xb8]
	call	usable_st_size
	test	al, 1
	jne	.label_601
	jmp	.label_602
.label_601:
	mov	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0xc8], rax
	jmp	.label_592
.label_604:
	jmp	.label_595
.label_595:
	mov	qword ptr [rbp - 0x20], -1
	jmp	.label_588
	.section	.text
	.align	16
	#Procedure 0x408090
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
	#Procedure 0x4080c7
	.globl sub_4080c7
	.type sub_4080c7, @function
sub_4080c7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4080d0

	.globl xwrite_stdout
	.type xwrite_stdout, @function
xwrite_stdout:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	cmp	qword ptr [rbp - 0x10], 0
	jbe	.label_609
	mov	eax, 1
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx,  qword ptr [word ptr [stdout]]
	call	fwrite_unlocked
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_609
	mov	rdi,  qword ptr [word ptr [stdout]]
	call	clearerr_unlocked
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_610
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], esi
	call	gettext
	mov	edi, 4
	movabs	rsi, OFFSET FLAT:label_478
	mov	qword ptr [rbp - 0x20], rax
	call	quotearg_style
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x14]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_609:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40816b
	.globl sub_40816b
	.type sub_40816b, @function
sub_40816b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408170
	.globl get_stat_atime_ns
	.type get_stat_atime_ns, @function
get_stat_atime_ns:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rdi + 0x50]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408182
	.globl sub_408182
	.type sub_408182, @function
sub_408182:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408190

	.globl xstrtod
	.type xstrtod, @function
xstrtod:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	byte ptr [rbp - 0x31], 1
	call	__errno_location
	lea	rsi, [rbp - 0x30]
	mov	dword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rbp - 8]
	call	rax
	movsd	qword ptr [rbp - 0x28], xmm0
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 8]
	je	.label_613
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_612
	mov	rax, qword ptr [rbp - 0x30]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_612
.label_613:
	mov	byte ptr [rbp - 0x31], 0
	jmp	.label_614
.label_612:
	xorps	xmm0, xmm0
	movsd	xmm1, qword ptr [rbp - 0x28]
	ucomisd	xmm1, xmm0
	jne	.label_615
	jp	.label_615
	jmp	.label_616
.label_615:
	call	__errno_location
	cmp	dword ptr [rax], 0x22
	jne	.label_616
	mov	byte ptr [rbp - 0x31], 0
.label_616:
	jmp	.label_614
.label_614:
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_611
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
.label_611:
	movsd	xmm0, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x18]
	movsd	qword ptr [rax], xmm0
	mov	cl, byte ptr [rbp - 0x31]
	and	cl, 1
	movzx	eax, cl
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408262
	.globl sub_408262
	.type sub_408262, @function
sub_408262:

	nop	word ptr cs:[rax + rax]
.label_617:
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_623
	mov	eax, 0x7ff00000
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x20]
	jae	.label_623
	mov	qword ptr [rbp - 0x20], 0x7ff00000
	jmp	.label_621
.label_622:
	call	__errno_location
	cmp	dword ptr [rax], 4
	jne	.label_617
	jmp	.label_620
	.section	.text
	.align	16
	#Procedure 0x4082af

	.globl safe_read
	.type safe_read, @function
safe_read:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	dword ptr [rbp - 0xc], edi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
.label_620:
	mov	edi, dword ptr [rbp - 0xc]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	call	read
	xor	edi, edi
	mov	edx, edi
	mov	qword ptr [rbp - 0x28], rax
	cmp	rdx, qword ptr [rbp - 0x28]
	jg	.label_622
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_618
.label_623:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_618
.label_618:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408308
	.globl sub_408308
	.type sub_408308, @function
sub_408308:

	nop	word ptr [rax + rax]
.label_621:
	jmp	.label_619
.label_619:
	jmp	.label_624
.label_624:
	jmp	.label_620
.label_629:
	mov	edx, 1
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x48], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x70]
	call	transfer_entries
	test	al, 1
	jne	.label_628
	jmp	.label_627
.label_628:
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x70]
	call	transfer_entries
	test	al, 1
	jne	.label_630
.label_627:
	call	abort
.label_632:
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
	jne	.label_633
	mov	byte ptr [rbp - 1], 0
	jmp	.label_625
.label_630:
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax]
	mov	rdi, rax
	call	free
	mov	byte ptr [rbp - 1], 0
.label_625:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x80
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4083c5
	.globl sub_4083c5
	.type sub_4083c5, @function
sub_4083c5:

	nop	dword ptr [rax]
.label_633:
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
	jne	.label_626
	jmp	.label_629
.label_626:
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
	jmp	.label_625
.label_631:
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x10]
	jne	.label_632
	mov	byte ptr [rbp - 1], 1
	jmp	.label_625
	.section	.text
	.align	16
	#Procedure 0x4084f4

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
	jne	.label_631
	mov	byte ptr [rbp - 1], 0
	jmp	.label_625
.label_639:
	xor	eax, eax
	mov	ecx, 1
	mov	rdx, qword ptr [rbp - 8]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x2f
	cmove	eax, ecx
	mov	dword ptr [rbp - 0x1c], eax
.label_638:
	mov	eax, dword ptr [rbp - 0x1c]
	movsxd	rcx, eax
	add	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rcx
	mov	rdi, qword ptr [rbp - 8]
	call	last_component
	mov	rcx, qword ptr [rbp - 8]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x18], rax
.label_636:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_634
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x2f
	je	.label_637
	jmp	.label_634
.label_634:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40859f
	.globl sub_40859f
	.type sub_40859f, @function
sub_40859f:

	nop	
.label_637:
	jmp	.label_635
.label_635:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, -1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_636
	.section	.text
	.align	16
	#Procedure 0x4085b7

	.globl dir_len
	.type dir_len, @function
dir_len:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], 0
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_639
	xor	eax, eax
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_638
.label_827:
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x30]
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	dword ptr [rbp - 0xd4], edx
.label_737:
	mov	eax, dword ptr [rbp - 0xd4]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_832
	jmp	.label_761
.label_832:
	mov	byte ptr [rbp - 0x81], 0
	mov	byte ptr [rbp - 0x82], 0
	mov	byte ptr [rbp - 0x83], 0
	test	byte ptr [rbp - 0x79], 1
	je	.label_762
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_762
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_762
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x78]
	cmp	qword ptr [rbp - 0x30], -1
	mov	qword ptr [rbp - 0xe0], rax
	jne	.label_768
	mov	eax, 1
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x78]
	jae	.label_768
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_774
.label_817:
	jmp	.label_778
.label_778:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_780
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0
.label_780:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_777
.label_652:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_788
	test	byte ptr [rbp - 0x79], 1
	je	.label_788
	mov	dword ptr [rbp - 0x34], 4
.label_788:
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
.label_777:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x158
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408730
	.globl sub_408730
	.type sub_408730, @function
sub_408730:

	nop	dword ptr [rax + rax]
.label_691:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_801
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_801
	jmp	.label_805
.label_805:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_841
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_841:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_814
.label_814:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_818
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_818:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_824
.label_824:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_826
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_826:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_801:
	jmp	.label_833
.label_833:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_834
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_834:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_791
.label_791:
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_641
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_641
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x28]
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_641
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x39
	jg	.label_641
	jmp	.label_657
.label_657:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_659
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_659:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_665
.label_665:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_672
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_672:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_641
.label_641:
	mov	byte ptr [rbp - 0x7f], 0x30
	jmp	.label_644
.label_770:
	jmp	.label_662
.label_810:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_686
	cmp	qword ptr [rbp - 0x68], 0
	jne	.label_686
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0x20], 0
.label_686:
	jmp	.label_698
.label_698:
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
	jmp	.label_705
.label_705:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_713
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_713:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_717
.label_717:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_722
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_722:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_804:
	jmp	.label_678
.label_663:
	mov	qword ptr [rbp - 0x58], 0
.label_750:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_827
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	sete	sil
	and	sil, 1
	movzx	edx, sil
	mov	dword ptr [rbp - 0xd4], edx
	jmp	.label_737
.label_738:
	jmp	.label_733
.label_733:
	mov	edi, dword ptr [rbp - 0xa4]
	call	iswprint
	cmp	eax, 0
	jne	.label_747
	mov	byte ptr [rbp - 0x91], 0
.label_747:
	mov	rax, qword ptr [rbp - 0xb0]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_781
.label_781:
	jmp	.label_752
.label_752:
	jmp	.label_753
.label_753:
	lea	rdi, [rbp - 0xa0]
	call	mbsinit
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_649
.label_668:
	jmp	.label_759
.label_759:
	mov	eax, 1
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x91]
	and	dl, 1
	mov	byte ptr [rbp - 0x83], dl
	cmp	rcx, qword ptr [rbp - 0x90]
	jb	.label_760
	test	byte ptr [rbp - 0x79], 1
	je	.label_765
	test	byte ptr [rbp - 0x91], 1
	jne	.label_765
.label_760:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0xc0], rax
.label_729:
	test	byte ptr [rbp - 0x79], 1
	je	.label_769
	test	byte ptr [rbp - 0x91], 1
	jne	.label_769
	jmp	.label_771
.label_771:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_772
	jmp	.label_652
.label_825:
	jmp	.label_678
.label_724:
	test	byte ptr [rbp - 0x7a], 1
	je	.label_776
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
	jmp	.label_759
.label_798:
	mov	byte ptr [rbp - 0x81], 1
.label_762:
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
	ja	.label_724
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_794]]
	jmp	rcx
.label_684:
	jmp	.label_797
.label_797:
	mov	byte ptr [rbp - 0x83], 1
.label_1660:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_800
	test	byte ptr [rbp - 0x7b], 1
	je	.label_800
	jmp	.label_652
.label_1662:
	mov	byte ptr [rbp - 0x7d], 1
	mov	byte ptr [rbp - 0x83], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_804
	test	byte ptr [rbp - 0x7b], 1
	je	.label_810
	jmp	.label_652
.label_694:
	jmp	.label_668
.label_1661:
	mov	byte ptr [rbp - 0x83], 1
	jmp	.label_678
.label_1796:
	mov	dword ptr [rbp - 0x34], 5
	mov	byte ptr [rbp - 0x7b], 1
.label_1795:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_819
	jmp	.label_821
.label_821:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_823
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_823:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_819
.label_819:
	movabs	rax, OFFSET FLAT:label_431
	mov	byte ptr [rbp - 0x79], 1
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_663
.label_783:
	jmp	.label_835
.label_835:
	jmp	.label_836
.label_836:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_815
	jmp	.label_652
.label_1665:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_838
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	je	.label_640
	jmp	.label_646
.label_1664:
	mov	al, byte ptr [rbp - 0x7f]
	mov	byte ptr [rbp - 0x80], al
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_647
	test	byte ptr [rbp - 0x7b], 1
	je	.label_650
	jmp	.label_652
.label_815:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_653
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_653
	jmp	.label_658
.label_658:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_660
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_660:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_666
.label_666:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_673
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_673:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_679
.label_679:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_682
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_682:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_653:
	jmp	.label_692
.label_692:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_695
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_695:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_702
.label_702:
	jmp	.label_708
.label_708:
	jmp	.label_710
.label_710:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_714
	test	byte ptr [rbp - 0x82], 1
	jne	.label_714
	jmp	.label_793
.label_793:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_718
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_718:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_726
.label_726:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_730
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_730:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_714:
	jmp	.label_739
.label_739:
	jmp	.label_740
.label_740:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_741
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_741:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	test	byte ptr [rbp - 0x83], 1
	jne	.label_745
	mov	byte ptr [rbp - 0x7e], 0
.label_745:
	jmp	.label_674
.label_674:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_750
.label_1791:
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_663
.label_1657:
	mov	byte ptr [rbp - 0x80], 0x76
	jmp	.label_699
.label_735:
	jmp	.label_755
.label_755:
	jmp	.label_756
.label_756:
	jmp	.label_662
.label_731:
	jmp	.label_708
	.section	.text
	.align	16
	#Procedure 0x408e01

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
.label_680:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0xc8], rcx
	mov	qword ptr [rbp - 0xd0], rdx
	ja	.label_782
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_787]]
	jmp	rcx
.label_650:
	jmp	.label_708
.label_1656:
	mov	byte ptr [rbp - 0x80], 0x6e
	jmp	.label_784
.label_1797:
	mov	byte ptr [rbp - 0x79], 1
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_663
.label_786:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 4
	cmp	eax, 0
	je	.label_756
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_756
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x3f
	jne	.label_756
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 2]
	mov	esi, edx
	sub	esi, 0x21
	mov	dword ptr [rbp - 0x108], edx
	mov	dword ptr [rbp - 0x10c], esi
	je	.label_795
	jmp	.label_802
.label_802:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x110], eax
	jb	.label_795
	jmp	.label_809
.label_809:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x114], eax
	je	.label_795
	jmp	.label_816
.label_816:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2f
	mov	dword ptr [rbp - 0x118], eax
	je	.label_795
	jmp	.label_820
.label_820:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0x11c], eax
	ja	.label_735
	jmp	.label_795
.label_795:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_763
	jmp	.label_652
.label_800:
	jmp	.label_678
.label_766:
	jmp	.label_784
.label_784:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_831
	test	byte ptr [rbp - 0x7b], 1
	je	.label_831
	jmp	.label_652
.label_776:
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	lea	rcx, [rbp - 0xa0]
	mov	rdi, rcx
	call	memset
	mov	qword ptr [rbp - 0x90], 0
	mov	byte ptr [rbp - 0x91], 1
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_839
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
.label_839:
	jmp	.label_649
.label_649:
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
	jne	.label_661
	jmp	.label_668
.label_790:
	cmp	qword ptr [rbp - 0xb0], -2
	jne	.label_670
	mov	byte ptr [rbp - 0x91], 0
.label_697:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x58]
	add	rdx, qword ptr [rbp - 0x90]
	cmp	rdx, qword ptr [rbp - 0x30]
	mov	byte ptr [rbp - 0x129], cl
	jae	.label_675
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x129], sil
.label_675:
	mov	al, byte ptr [rbp - 0x129]
	test	al, 1
	jne	.label_688
	jmp	.label_694
.label_688:
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_697
.label_1654:
	mov	byte ptr [rbp - 0x80], 0x62
	jmp	.label_699
.label_769:
	test	byte ptr [rbp - 0x81], 1
	je	.label_706
	jmp	.label_711
.label_711:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_715
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_715:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x81], 0
.label_706:
	jmp	.label_723
.label_723:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	cmp	rax, rcx
	ja	.label_725
	jmp	.label_731
.label_670:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_733
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_733
	mov	qword ptr [rbp - 0xb8], 1
.label_669:
	mov	rax, qword ptr [rbp - 0xb8]
	cmp	rax, qword ptr [rbp - 0xb0]
	jae	.label_738
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
	jb	.label_744
	jmp	.label_751
.label_751:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x5e
	mov	dword ptr [rbp - 0x138], eax
	je	.label_744
	jmp	.label_704
.label_704:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x60
	mov	dword ptr [rbp - 0x13c], eax
	je	.label_744
	jmp	.label_758
.label_758:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x140], eax
	jne	.label_736
	jmp	.label_744
.label_744:
	jmp	.label_652
.label_676:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_764
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_764
	test	byte ptr [rbp - 0x7d], 1
	je	.label_764
	test	byte ptr [rbp - 0x7e], 1
	je	.label_767
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
	jmp	.label_777
.label_1663:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0xfc], eax
	mov	dword ptr [rbp - 0x100], ecx
	je	.label_812
	jmp	.label_785
.label_785:
	mov	eax, dword ptr [rbp - 0xfc]
	sub	eax, 5
	mov	dword ptr [rbp - 0x104], eax
	je	.label_786
	jmp	.label_789
.label_661:
	cmp	qword ptr [rbp - 0xb0], -1
	jne	.label_790
	mov	byte ptr [rbp - 0x91], 0
	jmp	.label_668
.label_763:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + rax + 2]
	mov	byte ptr [rbp - 0x7f], dl
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_792
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_792:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_796
.label_796:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_799
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_799:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_803
.label_803:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_806
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_806:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_813
.label_813:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_703
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_703:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_755
.label_1653:
	mov	byte ptr [rbp - 0x80], 0x61
	jmp	.label_699
.label_1798:
	cmp	dword ptr [rbp - 0x34], 0xa
	je	.label_829
	movabs	rdi, OFFSET FLAT:label_830
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	movabs	rdi, OFFSET FLAT:label_430
	mov	qword ptr [rbp - 0x48], rax
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	mov	qword ptr [rbp - 0x50], rax
.label_829:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_655
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x70], rax
.label_654:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_840
	jmp	.label_643
.label_643:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_656
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_656:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_651
.label_651:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_654
.label_840:
	jmp	.label_655
.label_655:
	mov	byte ptr [rbp - 0x79], 1
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x70], rax
	mov	rdi, qword ptr [rbp - 0x70]
	call	strlen
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_663
.label_1655:
	mov	byte ptr [rbp - 0x80], 0x74
	jmp	.label_784
.label_681:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 1
	cmp	eax, 0
	je	.label_671
	jmp	.label_674
.label_761:
	cmp	qword ptr [rbp - 0x60], 0
	jne	.label_676
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_676
	test	byte ptr [rbp - 0x7b], 1
	je	.label_676
	jmp	.label_652
.label_640:
	jmp	.label_683
.label_683:
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_684
	jmp	.label_678
.label_1652:
	test	byte ptr [rbp - 0x79], 1
	je	.label_681
	jmp	.label_689
.label_689:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_691
	jmp	.label_652
.label_1658:
	mov	byte ptr [rbp - 0x80], 0x66
	jmp	.label_699
.label_772:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_700
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_700
	jmp	.label_709
.label_709:
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
	jmp	.label_716
.label_716:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_721
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_721:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_728
.label_728:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_734
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_734:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_700:
	jmp	.label_742
.label_742:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_743
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_743:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_746
.label_746:
	jmp	.label_748
.label_748:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_749
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 6
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_749:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_754
.label_754:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_757
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 3
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_757:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	movzx	eax, byte ptr [rbp - 0x7f]
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	byte ptr [rbp - 0x7f], cl
	jmp	.label_723
.label_647:
	test	byte ptr [rbp - 0x79], 1
	je	.label_766
	test	byte ptr [rbp - 0x7b], 1
	je	.label_766
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_766
	jmp	.label_708
.label_812:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_770
	jmp	.label_652
.label_765:
	jmp	.label_678
.label_678:
	test	byte ptr [rbp - 0x79], 1
	je	.label_773
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_775
.label_773:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_779
.label_775:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_779
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
	jne	.label_783
.label_779:
	test	byte ptr [rbp - 0x81], 1
	jne	.label_783
	jmp	.label_708
.label_768:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xe8], rax
.label_774:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rcx, qword ptr [rbp - 0xe0]
	cmp	rcx, rax
	ja	.label_762
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rdi, rax
	call	memcmp
	cmp	eax, 0
	jne	.label_762
	test	byte ptr [rbp - 0x7b], 1
	je	.label_798
	jmp	.label_652
.label_782:
	call	abort
.label_1659:
	mov	byte ptr [rbp - 0x80], 0x72
	jmp	.label_784
.label_831:
	jmp	.label_699
.label_699:
	test	byte ptr [rbp - 0x79], 1
	je	.label_825
	mov	al, byte ptr [rbp - 0x80]
	mov	byte ptr [rbp - 0x7f], al
	jmp	.label_835
.label_807:
	jmp	.label_811
.label_811:
	jmp	.label_764
.label_764:
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_778
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_778
	jmp	.label_696
.label_696:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_817
	jmp	.label_727
.label_727:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_822
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_822:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_828
.label_828:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_696
.label_838:
	cmp	qword ptr [rbp - 0x30], 1
	je	.label_640
.label_646:
	jmp	.label_678
.label_671:
	jmp	.label_644
.label_644:
	jmp	.label_678
.label_1793:
	mov	byte ptr [rbp - 0x79], 1
.label_1792:
	mov	byte ptr [rbp - 0x7b], 1
.label_1794:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_837
	mov	byte ptr [rbp - 0x79], 1
.label_837:
	jmp	.label_645
.label_645:
	mov	dword ptr [rbp - 0x34], 2
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_642
	jmp	.label_677
.label_677:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_648
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_648:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_642
.label_642:
	movabs	rax, OFFSET FLAT:label_430
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_663
.label_789:
	jmp	.label_662
.label_662:
	jmp	.label_678
.label_736:
	jmp	.label_664
.label_664:
	jmp	.label_667
.label_667:
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, 1
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_669
.label_767:
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_807
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_807
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x60], 0
	jmp	.label_680
.label_725:
	jmp	.label_685
.label_685:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_687
	test	byte ptr [rbp - 0x82], 1
	jne	.label_687
	jmp	.label_690
.label_690:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_693
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_693:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_701
.label_701:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_707
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_707:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_687:
	jmp	.label_719
.label_719:
	jmp	.label_720
.label_720:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_808
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_808:
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
	jmp	.label_729
	.section	.text
	.align	16
	#Procedure 0x409980

	.globl xset_binary_mode_error
	.type xset_binary_mode_error, @function
xset_binary_mode_error:
	push	rbp
	mov	rbp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409986
	.globl sub_409986
	.type sub_409986, @function
sub_409986:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409990
	.globl get_stat_ctime_ns
	.type get_stat_ctime_ns, @function
get_stat_ctime_ns:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rdi + 0x70]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4099a2
	.globl sub_4099a2
	.type sub_4099a2, @function
sub_4099a2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4099b0

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
	#Procedure 0x4099e7
	.globl sub_4099e7
	.type sub_4099e7, @function
sub_4099e7:

	nop	word ptr [rax + rax]
.label_864:
	mov	byte ptr [rbp - 0x35], 1
	jmp	.label_855
.label_860:
	call	posix2_version
	mov	cl, 1
	mov	dword ptr [rbp - 0x3c], eax
	cmp	dword ptr [rbp - 0x3c], 0x30db0
	setl	dl
	and	dl, 1
	mov	byte ptr [rbp - 0x3d], dl
	test	byte ptr [rbp - 0x3d], 1
	mov	byte ptr [rbp - 0x3f], cl
	jne	.label_869
	mov	eax, 0x31069
	cmp	eax, dword ptr [rbp - 0x3c]
	setle	cl
	mov	byte ptr [rbp - 0x3f], cl
.label_869:
	mov	al, byte ptr [rbp - 0x3f]
	and	al, 1
	mov	byte ptr [rbp - 0x3e], al
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rbp - 0x20], rcx
	mov	rdx, rcx
	inc	rdx
	mov	qword ptr [rbp - 0x20], rdx
	movsx	esi, byte ptr [rcx]
	mov	edi, esi
	sub	edi, 0x2b
	mov	dword ptr [rbp - 0x44], esi
	mov	dword ptr [rbp - 0x48], edi
	je	.label_867
	jmp	.label_859
.label_859:
	mov	eax, dword ptr [rbp - 0x44]
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x4c], eax
	je	.label_865
	jmp	.label_868
.label_868:
	mov	byte ptr [rbp - 1], 0
	jmp	.label_856
.label_854:
	xor	eax, eax
	mov	esi, eax
	mov	edx, 0xa
	movabs	r8, OFFSET FLAT:label_843
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	call	xstrtoumax
	and	eax, 0xfffffffd
	cmp	eax, 0
	je	.label_851
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_847
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x60], esi
	call	gettext
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi + 8]
	mov	qword ptr [rbp - 0x68], rax
	call	quote
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:label_49
	mov	esi, dword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	r8, rax
	mov	al, 0
	call	error
	.section	.text
	.align	16
	#Procedure 0x409af8

	.globl parse_obsolete_option
	.type parse_obsolete_option, @function
parse_obsolete_option:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	dword ptr [rbp - 0x34], 0xa
	mov	byte ptr [rbp - 0x36], 1
	mov	byte ptr [rbp - 0x37], 0
	cmp	dword ptr [rbp - 8], 2
	je	.label_860
	cmp	dword ptr [rbp - 8], 3
	jne	.label_866
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2d
	jne	.label_860
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	je	.label_860
.label_866:
	mov	eax, 3
	cmp	eax, dword ptr [rbp - 8]
	jg	.label_862
	cmp	dword ptr [rbp - 8], 4
	jg	.label_862
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax + 0x10]
	mov	ecx, OFFSET FLAT:label_863
	mov	esi, ecx
	call	strcmp
	cmp	eax, 0
	je	.label_860
.label_862:
	mov	byte ptr [rbp - 1], 0
	jmp	.label_856
.label_851:
	jmp	.label_842
.label_842:
	mov	al, byte ptr [rbp - 0x35]
	and	al, 1
	mov	byte ptr [byte ptr [from_start]],  al
	mov	al, byte ptr [rbp - 0x36]
	and	al, 1
	mov	byte ptr [byte ptr [count_lines]],  al
	mov	al, byte ptr [rbp - 0x37]
	and	al, 1
	mov	byte ptr [byte ptr [forever]],  al
	mov	byte ptr [rbp - 1], 1
.label_856:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409bd0
	.globl sub_409bd0
	.type sub_409bd0, @function
sub_409bd0:

	nop	word ptr cs:[rax + rax]
.label_867:
	test	byte ptr [rbp - 0x3e], 1
	jne	.label_864
	mov	byte ptr [rbp - 1], 0
	jmp	.label_856
.label_861:
	mov	byte ptr [rbp - 0x35], 0
.label_855:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x28], rax
.label_846:
	mov	rax, qword ptr [rbp - 0x20]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 9
	ja	.label_857
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_846
.label_857:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x20]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x62
	mov	dword ptr [rbp - 0x50], ecx
	mov	dword ptr [rbp - 0x54], edx
	je	.label_850
	jmp	.label_858
.label_858:
	mov	eax, dword ptr [rbp - 0x50]
	sub	eax, 0x63
	mov	dword ptr [rbp - 0x58], eax
	je	.label_844
	jmp	.label_848
.label_848:
	mov	eax, dword ptr [rbp - 0x50]
	sub	eax, 0x6c
	mov	dword ptr [rbp - 0x5c], eax
	je	.label_849
	jmp	.label_853
.label_850:
	mov	eax, dword ptr [rbp - 0x34]
	shl	eax, 9
	mov	dword ptr [rbp - 0x34], eax
.label_844:
	mov	byte ptr [rbp - 0x36], 0
.label_849:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
.label_853:
	mov	rax, qword ptr [rbp - 0x20]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x66
	jne	.label_845
	mov	byte ptr [rbp - 0x37], 1
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
.label_845:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	byte ptr [rax], 0
	je	.label_852
	mov	byte ptr [rbp - 1], 0
	jmp	.label_856
.label_865:
	test	byte ptr [rbp - 0x3d], 1
	jne	.label_861
	mov	rax, qword ptr [rbp - 0x20]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x63
	sete	dl
	and	dl, 1
	movzx	ecx, dl
	movsxd	rax, ecx
	mov	rsi, qword ptr [rbp - 0x20]
	cmp	byte ptr [rsi + rax], 0
	jne	.label_861
	mov	byte ptr [rbp - 1], 0
	jmp	.label_856
.label_852:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x30]
	jne	.label_854
	movsxd	rax, dword ptr [rbp - 0x34]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx], rax
	jmp	.label_842
	.section	.text
	.align	16
	#Procedure 0x409d10
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
	jb	.label_870
	jmp	.label_873
.label_873:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 6
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_870
	jmp	.label_871
.label_871:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 5
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_872
	jmp	.label_870
.label_870:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_874
.label_872:
	mov	byte ptr [rbp - 1], 0
.label_874:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409d75
	.globl sub_409d75
	.type sub_409d75, @function
sub_409d75:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409d80

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
	#Procedure 0x409db5
	.globl sub_409db5
	.type sub_409db5, @function
sub_409db5:

	nop	word ptr cs:[rax + rax]
.label_882:
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_875
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 0x30], rax
	sete	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x31], cl
	mov	dword ptr [rbp - 0x38], 0x7ffffffe
	mov	edx, dword ptr [rbp - 0x38]
	cmp	edx, dword ptr [rbp - 4]
	jge	.label_880
	call	xalloc_die
.label_878:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x60], rax
.label_881:
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
	je	.label_876
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_168]]
	mov	qword ptr [rax + 8], rcx
.label_876:
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
.label_875:
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
	ja	.label_879
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	mov	qword ptr [rbp - 0x40], rcx
	movsxd	rdx, dword ptr [rbp - 4]
	shl	rdx, 4
	add	rdx, qword ptr [rbp - 0x30]
	mov	qword ptr [rdx], rcx
	cmp	qword ptr [rbp - 0x48], rax
	je	.label_877
	mov	rdi, qword ptr [rbp - 0x48]
	call	free
.label_877:
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
.label_879:
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
	#Procedure 0x409fdd
	.globl sub_409fdd
	.type sub_409fdd, @function
sub_409fdd:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409fea

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
	jge	.label_882
	call	abort
.label_880:
	test	byte ptr [rbp - 0x31], 1
	je	.label_878
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x60], rcx
	jmp	.label_881
.label_887:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a04a
	.globl sub_40a04a
	.type sub_40a04a, @function
sub_40a04a:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a052

	.globl ignore_fifo_and_pipe
	.type ignore_fifo_and_pipe, @function
ignore_fifo_and_pipe:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], 0
	mov	qword ptr [rbp - 0x20], 0
.label_888:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_887
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x20]
	imul	rdx, rdx, 0x60
	add	rdx, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdx]
	mov	eax, OFFSET FLAT:label_140
	mov	esi, eax
	mov	byte ptr [rbp - 0x22], cl
	call	strcmp
	cmp	eax, 0
	mov	cl, byte ptr [rbp - 0x22]
	mov	byte ptr [rbp - 0x23], cl
	jne	.label_883
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x20]
	imul	rdx, rdx, 0x60
	add	rdx, qword ptr [rbp - 8]
	test	byte ptr [rdx + 0x34], 1
	mov	byte ptr [rbp - 0x23], cl
	jne	.label_883
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	mov	rdx, qword ptr [rbp - 0x20]
	imul	rdx, rdx, 0x60
	add	rdx, qword ptr [rbp - 8]
	cmp	eax, dword ptr [rdx + 0x38]
	mov	byte ptr [rbp - 0x23], cl
	jg	.label_883
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x20]
	imul	rcx, rcx, 0x60
	add	rcx, qword ptr [rbp - 8]
	mov	edx, dword ptr [rcx + 0x30]
	and	edx, 0xf000
	cmp	edx, 0x1000
	mov	byte ptr [rbp - 0x24], al
	je	.label_886
	xor	eax, eax
	mov	cl, al
	mov	byte ptr [rbp - 0x24], cl
	jmp	.label_886
.label_886:
	mov	al, byte ptr [rbp - 0x24]
	mov	byte ptr [rbp - 0x23], al
.label_883:
	mov	al, byte ptr [rbp - 0x23]
	and	al, 1
	mov	byte ptr [rbp - 0x21], al
	test	byte ptr [rbp - 0x21], 1
	je	.label_884
	mov	rax, qword ptr [rbp - 0x20]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x38], 0xffffffff
	mov	rax, qword ptr [rbp - 0x20]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x34], 1
	jmp	.label_889
.label_884:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
.label_889:
	jmp	.label_885
.label_885:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_888
.label_908:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax + 0x2000], 0
	jne	.label_890
	jmp	.label_896
	.section	.text
	.align	16
	#Procedure 0x40a197

	.globl pipe_lines
	.type pipe_lines, @function
pipe_lines:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x90
	mov	eax, 0x2018
	mov	r8d, eax
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x40], 0
	mov	byte ptr [rbp - 0x41], 1
	mov	rdi, r8
	call	xmalloc
	mov	esi, 0x2018
	mov	edi, esi
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rax + 0x2008], 0
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rax + 0x2000], 0
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rax + 0x2010], 0
	call	xmalloc
	mov	qword ptr [rbp - 0x38], rax
.label_916:
	mov	eax, 0x2000
	mov	edx, eax
	mov	edi, dword ptr [rbp - 0xc]
	mov	rsi, qword ptr [rbp - 0x38]
	call	safe_read
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x50], 0
	je	.label_911
	cmp	qword ptr [rbp - 0x50], -1
	jne	.label_901
.label_911:
	jmp	.label_903
.label_910:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 0x2000]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x30]
	movsx	edx, byte ptr [rcx + rax]
	movsx	esi,  byte ptr [byte ptr [line_end]]
	cmp	edx, esi
	je	.label_904
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rax + 0x2008]
	add	rcx, 1
	mov	qword ptr [rax + 0x2008], rcx
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
.label_904:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x38], rax
.label_900:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x38]
	sub	rax, qword ptr [rcx + 0x2008]
	cmp	rax, qword ptr [rbp - 0x18]
	jbe	.label_894
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 0x2008]
	mov	rcx, qword ptr [rbp - 0x40]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x40], rcx
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 0x2010]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_900
.label_890:
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_910
	jmp	.label_896
.label_905:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 0x2010], rax
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x28]
	sub	rax, qword ptr [rcx + 0x2008]
	cmp	rax, qword ptr [rbp - 0x18]
	jbe	.label_913
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x2008]
	mov	rcx, qword ptr [rbp - 0x40]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x40], rcx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x2010]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_893
.label_903:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdi, rax
	call	free
	cmp	qword ptr [rbp - 0x50], -1
	jne	.label_908
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_312
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x7c], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x88], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x7c]
	mov	rdx, qword ptr [rbp - 0x88]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x41], 0
	jmp	.label_896
.label_912:
	mov	rax, qword ptr [rbp - 0x68]
	add	rax, 1
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x78]
	add	rax, -1
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_898
.label_891:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 0x2008]
	add	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 0x2000]
	mov	rcx, qword ptr [rbp - 0x30]
	add	rax, qword ptr [rcx + 0x2000]
	cmp	rax, 0x2000
	jae	.label_905
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 0x2000]
	mov	rcx, qword ptr [rbp - 0x30]
	add	rcx, rax
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rax + 0x2000]
	mov	rdi, rcx
	call	memcpy
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 0x2000]
	mov	rcx, qword ptr [rbp - 0x30]
	add	rax, qword ptr [rcx + 0x2000]
	mov	qword ptr [rcx + 0x2000], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 0x2008]
	mov	rcx, qword ptr [rbp - 0x30]
	add	rax, qword ptr [rcx + 0x2008]
	mov	qword ptr [rcx + 0x2008], rax
	jmp	.label_897
.label_913:
	mov	eax, 0x2018
	mov	edi, eax
	call	xmalloc
	mov	qword ptr [rbp - 0x38], rax
.label_893:
	jmp	.label_897
.label_897:
	jmp	.label_916
.label_895:
	mov	al, byte ptr [rbp - 0x41]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x90
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a48f
	.globl sub_40a48f
	.type sub_40a48f, @function
sub_40a48f:

	nop	dword ptr [rax + rax]
.label_901:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x2000], rax
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rcx]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rax + 0x2008], 0
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rax + 0x2010], 0
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x60], rax
.label_892:
	mov	rdi, qword ptr [rbp - 0x60]
	movsx	esi,  byte ptr [byte ptr [line_end]]
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x60]
	sub	rax, rcx
	mov	rdx, rax
	call	memchr
	mov	qword ptr [rbp - 0x60], rax
	cmp	rax, 0
	je	.label_891
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rax + 0x2008]
	add	rcx, 1
	mov	qword ptr [rax + 0x2008], rcx
	jmp	.label_892
.label_917:
	jmp	.label_896
.label_896:
	jmp	.label_914
.label_914:
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_895
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x2010]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_914
.label_894:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x38]
	add	rax, qword ptr [rcx + 0x2000]
	mov	qword ptr [rbp - 0x70], rax
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x18]
	jbe	.label_915
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x78], rax
.label_898:
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_899
	mov	rdi, qword ptr [rbp - 0x68]
	movsx	esi,  byte ptr [byte ptr [line_end]]
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x68]
	sub	rax, rcx
	mov	rdx, rax
	call	memchr
	mov	qword ptr [rbp - 0x68], rax
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_909
	jmp	.label_912
.label_899:
	jmp	.label_915
.label_915:
	mov	rdi, qword ptr [rbp - 0x68]
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x68]
	sub	rax, rcx
	mov	rsi, rax
	call	xwrite_stdout
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 0x2010]
	mov	qword ptr [rbp - 0x38], rax
.label_902:
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_917
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rax + 0x2000]
	call	xwrite_stdout
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 0x2010]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_902
.label_909:
	movabs	rdi, OFFSET FLAT:label_906
	movabs	rsi, OFFSET FLAT:label_265
	mov	edx, 0x2e0
	movabs	rcx, OFFSET FLAT:label_907
	call	__assert_fail
.label_925:
	mov	eax, 0x2000
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x2050]
	sub	rdx, qword ptr [rbp - 0x28]
	mov	rax, rdx
	cqo	
	idiv	rcx
	mov	qword ptr [rbp - 0x2048], rdx
	cmp	qword ptr [rbp - 0x2048], 0
	jne	.label_928
	mov	qword ptr [rbp - 0x2048], 0x2000
.label_928:
	xor	edx, edx
	mov	rax, qword ptr [rbp - 0x2048]
	mov	rcx, qword ptr [rbp - 0x2050]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x2050], rcx
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsi, qword ptr [rbp - 0x2050]
	mov	rcx, qword ptr [rbp - 0x10]
	call	xlseek
	lea	rsi, [rbp - 0x2040]
	mov	edi, dword ptr [rbp - 0x14]
	mov	rdx, qword ptr [rbp - 0x2048]
	mov	qword ptr [rbp - 0x2068], rax
	call	safe_read
	mov	qword ptr [rbp - 0x2048], rax
	cmp	qword ptr [rbp - 0x2048], -1
	jne	.label_930
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_312
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x206c], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x2078], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x206c]
	mov	rdx, qword ptr [rbp - 0x2078]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 1], 0
	jmp	.label_920
	.section	.text
	.align	16
	#Procedure 0x40a75c

	.globl file_lines
	.type file_lines, @function
file_lines:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20a0
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	qword ptr [rbp - 0x38], r9
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x2050], rcx
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_925
	mov	byte ptr [rbp - 1], 1
	jmp	.label_920
.label_919:
	lea	rax, [rbp - 0x2040]
	mov	rcx, qword ptr [rbp - 0x2060]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x2058], rcx
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x20], rcx
	cmp	rax, 0
	jne	.label_927
	mov	rax, qword ptr [rbp - 0x2058]
	mov	rcx, qword ptr [rbp - 0x2048]
	sub	rcx, 1
	cmp	rax, rcx
	je	.label_923
	mov	rax, qword ptr [rbp - 0x2060]
	add	rax, 1
	mov	rcx, qword ptr [rbp - 0x2048]
	mov	rdx, qword ptr [rbp - 0x2058]
	add	rdx, 1
	sub	rcx, rdx
	mov	rdi, rax
	mov	rsi, rcx
	call	xwrite_stdout
.label_923:
	xor	edi, edi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rbp - 0x14]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x2050]
	add	rcx, qword ptr [rbp - 0x2048]
	sub	rax, rcx
	mov	rcx, rax
	call	dump_remainder
	mov	rcx, qword ptr [rbp - 0x38]
	add	rax, qword ptr [rcx]
	mov	qword ptr [rcx], rax
	mov	byte ptr [rbp - 1], 1
	jmp	.label_920
.label_918:
	mov	rax, qword ptr [rbp - 0x2050]
	cmp	rax, qword ptr [rbp - 0x28]
	jne	.label_922
	xor	edx, edx
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	call	xlseek
	xor	edi, edi
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rbp - 0x14]
	mov	r8, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x2080], rcx
	mov	rcx, r8
	mov	qword ptr [rbp - 0x2088], rax
	call	dump_remainder
	mov	rcx, qword ptr [rbp - 0x2080]
	add	rcx, rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rax], rcx
	mov	byte ptr [rbp - 1], 1
	jmp	.label_920
.label_927:
	jmp	.label_929
.label_922:
	xor	edx, edx
	mov	rax, qword ptr [rbp - 0x2050]
	sub	rax, 0x2000
	mov	qword ptr [rbp - 0x2050], rax
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsi, qword ptr [rbp - 0x2050]
	mov	rcx, qword ptr [rbp - 0x10]
	call	xlseek
	mov	edx, 0x2000
	lea	rsi, [rbp - 0x2040]
	mov	edi, dword ptr [rbp - 0x14]
	mov	qword ptr [rbp - 0x2090], rax
	call	safe_read
	mov	qword ptr [rbp - 0x2048], rax
	cmp	qword ptr [rbp - 0x2048], -1
	jne	.label_924
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_312
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x2094], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20a0], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x2094]
	mov	rdx, qword ptr [rbp - 0x20a0]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 1], 0
	jmp	.label_920
.label_924:
	mov	rax, qword ptr [rbp - 0x2050]
	add	rax, qword ptr [rbp - 0x2048]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx], rax
	cmp	qword ptr [rbp - 0x2048], 0
	ja	.label_926
	mov	byte ptr [rbp - 1], 1
.label_920:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20a0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a99a
	.globl sub_40a99a
	.type sub_40a99a, @function
sub_40a99a:

	nop	word ptr cs:[rax + rax]
.label_930:
	mov	rax, qword ptr [rbp - 0x2050]
	add	rax, qword ptr [rbp - 0x2048]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx], rax
	cmp	qword ptr [rbp - 0x2048], 0
	je	.label_921
	mov	rax, qword ptr [rbp - 0x2048]
	sub	rax, 1
	movsx	ecx, byte ptr [rbp + rax - 0x2040]
	movsx	edx,  byte ptr [byte ptr [line_end]]
	cmp	ecx, edx
	je	.label_921
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, -1
	mov	qword ptr [rbp - 0x20], rax
.label_921:
	jmp	.label_926
.label_926:
	mov	rax, qword ptr [rbp - 0x2048]
	mov	qword ptr [rbp - 0x2058], rax
.label_929:
	cmp	qword ptr [rbp - 0x2058], 0
	je	.label_918
	lea	rdi, [rbp - 0x2040]
	movsx	esi,  byte ptr [byte ptr [line_end]]
	mov	rdx, qword ptr [rbp - 0x2058]
	call	memrchr
	mov	qword ptr [rbp - 0x2060], rax
	cmp	qword ptr [rbp - 0x2060], 0
	jne	.label_919
	jmp	.label_918
	.section	.text
	.align	16
	#Procedure 0x40aa50

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
	je	.label_931
	mov	al, 1
	mov	rcx, qword ptr [rbp - 8]
	mov	edx, dword ptr [rcx + 0x18]
	and	edx, 0xf000
	cmp	edx, 0xa000
	mov	byte ptr [rbp - 9], al
	je	.label_931
	mov	al, 1
	mov	rcx, qword ptr [rbp - 8]
	mov	edx, dword ptr [rcx + 0x18]
	mov	rcx, qword ptr [rbp - 8]
	sub	edx, dword ptr [rcx + 0x18]
	cmp	edx, 0
	mov	byte ptr [rbp - 9], al
	jne	.label_931
	xor	eax, eax
	mov	cl, al
	mov	byte ptr [rbp - 9], cl
	jmp	.label_931
.label_931:
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40aac6
	.globl sub_40aac6
	.type sub_40aac6, @function
sub_40aac6:

	nop	word ptr cs:[rax + rax]
.label_940:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	call	rpl_fcntl_DUPFD
	mov	dword ptr [rbp - 0xc], eax
	cmp	dword ptr [rbp - 0xc], 0
	jl	.label_937
	mov	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
.label_937:
	jmp	.label_935
.label_935:
	jmp	.label_936
	.section	.text
	.align	16
	#Procedure 0x40aafd

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
	jg	.label_939
	mov	esi, 0x406
	mov	edi, dword ptr [rbp - 4]
	mov	edx, dword ptr [rbp - 8]
	mov	al, 0
	call	fcntl
	xor	edx, edx
	mov	dword ptr [rbp - 0xc], eax
	cmp	edx, dword ptr [rbp - 0xc]
	jle	.label_938
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	je	.label_940
.label_938:
	mov	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_935
.label_939:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	call	rpl_fcntl_DUPFD
	mov	dword ptr [rbp - 0xc], eax
.label_936:
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0xc]
	jg	.label_932
	cmp	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	jne	.label_932
	mov	esi, 1
	mov	edi, dword ptr [rbp - 0xc]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x10], eax
	cmp	dword ptr [rbp - 0x10], 0
	jl	.label_933
	mov	esi, 2
	mov	edi, dword ptr [rbp - 0xc]
	mov	eax, dword ptr [rbp - 0x10]
	or	eax, 1
	mov	edx, eax
	mov	al, 0
	call	fcntl
	cmp	eax, -1
	jne	.label_934
.label_933:
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
.label_934:
	jmp	.label_932
.label_932:
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40abf5
	.globl sub_40abf5
	.type sub_40abf5, @function
sub_40abf5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ac00

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
	je	.label_941
	xor	eax, eax
	mov	esi, eax
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 8]
	call	rpl_fseeko
	mov	dword ptr [rbp - 0xc], eax
.label_941:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ac3b
	.globl sub_40ac3b
	.type sub_40ac3b, @function
sub_40ac3b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ac40

	.globl c_locale
	.type c_locale, @function
c_locale:
	push	rbp
	mov	rbp, rsp
	mov	rax,  qword ptr [word ptr [c_locale_cache]]
	cmp	rax, 0
	jne	.label_942
	mov	edi, 0x1fbf
	movabs	rsi, OFFSET FLAT:label_943
	xor	eax, eax
	mov	edx, eax
	call	newlocale
	mov	qword ptr [word ptr [c_locale_cache]],  rax
.label_942:
	mov	rax,  qword ptr [word ptr [c_locale_cache]]
	pop	rbp
	ret	
.label_944:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_945:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ac92
	.globl sub_40ac92
	.type sub_40ac92, @function
sub_40ac92:

	nop	word ptr [rax + rax]
.label_946:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	realloc
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_944
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_944
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40acc4

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_946
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_946
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	mov	qword ptr [rbp - 8], 0
	jmp	.label_945
	.section	.text
	.align	16
	#Procedure 0x40ad00
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
	#Procedure 0x40ad3a
	.globl sub_40ad3a
	.type sub_40ad3a, @function
sub_40ad3a:

	nop	word ptr [rax + rax]
.label_948:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ad4a
	.globl sub_40ad4a
	.type sub_40ad4a, @function
sub_40ad4a:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ad54
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
	jb	.label_947
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	calloc
	mov	qword ptr [rbp - 0x18], rax
	cmp	rax, 0
	jne	.label_948
.label_947:
	call	xalloc_die
.label_951:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	memcpy
	test	byte ptr [rbp - 0x19], 1
	je	.label_949
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	byte ptr [rcx + rax], 0x2e
.label_949:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	byte ptr [rcx + rax], 0
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
.label_952:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40adf0
	.globl sub_40adf0
	.type sub_40adf0, @function
sub_40adf0:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40adfa
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
	je	.label_950
	xor	eax, eax
	mov	cl, al
	mov	byte ptr [rbp - 0x29], cl
	jmp	.label_950
.label_950:
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
	jne	.label_951
	mov	qword ptr [rbp - 8], 0
	jmp	.label_952
.label_956:
	mov	rax, qword ptr [rbp - 0x10]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ae76
	.globl sub_40ae76
	.type sub_40ae76, @function
sub_40ae76:

	nop	word ptr [rax + rax]
.label_957:
	test	byte ptr [rbp - 0x19], 1
	je	.label_958
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x10], rax
	mov	byte ptr [rbp - 0x19], 0
.label_958:
	jmp	.label_953
.label_953:
	jmp	.label_954
.label_954:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_955
	.section	.text
	.align	16
	#Procedure 0x40aead

	.globl last_component
	.type last_component, @function
last_component:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rdi
	mov	byte ptr [rbp - 0x19], 0
.label_960:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	jne	.label_959
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_960
.label_959:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rax
.label_955:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	byte ptr [rax], 0
	je	.label_956
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	jne	.label_957
	mov	byte ptr [rbp - 0x19], 1
	jmp	.label_953
.label_962:
	movabs	rax, OFFSET FLAT:default_tuning
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x28], rax
	mov	byte ptr [rbp - 1], 0
.label_963:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40af30
	.globl sub_40af30
	.type sub_40af30, @function
sub_40af30:

	nop	word ptr cs:[rax + rax]
.label_965:
	movss	xmm0,  dword ptr [dword ptr [rip + label_964]]
	movss	dword ptr [rbp - 0x1c], xmm0
	movss	xmm0, dword ptr [rbp - 0x1c]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 8]
	ucomiss	xmm1, xmm0
	jbe	.label_962
	movss	xmm0,  dword ptr [dword ptr [rip + label_961]]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 8]
	subss	xmm0, dword ptr [rbp - 0x1c]
	ucomiss	xmm0, xmm1
	jbe	.label_962
	movss	xmm0,  dword ptr [dword ptr [rip + label_961]]
	addss	xmm0, dword ptr [rbp - 0x1c]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 0xc]
	ucomiss	xmm1, xmm0
	jbe	.label_962
	xorps	xmm0, xmm0
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax]
	ucomiss	xmm1, xmm0
	jb	.label_962
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm0, dword ptr [rax]
	addss	xmm0, dword ptr [rbp - 0x1c]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 4]
	ucomiss	xmm1, xmm0
	jbe	.label_962
	movss	xmm0,  dword ptr [dword ptr [rip + label_961]]
	mov	rax, qword ptr [rbp - 0x18]
	ucomiss	xmm0, dword ptr [rax + 4]
	jb	.label_962
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm0, dword ptr [rax]
	addss	xmm0, dword ptr [rbp - 0x1c]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 8]
	ucomiss	xmm1, xmm0
	jbe	.label_962
	mov	byte ptr [rbp - 1], 1
	jmp	.label_963
	.section	.text
	.align	16
	#Procedure 0x40b00f

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
	jne	.label_965
	mov	byte ptr [rbp - 1], 1
	jmp	.label_963
	.section	.text
	.align	16
	#Procedure 0x40b040

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
	#Procedure 0x40b05b
	.globl sub_40b05b
	.type sub_40b05b, @function
sub_40b05b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b060
	.globl get_stat_ctime
	.type get_stat_ctime, @function
get_stat_ctime:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	movups	xmm0, xmmword ptr [rdi + 0x68]
	movaps	xmmword ptr [rbp - 0x10], xmm0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b07a
	.globl sub_40b07a
	.type sub_40b07a, @function
sub_40b07a:

	nop	word ptr [rax + rax]
.label_968:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax]
	and	ecx, 0xffffffef
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x90], rax
	mov	dword ptr [rbp - 4], 0
	jmp	.label_966
	.section	.text
	.align	16
	#Procedure 0x40b0a6

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
	jne	.label_967
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x20]
	jne	.label_967
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_967
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	mov	edi, eax
	call	lseek
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], -1
	jne	.label_968
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_966
.label_967:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	call	fseeko
	mov	dword ptr [rbp - 4], eax
.label_966:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b142
	.globl sub_40b142
	.type sub_40b142, @function
sub_40b142:

	nop	word ptr cs:[rax + rax]
.label_969:
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
	#Procedure 0x40b176
	.globl sub_40b176
	.type sub_40b176, @function
sub_40b176:

	nop	dword ptr [rax]
.label_974:
	mov	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xa0], rdx
.label_971:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp + rcx*8 - 0x80], rax
	cmp	rax, 0
	setne	dl
	mov	byte ptr [rbp - 0x81], dl
.label_972:
	mov	al, byte ptr [rbp - 0x81]
	test	al, 1
	jne	.label_973
	jmp	.label_969
.label_973:
	jmp	.label_975
.label_975:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_970
	.section	.text
	.align	16
	#Procedure 0x40b1e3

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
.label_970:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x30], 0xa
	mov	byte ptr [rbp - 0x81], cl
	jae	.label_972
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x90], rax
	mov	dword ptr [rbp - 0x94], ecx
	ja	.label_974
	mov	eax, dword ptr [rbp - 0x94]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x90]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0xa0], rcx
	jmp	.label_971
	.section	.text
	.align	16
	#Procedure 0x40b260

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
	jne	.label_976
	call	abort
.label_976:
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
	#Procedure 0x40b2c4
	.globl sub_40b2c4
	.type sub_40b2c4, @function
sub_40b2c4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b2d0

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
	je	.label_977
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_943
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	je	.label_980
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_978
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_979
.label_980:
	mov	byte ptr [rbp - 5], 0
.label_979:
	jmp	.label_977
.label_977:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b343
	.globl sub_40b343
	.type sub_40b343, @function
sub_40b343:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b350
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
	#Procedure 0x40b382
	.globl sub_40b382
	.type sub_40b382, @function
sub_40b382:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b390

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
	#Procedure 0x40b3b2
	.globl sub_40b3b2
	.type sub_40b3b2, @function
sub_40b3b2:

	nop	word ptr cs:[rax + rax]
.label_983:
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
	#Procedure 0x40b3e3
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
.label_981:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_983
	jmp	.label_982
.label_982:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_981
	.section	.text
	.align	16
	#Procedure 0x40b430

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
	#Procedure 0x40b44e
	.globl sub_40b44e
	.type sub_40b44e, @function
sub_40b44e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x40b450

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
	jne	.label_984
	movss	xmm0,  dword ptr [dword ptr [rip + label_156]]
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
	js	.label_988
	movss	xmm0, dword ptr [rbp - 0x24]
	movss	dword ptr [rbp - 0x28], xmm0
.label_988:
	movss	xmm0, dword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x18]
	divss	xmm0, dword ptr [rax + 8]
	movss	dword ptr [rbp - 0x1c], xmm0
	movss	xmm0, dword ptr [rbp - 0x1c]
	movss	xmm1, dword ptr [rbp - 0x20]
	ucomiss	xmm0, xmm1
	jb	.label_986
	mov	qword ptr [rbp - 8], 0
	jmp	.label_985
.label_987:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_985:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b4ff
	.globl sub_40b4ff
	.type sub_40b4ff, @function
sub_40b4ff:

	nop	word ptr cs:[rax + rax]
.label_986:
	movss	xmm0, dword ptr [rbp - 0x1c]
	movss	xmm1,  dword ptr [dword ptr [rip + label_152]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rax, rcx
	cvttss2si	rcx, xmm0
	ucomiss	xmm1, xmm0
	cmova	rax, rcx
	mov	qword ptr [rbp - 0x10], rax
.label_984:
	mov	rdi, qword ptr [rbp - 0x10]
	call	next_prime
	movabs	rdi, 0xfffffffffffffff
	mov	qword ptr [rbp - 0x10], rax
	cmp	rdi, qword ptr [rbp - 0x10]
	jae	.label_987
	mov	qword ptr [rbp - 8], 0
	jmp	.label_985
	.section	.text
	.align	16
	#Procedure 0x40b570

	.globl get_stat_mtime
	.type get_stat_mtime, @function
get_stat_mtime:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	movups	xmm0, xmmword ptr [rdi + 0x58]
	movaps	xmmword ptr [rbp - 0x10], xmm0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b58a
	.globl sub_40b58a
	.type sub_40b58a, @function
sub_40b58a:

	nop	word ptr [rax + rax]
.label_991:
	cmp	dword ptr [rbp - 0x1c], 0
	jne	.label_989
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_990
	.section	.text
	.align	16
	#Procedure 0x40b5a7

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
	jne	.label_991
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x28], rcx
	jmp	.label_992
.label_989:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x30], rax
.label_990:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x28], rax
.label_992:
	mov	rax, qword ptr [rbp - 0x28]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b5fc
	.globl sub_40b5fc
	.type sub_40b5fc, @function
sub_40b5fc:

	nop	dword ptr [rax]
.label_994:
	jmp	.label_993
.label_993:
	mov	edi, dword ptr [rbp - 4]
	call	nl_langinfo
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b613
	.globl sub_40b613
	.type sub_40b613, @function
sub_40b613:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b619

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
	ja	.label_994
	jmp	.label_995
.label_995:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x27d8
	add	eax, 0x2001a
	mov	dword ptr [rbp - 4], eax
	jmp	.label_993
	.section	.text
	.align	16
	#Procedure 0x40b650
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
	#Procedure 0x40b678
	.globl sub_40b678
	.type sub_40b678, @function
sub_40b678:

	nop	dword ptr [rax + rax]
.label_1000:
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	je	.label_996
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	xor	ecx, ecx
	mov	esi, ecx
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_997
.label_996:
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fflush
	cmp	eax, 0
	je	.label_997
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], ecx
.label_997:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_998
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x20], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x20]
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 0x1c], 0xffffffff
.label_998:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
.label_999:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b70d
	.globl sub_40b70d
	.type sub_40b70d, @function
sub_40b70d:

	nop	
	.section	.text
	.align	16
	#Procedure 0x40b70f

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
	jge	.label_1000
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 4], eax
	jmp	.label_999
	.section	.text
	.align	16
	#Procedure 0x40b750
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
	#Procedure 0x40b77d
	.globl sub_40b77d
	.type sub_40b77d, @function
sub_40b77d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40b780
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
	#Procedure 0x40b7b2
	.globl sub_40b7b2
	.type sub_40b7b2, @function
sub_40b7b2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b7c0

	.globl tail
	.type tail, @function
tail:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], 0
	test	byte ptr [byte ptr [count_lines]],  1
	je	.label_1001
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x14]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	call	tail_lines
	and	al, 1
	mov	byte ptr [rbp - 1], al
	jmp	.label_1002
.label_1001:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x14]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	call	tail_bytes
	and	al, 1
	mov	byte ptr [rbp - 1], al
.label_1002:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b835
	.globl sub_40b835
	.type sub_40b835, @function
sub_40b835:

	nop	word ptr cs:[rax + rax]
.label_1004:
	add	rsp, 0xa0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b849
	.globl sub_40b849
	.type sub_40b849, @function
sub_40b849:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b851

	.globl check_output_alive
	.type check_output_alive, @function
check_output_alive:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xa0
	test	byte ptr [byte ptr [monitor_output]],  1
	jne	.label_1003
	jmp	.label_1004
.label_1003:
	mov	qword ptr [rbp - 8], 0
	mov	qword ptr [rbp - 0x10], 0
	lea	rax, [rbp - 0x90]
	mov	ecx, 0x10
	xor	edx, edx
	mov	qword ptr [rbp - 0xa0], rax
	mov	eax, edx
	mov	rsi, qword ptr [rbp - 0xa0]
	mov	rdi, rsi
	cld	
	rep stosq	qword ptr [rdi], rax
	mov	eax, ecx
	mov	dword ptr [rbp - 0x94], eax
	mov	eax, edi
	mov	dword ptr [rbp - 0x98], eax
	mov	edi, 2
	lea	rsi, [rbp - 0x90]
	xor	eax, eax
	mov	ecx, eax
	lea	r8, [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x90]
	or	rdx, 2
	mov	qword ptr [rbp - 0x90], rdx
	mov	rdx, rcx
	call	select
	cmp	eax, 1
	jne	.label_1004
	call	die_pipe
	.section	.text
	.align	16
	#Procedure 0x40b8f0

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
	jne	.label_1005
	cmp	qword ptr [rbp - 8], 0
	je	.label_1005
	call	xalloc_die
.label_1005:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b92e
	.globl sub_40b92e
	.type sub_40b92e, @function
sub_40b92e:

	nop	
.label_1011:
	cmp	qword ptr [rbp - 0x2038], -1
	jne	.label_1012
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_312
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x204c], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x2058], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x204c]
	mov	rdx, qword ptr [rbp - 0x2058]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1007
	.section	.text
	.align	16
	#Procedure 0x40b994

	.globl start_lines
	.type start_lines, @function
start_lines:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x2060
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_1014
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1007
.label_1009:
	jmp	.label_1008
.label_1013:
	jmp	.label_1010
.label_1012:
	lea	rax, [rbp - 0x2030]
	mov	rcx, rax
	add	rcx, qword ptr [rbp - 0x2038]
	mov	qword ptr [rbp - 0x2040], rcx
	mov	rcx, qword ptr [rbp - 0x2038]
	mov	rdx, qword ptr [rbp - 0x28]
	add	rcx, qword ptr [rdx]
	mov	qword ptr [rdx], rcx
	mov	qword ptr [rbp - 0x2048], rax
.label_1010:
	mov	rdi, qword ptr [rbp - 0x2048]
	movsx	esi,  byte ptr [byte ptr [line_end]]
	mov	rax, qword ptr [rbp - 0x2040]
	mov	rcx, qword ptr [rbp - 0x2048]
	sub	rax, rcx
	mov	rdx, rax
	call	memchr
	mov	qword ptr [rbp - 0x2048], rax
	cmp	rax, 0
	je	.label_1009
	mov	rax, qword ptr [rbp - 0x2048]
	add	rax, 1
	mov	qword ptr [rbp - 0x2048], rax
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, -1
	mov	qword ptr [rbp - 0x20], rax
	cmp	rax, 0
	jne	.label_1013
	mov	rax, qword ptr [rbp - 0x2048]
	cmp	rax, qword ptr [rbp - 0x2040]
	jae	.label_1006
	mov	rdi, qword ptr [rbp - 0x2048]
	mov	rax, qword ptr [rbp - 0x2040]
	mov	rcx, qword ptr [rbp - 0x2048]
	sub	rax, rcx
	mov	rsi, rax
	call	xwrite_stdout
.label_1006:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1007
.label_1007:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x2060
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40baac
	.globl sub_40baac
	.type sub_40baac, @function
sub_40baac:

	nop	dword ptr [rax + rax]
.label_1014:
	jmp	.label_1008
.label_1008:
	mov	eax, 0x2000
	mov	edx, eax
	lea	rsi, [rbp - 0x2030]
	mov	edi, dword ptr [rbp - 0x14]
	call	safe_read
	mov	qword ptr [rbp - 0x2038], rax
	cmp	qword ptr [rbp - 0x2038], 0
	jne	.label_1011
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1007
.label_1016:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x28]
	jle	.label_1019
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1017
	.section	.text
	.align	16
	#Procedure 0x40bb0a

	.globl timespec_cmp
	.type timespec_cmp, @function
timespec_cmp:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x28], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rcx, qword ptr [rbp - 0x28]
	jge	.label_1016
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1017
.label_1018:
	mov	rax, -1
	cmp	rax, qword ptr [rbp - 0x20]
	jg	.label_1015
	cmp	qword ptr [rbp - 0x20], 0x77359400
	jg	.label_1015
	jmp	.label_1015
.label_1019:
	mov	rax, -1
	cmp	rax, qword ptr [rbp - 0x10]
	jg	.label_1018
	cmp	qword ptr [rbp - 0x10], 0x77359400
	jg	.label_1018
	jmp	.label_1018
.label_1015:
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, qword ptr [rbp - 0x20]
	mov	ecx, eax
	mov	dword ptr [rbp - 4], ecx
.label_1017:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40bb92
	.globl sub_40bb92
	.type sub_40bb92, @function
sub_40bb92:

	nop	word ptr cs:[rax + rax]
.label_1021:
	movabs	rax, 0x5555555555555554
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_1020
	call	xalloc_die
.label_1020:
	mov	rax, qword ptr [rbp - 0x20]
	shr	rax, 1
	add	rax, 1
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_1023:
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
	#Procedure 0x40bbfb
	.globl sub_40bbfb
	.type sub_40bbfb, @function
sub_40bbfb:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40bc04

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
	jne	.label_1021
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_1024
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
.label_1024:
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1022
	call	xalloc_die
.label_1022:
	jmp	.label_1023
	.section	.text
	.align	16
	#Procedure 0x40bc90

	.globl __gl_setmode
	.type __gl_setmode, @function
__gl_setmode:
	push	rbp
	mov	rbp, rsp
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40bc9e
	.globl sub_40bc9e
	.type sub_40bc9e, @function
sub_40bc9e:

	nop	
.label_1053:
	mov	rax, qword ptr [rbp - 0x1c8]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x1d8], rdx
.label_1032:
	mov	rax, qword ptr [rbp - 0x1d8]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x2c], ecx
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 0x2c]
	call	rpl_fcntl_DUPFD_CLOEXEC
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_1025
.label_1030:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x218], rax
	mov	dword ptr [rbp - 0x21c], ecx
	ja	.label_1047
	mov	eax, dword ptr [rbp - 0x21c]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x218]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x228], rcx
	jmp	.label_1052
	.section	.text
	.align	16
	#Procedure 0x40bd1e

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
	je	.label_1035
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
.label_1035:
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
	je	.label_1051
	jmp	.label_1048
.label_1048:
	mov	eax, dword ptr [rbp - 0x1a0]
	sub	eax, 0x406
	mov	dword ptr [rbp - 0x1a4], eax
	je	.label_1055
	jmp	.label_1031
.label_1037:
	mov	rax, qword ptr [rbp - 0x230]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x240], rdx
.label_1046:
	mov	rax, qword ptr [rbp - 0x240]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x38], rax
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x24], eax
.label_1039:
	jmp	.label_1025
.label_1025:
	mov	eax, dword ptr [rbp - 0x24]
	add	rsp, 0x240
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40beeb
	.globl sub_40beeb
	.type sub_40beeb, @function
sub_40beeb:

	nop	dword ptr [rax + rax]
.label_1054:
	mov	rax, qword ptr [rbp - 0x1b0]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x1c0], rdx
.label_1033:
	mov	rax, qword ptr [rbp - 0x1c0]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x28], ecx
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 0x28]
	call	rpl_fcntl_DUPFD
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_1025
.label_1047:
	mov	rax, qword ptr [rbp - 0x218]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x228], rdx
.label_1052:
	mov	rax, qword ptr [rbp - 0x228]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x30], ecx
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	edx, dword ptr [rbp - 0x30]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_1039
.label_1031:
	mov	eax, dword ptr [rbp - 8]
	test	eax, eax
	mov	dword ptr [rbp - 0x1dc], eax
	je	.label_1030
	jmp	.label_1026
.label_1026:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 1
	mov	dword ptr [rbp - 0x1e0], eax
	je	.label_1028
	jmp	.label_1036
.label_1036:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 2
	mov	dword ptr [rbp - 0x1e4], eax
	je	.label_1030
	jmp	.label_1040
.label_1040:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 3
	mov	dword ptr [rbp - 0x1e8], eax
	je	.label_1028
	jmp	.label_1044
.label_1044:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 4
	mov	dword ptr [rbp - 0x1ec], eax
	je	.label_1030
	jmp	.label_1049
.label_1049:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 8
	mov	dword ptr [rbp - 0x1f0], eax
	je	.label_1030
	jmp	.label_1027
.label_1027:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 9
	mov	dword ptr [rbp - 0x1f4], eax
	je	.label_1028
	jmp	.label_1034
.label_1034:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0xa
	mov	dword ptr [rbp - 0x1f8], eax
	je	.label_1030
	jmp	.label_1041
.label_1041:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0xb
	mov	dword ptr [rbp - 0x1fc], eax
	je	.label_1028
	jmp	.label_1045
.label_1045:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x400
	mov	dword ptr [rbp - 0x200], eax
	je	.label_1030
	jmp	.label_1050
.label_1050:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x401
	mov	dword ptr [rbp - 0x204], eax
	je	.label_1028
	jmp	.label_1029
.label_1029:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x402
	mov	dword ptr [rbp - 0x208], eax
	je	.label_1030
	jmp	.label_1038
.label_1038:
	mov	eax, dword ptr [rbp - 0x1dc]
	add	eax, 0xfffffbfa
	sub	eax, 2
	mov	dword ptr [rbp - 0x20c], eax
	jb	.label_1030
	jmp	.label_1042
.label_1042:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x408
	mov	dword ptr [rbp - 0x210], eax
	jne	.label_1043
	jmp	.label_1028
.label_1028:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_1039
.label_1055:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x1c8], rax
	mov	dword ptr [rbp - 0x1cc], ecx
	ja	.label_1053
	mov	eax, dword ptr [rbp - 0x1cc]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x1c8]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x1d8], rcx
	jmp	.label_1032
.label_1043:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x230], rax
	mov	dword ptr [rbp - 0x234], ecx
	ja	.label_1037
	mov	eax, dword ptr [rbp - 0x234]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x230]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x240], rcx
	jmp	.label_1046
.label_1051:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x1b0], rax
	mov	dword ptr [rbp - 0x1b4], ecx
	ja	.label_1054
	mov	eax, dword ptr [rbp - 0x1b4]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x1b0]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x1c0], rcx
	jmp	.label_1033
.label_1056:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c1c6
	.globl sub_40c1c6
	.type sub_40c1c6, @function
sub_40c1c6:

	nop	word ptr [rax + rax]
.label_1059:
	call	__errno_location
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_330
	mov	esi, dword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	mov	al, 0
	call	error
.label_1058:
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_1057:
	mov	rdi,  qword ptr [word ptr [stderr]]
	call	close_stream
	cmp	eax, 0
	je	.label_1056
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
	.section	.text
	.align	16
	#Procedure 0x40c21b

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rdi,  qword ptr [word ptr [stdout]]
	call	close_stream
	cmp	eax, 0
	je	.label_1057
	test	byte ptr [byte ptr [ignore_EPIPE]],  1
	je	.label_1060
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	je	.label_1057
.label_1060:
	movabs	rdi, OFFSET FLAT:label_452
	call	gettext
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_1059
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	rdi,  qword ptr [word ptr [file_name]]
	mov	dword ptr [rbp - 0xc], esi
	call	quotearg_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_49
	mov	r8, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_1058
	.section	.text
	.align	16
	#Procedure 0x40c2b0

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
	#Procedure 0x40c2ef
	.globl sub_40c2ef
	.type sub_40c2ef, @function
sub_40c2ef:

	nop	
.label_1061:
	mov	byte ptr [rbp - 1], 0
.label_1064:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c2fe
	.globl sub_40c2fe
	.type sub_40c2fe, @function
sub_40c2fe:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c303
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
	jb	.label_1062
	jmp	.label_1063
.label_1063:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x20
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_1061
	jmp	.label_1062
.label_1062:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1064
	.section	.text
	.align	16
	#Procedure 0x40c340
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
	#Procedure 0x40c36a
	.globl sub_40c36a
	.type sub_40c36a, @function
sub_40c36a:

	nop	word ptr [rax + rax]
.label_1178:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1065
.label_1281:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1065
.label_1140:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1065
.label_1300:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1065
.label_1091:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1065
.label_1222:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1065
.label_1256:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1065
.label_1160:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1065
.label_1223:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1065
.label_1188:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1065
.label_1100:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1065
.label_1247:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1065
.label_1148:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1065
.label_1161:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1065
.label_1132:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1065
.label_1236:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1065
.label_1225:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1065
.label_1263:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1065
.label_1163:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1065
.label_1202:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1065
.label_1141:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1065
.label_1218:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1065
.label_1071:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1065
.label_1159:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1065
.label_1190:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1065
.label_1088:
	mov	dword ptr [rbp - 4], 0xffffffff
.label_1065:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x368
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c4af
	.globl sub_40c4af
	.type sub_40c4af, @function
sub_40c4af:

	nop	dword ptr [rax]
.label_1277:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1065
.label_1156:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1065
.label_1197:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1065
.label_1280:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1065
.label_1069:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1065
.label_1130:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1065
.label_1198:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1065
.label_1302:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1065
.label_1232:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1065
.label_1253:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1065
.label_1289:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1065
.label_1125:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1065
.label_1220:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1065
.label_1212:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1065
.label_1114:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1065
.label_1214:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1065
.label_1074:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1065
.label_1143:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1065
.label_1172:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1065
.label_1211:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1065
.label_1157:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1065
.label_1206:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1065
.label_1183:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1065
.label_1116:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1065
.label_1128:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1065
.label_1153:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1065
.label_1309:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1065
.label_1174:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1065
.label_1233:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1065
.label_1171:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1065
.label_1259:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1065
.label_1142:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1065
.label_1250:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1065
.label_1294:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1065
.label_1199:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1065
.label_1265:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1065
.label_1269:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1065
.label_1201:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1065
.label_1121:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1065
.label_1084:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1065
.label_1110:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1065
.label_1216:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1065
.label_1305:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1065
.label_1189:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1065
.label_1087:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1065
.label_1103:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1065
.label_1227:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1065
.label_1241:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1065
.label_1239:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1065
.label_1177:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1065
.label_1099:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1065
.label_1150:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1065
.label_1068:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1065
.label_1286:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1065
.label_1219:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1065
.label_1229:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1065
.label_1235:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1065
	.section	.text
	.align	16
	#Procedure 0x40c75f

	.globl is_local_fs_type
	.type is_local_fs_type, @function
is_local_fs_type:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x368
	mov	qword ptr [rbp - 0x10], rdi
	mov	rax, rdi
	sub	rdi, 0x2f
	mov	qword ptr [rbp - 0x18], rax
	mov	qword ptr [rbp - 0x20], rdi
	je	.label_1268
	jmp	.label_1278
.label_1278:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x187
	mov	qword ptr [rbp - 0x28], rax
	je	.label_1143
	jmp	.label_1285
.label_1285:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x7c0
	mov	qword ptr [rbp - 0x30], rax
	je	.label_1287
	jmp	.label_1292
.label_1292:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x1373
	mov	qword ptr [rbp - 0x38], rax
	je	.label_1294
	jmp	.label_1299
.label_1299:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x137d
	mov	qword ptr [rbp - 0x40], rax
	je	.label_1300
	jmp	.label_1266
.label_1266:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x137f
	mov	qword ptr [rbp - 0x48], rax
	je	.label_1280
	jmp	.label_1066
.label_1066:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x138f
	mov	qword ptr [rbp - 0x50], rax
	je	.label_1068
	jmp	.label_1072
.label_1072:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x1cd1
	mov	qword ptr [rbp - 0x58], rax
	je	.label_1074
	jmp	.label_1079
.label_1079:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x2468
	mov	qword ptr [rbp - 0x60], rax
	je	.label_1082
	jmp	.label_1086
.label_1086:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x2478
	mov	qword ptr [rbp - 0x68], rax
	je	.label_1087
	jmp	.label_1093
.label_1093:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x3434
	mov	qword ptr [rbp - 0x70], rax
	je	.label_1095
	jmp	.label_1098
.label_1098:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x4000
	mov	qword ptr [rbp - 0x78], rax
	je	.label_1101
	jmp	.label_1107
.label_1107:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x4004
	mov	qword ptr [rbp - 0x80], rax
	je	.label_1108
	jmp	.label_1113
.label_1113:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x4006
	mov	qword ptr [rbp - 0x88], rax
	je	.label_1116
	jmp	.label_1120
.label_1120:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x4244
	mov	qword ptr [rbp - 0x90], rax
	je	.label_1122
	jmp	.label_1127
.label_1127:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x482b
	mov	qword ptr [rbp - 0x98], rax
	je	.label_1130
	jmp	.label_1135
.label_1135:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x4858
	mov	qword ptr [rbp - 0xa0], rax
	je	.label_1136
	jmp	.label_1230
.label_1230:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x4d44
	mov	qword ptr [rbp - 0xa8], rax
	je	.label_1141
	jmp	.label_1146
.label_1146:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x4d5a
	mov	qword ptr [rbp - 0xb0], rax
	je	.label_1148
	jmp	.label_1152
.label_1152:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x517b
	mov	qword ptr [rbp - 0xb8], rax
	je	.label_1154
	jmp	.label_1115
.label_1115:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x564c
	mov	qword ptr [rbp - 0xc0], rax
	je	.label_1160
	jmp	.label_1165
.label_1165:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x5df5
	mov	qword ptr [rbp - 0xc8], rax
	je	.label_1161
	jmp	.label_1170
.label_1170:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x6969
	mov	qword ptr [rbp - 0xd0], rax
	je	.label_1171
	jmp	.label_1176
.label_1176:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x7275
	mov	qword ptr [rbp - 0xd8], rax
	je	.label_1178
	jmp	.label_1243
.label_1243:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x72b6
	mov	qword ptr [rbp - 0xe0], rax
	je	.label_1273
	jmp	.label_1187
.label_1187:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x9660
	mov	qword ptr [rbp - 0xe8], rax
	je	.label_1189
	jmp	.label_1196
.label_1196:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x9fa0
	mov	qword ptr [rbp - 0xf0], rax
	je	.label_1198
	jmp	.label_1200
.label_1200:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x9fa1
	mov	qword ptr [rbp - 0xf8], rax
	je	.label_1157
	jmp	.label_1205
.label_1205:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x9fa2
	mov	qword ptr [rbp - 0x100], rax
	je	.label_1206
	jmp	.label_1210
.label_1210:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0xadf5
	mov	qword ptr [rbp - 0x108], rax
	je	.label_1212
	jmp	.label_1217
.label_1217:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0xadff
	mov	qword ptr [rbp - 0x110], rax
	je	.label_1219
	jmp	.label_1226
.label_1226:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0xef51
	mov	qword ptr [rbp - 0x118], rax
	je	.label_1227
	jmp	.label_1105
.label_1105:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0xef53
	mov	qword ptr [rbp - 0x120], rax
	je	.label_1233
	jmp	.label_1238
.label_1238:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0xf15f
	mov	qword ptr [rbp - 0x128], rax
	je	.label_1241
	jmp	.label_1182
.label_1182:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x11954
	mov	qword ptr [rbp - 0x130], rax
	je	.label_1188
	jmp	.label_1251
.label_1251:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x27e0eb
	mov	qword ptr [rbp - 0x138], rax
	je	.label_1253
	jmp	.label_1258
.label_1258:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x414a53
	mov	qword ptr [rbp - 0x140], rax
	je	.label_1259
	jmp	.label_1264
.label_1264:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0xc0ffee
	mov	qword ptr [rbp - 0x148], rax
	je	.label_1265
	jmp	.label_1271
.label_1271:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0xc36400
	mov	qword ptr [rbp - 0x150], rax
	je	.label_1272
	jmp	.label_1279
.label_1279:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x1021994
	mov	qword ptr [rbp - 0x158], rax
	je	.label_1281
	jmp	.label_1288
.label_1288:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x1021997
	mov	qword ptr [rbp - 0x160], rax
	je	.label_1289
	jmp	.label_1296
.label_1296:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x1161970
	mov	qword ptr [rbp - 0x168], rax
	je	.label_1222
	jmp	.label_1192
.label_1192:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x12fd16d
	mov	qword ptr [rbp - 0x170], rax
	je	.label_1262
	jmp	.label_1307
.label_1307:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x12ff7b4
	mov	qword ptr [rbp - 0x178], rax
	je	.label_1309
	jmp	.label_1070
.label_1070:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x12ff7b5
	mov	qword ptr [rbp - 0x180], rax
	je	.label_1071
	jmp	.label_1078
.label_1078:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x12ff7b6
	mov	qword ptr [rbp - 0x188], rax
	je	.label_1081
	jmp	.label_1257
.label_1257:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x12ff7b7
	mov	qword ptr [rbp - 0x190], rax
	je	.label_1181
	jmp	.label_1094
.label_1094:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x13111a8
	mov	qword ptr [rbp - 0x198], rax
	je	.label_1216
	jmp	.label_1102
.label_1102:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x7655821
	mov	qword ptr [rbp - 0x1a0], rax
	je	.label_1103
	jmp	.label_1109
.label_1109:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x9041934
	mov	qword ptr [rbp - 0x1a8], rax
	je	.label_1111
	jmp	.label_1117
.label_1117:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0xbad1dea
	mov	qword ptr [rbp - 0x1b0], rax
	je	.label_1118
	jmp	.label_1124
.label_1124:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0xbd00bd0
	mov	qword ptr [rbp - 0x1b8], rax
	je	.label_1126
	jmp	.label_1131
.label_1131:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x11307854
	mov	qword ptr [rbp - 0x1c0], rax
	je	.label_1132
	jmp	.label_1137
.label_1137:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x13661366
	mov	qword ptr [rbp - 0x1c8], rax
	je	.label_1138
	jmp	.label_1248
.label_1248:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x15013346
	mov	qword ptr [rbp - 0x1d0], rax
	je	.label_1142
	jmp	.label_1149
.label_1149:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x19800202
	mov	qword ptr [rbp - 0x1d8], rax
	je	.label_1150
	jmp	.label_1155
.label_1155:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x19830326
	mov	qword ptr [rbp - 0x1e0], rax
	je	.label_1156
	jmp	.label_1133
.label_1133:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x1badface
	mov	qword ptr [rbp - 0x1e8], rax
	je	.label_1163
	jmp	.label_1168
.label_1168:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x24051905
	mov	qword ptr [rbp - 0x1f0], rax
	je	.label_1080
	jmp	.label_1173
.label_1173:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x28cd3d45
	mov	qword ptr [rbp - 0x1f8], rax
	je	.label_1174
	jmp	.label_1245
.label_1245:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x2bad1dea
	mov	qword ptr [rbp - 0x200], rax
	je	.label_1179
	jmp	.label_1184
.label_1184:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x2fc12fc1
	mov	qword ptr [rbp - 0x208], rax
	je	.label_1293
	jmp	.label_1191
.label_1191:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x3153464a
	mov	qword ptr [rbp - 0x210], rax
	je	.label_1193
	jmp	.label_1129
.label_1129:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x42465331
	mov	qword ptr [rbp - 0x218], rax
	je	.label_1199
	jmp	.label_1203
.label_1203:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x42494e4d
	mov	qword ptr [rbp - 0x220], rax
	je	.label_1172
	jmp	.label_1207
.label_1207:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x43415d53
	mov	qword ptr [rbp - 0x228], rax
	je	.label_1208
	jmp	.label_1213
.label_1213:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x453dcd28
	mov	qword ptr [rbp - 0x230], rax
	je	.label_1214
	jmp	.label_1221
.label_1221:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x45584653
	mov	qword ptr [rbp - 0x238], rax
	je	.label_1223
	jmp	.label_1228
.label_1228:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x47504653
	mov	qword ptr [rbp - 0x240], rax
	je	.label_1229
	jmp	.label_1234
.label_1234:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x50495045
	mov	qword ptr [rbp - 0x248], rax
	je	.label_1236
	jmp	.label_1242
.label_1242:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x52654973
	mov	qword ptr [rbp - 0x250], rax
	je	.label_1244
	jmp	.label_1249
.label_1249:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x5346314d
	mov	qword ptr [rbp - 0x258], rax
	je	.label_1250
	jmp	.label_1255
.label_1255:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x5346414f
	mov	qword ptr [rbp - 0x260], rax
	je	.label_1256
	jmp	.label_1260
.label_1260:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x53464846
	mov	qword ptr [rbp - 0x268], rax
	je	.label_1263
	jmp	.label_1077
.label_1077:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x5346544e
	mov	qword ptr [rbp - 0x270], rax
	je	.label_1269
	jmp	.label_1274
.label_1274:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x534f434b
	mov	qword ptr [rbp - 0x278], rax
	je	.label_1276
	jmp	.label_1282
.label_1282:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x54190100
	mov	qword ptr [rbp - 0x280], rax
	je	.label_1283
	jmp	.label_1290
.label_1290:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x565a4653
	mov	qword ptr [rbp - 0x288], rax
	je	.label_1291
	jmp	.label_1298
.label_1298:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x58295829
	mov	qword ptr [rbp - 0x290], rax
	je	.label_1240
	jmp	.label_1303
.label_1303:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x58465342
	mov	qword ptr [rbp - 0x298], rax
	je	.label_1304
	jmp	.label_1067
.label_1067:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x5a3c69f0
	mov	qword ptr [rbp - 0x2a0], rax
	je	.label_1069
	jmp	.label_1075
.label_1075:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x5dca2df5
	mov	qword ptr [rbp - 0x2a8], rax
	je	.label_1125
	jmp	.label_1083
.label_1083:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x61636673
	mov	qword ptr [rbp - 0x2b0], rax
	je	.label_1084
	jmp	.label_1089
.label_1089:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x6165676c
	mov	qword ptr [rbp - 0x2b8], rax
	je	.label_1091
	jmp	.label_1096
.label_1096:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x61756673
	mov	qword ptr [rbp - 0x2c0], rax
	je	.label_1235
	jmp	.label_1104
.label_1104:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x62646576
	mov	qword ptr [rbp - 0x2c8], rax
	je	.label_1106
	jmp	.label_1112
.label_1112:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x62656570
	mov	qword ptr [rbp - 0x2d0], rax
	je	.label_1114
	jmp	.label_1119
.label_1119:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x62656572
	mov	qword ptr [rbp - 0x2d8], rax
	je	.label_1121
	jmp	.label_1151
.label_1151:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x63677270
	mov	qword ptr [rbp - 0x2e0], rax
	je	.label_1128
	jmp	.label_1134
.label_1134:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x64626720
	mov	qword ptr [rbp - 0x2e8], rax
	je	.label_1195
	jmp	.label_1139
.label_1139:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x64646178
	mov	qword ptr [rbp - 0x2f0], rax
	je	.label_1140
	jmp	.label_1145
.label_1145:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x65735543
	mov	qword ptr [rbp - 0x2f8], rax
	je	.label_1147
	jmp	.label_1306
.label_1306:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x65735546
	mov	qword ptr [rbp - 0x300], rax
	je	.label_1153
	jmp	.label_1158
.label_1158:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x67596969
	mov	qword ptr [rbp - 0x308], rax
	je	.label_1159
	jmp	.label_1164
.label_1164:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x68191122
	mov	qword ptr [rbp - 0x310], rax
	je	.label_1166
	jmp	.label_1169
.label_1169:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x6b414653
	mov	qword ptr [rbp - 0x318], rax
	je	.label_1190
	jmp	.label_1175
.label_1175:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x6e667364
	mov	qword ptr [rbp - 0x320], rax
	je	.label_1177
	jmp	.label_1180
.label_1180:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x6e736673
	mov	qword ptr [rbp - 0x328], rax
	je	.label_1183
	jmp	.label_1186
.label_1186:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x73636673
	mov	qword ptr [rbp - 0x330], rax
	je	.label_1220
	jmp	.label_1194
.label_1194:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x73717368
	mov	qword ptr [rbp - 0x338], rax
	je	.label_1197
	jmp	.label_1144
.label_1144:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x73727279
	mov	qword ptr [rbp - 0x340], rax
	je	.label_1201
	jmp	.label_1204
.label_1204:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x73757245
	mov	qword ptr [rbp - 0x348], rax
	je	.label_1185
	jmp	.label_1209
.label_1209:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x7461636f
	mov	qword ptr [rbp - 0x350], rax
	je	.label_1211
	jmp	.label_1215
.label_1215:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x74726163
	mov	qword ptr [rbp - 0x358], rax
	je	.label_1218
	jmp	.label_1224
.label_1224:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x794c7630
	mov	qword ptr [rbp - 0x360], rax
	je	.label_1305
	jmp	.label_1231
.label_1231:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x7c7c6673
	mov	qword ptr [rbp - 0x368], rax
	je	.label_1232
	jmp	.label_1237
.label_1237:
	mov	eax, 0x858458f6
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x18]
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x370], rdx
	je	.label_1239
	jmp	.label_1246
.label_1246:
	mov	eax, 0x9123683e
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x18]
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x378], rdx
	je	.label_1247
	jmp	.label_1252
.label_1252:
	mov	eax, 0x958458f6
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x18]
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x380], rdx
	je	.label_1254
	jmp	.label_1270
.label_1270:
	mov	eax, 0xa501fcf5
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x18]
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x388], rdx
	je	.label_1261
	jmp	.label_1267
.label_1267:
	mov	eax, 0xaad7aaea
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x18]
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x390], rdx
	je	.label_1085
	jmp	.label_1275
.label_1275:
	mov	eax, 0xabba1974
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x18]
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x398], rdx
	je	.label_1277
	jmp	.label_1284
.label_1284:
	mov	eax, 0xbacbacbc
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x18]
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x3a0], rdx
	je	.label_1286
	jmp	.label_1295
.label_1295:
	mov	eax, 0xbeefdead
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x18]
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x3a8], rdx
	je	.label_1297
	jmp	.label_1301
.label_1301:
	mov	eax, 0xc97e8168
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x18]
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x3b0], rdx
	je	.label_1302
	jmp	.label_1308
.label_1308:
	mov	eax, 0xcafe4a11
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x18]
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x3b8], rdx
	je	.label_1225
	jmp	.label_1073
.label_1073:
	mov	eax, 0xde5e81e4
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x18]
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x3c0], rdx
	je	.label_1076
	jmp	.label_1167
.label_1167:
	mov	eax, 0xf2f52010
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x18]
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x3c8], rdx
	je	.label_1162
	jmp	.label_1090
.label_1090:
	mov	eax, 0xf97cff8c
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x18]
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x3d0], rdx
	je	.label_1202
	jmp	.label_1097
.label_1097:
	mov	eax, 0xf995e849
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x18]
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x3d8], rdx
	je	.label_1099
	jmp	.label_1123
.label_1123:
	mov	eax, 0xfe534d42
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x18]
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x3e0], rdx
	je	.label_1110
	jmp	.label_1092
.label_1092:
	mov	eax, 0xff534d42
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x18]
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x3e8], rdx
	je	.label_1100
	jmp	.label_1088
.label_1287:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1065
.label_1193:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1065
.label_1304:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1065
.label_1244:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1065
.label_1254:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1065
.label_1106:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1065
.label_1293:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1065
.label_1111:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1065
.label_1208:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1065
.label_1276:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1065
.label_1195:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1065
.label_1166:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1065
.label_1185:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1065
.label_1082:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1065
.label_1101:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1065
.label_1268:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1065
.label_1095:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1065
.label_1118:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1065
.label_1162:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1065
.label_1283:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1065
.label_1080:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1065
.label_1154:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1065
.label_1261:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1065
.label_1297:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1065
.label_1291:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1065
.label_1108:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1065
.label_1085:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1065
.label_1081:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1065
.label_1181:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1065
.label_1126:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1065
.label_1136:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1065
.label_1138:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1065
.label_1272:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1065
.label_1273:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1065
.label_1240:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1065
.label_1179:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1065
.label_1122:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1065
.label_1076:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1065
.label_1262:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1065
.label_1147:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1065
	.section	.text
	.align	16
	#Procedure 0x40d6c0

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_1310
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
	#Procedure 0x40d6f0
	.globl hash_print_statistics
	.type hash_print_statistics, @function
hash_print_statistics:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	movabs	rax, OFFSET FLAT:label_1311
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
	mov	ecx, OFFSET FLAT:label_1314
	mov	esi, ecx
	xor	ecx, ecx
	mov	r8b, cl
	mov	al, r8b
	mov	byte ptr [rbp - 0x39], r8b
	call	fprintf
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	ecx, OFFSET FLAT:label_1312
	mov	esi, ecx
	mov	r8b, byte ptr [rbp - 0x39]
	mov	dword ptr [rbp - 0x40], eax
	mov	al, r8b
	call	fprintf
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x28]
	movq	xmm0, rdx
	movaps	xmm1,  xmmword ptr [word ptr [rip + label_1315]]
	punpckldq	xmm0, xmm1
	movapd	xmm2,  xmmword ptr [word ptr [rip + label_1316]]
	subpd	xmm0, xmm2
	pshufd	xmm3, xmm0, 0x4e
	addpd	xmm3, xmm0
	movsd	xmm0,  qword ptr [word ptr [rip + label_1317]]
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
	movabs	rsi, OFFSET FLAT:label_1313
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
	#Procedure 0x40d809
	.globl sub_40d809
	.type sub_40d809, @function
sub_40d809:

	nop	dword ptr [rax]
.label_1318:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d816
	.globl sub_40d816
	.type sub_40d816, @function
sub_40d816:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d81f
	.globl hash_string
	.type hash_string, @function
hash_string:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], 0
.label_1319:
	mov	rax, qword ptr [rbp - 8]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x19], cl
	cmp	cl, 0
	je	.label_1318
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
	jmp	.label_1319
	.section	.text
	.align	16
	#Procedure 0x40d870

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
	#Procedure 0x40d8b2
	.globl sub_40d8b2
	.type sub_40d8b2, @function
sub_40d8b2:

	nop	word ptr cs:[rax + rax]
.label_1322:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x28]
	call	strtod_l
	movsd	qword ptr [rbp - 0x20], xmm0
	movsd	xmm0, qword ptr [rbp - 0x20]
	movsd	qword ptr [rbp - 8], xmm0
.label_1320:
	movsd	xmm0, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d8eb
	.globl sub_40d8eb
	.type sub_40d8eb, @function
sub_40d8eb:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d8f9

	.globl c_strtod
	.type c_strtod, @function
c_strtod:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	call	c_locale
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_1322
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1321
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx], rax
.label_1321:
	xorps	xmm0, xmm0
	movsd	qword ptr [rbp - 8], xmm0
	jmp	.label_1320
.label_1328:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax], 0
	je	.label_1323
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1325
	.section	.text
	.align	16
	#Procedure 0x40d95e
	.globl hash_get_first
	.type hash_get_first, @function
hash_get_first:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	qword ptr [rdi + 0x20], 0
	jne	.label_1329
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1325
.label_1323:
	jmp	.label_1326
.label_1326:
	jmp	.label_1327
.label_1327:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1324
.label_1329:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x18], rax
.label_1324:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	jb	.label_1328
	call	abort
.label_1325:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d9cd
	.globl sub_40d9cd
	.type sub_40d9cd, @function
sub_40d9cd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40d9d0

	.globl __gl_setmode_check
	.type __gl_setmode_check, @function
__gl_setmode_check:
	push	rbp
	mov	rbp, rsp
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d9db
	.globl sub_40d9db
	.type sub_40d9db, @function
sub_40d9db:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d9e0
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
	#Procedure 0x40da07
	.globl sub_40da07
	.type sub_40da07, @function
sub_40da07:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40da10

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
	#Procedure 0x40da48
	.globl sub_40da48
	.type sub_40da48, @function
sub_40da48:

	nop	dword ptr [rax + rax]
.label_1339:
	mov	byte ptr [rbp - 0x31], 1
.label_1359:
	jmp	.label_1413
.label_1413:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_1348
.label_1349:
	movabs	rdi, OFFSET FLAT:label_1356
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
.label_1369:
	mov	byte ptr [rbp - 0x33], 1
	jmp	.label_1353
.label_1366:
	jmp	.label_1346
.label_1346:
	mov	rax, qword ptr [rbp - 0x128]
	cmp	dword ptr [rax + 0xc], 0
	je	.label_1410
	mov	qword ptr [rbp - 0x1d8], 0
.label_1403:
	mov	rax, qword ptr [rbp - 0x1d8]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_1389
	mov	rax, qword ptr [rbp - 0x1d8]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	mov	rax, qword ptr [rbp - 0x128]
	cmp	ecx, dword ptr [rax]
	jne	.label_1373
	mov	rax, qword ptr [rbp - 0x128]
	add	rax, 0x10
	mov	rcx, qword ptr [rbp - 0x1d8]
	imul	rcx, rcx, 0x60
	add	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	mov	rdx, qword ptr [rbp - 0x1d8]
	imul	rdx, rdx, 0x60
	add	rdx, qword ptr [rbp - 0x10]
	add	rcx, qword ptr [rdx + 0x50]
	mov	rdi, rax
	mov	rsi, rcx
	call	strcmp
	cmp	eax, 0
	jne	.label_1373
	jmp	.label_1389
.label_1415:
	jmp	.label_1388
.label_1388:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x58]
	ja	.label_1364
	cmp	dword ptr [dword ptr [pid]],  0
	je	.label_1351
	test	byte ptr [rbp - 0x35], 1
	je	.label_1401
	xor	edi, edi
	call	exit
	.section	.text
	.align	16
	#Procedure 0x40db60

	.globl tail_forever_inotify
	.type tail_forever_inotify, @function
tail_forever_inotify:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x300
	xor	eax, eax
	mov	ecx, eax
	movabs	r8, OFFSET FLAT:wd_hasher
	movabs	r9, OFFSET FLAT:wd_comparator
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	movsd	qword ptr [rbp - 0x20], xmm0
	mov	dword ptr [rbp - 0x24], 3
	mov	byte ptr [rbp - 0x31], 0
	mov	byte ptr [rbp - 0x32], 0
	mov	byte ptr [rbp - 0x33], 0
	mov	byte ptr [rbp - 0x34], 0
	mov	byte ptr [rbp - 0x35], 0
	mov	qword ptr [rbp - 0x48], 0
	mov	qword ptr [rbp - 0x58], 0
	mov	qword ptr [rbp - 0x60], 0
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, rcx
	mov	rdx, r8
	mov	qword ptr [rbp - 0x250], rcx
	mov	rcx, r9
	mov	r8, qword ptr [rbp - 0x250]
	call	hash_initialize
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_1422
	call	xalloc_die
.label_1331:
	jmp	.label_1370
.label_1370:
	mov	edi, dword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x70]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rax]
	mov	edx, dword ptr [rbp - 0x64]
	call	inotify_add_watch
	mov	rsi, qword ptr [rbp - 0x70]
	imul	rsi, rsi, 0x60
	add	rsi, qword ptr [rbp - 0x10]
	mov	dword ptr [rsi + 0x44], eax
	mov	rsi, qword ptr [rbp - 0x70]
	imul	rsi, rsi, 0x60
	add	rsi, qword ptr [rbp - 0x10]
	cmp	dword ptr [rsi + 0x44], 0
	jge	.label_1333
	mov	rax, qword ptr [rbp - 0x70]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x10]
	cmp	dword ptr [rax + 0x38], -1
	je	.label_1343
	mov	byte ptr [rbp - 0x32], 1
.label_1343:
	call	__errno_location
	cmp	dword ptr [rax], 0x1c
	je	.label_1350
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	jne	.label_1357
.label_1350:
	movabs	rdi, OFFSET FLAT:label_1356
	mov	byte ptr [rbp - 0x34], 1
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	jmp	.label_1353
.label_1417:
	jmp	.label_1364
.label_1364:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x58]
	ja	.label_1345
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x48]
	call	safe_read
	mov	qword ptr [rbp - 0x60], rax
	mov	qword ptr [rbp - 0x58], 0
	cmp	qword ptr [rbp - 0x60], 0
	je	.label_1372
	cmp	qword ptr [rbp - 0x60], -1
	jne	.label_1376
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_1376
.label_1372:
	mov	eax, dword ptr [rbp - 0x24]
	mov	ecx, eax
	add	ecx, -1
	mov	dword ptr [rbp - 0x24], ecx
	cmp	eax, 0
	je	.label_1376
	mov	qword ptr [rbp - 0x60], 0
	mov	rax, qword ptr [rbp - 0x48]
	shl	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0x48]
	call	xrealloc
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1338
.label_1376:
	cmp	qword ptr [rbp - 0x60], 0
	je	.label_1392
	cmp	qword ptr [rbp - 0x60], -1
	jne	.label_1395
.label_1392:
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_1399
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x2d0], esi
	call	gettext
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x2d0]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_1393:
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x120]
	mov	rsi, rax
	call	hash_delete
	mov	qword ptr [rbp - 0x1e8], rax
	cmp	qword ptr [rbp - 0x1e8], 0
	je	.label_1390
	mov	rax, qword ptr [rbp - 0x1e8]
	cmp	rax, qword ptr [rbp - 0x120]
	je	.label_1390
	cmp	dword ptr [dword ptr [follow_mode]],  1
	jne	.label_1336
	xor	esi, esi
	mov	rdi, qword ptr [rbp - 0x1e8]
	call	recheck
.label_1336:
	mov	rax, qword ptr [rbp - 0x1e8]
	mov	dword ptr [rax + 0x44], 0xffffffff
	mov	rax, qword ptr [rbp - 0x1e8]
	mov	edi, dword ptr [rax + 0x38]
	mov	rax, qword ptr [rbp - 0x1e8]
	mov	dword ptr [rbp - 0x2f4], edi
	mov	rdi, rax
	call	pretty_name
	mov	edi, dword ptr [rbp - 0x2f4]
	mov	rsi, rax
	call	close_fd
.label_1390:
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x120]
	mov	rsi, rax
	call	hash_insert
	cmp	rax, 0
	jne	.label_1334
	call	xalloc_die
.label_1409:
	movsd	xmm0,  qword ptr [word ptr [rip + label_1337]]
	cvttsd2si	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x140], rax
	movsd	xmm1, qword ptr [rbp - 0x20]
	cvtsi2sd	xmm2, qword ptr [rbp - 0x140]
	subsd	xmm1, xmm2
	mulsd	xmm0, xmm1
	cvttsd2si	rax, xmm0
	mov	qword ptr [rbp - 0x138], rax
.label_1416:
	jmp	.label_1351
.label_1351:
	jmp	.label_1352
.label_1352:
	lea	rax, [rbp - 0x1c0]
	mov	ecx, 0x10
	xor	edx, edx
	mov	qword ptr [rbp - 0x2a0], rax
	mov	eax, edx
	mov	rsi, qword ptr [rbp - 0x2a0]
	mov	rdi, rsi
	cld	
	rep stosq	qword ptr [rdi], rax
	mov	eax, ecx
	mov	dword ptr [rbp - 0x1c4], eax
	mov	eax, edi
	mov	dword ptr [rbp - 0x1c8], eax
	mov	eax, 0x40
	mov	ecx, 1
	mov	edx, ecx
	mov	ecx, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 0x2a4], eax
	mov	eax, ecx
	mov	qword ptr [rbp - 0x2b0], rdx
	cdq	
	mov	ecx, dword ptr [rbp - 0x2a4]
	idiv	ecx
	mov	edx, edx
	mov	ecx, edx
	mov	rsi, qword ptr [rbp - 0x2b0]
	shl	rsi, cl
	mov	edx, dword ptr [rbp - 8]
	mov	eax, edx
	cdq	
	mov	edi, dword ptr [rbp - 0x2a4]
	idiv	edi
	movsxd	r8, eax
	or	rsi, qword ptr [rbp + r8*8 - 0x1c0]
	mov	qword ptr [rbp + r8*8 - 0x1c0], rsi
	test	byte ptr [byte ptr [monitor_output]],  1
	je	.label_1362
	mov	rax, qword ptr [rbp - 0x1c0]
	or	rax, 2
	mov	qword ptr [rbp - 0x1c0], rax
.label_1362:
	cmp	dword ptr [rbp - 8], 1
	jle	.label_1384
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 0x2b4], eax
	jmp	.label_1385
.label_1342:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x300
	pop	rbp
	ret	
.label_1389:
	mov	rax, qword ptr [rbp - 0x1d8]
	cmp	rax, qword ptr [rbp - 0x18]
	jne	.label_1397
	jmp	.label_1338
.label_1401:
	xor	esi, esi
	mov	edi,  dword ptr [dword ptr [pid]]
	call	kill
	xor	esi, esi
	mov	cl, sil
	cmp	eax, 0
	mov	byte ptr [rbp - 0x291], cl
	je	.label_1405
	call	__errno_location
	cmp	dword ptr [rax], 1
	setne	cl
	mov	byte ptr [rbp - 0x291], cl
.label_1405:
	mov	al, byte ptr [rbp - 0x291]
	and	al, 1
	mov	byte ptr [rbp - 0x35], al
	test	byte ptr [rbp - 0x35], 1
	je	.label_1409
	mov	qword ptr [rbp - 0x138], 0
	mov	qword ptr [rbp - 0x140], 0
	jmp	.label_1416
.label_1418:
	cmp	dword ptr [rbp - 0x1cc], -1
	jne	.label_1361
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_1368
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x2cc], esi
	call	gettext
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x2cc]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_1410:
	lea	rax, [rbp - 0x248]
	mov	rcx, qword ptr [rbp - 0x128]
	mov	edx, dword ptr [rcx]
	mov	dword ptr [rbp - 0x204], edx
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, rax
	call	hash_lookup
	mov	qword ptr [rbp - 0x120], rax
.label_1358:
	cmp	qword ptr [rbp - 0x120], 0
	jne	.label_1335
	jmp	.label_1338
.label_1412:
	jmp	.label_1340
.label_1340:
	jmp	.label_1341
.label_1341:
	lea	rsi, [rbp - 0x40]
	mov	rax, qword ptr [rbp - 0x70]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	check_fspec
.label_1398:
	jmp	.label_1347
.label_1347:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_1404
.label_1397:
	mov	rax, qword ptr [rbp - 0x1d8]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x120], rax
	mov	dword ptr [rbp - 0x1dc], 0xffffffff
	mov	rax, qword ptr [rbp - 0x128]
	mov	ecx, dword ptr [rax + 4]
	and	ecx, 0x200
	cmp	ecx, 0
	setne	dl
	xor	dl, 0xff
	xor	dl, 0xff
	and	dl, 1
	mov	byte ptr [rbp - 0x1dd], dl
	test	byte ptr [rbp - 0x1dd], 1
	jne	.label_1355
	mov	edi, dword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x1d8]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rax]
	mov	edx, dword ptr [rbp - 0x64]
	call	inotify_add_watch
	mov	dword ptr [rbp - 0x1dc], eax
.label_1355:
	test	byte ptr [rbp - 0x1dd], 1
	jne	.label_1377
	cmp	dword ptr [rbp - 0x1dc], 0
	jge	.label_1377
	call	__errno_location
	cmp	dword ptr [rax], 0x1c
	je	.label_1381
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	jne	.label_1383
.label_1381:
	movabs	rdi, OFFSET FLAT:label_1356
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	rdi, qword ptr [rbp - 0x30]
	call	hash_free
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1342
.label_1373:
	jmp	.label_1402
.label_1402:
	mov	rax, qword ptr [rbp - 0x1d8]
	add	rax, 1
	mov	qword ptr [rbp - 0x1d8], rax
	jmp	.label_1403
.label_1335:
	mov	rax, qword ptr [rbp - 0x128]
	mov	ecx, dword ptr [rax + 4]
	and	ecx, 0xe04
	cmp	ecx, 0
	je	.label_1406
	mov	rax, qword ptr [rbp - 0x128]
	mov	ecx, dword ptr [rax + 4]
	and	ecx, 0x400
	cmp	ecx, 0
	je	.label_1408
	mov	edi, dword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x120]
	mov	esi, dword ptr [rax + 0x44]
	call	inotify_rm_watch
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x120]
	mov	rsi, rcx
	mov	dword ptr [rbp - 0x2f8], eax
	call	hash_delete
	mov	qword ptr [rbp - 0x300], rax
.label_1408:
	xor	esi, esi
	mov	rdi, qword ptr [rbp - 0x120]
	call	recheck
	jmp	.label_1338
.label_1387:
	movabs	rax, OFFSET FLAT:label_1420
	mov	qword ptr [rbp - 0x260], rax
	jmp	.label_1407
.label_1407:
	mov	rax, qword ptr [rbp - 0x260]
	mov	edx, 0x784
	mov	edi, dword ptr [rbp - 0x254]
	mov	rsi, rax
	call	inotify_add_watch
	mov	rsi, qword ptr [rbp - 0x70]
	imul	rsi, rsi, 0x60
	add	rsi, qword ptr [rbp - 0x10]
	mov	dword ptr [rsi + 0x48], eax
	mov	cl, byte ptr [rbp - 0x81]
	mov	rsi, qword ptr [rbp - 0x80]
	mov	r8, qword ptr [rbp - 0x70]
	imul	r8, r8, 0x60
	add	r8, qword ptr [rbp - 0x10]
	mov	r8, qword ptr [r8]
	mov	byte ptr [r8 + rsi], cl
	mov	rsi, qword ptr [rbp - 0x70]
	imul	rsi, rsi, 0x60
	add	rsi, qword ptr [rbp - 0x10]
	cmp	dword ptr [rsi + 0x48], 0
	jge	.label_1331
	call	__errno_location
	cmp	dword ptr [rax], 0x1c
	je	.label_1349
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_1354
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x264], esi
	call	gettext
	mov	edi, 4
	mov	rcx, qword ptr [rbp - 0x70]
	imul	rcx, rcx, 0x60
	add	rcx, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rcx]
	mov	qword ptr [rbp - 0x270], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x264]
	mov	rdx, qword ptr [rbp - 0x270]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_1369
.label_1419:
	jmp	.label_1371
.label_1371:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_1374
.label_1353:
	test	byte ptr [rbp - 0x34], 1
	jne	.label_1375
	test	byte ptr [rbp - 0x33], 1
	jne	.label_1375
	cmp	dword ptr [dword ptr [follow_mode]],  2
	jne	.label_1378
	test	byte ptr [rbp - 0x32], 1
	je	.label_1378
.label_1375:
	mov	rdi, qword ptr [rbp - 0x30]
	call	hash_free
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1342
.label_1384:
	mov	eax, 1
	mov	dword ptr [rbp - 0x2b4], eax
	jmp	.label_1385
.label_1385:
	mov	eax, dword ptr [rbp - 0x2b4]
	add	eax, 1
	cmp	dword ptr [dword ptr [pid]],  0
	mov	dword ptr [rbp - 0x2b8], eax
	je	.label_1391
	lea	rax, [rbp - 0x140]
	mov	qword ptr [rbp - 0x2c0], rax
	jmp	.label_1400
.label_1332:
	mov	rax, qword ptr [rbp - 0x70]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x10]
	cmp	dword ptr [rax + 0x38], -1
	je	.label_1340
	lea	rsi, [rbp - 0x118]
	mov	rax, qword ptr [rbp - 0x70]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	call	stat
	cmp	eax, 0
	jne	.label_1412
	mov	rax, qword ptr [rbp - 0x70]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x20]
	cmp	rax, qword ptr [rbp - 0x118]
	jne	.label_1367
	mov	rax, qword ptr [rbp - 0x70]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	cmp	rax, qword ptr [rbp - 0x110]
	je	.label_1412
.label_1367:
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_1382
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x284], esi
	call	gettext
	mov	rdi, qword ptr [rbp - 0x70]
	imul	rdi, rdi, 0x60
	add	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x290], rax
	call	pretty_name
	mov	edi, 4
	mov	rsi, rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x284]
	mov	rdx, qword ptr [rbp - 0x290]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	rdi, qword ptr [rbp - 0x30]
	call	hash_free
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1342
.label_1395:
	jmp	.label_1345
.label_1345:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x130], rax
	mov	rax, qword ptr [rbp - 0x130]
	mov	qword ptr [rbp - 0x128], rax
	mov	rax, qword ptr [rbp - 0x128]
	mov	ecx, dword ptr [rax + 0xc]
	mov	eax, ecx
	add	rax, 0x10
	add	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x128]
	mov	ecx, dword ptr [rax + 4]
	and	ecx, 0x400
	cmp	ecx, 0
	je	.label_1346
	mov	rax, qword ptr [rbp - 0x128]
	cmp	dword ptr [rax + 0xc], 0
	jne	.label_1346
	mov	qword ptr [rbp - 0x70], 0
.label_1374:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_1366
	mov	rax, qword ptr [rbp - 0x128]
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x70]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x10]
	cmp	ecx, dword ptr [rax + 0x48]
	jne	.label_1419
	mov	rdi, qword ptr [rbp - 0x30]
	call	hash_free
	movabs	rdi, OFFSET FLAT:label_1379
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1342
.label_1357:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x70]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x10]
	cmp	ecx, dword ptr [rax + 0x3c]
	je	.label_1386
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_1396
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x274], esi
	call	gettext
	mov	edi, 4
	mov	rcx, qword ptr [rbp - 0x70]
	imul	rcx, rcx, 0x60
	add	rcx, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rcx]
	mov	qword ptr [rbp - 0x280], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x274]
	mov	rdx, qword ptr [rbp - 0x280]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_1386:
	jmp	.label_1411
.label_1411:
	jmp	.label_1413
.label_1378:
	cmp	dword ptr [dword ptr [follow_mode]],  2
	jne	.label_1414
	test	byte ptr [rbp - 0x31], 1
	jne	.label_1414
	mov	byte ptr [rbp - 1], 0
	jmp	.label_1342
.label_1406:
	lea	rsi, [rbp - 0x40]
	mov	rdi, qword ptr [rbp - 0x120]
	call	check_fspec
	jmp	.label_1338
.label_1383:
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_1396
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x2d4], esi
	call	gettext
	mov	edi, 4
	mov	rcx, qword ptr [rbp - 0x1d8]
	imul	rcx, rcx, 0x60
	add	rcx, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rcx]
	mov	qword ptr [rbp - 0x2e0], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x2d4]
	mov	rdx, qword ptr [rbp - 0x2e0]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_1377
.label_1377:
	xor	eax, eax
	mov	cl, al
	test	byte ptr [rbp - 0x1dd], 1
	mov	byte ptr [rbp - 0x2e1], cl
	jne	.label_1330
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x120]
	cmp	dword ptr [rcx + 0x44], 0
	mov	byte ptr [rbp - 0x2e2], al
	jl	.label_1344
	mov	eax, dword ptr [rbp - 0x1dc]
	mov	rcx, qword ptr [rbp - 0x120]
	cmp	eax, dword ptr [rcx + 0x44]
	setne	dl
	mov	byte ptr [rbp - 0x2e2], dl
.label_1344:
	mov	al, byte ptr [rbp - 0x2e2]
	mov	byte ptr [rbp - 0x2e1], al
.label_1330:
	mov	al, byte ptr [rbp - 0x2e1]
	and	al, 1
	mov	byte ptr [rbp - 0x1de], al
	test	byte ptr [rbp - 0x1de], 1
	je	.label_1360
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x120]
	cmp	eax, dword ptr [rcx + 0x44]
	jg	.label_1363
	mov	edi, dword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x120]
	mov	esi, dword ptr [rax + 0x44]
	call	inotify_rm_watch
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x120]
	mov	rsi, rcx
	mov	dword ptr [rbp - 0x2e8], eax
	call	hash_delete
	mov	qword ptr [rbp - 0x2f0], rax
.label_1363:
	mov	eax, dword ptr [rbp - 0x1dc]
	mov	rcx, qword ptr [rbp - 0x120]
	mov	dword ptr [rcx + 0x44], eax
	cmp	dword ptr [rbp - 0x1dc], -1
	jne	.label_1393
	jmp	.label_1338
.label_1361:
	mov	rax, qword ptr [rbp - 0x1c0]
	and	rax, 2
	cmp	rax, 0
	je	.label_1417
	call	die_pipe
.label_1414:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 1
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x40], rax
	mov	qword ptr [rbp - 0x70], 0
.label_1404:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_1394
	mov	rax, qword ptr [rbp - 0x70]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x10]
	test	byte ptr [rax + 0x34], 1
	jne	.label_1398
	cmp	dword ptr [dword ptr [follow_mode]],  1
	jne	.label_1332
	xor	esi, esi
	mov	rax, qword ptr [rbp - 0x70]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	recheck
	jmp	.label_1341
.label_1394:
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 0x11
	mov	qword ptr [rbp - 0x48], rax
	mov	rdi, qword ptr [rbp - 0x48]
	call	xmalloc
	mov	qword ptr [rbp - 0x50], rax
.label_1338:
	cmp	dword ptr [dword ptr [follow_mode]],  1
	jne	.label_1415
	test	byte ptr [byte ptr [reopen_inaccessible_files]],  1
	jne	.label_1415
	mov	rdi, qword ptr [rbp - 0x30]
	call	hash_get_n_entries
	cmp	rax, 0
	jne	.label_1415
	movabs	rdi, OFFSET FLAT:label_1380
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 1], 0
	jmp	.label_1342
.label_1334:
	jmp	.label_1360
.label_1360:
	cmp	dword ptr [dword ptr [follow_mode]],  1
	jne	.label_1421
	xor	esi, esi
	mov	rdi, qword ptr [rbp - 0x120]
	call	recheck
.label_1421:
	jmp	.label_1358
.label_1333:
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x70]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x10]
	mov	rsi, rax
	call	hash_insert
	cmp	rax, 0
	jne	.label_1339
	call	xalloc_die
.label_1422:
	mov	dword ptr [rbp - 0x64], 2
	cmp	dword ptr [dword ptr [follow_mode]],  1
	jne	.label_1423
	mov	eax, dword ptr [rbp - 0x64]
	or	eax, 0xc04
	mov	dword ptr [rbp - 0x64], eax
.label_1423:
	mov	qword ptr [rbp - 0x70], 0
.label_1348:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_1353
	mov	rax, qword ptr [rbp - 0x70]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x10]
	test	byte ptr [rax + 0x34], 1
	jne	.label_1359
	mov	rax, qword ptr [rbp - 0x70]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	call	strlen
	mov	qword ptr [rbp - 0x78], rax
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x78]
	jae	.label_1365
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x48], rax
.label_1365:
	mov	rax, qword ptr [rbp - 0x70]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax + 0x44], 0xffffffff
	cmp	dword ptr [dword ptr [follow_mode]],  1
	jne	.label_1370
	mov	rax, qword ptr [rbp - 0x70]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	call	dir_len
	mov	qword ptr [rbp - 0x80], rax
	mov	rax, qword ptr [rbp - 0x80]
	mov	rdi, qword ptr [rbp - 0x70]
	imul	rdi, rdi, 0x60
	add	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi]
	mov	cl, byte ptr [rdi + rax]
	mov	byte ptr [rbp - 0x81], cl
	mov	rax, qword ptr [rbp - 0x70]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	call	last_component
	mov	rdi, qword ptr [rbp - 0x70]
	imul	rdi, rdi, 0x60
	add	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi]
	sub	rax, rdi
	mov	rdi, qword ptr [rbp - 0x70]
	imul	rdi, rdi, 0x60
	add	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 0x50], rax
	mov	rax, qword ptr [rbp - 0x80]
	mov	rdi, qword ptr [rbp - 0x70]
	imul	rdi, rdi, 0x60
	add	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi]
	mov	byte ptr [rdi + rax], 0
	mov	edi, dword ptr [rbp - 8]
	cmp	qword ptr [rbp - 0x80], 0
	mov	dword ptr [rbp - 0x254], edi
	je	.label_1387
	mov	rax, qword ptr [rbp - 0x70]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x260], rax
	jmp	.label_1407
.label_1391:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x2c0], rcx
	jmp	.label_1400
.label_1400:
	mov	rax, qword ptr [rbp - 0x2c0]
	lea	rsi, [rbp - 0x1c0]
	xor	ecx, ecx
	mov	edx, ecx
	mov	edi, dword ptr [rbp - 0x2b8]
	mov	qword ptr [rbp - 0x2c8], rdx
	mov	rcx, qword ptr [rbp - 0x2c8]
	mov	r8, rax
	call	select
	mov	dword ptr [rbp - 0x1cc], eax
	cmp	dword ptr [rbp - 0x1cc], 0
	jne	.label_1418
	jmp	.label_1388
	.section	.text
	.align	16
	#Procedure 0x40e9e0

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
.label_1426:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx], 0
	mov	byte ptr [rbp - 0x21], cl
	je	.label_1425
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax]
	call	strcmp
	cmp	eax, 0
	sete	cl
	xor	cl, 0xff
	mov	byte ptr [rbp - 0x21], cl
.label_1425:
	mov	al, byte ptr [rbp - 0x21]
	test	al, 1
	jne	.label_1432
	jmp	.label_1435
.label_1432:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1426
.label_1435:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 8], 0
	je	.label_1427
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
.label_1427:
	movabs	rdi, OFFSET FLAT:label_1431
	call	gettext
	movabs	rsi, OFFSET FLAT:label_586
	movabs	rdx, OFFSET FLAT:label_587
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
	je	.label_1428
	movabs	rsi, OFFSET FLAT:label_1434
	mov	eax, 3
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x20]
	call	strncmp
	cmp	eax, 0
	je	.label_1428
	movabs	rdi, OFFSET FLAT:label_1429
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x2c], eax
.label_1428:
	movabs	rdi, OFFSET FLAT:label_1424
	call	gettext
	movabs	rsi, OFFSET FLAT:label_587
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_1430
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	movabs	rdx, OFFSET FLAT:label_22
	movabs	rsi, OFFSET FLAT:label_1433
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
	#Procedure 0x40eb79
	.globl sub_40eb79
	.type sub_40eb79, @function
sub_40eb79:

	nop	dword ptr [rax]
.label_1482:
	mov	byte ptr [byte ptr [line_end]],  0
	jmp	.label_1436
.label_1461:
	cmp	dword ptr [dword ptr [pid]],  0
	je	.label_1479
	xor	esi, esi
	mov	edi,  dword ptr [dword ptr [pid]]
	call	kill
	cmp	eax, 0
	je	.label_1479
	call	__errno_location
	cmp	dword ptr [rax], 0x26
	jne	.label_1479
	movabs	rdi, OFFSET FLAT:label_1492
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	dword ptr [dword ptr [pid]],  0
.label_1479:
	jmp	.label_1473
.label_1473:
	add	rsp, 0xd0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ebf8
	.globl sub_40ebf8
	.type sub_40ebf8, @function
sub_40ebf8:

	nop	dword ptr [rax]
.label_1436:
	jmp	.label_1504
.label_1498:
	xor	edi, edi
	call	usage
.label_1483:
	cmp	dword ptr [dword ptr [follow_mode]],  2
	jne	.label_1439
	movabs	rdi, OFFSET FLAT:label_1443
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
.label_1439:
	jmp	.label_1457
.label_1457:
	jmp	.label_1456
.label_1456:
	cmp	dword ptr [dword ptr [pid]],  0
	je	.label_1461
	test	byte ptr [byte ptr [forever]],  1
	jne	.label_1461
	movabs	rdi, OFFSET FLAT:label_1466
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	jmp	.label_1473
.label_1491:
	mov	rax, qword ptr [rbp - 0x20]
	mov	dword ptr [rax], 1
	jmp	.label_1436
.label_1488:
	test	byte ptr [byte ptr [reopen_inaccessible_files]],  1
	je	.label_1456
	test	byte ptr [byte ptr [forever]],  1
	jne	.label_1483
	movabs	rdi, OFFSET FLAT:label_1485
	mov	byte ptr [byte ptr [reopen_inaccessible_files]],  0
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	jmp	.label_1457
.label_1496:
	movabs	rdi, OFFSET FLAT:label_1490
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0xa0], rax
	call	gettext
	xor	ecx, ecx
	mov	esi, ecx
	mov	ecx, 0x7fffffff
	mov	edx, ecx
	movabs	rcx, OFFSET FLAT:label_22
	xor	r9d, r9d
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	r8, rax
	call	xdectoumax
	mov	r9d, eax
	mov	dword ptr [dword ptr [pid]],  r9d
	jmp	.label_1436
.label_1465:
	mov	rax, qword ptr [rbp - 0x20]
	mov	dword ptr [rax], 2
	jmp	.label_1436
.label_1454:
	movabs	rdi, OFFSET FLAT:label_1467
	movabs	rdx, OFFSET FLAT:follow_mode_string
	movabs	rax, OFFSET FLAT:follow_mode_map
	mov	ecx, 4
	mov	r8d, ecx
	mov	rsi,  qword ptr [word ptr [optarg]]
	mov	r9,  qword ptr [word ptr [argmatch_die]]
	mov	rcx, rax
	call	__xargmatch_internal
	mov	r10d,  dword ptr [dword ptr [+ (rax * 4) + follow_mode_map]]
	mov	dword ptr [dword ptr [follow_mode]],  r10d
.label_1460:
	jmp	.label_1436
.label_1503:
	movabs	rdi, OFFSET FLAT:label_1462
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	ecx, dword ptr [rbp - 0x2c]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_1459:
	movabs	rdi, OFFSET FLAT:label_1486
	call	gettext
	mov	qword ptr [rbp - 0x90], rax
.label_1468:
	mov	rax, qword ptr [rbp - 0x90]
	xor	ecx, ecx
	mov	esi, ecx
	mov	rdx, -1
	movabs	rcx, OFFSET FLAT:label_1493
	xor	r9d, r9d
	mov	rdi, qword ptr [rbp - 0x88]
	mov	r8, rax
	call	xdectoumax
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx], rax
	jmp	.label_1436
.label_1501:
	mov	byte ptr [byte ptr [presume_input_pipe]],  1
	jmp	.label_1436
.label_1477:
	mov	rax,  qword ptr [word ptr [optarg]]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2d
	jne	.label_1441
	mov	rax,  qword ptr [word ptr [optarg]]
	add	rax, 1
	mov	qword ptr [word ptr [optarg]],  rax
.label_1441:
	jmp	.label_1455
.label_1455:
	mov	rdi,  qword ptr [word ptr [optarg]]
	test	byte ptr [byte ptr [count_lines]],  1
	mov	qword ptr [rbp - 0x88], rdi
	je	.label_1459
	movabs	rdi, OFFSET FLAT:label_1464
	call	gettext
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_1468
	.section	.text
	.align	16
	#Procedure 0x40ee72

	.globl parse_options
	.type parse_options, @function
parse_options:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xd0
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
.label_1504:
	movabs	rdx, OFFSET FLAT:label_1480
	movabs	rcx, OFFSET FLAT:long_options
	xor	eax, eax
	mov	r8d, eax
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	call	getopt_long
	mov	dword ptr [rbp - 0x2c], eax
	cmp	eax, -1
	je	.label_1488
	mov	eax, dword ptr [rbp - 0x2c]
	mov	ecx, eax
	sub	ecx, 0xffffff7d
	mov	dword ptr [rbp - 0x3c], eax
	mov	dword ptr [rbp - 0x40], ecx
	je	.label_1478
	jmp	.label_1497
.label_1497:
	mov	eax, dword ptr [rbp - 0x3c]
	sub	eax, 0xffffff7e
	mov	dword ptr [rbp - 0x44], eax
	je	.label_1498
	jmp	.label_1502
.label_1502:
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, -0x30
	sub	eax, 0xa
	mov	dword ptr [rbp - 0x48], eax
	jb	.label_1503
	jmp	.label_1438
.label_1438:
	mov	eax, dword ptr [rbp - 0x3c]
	sub	eax, 0x46
	mov	dword ptr [rbp - 0x4c], eax
	je	.label_1440
	jmp	.label_1450
.label_1450:
	mov	eax, dword ptr [rbp - 0x3c]
	sub	eax, 0x63
	mov	dword ptr [rbp - 0x50], eax
	je	.label_1451
	jmp	.label_1453
.label_1453:
	mov	eax, dword ptr [rbp - 0x3c]
	sub	eax, 0x66
	mov	dword ptr [rbp - 0x54], eax
	je	.label_1437
	jmp	.label_1458
.label_1458:
	mov	eax, dword ptr [rbp - 0x3c]
	sub	eax, 0x6e
	mov	dword ptr [rbp - 0x58], eax
	je	.label_1451
	jmp	.label_1463
.label_1463:
	mov	eax, dword ptr [rbp - 0x3c]
	sub	eax, 0x71
	mov	dword ptr [rbp - 0x5c], eax
	je	.label_1465
	jmp	.label_1469
.label_1469:
	mov	eax, dword ptr [rbp - 0x3c]
	sub	eax, 0x73
	mov	dword ptr [rbp - 0x60], eax
	je	.label_1471
	jmp	.label_1475
.label_1475:
	mov	eax, dword ptr [rbp - 0x3c]
	sub	eax, 0x76
	mov	dword ptr [rbp - 0x64], eax
	je	.label_1491
	jmp	.label_1481
.label_1481:
	mov	eax, dword ptr [rbp - 0x3c]
	sub	eax, 0x7a
	mov	dword ptr [rbp - 0x68], eax
	je	.label_1482
	jmp	.label_1484
.label_1484:
	mov	eax, dword ptr [rbp - 0x3c]
	sub	eax, 0x80
	mov	dword ptr [rbp - 0x6c], eax
	je	.label_1505
	jmp	.label_1489
.label_1489:
	mov	eax, dword ptr [rbp - 0x3c]
	sub	eax, 0x81
	mov	dword ptr [rbp - 0x70], eax
	je	.label_1476
	jmp	.label_1500
.label_1500:
	mov	eax, dword ptr [rbp - 0x3c]
	sub	eax, 0x82
	mov	dword ptr [rbp - 0x74], eax
	je	.label_1496
	jmp	.label_1470
.label_1470:
	mov	eax, dword ptr [rbp - 0x3c]
	sub	eax, 0x83
	mov	dword ptr [rbp - 0x78], eax
	je	.label_1501
	jmp	.label_1442
.label_1442:
	mov	eax, dword ptr [rbp - 0x3c]
	sub	eax, 0x84
	mov	dword ptr [rbp - 0x7c], eax
	je	.label_1437
	jmp	.label_1472
.label_1472:
	mov	eax, dword ptr [rbp - 0x3c]
	sub	eax, 0x85
	mov	dword ptr [rbp - 0x80], eax
	je	.label_1449
	jmp	.label_1452
.label_1437:
	mov	byte ptr [byte ptr [forever]],  1
	cmp	qword ptr [word ptr [optarg]],  0
	jne	.label_1454
	mov	dword ptr [dword ptr [follow_mode]],  2
	jmp	.label_1460
.label_1505:
	mov	byte ptr [byte ptr [reopen_inaccessible_files]],  1
	jmp	.label_1436
.label_1440:
	mov	byte ptr [byte ptr [forever]],  1
	mov	dword ptr [dword ptr [follow_mode]],  1
	mov	byte ptr [byte ptr [reopen_inaccessible_files]],  1
	jmp	.label_1436
.label_1451:
	cmp	dword ptr [rbp - 0x2c], 0x6e
	sete	al
	and	al, 1
	mov	byte ptr [byte ptr [count_lines]],  al
	mov	rcx,  qword ptr [word ptr [optarg]]
	movsx	edx, byte ptr [rcx]
	cmp	edx, 0x2b
	jne	.label_1477
	mov	byte ptr [byte ptr [from_start]],  1
	jmp	.label_1455
.label_1476:
	movabs	rdi, OFFSET FLAT:label_1487
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x98], rax
	call	gettext
	xor	ecx, ecx
	mov	esi, ecx
	mov	rdx, -1
	movabs	rcx, OFFSET FLAT:label_22
	xor	r9d, r9d
	mov	rdi, qword ptr [rbp - 0x98]
	mov	r8, rax
	call	xdectoumax
	mov	qword ptr [word ptr [max_n_unchanged_stats_between_opens]],  rax
	jmp	.label_1436
.label_1495:
	movsd	xmm0, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x28]
	movsd	qword ptr [rax], xmm0
	jmp	.label_1436
.label_1478:
	movabs	rsi, OFFSET FLAT:label_1444
	movabs	rdx, OFFSET FLAT:label_586
	movabs	r8, OFFSET FLAT:label_1445
	movabs	r9, OFFSET FLAT:label_1446
	movabs	rax, OFFSET FLAT:label_1447
	movabs	rcx, OFFSET FLAT:label_1448
	xor	edi, edi
	mov	r10d, edi
	mov	rdi,  qword ptr [word ptr [stdout]]
	mov	r11,  qword ptr [word ptr [Version]]
	mov	qword ptr [rbp - 0xb0], rcx
	mov	rcx, r11
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rbp - 0xb0]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], 0
	mov	al, 0
	mov	qword ptr [rbp - 0xb8], r10
	call	version_etc
	xor	edi, edi
	call	exit
.label_1471:
	xor	eax, eax
	mov	esi, eax
	lea	rdx, [rbp - 0x38]
	movabs	rcx, OFFSET FLAT:cl_strtod
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	xstrtod
	test	al, 1
	jne	.label_1474
	jmp	.label_1494
.label_1474:
	xorps	xmm0, xmm0
	movsd	xmm1, qword ptr [rbp - 0x38]
	ucomisd	xmm1, xmm0
	jae	.label_1495
.label_1494:
	movabs	rdi, OFFSET FLAT:label_1499
	call	gettext
	mov	rdi,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0xa8], rax
	call	quote
	mov	edi, 1
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0xa8]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_1452:
	mov	edi, 1
	call	usage
.label_1449:
	mov	byte ptr [byte ptr [disable_inotify]],  1
	jmp	.label_1436
.label_1507:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f23a
	.globl sub_40f23a
	.type sub_40f23a, @function
sub_40f23a:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40f23e

	.globl next_prime
	.type next_prime, @function
next_prime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0xa
	jae	.label_1509
	mov	qword ptr [rbp - 8], 0xa
.label_1509:
	mov	rax, qword ptr [rbp - 8]
	or	rax, 1
	mov	qword ptr [rbp - 8], rax
.label_1508:
	xor	eax, eax
	mov	cl, al
	mov	rdx, -1
	cmp	rdx, qword ptr [rbp - 8]
	mov	byte ptr [rbp - 9], cl
	je	.label_1506
	mov	rdi, qword ptr [rbp - 8]
	call	is_prime
	xor	al, 0xff
	mov	byte ptr [rbp - 9], al
.label_1506:
	mov	al, byte ptr [rbp - 9]
	test	al, 1
	jne	.label_1510
	jmp	.label_1507
.label_1510:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 2
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1508
.label_1512:
	mov	byte ptr [rbp - 1], 0
.label_1513:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f2be
	.globl sub_40f2be
	.type sub_40f2be, @function
sub_40f2be:

	nop	
	.section	.text
	.align	16
	#Procedure 0x40f2c0
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
	jb	.label_1511
	jmp	.label_1514
.label_1514:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x14], eax
	ja	.label_1512
	jmp	.label_1511
.label_1511:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1513
	.section	.text
	.align	16
	#Procedure 0x40f300

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
	jne	.label_1515
	movabs	rax, OFFSET FLAT:raw_hasher
	mov	qword ptr [rbp - 0x20], rax
.label_1515:
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_1522
	movabs	rax, OFFSET FLAT:raw_comparator
	mov	qword ptr [rbp - 0x28], rax
.label_1522:
	mov	eax, 0x50
	mov	edi, eax
	call	malloc
	mov	qword ptr [rbp - 0x38], rax
	cmp	qword ptr [rbp - 0x38], 0
	jne	.label_1518
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1520
.label_1518:
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_1523
	movabs	rax, OFFSET FLAT:default_tuning
	mov	qword ptr [rbp - 0x18], rax
.label_1523:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x28], rax
	mov	rdi, qword ptr [rbp - 0x38]
	call	check_tuning
	test	al, 1
	jne	.label_1521
	jmp	.label_1519
.label_1516:
	mov	eax, 0x10
	mov	esi, eax
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rcx + 0x10]
	call	calloc
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax], 0
	jne	.label_1517
	jmp	.label_1519
.label_1517:
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
	jmp	.label_1520
.label_1519:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdi, rax
	call	free
	mov	qword ptr [rbp - 8], 0
.label_1520:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f470
	.globl sub_40f470
	.type sub_40f470, @function
sub_40f470:

	nop	dword ptr [rax]
.label_1521:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	compute_bucket_size
	mov	rsi, qword ptr [rbp - 0x38]
	mov	qword ptr [rsi + 0x10], rax
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax + 0x10], 0
	jne	.label_1516
	jmp	.label_1519
.label_1526:
	mov	qword ptr [rbp - 0x40], 0
.label_1532:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x38]
	add	rcx, rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 0x2000]
	sub	rax, qword ptr [rbp - 0x40]
	mov	rdi, rcx
	mov	rsi, rax
	call	xwrite_stdout
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 0x2008]
	mov	qword ptr [rbp - 0x38], rax
.label_1524:
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_1531
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rax + 0x2000]
	call	xwrite_stdout
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 0x2008]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1524
.label_1539:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdi, rax
	call	free
	cmp	qword ptr [rbp - 0x58], -1
	jne	.label_1537
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_312
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x5c], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x68], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x5c]
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x49], 0
	jmp	.label_1530
.label_1528:
	mov	al, byte ptr [rbp - 0x49]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f57b
	.globl sub_40f57b
	.type sub_40f57b, @function
sub_40f57b:

	nop	word ptr cs:[rax + rax]
.label_1537:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x38], rax
.label_1527:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x38]
	sub	rax, qword ptr [rcx + 0x2000]
	cmp	rax, qword ptr [rbp - 0x18]
	jbe	.label_1529
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 0x2000]
	mov	rcx, qword ptr [rbp - 0x48]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x48], rcx
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 0x2008]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1527
.label_1540:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 0x2008], rax
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	sub	rax, qword ptr [rcx + 0x2000]
	cmp	rax, qword ptr [rbp - 0x18]
	jbe	.label_1536
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x2000]
	mov	rcx, qword ptr [rbp - 0x48]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x48], rcx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x2008]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1533
.label_1531:
	jmp	.label_1530
.label_1530:
	jmp	.label_1525
.label_1525:
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_1528
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x2008]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1525
.label_1535:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rcx]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x2000], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rax + 0x2008], 0
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 0x2000]
	add	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 0x2000]
	mov	rcx, qword ptr [rbp - 0x30]
	add	rax, qword ptr [rcx + 0x2000]
	cmp	rax, 0x2000
	jae	.label_1540
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 0x2000]
	mov	rcx, qword ptr [rbp - 0x30]
	add	rcx, rax
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rax + 0x2000]
	mov	rdi, rcx
	call	memcpy
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 0x2000]
	mov	rcx, qword ptr [rbp - 0x30]
	add	rax, qword ptr [rcx + 0x2000]
	mov	qword ptr [rcx + 0x2000], rax
	jmp	.label_1538
.label_1529:
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x18]
	jbe	.label_1526
	mov	rax, qword ptr [rbp - 0x48]
	sub	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_1532
	.section	.text
	.align	16
	#Procedure 0x40f73b

	.globl pipe_bytes
	.type pipe_bytes, @function
pipe_bytes:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	eax, 0x2010
	mov	r8d, eax
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x48], 0
	mov	byte ptr [rbp - 0x49], 1
	mov	rdi, r8
	call	xmalloc
	mov	esi, 0x2010
	mov	edi, esi
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rax + 0x2000], 0
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rax + 0x2008], 0
	call	xmalloc
	mov	qword ptr [rbp - 0x38], rax
.label_1534:
	mov	eax, 0x2000
	mov	edx, eax
	mov	edi, dword ptr [rbp - 0xc]
	mov	rsi, qword ptr [rbp - 0x38]
	call	safe_read
	mov	qword ptr [rbp - 0x58], rax
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_1541
	cmp	qword ptr [rbp - 0x58], -1
	jne	.label_1535
.label_1541:
	jmp	.label_1539
.label_1536:
	mov	eax, 0x2010
	mov	edi, eax
	call	xmalloc
	mov	qword ptr [rbp - 0x38], rax
.label_1533:
	jmp	.label_1538
.label_1538:
	jmp	.label_1534
.label_1550:
	lea	rdi, [rbp - 0xe0]
	mov	rax, qword ptr [rbp - 0x38]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x140], rax
	call	get_stat_mtime
	mov	qword ptr [rbp - 0x110], rax
	mov	qword ptr [rbp - 0x108], rdx
	mov	rax, qword ptr [rbp - 0x110]
	mov	rdx, qword ptr [rbp - 0x140]
	mov	qword ptr [rdx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x108]
	mov	qword ptr [rdx + 0x18], rax
	mov	ecx, dword ptr [rbp - 0xc8]
	mov	rax, qword ptr [rbp - 0x38]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x30], ecx
	mov	rax, qword ptr [rbp - 0x38]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x58], 0
	mov	ecx, dword ptr [rbp - 0x4c]
	and	ecx, 0xf000
	cmp	ecx, 0x8000
	jne	.label_1544
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rcx, qword ptr [rbp - 0x38]
	imul	rcx, rcx, 0x60
	add	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_1544
	movabs	rdi, OFFSET FLAT:label_555
	call	gettext
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x148], rax
	call	quotearg_n_style_colon
	xor	esi, esi
	mov	edi, esi
	mov	rdx, qword ptr [rbp - 0x148]
	mov	rcx, rax
	mov	al, 0
	call	error
	xor	esi, esi
	xor	edx, edx
	mov	edi, dword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x48]
	call	xlseek
	mov	rcx, qword ptr [rbp - 0x38]
	imul	rcx, rcx, 0x60
	add	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 8], 0
	mov	qword ptr [rbp - 0x150], rax
.label_1544:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x28]
	je	.label_1576
	test	byte ptr [byte ptr [print_headers]],  1
	je	.label_1543
	mov	rdi, qword ptr [rbp - 0x48]
	call	write_header
.label_1543:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x28], rax
.label_1576:
	jmp	.label_1549
.label_1549:
	mov	rax, qword ptr [rbp - 0x38]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 0x40], 0
	je	.label_1551
	mov	qword ptr [rbp - 0x118], -2
	jmp	.label_1545
.label_1564:
	call	check_output_alive
	test	byte ptr [rbp - 0x39], 1
	jne	.label_1555
	test	byte ptr [rbp - 0x29], 1
	je	.label_1557
	jmp	.label_1558
.label_1565:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	any_live_files
	test	al, 1
	jne	.label_1560
	movabs	rdi, OFFSET FLAT:label_1380
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	jmp	.label_1558
.label_1568:
	mov	rax, qword ptr [rbp - 0x38]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 0x38], 0
	jge	.label_1567
	mov	rax, qword ptr [rbp - 0x38]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 8]
	mov	cl, byte ptr [rbp - 0x19]
	and	cl, 1
	mov	rdi, rax
	movzx	esi, cl
	call	recheck
	jmp	.label_1552
.label_1547:
	jmp	.label_1555
.label_1555:
	jmp	.label_1573
	.section	.text
	.align	16
	#Procedure 0x40f9ec

	.globl tail_forever
	.type tail_forever, @function
tail_forever:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x160
	xor	eax, eax
	mov	cl, al
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	movsd	qword ptr [rbp - 0x18], xmm0
	cmp	dword ptr [dword ptr [pid]],  0
	mov	byte ptr [rbp - 0x119], cl
	jne	.label_1548
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [dword ptr [follow_mode]],  2
	mov	byte ptr [rbp - 0x119], cl
	jne	.label_1548
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x10], 1
	mov	byte ptr [rbp - 0x119], cl
	jne	.label_1548
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 8]
	cmp	dword ptr [rdx + 0x38], -1
	mov	byte ptr [rbp - 0x119], cl
	je	.label_1548
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x30]
	and	ecx, 0xf000
	cmp	ecx, 0x8000
	sete	dl
	xor	dl, 0xff
	mov	byte ptr [rbp - 0x119], dl
.label_1548:
	mov	al, byte ptr [rbp - 0x119]
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	byte ptr [rbp - 0x29], 0
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rcx, 1
	mov	qword ptr [rbp - 0x28], rcx
.label_1573:
	mov	byte ptr [rbp - 0x39], 0
	mov	qword ptr [rbp - 0x38], 0
.label_1562:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_1565
	mov	rax, qword ptr [rbp - 0x38]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 8]
	test	byte ptr [rax + 0x34], 1
	je	.label_1568
	jmp	.label_1552
.label_1557:
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [dword ptr [pid]],  0
	mov	byte ptr [rbp - 0x155], cl
	je	.label_1571
	xor	esi, esi
	mov	edi,  dword ptr [dword ptr [pid]]
	call	kill
	xor	esi, esi
	mov	cl, sil
	cmp	eax, 0
	mov	byte ptr [rbp - 0x155], cl
	je	.label_1571
	call	__errno_location
	cmp	dword ptr [rax], 1
	setne	cl
	mov	byte ptr [rbp - 0x155], cl
.label_1571:
	mov	al, byte ptr [rbp - 0x155]
	and	al, 1
	mov	byte ptr [rbp - 0x29], al
	test	byte ptr [rbp - 0x29], 1
	jne	.label_1547
	movsd	xmm0, qword ptr [rbp - 0x18]
	call	xnanosleep
	cmp	eax, 0
	je	.label_1547
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_1554
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x15c], esi
	call	gettext
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x15c]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_1558:
	add	rsp, 0x160
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40fb7d
	.globl sub_40fb7d
	.type sub_40fb7d, @function
sub_40fb7d:

	nop	word ptr cs:[rax + rax]
.label_1542:
	jmp	.label_1563
.label_1553:
	mov	rax, qword ptr [rbp - 0x38]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x30]
	cmp	ecx, dword ptr [rbp - 0xc8]
	jne	.label_1550
	mov	eax, dword ptr [rbp - 0xc8]
	and	eax, 0xf000
	cmp	eax, 0x8000
	jne	.label_1575
	mov	rax, qword ptr [rbp - 0x38]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 8]
	cmp	rax, qword ptr [rbp - 0xb0]
	jne	.label_1550
.label_1575:
	lea	rdi, [rbp - 0xe0]
	mov	rax, qword ptr [rbp - 0x38]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x138], rax
	call	get_stat_mtime
	mov	qword ptr [rbp - 0x100], rax
	mov	qword ptr [rbp - 0xf8], rdx
	mov	rax, qword ptr [rbp - 0x138]
	mov	rdi, qword ptr [rax + 0x10]
	mov	rsi, qword ptr [rax + 0x18]
	mov	rdx, qword ptr [rbp - 0x100]
	mov	rcx, qword ptr [rbp - 0xf8]
	call	timespec_cmp
	cmp	eax, 0
	jne	.label_1550
	mov	rax,  qword ptr [word ptr [max_n_unchanged_stats_between_opens]]
	mov	rcx, qword ptr [rbp - 0x38]
	imul	rcx, rcx, 0x60
	add	rcx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rcx + 0x58]
	mov	rsi, rdx
	add	rsi, 1
	mov	qword ptr [rcx + 0x58], rsi
	cmp	rax, rdx
	ja	.label_1556
	cmp	dword ptr [dword ptr [follow_mode]],  1
	jne	.label_1556
	mov	rax, qword ptr [rbp - 0x38]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x38]
	imul	rcx, rcx, 0x60
	add	rcx, qword ptr [rbp - 8]
	cmp	dword ptr [rcx + 0x40], 0
	setne	dl
	and	dl, 1
	movzx	esi, dl
	mov	rdi, rax
	call	recheck
	mov	rax, qword ptr [rbp - 0x38]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x58], 0
.label_1556:
	jmp	.label_1552
.label_1572:
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_1569
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x120], esi
	call	gettext
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x128], rax
	call	quotearg_n_style_colon
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x120]
	mov	rdx, qword ptr [rbp - 0x128]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_1566:
	mov	al, byte ptr [rbp - 0x19]
	and	al, 1
	movzx	ecx, al
	mov	rdx, qword ptr [rbp - 0x38]
	imul	rdx, rdx, 0x60
	add	rdx, qword ptr [rbp - 8]
	mov	dword ptr [rdx + 0x40], ecx
.label_1563:
	jmp	.label_1546
.label_1546:
	mov	rax, qword ptr [rbp - 0x38]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 0x40], 0
	jne	.label_1549
	lea	rsi, [rbp - 0xe0]
	mov	edi, dword ptr [rbp - 0x40]
	call	fstat
	cmp	eax, 0
	je	.label_1553
	mov	rax, qword ptr [rbp - 0x38]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x38], 0xffffffff
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x38]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x3c], ecx
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x48]
	mov	dword ptr [rbp - 0x12c], ecx
	call	quotearg_n_style_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_330
	mov	esi, dword ptr [rbp - 0x12c]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	edi, dword ptr [rbp - 0x40]
	call	close
	mov	dword ptr [rbp - 0x130], eax
	jmp	.label_1552
.label_1551:
	mov	eax, dword ptr [rbp - 0x4c]
	and	eax, 0xf000
	cmp	eax, 0x8000
	jne	.label_1570
	mov	rax, qword ptr [rbp - 0x38]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 8]
	test	byte ptr [rax + 0x35], 1
	je	.label_1570
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rcx, qword ptr [rbp - 0x38]
	imul	rcx, rcx, 0x60
	add	rcx, qword ptr [rbp - 8]
	sub	rax, qword ptr [rcx + 8]
	mov	qword ptr [rbp - 0x118], rax
	jmp	.label_1574
.label_1567:
	mov	rax, qword ptr [rbp - 0x38]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x38]
	mov	dword ptr [rbp - 0x40], ecx
	mov	rax, qword ptr [rbp - 0x38]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	pretty_name
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x38]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x30]
	mov	dword ptr [rbp - 0x4c], ecx
	mov	rax, qword ptr [rbp - 0x38]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x40]
	mov	dl, byte ptr [rbp - 0x19]
	and	dl, 1
	movzx	esi, dl
	cmp	ecx, esi
	je	.label_1546
	mov	esi, 3
	mov	edi, dword ptr [rbp - 0x40]
	mov	al, 0
	call	rpl_fcntl
	mov	esi, 0x800
	xor	edi, edi
	mov	dword ptr [rbp - 0xec], eax
	mov	eax, dword ptr [rbp - 0xec]
	mov	cl, byte ptr [rbp - 0x19]
	test	cl, 1
	cmovne	esi, edi
	or	eax, esi
	mov	dword ptr [rbp - 0xf0], eax
	cmp	dword ptr [rbp - 0xec], 0
	jl	.label_1559
	mov	eax, dword ptr [rbp - 0xf0]
	cmp	eax, dword ptr [rbp - 0xec]
	je	.label_1566
	mov	esi, 4
	mov	edi, dword ptr [rbp - 0x40]
	mov	edx, dword ptr [rbp - 0xf0]
	mov	al, 0
	call	rpl_fcntl
	cmp	eax, -1
	jne	.label_1566
.label_1559:
	mov	rax, qword ptr [rbp - 0x38]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x30]
	and	ecx, 0xf000
	cmp	ecx, 0x8000
	jne	.label_1572
	call	__errno_location
	cmp	dword ptr [rax], 1
	jne	.label_1572
	jmp	.label_1542
.label_1570:
	mov	qword ptr [rbp - 0x118], -1
.label_1574:
	jmp	.label_1545
.label_1545:
	xor	edi, edi
	mov	rsi, qword ptr [rbp - 0x48]
	mov	edx, dword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x118]
	call	dump_remainder
	mov	qword ptr [rbp - 0xe8], rax
	cmp	qword ptr [rbp - 0xe8], 0
	setne	r8b
	and	r8b, 1
	movzx	edx, r8b
	mov	r8b, byte ptr [rbp - 0x39]
	and	r8b, 1
	movzx	edi, r8b
	or	edi, edx
	cmp	edi, 0
	setne	r8b
	and	r8b, 1
	mov	byte ptr [rbp - 0x39], r8b
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rcx, qword ptr [rbp - 0x38]
	imul	rcx, rcx, 0x60
	add	rcx, qword ptr [rbp - 8]
	add	rax, qword ptr [rcx + 8]
	mov	qword ptr [rcx + 8], rax
.label_1552:
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1562
.label_1560:
	test	byte ptr [rbp - 0x39], 1
	je	.label_1561
	test	byte ptr [rbp - 0x19], 1
	je	.label_1564
.label_1561:
	mov	rdi,  qword ptr [word ptr [stdout]]
	call	fflush_unlocked
	cmp	eax, 0
	je	.label_1564
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_452
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x154], esi
	call	gettext
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x154]
	mov	rdx, rax
	mov	al, 0
	call	error
	.section	.text
	.align	16
	#Procedure 0x40fff0

	.globl any_non_regular_fifo
	.type any_non_regular_fifo, @function
any_non_regular_fifo:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], 0
.label_1704:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_1578
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x20]
	imul	rcx, rcx, 0x60
	add	rcx, qword ptr [rbp - 0x10]
	cmp	eax, dword ptr [rcx + 0x38]
	jg	.label_1577
	mov	rax, qword ptr [rbp - 0x20]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x30]
	and	ecx, 0xf000
	cmp	ecx, 0x8000
	je	.label_1577
	mov	rax, qword ptr [rbp - 0x20]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x30]
	and	ecx, 0xf000
	cmp	ecx, 0x1000
	je	.label_1577
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1580
.label_1578:
	mov	byte ptr [rbp - 1], 0
.label_1580:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410082
	.globl sub_410082
	.type sub_410082, @function
sub_410082:

	nop	dword ptr [rax + rax]
.label_1577:
	jmp	.label_1579
.label_1579:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_1704
	.section	.text
	.align	16
	#Procedure 0x4100a0

	.globl usage
	.type usage, @function
usage:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0
	je	.label_1589
	jmp	.label_1595
.label_1595:
	movabs	rdi, OFFSET FLAT:label_1597
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x10], rax
	call	gettext
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_1591
.label_1589:
	movabs	rdi, OFFSET FLAT:label_1594
	call	gettext
	mov	rsi,  qword ptr [word ptr [program_name]]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_1587
	mov	dword ptr [rbp - 0x18], eax
	call	gettext
	mov	esi, 0xa
	mov	rdi, rax
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x1c], eax
	call	emit_stdin_note
	call	emit_mandatory_arg_note
	movabs	rdi, OFFSET FLAT:label_1584
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_1590
	mov	dword ptr [rbp - 0x20], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_1582
	mov	dword ptr [rbp - 0x24], eax
	call	gettext
	mov	esi, 0xa
	mov	edx, 5
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_1596
	mov	dword ptr [rbp - 0x28], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_1588
	mov	dword ptr [rbp - 0x2c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_1592
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_1585
	mov	dword ptr [rbp - 0x34], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_1593
	mov	dword ptr [rbp - 0x38], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_1586
	mov	dword ptr [rbp - 0x3c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_1583
	mov	dword ptr [rbp - 0x40], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_1444
	mov	dword ptr [rbp - 0x44], eax
	call	emit_ancillary_info
.label_1591:
	mov	edi, dword ptr [rbp - 4]
	call	exit
	.section	.text
	.align	16
	#Procedure 0x4102b1
	.globl sub_4102b1
	.type sub_4102b1, @function
sub_4102b1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4102c0
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
	#Procedure 0x4102f6
	.globl sub_4102f6
	.type sub_4102f6, @function
sub_4102f6:

	nop	word ptr cs:[rax + rax]
.label_1598:
	mov	rax, qword ptr [rbp - 8]
	imul	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	xmalloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410317
	.globl sub_410317
	.type sub_410317, @function
sub_410317:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x41031f

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
	jae	.label_1598
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x410350

	.globl write_header
	.type write_header, @function
write_header:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rax, OFFSET FLAT:label_1599
	movabs	rcx, OFFSET FLAT:label_1600
	movabs	rdx, OFFSET FLAT:label_22
	mov	qword ptr [rbp - 8], rdi
	mov	sil,  byte ptr [byte ptr [write_header.first_file]]
	test	sil, 1
	cmovne	rcx, rdx
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	rsi, rcx
	mov	al, 0
	call	printf
	mov	byte ptr [byte ptr [write_header.first_file]],  0
	mov	dword ptr [rbp - 0xc], eax
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4103ac
	.globl sub_4103ac
	.type sub_4103ac, @function
sub_4103ac:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4103b0

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
	#Procedure 0x4103db
	.globl sub_4103db
	.type sub_4103db, @function
sub_4103db:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4103e0

	.globl xdectoumax
	.type xdectoumax, @function
xdectoumax:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	eax, 0xa
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	dword ptr [rbp - 0x2c], r9d
	mov	rdi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	r8, qword ptr [rbp - 0x20]
	mov	r9, qword ptr [rbp - 0x28]
	mov	r10d, dword ptr [rbp - 0x2c]
	mov	esi, eax
	mov	dword ptr [rsp], r10d
	call	xnumtoumax
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41042e
	.globl sub_41042e
	.type sub_41042e, @function
sub_41042e:

	nop	
.label_1609:
	test	byte ptr [byte ptr [from_start]],  1
	je	.label_1606
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x14]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	call	start_lines
	mov	dword ptr [rbp - 0xbc], eax
	cmp	dword ptr [rbp - 0xbc], 0
	je	.label_1608
	cmp	dword ptr [rbp - 0xbc], 0
	setl	al
	and	al, 1
	mov	byte ptr [rbp - 1], al
	jmp	.label_1604
	.section	.text
	.align	16
	#Procedure 0x410479

	.globl tail_lines
	.type tail_lines, @function
tail_lines:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xf0
	lea	rax, [rbp - 0xb8]
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsi, rax
	call	fstat
	cmp	eax, 0
	je	.label_1609
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_607
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xd4], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0xe0], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0xd4]
	mov	rdx, qword ptr [rbp - 0xe0]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 1], 0
	jmp	.label_1604
.label_1606:
	mov	qword ptr [rbp - 0xc8], -1
	test	byte ptr [byte ptr [presume_input_pipe]],  1
	jne	.label_1601
	mov	eax, dword ptr [rbp - 0xa0]
	and	eax, 0xf000
	cmp	eax, 0x8000
	jne	.label_1601
	xor	eax, eax
	mov	esi, eax
	mov	edx, 1
	mov	edi, dword ptr [rbp - 0x14]
	call	lseek
	mov	qword ptr [rbp - 0xc8], rax
	cmp	rax, -1
	je	.label_1601
	xor	eax, eax
	mov	esi, eax
	mov	edx, 2
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	edi, dword ptr [rbp - 0x14]
	mov	qword ptr [rbp - 0xe8], rcx
	call	lseek
	mov	qword ptr [rbp - 0xd0], rax
	mov	rcx, qword ptr [rbp - 0xe8]
	cmp	rcx, rax
	jge	.label_1601
	mov	rax, qword ptr [rbp - 0xd0]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	cmp	qword ptr [rbp - 0xd0], 0
	je	.label_1603
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x14]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	r8, qword ptr [rbp - 0xd0]
	mov	r9, qword ptr [rbp - 0x28]
	call	file_lines
	test	al, 1
	jne	.label_1603
	mov	byte ptr [rbp - 1], 0
	jmp	.label_1604
.label_1601:
	cmp	qword ptr [rbp - 0xc8], -1
	je	.label_1605
	xor	edx, edx
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsi, qword ptr [rbp - 0xc8]
	mov	rcx, qword ptr [rbp - 0x10]
	call	xlseek
	mov	qword ptr [rbp - 0xf0], rax
.label_1605:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x14]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	call	pipe_lines
	and	al, 1
	mov	byte ptr [rbp - 1], al
	jmp	.label_1604
.label_1608:
	xor	edi, edi
	mov	rcx, -1
	mov	rsi, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rbp - 0x14]
	call	dump_remainder
	mov	rcx, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rcx]
	mov	qword ptr [rcx], rax
	jmp	.label_1607
.label_1603:
	jmp	.label_1602
.label_1602:
	jmp	.label_1607
.label_1607:
	mov	byte ptr [rbp - 1], 1
.label_1604:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0xf0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410662
	.globl sub_410662
	.type sub_410662, @function
sub_410662:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410670

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
	#Procedure 0x4106e2
	.globl sub_4106e2
	.type sub_4106e2, @function
sub_4106e2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4106f0
	.globl timespectod
	.type timespectod, @function
timespectod:

	push	rbp
	mov	rbp, rsp
	movsd	xmm0,  qword ptr [word ptr [rip + label_33]]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 8], rsi
	cvtsi2sd	xmm1, qword ptr [rbp - 0x10]
	cvtsi2sd	xmm2, qword ptr [rbp - 8]
	divsd	xmm2, xmm0
	addsd	xmm1, xmm2
	movaps	xmm0, xmm1
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41071d
	.globl sub_41071d
	.type sub_41071d, @function
sub_41071d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x410720
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
.label_1612:
	xor	eax, eax
	mov	cl, al
	mov	eax, 1
	mov	edx, eax
	cmp	rdx, qword ptr [rbp - 0x10]
	mov	byte ptr [rbp - 0x19], cl
	jae	.label_1610
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x2f
	sete	sil
	mov	byte ptr [rbp - 0x19], sil
.label_1610:
	mov	al, byte ptr [rbp - 0x19]
	test	al, 1
	jne	.label_1611
	jmp	.label_1614
.label_1611:
	jmp	.label_1613
.label_1613:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, -1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1612
.label_1614:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4107a4
	.globl sub_4107a4
	.type sub_4107a4, @function
sub_4107a4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4107b0
	.globl get_stat_birthtime_ns
	.type get_stat_birthtime_ns, @function
get_stat_birthtime_ns:

	push	rbp
	mov	rbp, rsp
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4107bc
	.globl sub_4107bc
	.type sub_4107bc, @function
sub_4107bc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4107c0

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
	#Procedure 0x4107ec
	.globl sub_4107ec
	.type sub_4107ec, @function
sub_4107ec:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4107f0

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
	#Procedure 0x410822
	.globl sub_410822
	.type sub_410822, @function
sub_410822:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410830

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
	jae	.label_1615
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax], -1
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1616
.label_1615:
	movsxd	rax, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, qword ptr [rcx]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 0
.label_1616:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41088c
	.globl sub_41088c
	.type sub_41088c, @function
sub_41088c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x410890

	.globl any_symlinks
	.type any_symlinks, @function
any_symlinks:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xb0
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0xb0], 0
.label_1619:
	mov	rax, qword ptr [rbp - 0xb0]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_1621
	lea	rsi, [rbp - 0xa8]
	mov	rax, qword ptr [rbp - 0xb0]
	imul	rax, rax, 0x60
	add	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	call	lstat
	cmp	eax, 0
	jne	.label_1618
	mov	eax, dword ptr [rbp - 0x90]
	and	eax, 0xf000
	cmp	eax, 0xa000
	jne	.label_1618
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1620
.label_1621:
	mov	byte ptr [rbp - 1], 0
.label_1620:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0xb0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41091a
	.globl sub_41091a
	.type sub_41091a, @function
sub_41091a:

	nop	word ptr cs:[rax + rax]
.label_1618:
	jmp	.label_1617
.label_1617:
	mov	rax, qword ptr [rbp - 0xb0]
	add	rax, 1
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_1619
	.section	.text
	.align	16
	#Procedure 0x410940
	.globl get_stat_atime
	.type get_stat_atime, @function
get_stat_atime:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	movups	xmm0, xmmword ptr [rdi + 0x48]
	movaps	xmmword ptr [rbp - 0x10], xmm0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41095a
	.globl sub_41095a
	.type sub_41095a, @function
sub_41095a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410960

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
	#Procedure 0x410999
	.globl sub_410999
	.type sub_410999, @function
sub_410999:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4109a0
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
	jae	.label_1622
	call	xalloc_die
.label_1622:
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
	#Procedure 0x4109f0

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
	#Procedure 0x410a02
	.globl sub_410a02
	.type sub_410a02, @function
sub_410a02:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410a10
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_1623
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_1623:
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
	#Procedure 0x410a4d
	.globl sub_410a4d
	.type sub_410a4d, @function
sub_410a4d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x410a50

	.globl valid_file_spec
	.type valid_file_spec, @function
valid_file_spec:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	cmp	dword ptr [rdi + 0x38], -1
	sete	al
	and	al, 1
	movzx	ecx, al
	mov	rdi, qword ptr [rbp - 8]
	cmp	dword ptr [rdi + 0x3c], 0
	sete	al
	and	al, 1
	movzx	edx, al
	xor	ecx, edx
	cmp	ecx, 0
	setne	al
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410a87
	.globl sub_410a87
	.type sub_410a87, @function
sub_410a87:

	nop	word ptr [rax + rax]
.label_1751:
	movabs	rdi, OFFSET FLAT:label_1624
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
	jmp	.label_1625
.label_1756:
	movabs	rdi, OFFSET FLAT:label_1637
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
	jmp	.label_1625
.label_1752:
	movabs	rdi, OFFSET FLAT:label_1635
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
	jmp	.label_1625
.label_1755:
	movabs	rdi, OFFSET FLAT:label_1628
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
	jmp	.label_1625
.label_1747:
	jmp	.label_1625
.label_1748:
	movabs	rdi, OFFSET FLAT:label_1636
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
	jmp	.label_1625
.label_1750:
	movabs	rdi, OFFSET FLAT:label_1634
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
	jmp	.label_1625
.label_1749:
	movabs	rdi, OFFSET FLAT:label_1642
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
	jmp	.label_1625
.label_1753:
	movabs	rdi, OFFSET FLAT:label_1641
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
	jmp	.label_1625
.label_1638:
	movabs	rdi, OFFSET FLAT:label_1629
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
.label_1625:
	add	rsp, 0x180
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410ebf
	.globl sub_410ebf
	.type sub_410ebf, @function
sub_410ebf:

	nop	
	.section	.text
	.align	16
	#Procedure 0x410ec0

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
	je	.label_1626
	movabs	rsi, OFFSET FLAT:label_1639
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_1632
.label_1754:
	movabs	rdi, OFFSET FLAT:label_1630
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
	jmp	.label_1625
.label_1626:
	movabs	rsi, OFFSET FLAT:label_1640
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x48], eax
.label_1632:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	eax, OFFSET FLAT:label_1633
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
	mov	ecx, OFFSET FLAT:label_1631
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
	ja	.label_1638
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1627]]
	jmp	rcx
	.section	.text
	.align	16
	#Procedure 0x411050

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
	#Procedure 0x411083
	.globl sub_411083
	.type sub_411083, @function
sub_411083:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411090

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
	#Procedure 0x4110ce
	.globl sub_4110ce
	.type sub_4110ce, @function
sub_4110ce:

	nop	
	.section	.text
	.align	16
	#Procedure 0x411135
	.globl sub_411135
	.type sub_411135, @function
sub_411135:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411142
	.globl sub_411142
	.type sub_411142, @function
sub_411142:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411166
	.globl sub_411166
	.type sub_411166, @function
sub_411166:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411179
	.globl sub_411179
	.type sub_411179, @function
sub_411179:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x411180

	.globl stat
	.type stat, @function
stat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__xstat
	.section	.text
	.align	16
	#Procedure 0x411190

	.globl fstat
	.type fstat, @function
fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat
	.section	.text
	.align	16
	#Procedure 0x41119f
	.globl sub_41119f
	.type sub_41119f, @function
sub_41119f:

	nop	
