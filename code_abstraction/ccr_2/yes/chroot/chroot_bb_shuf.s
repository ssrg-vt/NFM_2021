	.section	.text
	.align	32
	#Procedure 0x401849
	.globl sub_401849
	.type sub_401849, @function
sub_401849:

	hlt	
	.section	.text
	.align	32
	#Procedure 0x40184a
	.globl sub_40184a
	.type sub_40184a, @function
sub_40184a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401882
	.globl sub_401882
	.type sub_401882, @function
sub_401882:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4018ca
	.globl sub_4018ca
	.type sub_4018ca, @function
sub_4018ca:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4018ec
	.globl sub_4018ec
	.type sub_4018ec, @function
sub_4018ec:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4018fd
	.globl sub_4018fd
	.type sub_4018fd, @function
sub_4018fd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401916
	.globl sub_401916
	.type sub_401916, @function
sub_401916:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401920

	.globl mgetgroups
	.type mgetgroups, @function
mgetgroups:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r12, rdx
	mov	r13d, esi
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_14
	mov	dword ptr [rsp + 0xc], 0xa
	xor	edi, edi
	mov	esi, 0x28
	call	realloc
	mov	rbp, rax
	mov	r14d, 0xffffffff
	test	rbp, rbp
	je	.label_10
	mov	qword ptr [rsp + 0x10], r12
	mov	r12d, 0xa
	lea	r15, [rsp + 0xc]
	jmp	.label_23
	.section	.text
	.align	32
	#Procedure 0x401978
	.globl sub_401978
	.type sub_401978, @function
sub_401978:

	nop	dword ptr [rax + rax]
.label_21:
	mov	r12d, dword ptr [rsp + 0xc]
	mov	rbp, rax
.label_23:
	mov	rdi, rbx
	mov	esi, r13d
	mov	rdx, rbp
	mov	rcx, r15
	call	getgrouplist
	mov	r14d, eax
	mov	eax, dword ptr [rsp + 0xc]
	test	r14d, r14d
	jns	.label_15
	cmp	r12d, eax
	jne	.label_15
	add	r12d, r12d
	mov	dword ptr [rsp + 0xc], r12d
	mov	eax, r12d
.label_15:
	test	eax, eax
	js	.label_19
	movsxd	rsi, eax
	shl	rsi, 2
	mov	rdi, rbp
	call	realloc
	test	rax, rax
	je	.label_20
	test	r14d, r14d
	js	.label_21
	mov	rcx, qword ptr [rsp + 0x10]
	mov	qword ptr [rcx], rax
	mov	r14d, dword ptr [rsp + 0xc]
	jmp	.label_10
.label_14:
	xor	edi, edi
	xor	esi, esi
	call	getgroups
	mov	dword ptr [rsp + 0xc], eax
	test	eax, eax
	js	.label_25
	cmp	r13d, -1
	jne	.label_9
	test	eax, eax
	mov	ebx, eax
	jne	.label_11
.label_9:
	lea	ebx, [rax + 1]
	mov	dword ptr [rsp + 0xc], ebx
	cmp	eax, -2
	jg	.label_11
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_13
.label_11:
	movsxd	rsi, ebx
	shl	rsi, 2
	xor	edi, edi
	call	realloc
	mov	r15, rax
	mov	r14d, 0xffffffff
	test	r15, r15
	je	.label_10
	xor	eax, eax
	cmp	r13d, -1
	setne	al
	sub	ebx, eax
	lea	rsi, [r15 + rax*4]
	mov	edi, ebx
	call	getgroups
	test	eax, eax
	js	.label_22
	cmp	r13d, -1
	mov	r14d, eax
	je	.label_24
	mov	dword ptr [r15], r13d
	inc	eax
	mov	r14d, eax
.label_24:
	mov	qword ptr [r12], r15
	cmp	r14d, 2
	jl	.label_10
	movsxd	rax, r14d
	lea	rax, [r15 + rax*4]
	mov	rcx, r15
	add	rcx, 4
	cmp	rcx, rax
	jae	.label_10
	mov	edx, dword ptr [r15]
	mov	esi, edx
	nop	word ptr cs:[rax + rax]
.label_18:
	mov	edi, dword ptr [rcx]
	cmp	edi, edx
	je	.label_16
	cmp	edi, esi
	jne	.label_17
.label_16:
	dec	r14d
	add	rcx, 4
	cmp	rcx, rax
	jb	.label_18
	jmp	.label_10
.label_17:
	mov	dword ptr [r15 + 4], edi
	add	r15, 4
	add	rcx, 4
	cmp	rcx, rax
	mov	esi, edi
	jb	.label_18
	jmp	.label_10
.label_25:
	call	__errno_location
	mov	r14d, 0xffffffff
	cmp	dword ptr [rax], 0x26
	jne	.label_10
	xor	edi, edi
	mov	esi, 4
	call	realloc
	test	rax, rax
	je	.label_10
	mov	qword ptr [r12], rax
	mov	dword ptr [rax], r13d
	xor	r14d, r14d
	cmp	r13d, -1
	setne	r14b
	jmp	.label_10
.label_19:
	call	__errno_location
	mov	rbx, rax
	mov	dword ptr [rbx], 0xc
	jmp	.label_12
.label_20:
	call	__errno_location
	mov	rbx, rax
.label_12:
	mov	r14d, dword ptr [rbx]
	mov	rdi, rbp
	call	free
	mov	dword ptr [rbx], r14d
.label_13:
	mov	r14d, 0xffffffff
.label_10:
	mov	eax, r14d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_22:
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	mov	rdi, r15
	call	free
	mov	dword ptr [rbx], ebp
	jmp	.label_10
	.section	.text
	.align	32
	#Procedure 0x401b66
	.globl sub_401b66
	.type sub_401b66, @function
sub_401b66:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401b70
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
	#Procedure 0x401ba3
	.globl sub_401ba3
	.type sub_401ba3, @function
sub_401ba3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401bb0

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
	je	.label_26
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
.label_26:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x401c18
	.globl sub_401c18
	.type sub_401c18, @function
sub_401c18:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401c20

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_38
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_40
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
	mov	esi, OFFSET FLAT:label_42
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_32
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_36
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_44
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	esi, OFFSET FLAT:label_43
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	mov	rdx, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_41
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_33
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_47
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_29
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_46
	mov	ecx, OFFSET FLAT:label_34
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_27
	mov	esi, OFFSET FLAT:label_30
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_27
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_28
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_27:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_31
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_34
	mov	ecx, OFFSET FLAT:label_35
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_45
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_35
	mov	ecx, OFFSET FLAT:label_39
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_38:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_37
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
	#Procedure 0x401e56
	.globl sub_401e56
	.type sub_401e56, @function
sub_401e56:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401e60
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x401e6a
	.globl sub_401e6a
	.type sub_401e6a, @function
sub_401e6a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401e70

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
	mov	r14, r8
	mov	r12d, edx
	mov	rbp, rsi
	mov	rbx, rdi
	cmp	r12d, 0x25
	jae	.label_63
	mov	qword ptr [rsp], rcx
	call	__errno_location
	mov	r15, rax
	mov	dword ptr [r15], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_56:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_56
	test	rbp, rbp
	lea	rsi, [rsp + 0x10]
	cmovne	rsi, rbp
	mov	r13d, 4
	cmp	al, 0x2d
	je	.label_53
	mov	rdi, rbx
	mov	edx, r12d
	mov	qword ptr [rsp + 8], rsi
	call	strtoul
	mov	rbp, rax
	mov	rax, qword ptr [rsp + 8]
	mov	r12, qword ptr [rax]
	cmp	r12, rbx
	je	.label_62
	mov	eax, dword ptr [r15]
	xor	ebx, ebx
	test	eax, eax
	je	.label_50
	cmp	eax, 0x22
	jne	.label_53
	mov	ebx, 1
.label_50:
	test	r14, r14
	jne	.label_54
	jmp	.label_55
.label_62:
	test	r14, r14
	je	.label_53
	movsx	esi, byte ptr [rbx]
	test	esi, esi
	je	.label_53
	mov	rdi, r14
	call	strchr
	xor	ebx, ebx
	mov	ebp, 1
	test	rax, rax
	je	.label_53
