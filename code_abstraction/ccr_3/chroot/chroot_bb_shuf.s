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
	#Procedure 0x401956
	.globl sub_401956
	.type sub_401956, @function
sub_401956:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401960
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
	je	.label_9
	mov	qword ptr [rax], rbx
.label_9:
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
	#Procedure 0x401a4c
	.globl sub_401a4c
	.type sub_401a4c, @function
sub_401a4c:

	nop	dword ptr [rax]
.label_11:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401a55

	.globl xgetgroups
	.type xgetgroups, @function
xgetgroups:
	push	rbx
	call	mgetgroups
	mov	ebx, eax
	cmp	ebx, -1
	jne	.label_10
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	je	.label_11
.label_10:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x401a70

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
	je	.label_12
	cmp	r15, -2
	jb	.label_12
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_12
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_12:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x401ac6
	.globl sub_401ac6
	.type sub_401ac6, @function
sub_401ac6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401ad0
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
	#Procedure 0x401adf
	.globl sub_401adf
	.type sub_401adf, @function
sub_401adf:

	nop	
	.section	.text
	.align	32
	#Procedure 0x401ae0
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_13]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_14]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_15]
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
	#Procedure 0x401b4f
	.globl sub_401b4f
	.type sub_401b4f, @function
sub_401b4f:

	nop	
.label_19:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401b55
	.globl sub_401b55
	.type sub_401b55, @function
sub_401b55:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401b5e
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_20
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_17
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_21
.label_20:
	test	rcx, rcx
	jne	.label_16
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_16:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_19
.label_21:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_18
	test	rbx, rbx
	jne	.label_18
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_18:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_22
	test	rax, rax
	je	.label_17
.label_22:
	pop	rbx
	ret	
.label_17:
	call	xalloc_die
.label_23:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401bf5
	.globl sub_401bf5
	.type sub_401bf5, @function
sub_401bf5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401c03

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
	je	.label_24
	test	r15, r15
	je	.label_23
.label_24:
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
	.align	32
	#Procedure 0x401c40

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
	je	.label_47
	mov	ecx, dword ptr [r12]
.label_47:
	test	r14, r14
	je	.label_55
	mov	qword ptr [r14], 0
.label_55:
	test	r9, r9
	je	.label_56
	mov	qword ptr [r9], 0
.label_56:
	test	r15, r15
	mov	qword ptr [rsp + 0x38], rdx
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 0x18], rcx
	je	.label_57
	mov	qword ptr [rsp + 8], r9
	xor	ebp, ebp
	mov	rbx, r15
	sub	rbx, rdi
	je	.label_32
	lea	rsi, [rbx + 1]
	call	xmemdup
	mov	rbp, rax
	mov	byte ptr [rbp + rbx], 0
.label_32:
	lea	rax, [r15 + 1]
	xor	ebx, ebx
	cmp	byte ptr [r15 + 1], 0
	cmovne	rbx, rax
	jmp	.label_44
.label_57:
	xor	r13d, r13d
	cmp	byte ptr [rdi], 0
	je	.label_49
	mov	qword ptr [rsp + 8], r9
	call	xstrdup
	mov	rbp, rax
	xor	ebx, ebx
.label_44:
	xor	r13d, r13d
	test	rbp, rbp
	mov	qword ptr [rsp + 0x30], r12
	mov	qword ptr [rsp + 0x28], r14
	je	.label_46
	cmp	byte ptr [rbp], 0x2b
	mov	qword ptr [rsp + 0x20], rbp
	je	.label_27
	mov	rdi, rbp
	call	getpwnam
	mov	rbp, qword ptr [rsp + 0x20]
	test	rax, rax
	je	.label_27
	mov	rax, qword ptr [rax + 0x10]
	xor	r13d, r13d
	test	r15, r15
	mov	qword ptr [rsp + 0x10], rax
	je	.label_31
	mov	r15, rbx
	test	r15, r15
	jne	.label_40
	mov	rbp, rax
	shr	rbp, 0x20
	mov	edi, ebp
	call	getgrgid
	test	rax, rax
	mov	qword ptr [rsp + 0x18], rbp
	je	.label_48
	mov	rdi, qword ptr [rax]
	jmp	.label_51
.label_27:
	mov	r14d, OFFSET FLAT:label_37
	xor	r13d, r13d
	test	r15, r15
	mov	r15, rbx
	je	.label_38
	test	r15, r15
	je	.label_42
.label_38:
	lea	rcx, [rsp + 0x40]
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:label_36
	mov	rdi, rbp
	call	xstrtoul
	test	eax, eax
	jne	.label_29
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, rax
	shr	rcx, 0x20
	jne	.label_29
	xor	r14d, r14d
	cmp	eax, -1
	jne	.label_35
.label_29:
	mov	r14d, OFFSET FLAT:label_39
	mov	rax, qword ptr [rsp + 0x10]
.label_35:
	xor	r13d, r13d
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_42
.label_46:
	xor	edi, edi
	xor	r14d, r14d
	mov	r15, rbx
	jmp	.label_52
.label_49:
	xor	edi, edi
	jmp	.label_33
.label_31:
	xor	r14d, r14d
	mov	r15, rbx
	jmp	.label_42
.label_48:
	lea	rsi, [rsp + 0x40]
	mov	rdi, rbp
	call	umaxtostr
	mov	rdi, rax
.label_51:
	call	xstrdup
	mov	r13, rax
	call	endgrent
.label_40:
	xor	r14d, r14d
.label_42:
	call	endpwent
	mov	rdi, qword ptr [rsp + 0x20]
.label_52:
	test	r15, r15
	je	.label_25
	test	r14, r14
	jne	.label_25
	mov	rbp, rdi
	cmp	byte ptr [r15], 0x2b
	je	.label_26
	mov	rdi, r15
	call	getgrnam
	test	rax, rax
	je	.label_26
	mov	ebx, dword ptr [rax + 0x10]
	xor	r14d, r14d
	jmp	.label_41
.label_25:
	mov	r9, qword ptr [rsp + 8]
	jmp	.label_28
.label_26:
	lea	rcx, [rsp + 0x40]
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:label_36
	mov	rdi, r15
	call	xstrtoul
	test	eax, eax
	jne	.label_50
	mov	rbx, qword ptr [rsp + 0x40]
	mov	rax, rbx
	shr	rax, 0x20
	jne	.label_50
	xor	r14d, r14d
	cmp	ebx, -1
	jne	.label_41
.label_50:
	mov	r14d, OFFSET FLAT:label_54
	mov	rbx, qword ptr [rsp + 0x18]
.label_41:
	call	endgrent
	mov	rdi, r15
	call	xstrdup
	mov	r13, rax
	mov	qword ptr [rsp + 0x18], rbx
	mov	r9, qword ptr [rsp + 8]
	mov	rdi, rbp
.label_28:
	test	r14, r14
	je	.label_43
	xor	ebx, ebx
	jmp	.label_30
.label_43:
	mov	r14, qword ptr [rsp + 0x28]
	mov	r12, qword ptr [rsp + 0x30]
.label_33:
	mov	rax, qword ptr [rsp + 0x38]
	mov	rcx, qword ptr [rsp + 0x10]
	mov	dword ptr [rax], ecx
	test	r12, r12
	je	.label_34
	mov	rax, qword ptr [rsp + 0x18]
	mov	dword ptr [r12], eax
.label_34:
	test	r14, r14
	je	.label_45
	mov	qword ptr [r14], rdi
	xor	edi, edi
.label_45:
	mov	bl, 1
	xor	r14d, r14d
	test	r9, r9
	je	.label_30
	mov	qword ptr [r9], r13
	xor	r14d, r14d
	xor	r13d, r13d
.label_30:
	call	free
	mov	rdi, r13
	call	free
	xor	eax, eax
	test	bl, bl
	jne	.label_53
	xor	edi, edi
	mov	edx, 5
	mov	rsi, r14
	call	dcgettext
.label_53:
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
	#Procedure 0x401f03
	.globl sub_401f03
	.type sub_401f03, @function
sub_401f03:

	nop	word ptr cs:[rax + rax]
.label_63:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	.section	.text
	.align	32
	#Procedure 0x401f1b

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_61
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_59
	cmp	dword ptr [rbp], 0x20
	jne	.label_59
.label_61:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_63
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_59:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_64
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_62
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_58
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_62:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_60
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401fd0

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
	je	.label_66
	mov	esi, 0x3a
	mov	rdi, r13
	call	strchr
	mov	r14, rax
