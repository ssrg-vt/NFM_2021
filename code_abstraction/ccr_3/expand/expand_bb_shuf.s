	.section	.text
	.align	32
	#Procedure 0x401509
	.globl sub_401509
	.type sub_401509, @function
sub_401509:

	hlt	
	.section	.text
	.align	32
	#Procedure 0x40150a
	.globl sub_40150a
	.type sub_40150a, @function
sub_40150a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401542
	.globl sub_401542
	.type sub_401542, @function
sub_401542:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40158a
	.globl sub_40158a
	.type sub_40158a, @function
sub_40158a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4015ac
	.globl sub_4015ac
	.type sub_4015ac, @function
sub_4015ac:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4015bd
	.globl sub_4015bd
	.type sub_4015bd, @function
sub_4015bd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4015d6
	.globl sub_4015d6
	.type sub_4015d6, @function
sub_4015d6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4015e0

	.globl next_file
	.type next_file, @function
next_file:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	test	r14, r14
	je	.label_10
	mov	rbx, qword ptr [rip + next_file.prev_file]
	test	rbx, rbx
	je	.label_18
	test	byte ptr [r14], 0x20
	je	.label_13
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbx
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_14
	xor	eax, eax
	mov	esi, ebp
	call	error
	mov	dword ptr [rip + exit_status],  1
	mov	rbx, qword ptr [rip + next_file.prev_file]
.label_13:
	cmp	byte ptr [rbx], 0x2d
	jne	.label_9
	cmp	byte ptr [rbx + 1], 0
	je	.label_11
.label_9:
	mov	rdi, r14
	call	rpl_fclose
	test	eax, eax
	je	.label_10
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	rdx, qword ptr [rip + next_file.prev_file]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_14
	xor	eax, eax
	mov	esi, ebx
	call	error
	mov	dword ptr [rip + exit_status],  1
	jmp	.label_10
.label_11:
	mov	rdi, r14
	call	clearerr_unlocked
.label_10:
	mov	rax, qword ptr [rip + file_list]
	lea	rcx, [rax + 8]
	mov	qword ptr [rip + file_list],  rcx
	mov	rbx, qword ptr [rax]
	xor	r14d, r14d
	test	rbx, rbx
	je	.label_15
	xor	r14d, r14d
	jmp	.label_22
	.section	.text
	.align	32
	#Procedure 0x4016c1
	.globl sub_4016c1
	.type sub_4016c1, @function
sub_4016c1:

	nop	word ptr cs:[rax + rax]
.label_12:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbx
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_14
	xor	eax, eax
	mov	esi, ebp
	call	error
	mov	dword ptr [rip + exit_status],  1
	mov	rax, qword ptr [rip + file_list]
	lea	rcx, [rax + 8]
	mov	qword ptr [rip + file_list],  rcx
	mov	rbx, qword ptr [rax]
	test	rbx, rbx
	jne	.label_22
	jmp	.label_15
.label_24:
	mov	byte ptr [rip + have_read_stdin],  1
	mov	r15, qword ptr [rip + stdin]
	jmp	.label_16
	.section	.text
	.align	32
	#Procedure 0x40172f
	.globl sub_40172f
	.type sub_40172f, @function
sub_40172f:

	nop	
.label_22:
	cmp	byte ptr [rbx], 0x2d
	jne	.label_17
	cmp	byte ptr [rbx + 1], 0
	je	.label_24
.label_17:
	mov	esi, OFFSET FLAT:label_23
	mov	rdi, rbx
	call	fopen
	mov	r15, rax
.label_16:
	test	r15, r15
	je	.label_12
	mov	qword ptr [rip + next_file.prev_file],  rbx
	mov	esi, 2
	mov	rdi, r15
	call	fadvise
	mov	r14, r15
.label_15:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_18:
	mov	edi, OFFSET FLAT:label_19
	mov	esi, OFFSET FLAT:label_20
	mov	edx, 0x155
	mov	ecx, OFFSET FLAT:label_21
	call	__assert_fail
	.section	.text
	.align	32
	#Procedure 0x40178e
	.globl sub_40178e
	.type sub_40178e, @function
sub_40178e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x401790

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_25]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_26]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_27]
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
	#Procedure 0x4017e5
	.globl sub_4017e5
	.type sub_4017e5, @function
sub_4017e5:

	nop	word ptr cs:[rax + rax]
.label_30:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_28
	test	rax, rax
	je	.label_29
.label_28:
	pop	rbx
	ret	
.label_29:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401809

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_30
	test	rbx, rbx
	jne	.label_30
	call	free
	xor	eax, eax
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x401820

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_31
	test	rsi, rsi
	mov	ecx, 1
	je	.label_32
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_32
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_31:
	mov	ecx, 1
.label_32:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	32
	#Procedure 0x40186b
	.globl sub_40186b
	.type sub_40186b, @function
sub_40186b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401870
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_33
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_35:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_35
.label_33:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_36
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_37], OFFSET FLAT:slot0
.label_36:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_34
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_34:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x401901
	.globl sub_401901
	.type sub_401901, @function
sub_401901:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401910
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
	je	.label_38
	mov	qword ptr [rax], rbx
.label_38:
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
	#Procedure 0x4019fc
	.globl sub_4019fc
	.type sub_4019fc, @function
sub_4019fc:

	nop	dword ptr [rax]
.label_40:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401a05
	.globl sub_401a05
	.type sub_401a05, @function
sub_401a05:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401a09

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
	je	.label_39
	test	r15, r15
	je	.label_40
.label_39:
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
	#Procedure 0x401a40

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_41
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_41
	test	byte ptr [rbx + 1], 1
	je	.label_41
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_41:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	32
	#Procedure 0x401a73
	.globl sub_401a73
	.type sub_401a73, @function
sub_401a73:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401a80
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
	#Procedure 0x401a8f
	.globl sub_401a8f
	.type sub_401a8f, @function
sub_401a8f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x401a90

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_42
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_43
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x401ab5
	.globl sub_401ab5
	.type sub_401ab5, @function
sub_401ab5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401ac0

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
	#Procedure 0x401ad9
	.globl sub_401ad9
	.type sub_401ad9, @function
sub_401ad9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401ae0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_44
	test	rax, rax
	je	.label_45
.label_44:
	pop	rbx
	ret	
.label_45:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401afa
	.globl sub_401afa
	.type sub_401afa, @function
sub_401afa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401b00
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_46
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_47
	test	rbx, rbx
	jne	.label_47
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_46:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401b34
	.globl sub_401b34
	.type sub_401b34, @function
sub_401b34:

	nop	dword ptr [rax + rax]
.label_47:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_48
	test	rax, rax
	je	.label_46
.label_48:
	pop	rbx
	ret	
.label_49:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401b55
	.globl sub_401b55
	.type sub_401b55, @function
sub_401b55:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401b5f
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_49
	call	rpl_calloc
	test	rax, rax
	je	.label_49
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x401b80
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
	#Procedure 0x401bf5
	.globl sub_401bf5
	.type sub_401bf5, @function
