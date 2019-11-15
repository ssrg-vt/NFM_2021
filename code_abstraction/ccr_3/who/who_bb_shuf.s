	.section	.text
	.align	32
	#Procedure 0x4018c9
	.globl sub_4018c9
	.type sub_4018c9, @function
sub_4018c9:

	hlt	
	.section	.text
	.align	32
	#Procedure 0x4018ca
	.globl sub_4018ca
	.type sub_4018ca, @function
sub_4018ca:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401902
	.globl sub_401902
	.type sub_401902, @function
sub_401902:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40194a
	.globl sub_40194a
	.type sub_40194a, @function
sub_40194a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40196c
	.globl sub_40196c
	.type sub_40196c, @function
sub_40196c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40197d
	.globl sub_40197d
	.type sub_40197d, @function
sub_40197d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401996
	.globl sub_401996
	.type sub_401996, @function
sub_401996:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4019a0

	.globl canon_host
	.type canon_host, @function
canon_host:
	push	rbx
	sub	rsp, 0x10
	mov	rbx, rdi
	mov	qword ptr [rsp + 8], 0
	mov	dword ptr [rip + canon_host_r.hints],  2
	lea	rcx, [rsp + 8]
	xor	esi, esi
	mov	edx, OFFSET FLAT:canon_host_r.hints
	call	getaddrinfo
	test	eax, eax
	je	.label_11
	mov	dword ptr [rip + last_cherror],  eax
	xor	ebx, ebx
	jmp	.label_9
.label_11:
	mov	rax, qword ptr [rsp + 8]
	mov	rax, qword ptr [rax + 0x20]
	test	rax, rax
	cmovne	rbx, rax
	mov	rdi, rbx
	call	__strdup
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_10
	mov	dword ptr [rip + last_cherror],  0xfffffff6
.label_10:
	mov	rdi, qword ptr [rsp + 8]
	call	freeaddrinfo
.label_9:
	mov	rax, rbx
	add	rsp, 0x10
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x401a17
	.globl sub_401a17
	.type sub_401a17, @function
sub_401a17:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401a20
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
	je	.label_12
	mov	qword ptr [rax], rbx
.label_12:
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
	#Procedure 0x401b0c
	.globl sub_401b0c
	.type sub_401b0c, @function
sub_401b0c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401b10
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x401b1a
	.globl sub_401b1a
	.type sub_401b1a, @function
sub_401b1a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401b20
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x401b31
	.globl sub_401b31
	.type sub_401b31, @function
sub_401b31:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401b40
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x401b4e
	.globl sub_401b4e
	.type sub_401b4e, @function
sub_401b4e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x401b50

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
	js	.label_16
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_19
	cmp	r12d, 0x7fffffff
	je	.label_14
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
	jne	.label_17
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_17:
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
.label_19:
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
	jbe	.label_15
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_18
.label_15:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_13
	mov	rdi, r14
	call	free
.label_13:
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
.label_18:
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
.label_16:
	call	abort
.label_14:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401d0d
	.globl sub_401d0d
	.type sub_401d0d, @function
sub_401d0d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401d10

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
	#Procedure 0x401d27
	.globl sub_401d27
	.type sub_401d27, @function
sub_401d27:

	nop	word ptr [rax + rax]
.label_20:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401d35
	.globl sub_401d35
	.type sub_401d35, @function
sub_401d35:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401d3f
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
	je	.label_21
	test	r14, r14
	je	.label_20
.label_21:
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
	#Procedure 0x401d70
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
	#Procedure 0x401da3
	.globl sub_401da3
	.type sub_401da3, @function
sub_401da3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401db0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_22
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_22
	test	byte ptr [rbx + 1], 1
	je	.label_22
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_22:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	32
	#Procedure 0x401de3
	.globl sub_401de3
	.type sub_401de3, @function
sub_401de3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401df0
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
	#Procedure 0x401dff
	.globl sub_401dff
	.type sub_401dff, @function
sub_401dff:

	nop	
	.section	.text
	.align	32
	#Procedure 0x401e00

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_23
	test	rsi, rsi
	mov	ecx, 1
	je	.label_24
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_24
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_23:
	mov	ecx, 1
.label_24:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	32
	#Procedure 0x401e4b
	.globl sub_401e4b
	.type sub_401e4b, @function
sub_401e4b:

	nop	dword ptr [rax + rax]
.label_25:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401e55
	.globl sub_401e55
	.type sub_401e55, @function
sub_401e55:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401e5b

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_26
	test	rax, rax
	je	.label_25
.label_26:
	pop	rbx
	ret	
.label_28:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	.section	.text
	.align	32
	#Procedure 0x401e7c
	.globl sub_401e7c
	.type sub_401e7c, @function
sub_401e7c:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401e88

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_28
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_27
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_28
.label_27:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_28
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_29
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_29:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401ef0
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
	je	.label_31
	test	r15, r15
	je	.label_30
.label_31:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_30:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401f32
	.globl sub_401f32
	.type sub_401f32, @function
sub_401f32:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401f40
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_32
	call	rpl_calloc
	test	rax, rax
	je	.label_32
	pop	rcx
	ret	
.label_32:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401f66
	.globl sub_401f66
	.type sub_401f66, @function
sub_401f66:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401f70

	.globl who
	.type who, @function
who:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x218
	mov	eax, esi
	mov	rbx, rdi
	lea	rsi, [rsp + 0x48]
	lea	rdx, [rsp + 0x40]
	mov	ecx, eax
	call	read_utmp
	test	eax, eax
	jne	.label_112
	mov	r12, qword ptr [rsp + 0x48]
	mov	rbx, qword ptr [rsp + 0x40]
	cmp	byte ptr [rip + short_list],  1
	jne	.label_115
	xor	r14d, r14d
	test	r12, r12
	je	.label_117
	mov	r15d, OFFSET FLAT:label_37
	xor	r14d, r14d
	nop	word ptr [rax + rax]
.label_36:
	dec	r12
	cmp	byte ptr [rbx + 0x2c], 0
	je	.label_119
	movzx	eax, word ptr [rbx]
	cmp	eax, 7
	jne	.label_119
	mov	rdi, rbx
	call	extract_trimmed_name
	mov	rbp, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_126
	xor	eax, eax
	mov	rdx, r15
	mov	rcx, rbp
	call	__printf_chk
	mov	rdi, rbp
	call	free
	inc	r14
	mov	r15d, OFFSET FLAT:label_34
.label_119:
	add	rbx, 0x180
	test	r12, r12
	jne	.label_36
.label_117:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_81
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	mov	rdx, r14
	call	__printf_chk
	jmp	.label_44
.label_115:
	cmp	byte ptr [rip + include_heading],  1
	jne	.label_46
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_52
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rsp + 0x30], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_58
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rsp + 0x10], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_62
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_66
	mov	edx, 5
	call	dcgettext
	mov	r13, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_127
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_77
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_82
	mov	edx, 5
	call	dcgettext
	mov	edi, 0xffffffff
	mov	edx, 0x20
	mov	ecx, 0xffffffff
	mov	rsi, qword ptr [rsp + 0x30]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r9, r15
	push	rax
	push	r14
	push	rbp
	push	r13
	call	print_line
	add	rsp, 0x20
.label_46:
	cmp	byte ptr [rip + my_line_only],  1
	jne	.label_54
	xor	edi, edi
	call	ttyname
	mov	rbp, rax
	test	rbp, rbp
	je	.label_44
	mov	esi, OFFSET FLAT:label_97
	mov	edx, 5
	mov	rdi, rbp
	call	strncmp
	lea	r13, [rbp + 5]
	test	eax, eax
	cmovne	r13, rbp
.label_54:
	test	r12, r12
	je	.label_44
	movabs	rax, 0x8000000000000000
	mov	qword ptr [rsp + 0x30], rax
	mov	qword ptr [rsp + 8], r13
	nop	word ptr cs:[rax + rax]
.label_118:
	cmp	byte ptr [rip + my_line_only],  1
	jne	.label_70
	lea	rsi, [rbx + 8]
	mov	edx, 0x20
	mov	rdi, r13
	call	strncmp
	test	eax, eax
	jne	.label_90
.label_70:
	cmp	byte ptr [rip + need_users],  1
	jne	.label_111
	cmp	byte ptr [rbx + 0x2c], 0
	je	.label_111
	movzx	eax, word ptr [rbx]
	cmp	eax, 7
	jne	.label_111
	movsxd	r8, dword ptr [rbx + 4]
	mov	esi, 1
	mov	edx, 0xc
	mov	ecx, OFFSET FLAT:label_42
	xor	eax, eax
	lea	rdi, [rsp + 0x1c]
	call	__sprintf_chk
	mov	cl, byte ptr [rbx + 8]
	cmp	cl, 0x2f
	lea	rax, [rsp + 0x50]
	je	.label_121
	mov	word ptr [rsp + 0x54], 0x2f
	mov	dword ptr [rsp + 0x50], 0x7665642f
	test	cl, cl
	lea	rax, [rsp + 0x55]
	mov	rdx, rax
	je	.label_124
.label_121:
	lea	rdx, [rbx + 0x28]
	mov	edi, 9
	nop	word ptr cs:[rax + rax]
.label_38:
	mov	rsi, rdi
	lea	rdi, [rbx + rsi]
	mov	byte ptr [rax + rsi - 9], cl
	cmp	rdi, rdx
	jae	.label_74
	movzx	ecx, byte ptr [rdi]
	lea	rdi, [rsi + 1]
	test	cl, cl
	jne	.label_38
.label_74:
	lea	rdx, [rax + rsi - 8]