.label_66:
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
	je	.label_65
	test	r14, r14
	jne	.label_65
	test	rbp, rbp
	je	.label_65
	mov	esi, 0x2e
	mov	rdi, r13
	call	strchr
	test	rax, rax
	je	.label_65
	mov	rdi, r13
	mov	rsi, rax
	mov	rdx, r12
	mov	rcx, rbx
	mov	r8, r15
	mov	r9, qword ptr [rsp]
	call	parse_with_separator
	test	rax, rax
	cmovne	rax, rbp
	jmp	.label_67
.label_65:
	mov	rax, rbp
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
	#Procedure 0x402074
	.globl sub_402074
	.type sub_402074, @function
sub_402074:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402080

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_68
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_70
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_68
.label_70:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_68
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_69
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_69:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_68:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	.section	.text
	.align	32
	#Procedure 0x4020f4
	.globl sub_4020f4
	.type sub_4020f4, @function
sub_4020f4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402100
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x40210e
	.globl sub_40210e
	.type sub_40210e, @function
sub_40210e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402110

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
	js	.label_74
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_77
	cmp	r12d, 0x7fffffff
	je	.label_72
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
	jne	.label_75
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_75:
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
.label_77:
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
	jbe	.label_73
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_76
.label_73:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_71
	mov	rdi, r14
	call	free
.label_71:
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
.label_76:
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
.label_74:
	call	abort
.label_72:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4022cd
	.globl sub_4022cd
	.type sub_4022cd, @function
sub_4022cd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4022d0
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
	#Procedure 0x402391
	.globl sub_402391
	.type sub_402391, @function
sub_402391:

	nop	word ptr cs:[rax + rax]
.label_78:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4023a5
	.globl sub_4023a5
	.type sub_4023a5, @function
sub_4023a5:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4023ad
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
	je	.label_78
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
	.section	.text
	.align	32
	#Procedure 0x402410
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_79
	call	rpl_calloc
	test	rax, rax
	je	.label_79
	pop	rcx
	ret	
.label_79:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402436
	.globl sub_402436
	.type sub_402436, @function
sub_402436:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402440
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
	#Procedure 0x40244f
	.globl sub_40244f
	.type sub_40244f, @function
sub_40244f:

	nop	
.label_80:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x402455
	.globl sub_402455
	.type sub_402455, @function
sub_402455:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40245b
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_13]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_14]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_15]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_80
	test	rdx, rdx
	je	.label_80
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_81:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4024c5
	.globl sub_4024c5
	.type sub_4024c5, @function
sub_4024c5:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4024c9

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
	je	.label_82
	test	r15, r15
	je	.label_81
.label_82:
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
	.align	32
	#Procedure 0x402500

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
	je	.label_83
	mov	edx, OFFSET FLAT:label_93
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_99
.label_83:
	mov	edx, OFFSET FLAT:label_100
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_99:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_86
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
	mov	esi, OFFSET FLAT:label_101
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_88
	jmp	qword ptr [(r12 * 8) + label_89]
.label_540:
	add	rsp, 8
	jmp	.label_87
.label_88:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_96
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
	jmp	.label_87
.label_541:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_84
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
.label_542:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_97
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
.label_543:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_94
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
.label_544:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_91
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
	jmp	.label_87
.label_545:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_90
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
	jmp	.label_87
.label_546:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_92
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
	jmp	.label_87
.label_547:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_95
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
	jmp	.label_87
.label_549:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_98
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
	jmp	.label_87
.label_548:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_85
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
.label_87:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x402858
	.globl sub_402858
	.type sub_402858, @function
sub_402858:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402860
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_13]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_14]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_15]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_102
	test	rdx, rdx
	je	.label_102
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_102:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4028ce
	.globl sub_4028ce
	.type sub_4028ce, @function
sub_4028ce:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4028d0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x4028d8
	.globl sub_4028d8
	.type sub_4028d8, @function
sub_4028d8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4028e0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_103
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_103
	test	byte ptr [rbx + 1], 1
	je	.label_103
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_103:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	32
	#Procedure 0x402913
	.globl sub_402913
	.type sub_402913, @function
sub_402913:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402920

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_104
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_104:
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
	#Procedure 0x4029a3
	.globl sub_4029a3
	.type sub_4029a3, @function
sub_4029a3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4029b0
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_13]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_14]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_15]
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
	#Procedure 0x402a1e
	.globl sub_402a1e
	.type sub_402a1e, @function
sub_402a1e:

	nop	
.label_109:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_105
	mov	qword ptr [rsi], rbx
.label_107:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_106
	test	rax, rax
	je	.label_105
.label_106:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x402a48
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_109
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_108
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_107
	call	free
	xor	eax, eax
	jmp	.label_106
.label_108:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402a7f
	.globl sub_402a7f
	.type sub_402a7f, @function
sub_402a7f:

	nop	word ptr cs:[rax + rax]
.label_105:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402a90
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x402a9a
	.globl sub_402a9a
	.type sub_402a9a, @function
sub_402a9a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402aa0
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
	je	.label_110
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
.label_110:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x402b35
	.globl sub_402b35
	.type sub_402b35, @function
sub_402b35:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402b40
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
	#Procedure 0x402b73
	.globl sub_402b73
	.type sub_402b73, @function
sub_402b73:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402b80
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x402b91
	.globl sub_402b91
	.type sub_402b91, @function
sub_402b91:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402ba0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_111
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_112
	test	rax, rax
	je	.label_111
.label_112:
	pop	rbx
	ret	
.label_111:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402bd5
	.globl sub_402bd5
	.type sub_402bd5, @function
sub_402bd5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402be0

	.globl umaxtostr
	.type umaxtostr, @function
umaxtostr:
	mov	rcx, rdi
	mov	byte ptr [rsi + 0x14], 0
	add	rsi, 0x14
	movabs	r8, 0xcccccccccccccccd
	nop	word ptr cs:[rax + rax]
.label_113:
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
	ja	.label_113
	mov	rax, rsi
	ret	
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
	je	.label_121
	mov	dword ptr [rsp + 0xc], 0xa
	xor	edi, edi
	mov	esi, 0x28
	call	realloc
	mov	rbp, rax
	mov	r14d, 0xffffffff
	test	rbp, rbp
	je	.label_115
	mov	qword ptr [rsp + 0x10], r12
	mov	r12d, 0xa
	lea	r15, [rsp + 0xc]
	jmp	.label_129
	.section	.text
	.align	32
	#Procedure 0x402c88
	.globl sub_402c88
	.type sub_402c88, @function
sub_402c88:

	nop	dword ptr [rax + rax]
.label_127:
	mov	r12d, dword ptr [rsp + 0xc]
	mov	rbp, rax
.label_129:
	mov	rdi, rbx
	mov	esi, r13d
	mov	rdx, rbp
	mov	rcx, r15
	call	getgrouplist
	mov	r14d, eax
	mov	eax, dword ptr [rsp + 0xc]
	test	r14d, r14d
	jns	.label_122
	cmp	r12d, eax
	jne	.label_122
	add	r12d, r12d
	mov	dword ptr [rsp + 0xc], r12d
	mov	eax, r12d
.label_122:
	test	eax, eax
	js	.label_118
	movsxd	rsi, eax
	shl	rsi, 2
	mov	rdi, rbp
	call	realloc
	test	rax, rax
	je	.label_126
	test	r14d, r14d
	js	.label_127
	mov	rcx, qword ptr [rsp + 0x10]
	mov	qword ptr [rcx], rax
	mov	r14d, dword ptr [rsp + 0xc]
	jmp	.label_115
.label_121:
	xor	edi, edi
	xor	esi, esi
	call	getgroups
	mov	dword ptr [rsp + 0xc], eax
	test	eax, eax
	js	.label_114
	cmp	r13d, -1
	jne	.label_116
	test	eax, eax
	mov	ebx, eax
	jne	.label_117
.label_116:
	lea	ebx, [rax + 1]
	mov	dword ptr [rsp + 0xc], ebx
	cmp	eax, -2
	jg	.label_117
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_120
.label_117:
	movsxd	rsi, ebx
	shl	rsi, 2
	xor	edi, edi
	call	realloc
	mov	r15, rax
	mov	r14d, 0xffffffff
	test	r15, r15
	je	.label_115
	xor	eax, eax
	cmp	r13d, -1
	setne	al
	sub	ebx, eax
	lea	rsi, [r15 + rax*4]
	mov	edi, ebx
	call	getgroups
	test	eax, eax
	js	.label_128
	cmp	r13d, -1
	mov	r14d, eax
	je	.label_130
	mov	dword ptr [r15], r13d
	inc	eax
	mov	r14d, eax