.label_54:
	movsx	r13d, byte ptr [r12]
	test	r13d, r13d
	je	.label_55
	mov	rdi, r14
	mov	esi, r13d
	call	strchr
	test	rax, rax
	je	.label_61
	mov	r15d, 1
	mov	esi, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_51
	movabs	rdx, 0x814400308945
	bt	rdx, rax
	jae	.label_51
	mov	esi, 0x30
	mov	rdi, r14
	call	strchr
	mov	r15d, 1
	mov	esi, 0x400
	test	rax, rax
	je	.label_51
	movsx	eax, byte ptr [r12 + 1]
	mov	r15d, 1
	mov	esi, 0x400
	cmp	eax, 0x42
	je	.label_58
	cmp	eax, 0x44
	je	.label_58
	cmp	eax, 0x69
	jne	.label_51
	xor	eax, eax
	cmp	byte ptr [r12 + 2], 0x42
	sete	al
	lea	r15, [rax + rax + 1]
	mov	esi, 0x400
	jmp	.label_51
.label_58:
	mov	r15d, 2
	mov	esi, 0x3e8
.label_51:
	add	r13d, -0x42
	cmp	r13d, 0x35
	ja	.label_61
	xor	eax, eax
	jmp	qword ptr [(r13 * 8) + label_48]
.label_474:
	mov	r8, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r8
	cmp	rax, rdi
	sbb	dl, dl
	mov	rbp, rdi
	imul	rbp, rsi
	cmp	rax, rdi
	cmovb	rbp, r8
	cmp	rax, rbp
	sbb	dil, dil
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, r8
	or	dl, r9b
	or	dl, dil
	jmp	.label_52
.label_61:
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax], rbp
	or	ebx, 2
	jmp	.label_59
.label_475:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, rdi
	sbb	eax, eax
	jmp	.label_64
.label_476:
	mov	r8, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r8
	cmp	rax, rdi
	sbb	dl, dl
	imul	rsi, rdi
	cmp	rax, rdi
	cmovb	rsi, r8
	or	dl, r9b
	jmp	.label_52
.label_478:
	mov	r9, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r9
	cmp	rax, rdi
	sbb	dl, dl
	mov	rbp, rdi
	imul	rbp, rsi
	cmp	rax, rdi
	cmovb	rbp, r9
	cmp	rax, rbp
	sbb	r10b, r10b
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r9
	cmp	rax, rdi
	sbb	cl, cl
	imul	rsi, rdi
	cmp	rax, rdi
	cmovb	rsi, r9
	or	dl, r8b
	or	dl, r10b
	or	dl, cl
	jmp	.label_52
.label_472:
	xor	eax, eax
	mov	rdx, rbp
	shr	rdx, 0x36
	setne	al
	shl	rbp, 0xa
	jmp	.label_57
.label_473:
	mov	r9, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r9
	cmp	rax, rdi
	sbb	dl, dl
	mov	rbp, rdi
	imul	rbp, rsi
	cmp	rax, rdi
	cmovb	rbp, r9
	cmp	rax, rbp
	sbb	r10b, r10b
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r9
	cmp	rax, rdi
	sbb	r11b, r11b
	mov	rbp, rdi
	imul	rbp, rsi
	cmp	rax, rdi
	cmovb	rbp, r9
	cmp	rax, rbp
	sbb	r14b, r14b
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r9
	cmp	rax, rdi
	sbb	bpl, bpl
	imul	rsi, rdi
	cmp	rax, rdi
	cmovb	rsi, r9
	or	dl, r8b
	or	dl, r10b
	or	dl, r11b
	or	dl, r14b
	or	dl, bpl
.label_52:
	and	dl, 1
	movzx	eax, dl
	jmp	.label_60
.label_477:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rdx, rbp
	imul	rdx, rsi
	cmp	rax, rbp
	cmovb	rdx, rdi
	cmp	rax, rdx
	sbb	cl, cl
	mov	rbp, rdx
	imul	rbp, rsi
	cmp	rax, rdx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rdx, rbp
	imul	rdx, rsi
	cmp	rax, rbp
	cmovb	rdx, rdi
	cmp	rax, rdx
	sbb	r10b, r10b
	mov	rbp, rdx
	imul	rbp, rsi
	cmp	rax, rdx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	dl, dl
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, rdi
	or	cl, r8b
	or	cl, r9b
	or	cl, r10b
	or	cl, dl
	and	cl, 1
	movzx	eax, cl
	jmp	.label_60
.label_479:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rcx, rbp
	imul	rcx, rsi
	cmp	rax, rbp
	cmovb	rcx, rdi
	cmp	rax, rcx
	sbb	dl, dl
	mov	rbp, rcx
	imul	rbp, rsi
	cmp	rax, rcx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rcx, rbp
	imul	rcx, rsi
	cmp	rax, rbp
	cmovb	rcx, rdi
	cmp	rax, rcx
	sbb	r10b, r10b
	mov	rbp, rcx
	imul	rbp, rsi
	cmp	rax, rcx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r11b, r11b
	mov	rcx, rbp
	imul	rcx, rsi
	cmp	rax, rbp
	cmovb	rcx, rdi
	cmp	rax, rcx
	sbb	r14b, r14b
	mov	rbp, rcx
	imul	rbp, rsi
	cmp	rax, rcx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r13b, r13b
	mov	rcx, rbp
	imul	rcx, rsi
	cmp	rax, rbp
	cmovb	rcx, rdi
	cmp	rax, rcx
	sbb	bpl, bpl
	imul	rsi, rcx
	cmp	rax, rcx
	cmovb	rsi, rdi
	or	dl, r8b
	or	dl, r9b
	or	dl, r10b
	or	dl, r11b
	and	dl, 1
	or	dl, r14b
	or	dl, r13b
	or	dl, bpl
	jmp	.label_68
.label_480:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rcx, rbp
	imul	rcx, rsi
	cmp	rax, rbp
	cmovb	rcx, rdi
	cmp	rax, rcx
	sbb	dl, dl
	mov	rbp, rcx
	imul	rbp, rsi
	cmp	rax, rcx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rcx, rbp
	imul	rcx, rsi
	cmp	rax, rbp
	cmovb	rcx, rdi
	cmp	rax, rcx
	sbb	r10b, r10b
	mov	rbp, rcx
	imul	rbp, rsi
	cmp	rax, rcx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r11b, r11b
	mov	rcx, rbp
	imul	rcx, rsi
	cmp	rax, rbp
	cmovb	rcx, rdi
	cmp	rax, rcx
	sbb	r14b, r14b
	mov	rbp, rcx
	imul	rbp, rsi
	cmp	rax, rcx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	cl, cl
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, rdi
	or	dl, r8b
	or	dl, r9b
	or	dl, r10b
	and	dl, 1
	or	dl, r11b
	or	dl, r14b
	or	dl, cl
.label_68:
	movzx	eax, dl
.label_64:
	and	eax, 1
.label_60:
	mov	rbp, rsi
.label_49:
	or	eax, ebx
	lea	rcx, [r12 + r15]
	mov	rdx, qword ptr [rsp + 8]
	mov	qword ptr [rdx], rcx
	lea	ebx, [rax + 2]
	cmp	byte ptr [r12 + r15], 0
	cmove	ebx, eax
.label_55:
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax], rbp
.label_59:
	mov	r13d, ebx
.label_53:
	mov	eax, r13d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_481:
	xor	eax, eax
	mov	rdx, rbp
	shr	rdx, 0x37
	setne	al
	shl	rbp, 9
.label_57:
	cmp	rdx, 1
	sbb	rdx, rdx
	not	rdx
	or	rbp, rdx
	jmp	.label_49
.label_482:
	lea	rax, [rbp + rbp]
	test	rbp, rbp
	mov	rcx, -1
	cmovns	rcx, rax
	shr	rbp, 0x3f
	mov	eax, ebp
	mov	rbp, rcx
	jmp	.label_49
.label_63:
	mov	edi, OFFSET FLAT:label_65
	mov	esi, OFFSET FLAT:label_66
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_67
	call	__assert_fail
	.section	.text
	.align	32
	#Procedure 0x40248d
	.globl sub_40248d
	.type sub_40248d, @function