.label_124:
	mov	byte ptr [rdx], 0
	mov	edi, 1
	lea	rsi, [rsp + 0x50]
	lea	rdx, [rsp + 0x188]
	call	__xstat
	mov	r14b, 0x3f
	test	eax, eax
	jne	.label_45
	mov	r14b, byte ptr [rsp + 0x1a0]
	shr	r14b, 3
	not	r14b
	and	r14b, 2
	add	r14b, 0x2b
	mov	rbp, qword ptr [rsp + 0x1d0]
	test	rbp, rbp
	je	.label_45
	movabs	rax, 0x8000000000000000
	cmp	qword ptr [rip + idle_string.now],  rax
	jne	.label_61
	mov	edi, OFFSET FLAT:idle_string.now
	call	time
.label_61:
	cmp	rbp, qword ptr [rsp + 0x30]
	jle	.label_68
	mov	r9, qword ptr [rip + idle_string.now]
	cmp	r9, rbp
	jl	.label_68
	lea	rax, [r9 - 0x15180]
	cmp	rax, rbp
	jge	.label_68
	sub	r9d, ebp
	cmp	r9d, 0x3c
	mov	ebp, OFFSET FLAT:label_79
	jl	.label_80
	cmp	r9d, 0x15180
	jge	.label_83
	mov	r8d, r9d
	mov	eax, 0x91a2b3c5
	imul	r8, rax
	shr	r8, 0x2b
	imul	eax, r8d, 0xe10
	sub	r9d, eax
	mov	eax, 0x88888889
	imul	r9, rax
	shr	r9, 0x25
	mov	edi, OFFSET FLAT:idle_string.idle_hhmm
	mov	esi, 1
	mov	edx, 6
	mov	ecx, OFFSET FLAT:label_87
	xor	eax, eax
	call	__sprintf_chk
	mov	ebp, OFFSET FLAT:idle_string.idle_hhmm
	jmp	.label_80
.label_111:
	cmp	byte ptr [rip + need_runlevel],  1
	jne	.label_98
	movzx	eax, word ptr [rbx]
	cmp	eax, 1
	jne	.label_98
	mov	r15d, dword ptr [rbx + 4]
	mov	ebp, r15d
	sar	ebp, 0x1f
	shr	ebp, 0x18
	add	ebp, r15d
	mov	r14, qword ptr [rip + print_runlevel.runlevline]
	test	r14, r14
	jne	.label_102
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_105
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	call	strlen
	lea	rdi, [rax + 3]
	call	xmalloc
	mov	r14, rax
	mov	qword ptr [rip + print_runlevel.runlevline],  r14
.label_102:
	sar	ebp, 8
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_105
	mov	edx, 5
	call	dcgettext
	mov	r8, rax
	movzx	r9d, r15b
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_116
	xor	eax, eax
	mov	rdi, r14
	call	__sprintf_chk
	mov	r14, qword ptr [rip + print_runlevel.comment]
	test	r14, r14
	jne	.label_71
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_120
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	call	strlen
	lea	rdi, [rax + 2]
	call	xmalloc
	mov	r14, rax
	mov	qword ptr [rip + print_runlevel.comment],  r14
.label_71:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_120
	mov	edx, 5
	call	dcgettext
	mov	r8, rax
	movzx	ebp, bpl
	cmp	ebp, 0x4e
	mov	r9d, ebp
	mov	eax, 0x53
	cmove	r9d, eax
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_35
	xor	eax, eax
	mov	rdi, r14
	call	__sprintf_chk
	mov	r14, qword ptr [rip + print_runlevel.runlevline]
	movsxd	rax, dword ptr [rbx + 0x154]
	mov	qword ptr [rsp + 0x80], rax
	lea	rdi, [rsp + 0x80]
	call	localtime
	test	rax, rax
	je	.label_56
	mov	rdx, qword ptr [rip + time_format]
	mov	edi, OFFSET FLAT:time_string.buf
	mov	esi, 0x21
	mov	rcx, rax
	call	strftime
	mov	r9d, OFFSET FLAT:time_string.buf
	jmp	.label_63
	.section	.text
	.align	32
	#Procedure 0x402491
	.globl sub_402491
	.type sub_402491, @function
sub_402491:

	nop	word ptr cs:[rax + rax]
.label_98:
	cmp	byte ptr [rip + need_boottime],  1
	jne	.label_69
	movzx	eax, word ptr [rbx]
	cmp	eax, 2
	jne	.label_69
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_73
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	movsxd	rax, dword ptr [rbx + 0x154]
	mov	qword ptr [rsp + 0x80], rax
	lea	rdi, [rsp + 0x80]
	call	localtime
	test	rax, rax
	je	.label_85
	mov	rdx, qword ptr [rip + time_format]
	mov	edi, OFFSET FLAT:time_string.buf
	mov	esi, 0x21
	mov	rcx, rax
	call	strftime
	mov	r9d, OFFSET FLAT:time_string.buf
	jmp	.label_94
	.section	.text
	.align	32
	#Procedure 0x40250e
	.globl sub_40250e
	.type sub_40250e, @function
sub_40250e:

	nop	
.label_69:
	cmp	byte ptr [rip + need_clockchange],  1
	jne	.label_67
	movzx	eax, word ptr [rbx]
	cmp	eax, 3
	jne	.label_67
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_95
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	movsxd	rax, dword ptr [rbx + 0x154]
	mov	qword ptr [rsp + 0x80], rax
	lea	rdi, [rsp + 0x80]
	call	localtime
	test	rax, rax
	je	.label_125
	mov	rdx, qword ptr [rip + time_format]
	mov	edi, OFFSET FLAT:time_string.buf
	mov	esi, 0x21
	mov	rcx, rax
	call	strftime
	mov	r9d, OFFSET FLAT:time_string.buf
	jmp	.label_106
	.section	.text
	.align	32
	#Procedure 0x40257e
	.globl sub_40257e
	.type sub_40257e, @function
sub_40257e:

	nop	
.label_67:
	cmp	byte ptr [rip + need_initspawn],  1
	jne	.label_108
	movzx	eax, word ptr [rbx]
	cmp	eax, 5
	jne	.label_108
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_60
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	call	strlen
	lea	rdi, [rax + 5]
	call	xmalloc
	mov	rbp, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_60
	mov	edx, 5
	call	dcgettext
	mov	rdi, rbp
	mov	rsi, rax
	call	strcpy
	lea	rsi, [rbx + 0x28]
	mov	edx, 4
	mov	rcx, -1
	mov	rdi, rbp
	call	__strncat_chk
	movsxd	r8, dword ptr [rbx + 4]
	mov	esi, 1
	mov	edx, 0xc
	mov	ecx, OFFSET FLAT:label_42
	xor	eax, eax
	lea	rdi, [rsp + 0x1c]
	call	__sprintf_chk
	lea	r15, [rbx + 8]
	movsxd	rax, dword ptr [rbx + 0x154]
	mov	qword ptr [rsp + 0x80], rax
	lea	rdi, [rsp + 0x80]
	call	localtime
	test	rax, rax
	je	.label_39
	mov	rdx, qword ptr [rip + time_format]
	mov	edi, OFFSET FLAT:time_string.buf
	mov	esi, 0x21
	mov	rcx, rax
	call	strftime
	mov	r9d, OFFSET FLAT:time_string.buf
	jmp	.label_51
.label_108:
	cmp	byte ptr [rip + need_login],  1
	jne	.label_53
	movzx	eax, word ptr [rbx]
	cmp	eax, 6
	jne	.label_53
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_60
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	call	strlen
	lea	rdi, [rax + 5]
	call	xmalloc
	mov	rbp, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_60
	mov	edx, 5
	call	dcgettext
	mov	rdi, rbp
	mov	rsi, rax
	call	strcpy
	lea	rsi, [rbx + 0x28]
	mov	edx, 4
	mov	rcx, -1
	mov	rdi, rbp
	call	__strncat_chk
	movsxd	r8, dword ptr [rbx + 4]
	mov	esi, 1
	mov	edx, 0xc
	mov	ecx, OFFSET FLAT:label_42
	xor	eax, eax
	lea	rdi, [rsp + 0x1c]
	call	__sprintf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_89
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	lea	r14, [rbx + 8]
	movsxd	rax, dword ptr [rbx + 0x154]
	mov	qword ptr [rsp + 0x80], rax
	lea	rdi, [rsp + 0x80]
	call	localtime
	test	rax, rax
	je	.label_96
	mov	rdx, qword ptr [rip + time_format]
	mov	edi, OFFSET FLAT:time_string.buf
	mov	esi, 0x21
	mov	rcx, rax
	call	strftime
	mov	r9d, OFFSET FLAT:time_string.buf
	jmp	.label_100
.label_53:
	cmp	byte ptr [rip + need_deadprocs],  1
	jne	.label_90
	movzx	eax, word ptr [rbx]
	cmp	eax, 8
	jne	.label_90
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_60
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	call	strlen
	lea	rdi, [rax + 5]
	call	xmalloc
	mov	r15, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_60
	mov	edx, 5
	call	dcgettext
	mov	rdi, r15
	mov	rsi, rax
	call	strcpy
	lea	rsi, [rbx + 0x28]
	mov	edx, 4
	mov	rcx, -1
	mov	rdi, r15
	call	__strncat_chk
	movsxd	r8, dword ptr [rbx + 4]
	mov	esi, 1
	mov	edx, 0xc
	mov	ecx, OFFSET FLAT:label_42
	xor	eax, eax
	lea	rdi, [rsp + 0x1c]
	call	__sprintf_chk
	mov	rbp, qword ptr [rip + print_deadprocs.exitstr]
	test	rbp, rbp
	jne	.label_114
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_40
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	call	strlen
	mov	rbp, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_33
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	call	strlen
	lea	rdi, [rbp + rax + 0xe]
	call	xmalloc
	mov	rbp, rax
	mov	qword ptr [rip + print_deadprocs.exitstr],  rbp