sub_401bf5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401c00
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
	#Procedure 0x401c0f
	.globl sub_401c0f
	.type sub_401c0f, @function
sub_401c0f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x401c10
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
	#Procedure 0x401cd1
	.globl sub_401cd1
	.type sub_401cd1, @function
sub_401cd1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401ce0
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
	je	.label_50
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
.label_50:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x401d41
	.globl sub_401d41
	.type sub_401d41, @function
sub_401d41:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401d50
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_25]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_26]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_27]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_51
	test	rdx, rdx
	je	.label_51
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_51:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x401dba
	.globl sub_401dba
	.type sub_401dba, @function
sub_401dba:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401dc0

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
	je	.label_52
	mov	edx, OFFSET FLAT:label_62
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_68
.label_52:
	mov	edx, OFFSET FLAT:label_69
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_68:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_55
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
	mov	esi, OFFSET FLAT:label_70
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_57
	jmp	qword ptr [(r12 * 8) + label_58]
.label_405:
	add	rsp, 8
	jmp	.label_56
.label_57:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_65
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
	jmp	.label_56
.label_406:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_53
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
.label_407:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_66
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
.label_408:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_63
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
.label_409:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_60
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
	jmp	.label_56
.label_410:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_59
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
	jmp	.label_56
.label_411:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_61
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
	jmp	.label_56
.label_412:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_64
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
	jmp	.label_56
.label_414:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_67
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
	jmp	.label_56
.label_413:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_54
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
.label_56:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x402118
	.globl sub_402118
	.type sub_402118, @function
sub_402118:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402120

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_71
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_14
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
.label_72:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x402155
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_25]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_26]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_27]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_72
	test	rsi, rsi
	je	.label_72
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
	#Procedure 0x4021c0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_76
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_74
	cmp	dword ptr [rbp], 0x20
	jne	.label_74
.label_76:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_78
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_74:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_73
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_77
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_14
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_77:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_75
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
.label_78:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	.section	.text
	.align	32
	#Procedure 0x402280
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x40228a
	.globl sub_40228a
	.type sub_40228a, @function
sub_40228a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402290
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_79
	test	rdx, rdx
	je	.label_79
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_79:
	push	rax
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4022bb
	.globl sub_4022bb
	.type sub_4022bb, @function
sub_4022bb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4022c0

	.globl emit_tab_list_info
	.type emit_tab_list_info, @function
emit_tab_list_info:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_80
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_81
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	32
	#Procedure 0x402302
	.globl sub_402302
	.type sub_402302, @function
sub_402302:

	nop	
	nop	word ptr cs:[rax + rax]
.label_87:
	test	rcx, rcx
	jne	.label_84
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_84:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_82
.label_88:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_83
	test	rbx, rbx
	jne	.label_83
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_82:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402361
	.globl sub_402361
	.type sub_402361, @function
sub_402361:

	nop	word ptr [rax + rax]
.label_86:
	call	xalloc_die
.label_83:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_85
	test	rax, rax
	je	.label_86
.label_85:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x402383
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_87
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_86
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_88
	.section	.text
	.align	32
	#Procedure 0x4023b0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_89
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_89:
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
	#Procedure 0x402433
	.globl sub_402433
	.type sub_402433, @function
sub_402433:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402440

	.globl cleanup_file_list_stdin
	.type cleanup_file_list_stdin, @function
cleanup_file_list_stdin:
	push	rax
	cmp	byte ptr [rip + have_read_stdin],  1
	jne	.label_90
	mov	rdi, qword ptr [rip + stdin]
	call	rpl_fclose
	test	eax, eax
	jne	.label_92
.label_90:
	pop	rax
	ret	
.label_92:
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_91
	xor	eax, eax
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402480
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
	#Procedure 0x402498
	.globl sub_402498
	.type sub_402498, @function
sub_402498:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4024a0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	.section	.text
	.align	32
	#Procedure 0x4024a8
	.globl sub_4024a8
	.type sub_4024a8, @function
sub_4024a8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4024b0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_93
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_95
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_93
.label_95:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_93
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_94
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_94:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_93:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	.section	.text
	.align	32
	#Procedure 0x402524
	.globl sub_402524
	.type sub_402524, @function
sub_402524:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402530
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
	je	.label_97
	test	r15, r15
	je	.label_96
.label_97:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_96:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402572
	.globl sub_402572
	.type sub_402572, @function
sub_402572:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402580

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_99
	cmp	byte ptr [rax], 0x43
	jne	.label_101
	cmp	byte ptr [rax + 1], 0
	je	.label_98
.label_101:
	mov	esi, OFFSET FLAT:label_100
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_99
.label_98:
	xor	ebx, ebx
.label_99:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4025b1
	.globl sub_4025b1
	.type sub_4025b1, @function
sub_4025b1:

	nop	word ptr cs:[rax + rax]
.label_114:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_111:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_102
	cmp	r10d, 0x29
	jae	.label_106
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_109
.label_113:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_112:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_102
	cmp	r10d, 0x29
	jae	.label_114
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_111
.label_106:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_109:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_102
	cmp	r10d, 0x29
	jae	.label_103
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_104
	.section	.text
	.align	32
	#Procedure 0x40266b

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_113
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_112
.label_103:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_104:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_102
	cmp	r10d, 0x29
	jae	.label_108
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_110
.label_108:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_110:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_102
	cmp	r10d, 0x29
	jae	.label_105
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_107
.label_105:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_107:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_102
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_102
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_102
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_102
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_102:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	32
	#Procedure 0x4027a2
	.globl sub_4027a2
	.type sub_4027a2, @function
sub_4027a2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4027b0
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
	je	.label_116
	test	r14, r14
	je	.label_115
.label_116:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_115:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4027e6
	.globl sub_4027e6
	.type sub_4027e6, @function
sub_4027e6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4027f0
	.globl fdadvise
	.type fdadvise, @function
fdadvise:

	jmp	posix_fadvise
	.section	.text
	.align	32
	#Procedure 0x4027f5
	.globl sub_4027f5
	.type sub_4027f5, @function
sub_4027f5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402800
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_25]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_26]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_27]
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
.label_117:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40286c
	.globl sub_40286c
	.type sub_40286c, @function
sub_40286c:

	nop	dword ptr [rax]
.label_118:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x402875
	.globl sub_402875
	.type sub_402875, @function
sub_402875:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402877
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_25]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_26]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_27]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_118
	test	rdx, rdx
	je	.label_118
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
	#Procedure 0x4028e0
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x4028ea
	.globl sub_4028ea
	.type sub_4028ea, @function
sub_4028ea:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4028f0

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
	#Procedure 0x402907
	.globl sub_402907
	.type sub_402907, @function
sub_402907:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402910

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_125
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_134
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_121
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_127
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_128
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_129
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_tab_list_info
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_122
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_135
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_136
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_133
	mov	ecx, OFFSET FLAT:label_123
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_120
	mov	esi, OFFSET FLAT:label_130
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_120
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_119
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_120:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_137
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_123
	mov	ecx, OFFSET FLAT:label_124
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_132
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_124
	mov	ecx, OFFSET FLAT:label_126
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_125:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_131
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
	#Procedure 0x402b10

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
	je	.label_138
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
.label_138:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x402ba5
	.globl sub_402ba5
	.type sub_402ba5, @function