sub_40248d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402490
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_69]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_70]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_71]
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
	#Procedure 0x4024fe
	.globl sub_4024fe
	.type sub_4024fe, @function
sub_4024fe:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402500
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_69]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_70]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_71]
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
	#Procedure 0x402554
	.globl sub_402554
	.type sub_402554, @function
sub_402554:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402560
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_69]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_70]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_71]
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
	#Procedure 0x4025cf
	.globl sub_4025cf
	.type sub_4025cf, @function
sub_4025cf:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4025d0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x4025d8
	.globl sub_4025d8
	.type sub_4025d8, @function
sub_4025d8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4025e0

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
	#Procedure 0x4025f9
	.globl sub_4025f9
	.type sub_4025f9, @function
sub_4025f9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402600
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x402611
	.globl sub_402611
	.type sub_402611, @function
sub_402611:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402620
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
	#Procedure 0x402638
	.globl sub_402638
	.type sub_402638, @function
sub_402638:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402640

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
	mov	r12, rsi
	mov	ebp, edi
	mov	dword ptr [rsp + 0xc], 0xffffffff
	mov	dword ptr [rsp + 8], 0xffffffff
	mov	qword ptr [rsp + 0x20], 0
	mov	qword ptr [rsp + 0x10], 0
	mov	rdi, qword ptr [r12]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_101
	call	setlocale
	mov	edi, OFFSET FLAT:label_108
	mov	esi, OFFSET FLAT:label_109
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_108
	call	textdomain
	mov	dword ptr [rip + exit_failure],  0x7d
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	xor	eax, eax
	mov	qword ptr [rsp + 0x28], rax
	xor	r15d, r15d
	xor	ebx, ebx
	jmp	.label_78
.label_138:
	mov	al, 1
	mov	qword ptr [rsp + 0x28], rax
	nop	
.label_78:
	mov	edx, OFFSET FLAT:label_130
	mov	ecx, OFFSET FLAT:long_opts
	xor	r8d, r8d
	mov	edi, ebp
	mov	rsi, r12
	call	getopt_long
	cmp	eax, 0xff
	jle	.label_136
	cmp	eax, 0x100
	je	.label_113
	cmp	eax, 0x102
	je	.label_138
	cmp	eax, 0x101
	jne	.label_105
	mov	rbx, qword ptr [rip + optarg]
	mov	rdi, rbx
	call	strlen
	test	rax, rax
	je	.label_78
	cmp	byte ptr [rbx + rax - 1], 0x3a
	jne	.label_78
	mov	byte ptr [rbx + rax - 1], 0
	jmp	.label_78
.label_113:
	mov	r15, qword ptr [rip + optarg]
	jmp	.label_78
.label_136:
	cmp	eax, -1
	jne	.label_85
	mov	qword ptr [rsp + 0x30], rbx
	movsxd	rax, dword ptr [rip + optind]
	cmp	eax, ebp
	jge	.label_89
	mov	r13, qword ptr [r12 + rax*8]
	mov	rdi, r13
	call	canonicalize_file_name
	test	rax, rax
	je	.label_95
	movzx	edx, byte ptr [rax]
	mov	ecx, 0x2f
	sub	ecx, edx
	jne	.label_90
	movzx	ecx, byte ptr [rax + 1]
	neg	ecx
.label_90:
	test	ecx, ecx
	sete	bl
	jmp	.label_118
.label_95:
	xor	ebx, ebx
.label_118:
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rsp + 0x28]
	test	al, al
	je	.label_104
	test	bl, bl
	je	.label_107
.label_104:
	xor	r14d, r14d
	test	bl, bl
	jne	.label_75
	mov	rdi, qword ptr [rsp + 0x30]
	test	rdi, rdi
	je	.label_115
	lea	rsi, [rsp + 0xc]
	lea	rdx, [rsp + 8]
	xor	ecx, ecx
	xor	r8d, r8d
	call	parse_user_spec
.label_115:
	mov	edi, dword ptr [rsp + 0xc]
	xor	ecx, ecx
	cmp	edi, -1
	mov	rbx, r15
	je	.label_122
	xor	ecx, ecx
	test	rbx, rbx
	je	.label_128
	cmp	dword ptr [rsp + 8], -1
	jne	.label_131
.label_128:
	call	getpwuid
	xor	ecx, ecx
	test	rax, rax
	je	.label_122
	cmp	dword ptr [rsp + 8], -1
	jne	.label_135
	mov	ecx, dword ptr [rax + 0x14]
	mov	dword ptr [rsp + 8], ecx
.label_135:
	mov	rcx, qword ptr [rax]
.label_122:
	test	rbx, rbx
	je	.label_139
.label_131:
	mov	rdi, rbx
	mov	r14, rcx
	cmp	byte ptr [rdi], 0
	je	.label_75
	lea	rsi, [rsp + 0x20]
	lea	rdx, [rsp + 0x10]
	xor	ecx, ecx
	call	parse_additional_groups
	jmp	.label_75
.label_139:
	test	rcx, rcx
	je	.label_76
	mov	esi, dword ptr [rsp + 8]
	cmp	esi, -1
	je	.label_76
	lea	rdx, [rsp + 0x20]
	mov	r14, rcx
	mov	rdi, rcx
	call	xgetgroups
	test	eax, eax
	jle	.label_75
	cdqe	
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_75
.label_76:
	mov	r14, rcx
.label_75:
	mov	rdi, r13
	call	chroot
	test	eax, eax
	jne	.label_92
	mov	rax, qword ptr [rsp + 0x28]
	test	al, al
	jne	.label_94
	mov	edi, OFFSET FLAT:label_43
	call	chdir
	test	eax, eax
	jne	.label_97
.label_94:
	movsxd	rax, dword ptr [rip + optind]
	inc	rax
	cmp	eax, ebp
	mov	rbp, qword ptr [rsp + 0x30]
	jne	.label_99
	mov	edi, OFFSET FLAT:label_81
	call	getenv
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_110
	cmovne	rcx, rax
	mov	qword ptr [r12], rcx
	mov	eax, OFFSET FLAT:label_111
	movq	xmm0, rax
	movups	xmmword ptr [r12 + 8], xmm0
	jmp	.label_112
.label_99:
	lea	r12, [r12 + rax*8]
.label_112:
	test	rbp, rbp
	je	.label_120
	lea	rsi, [rsp + 0xc]
	lea	rdx, [rsp + 8]
	xor	ecx, ecx
	xor	r8d, r8d
	mov	rdi, rbp
	call	parse_user_spec
	mov	rbp, rax
	test	rbp, rbp
	je	.label_120
	mov	edi, dword ptr [rsp + 0xc]
	cmp	edi, -1
	jne	.label_134
	cmp	dword ptr [rsp + 8], -1
	je	.label_126
.label_120:
	mov	edi, dword ptr [rsp + 0xc]
	cmp	edi, -1
	je	.label_84
.label_134:
	test	r15, r15
	je	.label_83
	cmp	dword ptr [rsp + 8], -1
	je	.label_83
	mov	rbp, qword ptr [rsp + 0x20]
	mov	qword ptr [rsp + 0x18], 0
	jmp	.label_72
.label_83:
	call	getpwuid
	test	rax, rax
	mov	ecx, dword ptr [rsp + 8]
	je	.label_106
	cmp	ecx, -1
	jne	.label_123
	mov	ecx, dword ptr [rax + 0x14]
	mov	dword ptr [rsp + 8], ecx
.label_123:
	mov	r14, qword ptr [rax]
	jmp	.label_84
.label_106:
	cmp	ecx, -1
	je	.label_74
.label_84:
	mov	rbp, qword ptr [rsp + 0x20]
	mov	qword ptr [rsp + 0x18], 0
	test	r15, r15
	je	.label_88
.label_72:
	cmp	byte ptr [r15], 0
	je	.label_86
	xor	ecx, ecx
	cmp	qword ptr [rsp + 0x10], 0
	sete	cl
	lea	rsi, [rsp + 0x18]
	lea	rdx, [rsp + 0x10]
	mov	rdi, r15
	call	parse_additional_groups
	test	eax, eax
	je	.label_98
	mov	ebx, 0x7d
	cmp	qword ptr [rsp + 0x10], 0
	jne	.label_86
	jmp	.label_103