.label_114:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_40
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	movsx	r13d, word ptr [rbx + 0x14c]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_33
	mov	edx, 5
	call	dcgettext
	mov	r10, rax
	movsx	r11d, word ptr [rbx + 0x14e]
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_55
	mov	eax, 0
	mov	rdi, rbp
	mov	r8, r14
	mov	r9d, r13d
	push	r11
	push	r10
	call	__sprintf_chk
	add	rsp, 0x10
	lea	rbp, [rbx + 8]
	movsxd	rax, dword ptr [rbx + 0x154]
	mov	qword ptr [rsp + 0x80], rax
	lea	rdi, [rsp + 0x80]
	call	localtime
	test	rax, rax
	je	.label_75
	mov	rdx, qword ptr [rip + time_format]
	mov	edi, OFFSET FLAT:time_string.buf
	mov	esi, 0x21
	mov	rcx, rax
	call	strftime
	mov	r9d, OFFSET FLAT:time_string.buf
	jmp	.label_84
.label_45:
	mov	esi, 1
	mov	edx, 7
	mov	ecx, OFFSET FLAT:label_88
	xor	eax, eax
	lea	rdi, [rsp + 0x39]
	call	__sprintf_chk
	jmp	.label_93
.label_56:
	mov	rdi, qword ptr [rsp + 0x80]
	mov	esi, OFFSET FLAT:time_string.buf
	call	imaxtostr
	mov	r9, rax
.label_63:
	add	ebp, -0x20
	cmp	ebp, 0x5f
	mov	rax, qword ptr [rip + print_runlevel.comment]
	mov	ecx, OFFSET FLAT:label_37
	cmovae	rax, rcx
	mov	edi, 0xffffffff
	mov	esi, OFFSET FLAT:label_37
	mov	edx, 0x20
	mov	ecx, 0xffffffff
	mov	r8, r14
	push	OFFSET FLAT:label_37
	push	rax
	push	OFFSET FLAT:label_37
	push	OFFSET FLAT:label_37
	call	print_line
	add	rsp, 0x20
	jmp	.label_90
.label_85:
	mov	rdi, qword ptr [rsp + 0x80]
	mov	esi, OFFSET FLAT:time_string.buf
	call	imaxtostr
	mov	r9, rax
.label_94:
	mov	edi, 0xffffffff
	mov	esi, OFFSET FLAT:label_37
	mov	edx, 0x20
	mov	ecx, 0xffffffff
	mov	r8, rbp
	push	OFFSET FLAT:label_37
	push	OFFSET FLAT:label_37
	push	OFFSET FLAT:label_37
	push	OFFSET FLAT:label_37
	call	print_line
	add	rsp, 0x20
	jmp	.label_90
.label_125:
	mov	rdi, qword ptr [rsp + 0x80]
	mov	esi, OFFSET FLAT:time_string.buf
	call	imaxtostr
	mov	r9, rax
.label_106:
	mov	edi, 0xffffffff
	mov	esi, OFFSET FLAT:label_37
	mov	edx, 0x20
	mov	ecx, 0xffffffff
	mov	r8, rbp
	push	OFFSET FLAT:label_37
	push	OFFSET FLAT:label_37
	push	OFFSET FLAT:label_37
	push	OFFSET FLAT:label_37
	call	print_line
	add	rsp, 0x20
	jmp	.label_90
.label_39:
	mov	rdi, qword ptr [rsp + 0x80]
	mov	esi, OFFSET FLAT:time_string.buf
	call	imaxtostr
	mov	r9, rax
.label_51:
	mov	edi, 0xffffffff
	mov	esi, OFFSET FLAT:label_37
	mov	edx, 0x20
	mov	ecx, 0x20
	mov	r8, r15
	push	OFFSET FLAT:label_37
	push	rbp
	lea	rax, [rsp + 0x2c]
	push	rax
	push	OFFSET FLAT:label_37
	call	print_line
	add	rsp, 0x20
	mov	rdi, rbp
	jmp	.label_43
.label_68:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_50
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
.label_80:
	mov	esi, 1
	mov	edx, 7
	mov	ecx, OFFSET FLAT:label_57
	mov	r8d, 6
	xor	eax, eax
	lea	rdi, [rsp + 0x39]
	mov	r9, rbp
	call	__sprintf_chk
.label_93:
	mov	cl, byte ptr [rbx + 0x4c]
	test	cl, cl
	je	.label_64
	mov	byte ptr [rsp + 0x10], r14b
	lea	rax, [rbx + 0x14c]
	mov	esi, 0x4d
	nop	word ptr cs:[rax + rax]
.label_78:
	mov	rdx, rsi
	lea	rsi, [rbx + rdx]
	mov	byte ptr [rsp + rdx + 0x33], cl
	cmp	rsi, rax
	jae	.label_72
	movzx	ecx, byte ptr [rsi]
	lea	rsi, [rdx + 1]
	test	cl, cl
	jne	.label_78
.label_72:
	mov	byte ptr [rsp + rdx + 0x34], 0
	mov	esi, 0x3a
	lea	rdi, [rsp + 0x80]
	call	strchr
	test	rax, rax
	mov	r14d, 0
	je	.label_86
	mov	r14, rax
	inc	r14
	mov	byte ptr [rax], 0
.label_86:
	cmp	byte ptr [rsp + 0x80], 0
	mov	eax, 0
	je	.label_91
	cmp	byte ptr [rip + do_lookup],  1
	mov	eax, 0
	jne	.label_91
	lea	rdi, [rsp + 0x80]
	call	canon_host
.label_91:
	test	rax, rax
	mov	qword ptr [rsp + 0x28], rax
	mov	rbp, rax
	lea	rax, [rsp + 0x80]
	cmove	rbp, rax
	mov	r15, qword ptr [rip + print_user.hostlen]
	mov	rdi, rbp
	call	strlen
	mov	r13, rax
	test	r14, r14
	je	.label_101
	mov	rdi, r14
	call	strlen
	lea	rax, [r13 + rax + 4]
	cmp	r15, rax
	jae	.label_103
	mov	qword ptr [rip + print_user.hostlen],  rax
	mov	rdi, qword ptr [rip + print_user.hoststr]
	call	free
	mov	rdi, qword ptr [rip + print_user.hostlen]
	call	xmalloc
	mov	rdi, rax
	mov	qword ptr [rip + print_user.hoststr],  rdi
	jmp	.label_76
.label_64:
	cmp	qword ptr [rip + print_user.hostlen],  0
	je	.label_110
	mov	rax, qword ptr [rip + print_user.hoststr]
	jmp	.label_113
.label_101:
	add	r13, 3
	cmp	r15, r13
	jae	.label_99
	mov	qword ptr [rip + print_user.hostlen],  r13
	mov	rdi, qword ptr [rip + print_user.hoststr]
	call	free
	mov	rdi, qword ptr [rip + print_user.hostlen]
	call	xmalloc
	mov	rdi, rax
	mov	qword ptr [rip + print_user.hoststr],  rdi
	jmp	.label_122
.label_103:
	mov	rdi, qword ptr [rip + print_user.hoststr]
.label_76:
	mov	r13, qword ptr [rsp + 8]
	mov	r15, qword ptr [rsp + 0x28]
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_109
	xor	eax, eax
	mov	r8, rbp
	mov	r9, r14
	call	__sprintf_chk
	mov	r14b, byte ptr [rsp + 0x10]
	jmp	.label_59
.label_96:
	mov	rdi, qword ptr [rsp + 0x80]
	mov	esi, OFFSET FLAT:time_string.buf
	call	imaxtostr
	mov	r9, rax
.label_100:
	mov	edi, 0xffffffff
	mov	edx, 0x20
	mov	ecx, 0x20
	mov	rsi, r15
	mov	r8, r14
	push	OFFSET FLAT:label_37
	push	rbp
	lea	rax, [rsp + 0x2c]
	push	rax
	push	OFFSET FLAT:label_37
	call	print_line
	add	rsp, 0x20
	mov	rdi, rbp
	jmp	.label_43
.label_110:
	mov	qword ptr [rip + print_user.hostlen],  1
	mov	rdi, qword ptr [rip + print_user.hoststr]
	call	free
	mov	rdi, qword ptr [rip + print_user.hostlen]
	call	xmalloc
	mov	qword ptr [rip + print_user.hoststr],  rax
.label_113:
	mov	byte ptr [rax], 0
	jmp	.label_65
.label_75:
	mov	rdi, qword ptr [rsp + 0x80]
	mov	esi, OFFSET FLAT:time_string.buf
	call	imaxtostr
	mov	r9, rax
.label_84:
	mov	r13, qword ptr [rsp + 8]
	mov	edi, 0xffffffff
	mov	esi, OFFSET FLAT:label_37
	mov	edx, 0x20
	mov	ecx, 0x20
	mov	r8, rbp
	push	qword ptr [rip + print_deadprocs.exitstr]
	push	r15
	lea	rax, [rsp + 0x2c]
	push	rax
	push	OFFSET FLAT:label_37
	call	print_line
	add	rsp, 0x20
	mov	rdi, r15
.label_43:
	call	free
	jmp	.label_90
.label_99:
	mov	rdi, qword ptr [rip + print_user.hoststr]
.label_122:
	mov	r13, qword ptr [rsp + 8]
	mov	r14b, byte ptr [rsp + 0x10]
	mov	r15, qword ptr [rsp + 0x28]
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_92
	xor	eax, eax
	mov	r8, rbp
	call	__sprintf_chk
.label_59:
	test	r15, r15
	je	.label_65
	mov	rdi, rbp
	call	free
.label_65:
	lea	r15, [rbx + 0x2c]
	lea	rbp, [rbx + 8]
	movsxd	rax, dword ptr [rbx + 0x154]
	mov	qword ptr [rsp + 0x80], rax
	lea	rdi, [rsp + 0x80]
	call	localtime
	test	rax, rax
	je	.label_104
	mov	rdx, qword ptr [rip + time_format]
	mov	edi, OFFSET FLAT:time_string.buf
	mov	esi, 0x21
	mov	rcx, rax
	call	strftime
	mov	r9d, OFFSET FLAT:time_string.buf
	jmp	.label_107