sub_402ba5:

	nop	word ptr cs:[rax + rax]
.label_139:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402bb5
	.globl sub_402bb5
	.type sub_402bb5, @function
sub_402bb5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402bc3

	.globl xstrndup
	.type xstrndup, @function
xstrndup:
	push	rax
	call	__strndup
	test	rax, rax
	je	.label_139
	pop	rcx
	ret	
.label_142:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_143
	mov	qword ptr [rsi], rbx
.label_140:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_141
	test	rax, rax
	je	.label_143
.label_141:
	pop	rbx
	ret	
.label_144:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402bfd
	.globl sub_402bfd
	.type sub_402bfd, @function
sub_402bfd:

	nop	word ptr cs:[rax + rax]
.label_143:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402c0e
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_142
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_144
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_140
	call	free
	xor	eax, eax
	jmp	.label_141
	.section	.text
	.align	32
	#Procedure 0x402c40
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
	je	.label_145
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
.label_145:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x402cac
	.globl sub_402cac
	.type sub_402cac, @function
sub_402cac:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402cb0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_25]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_26]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_27]
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
	#Procedure 0x402d04
	.globl sub_402d04
	.type sub_402d04, @function
sub_402d04:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402d10
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_146
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_147
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_149
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_133
	mov	ecx, OFFSET FLAT:label_123
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_148
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	32
	#Procedure 0x402d84
	.globl sub_402d84
	.type sub_402d84, @function
sub_402d84:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402d90

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
	jne	.label_151
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_150
	test	cl, cl
	jne	.label_150
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_150
.label_151:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_150
	call	__errno_location
	mov	dword ptr [rax], 0
.label_150:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402df0

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
	je	.label_152
	cmp	r15, -2
	jb	.label_152
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_152
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_152:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x402e46
	.globl sub_402e46
	.type sub_402e46, @function
sub_402e46:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402e50
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_25]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_26]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_27]
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
	#Procedure 0x402ebf
	.globl sub_402ebf
	.type sub_402ebf, @function
sub_402ebf:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402ec0
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
	#Procedure 0x402ed9
	.globl sub_402ed9
	.type sub_402ed9, @function
sub_402ed9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402ee0
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_25]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_26]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_27]
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
	#Procedure 0x402f4e
	.globl sub_402f4e
	.type sub_402f4e, @function
sub_402f4e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402f50

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
	jne	.label_153
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_153
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_154
.label_153:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_154:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_155
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_155:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402fbe
	.globl sub_402fbe
	.type sub_402fbe, @function
sub_402fbe:

	nop	
.label_156:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402fc5
	.globl sub_402fc5
	.type sub_402fc5, @function
sub_402fc5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402fd0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_156
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_157
	test	rax, rax
	je	.label_156
.label_157:
	pop	rbx
	ret	
.label_161:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_158
	mov	eax, OFFSET FLAT:label_159
	jmp	.label_160
	.section	.text
	.align	32
	#Procedure 0x40300f
	.globl sub_40300f
	.type sub_40300f, @function
sub_40300f:

	nop	word ptr cs:[rax + rax]
.label_167:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_162
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_162
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_162
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_162
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_162
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_162
	cmp	byte ptr [rax + 7], 0
	je	.label_161
.label_162:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_163
	mov	eax, OFFSET FLAT:label_164
.label_160:
	cmove	rax, rcx
.label_168:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403062

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
	jne	.label_168
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_167
	cmp	ecx, 0x55
	jne	.label_162
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_162
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_162
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_162
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_162
	cmp	byte ptr [rax + 5], 0
	jne	.label_162
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_165
	mov	eax, OFFSET FLAT:label_166
	jmp	.label_160
	.section	.text
	.align	32
	#Procedure 0x4030d0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x4030d8
	.globl sub_4030d8
	.type sub_4030d8, @function
sub_4030d8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4030e0
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
	#Procedure 0x4030f8
	.globl sub_4030f8
	.type sub_4030f8, @function
sub_4030f8:

	nop	dword ptr [rax + rax]
.label_169:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x403105
	.globl sub_403105
	.type sub_403105, @function
sub_403105:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40310b
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_170
	test	rax, rax
	je	.label_169
.label_170:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x403120

	.globl finalize_tab_stops
	.type finalize_tab_stops, @function
finalize_tab_stops:
	push	rax
	mov	rax, qword ptr [rip + tab_list]
	mov	rcx, qword ptr [rip + first_free_tab]
	test	rcx, rcx
	je	.label_171
	xor	edx, edx
	xor	edi, edi
	nop	dword ptr [rax + rax]
.label_178:
	mov	rsi, qword ptr [rax + rdx*8]
	test	rsi, rsi
	je	.label_172
	cmp	rsi, rdi
	jbe	.label_174
	inc	rdx
	cmp	rdx, rcx
	mov	rdi, rsi
	jb	.label_178
.label_171:
	mov	rsi, qword ptr [rip + increment_size]
	mov	rdx, qword ptr [rip + extend_size]
	test	rsi, rsi
	je	.label_181
	test	rdx, rdx
	jne	.label_177
.label_181:
	test	rcx, rcx
	je	.label_179
	or	rdx, rsi
	jne	.label_180
	cmp	rcx, 1
	jne	.label_180
	mov	rax, qword ptr [rax]
	mov	qword ptr [rip + tab_size],  rax
	pop	rax
	ret	
.label_179:
	test	rsi, rsi
	mov	eax, 8
	cmovne	rax, rsi
	test	rdx, rdx
	cmovne	rax, rdx
	mov	qword ptr [rip + max_column_width],  rax
	mov	qword ptr [rip + tab_size],  rax
	pop	rax
	ret	
.label_180:
	mov	qword ptr [rip + tab_size],  0
	pop	rax
	ret	
.label_172:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_182
	jmp	.label_176
.label_174:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_173
.label_176:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_177:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_175
	jmp	.label_176
	.section	.text
	.align	32
	#Procedure 0x4031f4
	.globl sub_4031f4
	.type sub_4031f4, @function
sub_4031f4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403200

	.globl parse_tab_stops
	.type parse_tab_stops, @function
parse_tab_stops:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r13, rdi
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	mov	r12d, 0
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	mov	dword ptr [rsp + 0xc], 0
	xor	r14d, r14d
	xor	ebp, ebp
	jmp	.label_183
	.section	.text
	.align	32
	#Procedure 0x403234
	.globl sub_403234
	.type sub_403234, @function
sub_403234:

	nop	word ptr cs:[rax + rax]
.label_186:
	inc	r13
	mov	bpl, r15b