.label_130:
	mov	qword ptr [r12], r15
	cmp	r14d, 2
	jl	.label_115
	movsxd	rax, r14d
	lea	rax, [r15 + rax*4]
	mov	rcx, r15
	add	rcx, 4
	cmp	rcx, rax
	jae	.label_115
	mov	edx, dword ptr [r15]
	mov	esi, edx
	nop	word ptr cs:[rax + rax]
.label_125:
	mov	edi, dword ptr [rcx]
	cmp	edi, edx
	je	.label_123
	cmp	edi, esi
	jne	.label_124
.label_123:
	dec	r14d
	add	rcx, 4
	cmp	rcx, rax
	jb	.label_125
	jmp	.label_115
.label_124:
	mov	dword ptr [r15 + 4], edi
	add	r15, 4
	add	rcx, 4
	cmp	rcx, rax
	mov	esi, edi
	jb	.label_125
	jmp	.label_115
.label_114:
	call	__errno_location
	mov	r14d, 0xffffffff
	cmp	dword ptr [rax], 0x26
	jne	.label_115
	xor	edi, edi
	mov	esi, 4
	call	realloc
	test	rax, rax
	je	.label_115
	mov	qword ptr [r12], rax
	mov	dword ptr [rax], r13d
	xor	r14d, r14d
	cmp	r13d, -1
	setne	r14b
	jmp	.label_115
.label_118:
	call	__errno_location
	mov	rbx, rax
	mov	dword ptr [rbx], 0xc
	jmp	.label_119
.label_126:
	call	__errno_location
	mov	rbx, rax
.label_119:
	mov	r14d, dword ptr [rbx]
	mov	rdi, rbp
	call	free
	mov	dword ptr [rbx], r14d
.label_120:
	mov	r14d, 0xffffffff
.label_115:
	mov	eax, r14d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_128:
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	mov	rdi, r15
	call	free
	mov	dword ptr [rbx], ebp
	jmp	.label_115
	.section	.text
	.align	32
	#Procedure 0x402e76
	.globl sub_402e76
	.type sub_402e76, @function
sub_402e76:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402e80

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
	#Procedure 0x402e99
	.globl sub_402e99
	.type sub_402e99, @function
sub_402e99:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402ea0

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
	jne	.label_132
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_131
	test	cl, cl
	jne	.label_131
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_131
.label_132:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_131
	call	__errno_location
	mov	dword ptr [rax], 0
.label_131:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402f00

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_133
	test	rsi, rsi
	mov	ecx, 1
	je	.label_134
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_134
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_133:
	mov	ecx, 1
.label_134:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	32
	#Procedure 0x402f4b
	.globl sub_402f4b
	.type sub_402f4b, @function
sub_402f4b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402f50

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_135
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_58
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x402f80

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_13]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_14]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_15]
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
	#Procedure 0x402fd5
	.globl sub_402fd5
	.type sub_402fd5, @function
sub_402fd5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402fe0

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
	mov	esi, OFFSET FLAT:label_36
	call	setlocale
	mov	edi, OFFSET FLAT:label_153
	mov	esi, OFFSET FLAT:label_154
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_153
	call	textdomain
	mov	dword ptr [rip + exit_failure],  0x7d
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	xor	eax, eax
	mov	qword ptr [rsp + 0x28], rax
	xor	r15d, r15d
	xor	ebx, ebx
	jmp	.label_168
.label_188:
	mov	al, 1
	mov	qword ptr [rsp + 0x28], rax
	nop	
.label_168:
	mov	edx, OFFSET FLAT:label_176
	mov	ecx, OFFSET FLAT:long_opts
	xor	r8d, r8d
	mov	edi, ebp
	mov	rsi, r12
	call	getopt_long
	cmp	eax, 0xff
	jle	.label_185
	cmp	eax, 0x100
	je	.label_186
	cmp	eax, 0x102
	je	.label_188
	cmp	eax, 0x101
	jne	.label_151
	mov	rbx, qword ptr [rip + optarg]
	mov	rdi, rbx
	call	strlen
	test	rax, rax
	je	.label_168
	cmp	byte ptr [rbx + rax - 1], 0x3a
	jne	.label_168
	mov	byte ptr [rbx + rax - 1], 0
	jmp	.label_168
.label_186:
	mov	r15, qword ptr [rip + optarg]
	jmp	.label_168
.label_185:
	cmp	eax, -1
	jne	.label_195
	mov	qword ptr [rsp + 0x30], rbx
	movsxd	rax, dword ptr [rip + optind]
	cmp	eax, ebp
	jge	.label_200
	mov	r13, qword ptr [r12 + rax*8]
	mov	rdi, r13
	call	canonicalize_file_name
	test	rax, rax
	je	.label_204
	movzx	edx, byte ptr [rax]
	mov	ecx, 0x2f
	sub	ecx, edx
	jne	.label_136
	movzx	ecx, byte ptr [rax + 1]
	neg	ecx
.label_136:
	test	ecx, ecx
	sete	bl
	jmp	.label_142
.label_204:
	xor	ebx, ebx
.label_142:
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rsp + 0x28]
	test	al, al
	je	.label_149
	test	bl, bl
	je	.label_152
.label_149:
	xor	r14d, r14d
	test	bl, bl
	jne	.label_159
	mov	rdi, qword ptr [rsp + 0x30]
	test	rdi, rdi
	je	.label_164
	lea	rsi, [rsp + 0xc]
	lea	rdx, [rsp + 8]
	xor	ecx, ecx
	xor	r8d, r8d
	call	parse_user_spec
.label_164:
	mov	edi, dword ptr [rsp + 0xc]
	xor	ecx, ecx
	cmp	edi, -1
	mov	rbx, r15
	je	.label_169
	xor	ecx, ecx
	test	rbx, rbx
	je	.label_174
	cmp	dword ptr [rsp + 8], -1
	jne	.label_178
.label_174:
	call	getpwuid
	xor	ecx, ecx
	test	rax, rax
	je	.label_169
	cmp	dword ptr [rsp + 8], -1
	jne	.label_184
	mov	ecx, dword ptr [rax + 0x14]
	mov	dword ptr [rsp + 8], ecx
.label_184:
	mov	rcx, qword ptr [rax]
.label_169:
	test	rbx, rbx
	je	.label_189
.label_178:
	mov	rdi, rbx
	mov	r14, rcx
	cmp	byte ptr [rdi], 0
	je	.label_159
	lea	rsi, [rsp + 0x20]
	lea	rdx, [rsp + 0x10]
	xor	ecx, ecx
	call	parse_additional_groups
	jmp	.label_159
.label_189:
	test	rcx, rcx
	je	.label_192
	mov	esi, dword ptr [rsp + 8]
	cmp	esi, -1
	je	.label_192
	lea	rdx, [rsp + 0x20]
	mov	r14, rcx
	mov	rdi, rcx
	call	xgetgroups
	test	eax, eax
	jle	.label_159
	cdqe	
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_159
.label_192:
	mov	r14, rcx
.label_159:
	mov	rdi, r13
	call	chroot
	test	eax, eax
	jne	.label_201
	mov	rax, qword ptr [rsp + 0x28]
	test	al, al
	jne	.label_203
	mov	edi, OFFSET FLAT:label_137
	call	chdir
	test	eax, eax
	jne	.label_140
.label_203:
	movsxd	rax, dword ptr [rip + optind]
	inc	rax
	cmp	eax, ebp
	mov	rbp, qword ptr [rsp + 0x30]
	jne	.label_175
	mov	edi, OFFSET FLAT:label_150
	call	getenv
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_156
	cmovne	rcx, rax
	mov	qword ptr [r12], rcx
	mov	eax, OFFSET FLAT:label_157
	movq	xmm0, rax
	movups	xmmword ptr [r12 + 8], xmm0
	jmp	.label_158
.label_175:
	lea	r12, [r12 + rax*8]