.label_104:
	mov	rdi, qword ptr [rsp + 0x80]
	mov	esi, OFFSET FLAT:time_string.buf
	call	imaxtostr
	mov	r9, rax
.label_107:
	mov	rax, qword ptr [rip + print_user.hoststr]
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_37
	cmove	rax, rcx
	movsx	edx, r14b
	mov	edi, 0x20
	mov	ecx, 0x20
	mov	rsi, r15
	mov	r8, rbp
	push	OFFSET FLAT:label_37
	push	rax
	lea	rax, [rsp + 0x2c]
	push	rax
	lea	rax, [rsp + 0x51]
	push	rax
	call	print_line
	add	rsp, 0x20
	nop	word ptr cs:[rax + rax]
.label_90:
	dec	r12
	movzx	eax, word ptr [rbx]
	cmp	eax, 2
	jne	.label_123
	movsxd	rax, dword ptr [rbx + 0x154]
	mov	qword ptr [rsp + 0x30], rax
.label_123:
	add	rbx, 0x180
	test	r12, r12
	jne	.label_118
.label_44:
	mov	rdi, qword ptr [rsp + 0x40]
	call	free
	add	rsp, 0x218
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_112:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbx
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_41
	xor	eax, eax
	mov	esi, ebp
	call	error
.label_83:
	mov	edi, OFFSET FLAT:label_47
	mov	esi, OFFSET FLAT:label_48
	mov	edx, 0xcd
	mov	ecx, OFFSET FLAT:label_49
	call	__assert_fail
	.section	.text
	.align	32
	#Procedure 0x402e68
	.globl sub_402e68
	.type sub_402e68, @function
sub_402e68:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402e70
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_128
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_130:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_130
.label_128:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_131
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_132], OFFSET FLAT:slot0
.label_131:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_129
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_129:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x402f01
	.globl sub_402f01
	.type sub_402f01, @function
sub_402f01:

	nop	word ptr cs:[rax + rax]
.label_133:
	push	rax
	call	abort
	.section	.text
	.align	32
	#Procedure 0x402f16
	.globl sub_402f16
	.type sub_402f16, @function
sub_402f16:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402f1b
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_133
	test	rdx, rdx
	je	.label_133
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
	.section	.text
	.align	32
	#Procedure 0x402f40

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_134
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_136
.label_134:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_136:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_137
	cmp	r10d, 0x29
	jae	.label_146
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_135
.label_146:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_135:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_137
	cmp	r10d, 0x29
	jae	.label_144
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_145
.label_144:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_145:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_137
	cmp	r10d, 0x29
	jae	.label_142
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_143
.label_142:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_143:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_137
	cmp	r10d, 0x29
	jae	.label_140
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_141
.label_140:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_141:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_137
	cmp	r10d, 0x29
	jae	.label_138
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_139
.label_138:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_139:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_137
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_137
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_137
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_137
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_137:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	32
	#Procedure 0x403122
	.globl sub_403122
	.type sub_403122, @function
sub_403122:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403130
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
	#Procedure 0x4031a5
	.globl sub_4031a5
	.type sub_4031a5, @function
sub_4031a5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4031b0
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
	#Procedure 0x4031e6
	.globl sub_4031e6
	.type sub_4031e6, @function
sub_4031e6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4031f0

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
	#Procedure 0x403209
	.globl sub_403209
	.type sub_403209, @function
sub_403209:

	nop	dword ptr [rax]
.label_147:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403215
	.globl sub_403215
	.type sub_403215, @function
sub_403215:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403219
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
	je	.label_147
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
	#Procedure 0x403280

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_37
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_148
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4032a5
	.globl sub_4032a5
	.type sub_4032a5, @function
sub_4032a5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4032b0
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
	#Procedure 0x4032c3
	.globl sub_4032c3
	.type sub_4032c3, @function
sub_4032c3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4032d0

	.globl extract_trimmed_name
	.type extract_trimmed_name, @function
extract_trimmed_name:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	mov	edi, 0x21
	call	xmalloc
	mov	rbx, rax
	lea	rsi, [r14 + 0x2c]
	mov	edx, 0x20
	mov	rdi, rbx
	call	strncpy
	mov	byte ptr [rbx + 0x20], 0
	mov	rdi, rbx
	call	strlen
	test	rax, rax
	jle	.label_150
	add	rax, rbx
	nop	dword ptr [rax]
.label_149:
	cmp	byte ptr [rax - 1], 0x20
	jne	.label_150
	mov	byte ptr [rax - 1], 0
	dec	rax
	cmp	rbx, rax
	jb	.label_149
.label_150:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x40332d
	.globl sub_40332d
	.type sub_40332d, @function
sub_40332d:

	nop	dword ptr [rax]
.label_152:
	add	rsi, 0x13
	movabs	r8, 0x6666666666666667
	nop	dword ptr [rax]
.label_151:
	mov	rax, rcx
	imul	r8
	mov	r10, rdx
	shr	r10, 0x3f
	sar	rdx, 2
	lea	edi, [rdx + r10]
	add	edi, edi
	lea	r9d, [rdi + rdi*4]
	mov	edi, ecx
	sub	edi, r9d
	mov	eax, 0x30
	sub	eax, edi
	mov	byte ptr [rsi], al
	add	rdx, r10
	add	rcx, 9
	dec	rsi
	cmp	rcx, 0x12
	mov	rcx, rdx
	ja	.label_151
	mov	byte ptr [rsi], 0x2d
.label_153:
	mov	rax, rsi
	ret	
	.section	.text
	.align	32
	#Procedure 0x403388
	.globl sub_403388
	.type sub_403388, @function
sub_403388:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403395

	.globl imaxtostr
	.type imaxtostr, @function
imaxtostr:
	mov	rcx, rdi
	mov	byte ptr [rsi + 0x14], 0
	test	rcx, rcx
	js	.label_152
	add	rsi, 0x14
	movabs	r8, 0x6666666666666667
	nop	word ptr [rax + rax]
.label_154:
	mov	rax, rcx
	imul	r8
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 2
	lea	edi, [rdx + rax]
	add	edi, edi
	lea	r9d, [rdi + rdi*4]
	mov	edi, ecx
	sub	edi, r9d
	add	edi, 0x30
	mov	byte ptr [rsi - 1], dil
	dec	rsi
	add	rdx, rax
	add	rcx, 9
	cmp	rcx, 0x12
	mov	rcx, rdx
	ja	.label_154
	jmp	.label_153
	.section	.text
	.align	32
	#Procedure 0x4033f0
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
	je	.label_155
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
.label_155:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403451
	.globl sub_403451
	.type sub_403451, @function
sub_403451:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403460
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_156
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_159
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_160
	call	free
	xor	eax, eax
	jmp	.label_157
.label_156:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_158
	mov	qword ptr [rsi], rbx
.label_160:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_157
	test	rax, rax
	je	.label_158
.label_157:
	pop	rbx
	ret	
.label_159:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4034bf
	.globl sub_4034bf
	.type sub_4034bf, @function
sub_4034bf:

	nop	word ptr cs:[rax + rax]
.label_158:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4034d0
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_161]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_162]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_163]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_164
	test	rsi, rsi
	je	.label_164
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_164:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403540
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_161]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_162]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_163]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_165
	test	rsi, rsi
	je	.label_165
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
.label_165:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4035ac
	.globl sub_4035ac
	.type sub_4035ac, @function
sub_4035ac:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4035b0

	.globl print_line
	.type print_line, @function
print_line:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	qword ptr [rsp + 0x18], r9
	mov	qword ptr [rsp + 0x20], r8
	mov	r12d, ecx
	mov	rbx, rsi
	mov	r13d, edi
	mov	byte ptr [rip + label_177],  dl
	cmp	byte ptr [rip + include_idle],  1
	jne	.label_171
	mov	al, byte ptr [rip + short_output]
	test	al, al
	jne	.label_171
	mov	r14, qword ptr [rsp + 0x70]
	mov	rdi, r14
	call	strlen
	cmp	rax, 6
	ja	.label_171
	lea	rdi, [rsp + 0x10]
	mov	esi, 1
	mov	edx, 8
	mov	ecx, OFFSET FLAT:label_179
	xor	eax, eax
	mov	r8, r14
	call	__sprintf_chk
	jmp	.label_170
.label_171:
	mov	byte ptr [rsp + 0x10], 0
.label_170:
	mov	al, byte ptr [rip + short_output]
	test	al, al
	jne	.label_173
	mov	r14, qword ptr [rsp + 0x78]
	mov	rdi, r14
	call	strlen
	cmp	rax, 0xb
	ja	.label_173
	lea	rdi, [rsp + 0x2b]
	mov	esi, 1
	mov	edx, 0xd
	mov	ecx, OFFSET FLAT:label_180
	xor	eax, eax
	mov	r8, r14
	call	__sprintf_chk
	jmp	.label_176
.label_173:
	mov	byte ptr [rsp + 0x2b], 0
.label_176:
	mov	r14, qword ptr [rsp + 0x88]
	mov	edi, 1
	cmp	byte ptr [rip + include_exit],  1
	jne	.label_174
	mov	rdi, r14
	call	strlen
	cmp	rax, 0xc
	lea	rax, [rax + 2]
	mov	edi, 0xe
	cmovae	rdi, rax
.label_174:
	mov	r15, qword ptr [rsp + 0x80]
	call	xmalloc
	mov	rbp, rax
	cmp	byte ptr [rip + include_exit],  1
	jne	.label_166
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_175
	xor	eax, eax
	mov	rdi, rbp
	mov	r8, r14
	call	__sprintf_chk
	jmp	.label_167
.label_166:
	mov	byte ptr [rbp], 0