.label_183:
	movzx	ebx, byte ptr [r13]
	cmp	rbx, 0x2c
	je	.label_198
	test	bl, bl
	je	.label_201
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	test	byte ptr [rax + rbx*2], 1
	jne	.label_198
	cmp	bl, 0x2b
	je	.label_208
	cmp	bl, 0x2f
	jne	.label_209
	mov	r14b, 1
	test	bpl, 1
	je	.label_212
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_184
	mov	edx, 5
	call	dcgettext
	mov	rbx, r12
	mov	r12, rax
	mov	rdi, r13
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r12
	mov	r12, rbx
	call	error
.label_212:
	mov	dword ptr [rsp + 0xc], 0
	mov	r15b, bpl
	jmp	.label_186
	.section	.text
	.align	32
	#Procedure 0x4032cc
	.globl sub_4032cc
	.type sub_4032cc, @function
sub_4032cc:

	nop	dword ptr [rax]
.label_198:
	test	bpl, 1
	je	.label_200
	test	r14b, 1
	jne	.label_202
	mov	eax, dword ptr [rsp + 0xc]
	test	al, 1
	jne	.label_191
	mov	rdi, r12
	call	add_tab_stop
	jmp	.label_200
.label_202:
	cmp	qword ptr [rip + extend_size],  0
	jne	.label_187
	mov	qword ptr [rip + extend_size],  r12
	jmp	.label_200
.label_191:
	cmp	qword ptr [rip + increment_size],  0
	jne	.label_185
	mov	qword ptr [rip + increment_size],  r12
	nop	word ptr [rax + rax]
.label_200:
	xor	r15d, r15d
	jmp	.label_186
.label_208:
	mov	al, 1
	mov	dword ptr [rsp + 0xc], eax
	test	bpl, 1
	je	.label_190
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_197
	mov	edx, 5
	call	dcgettext
	mov	rbx, r12
	mov	r12, rax
	mov	rdi, r13
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r12
	mov	r12, rbx
	call	error
.label_190:
	xor	r14d, r14d
	mov	r15b, bpl
	jmp	.label_186
.label_209:
	movsx	eax, bl
	add	eax, -0x30
	cmp	eax, 9
	ja	.label_203
	mov	eax, ebp
	and	al, 1
	mov	ecx, 0
	cmove	r12, rcx
	mov	r15b, 1
	je	.label_195
	mov	r15b, bpl
.label_195:
	test	al, al
	mov	rax, qword ptr [rsp + 0x18]
	cmove	rax, r13
	mov	qword ptr [rsp + 0x18], rax
	movabs	rax, 0x1999999999999999
	cmp	r12, rax
	ja	.label_188
	lea	rax, [r12 + r12*4]
	movsx	rcx, bl
	lea	rax, [rcx + rax*2 - 0x30]
	cmp	rax, r12
	jae	.label_193
.label_188:
	mov	esi, OFFSET FLAT:label_199
	mov	rbp, qword ptr [rsp + 0x18]
	mov	rdi, rbp
	call	strspn
	mov	qword ptr [rsp + 0x20], r12
	mov	r12, rax
	mov	rdi, rbp
	mov	rsi, r12
	call	xstrndup
	mov	rbx, rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_196
	mov	edx, 5
	call	dcgettext
	mov	r13, rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r13
	call	error
	mov	rdi, rbx
	call	free
	lea	r13, [rbp + r12 - 1]
	mov	r12, qword ptr [rsp + 0x20]
	jmp	.label_186
.label_193:
	mov	r12, rax
	jmp	.label_186
.label_201:
	mov	rbx, qword ptr [rsp + 0x10]
	and	bpl, bl
	test	bpl, 1
	je	.label_189
	test	r14b, 1
	jne	.label_204
	mov	eax, dword ptr [rsp + 0xc]
	test	al, 1
	jne	.label_206
	mov	rdi, r12
	call	add_tab_stop
	jmp	.label_189
.label_204:
	mov	bl, 1
	cmp	qword ptr [rip + extend_size],  0
	je	.label_210
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_211
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_210:
	mov	qword ptr [rip + extend_size],  r12
	jmp	.label_189
.label_206:
	mov	bl, 1
	cmp	qword ptr [rip + increment_size],  0
	je	.label_194
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_192
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_194:
	mov	qword ptr [rip + increment_size],  r12
.label_189:
	test	bl, 1
	je	.label_207
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_187:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_211
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	qword ptr [rip + extend_size],  r12
.label_207:
	mov	edi, 1
	call	exit
.label_185:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_192
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	qword ptr [rip + increment_size],  r12
	mov	edi, 1
	call	exit
.label_203:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_205
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rdi, r13
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	call	error
	mov	edi, 1
	call	exit
	.section	.text
	.align	32
	#Procedure 0x403594
	.globl sub_403594
	.type sub_403594, @function
sub_403594:

	nop	word ptr cs:[rax + rax]
.label_213:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4035a5
	.globl sub_4035a5
	.type sub_4035a5, @function
sub_4035a5:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4035ad
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
	je	.label_213
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
	#Procedure 0x403610

	.globl get_next_tab_column
	.type get_next_tab_column, @function
get_next_tab_column:
	mov	byte ptr [rdx], 0
	mov	rcx, qword ptr [rip + tab_size]
	test	rcx, rcx
	jne	.label_216
	mov	rax, qword ptr [rsi]
	mov	r8, qword ptr [rip + first_free_tab]
	cmp	rax, r8
	jae	.label_220
	mov	r9, qword ptr [rip + tab_list]
	nop	word ptr cs:[rax + rax]
.label_215:
	mov	rcx, qword ptr [r9 + rax*8]
	cmp	rcx, rdi
	ja	.label_214
	inc	rax
	mov	qword ptr [rsi], rax
	cmp	rax, r8
	jb	.label_215
.label_220:
	mov	rcx, qword ptr [rip + extend_size]
	test	rcx, rcx
	je	.label_218
.label_216:
	xor	edx, edx
	mov	rax, rdi
.label_219:
	div	rcx
	add	rcx, rdi
	sub	rcx, rdx
	mov	rax, rcx
	ret	
.label_218:
	mov	rcx, qword ptr [rip + increment_size]
	test	rcx, rcx
	je	.label_217
	mov	rdx, qword ptr [rip + tab_list]
	mov	rax, rdi
	sub	rax, qword ptr [rdx + r8*8 - 8]
	xor	edx, edx
	jmp	.label_219
.label_217:
	mov	byte ptr [rdx], 1
	xor	ecx, ecx
.label_214:
	mov	rax, rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x40369a
	.globl sub_40369a
	.type sub_40369a, @function
sub_40369a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4036a0
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x4036ae
	.globl sub_4036ae
	.type sub_4036ae, @function
sub_4036ae:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4036b0

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
	js	.label_224
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_227
	cmp	r12d, 0x7fffffff
	je	.label_222
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
	jne	.label_225
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_225:
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
.label_227:
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
	jbe	.label_223
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_226
.label_223:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_221
	mov	rdi, r14
	call	free
.label_221:
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
.label_226:
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
.label_224:
	call	abort
.label_222:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40386d
	.globl sub_40386d
	.type sub_40386d, @function
sub_40386d:

	nop	dword ptr [rax]
.label_232:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_228
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403890
	.globl sub_403890
	.type sub_403890, @function