.label_158:
	test	rbp, rbp
	je	.label_177
	lea	rsi, [rsp + 0xc]
	lea	rdx, [rsp + 8]
	xor	ecx, ecx
	xor	r8d, r8d
	mov	rdi, rbp
	call	parse_user_spec
	mov	rbp, rax
	test	rbp, rbp
	je	.label_177
	mov	edi, dword ptr [rsp + 0xc]
	cmp	edi, -1
	jne	.label_202
	cmp	dword ptr [rsp + 8], -1
	je	.label_182
.label_177:
	mov	edi, dword ptr [rsp + 0xc]
	cmp	edi, -1
	je	.label_183
.label_202:
	test	r15, r15
	je	.label_155
	cmp	dword ptr [rsp + 8], -1
	je	.label_155
	mov	rbp, qword ptr [rsp + 0x20]
	mov	qword ptr [rsp + 0x18], 0
	jmp	.label_190
.label_155:
	call	getpwuid
	test	rax, rax
	mov	ecx, dword ptr [rsp + 8]
	je	.label_166
	cmp	ecx, -1
	jne	.label_181
	mov	ecx, dword ptr [rax + 0x14]
	mov	dword ptr [rsp + 8], ecx
.label_181:
	mov	r14, qword ptr [rax]
	jmp	.label_183
.label_166:
	cmp	ecx, -1
	je	.label_145
.label_183:
	mov	rbp, qword ptr [rsp + 0x20]
	mov	qword ptr [rsp + 0x18], 0
	test	r15, r15
	je	.label_199
.label_190:
	cmp	byte ptr [r15], 0
	je	.label_144
	xor	ecx, ecx
	cmp	qword ptr [rsp + 0x10], 0
	sete	cl
	lea	rsi, [rsp + 0x18]
	lea	rdx, [rsp + 0x10]
	mov	rdi, r15
	call	parse_additional_groups
	test	eax, eax
	je	.label_170
	mov	ebx, 0x7d
	cmp	qword ptr [rsp + 0x10], 0
	jne	.label_144
	jmp	.label_148
.label_199:
	test	r14, r14
	je	.label_143
	mov	esi, dword ptr [rsp + 8]
	cmp	esi, -1
	je	.label_143
	lea	rdx, [rsp + 0x18]
	mov	rdi, r14
	call	xgetgroups
	test	eax, eax
	jle	.label_165
	cdqe	
	mov	qword ptr [rsp + 0x10], rax
	mov	rbp, qword ptr [rsp + 0x18]
	jmp	.label_143
.label_170:
	mov	rbp, qword ptr [rsp + 0x18]
	jmp	.label_144
.label_165:
	cmp	qword ptr [rsp + 0x10], 0
	je	.label_141
.label_143:
	cmp	dword ptr [rsp + 0xc], -1
	je	.label_171
.label_144:
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, rbp
	call	setgroups
	test	eax, eax
	jne	.label_180
.label_171:
	mov	rdi, qword ptr [rsp + 0x18]
	call	free
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	mov	edi, dword ptr [rsp + 8]
	cmp	edi, -1
	je	.label_160
	call	setgid
	test	eax, eax
	jne	.label_198
.label_160:
	mov	edi, dword ptr [rsp + 0xc]
	cmp	edi, -1
	je	.label_191
	call	setuid
	test	eax, eax
	jne	.label_193
.label_191:
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
	mov	esi, OFFSET FLAT:label_196
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
.label_148:
	mov	eax, ebx
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_195:
	cmp	eax, 0xffffff7d
	je	.label_147
	cmp	eax, 0xffffff7e
	jne	.label_151
	xor	edi, edi
	call	usage
.label_147:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	esi, OFFSET FLAT:label_161
	mov	edx, OFFSET FLAT:label_162
	mov	r8d, OFFSET FLAT:label_163
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_200:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_172
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
.label_152:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_187
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	esi, OFFSET FLAT:label_137
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	edi, 0x7d
	call	usage
.label_201:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_197
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
.label_151:
	mov	edi, 0x7d
	call	usage
.label_180:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_146
	jmp	.label_139
.label_198:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_138
	jmp	.label_139
.label_193:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_173
	jmp	.label_139
.label_140:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_167
.label_139:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 0x7d
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_182:
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	edi, 0x7d
	mov	edx, OFFSET FLAT:label_58
	xor	eax, eax
	mov	rcx, rbp
	call	error
.label_145:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_179
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	ecx, dword ptr [rsp + 0xc]
	mov	edi, 0x7d
	xor	eax, eax
	mov	esi, ebx
	call	error
.label_141:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_194
	jmp	.label_139
	.section	.text
	.align	32
	#Procedure 0x4035cb
	.globl sub_4035cb
	.type sub_4035cb, @function
sub_4035cb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4035d0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_13]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_14]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_15]
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
	#Procedure 0x403624
	.globl sub_403624
	.type sub_403624, @function
sub_403624:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403630
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
	je	.label_205
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
.label_205:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403691
	.globl sub_403691
	.type sub_403691, @function
sub_403691:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4036a0
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x4036aa
	.globl sub_4036aa
	.type sub_4036aa, @function
sub_4036aa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4036b0

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
	jmp	.label_281
	.section	.text
	.align	32
	#Procedure 0x40375f
	.globl sub_40375f
	.type sub_40375f, @function
sub_40375f:

	nop	
.label_318:
	cmp	r8d, 2
	setne	al
	cmp	byte ptr [rsp + 0xf], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa8]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x34]
	mov	rsi, qword ptr [rsp + 0xc0]
	je	.label_304
	or	al, dl
	jne	.label_304
	test	dil, 1
	jne	.label_317
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_304
	test	rbp, rbp
	mov	r15d, r8d
	mov	al, bl
	mov	qword ptr [rsp + 0x48], rcx
	mov	r12d, esi
	mov	r13, qword ptr [rsp + 0x68]
	je	.label_281
	jmp	.label_304
.label_536:
	mov	r8d, 5
	test	r12b, 1
	jne	.label_323
	test	rbp, rbp
	je	.label_326
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax], 0x22
.label_326:
	mov	r14d, 1
	jmp	.label_329
.label_537:
	mov	r13b, 1
	mov	r8d, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_214
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	sil, 1
	jmp	.label_277
.label_323:
	xor	r14d, r14d
.label_329:
	mov	eax, OFFSET FLAT:label_214
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	r13b, 1
	jmp	.label_215
	.section	.text
	.align	32
	#Procedure 0x40382f
	.globl sub_40382f
	.type sub_40382f, @function
sub_40382f:

	nop	
.label_281:
	mov	rbp, r13
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_226
	mov	r8d, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	jmp	qword ptr [(rcx * 8) + label_316]
.label_538:
	mov	r14d, edi
	mov	edi, OFFSET FLAT:label_242
	mov	esi, r15d
	mov	ebx, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x80], rax
	mov	edi, OFFSET FLAT:label_248
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebx
	mov	edi, r14d
	mov	qword ptr [rsp + 0x78], rax
.label_539:
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x80]
	jne	.label_246
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_246
	xor	r14d, r14d
	nop	
.label_270:
	cmp	r14, rbp
	jae	.label_238
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], al
.label_238:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_270
.label_246:
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
	jmp	.label_277
.label_531:
	xor	r8d, r8d
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_277
.label_534:
	mov	al, 1
.label_532:
	mov	r12b, 1
.label_535:
	test	r12b, 1
	mov	cl, 1
	je	.label_290
	mov	ecx, eax
.label_290:
	mov	al, cl
.label_533:
	mov	r8d, 2
	test	r12b, 1
	jne	.label_293
	test	rbp, rbp
	je	.label_299
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx], 0x27
.label_299:
	mov	r14d, 1
	jmp	.label_321
.label_293:
	xor	r14d, r14d
.label_321:
	mov	ecx, OFFSET FLAT:label_248
	mov	qword ptr [rsp + 0x58], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x50], rcx
	mov	r13d, eax
.label_215:
	mov	sil, r12b
.label_277:
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
	jmp	.label_308
	.section	.text
	.align	32
	#Procedure 0x4039f1
	.globl sub_4039f1
	.type sub_4039f1, @function
sub_4039f1:

	nop	word ptr cs:[rax + rax]
.label_258:
	inc	r12
.label_308:
	cmp	r11, -1
	je	.label_208
	cmp	r12, r11
	jne	.label_210
	jmp	.label_213
	.section	.text
	.align	32
	#Procedure 0x403a13
	.globl sub_403a13
	.type sub_403a13, @function
sub_403a13:

	nop	word ptr cs:[rax + rax]