.label_167:
	test	rbx, rbx
	mov	r8d, OFFSET FLAT:label_168
	cmovne	r8, rbx
	mov	al, byte ptr [rip + include_mesg]
	mov	ecx, OFFSET FLAT:print_line.mesg
	mov	r9d, OFFSET FLAT:label_37
	test	al, al
	cmovne	r9, rcx
	mov	ebx, dword ptr [rip + time_format_width]
	lea	r10, [rsp + 0x2b]
	lea	r11, [rsp + 0x10]
	lea	rdi, [rsp + 8]
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_169
	mov	eax, 0
	mov	ecx, r13d
	push	rbp
	push	r15
	push	r10
	push	r11
	push	qword ptr [rsp + 0x38]
	push	rbx
	push	qword ptr [rsp + 0x50]
	push	r12
	call	__asprintf_chk
	add	rsp, 0x40
	cmp	eax, -1
	je	.label_178
	mov	rbx, qword ptr [rsp + 8]
	mov	rdi, rbx
	call	strlen
	lea	rax, [rbx + rax + 1]
	nop	dword ptr [rax]
.label_172:
	cmp	byte ptr [rax - 2], 0x20
	lea	rax, [rax - 1]
	je	.label_172
	mov	byte ptr [rax], 0
	mov	rdi, qword ptr [rsp + 8]
	call	puts
	mov	rdi, qword ptr [rsp + 8]
	call	free
	mov	rdi, rbp
	call	free
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_178:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40378d
	.globl sub_40378d
	.type sub_40378d, @function
sub_40378d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403790
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
	je	.label_181
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
.label_181:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4037f8
	.globl sub_4037f8
	.type sub_4037f8, @function
sub_4037f8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403800
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
	#Procedure 0x40380f
	.globl sub_40380f
	.type sub_40380f, @function
sub_40380f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x403810

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_182
	test	rbx, rbx
	jne	.label_182
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_184:
	call	xalloc_die
.label_182:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_183
	test	rax, rax
	je	.label_184
.label_183:
	pop	rbx
	ret	
.label_187:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_185
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
	#Procedure 0x403878
	.globl sub_403878
	.type sub_403878, @function
sub_403878:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403883

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_187
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_190
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_186
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_194
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_189
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_196
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_195
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_188
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_206
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_197
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_198
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_201
	mov	ecx, OFFSET FLAT:label_202
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_200
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_204
	mov	ecx, OFFSET FLAT:label_203
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_199
	mov	esi, OFFSET FLAT:label_207
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_199
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_208
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_199:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_193
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_203
	mov	ecx, OFFSET FLAT:label_191
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_205
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_191
	mov	ecx, OFFSET FLAT:label_192
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_209:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403ab5
	.globl sub_403ab5
	.type sub_403ab5, @function
sub_403ab5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403ac0

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
	je	.label_209
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
	#Procedure 0x403b50
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_210
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_211
	test	rax, rax
	je	.label_210
.label_211:
	pop	rbx
	ret	
.label_210:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x403b85
	.globl sub_403b85
	.type sub_403b85, @function
sub_403b85:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403b90

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_212
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_212:
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
	#Procedure 0x403c13
	.globl sub_403c13
	.type sub_403c13, @function
sub_403c13:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403c20
	.globl canon_host_r
	.type canon_host_r, @function
canon_host_r:

	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	mov	qword ptr [rsp], 0
	mov	dword ptr [rip + canon_host_r.hints],  2
	lea	rcx, [rsp]
	xor	esi, esi
	mov	edx, OFFSET FLAT:canon_host_r.hints
	call	getaddrinfo
	test	eax, eax
	je	.label_215
	xor	ebx, ebx
	test	r14, r14
	je	.label_213
	mov	dword ptr [r14], eax
	xor	ebx, ebx
	jmp	.label_213
.label_215:
	mov	rax, qword ptr [rsp]
	mov	rax, qword ptr [rax + 0x20]
	test	rax, rax
	cmovne	rbx, rax
	mov	rdi, rbx
	call	__strdup
	mov	rbx, rax
	test	r14, r14
	je	.label_214
	test	rbx, rbx
	jne	.label_214
	mov	dword ptr [r14], 0xfffffff6
.label_214:
	mov	rdi, qword ptr [rsp]
	call	freeaddrinfo
.label_213:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x403c9d
	.globl sub_403c9d
	.type sub_403c9d, @function
sub_403c9d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403ca0

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
	je	.label_216
	test	r15, r15
	je	.label_217
.label_216:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_217:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x403cdc
	.globl sub_403cdc
	.type sub_403cdc, @function
sub_403cdc:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403ce0
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_161]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_162]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_163]
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
	#Procedure 0x403d4f
	.globl sub_403d4f
	.type sub_403d4f, @function
sub_403d4f:

	nop	
.label_222:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_218
	mov	eax, OFFSET FLAT:label_219
	jmp	.label_220
	.section	.text
	.align	32
	#Procedure 0x403d5f
	.globl sub_403d5f
	.type sub_403d5f, @function
sub_403d5f:

	nop	word ptr cs:[rax + rax]
.label_227:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_221
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_221
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_221
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_221
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_221
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_221
	cmp	byte ptr [rax + 7], 0
	je	.label_222
.label_221:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_223
	mov	eax, OFFSET FLAT:label_224
.label_220:
	cmove	rax, rcx
.label_228:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403db2

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
	jne	.label_228
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_227
	cmp	ecx, 0x55
	jne	.label_221
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_221
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_221
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_221
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_221
	cmp	byte ptr [rax + 5], 0
	jne	.label_221
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_225
	mov	eax, OFFSET FLAT:label_226
	jmp	.label_220
	.section	.text
	.align	32
	#Procedure 0x403e20
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_161]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_162]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_163]
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
	#Procedure 0x403e74
	.globl sub_403e74
	.type sub_403e74, @function
sub_403e74:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403e80
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_229
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_230
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_232
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_204
	mov	ecx, OFFSET FLAT:label_203
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_231
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	32
	#Procedure 0x403ef4
	.globl sub_403ef4
	.type sub_403ef4, @function
sub_403ef4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403f00
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_161]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_162]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_163]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_233
	test	rdx, rdx
	je	.label_233
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_233:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403f6e
	.globl sub_403f6e
	.type sub_403f6e, @function
sub_403f6e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x403f70

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
	je	.label_244
	mov	edx, OFFSET FLAT:label_239
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_246
.label_244:
	mov	edx, OFFSET FLAT:label_247
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_246:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_252
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
	mov	esi, OFFSET FLAT:label_249
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_235
	jmp	qword ptr [(r12 * 8) + label_236]
.label_539:
	add	rsp, 8
	jmp	.label_234
.label_235:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_243
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
	jmp	.label_234
.label_540:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_250
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
.label_541:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_248
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
.label_542:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_241
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
.label_543:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_237
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
	jmp	.label_234
.label_544:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_240
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
	jmp	.label_234
.label_545:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_238
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
	jmp	.label_234
.label_546:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_242
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
	jmp	.label_234
.label_548:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_245
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
	jmp	.label_234
.label_547:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_251
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
.label_234:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x4042c8
	.globl sub_4042c8
	.type sub_4042c8, @function
sub_4042c8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4042d0
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_161]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_162]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_163]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_253
	test	rdx, rdx
	je	.label_253
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_253:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40433a
	.globl sub_40433a
	.type sub_40433a, @function
sub_40433a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404340
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
	#Procedure 0x404401
	.globl sub_404401
	.type sub_404401, @function
sub_404401:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404410
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
	#Procedure 0x404428
	.globl sub_404428
	.type sub_404428, @function
sub_404428:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404430

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_254
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_41
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x404460

	.globl main
	.type main, @function
main:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rsi
	mov	ebx, edi
	mov	rdi, qword ptr [r14]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_37
	call	setlocale
	mov	edi, OFFSET FLAT:label_255
	mov	esi, OFFSET FLAT:label_256
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_255
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	bpl, 1
	jmp	.label_259
.label_258:
	mov	byte ptr [rip + include_idle],  1
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_259:
	mov	edx, OFFSET FLAT:label_263
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, ebx
	mov	rsi, r14
	call	getopt_long
	lea	ecx, [rax + 1]
	cmp	ecx, 0x81
	ja	.label_266
	jmp	qword ptr [(rcx * 8) + label_270]
.label_555:
	mov	byte ptr [rip + include_mesg],  1
	jmp	.label_259
.label_554:
	mov	byte ptr [rip + include_heading],  1
	jmp	.label_259
.label_557:
	mov	byte ptr [rip + need_boottime],  1
	xor	ebp, ebp
	jmp	.label_259
.label_558:
	mov	byte ptr [rip + need_deadprocs],  1
	jmp	.label_257
.label_559:
	mov	byte ptr [rip + need_login],  1
	jmp	.label_258
.label_560:
	mov	byte ptr [rip + my_line_only],  1
	jmp	.label_259
.label_563:
	mov	byte ptr [rip + need_runlevel],  1
	jmp	.label_258
.label_564:
	mov	byte ptr [rip + short_output],  1
	jmp	.label_259
.label_567:
	mov	byte ptr [rip + do_lookup],  1
	jmp	.label_259
.label_556:
	mov	byte ptr [rip + need_boottime],  1
	mov	byte ptr [rip + need_deadprocs],  1
	mov	byte ptr [rip + need_login],  1
	mov	byte ptr [rip + need_initspawn],  1
	mov	byte ptr [rip + need_runlevel],  1
	mov	byte ptr [rip + need_clockchange],  1
	mov	byte ptr [rip + need_users],  1
	mov	byte ptr [rip + include_mesg],  1
.label_257:
	mov	byte ptr [rip + include_idle],  1
	mov	byte ptr [rip + include_exit],  1
	xor	ebp, ebp
	jmp	.label_259
.label_561:
	mov	byte ptr [rip + need_initspawn],  1
	xor	ebp, ebp
	jmp	.label_259
.label_562:
	mov	byte ptr [rip + short_list],  1
	jmp	.label_259
.label_565:
	mov	byte ptr [rip + need_clockchange],  1
	xor	ebp, ebp
	jmp	.label_259
.label_566:
	mov	byte ptr [rip + need_users],  1
	jmp	.label_258