sub_403890:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40389f

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_232
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_230
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_233
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_230
	mov	esi, OFFSET FLAT:label_231
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_229
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_229:
	mov	rbx, r14
.label_230:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x403920
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
	#Procedure 0x403956
	.globl sub_403956
	.type sub_403956, @function
sub_403956:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403960

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	rbx, rsi
	mov	ebp, edi
	mov	rdi, qword ptr [rbx]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_42
	call	setlocale
	mov	edi, OFFSET FLAT:label_237
	mov	esi, OFFSET FLAT:label_238
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_237
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	byte ptr [rip + convert_entire_line],  1
	lea	r14, [rsp + 0xe]
	jmp	.label_239
	.section	.text
	.align	32
	#Procedure 0x4039bb
	.globl sub_4039bb
	.type sub_4039bb, @function
sub_4039bb:

	nop	dword ptr [rax + rax]
.label_260:
	dec	rdi
	call	parse_tab_stops
.label_239:
	mov	edx, OFFSET FLAT:shortopts
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, ebp
	mov	rsi, rbx
	call	getopt_long
	lea	ecx, [rax + 1]
	cmp	ecx, 0x75
	ja	.label_257
	jmp	qword ptr [(rcx * 8) + label_259]
.label_491:
	mov	rdi, qword ptr [rip + optarg]
	test	rdi, rdi
	jne	.label_260
	mov	byte ptr [rsp + 0xe], al
	mov	byte ptr [rsp + 0xf], 0
	mov	rdi, r14
	call	parse_tab_stops
	jmp	.label_239
.label_493:
	mov	rdi, qword ptr [rip + optarg]
	call	parse_tab_stops
	jmp	.label_239
.label_492:
	mov	byte ptr [rip + convert_entire_line],  0
	jmp	.label_239
.label_490:
	call	finalize_tab_stops
	movsxd	rax, dword ptr [rip + optind]
	xor	ecx, ecx
	cmp	eax, ebp
	lea	rdi, [rbx + rax*8]
	cmovge	rdi, rcx
	call	set_file_list
	xor	edi, edi
	call	next_file
	mov	r12, rax
	test	r12, r12
	je	.label_241
	lea	r15, [rsp + 0xd]
.label_251:
	mov	qword ptr [rsp + 0x10], 0
	mov	r14b, 1
	xor	r13d, r13d
	nop	dword ptr [rax]
.label_234:
	mov	rbx, r12
.label_242:
	mov	rax, qword ptr [rbx + 8]
	cmp	rax, qword ptr [rbx + 0x10]
	jb	.label_261
	mov	rdi, rbx
	call	__uflow
	mov	ebp, eax
	test	ebp, ebp
	jns	.label_235
	mov	rdi, rbx
	call	next_file
	mov	rbx, rax
	test	rbx, rbx
	mov	r12d, 0
	jne	.label_242
	jmp	.label_245
	.section	.text
	.align	32
	#Procedure 0x403aa3
	.globl sub_403aa3
	.type sub_403aa3, @function
sub_403aa3:

	nop	word ptr cs:[rax + rax]
.label_261:
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 8], rcx
	movzx	ebp, byte ptr [rax]
.label_235:
	mov	r12, rbx
.label_245:
	test	r14b, 1
	je	.label_252
	cmp	ebp, 8
	je	.label_249
	cmp	ebp, 9
	jne	.label_254
	mov	rdi, r13
	lea	rsi, [rsp + 0x10]
	mov	rdx, r15
	call	get_next_tab_column
	mov	rbp, rax
	lea	rbx, [r13 + 1]
	cmp	byte ptr [rsp + 0xd], 0
	cmovne	rbp, rbx
	cmp	rbp, r13
	jae	.label_250
	jmp	.label_247
.label_236:
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x20
	inc	rbx
.label_250:
	cmp	rbx, rbp
	jae	.label_240
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jb	.label_236
	mov	esi, 0x20
	call	__overflow
	test	eax, eax
	js	.label_248
	inc	rbx
	jmp	.label_250
.label_249:
	cmp	r13, 1
	adc	r13, -1
	mov	rax, qword ptr [rsp + 0x10]
	cmp	rax, 1
	adc	rax, -1
	mov	qword ptr [rsp + 0x10], rax
	mov	ebp, 8
	jmp	.label_256
.label_254:
	inc	r13
	jne	.label_256
	jmp	.label_247
.label_240:
	mov	ebp, 0x20
	mov	r13, rbx
.label_256:
	mov	r14b, 1
	cmp	byte ptr [rip + convert_entire_line],  0
	jne	.label_252
	movsxd	rbx, ebp
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	r14b, byte ptr [rax + rbx*2]
	and	r14b, 1
	nop	dword ptr [rax]
.label_252:
	test	ebp, ebp
	js	.label_241
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_243
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], bpl
.label_253:
	cmp	ebp, 0xa
	jne	.label_234
	jmp	.label_251
.label_243:
	movzx	esi, bpl
	call	__overflow
	test	eax, eax
	jns	.label_253
.label_248:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_73
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_241:
	call	cleanup_file_list_stdin
	mov	eax, dword ptr [rip + exit_status]
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_257:
	cmp	eax, 0xffffff7d
	je	.label_258
	cmp	eax, 0xffffff7e
	jne	.label_244
	xor	edi, edi
	call	usage
.label_247:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_246
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_244:
	mov	edi, 1
	call	usage
.label_258:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	esi, OFFSET FLAT:label_124
	mov	edx, OFFSET FLAT:label_133
	mov	r8d, OFFSET FLAT:label_255
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
	.section	.text
	.align	32
	#Procedure 0x403c84
	.globl sub_403c84
	.type sub_403c84, @function
sub_403c84:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403c90
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_262:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_262
	jmp	version_etc_arn
	.section	.text
	.align	32
	#Procedure 0x403cb1
	.globl sub_403cb1
	.type sub_403cb1, @function
sub_403cb1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403cc0
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x403cd1
	.globl sub_403cd1
	.type sub_403cd1, @function
sub_403cd1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403ce0
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
	#Procedure 0x403cf3
	.globl sub_403cf3
	.type sub_403cf3, @function
sub_403cf3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403d00

	.globl set_file_list
	.type set_file_list, @function
set_file_list:
	mov	byte ptr [rip + have_read_stdin],  0
	test	rdi, rdi
	mov	eax, OFFSET FLAT:stdin_argv
	cmovne	rax, rdi
	mov	qword ptr [rip + file_list],  rax
	ret	
	.section	.text
	.align	32
	#Procedure 0x403d1b
	.globl sub_403d1b
	.type sub_403d1b, @function
sub_403d1b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403d20

	.globl add_tab_stop
	.type add_tab_stop, @function
add_tab_stop:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	mov	rcx, qword ptr [rip + first_free_tab]
	xor	eax, eax
	test	rcx, rcx
	je	.label_263
	mov	rax, qword ptr [rip + tab_list]
	mov	rax, qword ptr [rax + rcx*8 - 8]