.label_88:
	test	r14, r14
	je	.label_91
	mov	esi, dword ptr [rsp + 8]
	cmp	esi, -1
	je	.label_91
	lea	rdx, [rsp + 0x18]
	mov	rdi, r14
	call	xgetgroups
	test	eax, eax
	jle	.label_116
	cdqe	
	mov	qword ptr [rsp + 0x10], rax
	mov	rbp, qword ptr [rsp + 0x18]
	jmp	.label_91
.label_98:
	mov	rbp, qword ptr [rsp + 0x18]
	jmp	.label_86
.label_116:
	cmp	qword ptr [rsp + 0x10], 0
	je	.label_96
.label_91:
	cmp	dword ptr [rsp + 0xc], -1
	je	.label_124
.label_86:
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, rbp
	call	setgroups
	test	eax, eax
	jne	.label_133
.label_124:
	mov	rdi, qword ptr [rsp + 0x18]
	call	free
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	mov	edi, dword ptr [rsp + 8]
	cmp	edi, -1
	je	.label_121
	call	setgid
	test	eax, eax
	jne	.label_129
.label_121:
	mov	edi, dword ptr [rsp + 0xc]
	cmp	edi, -1
	je	.label_73
	call	setuid
	test	eax, eax
	jne	.label_77
.label_73:
	mov	rdi, qword ptr [r12]
	mov	rsi, r12
	call	execvp
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	ebx, ebx
	cmp	ebp, 2
	sete	bl
	or	ebx, 0x7e
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_93
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rdi, qword ptr [r12]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, r14
	call	error
.label_103:
	mov	eax, ebx
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_85:
	cmp	eax, 0xffffff7d
	je	.label_102
	cmp	eax, 0xffffff7e
	jne	.label_105
	xor	edi, edi
	call	usage
.label_102:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	esi, OFFSET FLAT:label_35
	mov	edx, OFFSET FLAT:label_46
	mov	r8d, OFFSET FLAT:label_114
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_89:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_125
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	edi, 0x7d
	call	usage
.label_107:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_119
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	esi, OFFSET FLAT:label_43
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	edi, 0x7d
	call	usage
.label_92:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_87
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r13
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 0x7d
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_105:
	mov	edi, 0x7d
	call	usage
.label_133:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_100
	jmp	.label_80
.label_129:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_127
	jmp	.label_80
.label_77:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_79
	jmp	.label_80
.label_97:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_117
.label_80:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 0x7d
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_126:
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	edi, 0x7d
	mov	edx, OFFSET FLAT:label_132
	xor	eax, eax
	mov	rcx, rbp
	call	error
.label_74:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_137
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	ecx, dword ptr [rsp + 0xc]
	mov	edi, 0x7d
	xor	eax, eax
	mov	esi, ebx
	call	error
.label_96:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_82
	jmp	.label_80
	.section	.text
	.align	32
	#Procedure 0x402c2b
	.globl sub_402c2b
	.type sub_402c2b, @function
sub_402c2b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402c30

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
	je	.label_156
	mov	edx, OFFSET FLAT:label_146
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_153
.label_156:
	mov	edx, OFFSET FLAT:label_154
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_153:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_158
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
	mov	esi, OFFSET FLAT:label_155
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_140
	jmp	qword ptr [(r12 * 8) + label_142]
.label_459:
	add	rsp, 8
	jmp	.label_141
.label_140:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_150
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
	jmp	.label_141
.label_460:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_151
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
.label_461:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_148
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
.label_462:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_147
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
.label_463:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_144
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
	jmp	.label_141
.label_464:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_143
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
	jmp	.label_141
.label_465:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_145
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
	jmp	.label_141
.label_466:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_149
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
	jmp	.label_141
.label_468:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_152
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
	jmp	.label_141
.label_467:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_157
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
.label_141:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x402f88
	.globl sub_402f88
	.type sub_402f88, @function
sub_402f88:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402f90

	.globl parse_user_spec
	.type parse_user_spec, @function
parse_user_spec:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	rbp, r8
	mov	r15, rcx
	mov	rbx, rdx
	mov	r12, rsi
	mov	r13, rdi
	xor	r14d, r14d
	test	rbx, rbx
	je	.label_160
	mov	esi, 0x3a
	mov	rdi, r13
	call	strchr
	mov	r14, rax
.label_160:
	mov	rdi, r13
	mov	rsi, r14
	mov	rdx, r12
	mov	rcx, rbx
	mov	r8, r15
	mov	qword ptr [rsp], rbp
	mov	r9, rbp
	call	parse_with_separator
	mov	rbp, rax
	test	rbx, rbx
	je	.label_159
	test	r14, r14
	jne	.label_159
	test	rbp, rbp
	je	.label_159
	mov	esi, 0x2e
	mov	rdi, r13
	call	strchr
	test	rax, rax
	je	.label_159
	mov	rdi, r13
	mov	rsi, rax
	mov	rdx, r12
	mov	rcx, rbx
	mov	r8, r15
	mov	r9, qword ptr [rsp]
	call	parse_with_separator
	test	rax, rax
	cmovne	rax, rbp
	jmp	.label_161
.label_159:
	mov	rax, rbp
.label_161:
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
	#Procedure 0x403034
	.globl sub_403034
	.type sub_403034, @function
sub_403034:

	nop	word ptr cs:[rax + rax]
.label_164:
	call	xalloc_die
.label_165:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_164
	mov	qword ptr [rsi], rbx
.label_163:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_162
	test	rax, rax
	je	.label_164
.label_162:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x40306d
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_165
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_166
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_163
	call	free
	xor	eax, eax
	jmp	.label_162
.label_166:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4030a4
	.globl sub_4030a4
	.type sub_4030a4, @function
sub_4030a4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4030b0
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
	je	.label_167
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
.label_167:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403145
	.globl sub_403145
	.type sub_403145, @function
sub_403145:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403150
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_168
	test	rax, rax
	je	.label_169
.label_168:
	pop	rbx
	ret	
.label_169:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40316a
	.globl sub_40316a
	.type sub_40316a, @function
sub_40316a:

	nop	word ptr [rax + rax]
.label_170:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x403175
	.globl sub_403175
	.type sub_403175, @function
sub_403175:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40317b

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_171
	test	rax, rax
	je	.label_170
.label_171:
	pop	rbx
	ret	
.label_174:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_172
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_172:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4031c4
	.globl sub_4031c4
	.type sub_4031c4, @function
sub_4031c4:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4031c6

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
	jne	.label_173
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_173
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_174
.label_173:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
	.section	.text
	.align	32
	#Procedure 0x403200
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_69]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_70]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_71]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_175
	test	rsi, rsi
	je	.label_175
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_175:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403270
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x40327a
	.globl sub_40327a
	.type sub_40327a, @function
sub_40327a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403280
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_176
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_178:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_178
.label_176:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_179
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_180], OFFSET FLAT:slot0
.label_179:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_177
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_177:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x403311
	.globl sub_403311
	.type sub_403311, @function
sub_403311:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403320
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
	#Procedure 0x403395
	.globl sub_403395
	.type sub_403395, @function
sub_403395:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4033a0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_182
	cmp	byte ptr [rax], 0x43
	jne	.label_184
	cmp	byte ptr [rax + 1], 0
	je	.label_181
.label_184:
	mov	esi, OFFSET FLAT:label_183
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_182
.label_181:
	xor	ebx, ebx
.label_182:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4033d1
	.globl sub_4033d1
	.type sub_4033d1, @function
sub_4033d1:

	nop	word ptr cs:[rax + rax]
.label_185:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4033e5
	.globl sub_4033e5
	.type sub_4033e5, @function
sub_4033e5:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4033e9
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
	je	.label_185
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
	#Procedure 0x403450
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
	#Procedure 0x403469
	.globl sub_403469
	.type sub_403469, @function
sub_403469:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403470
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_186:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_186
	jmp	version_etc_arn
	.section	.text
	.align	32
	#Procedure 0x403491
	.globl sub_403491
	.type sub_403491, @function
sub_403491:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4034a0
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
	#Procedure 0x4034af
	.globl sub_4034af
	.type sub_4034af, @function