.label_553:
	test	bpl, bpl
	je	.label_265
	mov	byte ptr [rip + need_users],  1
	mov	byte ptr [rip + short_output],  1
.label_265:
	cmp	byte ptr [rip + include_exit],  1
	jne	.label_267
	mov	byte ptr [rip + short_output],  0
.label_267:
	mov	edi, 2
	call	hard_locale
	mov	ecx, OFFSET FLAT:label_271
	mov	edx, OFFSET FLAT:label_272
	test	al, al
	cmovne	rdx, rcx
	movzx	eax, al
	lea	eax, [rax*4 + 0xc]
	mov	qword ptr [rip + time_format],  rdx
	mov	dword ptr [rip + time_format_width],  eax
	movsxd	rax, dword ptr [rip + optind]
	sub	ebx, eax
	lea	ecx, [rbx + 1]
	cmp	ecx, 2
	jb	.label_273
	cmp	ebx, 1
	je	.label_260
	cmp	ebx, 2
	jne	.label_261
	mov	byte ptr [rip + my_line_only],  1
.label_273:
	mov	edi, OFFSET FLAT:label_201
	mov	esi, 1
	jmp	.label_264
.label_260:
	mov	rdi, qword ptr [r14 + rax*8]
	xor	esi, esi
.label_264:
	call	who
	xor	eax, eax
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_266:
	cmp	eax, 0xffffff7d
	je	.label_268
	cmp	eax, 0xffffff7e
	jne	.label_269
	xor	edi, edi
	call	usage
.label_269:
	mov	edi, 1
	call	usage
.label_268:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	esi, OFFSET FLAT:label_191
	mov	edx, OFFSET FLAT:label_204
	mov	r8d, OFFSET FLAT:label_274
	mov	r9d, OFFSET FLAT:label_275
	mov	eax, 0
	push	0
	push	OFFSET FLAT:label_276
	call	version_etc
	add	rsp, 0x10
	xor	edi, edi
	call	exit
.label_261:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_262
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	movsxd	rax, dword ptr [rip + optind]
	mov	rdi, qword ptr [r14 + rax*8 + 0x10]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	edi, 1
	call	usage
	.section	.text
	.align	32
	#Procedure 0x4046fe
	.globl sub_4046fe
	.type sub_4046fe, @function
sub_4046fe:

	nop	
.label_278:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_279
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
.label_280:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_277
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_278
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_41
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	.section	.text
	.align	32
	#Procedure 0x404772

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_281
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_280
	cmp	dword ptr [rbp], 0x20
	jne	.label_280
.label_281:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_282
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_282:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	.section	.text
	.align	32
	#Procedure 0x4047c0
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
	#Procedure 0x4047d9
	.globl sub_4047d9
	.type sub_4047d9, @function
sub_4047d9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4047e0

	.globl read_utmp
	.type read_utmp, @function
read_utmp:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r12d, ecx
	mov	qword ptr [rsp + 0x10], rdx
	mov	qword ptr [rsp + 8], rsi
	call	utmpxname
	call	setutxent
	call	getutxent
	mov	rbp, rax
	xor	r13d, r13d
	test	rbp, rbp
	mov	ebx, 0
	je	.label_285
	mov	r14d, r12d
	and	r14d, 2
	and	r12d, 1
	xor	ebx, ebx
	xor	r13d, r13d
	xor	r15d, r15d
.label_290:
	test	r14d, r14d
	jne	.label_289
	test	r12d, r12d
	je	.label_284
	nop	
.label_283:
	cmp	byte ptr [rbp + 0x2c], 0
	je	.label_284
	movzx	eax, word ptr [rbp]
	cmp	eax, 7
	jne	.label_284
	mov	edi, dword ptr [rbp + 4]
	test	edi, edi
	jle	.label_284
	xor	esi, esi
	call	kill
	test	eax, eax
	jns	.label_284
	call	__errno_location
	cmp	dword ptr [rax], 3
	jne	.label_284
	call	getutxent
	mov	rbp, rax
	test	rbp, rbp
	jne	.label_283
	jmp	.label_285
	.section	.text
	.align	32
	#Procedure 0x404891
	.globl sub_404891
	.type sub_404891, @function
sub_404891:

	nop	word ptr cs:[rax + rax]
.label_289:
	test	r12d, r12d
	jne	.label_286
	nop	word ptr cs:[rax + rax]
.label_293:
	cmp	byte ptr [rbp + 0x2c], 0
	je	.label_288
	movzx	eax, word ptr [rbp]
	cmp	eax, 7
	je	.label_284
.label_288:
	call	getutxent
	mov	rbp, rax
	test	rbp, rbp
	jne	.label_293
	jmp	.label_285
	.section	.text
	.align	32
	#Procedure 0x4048d1
	.globl sub_4048d1
	.type sub_4048d1, @function
sub_4048d1:

	nop	word ptr cs:[rax + rax]
.label_286:
	cmp	byte ptr [rbp + 0x2c], 0
	je	.label_295
	movzx	eax, word ptr [rbp]
	cmp	eax, 7
	jne	.label_295
	mov	edi, dword ptr [rbp + 4]
	test	edi, edi
	jle	.label_284
	xor	esi, esi
	call	kill
	test	eax, eax
	jns	.label_284
	call	__errno_location
	cmp	dword ptr [rax], 3
	jne	.label_284
.label_295:
	call	getutxent
	mov	rbp, rax
	test	rbp, rbp
	jne	.label_286
	jmp	.label_285
	.section	.text
	.align	32
	#Procedure 0x40491d
	.globl sub_40491d
	.type sub_40491d, @function
sub_40491d:

	nop	dword ptr [rax]
.label_284:
	cmp	rbx, r15
	jne	.label_287
	test	r13, r13
	je	.label_294
	movabs	rax, 0x38e38e38e38e38
	cmp	rbx, rax
	jae	.label_291
	mov	rax, rbx
	shr	rax, 1
	lea	r15, [rbx + rax + 1]
	jmp	.label_292
.label_294:
	test	rbx, rbx
	mov	r15, rbx
	mov	eax, 1
	cmove	r15, rax
	movabs	rax, 0x55555555555556
	cmp	r15, rax
	jae	.label_296
.label_292:
	mov	rax, r15
	shl	rax, 7
	lea	rsi, [rax + rax*2]
	mov	rdi, r13
	call	xrealloc
	mov	r13, rax
.label_287:
	lea	rdi, [rbx + rbx*2]
	inc	rbx
	shl	rdi, 7
	add	rdi, r13
	mov	edx, 0x180
	mov	rsi, rbp
	call	memcpy
	call	getutxent
	mov	rbp, rax
	test	rbp, rbp
	jne	.label_290
.label_285:
	call	endutxent
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], rbx
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rax], r13
	xor	eax, eax
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_291:
	call	xalloc_die
.label_296:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4049da
	.globl sub_4049da
	.type sub_4049da, @function
sub_4049da:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4049e0
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_161]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_162]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_163]
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
	#Procedure 0x404a4e
	.globl sub_404a4e
	.type sub_404a4e, @function
sub_404a4e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x404a50
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x404a5a
	.globl sub_404a5a
	.type sub_404a5a, @function
sub_404a5a:

	nop	word ptr [rax + rax]
.label_297:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x404a65
	.globl sub_404a65
	.type sub_404a65, @function
sub_404a65:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404a6b
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_298
	test	rax, rax
	je	.label_297
.label_298:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x404a80

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
	je	.label_299
	cmp	r15, -2
	jb	.label_299
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_299
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_299:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x404ad6
	.globl sub_404ad6
	.type sub_404ad6, @function
sub_404ad6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404ae0
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
	#Procedure 0x404af8
	.globl sub_404af8
	.type sub_404af8, @function
sub_404af8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404b00

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_301
	cmp	byte ptr [rax], 0x43
	jne	.label_303
	cmp	byte ptr [rax + 1], 0
	je	.label_300
.label_303:
	mov	esi, OFFSET FLAT:label_302
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_301
.label_300:
	xor	ebx, ebx
.label_301:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x404b31
	.globl sub_404b31
	.type sub_404b31, @function
sub_404b31:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404b40
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
	je	.label_304
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
.label_304:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x404ba8
	.globl sub_404ba8
	.type sub_404ba8, @function
sub_404ba8:

	nop	dword ptr [rax + rax]
.label_306:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_305
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_305:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404be4
	.globl sub_404be4
	.type sub_404be4, @function
sub_404be4:

	nop	
	.section	.text
	.align	32
	#Procedure 0x404be6

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
	jne	.label_307
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_307
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_306
.label_307:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_310:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_311
	test	rax, rax
	je	.label_312
.label_311:
	pop	rbx
	ret	
.label_308:
	test	rcx, rcx
	jne	.label_314
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_314:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_313
.label_309:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_310
	test	rbx, rbx
	jne	.label_310
	call	free
	xor	eax, eax
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x404c80
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_308
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_312
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_309
.label_312:
	call	xalloc_die
.label_313:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x404cb7
	.globl sub_404cb7
	.type sub_404cb7, @function
sub_404cb7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404cc0
	.globl ch_strerror
	.type ch_strerror, @function
ch_strerror:

	mov	edi, dword ptr [rip + last_cherror]
	jmp	gai_strerror
	.section	.text
	.align	32
	#Procedure 0x404ccb
	.globl sub_404ccb
	.type sub_404ccb, @function
sub_404ccb:

	nop	dword ptr [rax + rax]
.label_316:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_315
	call	__errno_location
	mov	dword ptr [rax], 0
.label_315:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404ceb

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
	jne	.label_316
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_315
	test	cl, cl
	jne	.label_315
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_315
.label_322:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_320
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	32
	#Procedure 0x404d50
	.globl sub_404d50
	.type sub_404d50, @function
sub_404d50:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404d5f

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_322
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_317
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_319
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_317
	mov	esi, OFFSET FLAT:label_318
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_321
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_321:
	mov	rbx, r14