.label_263:
	xor	ebx, ebx
	mov	rdx, r14
	sub	rdx, rax
	cmovae	rbx, rdx
	cmp	rcx, qword ptr [rip + n_tabs_allocated]
	jne	.label_264
	mov	rdi, qword ptr [rip + tab_list]
	test	rdi, rdi
	je	.label_268
	movabs	rax, 0xaaaaaaaaaaaaaaa
	cmp	rcx, rax
	jae	.label_265
	mov	rax, rcx
	shr	rax, 1
	lea	rsi, [rcx + rax + 1]
	jmp	.label_267
.label_264:
	mov	rax, qword ptr [rip + tab_list]
	jmp	.label_270
.label_268:
	test	rcx, rcx
	mov	esi, 0x10
	cmovne	rsi, rcx
	mov	rax, rsi
	shr	rax, 0x3c
	jne	.label_266
.label_267:
	mov	qword ptr [rip + n_tabs_allocated],  rsi
	shl	rsi, 3
	call	xrealloc
	mov	qword ptr [rip + tab_list],  rax
	mov	rcx, qword ptr [rip + first_free_tab]
.label_270:
	lea	rdx, [rcx + 1]
	mov	qword ptr [rip + first_free_tab],  rdx
	mov	qword ptr [rax + rcx*8], r14
	cmp	qword ptr [rip + max_column_width],  rbx
	jae	.label_269
	mov	qword ptr [rip + max_column_width],  rbx
.label_269:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_266:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x403de6
	.globl sub_403de6
	.type sub_403de6, @function
sub_403de6:

	nop	dword ptr [rax + rax]
.label_265:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x403df0

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
	jmp	.label_296
	.section	.text
	.align	32
	#Procedure 0x403e9f
	.globl sub_403e9f
	.type sub_403e9f, @function
sub_403e9f:

	nop	
.label_341:
	cmp	r8d, 2
	setne	al
	cmp	byte ptr [rsp + 0xf], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa8]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x34]
	mov	rsi, qword ptr [rsp + 0xc0]
	je	.label_277
	or	al, dl
	jne	.label_277
	test	dil, 1
	jne	.label_339
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_277
	test	rbp, rbp
	mov	r15d, r8d
	mov	al, bl
	mov	qword ptr [rsp + 0x48], rcx
	mov	r12d, esi
	mov	r13, qword ptr [rsp + 0x68]
	je	.label_296
	jmp	.label_277
.label_444:
	mov	r8d, 5
	test	r12b, 1
	jne	.label_345
	test	rbp, rbp
	je	.label_315
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax], 0x22
.label_315:
	mov	r14d, 1
	jmp	.label_349
.label_445:
	mov	r13b, 1
	mov	r8d, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_163
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	sil, 1
	jmp	.label_290
.label_345:
	xor	r14d, r14d
.label_349:
	mov	eax, OFFSET FLAT:label_163
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	r13b, 1
	jmp	.label_358
	.section	.text
	.align	32
	#Procedure 0x403f6f
	.globl sub_403f6f
	.type sub_403f6f, @function
sub_403f6f:

	nop	
.label_296:
	mov	rbp, r13
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_367
	mov	r8d, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	jmp	qword ptr [(rcx * 8) + label_361]
.label_446:
	mov	r14d, edi
	mov	edi, OFFSET FLAT:label_377
	mov	esi, r15d
	mov	ebx, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x80], rax
	mov	edi, OFFSET FLAT:label_164
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebx
	mov	edi, r14d
	mov	qword ptr [rsp + 0x78], rax
.label_447:
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x80]
	jne	.label_289
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_289
	xor	r14d, r14d
	nop	
.label_278:
	cmp	r14, rbp
	jae	.label_271
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], al
.label_271:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_278
.label_289:
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
	jmp	.label_290
.label_439:
	xor	r8d, r8d
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_290
.label_442:
	mov	al, 1
.label_440:
	mov	r12b, 1
.label_443:
	test	r12b, 1
	mov	cl, 1
	je	.label_308
	mov	ecx, eax
.label_308:
	mov	al, cl
.label_441:
	mov	r8d, 2
	test	r12b, 1
	jne	.label_312
	test	rbp, rbp
	je	.label_318
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx], 0x27
.label_318:
	mov	r14d, 1
	jmp	.label_351
.label_312:
	xor	r14d, r14d
.label_351:
	mov	ecx, OFFSET FLAT:label_164
	mov	qword ptr [rsp + 0x58], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x50], rcx
	mov	r13d, eax
.label_358:
	mov	sil, r12b
.label_290:
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
	jmp	.label_330
	.section	.text
	.align	32
	#Procedure 0x404131
	.globl sub_404131
	.type sub_404131, @function
sub_404131:

	nop	word ptr cs:[rax + rax]
.label_332:
	inc	r12
.label_330:
	cmp	r11, -1
	je	.label_353
	cmp	r12, r11
	jne	.label_355
	jmp	.label_357
	.section	.text
	.align	32
	#Procedure 0x404153
	.globl sub_404153
	.type sub_404153, @function
sub_404153:

	nop	word ptr cs:[rax + rax]
.label_353:
	mov	rcx, -1
	cmp	byte ptr [r10 + r12], 0
	je	.label_362
.label_355:
	cmp	byte ptr [rsp + 0x37], 0
	je	.label_368
	mov	rax, qword ptr [rsp + 0x50]
	lea	rbx, [r12 + rax]
	cmp	rax, 2
	jb	.label_298
	cmp	r11, -1
	jne	.label_298
	mov	r15d, edi
	mov	rdi, r10
	mov	r13d, r9d
	call	strlen
	mov	r9d, r13d
	mov	r8, qword ptr [rsp + 0x38]
	mov	edi, r15d
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_298:
	cmp	rbx, r11
	jbe	.label_381
.label_368:
	xor	esi, esi
.label_282:
	movzx	r15d, byte ptr [r10 + r12]
	cmp	r15, 0x7e
	ja	.label_383
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_388]
.label_458:
	test	r12, r12
	jne	.label_274
	jmp	.label_299
	.section	.text
	.align	32
	#Procedure 0x4041e6
	.globl sub_4041e6
	.type sub_4041e6, @function
sub_4041e6:

	nop	word ptr cs:[rax + rax]
.label_381:
	mov	r13d, r9d
	mov	r15d, edi
	mov	rbx, r11
	lea	rdi, [r10 + r12]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	rdx, qword ptr [rsp + 0x50]
	call	memcmp
	test	eax, eax
	sete	sil
	jne	.label_276
	cmp	byte ptr [rsp + 0xf], 0
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	je	.label_282
	jmp	.label_319
.label_276:
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	jmp	.label_282
.label_462:
	xor	eax, eax
	cmp	r11, -1
	je	.label_302
	test	r12, r12
	jne	.label_306
	cmp	r11, 1
	je	.label_299
	xor	r13d, r13d
	jmp	.label_321
.label_451:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_314
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_319
	cmp	r8d, 2
	jne	.label_323
	mov	eax, r9d
	and	al, 1
	jne	.label_323
	cmp	r14, rbp
	jae	.label_326
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_326:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_327
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_327:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_333
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_333:
	add	r14, 3
	mov	r9b, 1