.label_208:
	mov	rcx, -1
	cmp	byte ptr [r10 + r12], 0
	je	.label_207
.label_210:
	cmp	byte ptr [rsp + 0x37], 0
	je	.label_227
	mov	rax, qword ptr [rsp + 0x50]
	lea	rbx, [r12 + rax]
	cmp	rax, 2
	jb	.label_232
	cmp	r11, -1
	jne	.label_232
	mov	r15d, edi
	mov	rdi, r10
	mov	r13d, r9d
	call	strlen
	mov	r9d, r13d
	mov	r8, qword ptr [rsp + 0x38]
	mov	edi, r15d
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_232:
	cmp	rbx, r11
	jbe	.label_247
.label_227:
	xor	esi, esi
.label_269:
	movzx	r15d, byte ptr [r10 + r12]
	cmp	r15, 0x7e
	ja	.label_250
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_254]
.label_557:
	test	r12, r12
	jne	.label_263
	jmp	.label_224
	.section	.text
	.align	32
	#Procedure 0x403aa6
	.globl sub_403aa6
	.type sub_403aa6, @function
sub_403aa6:

	nop	word ptr cs:[rax + rax]
.label_247:
	mov	r13d, r9d
	mov	r15d, edi
	mov	rbx, r11
	lea	rdi, [r10 + r12]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	rdx, qword ptr [rsp + 0x50]
	call	memcmp
	test	eax, eax
	sete	sil
	jne	.label_266
	cmp	byte ptr [rsp + 0xf], 0
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	je	.label_269
	jmp	.label_206
.label_266:
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	jmp	.label_269
.label_561:
	xor	eax, eax
	cmp	r11, -1
	je	.label_284
	test	r12, r12
	jne	.label_288
	cmp	r11, 1
	je	.label_224
	xor	r13d, r13d
	jmp	.label_237
.label_550:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_295
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_206
	cmp	r8d, 2
	jne	.label_300
	mov	eax, r9d
	and	al, 1
	jne	.label_300
	cmp	r14, rbp
	jae	.label_302
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_302:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_305
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_305:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_310
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_310:
	add	r14, 3
	mov	r9b, 1
.label_300:
	mov	rcx, r14
	cmp	rcx, rbp
	jae	.label_315
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + rcx], 0x5c
.label_315:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r8d, 2
	je	.label_253
	lea	rdx, [r12 + 1]
	cmp	rdx, r11
	jae	.label_253
	mov	dl, byte ptr [r10 + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_253
	cmp	r14, rbp
	jae	.label_276
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x30
.label_276:
	lea	rdx, [rcx + 2]
	cmp	rdx, rbp
	jae	.label_220
	mov	ebx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rdx], 0x30
	mov	esi, ebx
.label_220:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_237
.label_551:
	mov	bl, 0x62
	jmp	.label_209
.label_552:
	mov	cl, 0x74
	jmp	.label_212
.label_553:
	mov	bl, 0x76
	jmp	.label_209
.label_554:
	mov	bl, 0x66
	jmp	.label_209
.label_555:
	mov	cl, 0x72
	jmp	.label_212
.label_558:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa8], rax
	cmp	r8d, 2
	jne	.label_223
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_233
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
	jae	.label_235
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_235:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_251
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x5c
.label_251:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_256
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_256:
	add	r14, 3
	xor	r9d, r9d
.label_223:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_237
.label_559:
	mov	r15b, 0x3f
	cmp	r8d, 5
	je	.label_259
	cmp	r8d, 2
	jne	.label_263
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_263
	jmp	.label_233
.label_560:
	cmp	r8d, 2
	jne	.label_272
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_233
	mov	r15b, 0x5c
	xor	eax, eax
	jmp	.label_291
.label_250:
	cmp	qword ptr [rsp + 0xb8], 1
	mov	qword ptr [rsp + 0xa0], rbp
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	mov	dword ptr [rsp + 0x94], esi
	jne	.label_280
	mov	qword ptr [rsp + 0x48], r11
	call	__ctype_b_loc
	mov	r10, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	ebx, 1
	jmp	.label_292
.label_284:
	test	r12, r12
	jne	.label_301
	mov	cl, byte ptr [r10 + 1]
	test	cl, cl
	jne	.label_301
.label_224:
	mov	dl, 1
.label_556:
	cmp	byte ptr [rsp + 0x27], 0
	je	.label_233
	xor	eax, eax
	mov	r13b, dl
.label_237:
	cmp	byte ptr [rsp + 0x36], 0
	je	.label_309
	cmp	qword ptr [rsp + 0x100], 0
	jne	.label_311
	jmp	.label_312
	.section	.text
	.align	32
	#Procedure 0x403d84
	.globl sub_403d84
	.type sub_403d84, @function
sub_403d84:

	nop	word ptr cs:[rax + rax]
.label_309:
	cmp	byte ptr [rsp + 0x35], 0
	je	.label_312
.label_311:
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	ebx, esi
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_314
	mov	rcx, qword ptr [rsp + 0x100]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_320
	.section	.text
	.align	32
	#Procedure 0x403dbd
	.globl sub_403dbd
	.type sub_403dbd, @function
sub_403dbd:

	nop	dword ptr [rax]
.label_312:
	test	sil, sil
.label_320:
	mov	ebx, r15d
	je	.label_216
	jmp	.label_325
.label_314:
	mov	ebx, r15d
	jmp	.label_325
.label_295:
	cmp	dword ptr [rsp + 0x9c], 0
	jne	.label_258
	xor	r15d, r15d
	jmp	.label_263
.label_272:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x32], 0
	je	.label_212
	xor	eax, eax
	mov	r15b, 0x5c
.label_291:
	xor	r13d, r13d
	jmp	.label_216
.label_212:
	cmp	byte ptr [rsp + 0x27], 0
	mov	ebx, ecx
	je	.label_233
.label_209:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1f], 0
	mov	r13d, 0
	je	.label_237
	nop	
.label_325:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_206
	cmp	r8d, 2
	jne	.label_225
	mov	eax, r9d
	and	al, 1
	jne	.label_225
	cmp	r14, rbp
	jae	.label_231
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_231:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_236
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_236:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_240
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_240:
	add	r14, 3
	mov	r9b, 1
.label_225:
	cmp	r14, rbp
	jae	.label_257
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_257:
	inc	r14
	jmp	.label_283
.label_280:
	mov	qword ptr [rsp + 0x70], 0
	cmp	r11, -1
	jne	.label_255
	mov	rdi, r10
	call	strlen
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_255:
	cmp	byte ptr [rsp + 0x31], 0
	mov	qword ptr [rsp + 0x48], r11
	mov	qword ptr [rsp + 0x88], r12
	je	.label_331
	lea	rax, [r10 + r12]
	mov	qword ptr [rsp + 0xb0], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbp, [rsp + 0x70]
.label_289:
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
	je	.label_273
	cmp	rbx, -1
	mov	r10, qword ptr [rsp + 0x28]
	movabs	rsi, 0x20000002b
	je	.label_285
	test	rbx, rbx
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_282
	cmp	rbx, 2
	mov	rbp, qword ptr [rsp + 0xa0]
	jb	.label_297
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax]
.label_327:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_228
	bt	rsi, rdx
	jb	.label_233
.label_228:
	inc	rcx
	cmp	rcx, rbx
	jb	.label_327
.label_297:
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	jne	.label_313
	xor	r13d, r13d
.label_313:
	lea	rbp, [rsp + 0x70]
	mov	r12, qword ptr [rsp + 0x40]
	add	r12, rbx
	mov	rdi, rbp
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_289
	jmp	.label_287
.label_253:
	xor	r13d, r13d
	jmp	.label_237
.label_301:
	mov	r11, -1
	xor	r13d, r13d
	jmp	.label_237