sub_4034af:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4034b0
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_187
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_188
	test	rbx, rbx
	jne	.label_188
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_188:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_189
	test	rax, rax
	je	.label_187
.label_189:
	pop	rbx
	ret	
.label_187:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4034f8
	.globl sub_4034f8
	.type sub_4034f8, @function
sub_4034f8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403500
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
	je	.label_190
	mov	qword ptr [rax], rbx
.label_190:
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
	#Procedure 0x4035ec
	.globl sub_4035ec
	.type sub_4035ec, @function
sub_4035ec:

	nop	dword ptr [rax]
.label_191:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4035f5
	.globl sub_4035f5
	.type sub_4035f5, @function
sub_4035f5:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4035f9
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_69]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_70]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_71]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_191
	test	rsi, rsi
	je	.label_191
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
	#Procedure 0x403660

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_192
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_192
	test	byte ptr [rbx + 1], 1
	je	.label_192
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_192:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	32
	#Procedure 0x403693
	.globl sub_403693
	.type sub_403693, @function
sub_403693:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4036a0

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
	je	.label_193
	test	r15, r15
	je	.label_194
.label_193:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_194:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4036dc
	.globl sub_4036dc
	.type sub_4036dc, @function
sub_4036dc:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4036e0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_195
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_196
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_198
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_46
	mov	ecx, OFFSET FLAT:label_34
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_197
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	32
	#Procedure 0x403754
	.globl sub_403754
	.type sub_403754, @function
sub_403754:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403760

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
.label_206:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_202
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [(rcx * 8) + label_244]
.label_548:
	mov	byte ptr [rsp + 7], r10b
	mov	edi, OFFSET FLAT:label_215
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_220
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10b, byte ptr [rsp + 7]
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_549:
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_230
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_230
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_250:
	cmp	r14, r11
	jae	.label_247
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_247:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_250
.label_230:
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
	jmp	.label_254
.label_541:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_254
.label_544:
	mov	al, 1
.label_542:
	mov	r12b, 1
.label_545:
	test	r12b, 1
	mov	cl, 1
	je	.label_268
	mov	ecx, eax
.label_268:
	mov	al, cl
.label_543:
	test	r12b, 1
	jne	.label_270
	test	r11, r11
	je	.label_272
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_272:
	mov	r14d, 1
	jmp	.label_273
.label_270:
	xor	r14d, r14d
.label_273:
	mov	ecx, OFFSET FLAT:label_220
	mov	qword ptr [rsp + 0x48], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x40], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_254
.label_546:
	test	r12b, 1
	jne	.label_283
	test	r11, r11
	je	.label_285
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_285:
	mov	r14d, 1
	jmp	.label_287
.label_547:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_289
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	sil, 1
	jmp	.label_254
.label_283:
	xor	r14d, r14d
.label_287:
	mov	eax, OFFSET FLAT:label_289
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_254:
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
	jmp	.label_305
	.section	.text
	.align	32
	#Procedure 0x403a4d
	.globl sub_403a4d
	.type sub_403a4d, @function
sub_403a4d:

	nop	dword ptr [rax]
.label_251:
	inc	rsi
.label_305:
	cmp	rbp, -1
	je	.label_224
	cmp	rsi, rbp
	jne	.label_225
	jmp	.label_226
	.section	.text
	.align	32
	#Procedure 0x403a63
	.globl sub_403a63
	.type sub_403a63, @function
sub_403a63:

	nop	word ptr cs:[rax + rax]
.label_224:
	mov	rcx, -1
	cmp	byte ptr [rdi + rsi], 0
	je	.label_231
.label_225:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_267
	mov	rax, qword ptr [rsp + 0x40]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_242
	cmp	rbp, -1
	jne	.label_242
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
.label_242:
	cmp	rbx, rbp
	jbe	.label_255
.label_267:
	xor	r8d, r8d
.label_279:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_257
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_260]
.label_508:
	test	rsi, rsi
	jne	.label_241
	jmp	.label_266
	.section	.text
	.align	32
	#Procedure 0x403b05
	.globl sub_403b05
	.type sub_403b05, @function
sub_403b05:

	nop	word ptr cs:[rax + rax]
.label_255:
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
	jne	.label_276
	cmp	byte ptr [rsp + 6], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_279
	jmp	.label_232
.label_276:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_279
.label_512:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_295
	test	rsi, rsi
	jne	.label_297
	cmp	rbp, 1
	je	.label_266
	xor	r13d, r13d
	jmp	.label_199
.label_501:
	cmp	byte ptr [rsp + 0x17], 0
	je	.label_303
	cmp	byte ptr [rsp + 6], 0
	jne	.label_227
	cmp	r12d, 2
	jne	.label_308
	mov	eax, r9d
	and	al, 1
	jne	.label_308
	cmp	r14, r11
	jae	.label_311
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_311:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_314
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_314:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_309
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_309:
	add	r14, 3
	mov	r9b, 1
.label_308:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_208
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_208:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_211
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_211
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_211
	cmp	r14, r11
	jae	.label_315
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_315:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_299
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_299:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_199
.label_502:
	mov	bl, 0x62
	jmp	.label_237
.label_503:
	mov	cl, 0x74
	jmp	.label_239
.label_504:
	mov	bl, 0x76
	jmp	.label_237
.label_505:
	mov	bl, 0x66
	jmp	.label_237
.label_506:
	mov	cl, 0x72
	jmp	.label_239
.label_509:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_249
	cmp	byte ptr [rsp + 6], 0
	jne	.label_212
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
	jae	.label_253
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_253:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_265
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_265:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_269
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_269:
	add	r14, 3
	xor	r9d, r9d
.label_249:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_199
.label_510:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_274
	cmp	r12d, 2
	jne	.label_241
	cmp	byte ptr [rsp + 6], 0
	je	.label_241
	jmp	.label_212
.label_511:
	cmp	r12d, 2
	jne	.label_284
	cmp	byte ptr [rsp + 6], 0
	jne	.label_212
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_234
.label_257:
	mov	dword ptr [rsp + 0x54], r8d
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xa8], 1
	jne	.label_292
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
.label_245:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2a]
	mov	qword ptr [rsp + 0x60], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 7]
	mov	r12, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x50]
	ja	.label_307
	test	r8b, r8b
	je	.label_307
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x54]
	jmp	.label_199
.label_295:
	test	rsi, rsi
	jne	.label_210
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_210
.label_266:
	mov	dl, 1
.label_507:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_212
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_199:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_218
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_300
	jmp	.label_223
	.section	.text
	.align	32
	#Procedure 0x403e54
	.globl sub_403e54
	.type sub_403e54, @function
sub_403e54:

	nop	word ptr cs:[rax + rax]
.label_218:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_223
.label_300:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_228
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_234
	jmp	.label_243
	.section	.text
	.align	32
	#Procedure 0x403e9d
	.globl sub_403e9d
	.type sub_403e9d, @function
sub_403e9d:

	nop	dword ptr [rax]
.label_223:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_243
	jmp	.label_234
.label_228:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_243
.label_303:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_251
	xor	r15d, r15d
	jmp	.label_241
.label_284:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x29], 0
	je	.label_239
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_234
.label_239:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_212
.label_237:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x17], 0
	mov	r13d, 0
	je	.label_199
	nop	word ptr cs:[rax + rax]
.label_243:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_227
	cmp	r12d, 2
	jne	.label_248
	mov	eax, r9d
	and	al, 1
	jne	.label_248
	cmp	r14, r11
	jae	.label_264
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_264:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_277
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_277:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_304
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_304:
	add	r14, 3
	mov	r9b, 1
.label_248:
	cmp	r14, r11
	jae	.label_286
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_286:
	inc	r14
	jmp	.label_290
.label_292:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_293
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_293:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x60], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x58], rsi
.label_271:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_313
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_317
	cmp	rbp, -2
	je	.label_320
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2b]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_214
	mov	rax, qword ptr [rsp + 0x60]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_200:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_294
	bt	rsi, rdx
	jb	.label_222
.label_294:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_200
.label_214:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_233
	xor	r13d, r13d
.label_233:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x58]
	je	.label_271
	jmp	.label_245
.label_211:
	xor	r13d, r13d
	jmp	.label_199