.label_323:
	mov	rcx, r14
	cmp	rcx, rbp
	jae	.label_338
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + rcx], 0x5c
.label_338:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r8d, 2
	je	.label_307
	lea	rdx, [r12 + 1]
	cmp	rdx, r11
	jae	.label_307
	mov	dl, byte ptr [r10 + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_307
	cmp	r14, rbp
	jae	.label_309
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x30
.label_309:
	lea	rdx, [rcx + 2]
	cmp	rdx, rbp
	jae	.label_335
	mov	ebx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rdx], 0x30
	mov	esi, ebx
.label_335:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_321
.label_452:
	mov	bl, 0x62
	jmp	.label_354
.label_453:
	mov	cl, 0x74
	jmp	.label_301
.label_454:
	mov	bl, 0x76
	jmp	.label_354
.label_455:
	mov	bl, 0x66
	jmp	.label_354
.label_456:
	mov	cl, 0x72
	jmp	.label_301
.label_459:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa8], rax
	cmp	r8d, 2
	jne	.label_365
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_288
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
	jae	.label_373
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_373:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_385
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x5c
.label_385:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_389
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_389:
	add	r14, 3
	xor	r9d, r9d
.label_365:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_321
.label_460:
	mov	r15b, 0x3f
	cmp	r8d, 5
	je	.label_394
	cmp	r8d, 2
	jne	.label_274
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_274
	jmp	.label_288
.label_461:
	cmp	r8d, 2
	jne	.label_285
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_288
	mov	r15b, 0x5c
	xor	eax, eax
	jmp	.label_292
.label_383:
	cmp	qword ptr [rsp + 0xb8], 1
	mov	qword ptr [rsp + 0xa0], rbp
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	mov	dword ptr [rsp + 0x94], esi
	jne	.label_295
	mov	qword ptr [rsp + 0x48], r11
	call	__ctype_b_loc
	mov	r10, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	ebx, 1
	jmp	.label_311
.label_302:
	test	r12, r12
	jne	.label_324
	mov	cl, byte ptr [r10 + 1]
	test	cl, cl
	jne	.label_324
.label_299:
	mov	dl, 1
.label_457:
	cmp	byte ptr [rsp + 0x27], 0
	je	.label_288
	xor	eax, eax
	mov	r13b, dl
.label_321:
	cmp	byte ptr [rsp + 0x36], 0
	je	.label_331
	cmp	qword ptr [rsp + 0x100], 0
	jne	.label_334
	jmp	.label_336
	.section	.text
	.align	32
	#Procedure 0x4044c4
	.globl sub_4044c4
	.type sub_4044c4, @function
sub_4044c4:

	nop	word ptr cs:[rax + rax]
.label_331:
	cmp	byte ptr [rsp + 0x35], 0
	je	.label_336
.label_334:
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	ebx, esi
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_340
	mov	rcx, qword ptr [rsp + 0x100]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_343
	.section	.text
	.align	32
	#Procedure 0x4044fd
	.globl sub_4044fd
	.type sub_4044fd, @function
sub_4044fd:

	nop	dword ptr [rax]
.label_336:
	test	sil, sil
.label_343:
	mov	ebx, r15d
	je	.label_281
	jmp	.label_346
.label_340:
	mov	ebx, r15d
	jmp	.label_346
.label_314:
	cmp	dword ptr [rsp + 0x9c], 0
	jne	.label_332
	xor	r15d, r15d
	jmp	.label_274
.label_285:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x32], 0
	je	.label_301
	xor	eax, eax
	mov	r15b, 0x5c
.label_292:
	xor	r13d, r13d
	jmp	.label_281
.label_301:
	cmp	byte ptr [rsp + 0x27], 0
	mov	ebx, ecx
	je	.label_288
.label_354:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1f], 0
	mov	r13d, 0
	je	.label_321
	nop	
.label_346:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_319
	cmp	r8d, 2
	jne	.label_366
	mov	eax, r9d
	and	al, 1
	jne	.label_366
	cmp	r14, rbp
	jae	.label_370
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_370:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_374
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_374:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_376
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_376:
	add	r14, 3
	mov	r9b, 1
.label_366:
	cmp	r14, rbp
	jae	.label_382
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_382:
	inc	r14
	jmp	.label_322
.label_295:
	mov	qword ptr [rsp + 0x70], 0
	cmp	r11, -1
	jne	.label_387
	mov	rdi, r10
	call	strlen
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_387:
	cmp	byte ptr [rsp + 0x31], 0
	mov	qword ptr [rsp + 0x48], r11
	mov	qword ptr [rsp + 0x88], r12
	je	.label_392
	lea	rax, [r10 + r12]
	mov	qword ptr [rsp + 0xb0], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbp, [rsp + 0x70]
.label_390:
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
	je	.label_286
	cmp	rbx, -1
	mov	r10, qword ptr [rsp + 0x28]
	movabs	rsi, 0x20000002b
	je	.label_303
	test	rbx, rbx
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_325
	cmp	rbx, 2
	mov	rbp, qword ptr [rsp + 0xa0]
	jb	.label_283
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax]
.label_391:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_344
	bt	rsi, rdx
	jb	.label_288
.label_344:
	inc	rcx
	cmp	rcx, rbx
	jb	.label_391
.label_283:
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	jne	.label_384
	xor	r13d, r13d
.label_384:
	lea	rbp, [rsp + 0x70]
	mov	r12, qword ptr [rsp + 0x40]
	add	r12, rbx
	mov	rdi, rbp
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_390
	jmp	.label_297
.label_307:
	xor	r13d, r13d
	jmp	.label_321
.label_324:
	mov	r11, -1
	xor	r13d, r13d
	jmp	.label_321
.label_394:
	cmp	dword ptr [rsp + 0x98], 0
	je	.label_274
	lea	rcx, [r12 + 2]
	cmp	rcx, r11
	jae	.label_274
	cmp	byte ptr [r10 + r12 + 1], 0x3f
	jne	.label_274
	movsx	edx, byte ptr [r10 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_352
	mov	ebx, esi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_337
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_360
	cmp	r14, rbp
	jae	.label_363
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x3f
.label_363:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_369
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_369:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_279
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_279:
	lea	rax, [r14 + 3]
	cmp	rax, rbp
	jae	.label_293
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x3f
.label_293:
	add	r14, 4
	xor	eax, eax
	mov	r12, rcx
	mov	r15b, dl
.label_337:
	xor	r13d, r13d
	mov	esi, ebx
	jmp	.label_321
.label_274:
	xor	eax, eax
.label_306:
	xor	r13d, r13d
	jmp	.label_321
.label_392:
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbx, [rsp + 0x70]
	nop	word ptr cs:[rax + rax]
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
	mov	rcx, rbx
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_305
	cmp	rbp, -1
	je	.label_284
	cmp	rbp, -2
	je	.label_286
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	mov	r12, qword ptr [rsp + 0x40]
	jne	.label_291
	xor	r13d, r13d
.label_291:
	add	r12, rbp
	lea	rbx, [rsp + 0x70]
	mov	rdi, rbx
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_393
	jmp	.label_297
.label_286:
	mov	r10, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x40]
	lea	rax, [rsi + r12]
	mov	rdx, qword ptr [rsp + 0x48]
	cmp	rax, rdx
	jae	.label_275
	lea	rax, [r10 + r12]