.label_259:
	cmp	dword ptr [rsp + 0x98], 0
	je	.label_263
	lea	rcx, [r12 + 2]
	cmp	rcx, r11
	jae	.label_263
	cmp	byte ptr [r10 + r12 + 1], 0x3f
	jne	.label_263
	movsx	edx, byte ptr [r10 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_332
	mov	ebx, esi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_230
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_219
	cmp	r14, rbp
	jae	.label_221
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x3f
.label_221:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_229
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_229:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_241
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_241:
	lea	rax, [r14 + 3]
	cmp	rax, rbp
	jae	.label_217
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x3f
.label_217:
	add	r14, 4
	xor	eax, eax
	mov	r12, rcx
	mov	r15b, dl
.label_230:
	xor	r13d, r13d
	mov	esi, ebx
	jmp	.label_237
.label_263:
	xor	eax, eax
.label_288:
	xor	r13d, r13d
	jmp	.label_237
.label_331:
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbx, [rsp + 0x70]
	nop	word ptr cs:[rax + rax]
.label_275:
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
	je	.label_267
	cmp	rbp, -1
	je	.label_271
	cmp	rbp, -2
	je	.label_273
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	mov	r12, qword ptr [rsp + 0x40]
	jne	.label_278
	xor	r13d, r13d
.label_278:
	add	r12, rbp
	lea	rbx, [rsp + 0x70]
	mov	rdi, rbx
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_275
	jmp	.label_287
.label_273:
	mov	r10, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x40]
	lea	rax, [rsi + r12]
	mov	rdx, qword ptr [rsp + 0x48]
	cmp	rax, rdx
	jae	.label_296
	lea	rax, [r10 + r12]
.label_261:
	cmp	byte ptr [rax + rsi], 0
	je	.label_296
	lea	rcx, [r12 + rsi + 1]
	inc	rsi
	cmp	rcx, rdx
	jb	.label_261
.label_296:
	mov	qword ptr [rsp + 0x40], rsi
.label_285:
	xor	r13d, r13d
	jmp	.label_282
.label_271:
	xor	r13d, r13d
.label_267:
	mov	r10, qword ptr [rsp + 0x28]
.label_282:
	mov	r12, qword ptr [rsp + 0x40]
.label_287:
	mov	rbx, r12
	mov	r12, qword ptr [rsp + 0x88]
.label_292:
	and	r13b, 1
	mov	eax, r13d
	or	al, byte ptr [rsp + 0x33]
	cmp	rbx, 1
	mov	rbp, qword ptr [rsp + 0xa0]
	mov	dil, byte ptr [rsp + 0x1e]
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x60]
	mov	esi, dword ptr [rsp + 0x94]
	ja	.label_307
	test	al, al
	je	.label_307
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_237
.label_307:
	mov	byte ptr [rsp + 0x40], al
	add	rbx, r12
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_319
	.section	.text
	.align	32
	#Procedure 0x4041b7
	.globl sub_4041b7
	.type sub_4041b7, @function
sub_4041b7:

	nop	word ptr [rax + rax]
.label_286:
	inc	r14
	mov	r15b, byte ptr [r10 + r12 + 1]
	mov	r12, rdx
.label_319:
	cmp	byte ptr [rsp + 0x40], 0
	je	.label_324
	test	sil, 1
	je	.label_279
	cmp	r14, rbp
	jae	.label_328
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x5c
.label_328:
	inc	r14
	xor	esi, esi
	jmp	.label_279
	.section	.text
	.align	32
	#Procedure 0x4041f5
	.globl sub_4041f5
	.type sub_4041f5, @function
sub_4041f5:

	nop	word ptr cs:[rax + rax]
.label_324:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_206
	cmp	r8d, 2
	jne	.label_211
	mov	eax, r9d
	and	al, 1
	jne	.label_211
	cmp	r14, rbp
	jae	.label_218
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_218:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_222
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x24
.label_222:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_330
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x27
.label_330:
	add	r14, 3
	mov	r9b, 1
.label_211:
	cmp	r14, rbp
	jae	.label_239
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_239:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_244
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_244:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_252
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_252:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_279:
	lea	rdx, [r12 + 1]
	cmp	rbx, rdx
	jbe	.label_216
	test	r9b, 1
	je	.label_260
	mov	rcx, rbx
	mov	ebx, eax
	and	bl, 1
	jne	.label_249
	mov	r8, r12
	mov	r12d, esi
	cmp	r14, rbp
	jae	.label_264
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], 0x27
.label_264:
	lea	rsi, [r14 + 1]
	cmp	rsi, rbp
	jae	.label_274
	mov	rbx, qword ptr [rsp + 0x10]
	mov	byte ptr [rbx + rsi], 0x27
.label_274:
	add	r14, 2
	xor	r9d, r9d
	mov	esi, r12d
	mov	rbx, rcx
	mov	r12, r8
	mov	r8, qword ptr [rsp + 0x38]
	jmp	.label_260
	.section	.text
	.align	32
	#Procedure 0x404306
	.globl sub_404306
	.type sub_404306, @function
sub_404306:

	nop	word ptr cs:[rax + rax]
.label_249:
	mov	rbx, rcx
.label_260:
	cmp	r14, rbp
	jae	.label_286
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], r15b
	mov	esi, ecx
	jmp	.label_286
	.section	.text
	.align	32
	#Procedure 0x40432e
	.globl sub_40432e
	.type sub_40432e, @function
sub_40432e:

	nop	
.label_216:
	test	r9b, 1
	je	.label_294
	and	al, 1
	jne	.label_294
	cmp	r14, rbp
	jae	.label_298
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_298:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_322
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_322:
	add	r14, 2
	xor	r9d, r9d
.label_294:
	mov	ebx, r15d
.label_283:
	cmp	r14, rbp
	jae	.label_306
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], bl
.label_306:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, dil
	mov	edi, r13d
	jmp	.label_258
.label_332:
	xor	r13d, r13d
	jmp	.label_237
	.section	.text
	.align	32
	#Procedure 0x404391
	.globl sub_404391
	.type sub_404391, @function
sub_404391:

	nop	word ptr cs:[rax + rax]
.label_213:
	mov	rcx, r12
.label_207:
	cmp	r8d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_318
	or	al, dl
	jne	.label_318
	mov	r11, rcx
	jmp	.label_206
.label_233:
	mov	eax, 2
.label_268:
	mov	qword ptr [rsp + 0x38], rax
.label_206:
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
.label_265:
	mov	r14, rax
.label_262:
	mov	rax, r14
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_304:
	mov	rdx, qword ptr [rsp + 0x58]
	test	rdx, rdx
	je	.label_303
	cmp	byte ptr [rsp + 0xf], 0
	mov	rcx, qword ptr [rsp + 0x10]
	jne	.label_234
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_234
	inc	rdx
	nop	dword ptr [rax + rax]
.label_245:
	cmp	r14, rbp
	jae	.label_243
	mov	byte ptr [rcx + r14], al
.label_243:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_245
	jmp	.label_234
.label_317:
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
	jmp	.label_265
.label_303:
	mov	rcx, qword ptr [rsp + 0x10]
.label_234:
	cmp	r14, rbp
	jae	.label_262
	mov	byte ptr [rcx + r14], 0
	jmp	.label_262
.label_219:
	mov	eax, 5
	jmp	.label_268
.label_226:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4044e0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_36
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_333
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x404505
	.globl sub_404505
	.type sub_404505, @function
sub_404505:

	nop	word ptr cs:[rax + rax]
.label_334:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x404515
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_13]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_14]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_15]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_334
	test	rsi, rsi
	je	.label_334
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
	#Procedure 0x404580
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
	#Procedure 0x4045f5
	.globl sub_4045f5
	.type sub_4045f5, @function
sub_4045f5:

	nop	word ptr cs:[rax + rax]
.label_337:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x404605

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_336
	test	rbx, rbx
	jne	.label_336
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_336:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_335
	test	rax, rax
	je	.label_337
.label_335:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x404630
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
	je	.label_339
	test	r14, r14
	je	.label_338
.label_339:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_338:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x404666
	.globl sub_404666
	.type sub_404666, @function
sub_404666:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404670

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_350
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_352
.label_350:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_352:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_340
	cmp	r10d, 0x29
	jae	.label_349
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_351
.label_349:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_351:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_340
	cmp	r10d, 0x29
	jae	.label_347
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_348
.label_347:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_348:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_340
	cmp	r10d, 0x29
	jae	.label_345
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_346
.label_345:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_346:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_340
	cmp	r10d, 0x29
	jae	.label_343
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_344
.label_343:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_344:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_340
	cmp	r10d, 0x29
	jae	.label_341
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_342
.label_341:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_342:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_340
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_340
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_340
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_340
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_340:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	32
	#Procedure 0x404852
	.globl sub_404852
	.type sub_404852, @function
sub_404852:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404860

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_354
	cmp	byte ptr [rax], 0x43
	jne	.label_356
	cmp	byte ptr [rax + 1], 0
	je	.label_353