.label_317:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x404de0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_161]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_162]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_163]
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
	#Procedure 0x404e35
	.globl sub_404e35
	.type sub_404e35, @function
sub_404e35:

	nop	word ptr cs:[rax + rax]
.label_325:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x404e45
	.globl sub_404e45
	.type sub_404e45, @function
sub_404e45:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404e4d
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_325
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_324
	test	rbx, rbx
	jne	.label_324
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_324:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_323
	test	rax, rax
	je	.label_325
.label_323:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x404e90
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x404e98
	.globl sub_404e98
	.type sub_404e98, @function
sub_404e98:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404ea0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	.section	.text
	.align	32
	#Procedure 0x404ea8
	.globl sub_404ea8
	.type sub_404ea8, @function
sub_404ea8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404eb0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_326:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_326
	jmp	version_etc_arn
	.section	.text
	.align	32
	#Procedure 0x404ed1
	.globl sub_404ed1
	.type sub_404ed1, @function
sub_404ed1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404ee0

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
	jmp	.label_406
	.section	.text
	.align	32
	#Procedure 0x404f8f
	.globl sub_404f8f
	.type sub_404f8f, @function
sub_404f8f:

	nop	
.label_443:
	cmp	r8d, 2
	setne	al
	cmp	byte ptr [rsp + 0xf], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa8]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x34]
	mov	rsi, qword ptr [rsp + 0xc0]
	je	.label_425
	or	al, dl
	jne	.label_425
	test	dil, 1
	jne	.label_440
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_425
	test	rbp, rbp
	mov	r15d, r8d
	mov	al, bl
	mov	qword ptr [rsp + 0x48], rcx
	mov	r12d, esi
	mov	r13, qword ptr [rsp + 0x68]
	je	.label_406
	jmp	.label_425
.label_521:
	mov	r8d, 5
	test	r12b, 1
	jne	.label_449
	test	rbp, rbp
	je	.label_329
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax], 0x22
.label_329:
	mov	r14d, 1
	jmp	.label_331
.label_522:
	mov	r13b, 1
	mov	r8d, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_223
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	sil, 1
	jmp	.label_333
.label_449:
	xor	r14d, r14d
.label_331:
	mov	eax, OFFSET FLAT:label_223
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	r13b, 1
	jmp	.label_426
	.section	.text
	.align	32
	#Procedure 0x40505f
	.globl sub_40505f
	.type sub_40505f, @function
sub_40505f:

	nop	
.label_406:
	mov	rbp, r13
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_356
	mov	r8d, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	jmp	qword ptr [(rcx * 8) + label_336]
.label_523:
	mov	r14d, edi
	mov	edi, OFFSET FLAT:label_368
	mov	esi, r15d
	mov	ebx, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x80], rax
	mov	edi, OFFSET FLAT:label_224
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebx
	mov	edi, r14d
	mov	qword ptr [rsp + 0x78], rax
.label_524:
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x80]
	jne	.label_382
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_382
	xor	r14d, r14d
	nop	
.label_448:
	cmp	r14, rbp
	jae	.label_432
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], al
.label_432:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_448
.label_382:
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
	jmp	.label_333
.label_516:
	xor	r8d, r8d
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_333
.label_519:
	mov	al, 1
.label_517:
	mov	r12b, 1
.label_520:
	test	r12b, 1
	mov	cl, 1
	je	.label_414
	mov	ecx, eax
.label_414:
	mov	al, cl
.label_518:
	mov	r8d, 2
	test	r12b, 1
	jne	.label_416
	test	rbp, rbp
	je	.label_420
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx], 0x27
.label_420:
	mov	r14d, 1
	jmp	.label_373
.label_416:
	xor	r14d, r14d
.label_373:
	mov	ecx, OFFSET FLAT:label_224
	mov	qword ptr [rsp + 0x58], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x50], rcx
	mov	r13d, eax
.label_426:
	mov	sil, r12b
.label_333:
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
	jmp	.label_430
	.section	.text
	.align	32
	#Procedure 0x405221
	.globl sub_405221
	.type sub_405221, @function
sub_405221:

	nop	word ptr cs:[rax + rax]
.label_332:
	inc	r12
.label_430:
	cmp	r11, -1
	je	.label_341
	cmp	r12, r11
	jne	.label_344
	jmp	.label_345
	.section	.text
	.align	32
	#Procedure 0x405243
	.globl sub_405243
	.type sub_405243, @function
sub_405243:

	nop	word ptr cs:[rax + rax]
.label_341:
	mov	rcx, -1
	cmp	byte ptr [r10 + r12], 0
	je	.label_447
.label_344:
	cmp	byte ptr [rsp + 0x37], 0
	je	.label_357
	mov	rax, qword ptr [rsp + 0x50]
	lea	rbx, [r12 + rax]
	cmp	rax, 2
	jb	.label_364
	cmp	r11, -1
	jne	.label_364
	mov	r15d, edi
	mov	rdi, r10
	mov	r13d, r9d
	call	strlen
	mov	r9d, r13d
	mov	r8, qword ptr [rsp + 0x38]
	mov	edi, r15d
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_364:
	cmp	rbx, r11
	jbe	.label_372
.label_357:
	xor	esi, esi
.label_397:
	movzx	r15d, byte ptr [r10 + r12]
	cmp	r15, 0x7e
	ja	.label_374
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_378]
.label_482:
	test	r12, r12
	jne	.label_328
	jmp	.label_385
	.section	.text
	.align	32
	#Procedure 0x4052d6
	.globl sub_4052d6
	.type sub_4052d6, @function
sub_4052d6:

	nop	word ptr cs:[rax + rax]
.label_372:
	mov	r13d, r9d
	mov	r15d, edi
	mov	rbx, r11
	lea	rdi, [r10 + r12]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	rdx, qword ptr [rsp + 0x50]
	call	memcmp
	test	eax, eax
	sete	sil
	jne	.label_395
	cmp	byte ptr [rsp + 0xf], 0
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	je	.label_397
	jmp	.label_350
.label_395:
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	jmp	.label_397
.label_486:
	xor	eax, eax
	cmp	r11, -1
	je	.label_408
	test	r12, r12
	jne	.label_412
	cmp	r11, 1
	je	.label_385
	xor	r13d, r13d
	jmp	.label_337
.label_475:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_418
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_350
	cmp	r8d, 2
	jne	.label_422
	mov	eax, r9d
	and	al, 1
	jne	.label_422
	cmp	r14, rbp
	jae	.label_424
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_424:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_427
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_427:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_434
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_434:
	add	r14, 3
	mov	r9b, 1
.label_422:
	mov	rcx, r14
	cmp	rcx, rbp
	jae	.label_439
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + rcx], 0x5c
.label_439:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r8d, 2
	je	.label_442
	lea	rdx, [r12 + 1]
	cmp	rdx, r11
	jae	.label_442
	mov	dl, byte ptr [r10 + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_442
	cmp	r14, rbp
	jae	.label_383
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x30
.label_383:
	lea	rdx, [rcx + 2]
	cmp	rdx, rbp
	jae	.label_366
	mov	ebx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rdx], 0x30
	mov	esi, ebx
.label_366:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_337
.label_476:
	mov	bl, 0x62
	jmp	.label_342
.label_477:
	mov	cl, 0x74
	jmp	.label_334
.label_478:
	mov	bl, 0x76
	jmp	.label_342
.label_479:
	mov	bl, 0x66
	jmp	.label_342
.label_480:
	mov	cl, 0x72
	jmp	.label_334
.label_483:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa8], rax
	cmp	r8d, 2
	jne	.label_354
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_340
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
	jae	.label_363
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_363:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_376
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x5c
.label_376:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_380
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_380:
	add	r14, 3
	xor	r9d, r9d
.label_354:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_337
.label_484:
	mov	r15b, 0x3f
	cmp	r8d, 5
	je	.label_390
	cmp	r8d, 2
	jne	.label_328
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_328
	jmp	.label_340
.label_485:
	cmp	r8d, 2
	jne	.label_399
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_340
	mov	r15b, 0x5c
	xor	eax, eax
	jmp	.label_403
.label_374:
	cmp	qword ptr [rsp + 0xb8], 1
	mov	qword ptr [rsp + 0xa0], rbp
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	mov	dword ptr [rsp + 0x94], esi
	jne	.label_405
	mov	qword ptr [rsp + 0x48], r11
	call	__ctype_b_loc
	mov	r10, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	ebx, 1
	jmp	.label_409
.label_408:
	test	r12, r12
	jne	.label_423
	mov	cl, byte ptr [r10 + 1]
	test	cl, cl
	jne	.label_423
.label_385:
	mov	dl, 1
.label_481:
	cmp	byte ptr [rsp + 0x27], 0
	je	.label_340
	xor	eax, eax
	mov	r13b, dl
.label_337:
	cmp	byte ptr [rsp + 0x36], 0
	je	.label_431
	cmp	qword ptr [rsp + 0x100], 0
	jne	.label_435
	jmp	.label_436
	.section	.text
	.align	32
	#Procedure 0x4055b4
	.globl sub_4055b4
	.type sub_4055b4, @function
sub_4055b4:

	nop	word ptr cs:[rax + rax]
.label_431:
	cmp	byte ptr [rsp + 0x35], 0
	je	.label_436
.label_435:
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	ebx, esi
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_375
	mov	rcx, qword ptr [rsp + 0x100]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_446
	.section	.text
	.align	32
	#Procedure 0x4055ed
	.globl sub_4055ed
	.type sub_4055ed, @function
sub_4055ed:

	nop	dword ptr [rax]
.label_436:
	test	sil, sil
.label_446:
	mov	ebx, r15d
	je	.label_338
	jmp	.label_451
.label_375:
	mov	ebx, r15d
	jmp	.label_451
.label_418:
	cmp	dword ptr [rsp + 0x9c], 0
	jne	.label_332
	xor	r15d, r15d
	jmp	.label_328