.label_210:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_199
.label_274:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_241
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_241
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_241
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_259
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_207
	cmp	byte ptr [rsp + 6], 0
	jne	.label_263
	cmp	r14, r11
	jae	.label_205
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_205:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_252
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_252:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_275
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_275:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_203
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x3f
.label_203:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_199
.label_241:
	xor	eax, eax
.label_297:
	xor	r13d, r13d
	jmp	.label_199
.label_307:
	add	qword ptr [rsp + 0x60], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_291
	.section	.text
	.align	32
	#Procedure 0x404182
	.globl sub_404182
	.type sub_404182, @function
sub_404182:

	nop	word ptr cs:[rax + rax]
.label_246:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_291:
	test	r8b, r8b
	je	.label_298
	mov	ecx, dword ptr [rsp + 0x54]
	test	cl, 1
	je	.label_256
	cmp	r14, r11
	jae	.label_301
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_301:
	inc	r14
	mov	dword ptr [rsp + 0x54], 0
	jmp	.label_256
	.section	.text
	.align	32
	#Procedure 0x4041cc
	.globl sub_4041cc
	.type sub_4041cc, @function
sub_4041cc:

	nop	dword ptr [rax]
.label_298:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_232
	cmp	r12d, 2
	jne	.label_312
	mov	eax, r9d
	and	al, 1
	jne	.label_312
	cmp	r14, r11
	jae	.label_316
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_316:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_318
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_318:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_204
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_204:
	add	r14, 3
	mov	r9b, 1
.label_312:
	cmp	r14, r11
	jae	.label_209
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_209:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_216
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_216:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_221
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_221:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_256:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x60], rdx
	jbe	.label_234
	test	r9b, 1
	je	.label_238
	mov	ebx, eax
	and	bl, 1
	jne	.label_238
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_240
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_240:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_258
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_258:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_238:
	cmp	r14, r11
	jae	.label_246
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_246
	.section	.text
	.align	32
	#Procedure 0x4042d3
	.globl sub_4042d3
	.type sub_4042d3, @function
sub_4042d3:

	nop	word ptr cs:[rax + rax]
.label_234:
	test	r9b, 1
	je	.label_261
	and	al, 1
	jne	.label_261
	cmp	r14, r11
	jae	.label_262
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_262:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_310
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_310:
	add	r14, 2
	xor	r9d, r9d
.label_261:
	mov	ebx, r15d
.label_290:
	cmp	r14, r11
	jae	.label_235
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_235:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_251
.label_317:
	xor	r13d, r13d
.label_313:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_245
.label_320:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbp, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	jbe	.label_282
	mov	rsi, qword ptr [rsp + 0x58]
.label_288:
	mov	rax, qword ptr [rsp + 0x60]
	cmp	byte ptr [rax + r12], 0
	je	.label_280
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_288
	xor	r13d, r13d
	jmp	.label_245
.label_282:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_245
.label_280:
	xor	r13d, r13d
	jmp	.label_245
.label_259:
	xor	r13d, r13d
	jmp	.label_199
.label_207:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_199
	.section	.text
	.align	32
	#Procedure 0x4043a8
	.globl sub_4043a8
	.type sub_4043a8, @function
sub_4043a8:

	nop	dword ptr [rax + rax]
.label_226:
	mov	rcx, rsi
.label_231:
	cmp	r12d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 6], 0
	je	.label_302
	or	al, dl
	je	.label_306
.label_302:
	cmp	r12d, 2
	setne	al
	cmp	byte ptr [rsp + 6], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x2c]
	mov	rsi, qword ptr [rsp + 0xb0]
	je	.label_201
	or	al, dl
	jne	.label_201
	test	r10b, 1
	jne	.label_319
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_201
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	qword ptr [rsp + 0x20], rcx
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x68]
	je	.label_206
.label_201:
	mov	rdx, qword ptr [rsp + 0x48]
	test	rdx, rdx
	je	.label_213
	cmp	byte ptr [rsp + 6], 0
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_217
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_217
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_229:
	cmp	r14, r11
	jae	.label_219
	mov	byte ptr [rcx + r14], al
.label_219:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_229
	jmp	.label_217
.label_227:
	mov	qword ptr [rsp + 0x20], rbp
.label_232:
	mov	rdx, rdi
	jmp	.label_236
.label_212:
	mov	qword ptr [rsp + 0x20], rbp
.label_222:
	mov	rdx, rdi
	mov	eax, 2
.label_296:
	mov	qword ptr [rsp + 0x38], rax
.label_236:
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
.label_278:
	mov	r14, rax
.label_281:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_306:
	mov	rdx, rdi
	mov	qword ptr [rsp + 0x20], rcx
	jmp	.label_236
.label_319:
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
	jmp	.label_278
.label_213:
	mov	rcx, qword ptr [rsp + 8]
.label_217:
	cmp	r14, r11
	jae	.label_281
	mov	byte ptr [rcx + r14], 0
	jmp	.label_281
.label_263:
	mov	qword ptr [rsp + 0x20], rbp
	mov	rdx, rdi
	mov	eax, 5
	jmp	.label_296
.label_202:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x404567
	.globl sub_404567
	.type sub_404567, @function
sub_404567:

	nop	word ptr [rax + rax]
.label_324:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_321
	test	rax, rax
	je	.label_322
.label_321:
	pop	rbx
	ret	
.label_322:
	call	xalloc_die
.label_327:
	test	rcx, rcx
	jne	.label_326
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_326:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_325
.label_323:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_324
	test	rbx, rbx
	jne	.label_324
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_325:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4045da
	.globl sub_4045da
	.type sub_4045da, @function
sub_4045da:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4045e3
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_327
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_322
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_323
	.section	.text
	.align	32
	#Procedure 0x404610
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x40461e
	.globl sub_40461e
	.type sub_40461e, @function
sub_40461e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x404620

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
	js	.label_328
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_331
	cmp	r12d, 0x7fffffff
	je	.label_333
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
	jne	.label_329
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_329:
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
.label_331:
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
	jbe	.label_334
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_330
.label_334:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_332
	mov	rdi, r14
	call	free
.label_332:
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
.label_330:
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
.label_328:
	call	abort
.label_333:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4047dd
	.globl sub_4047dd
	.type sub_4047dd, @function
sub_4047dd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4047e0

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
	je	.label_335
	cmp	r15, -2
	jb	.label_335
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_335
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_335:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x404836
	.globl sub_404836
	.type sub_404836, @function
sub_404836:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404840

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
	je	.label_337
	test	r15, r15
	je	.label_336
.label_337:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_336:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x404882
	.globl sub_404882
	.type sub_404882, @function
sub_404882:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404890
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
	#Procedure 0x404951
	.globl sub_404951
	.type sub_404951, @function
sub_404951:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404960

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_69]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_70]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_71]
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
	#Procedure 0x4049b5
	.globl sub_4049b5
	.type sub_4049b5, @function
sub_4049b5:

	nop	word ptr cs:[rax + rax]
.label_338:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4049c5
	.globl sub_4049c5
	.type sub_4049c5, @function
sub_4049c5:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4049cb
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_69]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_70]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_71]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_338
	test	rdx, rdx
	je	.label_338
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
	#Procedure 0x404a30
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_339
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_340
	test	rax, rax
	je	.label_339
.label_340:
	pop	rbx
	ret	
.label_339:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x404a65
	.globl sub_404a65
	.type sub_404a65, @function
sub_404a65:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404a70

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_101
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_341
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x404a95
	.globl sub_404a95
	.type sub_404a95, @function
sub_404a95:

	nop	word ptr cs:[rax + rax]
.label_347:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_342
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_343
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_132
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	.section	.text
	.align	32
	#Procedure 0x404ae1

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_345
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_347
	cmp	dword ptr [rbp], 0x20
	jne	.label_347
.label_345:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_346
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_343:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_344
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
.label_346:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	.section	.text
	.align	32
	#Procedure 0x404b60

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_358
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_360
.label_358:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_360:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_349
	cmp	r10d, 0x29
	jae	.label_357
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_359
.label_357:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_359:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_349
	cmp	r10d, 0x29
	jae	.label_355
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_356
.label_355:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_356:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_349
	cmp	r10d, 0x29
	jae	.label_353
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_354
.label_353:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_354:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_349
	cmp	r10d, 0x29
	jae	.label_351
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_352
.label_351:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_352:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_349
	cmp	r10d, 0x29
	jae	.label_348
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_350
.label_348:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_350:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_349
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_349
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_349
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_349
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_349:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	32
	#Procedure 0x404d42
	.globl sub_404d42
	.type sub_404d42, @function