.label_356:
	mov	esi, OFFSET FLAT:label_355
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_354
.label_353:
	xor	ebx, ebx
.label_354:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x404891
	.globl sub_404891
	.type sub_404891, @function
sub_404891:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4048a0
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
	#Procedure 0x4048b3
	.globl sub_4048b3
	.type sub_4048b3, @function
sub_4048b3:

	nop	word ptr cs:[rax + rax]
.label_357:
	push	rax
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4048c6
	.globl sub_4048c6
	.type sub_4048c6, @function
sub_4048c6:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4048cb
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_357
	test	rdx, rdx
	je	.label_357
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4048f0

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
	je	.label_358
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
.label_358:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x404958
	.globl sub_404958
	.type sub_404958, @function
sub_404958:

	nop	dword ptr [rax + rax]
.label_359:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x404965
	.globl sub_404965
	.type sub_404965, @function
sub_404965:

	nop	dword ptr [rax + rax]
.label_361:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_360
	test	rax, rax
	je	.label_359
.label_360:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x404981
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_359
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_361
	test	rbx, rbx
	jne	.label_361
	call	free
	xor	eax, eax
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4049b0
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
	#Procedure 0x4049c8
	.globl sub_4049c8
	.type sub_4049c8, @function
sub_4049c8:

	nop	dword ptr [rax + rax]
.label_362:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4049d5
	.globl sub_4049d5
	.type sub_4049d5, @function
sub_4049d5:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4049d9
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_13]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_14]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_15]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_362
	test	rsi, rsi
	je	.label_362
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
	#Procedure 0x404a40

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_363
	test	rax, rax
	je	.label_364
.label_363:
	pop	rbx
	ret	
.label_364:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x404a5a
	.globl sub_404a5a
	.type sub_404a5a, @function
sub_404a5a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404a60

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
	jae	.label_377
	mov	qword ptr [rsp], rcx
	call	__errno_location
	mov	r15, rax
	mov	dword ptr [r15], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_370:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_370
	test	rbp, rbp
	lea	rsi, [rsp + 0x10]
	cmovne	rsi, rbp
	mov	r13d, 4
	cmp	al, 0x2d
	je	.label_365
	mov	rdi, rbx
	mov	edx, r12d
	mov	qword ptr [rsp + 8], rsi
	call	strtoul
	mov	rbp, rax
	mov	rax, qword ptr [rsp + 8]
	mov	r12, qword ptr [rax]
	cmp	r12, rbx
	je	.label_382
	mov	eax, dword ptr [r15]
	xor	ebx, ebx
	test	eax, eax
	je	.label_385
	cmp	eax, 0x22
	jne	.label_365
	mov	ebx, 1
.label_385:
	test	r14, r14
	jne	.label_367
	jmp	.label_368
.label_382:
	test	r14, r14
	je	.label_365
	movsx	esi, byte ptr [rbx]
	test	esi, esi
	je	.label_365
	mov	rdi, r14
	call	strchr
	xor	ebx, ebx
	mov	ebp, 1
	test	rax, rax
	je	.label_365
.label_367:
	movsx	r13d, byte ptr [r12]
	test	r13d, r13d
	je	.label_368
	mov	rdi, r14
	mov	esi, r13d
	call	strchr
	test	rax, rax
	je	.label_376
	mov	r15d, 1
	mov	esi, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_369
	movabs	rdx, 0x814400308945
	bt	rdx, rax
	jae	.label_369
	mov	esi, 0x30
	mov	rdi, r14
	call	strchr
	mov	r15d, 1
	mov	esi, 0x400
	test	rax, rax
	je	.label_369
	movsx	eax, byte ptr [r12 + 1]
	mov	r15d, 1
	mov	esi, 0x400
	cmp	eax, 0x42
	je	.label_373
	cmp	eax, 0x44
	je	.label_373
	cmp	eax, 0x69
	jne	.label_369
	xor	eax, eax
	cmp	byte ptr [r12 + 2], 0x42
	sete	al
	lea	r15, [rax + rax + 1]
	mov	esi, 0x400
	jmp	.label_369
.label_373:
	mov	r15d, 2
	mov	esi, 0x3e8
.label_369:
	add	r13d, -0x42
	cmp	r13d, 0x35
	ja	.label_376
	xor	eax, eax
	jmp	qword ptr [(r13 * 8) + label_384]
.label_477:
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
	jmp	.label_366
.label_376:
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax], rbp
	or	ebx, 2
	jmp	.label_374
.label_478:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, rdi
	sbb	eax, eax
	jmp	.label_378
.label_479:
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
	jmp	.label_366
.label_481:
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
	jmp	.label_366
.label_475:
	xor	eax, eax
	mov	rdx, rbp
	shr	rdx, 0x36
	setne	al
	shl	rbp, 0xa
	jmp	.label_371
.label_476:
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
.label_366:
	and	dl, 1
	movzx	eax, dl
	jmp	.label_375
.label_480:
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
	jmp	.label_375
.label_482:
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
	jmp	.label_383
.label_483:
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
.label_383:
	movzx	eax, dl
.label_378:
	and	eax, 1
.label_375:
	mov	rbp, rsi
.label_372:
	or	eax, ebx
	lea	rcx, [r12 + r15]
	mov	rdx, qword ptr [rsp + 8]
	mov	qword ptr [rdx], rcx
	lea	ebx, [rax + 2]
	cmp	byte ptr [r12 + r15], 0
	cmove	ebx, eax
.label_368:
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax], rbp
.label_374:
	mov	r13d, ebx
.label_365:
	mov	eax, r13d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_484:
	xor	eax, eax
	mov	rdx, rbp
	shr	rdx, 0x37
	setne	al
	shl	rbp, 9
.label_371:
	cmp	rdx, 1
	sbb	rdx, rdx
	not	rdx
	or	rbp, rdx
	jmp	.label_372
.label_485:
	lea	rax, [rbp + rbp]
	test	rbp, rbp
	mov	rcx, -1
	cmovns	rcx, rax
	shr	rbp, 0x3f
	mov	eax, ebp
	mov	rbp, rcx
	jmp	.label_372
.label_377:
	mov	edi, OFFSET FLAT:label_379
	mov	esi, OFFSET FLAT:label_380
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_381
	call	__assert_fail
	.section	.text
	.align	32
	#Procedure 0x40507d
	.globl sub_40507d
	.type sub_40507d, @function
sub_40507d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405080
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_386
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_388:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_388
.label_386:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_390
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_389], OFFSET FLAT:slot0
.label_390:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_387
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_387:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x405111
	.globl sub_405111
	.type sub_405111, @function
sub_405111:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405120
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_391
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_392
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_394
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_162
	mov	ecx, OFFSET FLAT:label_395
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_393
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	32
	#Procedure 0x405194
	.globl sub_405194
	.type sub_405194, @function
sub_405194:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4051a0
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_396
	test	rax, rax
	je	.label_397
.label_396:
	pop	rbx
	ret	
.label_397:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4051ba
	.globl sub_4051ba
	.type sub_4051ba, @function
sub_4051ba:

	nop	word ptr [rax + rax]
.label_399:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_398
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_398:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4051f4
	.globl sub_4051f4
	.type sub_4051f4, @function
sub_4051f4:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4051f6

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
	jne	.label_400
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_400
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_399
.label_400:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
	.section	.text
	.align	32
	#Procedure 0x405230
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
	je	.label_401
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
.label_401:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40529c
	.globl sub_40529c
	.type sub_40529c, @function
sub_40529c:

	nop	dword ptr [rax]
.label_409:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_402
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
	#Procedure 0x4052d8
	.globl sub_4052d8
	.type sub_4052d8, @function
sub_4052d8:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4052e2

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_409
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_412
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
	mov	esi, OFFSET FLAT:label_408
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_416
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_410
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_411
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	esi, OFFSET FLAT:label_137
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	mov	rdx, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_413
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_415
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_417
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_405
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_162
	mov	ecx, OFFSET FLAT:label_395
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_404
	mov	esi, OFFSET FLAT:label_407
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_404
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_418
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_404:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_406
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_395
	mov	ecx, OFFSET FLAT:label_161
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_414
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_161
	mov	ecx, OFFSET FLAT:label_403
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
	.section	.text
	.align	32
	#Procedure 0x4054e0
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
	#Procedure 0x4054f8
	.globl sub_4054f8
	.type sub_4054f8, @function