.label_399:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x32], 0
	je	.label_334
	xor	eax, eax
	mov	r15b, 0x5c
.label_403:
	xor	r13d, r13d
	jmp	.label_338
.label_334:
	cmp	byte ptr [rsp + 0x27], 0
	mov	ebx, ecx
	je	.label_340
.label_342:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1f], 0
	mov	r13d, 0
	je	.label_337
	nop	
.label_451:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_350
	cmp	r8d, 2
	jne	.label_355
	mov	eax, r9d
	and	al, 1
	jne	.label_355
	cmp	r14, rbp
	jae	.label_360
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_360:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_384
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_384:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_367
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_367:
	add	r14, 3
	mov	r9b, 1
.label_355:
	cmp	r14, rbp
	jae	.label_441
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_441:
	inc	r14
	jmp	.label_421
.label_405:
	mov	qword ptr [rsp + 0x70], 0
	cmp	r11, -1
	jne	.label_379
	mov	rdi, r10
	call	strlen
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_379:
	cmp	byte ptr [rsp + 0x31], 0
	mov	qword ptr [rsp + 0x48], r11
	mov	qword ptr [rsp + 0x88], r12
	je	.label_387
	lea	rax, [r10 + r12]
	mov	qword ptr [rsp + 0xb0], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbp, [rsp + 0x70]
.label_393:
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
	je	.label_400
	cmp	rbx, -1
	mov	r10, qword ptr [rsp + 0x28]
	movabs	rsi, 0x20000002b
	je	.label_410
	test	rbx, rbx
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_335
	cmp	rbx, 2
	mov	rbp, qword ptr [rsp + 0xa0]
	jb	.label_401
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax]
.label_343:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_433
	bt	rsi, rdx
	jb	.label_340
.label_433:
	inc	rcx
	cmp	rcx, rbx
	jb	.label_343
.label_401:
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	jne	.label_437
	xor	r13d, r13d
.label_437:
	lea	rbp, [rsp + 0x70]
	mov	r12, qword ptr [rsp + 0x40]
	add	r12, rbx
	mov	rdi, rbp
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_393
	jmp	.label_388
.label_442:
	xor	r13d, r13d
	jmp	.label_337
.label_423:
	mov	r11, -1
	xor	r13d, r13d
	jmp	.label_337
.label_390:
	cmp	dword ptr [rsp + 0x98], 0
	je	.label_328
	lea	rcx, [r12 + 2]
	cmp	rcx, r11
	jae	.label_328
	cmp	byte ptr [r10 + r12 + 1], 0x3f
	jne	.label_328
	movsx	edx, byte ptr [r10 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_339
	mov	ebx, esi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_415
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_349
	cmp	r14, rbp
	jae	.label_352
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x3f
.label_352:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_359
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_359:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_438
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_438:
	lea	rax, [r14 + 3]
	cmp	rax, rbp
	jae	.label_407
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x3f
.label_407:
	add	r14, 4
	xor	eax, eax
	mov	r12, rcx
	mov	r15b, dl
.label_415:
	xor	r13d, r13d
	mov	esi, ebx
	jmp	.label_337
.label_328:
	xor	eax, eax
.label_412:
	xor	r13d, r13d
	jmp	.label_337
.label_387:
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbx, [rsp + 0x70]
	nop	word ptr cs:[rax + rax]
.label_413:
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
	je	.label_396
	cmp	rbp, -1
	je	.label_398
	cmp	rbp, -2
	je	.label_400
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	mov	r12, qword ptr [rsp + 0x40]
	jne	.label_402
	xor	r13d, r13d
.label_402:
	add	r12, rbp
	lea	rbx, [rsp + 0x70]
	mov	rdi, rbx
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_413
	jmp	.label_388
.label_400:
	mov	r10, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x40]
	lea	rax, [rsi + r12]
	mov	rdx, qword ptr [rsp + 0x48]
	cmp	rax, rdx
	jae	.label_351
	lea	rax, [r10 + r12]
.label_404:
	cmp	byte ptr [rax + rsi], 0
	je	.label_351
	lea	rcx, [r12 + rsi + 1]
	inc	rsi
	cmp	rcx, rdx
	jb	.label_404
.label_351:
	mov	qword ptr [rsp + 0x40], rsi
.label_410:
	xor	r13d, r13d
	jmp	.label_335
.label_398:
	xor	r13d, r13d
.label_396:
	mov	r10, qword ptr [rsp + 0x28]
.label_335:
	mov	r12, qword ptr [rsp + 0x40]
.label_388:
	mov	rbx, r12
	mov	r12, qword ptr [rsp + 0x88]
.label_409:
	and	r13b, 1
	mov	eax, r13d
	or	al, byte ptr [rsp + 0x33]
	cmp	rbx, 1
	mov	rbp, qword ptr [rsp + 0xa0]
	mov	dil, byte ptr [rsp + 0x1e]
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x60]
	mov	esi, dword ptr [rsp + 0x94]
	ja	.label_429
	test	al, al
	je	.label_429
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_337
.label_429:
	mov	byte ptr [rsp + 0x40], al
	add	rbx, r12
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_444
	.section	.text
	.align	32
	#Procedure 0x4059e7
	.globl sub_4059e7
	.type sub_4059e7, @function
sub_4059e7:

	nop	word ptr [rax + rax]
.label_411:
	inc	r14
	mov	r15b, byte ptr [r10 + r12 + 1]
	mov	r12, rdx
.label_444:
	cmp	byte ptr [rsp + 0x40], 0
	je	.label_450
	test	sil, 1
	je	.label_327
	cmp	r14, rbp
	jae	.label_348
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x5c
.label_348:
	inc	r14
	xor	esi, esi
	jmp	.label_327
	.section	.text
	.align	32
	#Procedure 0x405a25
	.globl sub_405a25
	.type sub_405a25, @function
sub_405a25:

	nop	word ptr cs:[rax + rax]
.label_450:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_350
	cmp	r8d, 2
	jne	.label_346
	mov	eax, r9d
	and	al, 1
	jne	.label_346
	cmp	r14, rbp
	jae	.label_347
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_347:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_353
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x24
.label_353:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_445
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x27
.label_445:
	add	r14, 3
	mov	r9b, 1
.label_346:
	cmp	r14, rbp
	jae	.label_365
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_365:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_370
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_370:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_377
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_377:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_327:
	lea	rdx, [r12 + 1]
	cmp	rbx, rdx
	jbe	.label_338
	test	r9b, 1
	je	.label_391
	mov	rcx, rbx
	mov	ebx, eax
	and	bl, 1
	jne	.label_381
	mov	r8, r12
	mov	r12d, esi
	cmp	r14, rbp
	jae	.label_394
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], 0x27
.label_394:
	lea	rsi, [r14 + 1]
	cmp	rsi, rbp
	jae	.label_358
	mov	rbx, qword ptr [rsp + 0x10]
	mov	byte ptr [rbx + rsi], 0x27
.label_358:
	add	r14, 2
	xor	r9d, r9d
	mov	esi, r12d
	mov	rbx, rcx
	mov	r12, r8
	mov	r8, qword ptr [rsp + 0x38]
	jmp	.label_391
	.section	.text
	.align	32
	#Procedure 0x405b36
	.globl sub_405b36
	.type sub_405b36, @function
sub_405b36:

	nop	word ptr cs:[rax + rax]
.label_381:
	mov	rbx, rcx
.label_391:
	cmp	r14, rbp
	jae	.label_411
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], r15b
	mov	esi, ecx
	jmp	.label_411
	.section	.text
	.align	32
	#Procedure 0x405b5e
	.globl sub_405b5e
	.type sub_405b5e, @function
sub_405b5e:

	nop	
.label_338:
	test	r9b, 1
	je	.label_417
	and	al, 1
	jne	.label_417
	cmp	r14, rbp
	jae	.label_419
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_419:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_386
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_386:
	add	r14, 2
	xor	r9d, r9d
.label_417:
	mov	ebx, r15d
.label_421:
	cmp	r14, rbp
	jae	.label_428
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], bl
.label_428:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, dil
	mov	edi, r13d
	jmp	.label_332
.label_339:
	xor	r13d, r13d
	jmp	.label_337
	.section	.text
	.align	32
	#Procedure 0x405bc1
	.globl sub_405bc1
	.type sub_405bc1, @function
sub_405bc1:

	nop	word ptr cs:[rax + rax]
.label_345:
	mov	rcx, r12
.label_447:
	cmp	r8d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_443
	or	al, dl
	jne	.label_443
	mov	r11, rcx
	jmp	.label_350
.label_340:
	mov	eax, 2
.label_330:
	mov	qword ptr [rsp + 0x38], rax
.label_350:
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
.label_389:
	mov	r14, rax
.label_392:
	mov	rax, r14
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_425:
	mov	rdx, qword ptr [rsp + 0x58]
	test	rdx, rdx
	je	.label_361
	cmp	byte ptr [rsp + 0xf], 0
	mov	rcx, qword ptr [rsp + 0x10]
	jne	.label_362
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_362
	inc	rdx
	nop	dword ptr [rax + rax]
.label_371:
	cmp	r14, rbp
	jae	.label_369
	mov	byte ptr [rcx + r14], al
.label_369:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_371
	jmp	.label_362
.label_440:
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
	jmp	.label_389
.label_361:
	mov	rcx, qword ptr [rsp + 0x10]
.label_362:
	cmp	r14, rbp
	jae	.label_392
	mov	byte ptr [rcx + r14], 0
	jmp	.label_392
.label_349:
	mov	eax, 5
	jmp	.label_330
.label_356:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x405d75
	.globl sub_405d75
	.type sub_405d75, @function
sub_405d75:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405d82
	.globl sub_405d82
	.type sub_405d82, @function
sub_405d82:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405da6
	.globl sub_405da6
	.type sub_405da6, @function
sub_405da6:

	nop	word ptr cs:[rax + rax]