sub_404d42:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404d50

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_361
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_132
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x404d80

	.globl umaxtostr
	.type umaxtostr, @function
umaxtostr:
	mov	rcx, rdi
	mov	byte ptr [rsi + 0x14], 0
	add	rsi, 0x14
	movabs	r8, 0xcccccccccccccccd
	nop	word ptr cs:[rax + rax]
.label_362:
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
	ja	.label_362
	mov	rax, rsi
	ret	
	.section	.text
	.align	32
	#Procedure 0x404dcb
	.globl sub_404dcb
	.type sub_404dcb, @function
sub_404dcb:

	nop	dword ptr [rax + rax]
.label_364:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_363
	call	__errno_location
	mov	dword ptr [rax], 0
.label_363:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404deb

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
	jne	.label_364
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_363
	test	cl, cl
	jne	.label_363
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_363
.label_366:
	mov	ecx, 1
.label_365:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	32
	#Procedure 0x404e40
	.globl sub_404e40
	.type sub_404e40, @function
sub_404e40:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404e45

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_366
	test	rsi, rsi
	mov	ecx, 1
	je	.label_365
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_365
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x404e80

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
	#Procedure 0x404e97
	.globl sub_404e97
	.type sub_404e97, @function
sub_404e97:

	nop	word ptr [rax + rax]
.label_367:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x404ea5
	.globl sub_404ea5
	.type sub_404ea5, @function
sub_404ea5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404eb4
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
	je	.label_367
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
	.align	32
	#Procedure 0x404f10

	.globl xgetgroups
	.type xgetgroups, @function
xgetgroups:
	push	rbx
	call	mgetgroups
	mov	ebx, eax
	cmp	ebx, -1
	jne	.label_369
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	je	.label_368
.label_369:
	mov	eax, ebx
	pop	rbx
	ret	
.label_368:
	call	xalloc_die
.label_372:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x404f35

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_371
	test	rbx, rbx
	jne	.label_371
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_371:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_370
	test	rax, rax
	je	.label_372
.label_370:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x404f60
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
	#Procedure 0x404f78
	.globl sub_404f78
	.type sub_404f78, @function
sub_404f78:

	nop	dword ptr [rax + rax]
.label_374:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x404f85
	.globl sub_404f85
	.type sub_404f85, @function
sub_404f85:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404f8f
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
	je	.label_373
	test	r14, r14
	je	.label_374
.label_373:
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
	#Procedure 0x404fc0

	.globl parse_additional_groups
	.type parse_additional_groups, @function
parse_additional_groups:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	dword ptr [rsp + 0x14], ecx
	mov	qword ptr [rsp + 0x28], rdx
	mov	qword ptr [rsp + 0x18], rsi
	mov	qword ptr [rsp + 0x30], rdi
	call	xstrdup
	mov	esi, OFFSET FLAT:label_388
	mov	qword ptr [rsp + 0x20], rax
	mov	rdi, rax
	call	strtok
	mov	r14, rax
	xor	r15d, r15d
	test	r14, r14
	mov	ebx, 0
	mov	r13d, 0
	je	.label_393
	lea	rbp, [rsp + 8]
	xor	r13d, r13d
	xor	ebx, ebx
	xor	r15d, r15d
	xor	r12d, r12d
	nop	word ptr cs:[rax + rax]
.label_392:
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:label_101
	mov	rdi, r14
	mov	rcx, rbp
	call	xstrtoul
	test	eax, eax
	jne	.label_384
	mov	rax, qword ptr [rsp + 8]
	shr	rax, 0x20
	jne	.label_384
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	dec	r14
	nop	word ptr cs:[rax + rax]
.label_389:
	movzx	ecx, byte ptr [r14 + 1]
	inc	r14
	test	byte ptr [rax + rcx*2 + 1], 0x20
	jne	.label_389
	cmp	cl, 0x2b
	je	.label_377
	mov	rdi, r14
	call	getgrnam
	test	rax, rax
	jne	.label_376
	jmp	.label_377
	.section	.text
	.align	32
	#Procedure 0x405093
	.globl sub_405093
	.type sub_405093, @function
sub_405093:

	nop	word ptr cs:[rax + rax]
.label_384:
	mov	rdi, r14
	call	getgrnam
	test	rax, rax
	je	.label_379
.label_376:
	mov	eax, dword ptr [rax + 0x10]
	mov	qword ptr [rsp + 8], rax
.label_377:
	cmp	r15, r12
	jne	.label_381
	test	rbx, rbx
	je	.label_382
	movabs	rax, 0x1555555555555555
	cmp	r15, rax
	jae	.label_383
	mov	rax, r15
	shr	rax, 1
	lea	r12, [r15 + rax + 1]
	jmp	.label_386
.label_379:
	mov	eax, dword ptr [rsp + 0x14]
	test	al, al
	je	.label_387
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_391
	mov	edx, 5
	call	dcgettext
	mov	r13, rax
	mov	rdi, r14
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	lea	rbp, [rsp + 8]
	mov	rdx, r13
	call	error
	mov	r13d, 0xffffffff
	jmp	.label_390
.label_382:
	test	r15, r15
	mov	r12, r15
	mov	eax, 0x20
	cmove	r12, rax
	mov	rax, r12
	shr	rax, 0x3d
	jne	.label_380
.label_386:
	lea	rsi, [r12*4]
	mov	rdi, rbx
	call	xrealloc
	mov	rbx, rax
.label_381:
	mov	eax, dword ptr [rsp + 8]
	mov	dword ptr [rbx + r15*4], eax
	inc	r15
.label_390:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_388
	call	strtok
	mov	r14, rax
	test	r14, r14
	jne	.label_392
.label_393:
	test	r13d, r13d
	setne	al
	test	r15, r15
	setne	cl
	or	cl, al
	mov	ebp, 0xffffffff
	cmovne	ebp, r13d
	jne	.label_375
	mov	eax, dword ptr [rsp + 0x14]
	xor	al, 1
	jne	.label_375
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_378
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, qword ptr [rsp + 0x30]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
.label_387:
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rax], rbx
	mov	ebp, 0xffffffff
	mov	rdi, qword ptr [rsp + 0x20]
	jmp	.label_385
.label_375:
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rax], rbx
	test	ebp, ebp
	mov	rdi, qword ptr [rsp + 0x20]
	jne	.label_385
	mov	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [rax], r15
	xor	ebp, ebp
.label_385:
	call	free
	mov	eax, ebp
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_383:
	call	xalloc_die
.label_380:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x405221
	.globl sub_405221
	.type sub_405221, @function
sub_405221:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405230
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
.label_394:
	push	rax
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40525b
	.globl sub_40525b
	.type sub_40525b, @function
sub_40525b:

	nop	dword ptr [rax + rax]
.label_395:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x405265
	.globl sub_405265
	.type sub_405265, @function
sub_405265:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40526f
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_395
	call	rpl_calloc
	test	rax, rax
	je	.label_395
	pop	rcx
	ret	
.label_400:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_397
	mov	eax, OFFSET FLAT:label_398
	jmp	.label_399
	.section	.text
	.align	32
	#Procedure 0x40529f
	.globl sub_40529f
	.type sub_40529f, @function
sub_40529f:

	nop	word ptr cs:[rax + rax]
.label_403:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_396
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_396
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_396
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_396
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_396
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_396
	cmp	byte ptr [rax + 7], 0
	je	.label_400
.label_396:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_289
	mov	eax, OFFSET FLAT:label_220
.label_399:
	cmove	rax, rcx
.label_404:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4052f2

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
	jne	.label_404
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_403
	cmp	ecx, 0x55
	jne	.label_396
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_396
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_396
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_396
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_396
	cmp	byte ptr [rax + 5], 0
	jne	.label_396
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_401
	mov	eax, OFFSET FLAT:label_402
	jmp	.label_399
	.section	.text
	.align	32
	#Procedure 0x405360
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	.section	.text
	.align	32
	#Procedure 0x405368
	.globl sub_405368
	.type sub_405368, @function