sub_4054f8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405500
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_419:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_419
	jmp	version_etc_arn
	.section	.text
	.align	32
	#Procedure 0x405521
	.globl sub_405521
	.type sub_405521, @function
sub_405521:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405530
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	.section	.text
	.align	32
	#Procedure 0x405538
	.globl sub_405538
	.type sub_405538, @function
sub_405538:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405540

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_420
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_422
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_424
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_422
	mov	esi, OFFSET FLAT:label_423
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_425
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_425:
	mov	rbx, r14
.label_422:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_420:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_421
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4055e1
	.globl sub_4055e1
	.type sub_4055e1, @function
sub_4055e1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4055f0

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
	#Procedure 0x405607
	.globl sub_405607
	.type sub_405607, @function
sub_405607:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405610

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
	mov	dword ptr [rsp + 0xc], ecx
	mov	qword ptr [rsp + 0x28], rdx
	mov	qword ptr [rsp + 0x10], rsi
	mov	qword ptr [rsp + 0x30], rdi
	call	xstrdup
	mov	esi, OFFSET FLAT:label_440
	mov	qword ptr [rsp + 0x18], rax
	mov	rdi, rax
	call	strtok
	mov	r12, rax
	xor	r15d, r15d
	test	r12, r12
	mov	ebx, 0
	mov	ebp, 0
	je	.label_437
	mov	eax, dword ptr [rsp + 0xc]
	test	al, al
	je	.label_450
	lea	r13, [rsp]
	xor	ebp, ebp
	xor	ebx, ebx
	xor	r15d, r15d
	xor	r14d, r14d
	nop	dword ptr [rax + rax]
.label_442:
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:label_36
	mov	rdi, r12
	mov	rcx, r13
	call	xstrtoul
	test	eax, eax
	jne	.label_433
	mov	rax, qword ptr [rsp]
	shr	rax, 0x20
	jne	.label_433
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	dec	r12
	nop	word ptr cs:[rax + rax]
.label_443:
	movzx	ecx, byte ptr [r12 + 1]
	inc	r12
	test	byte ptr [rax + rcx*2 + 1], 0x20
	jne	.label_443
	cmp	cl, 0x2b
	je	.label_447
	mov	rdi, r12
	call	getgrnam
	test	rax, rax
	jne	.label_449
	jmp	.label_447
	.section	.text
	.align	32
	#Procedure 0x4056e4
	.globl sub_4056e4
	.type sub_4056e4, @function
sub_4056e4:

	nop	word ptr cs:[rax + rax]
.label_433:
	mov	rdi, r12
	call	getgrnam
	test	rax, rax
	je	.label_448
.label_449:
	mov	eax, dword ptr [rax + 0x10]
	mov	qword ptr [rsp], rax
.label_447:
	cmp	r15, r14
	jne	.label_427
	test	rbx, rbx
	je	.label_430
	movabs	rax, 0x1555555555555555
	cmp	r15, rax
	jae	.label_428
	mov	rax, r15
	shr	rax, 1
	lea	r14, [r15 + rax + 1]
	jmp	.label_438
.label_448:
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rsp + 0x24], eax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_441
	mov	edx, 5
	call	dcgettext
	mov	rbp, r13
	mov	r13, rax
	mov	rdi, r12
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, dword ptr [rsp + 0x24]
	mov	rdx, r13
	mov	r13, rbp
	call	error
	mov	ebp, 0xffffffff
	jmp	.label_435
.label_430:
	test	r15, r15
	mov	r14, r15
	mov	eax, 0x20
	cmove	r14, rax
	movabs	rax, 0x1fffffffffffffff
	cmp	r14, rax
	ja	.label_436
.label_438:
	lea	rsi, [r14*4]
	mov	rdi, rbx
	call	xrealloc
	mov	rbx, rax
.label_427:
	mov	eax, dword ptr [rsp]
	mov	dword ptr [rbx + r15*4], eax
	inc	r15
.label_435:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_440
	call	strtok
	mov	r12, rax
	test	r12, r12
	jne	.label_442
	jmp	.label_437
.label_450:
	xor	ebx, ebx
	lea	r14, [rsp]
	xor	r15d, r15d
	xor	r13d, r13d
	nop	word ptr cs:[rax + rax]
.label_446:
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:label_36
	mov	rdi, r12
	mov	rcx, r14
	call	xstrtoul
	test	eax, eax
	jne	.label_429
	mov	rax, qword ptr [rsp]
	shr	rax, 0x20
	jne	.label_429
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	dec	r12
	nop	word ptr cs:[rax + rax]
.label_439:
	movzx	ecx, byte ptr [r12 + 1]
	inc	r12
	test	byte ptr [rax + rcx*2 + 1], 0x20
	jne	.label_439
	cmp	cl, 0x2b
	je	.label_426
	mov	rdi, r12
	call	getgrnam
	test	rax, rax
	jne	.label_445
	jmp	.label_426
	.section	.text
	.align	32
	#Procedure 0x405854
	.globl sub_405854
	.type sub_405854, @function
sub_405854:

	nop	word ptr cs:[rax + rax]
.label_429:
	mov	rdi, r12
	call	getgrnam
	test	rax, rax
	je	.label_451
.label_445:
	mov	eax, dword ptr [rax + 0x10]
	mov	qword ptr [rsp], rax
.label_426:
	cmp	r15, r13
	jne	.label_452
	test	rbx, rbx
	je	.label_453
	movabs	rax, 0x1555555555555555
	cmp	r15, rax
	jae	.label_428
	mov	rax, r15
	shr	rax, 1
	lea	r13, [r15 + rax + 1]
	jmp	.label_432
.label_453:
	test	r15, r15
	mov	r13, r15
	mov	eax, 0x20
	cmove	r13, rax
	movabs	rax, 0x1fffffffffffffff
	cmp	r13, rax
	ja	.label_436
.label_432:
	lea	rsi, [r13*4]
	mov	rdi, rbx
	call	xrealloc
	mov	rbx, rax
.label_452:
	mov	eax, dword ptr [rsp]
	mov	dword ptr [rbx + r15*4], eax
	inc	r15
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_440
	call	strtok
	mov	r12, rax
	test	r12, r12
	jne	.label_446
.label_437:
	test	ebp, ebp
	setne	al
	test	r15, r15
	setne	cl
	or	cl, al
	mov	r14d, 0xffffffff
	cmovne	r14d, ebp
	jne	.label_431
	mov	eax, dword ptr [rsp + 0xc]
	xor	al, 1
	jne	.label_431
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_434
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
.label_451:
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rax], rbx
	mov	r14d, 0xffffffff
	mov	rdi, qword ptr [rsp + 0x18]
	jmp	.label_444
.label_431:
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rax], rbx
	test	r14d, r14d
	mov	rdi, qword ptr [rsp + 0x18]
	jne	.label_444
	mov	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [rax], r15
	xor	r14d, r14d
.label_444:
	call	free
	mov	eax, r14d
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_428:
	call	xalloc_die
.label_436:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40599e
	.globl sub_40599e
	.type sub_40599e, @function
sub_40599e:

	nop	
.label_458:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_454
	mov	eax, OFFSET FLAT:label_455
	jmp	.label_456
	.section	.text
	.align	32
	#Procedure 0x4059af
	.globl sub_4059af
	.type sub_4059af, @function
sub_4059af:

	nop	word ptr cs:[rax + rax]
.label_459:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_457
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_457
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_457
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_457
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_457
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_457
	cmp	byte ptr [rax + 7], 0
	je	.label_458
.label_457:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_214
	mov	eax, OFFSET FLAT:label_248
.label_456:
	cmove	rax, rcx
.label_460:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405a02

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
	jne	.label_460
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_459
	cmp	ecx, 0x55
	jne	.label_457
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_457
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_457
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_457
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_457
	cmp	byte ptr [rax + 5], 0
	jne	.label_457
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_461
	mov	eax, OFFSET FLAT:label_462
	jmp	.label_456
	.section	.text
	.align	32
	#Procedure 0x405a70
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
	#Procedure 0x405a89
	.globl sub_405a89
	.type sub_405a89, @function
sub_405a89:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405af5
	.globl sub_405af5
	.type sub_405af5, @function
sub_405af5:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405b02
	.globl sub_405b02
	.type sub_405b02, @function
sub_405b02:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405b26
	.globl sub_405b26
	.type sub_405b26, @function
sub_405b26:

	nop	word ptr cs:[rax + rax]