.label_316:
	cmp	byte ptr [rax + rsi], 0
	je	.label_275
	lea	rcx, [r12 + rsi + 1]
	inc	rsi
	cmp	rcx, rdx
	jb	.label_316
.label_275:
	mov	qword ptr [rsp + 0x40], rsi
.label_303:
	xor	r13d, r13d
	jmp	.label_325
.label_284:
	xor	r13d, r13d
.label_305:
	mov	r10, qword ptr [rsp + 0x28]
.label_325:
	mov	r12, qword ptr [rsp + 0x40]
.label_297:
	mov	rbx, r12
	mov	r12, qword ptr [rsp + 0x88]
.label_311:
	and	r13b, 1
	mov	eax, r13d
	or	al, byte ptr [rsp + 0x33]
	cmp	rbx, 1
	mov	rbp, qword ptr [rsp + 0xa0]
	mov	dil, byte ptr [rsp + 0x1e]
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x60]
	mov	esi, dword ptr [rsp + 0x94]
	ja	.label_329
	test	al, al
	je	.label_329
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_321
.label_329:
	mov	byte ptr [rsp + 0x40], al
	add	rbx, r12
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_342
	.section	.text
	.align	32
	#Procedure 0x4048f7
	.globl sub_4048f7
	.type sub_4048f7, @function
sub_4048f7:

	nop	word ptr [rax + rax]
.label_304:
	inc	r14
	mov	r15b, byte ptr [r10 + r12 + 1]
	mov	r12, rdx
.label_342:
	cmp	byte ptr [rsp + 0x40], 0
	je	.label_300
	test	sil, 1
	je	.label_350
	cmp	r14, rbp
	jae	.label_348
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x5c
.label_348:
	inc	r14
	xor	esi, esi
	jmp	.label_350
	.section	.text
	.align	32
	#Procedure 0x404935
	.globl sub_404935
	.type sub_404935, @function
sub_404935:

	nop	word ptr cs:[rax + rax]
.label_300:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_319
	cmp	r8d, 2
	jne	.label_356
	mov	eax, r9d
	and	al, 1
	jne	.label_356
	cmp	r14, rbp
	jae	.label_359
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_359:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_364
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x24
.label_364:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_320
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x27
.label_320:
	add	r14, 3
	mov	r9b, 1
.label_356:
	cmp	r14, rbp
	jae	.label_375
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_375:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_273
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_273:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_386
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_386:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_350:
	lea	rdx, [r12 + 1]
	cmp	rbx, rdx
	jbe	.label_281
	test	r9b, 1
	je	.label_347
	mov	rcx, rbx
	mov	ebx, eax
	and	bl, 1
	jne	.label_395
	mov	r8, r12
	mov	r12d, esi
	cmp	r14, rbp
	jae	.label_294
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], 0x27
.label_294:
	lea	rsi, [r14 + 1]
	cmp	rsi, rbp
	jae	.label_287
	mov	rbx, qword ptr [rsp + 0x10]
	mov	byte ptr [rbx + rsi], 0x27
.label_287:
	add	r14, 2
	xor	r9d, r9d
	mov	esi, r12d
	mov	rbx, rcx
	mov	r12, r8
	mov	r8, qword ptr [rsp + 0x38]
	jmp	.label_347
	.section	.text
	.align	32
	#Procedure 0x404a46
	.globl sub_404a46
	.type sub_404a46, @function
sub_404a46:

	nop	word ptr cs:[rax + rax]
.label_395:
	mov	rbx, rcx
.label_347:
	cmp	r14, rbp
	jae	.label_304
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], r15b
	mov	esi, ecx
	jmp	.label_304
	.section	.text
	.align	32
	#Procedure 0x404a6e
	.globl sub_404a6e
	.type sub_404a6e, @function
sub_404a6e:

	nop	
.label_281:
	test	r9b, 1
	je	.label_313
	and	al, 1
	jne	.label_313
	cmp	r14, rbp
	jae	.label_317
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_317:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_310
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_310:
	add	r14, 2
	xor	r9d, r9d
.label_313:
	mov	ebx, r15d
.label_322:
	cmp	r14, rbp
	jae	.label_328
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], bl
.label_328:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, dil
	mov	edi, r13d
	jmp	.label_332
.label_352:
	xor	r13d, r13d
	jmp	.label_321
	.section	.text
	.align	32
	#Procedure 0x404ad1
	.globl sub_404ad1
	.type sub_404ad1, @function
sub_404ad1:

	nop	word ptr cs:[rax + rax]
.label_357:
	mov	rcx, r12
.label_362:
	cmp	r8d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_341
	or	al, dl
	jne	.label_341
	mov	r11, rcx
	jmp	.label_319
.label_288:
	mov	eax, 2
.label_280:
	mov	qword ptr [rsp + 0x38], rax
.label_319:
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
.label_379:
	mov	r14, rax
.label_272:
	mov	rax, r14
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_277:
	mov	rdx, qword ptr [rsp + 0x58]
	test	rdx, rdx
	je	.label_371
	cmp	byte ptr [rsp + 0xf], 0
	mov	rcx, qword ptr [rsp + 0x10]
	jne	.label_372
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_372
	inc	rdx
	nop	dword ptr [rax + rax]
.label_380:
	cmp	r14, rbp
	jae	.label_378
	mov	byte ptr [rcx + r14], al
.label_378:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_380
	jmp	.label_372
.label_339:
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
	jmp	.label_379
.label_371:
	mov	rcx, qword ptr [rsp + 0x10]
.label_372:
	cmp	r14, rbp
	jae	.label_272
	mov	byte ptr [rcx + r14], 0
	jmp	.label_272
.label_360:
	mov	eax, 5
	jmp	.label_280
.label_367:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x404c20
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
	je	.label_396
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
.label_396:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x404c88
	.globl sub_404c88
	.type sub_404c88, @function
sub_404c88:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404c90
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
	#Procedure 0x404cc3
	.globl sub_404cc3
	.type sub_404cc3, @function
sub_404cc3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404cd0

	.globl fadvise
	.type fadvise, @function
fadvise:
	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_397
	call	fileno
	xor	esi, esi
	xor	edx, edx
	mov	edi, eax
	mov	ecx, ebx
	pop	rbx
	jmp	posix_fadvise
.label_397:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x404ced
	.globl sub_404ced
	.type sub_404ced, @function
sub_404ced:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404d55
	.globl sub_404d55
	.type sub_404d55, @function
sub_404d55:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404d62
	.globl sub_404d62
	.type sub_404d62, @function
sub_404d62:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404d86
	.globl sub_404d86
	.type sub_404d86, @function
sub_404d86:

	nop	word ptr cs:[rax + rax]