sub_405368:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405370
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
	#Procedure 0x4053a6
	.globl sub_4053a6
	.type sub_4053a6, @function
sub_4053a6:

	nop	word ptr cs:[rax + rax]
.label_405:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4053b5
	.globl sub_4053b5
	.type sub_4053b5, @function
sub_4053b5:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4053b7
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_69]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_70]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_71]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_405
	test	rdx, rdx
	je	.label_405
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_406:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x405425
	.globl sub_405425
	.type sub_405425, @function
sub_405425:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40542d
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
	je	.label_406
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
.label_412:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_410
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4054b0
	.globl sub_4054b0
	.type sub_4054b0, @function
sub_4054b0:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4054bf

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_412
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_407
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_409
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_407
	mov	esi, OFFSET FLAT:label_408
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_411
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_411:
	mov	rbx, r14
.label_407:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x405540
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
	#Procedure 0x40554f
	.globl sub_40554f
	.type sub_40554f, @function
sub_40554f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x405550

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_413
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_413:
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
	#Procedure 0x4055d3
	.globl sub_4055d3
	.type sub_4055d3, @function
sub_4055d3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4055e0

	.globl parse_with_separator
	.type parse_with_separator, @function
parse_with_separator:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x58
	mov	r14, r8
	mov	r12, rcx
	mov	r15, rsi
	mov	eax, dword ptr [rdx]
	mov	ecx, 0xffffffff
	test	r12, r12
	je	.label_435
	mov	ecx, dword ptr [r12]
.label_435:
	test	r14, r14
	je	.label_415
	mov	qword ptr [r14], 0
.label_415:
	test	r9, r9
	je	.label_417
	mov	qword ptr [r9], 0
.label_417:
	test	r15, r15
	mov	qword ptr [rsp + 0x38], rdx
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 0x18], rcx
	je	.label_426
	mov	qword ptr [rsp + 8], r9
	xor	ebp, ebp
	mov	rbx, r15
	sub	rbx, rdi
	je	.label_425
	lea	rsi, [rbx + 1]
	call	xmemdup
	mov	rbp, rax
	mov	byte ptr [rbp + rbx], 0
.label_425:
	lea	rax, [r15 + 1]
	xor	ebx, ebx
	cmp	byte ptr [r15 + 1], 0
	cmovne	rbx, rax
	jmp	.label_431
.label_426:
	xor	r13d, r13d
	cmp	byte ptr [rdi], 0
	je	.label_433
	mov	qword ptr [rsp + 8], r9
	call	xstrdup
	mov	rbp, rax
	xor	ebx, ebx
.label_431:
	xor	r13d, r13d
	test	rbp, rbp
	mov	qword ptr [rsp + 0x30], r12
	mov	qword ptr [rsp + 0x28], r14
	je	.label_445
	cmp	byte ptr [rbp], 0x2b
	mov	qword ptr [rsp + 0x20], rbp
	je	.label_418
	mov	rdi, rbp
	call	getpwnam
	mov	rbp, qword ptr [rsp + 0x20]
	test	rax, rax
	je	.label_418
	mov	rax, qword ptr [rax + 0x10]
	xor	r13d, r13d
	test	r15, r15
	mov	qword ptr [rsp + 0x10], rax
	je	.label_424
	mov	r15, rbx
	test	r15, r15
	jne	.label_430
	mov	rbp, rax
	shr	rbp, 0x20
	mov	edi, ebp
	call	getgrgid
	test	rax, rax
	mov	qword ptr [rsp + 0x18], rbp
	je	.label_436
	mov	rdi, qword ptr [rax]
	jmp	.label_428
.label_418:
	mov	r14d, OFFSET FLAT:label_442
	xor	r13d, r13d
	test	r15, r15
	mov	r15, rbx
	je	.label_443
	test	r15, r15
	je	.label_416
.label_443:
	lea	rcx, [rsp + 0x40]
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:label_101
	mov	rdi, rbp
	call	xstrtoul
	test	eax, eax
	jne	.label_419
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, rax
	shr	rcx, 0x20
	jne	.label_419
	xor	r14d, r14d
	cmp	eax, -1
	jne	.label_427
.label_419:
	mov	r14d, OFFSET FLAT:label_420
	mov	rax, qword ptr [rsp + 0x10]
.label_427:
	xor	r13d, r13d
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_416
.label_445:
	xor	edi, edi
	xor	r14d, r14d
	mov	r15, rbx
	jmp	.label_434
.label_433:
	xor	edi, edi
	jmp	.label_438
.label_424:
	xor	r14d, r14d
	mov	r15, rbx
	jmp	.label_416
.label_436:
	lea	rsi, [rsp + 0x40]
	mov	rdi, rbp
	call	umaxtostr
	mov	rdi, rax
.label_428:
	call	xstrdup
	mov	r13, rax
	call	endgrent
.label_430:
	xor	r14d, r14d
.label_416:
	call	endpwent
	mov	rdi, qword ptr [rsp + 0x20]
.label_434:
	test	r15, r15
	je	.label_421
	test	r14, r14
	jne	.label_421
	mov	rbp, rdi
	cmp	byte ptr [r15], 0x2b
	je	.label_422
	mov	rdi, r15
	call	getgrnam
	test	rax, rax
	je	.label_422
	mov	ebx, dword ptr [rax + 0x10]
	xor	r14d, r14d
	jmp	.label_440
.label_421:
	mov	r9, qword ptr [rsp + 8]
	jmp	.label_429
.label_422:
	lea	rcx, [rsp + 0x40]
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:label_101
	mov	rdi, r15
	call	xstrtoul
	test	eax, eax
	jne	.label_439
	mov	rbx, qword ptr [rsp + 0x40]
	mov	rax, rbx
	shr	rax, 0x20
	jne	.label_439
	xor	r14d, r14d
	cmp	ebx, -1
	jne	.label_440
.label_439:
	mov	r14d, OFFSET FLAT:label_414
	mov	rbx, qword ptr [rsp + 0x18]
.label_440:
	call	endgrent
	mov	rdi, r15
	call	xstrdup
	mov	r13, rax
	mov	qword ptr [rsp + 0x18], rbx
	mov	r9, qword ptr [rsp + 8]
	mov	rdi, rbp
.label_429:
	test	r14, r14
	je	.label_441
	xor	ebx, ebx
	jmp	.label_423
.label_441:
	mov	r14, qword ptr [rsp + 0x28]
	mov	r12, qword ptr [rsp + 0x30]
.label_438:
	mov	rax, qword ptr [rsp + 0x38]
	mov	rcx, qword ptr [rsp + 0x10]
	mov	dword ptr [rax], ecx
	test	r12, r12
	je	.label_437
	mov	rax, qword ptr [rsp + 0x18]
	mov	dword ptr [r12], eax
.label_437:
	test	r14, r14
	je	.label_432
	mov	qword ptr [r14], rdi
	xor	edi, edi
.label_432:
	mov	bl, 1
	xor	r14d, r14d
	test	r9, r9
	je	.label_423
	mov	qword ptr [r9], r13
	xor	r14d, r14d
	xor	r13d, r13d
.label_423:
	call	free
	mov	rdi, r13
	call	free
	xor	eax, eax
	test	bl, bl
	jne	.label_444
	xor	edi, edi
	mov	edx, 5
	mov	rsi, r14
	call	dcgettext
.label_444:
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
	#Procedure 0x4058a3
	.globl sub_4058a3
	.type sub_4058a3, @function
sub_4058a3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4058b0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_446
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_448
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_446
.label_448:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_446
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_447
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_447:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_446:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	.section	.text
	.align	32
	#Procedure 0x405924
	.globl sub_405924
	.type sub_405924, @function
sub_405924:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405930
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
	#Procedure 0x405943
	.globl sub_405943
	.type sub_405943, @function
sub_405943:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4059b5
	.globl sub_4059b5
	.type sub_4059b5, @function
sub_4059b5:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4059c2
	.globl sub_4059c2
	.type sub_4059c2, @function
sub_4059c2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4059e6
	.globl sub_4059e6
	.type sub_4059e6, @function
sub_4059e6:

	nop	word ptr cs:[rax + rax]
