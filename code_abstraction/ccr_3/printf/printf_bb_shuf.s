	.section	.text
	.align	32
	#Procedure 0x401589
	.globl sub_401589
	.type sub_401589, @function
sub_401589:

	hlt	
	.section	.text
	.align	32
	#Procedure 0x40158a
	.globl sub_40158a
	.type sub_40158a, @function
sub_40158a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4015c2
	.globl sub_4015c2
	.type sub_4015c2, @function
sub_4015c2:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40160a
	.globl sub_40160a
	.type sub_40160a, @function
sub_40160a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40162c
	.globl sub_40162c
	.type sub_40162c, @function
sub_40162c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40163d
	.globl sub_40163d
	.type sub_40163d, @function
sub_40163d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401656
	.globl sub_401656
	.type sub_401656, @function
sub_401656:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401660
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
	je	.label_10
	test	r14, r14
	je	.label_9
.label_10:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_9:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401696
	.globl sub_401696
	.type sub_401696, @function
sub_401696:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4016a0
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
	#Procedure 0x401761
	.globl sub_401761
	.type sub_401761, @function
sub_401761:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401770

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_11
	test	rsi, rsi
	mov	ecx, 1
	je	.label_12
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_12
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_11:
	mov	ecx, 1
.label_12:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	32
	#Procedure 0x4017bb
	.globl sub_4017bb
	.type sub_4017bb, @function
sub_4017bb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4017c0

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
	#Procedure 0x4017d7
	.globl sub_4017d7
	.type sub_4017d7, @function
sub_4017d7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4017e0
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x4017ea
	.globl sub_4017ea
	.type sub_4017ea, @function
sub_4017ea:

	nop	word ptr [rax + rax]
.label_17:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_13
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	32
	#Procedure 0x401810
	.globl sub_401810
	.type sub_401810, @function
sub_401810:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40181f

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_17
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_15
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_18
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_15
	mov	esi, OFFSET FLAT:label_16
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_14
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_14:
	mov	rbx, r14
.label_15:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x4018a0
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
	#Procedure 0x401915
	.globl sub_401915
	.type sub_401915, @function
sub_401915:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401920

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_20
	cmp	byte ptr [rax], 0x43
	jne	.label_22
	cmp	byte ptr [rax + 1], 0
	je	.label_19
.label_22:
	mov	esi, OFFSET FLAT:label_21
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_20
.label_19:
	xor	ebx, ebx
.label_20:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x401951
	.globl sub_401951
	.type sub_401951, @function
sub_401951:

	nop	word ptr cs:[rax + rax]
.label_23:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401965
	.globl sub_401965
	.type sub_401965, @function
sub_401965:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40196b
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_24
	test	rax, rax
	je	.label_23
.label_24:
	pop	rbx
	ret	
.label_25:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	.section	.text
	.align	32
	#Procedure 0x40198c
	.globl sub_40198c
	.type sub_40198c, @function
sub_40198c:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401998

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_25
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
	je	.label_25
.label_27:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_25
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_26
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_26:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_28:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x401a05
	.globl sub_401a05
	.type sub_401a05, @function
sub_401a05:

	nop	
	.section	.text
	.align	32
	#Procedure 0x401a07
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_29]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_30]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_31]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_28
	test	rdx, rdx
	je	.label_28
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
	#Procedure 0x401a70
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x401a7e
	.globl sub_401a7e
	.type sub_401a7e, @function
sub_401a7e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x401a80

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
	js	.label_32
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_35
	cmp	r12d, 0x7fffffff
	je	.label_37
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
	jne	.label_33
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_33:
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
.label_35:
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
	jbe	.label_38
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_34
.label_38:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_36
	mov	rdi, r14
	call	free
.label_36:
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
.label_34:
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
.label_32:
	call	abort
.label_37:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401c3d
	.globl sub_401c3d
	.type sub_401c3d, @function
sub_401c3d:

	nop	dword ptr [rax]
.label_44:
	test	rcx, rcx
	jne	.label_39
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_39:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_42
.label_45:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_40
	test	rbx, rbx
	jne	.label_40
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_40:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_41
	test	rax, rax
	je	.label_43
.label_41:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x401ca0
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_44
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_43
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_45
.label_43:
	call	xalloc_die
.label_42:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401cd7
	.globl sub_401cd7
	.type sub_401cd7, @function
sub_401cd7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401ce0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_46
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_47
	test	rax, rax
	je	.label_46
.label_47:
	pop	rbx
	ret	
.label_46:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401d15
	.globl sub_401d15
	.type sub_401d15, @function
sub_401d15:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401d20
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_29]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_30]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_31]
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
	#Procedure 0x401d8f
	.globl sub_401d8f
	.type sub_401d8f, @function
sub_401d8f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x401d90
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
	#Procedure 0x401dc6
	.globl sub_401dc6
	.type sub_401dc6, @function
sub_401dc6:

	nop	word ptr cs:[rax + rax]
.label_48:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401dd5
	.globl sub_401dd5
	.type sub_401dd5, @function
sub_401dd5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401de3
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
	je	.label_49
	test	r15, r15
	je	.label_48
.label_49:
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
	#Procedure 0x401e20
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	.section	.text
	.align	32
	#Procedure 0x401e28
	.globl sub_401e28
	.type sub_401e28, @function
sub_401e28:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401e30
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_29]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_30]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_31]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_50
	test	rsi, rsi
	je	.label_50
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_50:
	call	abort
.label_51:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401ea5
	.globl sub_401ea5
	.type sub_401ea5, @function
sub_401ea5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401eaf
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_51
	call	rpl_calloc
	test	rax, rax
	je	.label_51
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x401ed0
	.globl xvprintf
	.type xvprintf, @function
xvprintf:

	push	rbp
	push	r14
	push	rbx
	mov	rax, rsi
	mov	rcx, rdi
	mov	rdi, qword ptr [rip + stdout]
	mov	esi, 1
	mov	rdx, rcx
	mov	rcx, rax
	call	__vfprintf_chk
	mov	ebx, eax
	test	ebx, ebx
	jns	.label_52
	mov	rdi, qword ptr [rip + stdout]
	call	ferror
	test	eax, eax
	jne	.label_52
	mov	r14d, dword ptr [rip + exit_failure]
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_53
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	edi, r14d
	mov	esi, ebp
	mov	rdx, rcx
	call	error
.label_52:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401f3f
	.globl sub_401f3f
	.type sub_401f3f, @function
sub_401f3f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x401f40

	.globl c_strtold
	.type c_strtold, @function
c_strtold:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x18
	mov	r15, rsi
	mov	r14, rdi
	cmp	qword ptr [rip + c_locale_cache],  0
	jne	.label_54
	mov	edi, 0x1fbf
	mov	esi, OFFSET FLAT:label_58
	xor	edx, edx
	call	newlocale
	mov	qword ptr [rip + c_locale_cache],  rax
.label_54:
	mov	rdi, qword ptr [rip + c_locale_cache]
	test	rdi, rdi
	je	.label_57
	call	uselocale
	mov	rbx, rax
	test	rbx, rbx
	je	.label_57
	mov	rdi, r14
	mov	rsi, r15
	call	strtold
	fstp	xword ptr [rsp + 0xc]
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	uselocale
	test	rax, rax
	je	.label_56
	mov	dword ptr [r14], ebp
	fld	xword ptr [rsp + 0xc]
	jmp	.label_55
.label_56:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x401fc0
	.globl sub_401fc0
	.type sub_401fc0, @function
sub_401fc0:

	nop	word ptr cs:[rax + rax]
.label_57:
	fldz	
	test	r15, r15
	je	.label_55
	mov	qword ptr [r15], r14
.label_55:
	add	rsp, 0x18
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401fe0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_29]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_30]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_31]
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
	#Procedure 0x402035
	.globl sub_402035
	.type sub_402035, @function
sub_402035:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402040

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_59
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_60
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x402065
	.globl sub_402065
	.type sub_402065, @function
sub_402065:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402070

	.globl vstrtoimax
	.type vstrtoimax, @function
vstrtoimax:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	al, byte ptr [rbx]
	cmp	al, 0x27
	je	.label_63
	cmp	al, 0x22
	jne	.label_61
.label_63:
	movzx	r14d, byte ptr [rbx + 1]
	test	r14, r14
	je	.label_61
	cmp	byte ptr [rbx + 2], 0
	je	.label_62
	mov	al, byte ptr [rip + posixly_correct]
	test	al, al
	jne	.label_62
	add	rbx, 2
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_64
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, rbx
	call	error
	jmp	.label_62
.label_61:
	call	__errno_location
	mov	dword ptr [rax], 0
	lea	rsi, [rsp]
	xor	edx, edx
	xor	ecx, ecx
	mov	rdi, rbx
	call	__strtol_internal
	mov	r14, rax
	mov	rsi, qword ptr [rsp]
	mov	rdi, rbx
	call	verify_numeric
.label_62:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x4020fb
	.globl sub_4020fb
	.type sub_4020fb, @function
sub_4020fb:

	nop	dword ptr [rax + rax]
.label_66:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_65
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
	#Procedure 0x402138
	.globl sub_402138
	.type sub_402138, @function
sub_402138:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402142

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_66
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_72
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
	mov	esi, OFFSET FLAT:label_84
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_75
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_70
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_74
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_76
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_77
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_78
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_80
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_69
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_67
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_73
	mov	ecx, OFFSET FLAT:label_68
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_71
	mov	esi, OFFSET FLAT:label_85
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_71
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_79
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_71:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_82
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_68
	mov	ecx, OFFSET FLAT:label_69
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_83
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_69
	mov	ecx, OFFSET FLAT:label_81
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
	.section	.text
	.align	32
	#Procedure 0x402350

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
	#Procedure 0x402369
	.globl sub_402369
	.type sub_402369, @function
sub_402369:

	nop	dword ptr [rax]
.label_88:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_86
	test	rax, rax
	je	.label_87
.label_86:
	pop	rbx
	ret	
.label_87:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402389
	.globl sub_402389
	.type sub_402389, @function
sub_402389:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402391
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_87
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_88
	test	rbx, rbx
	jne	.label_88
	call	free
	xor	eax, eax
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4023c0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x4023c8
	.globl sub_4023c8
	.type sub_4023c8, @function
sub_4023c8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4023d0
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
	#Procedure 0x4023df
	.globl sub_4023df
	.type sub_4023df, @function
sub_4023df:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4023e0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_89
	test	rax, rax
	je	.label_90
.label_89:
	pop	rbx
	ret	
.label_90:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4023fa
	.globl sub_4023fa
	.type sub_4023fa, @function
sub_4023fa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402400
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
	#Procedure 0x40240f
	.globl sub_40240f
	.type sub_40240f, @function
sub_40240f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402410

	.globl unicode_to_mb
	.type unicode_to_mb, @function
unicode_to_mb:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x58
	mov	r13, rcx
	mov	r14, rdx
	mov	r15, rsi
	mov	ebp, edi
	mov	al, byte ptr [rip + unicode_to_mb.initialized]
	test	al, al
	jne	.label_97
	call	locale_charset
	mov	rbx, rax
	mov	esi, OFFSET FLAT:label_95
	mov	rdi, rbx
	call	strcmp
	xor	ecx, ecx
	test	eax, eax
	sete	cl
	mov	dword ptr [rip + unicode_to_mb.is_utf8],  ecx
	je	.label_92
	mov	esi, OFFSET FLAT:label_95
	mov	rdi, rbx
	call	iconv_open
	mov	qword ptr [rip + unicode_to_mb.utf8_to_local],  rax
	cmp	rax, -1
	jne	.label_92
	mov	edi, OFFSET FLAT:label_60
	mov	esi, OFFSET FLAT:label_95
	call	iconv_open
	mov	qword ptr [rip + unicode_to_mb.utf8_to_local],  rax
.label_92:
	mov	byte ptr [rip + unicode_to_mb.initialized],  1
.label_97:
	mov	ecx, dword ptr [rip + unicode_to_mb.is_utf8]
	test	ecx, ecx
	jne	.label_96
	cmp	qword ptr [rip + unicode_to_mb.utf8_to_local],  -1
	jne	.label_96
	mov	esi, OFFSET FLAT:label_99
.label_94:
	mov	edi, ebp
	mov	rdx, r13
	call	r14
	jmp	.label_101
.label_96:
	cmp	ebp, 0x7f
	ja	.label_102
	mov	byte ptr [rsp + 0xa], bpl
	mov	esi, 1
	jmp	.label_104
.label_102:
	lea	rdi, [rsp + 0xa]
	mov	edx, 6
	mov	esi, ebp
	call	u8_uctomb_aux
	test	eax, eax
	js	.label_98
	mov	ecx, dword ptr [rip + unicode_to_mb.is_utf8]
	movsxd	rsi, eax
.label_104:
	test	ecx, ecx
	je	.label_100
	lea	rdi, [rsp + 0xa]
.label_103:
	mov	rdx, r13
	call	r15
.label_101:
	add	rsp, 0x58
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_100:
	lea	rax, [rsp + 0xa]
	mov	qword ptr [rsp + 0x28], rax
	mov	qword ptr [rsp + 0x20], rsi
	lea	r12, [rsp + 0x30]
	mov	qword ptr [rsp + 0x10], r12
	mov	qword ptr [rsp + 0x18], 0x19
	mov	rdi, qword ptr [rip + unicode_to_mb.utf8_to_local]
	lea	rsi, [rsp + 0x28]
	lea	rdx, [rsp + 0x20]
	lea	rcx, [rsp + 0x10]
	lea	r8, [rsp + 0x18]
	call	iconv
	cmp	rax, -1
	je	.label_91
	mov	rax, qword ptr [rsp + 0x20]
	test	rax, rax
	jne	.label_91
	mov	rdi, qword ptr [rip + unicode_to_mb.utf8_to_local]
	lea	rcx, [rsp + 0x10]
	lea	r8, [rsp + 0x18]
	xor	esi, esi
	xor	edx, edx
	call	iconv
	cmp	rax, -1
	je	.label_91
	mov	rsi, qword ptr [rsp + 0x10]
	sub	rsi, r12
	mov	rdi, r12
	jmp	.label_103
.label_91:
	xor	esi, esi
	jmp	.label_94
.label_98:
	mov	esi, OFFSET FLAT:label_93
	jmp	.label_94
	.section	.text
	.align	32
	#Procedure 0x402595
	.globl sub_402595
	.type sub_402595, @function
sub_402595:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4025a0
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
	#Procedure 0x4025b8
	.globl sub_4025b8
	.type sub_4025b8, @function
sub_4025b8:

	nop	dword ptr [rax + rax]
.label_105:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4025c5
	.globl sub_4025c5
	.type sub_4025c5, @function
sub_4025c5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4025d0
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
	je	.label_105
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
	#Procedure 0x402660
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x402671
	.globl sub_402671
	.type sub_402671, @function
sub_402671:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402680
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
	#Procedure 0x4026b3
	.globl sub_4026b3
	.type sub_4026b3, @function
sub_4026b3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4026c0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_106
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_108
.label_106:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_108:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_109
	cmp	r10d, 0x29
	jae	.label_118
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_107
.label_118:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_107:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_109
	cmp	r10d, 0x29
	jae	.label_116
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_117
.label_116:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_117:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_109
	cmp	r10d, 0x29
	jae	.label_114
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_115
.label_114:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_115:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_109
	cmp	r10d, 0x29
	jae	.label_112
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_113
.label_112:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_113:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_109
	cmp	r10d, 0x29
	jae	.label_110
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_111
.label_110:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_111:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_109
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_109
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_109
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_109
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_109:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	32
	#Procedure 0x4028a2
	.globl sub_4028a2
	.type sub_4028a2, @function
sub_4028a2:

	nop	word ptr cs:[rax + rax]
.label_121:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_119
	test	rax, rax
	je	.label_120
.label_119:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4028c4

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_121
	test	rbx, rbx
	jne	.label_121
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_120:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4028e0
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
	je	.label_122
	mov	qword ptr [rax], rbx
.label_122:
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
	#Procedure 0x4029cc
	.globl sub_4029cc
	.type sub_4029cc, @function
sub_4029cc:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4029d0

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
	jne	.label_124
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_123
	test	cl, cl
	jne	.label_123
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_123
.label_124:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_123
	call	__errno_location
	mov	dword ptr [rax], 0
.label_123:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402a30

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
	je	.label_125
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
.label_125:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x402a98
	.globl sub_402a98
	.type sub_402a98, @function
sub_402a98:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402aa0
	.globl xfprintf
	.type xfprintf, @function
xfprintf:

	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0xd0
	mov	rbx, rsi
	mov	r14, rdi
	test	al, al
	je	.label_126
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_126:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xf0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x10
	lea	rcx, [rsp]
	mov	esi, 1
	mov	rdi, r14
	mov	rdx, rbx
	call	__vfprintf_chk
	mov	ebx, eax
	test	ebx, ebx
	jns	.label_127
	mov	rdi, r14
	call	ferror
	test	eax, eax
	jne	.label_127
	mov	r14d, dword ptr [rip + exit_failure]
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_53
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	edi, r14d
	mov	esi, ebp
	mov	rdx, rcx
	call	error
.label_127:
	mov	eax, ebx
	add	rsp, 0xd0
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402b8b
	.globl sub_402b8b
	.type sub_402b8b, @function
sub_402b8b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402b90
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_29]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_30]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_31]
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
	#Procedure 0x402be4
	.globl sub_402be4
	.type sub_402be4, @function
sub_402be4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402bf0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_128
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_129
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_131
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_73
	mov	ecx, OFFSET FLAT:label_68
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_130
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	32
	#Procedure 0x402c64
	.globl sub_402c64
	.type sub_402c64, @function
sub_402c64:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402c70
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x402c7a
	.globl sub_402c7a
	.type sub_402c7a, @function
sub_402c7a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402c80

	.globl exit_failure_callback
	.type exit_failure_callback, @function
exit_failure_callback:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rsi
	mov	r14d, edi
	xor	edi, edi
	test	rbx, rbx
	je	.label_132
	mov	esi, OFFSET FLAT:label_133
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	xor	edi, edi
	mov	edx, 5
	mov	rsi, rbx
	call	dcgettext
	mov	rbx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	mov	ecx, r14d
	mov	r8, rbx
	call	error
	jmp	.label_134
.label_132:
	mov	esi, OFFSET FLAT:label_135
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	ecx, r14d
	call	error
.label_134:
	mov	rax, -1
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_136:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x402d05
	.globl sub_402d05
	.type sub_402d05, @function
sub_402d05:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402d0d
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
	je	.label_136
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
	#Procedure 0x402d70

	.globl print_esc
	.type print_esc, @function
print_esc:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r14, rdi
	movsx	r12d, byte ptr [r14 + 1]
	cmp	r12d, 0x78
	jne	.label_163
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	movzx	edx, byte ptr [r14 + 2]
	test	byte ptr [rcx + rdx*2 + 1], 0x10
	je	.label_154
	movsx	eax, dl
	mov	ebx, eax
	add	bl, 0x9f
	cmp	bl, 5
	ja	.label_166
	add	eax, -0x57
	jmp	.label_142
.label_163:
	lea	rbx, [r14 + 1]
	mov	eax, r12d
	and	al, 0xf8
	cmp	al, 0x30
	jne	.label_168
	cmp	r12b, 0x30
	sete	al
	and	al, sil
	movzx	eax, al
	lea	rcx, [rbx + rax]
	movsx	eax, byte ptr [rbx + rax]
	mov	edx, eax
	and	dl, 0xf8
	cmp	dl, 0x30
	jne	.label_171
	add	eax, -0x30
	movsx	edx, byte ptr [rcx + 1]
	inc	rcx
	mov	ebx, edx
	and	bl, 0xf8
	cmp	bl, 0x30
	jne	.label_141
	lea	eax, [rdx + rax*8 - 0x30]
	movsx	edx, byte ptr [rcx + 1]
	inc	rcx
	mov	ebx, edx
	and	bl, 0xf8
	cmp	bl, 0x30
	jne	.label_141
	lea	eax, [rdx + rax*8 - 0x30]
	inc	rcx
	jmp	.label_141
.label_168:
	test	r12b, r12b
	je	.label_143
	mov	edi, OFFSET FLAT:label_144
	mov	edx, 0xc
	mov	esi, r12d
	call	memchr
	test	rax, rax
	je	.label_149
	lea	rbx, [r14 + 2]
	mov	eax, r12d
	add	eax, -0x61
	cmp	eax, 0x15
	ja	.label_150
	jmp	qword ptr [(rax * 8) + label_151]
.label_563:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_153
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 7
	jmp	.label_139
.label_166:
	add	dl, 0xbf
	cmp	dl, 5
	ja	.label_158
	add	eax, -0x37
	jmp	.label_142
.label_171:
	xor	eax, eax
.label_141:
	mov	rbx, rcx
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rdi + 0x28]
	cmp	rcx, qword ptr [rdi + 0x30]
	jae	.label_159
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], al
	jmp	.label_139
.label_158:
	add	eax, -0x30
.label_142:
	movzx	edx, byte ptr [r14 + 3]
	test	byte ptr [rcx + rdx*2 + 1], 0x10
	jne	.label_167
	lea	rbx, [r14 + 3]
	jmp	.label_169
.label_167:
	movsx	ecx, dl
	shl	eax, 4
	mov	ebx, ecx
	add	bl, 0x9f
	cmp	bl, 6
	jae	.label_173
	add	ecx, -0x57
	jmp	.label_174
.label_173:
	add	dl, 0xbf
	cmp	dl, 6
	jae	.label_175
	add	ecx, -0x37
	jmp	.label_174
.label_175:
	add	ecx, -0x30
.label_174:
	add	eax, ecx
	lea	rbx, [r14 + 4]
.label_169:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rdi + 0x28]
	cmp	rcx, qword ptr [rdi + 0x30]
	jae	.label_178
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], al
.label_139:
	not	r14d
	add	ebx, r14d
	mov	eax, ebx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_149:
	mov	eax, r12d
	or	al, 0x20
	cmp	al, 0x75
	jne	.label_143
	xor	ebp, ebp
	cmp	r12b, 0x75
	setne	bpl
	lea	r15d, [rbp*4 + 4]
	lea	rbx, [r14 + 2]
	call	__ctype_b_loc
	mov	r8, qword ptr [rax]
	lea	ecx, [rbp*4 + 5]
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_164:
	movzx	edi, byte ptr [rbx]
	test	byte ptr [r8 + rdi*2 + 1], 0x10
	je	.label_154
	movsx	esi, dil
	mov	edx, ebp
	shl	edx, 4
	mov	eax, esi
	add	al, 0x9f
	cmp	al, 5
	ja	.label_156
	add	esi, -0x57
	jmp	.label_138
	.section	.text
	.align	32
	#Procedure 0x402f85
	.globl sub_402f85
	.type sub_402f85, @function
sub_402f85:

	nop	word ptr cs:[rax + rax]
.label_156:
	add	dil, 0xbf
	cmp	dil, 5
	ja	.label_160
	add	esi, -0x37
	jmp	.label_138
	.section	.text
	.align	32
	#Procedure 0x402f9f
	.globl sub_402f9f
	.type sub_402f9f, @function
sub_402f9f:

	nop	
.label_160:
	add	esi, -0x30
.label_138:
	mov	ebp, esi
	add	ebp, edx
	inc	rbx
	dec	ecx
	cmp	ecx, 1
	jg	.label_164
	cmp	ebp, 0x9f
	ja	.label_145
	lea	eax, [rbp - 0x24]
	cmp	eax, 0x3c
	ja	.label_172
	movabs	rcx, 0x1000000010000001
	bt	rcx, rax
	jae	.label_172
.label_145:
	mov	eax, ebp
	and	eax, 0xfffff800
	cmp	eax, 0xd800
	je	.label_172
	mov	rdi, qword ptr [rip + stdout]
	xor	edx, edx
	mov	esi, ebp
	call	print_unicode_char
	jmp	.label_139
.label_143:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_137
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x5c
.label_162:
	movzx	esi, byte ptr [rbx]
	test	esi, esi
	je	.label_139
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_146
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], sil
.label_165:
	lea	rbx, [r14 + 2]
	jmp	.label_139
.label_564:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_177
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 8
	jmp	.label_139
.label_150:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_157
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], r12b
	jmp	.label_139
.label_566:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_161
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x1b
	jmp	.label_139
.label_567:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_170
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xc
	jmp	.label_139
.label_568:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_176
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
	jmp	.label_139
.label_569:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_140
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xd
	jmp	.label_139
.label_570:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_147
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 9
	jmp	.label_139
.label_571:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_152
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xb
	jmp	.label_139
.label_178:
	movzx	esi, al
	call	__overflow
	jmp	.label_139
.label_159:
	movzx	esi, al
	call	__overflow
	jmp	.label_139
.label_137:
	mov	esi, 0x5c
	call	__overflow
	jmp	.label_162
.label_146:
	call	__overflow
	jmp	.label_165
.label_153:
	mov	esi, 7
	call	__overflow
	jmp	.label_139
.label_177:
	mov	esi, 8
	call	__overflow
	jmp	.label_139
.label_157:
	movzx	esi, r12b
	call	__overflow
	jmp	.label_139
.label_161:
	mov	esi, 0x1b
	call	__overflow
	jmp	.label_139
.label_170:
	mov	esi, 0xc
	call	__overflow
	jmp	.label_139
.label_176:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_139
.label_140:
	mov	esi, 0xd
	call	__overflow
	jmp	.label_139
.label_147:
	mov	esi, 9
	call	__overflow
	jmp	.label_139
.label_152:
	mov	esi, 0xb
	call	__overflow
	jmp	.label_139
.label_154:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_148
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_565:
	xor	edi, edi
	call	exit
.label_172:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_155
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	ecx, r12d
	mov	r8d, r15d
	mov	r9d, ebp
	call	error
	nop	
.label_179:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403295
	.globl sub_403295
	.type sub_403295, @function
sub_403295:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4032a4
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
	je	.label_179
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
	#Procedure 0x403300

	.globl cl_strtold
	.type cl_strtold, @function
cl_strtold:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x20
	mov	r14, rsi
	mov	rbx, rdi
	lea	rsi, [rsp]
	call	strtold
	mov	r12, qword ptr [rsp]
	cmp	byte ptr [r12], 0
	je	.label_181
	fstp	xword ptr [rsp + 0x14]
	call	__errno_location
	mov	r15, rax
	mov	ebp, dword ptr [r15]
	lea	rsi, [rsp + 8]
	mov	rdi, rbx
	call	c_strtold
	mov	rax, qword ptr [rsp + 8]
	cmp	r12, rax
	jae	.label_180
	mov	qword ptr [rsp], rax
	mov	r12, rax
	jmp	.label_181
.label_180:
	fstp	st(0)
	mov	dword ptr [r15], ebp
	fld	xword ptr [rsp + 0x14]
.label_181:
	test	r14, r14
	je	.label_182
	mov	qword ptr [r14], r12
.label_182:
	add	rsp, 0x20
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403373
	.globl sub_403373
	.type sub_403373, @function
sub_403373:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403380

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
	jmp	.label_221
	.section	.text
	.align	32
	#Procedure 0x40342f
	.globl sub_40342f
	.type sub_40342f, @function
sub_40342f:

	nop	
.label_218:
	cmp	r8d, 2
	setne	al
	cmp	byte ptr [rsp + 0xf], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa8]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x34]
	mov	rsi, qword ptr [rsp + 0xc0]
	je	.label_213
	or	al, dl
	jne	.label_213
	test	dil, 1
	jne	.label_215
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_213
	test	rbp, rbp
	mov	r15d, r8d
	mov	al, bl
	mov	qword ptr [rsp + 0x48], rcx
	mov	r12d, esi
	mov	r13, qword ptr [rsp + 0x68]
	je	.label_221
	jmp	.label_213
.label_543:
	mov	r8d, 5
	test	r12b, 1
	jne	.label_224
	test	rbp, rbp
	je	.label_229
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax], 0x22
.label_229:
	mov	r14d, 1
	jmp	.label_234
.label_544:
	mov	r13b, 1
	mov	r8d, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_236
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	sil, 1
	jmp	.label_237
.label_224:
	xor	r14d, r14d
.label_234:
	mov	eax, OFFSET FLAT:label_236
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	r13b, 1
	jmp	.label_300
	.section	.text
	.align	32
	#Procedure 0x4034ff
	.globl sub_4034ff
	.type sub_4034ff, @function
sub_4034ff:

	nop	
.label_221:
	mov	rbp, r13
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_254
	mov	r8d, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	jmp	qword ptr [(rcx * 8) + label_262]
.label_545:
	mov	r14d, edi
	mov	edi, OFFSET FLAT:label_269
	mov	esi, r15d
	mov	ebx, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x80], rax
	mov	edi, OFFSET FLAT:label_197
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebx
	mov	edi, r14d
	mov	qword ptr [rsp + 0x78], rax
.label_546:
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x80]
	jne	.label_283
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_283
	xor	r14d, r14d
	nop	
.label_292:
	cmp	r14, rbp
	jae	.label_289
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], al
.label_289:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_292
.label_283:
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
	jmp	.label_237
.label_538:
	xor	r8d, r8d
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_237
.label_541:
	mov	al, 1
.label_539:
	mov	r12b, 1
.label_542:
	test	r12b, 1
	mov	cl, 1
	je	.label_307
	mov	ecx, eax
.label_307:
	mov	al, cl
.label_540:
	mov	r8d, 2
	test	r12b, 1
	jne	.label_309
	test	rbp, rbp
	je	.label_187
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx], 0x27
.label_187:
	mov	r14d, 1
	jmp	.label_190
.label_309:
	xor	r14d, r14d
.label_190:
	mov	ecx, OFFSET FLAT:label_197
	mov	qword ptr [rsp + 0x58], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x50], rcx
	mov	r13d, eax
.label_300:
	mov	sil, r12b
.label_237:
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
	jmp	.label_204
	.section	.text
	.align	32
	#Procedure 0x4036c1
	.globl sub_4036c1
	.type sub_4036c1, @function
sub_4036c1:

	nop	word ptr cs:[rax + rax]
.label_207:
	inc	r12
.label_204:
	cmp	r11, -1
	je	.label_243
	cmp	r12, r11
	jne	.label_245
	jmp	.label_246
	.section	.text
	.align	32
	#Procedure 0x4036e3
	.globl sub_4036e3
	.type sub_4036e3, @function
sub_4036e3:

	nop	word ptr cs:[rax + rax]
.label_243:
	mov	rcx, -1
	cmp	byte ptr [r10 + r12], 0
	je	.label_293
.label_245:
	cmp	byte ptr [rsp + 0x37], 0
	je	.label_255
	mov	rax, qword ptr [rsp + 0x50]
	lea	rbx, [r12 + rax]
	cmp	rax, 2
	jb	.label_259
	cmp	r11, -1
	jne	.label_259
	mov	r15d, edi
	mov	rdi, r10
	mov	r13d, r9d
	call	strlen
	mov	r9d, r13d
	mov	r8, qword ptr [rsp + 0x38]
	mov	edi, r15d
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_259:
	cmp	rbx, r11
	jbe	.label_273
.label_255:
	xor	esi, esi
.label_294:
	movzx	r15d, byte ptr [r10 + r12]
	cmp	r15, 0x7e
	ja	.label_275
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_279]
.label_597:
	test	r12, r12
	jne	.label_217
	jmp	.label_284
	.section	.text
	.align	32
	#Procedure 0x403776
	.globl sub_403776
	.type sub_403776, @function
sub_403776:

	nop	word ptr cs:[rax + rax]
.label_273:
	mov	r13d, r9d
	mov	r15d, edi
	mov	rbx, r11
	lea	rdi, [r10 + r12]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	rdx, qword ptr [rsp + 0x50]
	call	memcmp
	test	eax, eax
	sete	sil
	jne	.label_291
	cmp	byte ptr [rsp + 0xf], 0
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	je	.label_294
	jmp	.label_188
.label_291:
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	jmp	.label_294
.label_601:
	xor	eax, eax
	cmp	r11, -1
	je	.label_267
	test	r12, r12
	jne	.label_306
	cmp	r11, 1
	je	.label_284
	xor	r13d, r13d
	jmp	.label_206
.label_590:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_184
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_188
	cmp	r8d, 2
	jne	.label_195
	mov	eax, r9d
	and	al, 1
	jne	.label_195
	cmp	r14, rbp
	jae	.label_198
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_198:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_200
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_200:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_308
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_308:
	add	r14, 3
	mov	r9b, 1
.label_195:
	mov	rcx, r14
	cmp	rcx, rbp
	jae	.label_214
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + rcx], 0x5c
.label_214:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r8d, 2
	je	.label_249
	lea	rdx, [r12 + 1]
	cmp	rdx, r11
	jae	.label_249
	mov	dl, byte ptr [r10 + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_249
	cmp	r14, rbp
	jae	.label_230
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x30
.label_230:
	lea	rdx, [rcx + 2]
	cmp	rdx, rbp
	jae	.label_196
	mov	ebx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rdx], 0x30
	mov	esi, ebx
.label_196:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_206
.label_591:
	mov	bl, 0x62
	jmp	.label_244
.label_592:
	mov	cl, 0x74
	jmp	.label_208
.label_593:
	mov	bl, 0x76
	jmp	.label_244
.label_594:
	mov	bl, 0x66
	jmp	.label_244
.label_595:
	mov	cl, 0x72
	jmp	.label_208
.label_598:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa8], rax
	cmp	r8d, 2
	jne	.label_252
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_199
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
	jae	.label_263
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_263:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_276
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x5c
.label_276:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_282
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_282:
	add	r14, 3
	xor	r9d, r9d
.label_252:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_206
.label_599:
	mov	r15b, 0x3f
	cmp	r8d, 5
	je	.label_285
	cmp	r8d, 2
	jne	.label_217
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_217
	jmp	.label_199
.label_600:
	cmp	r8d, 2
	jne	.label_296
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_199
	mov	r15b, 0x5c
	xor	eax, eax
	jmp	.label_219
.label_275:
	cmp	qword ptr [rsp + 0xb8], 1
	mov	qword ptr [rsp + 0xa0], rbp
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	mov	dword ptr [rsp + 0x94], esi
	jne	.label_303
	mov	qword ptr [rsp + 0x48], r11
	call	__ctype_b_loc
	mov	r10, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	ebx, 1
	jmp	.label_304
.label_267:
	test	r12, r12
	jne	.label_191
	mov	cl, byte ptr [r10 + 1]
	test	cl, cl
	jne	.label_191
.label_284:
	mov	dl, 1
.label_596:
	cmp	byte ptr [rsp + 0x27], 0
	je	.label_199
	xor	eax, eax
	mov	r13b, dl
.label_206:
	cmp	byte ptr [rsp + 0x36], 0
	je	.label_205
	cmp	qword ptr [rsp + 0x100], 0
	jne	.label_209
	jmp	.label_211
	.section	.text
	.align	32
	#Procedure 0x403a54
	.globl sub_403a54
	.type sub_403a54, @function
sub_403a54:

	nop	word ptr cs:[rax + rax]
.label_205:
	cmp	byte ptr [rsp + 0x35], 0
	je	.label_211
.label_209:
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	ebx, esi
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_216
	mov	rcx, qword ptr [rsp + 0x100]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_222
	.section	.text
	.align	32
	#Procedure 0x403a8d
	.globl sub_403a8d
	.type sub_403a8d, @function
sub_403a8d:

	nop	dword ptr [rax]
.label_211:
	test	sil, sil
.label_222:
	mov	ebx, r15d
	je	.label_240
	jmp	.label_226
.label_216:
	mov	ebx, r15d
	jmp	.label_226
.label_184:
	cmp	dword ptr [rsp + 0x9c], 0
	jne	.label_207
	xor	r15d, r15d
	jmp	.label_217
.label_296:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x32], 0
	je	.label_208
	xor	eax, eax
	mov	r15b, 0x5c
.label_219:
	xor	r13d, r13d
	jmp	.label_240
.label_208:
	cmp	byte ptr [rsp + 0x27], 0
	mov	ebx, ecx
	je	.label_199
.label_244:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1f], 0
	mov	r13d, 0
	je	.label_206
	nop	
.label_226:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_188
	cmp	r8d, 2
	jne	.label_253
	mov	eax, r9d
	and	al, 1
	jne	.label_253
	cmp	r14, rbp
	jae	.label_258
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_258:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_247
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_247:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_233
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_233:
	add	r14, 3
	mov	r9b, 1
.label_253:
	cmp	r14, rbp
	jae	.label_274
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_274:
	inc	r14
	jmp	.label_281
.label_303:
	mov	qword ptr [rsp + 0x70], 0
	cmp	r11, -1
	jne	.label_280
	mov	rdi, r10
	call	strlen
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_280:
	cmp	byte ptr [rsp + 0x31], 0
	mov	qword ptr [rsp + 0x48], r11
	mov	qword ptr [rsp + 0x88], r12
	je	.label_242
	lea	rax, [r10 + r12]
	mov	qword ptr [rsp + 0xb0], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbp, [rsp + 0x70]
.label_235:
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
	je	.label_297
	cmp	rbx, -1
	mov	r10, qword ptr [rsp + 0x28]
	movabs	rsi, 0x20000002b
	je	.label_305
	test	rbx, rbx
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_193
	cmp	rbx, 2
	mov	rbp, qword ptr [rsp + 0xa0]
	jb	.label_185
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax]
.label_194:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_286
	bt	rsi, rdx
	jb	.label_199
.label_286:
	inc	rcx
	cmp	rcx, rbx
	jb	.label_194
.label_185:
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	jne	.label_192
	xor	r13d, r13d
.label_192:
	lea	rbp, [rsp + 0x70]
	mov	r12, qword ptr [rsp + 0x40]
	add	r12, rbx
	mov	rdi, rbp
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_235
	jmp	.label_223
.label_249:
	xor	r13d, r13d
	jmp	.label_206
.label_191:
	mov	r11, -1
	xor	r13d, r13d
	jmp	.label_206
.label_285:
	cmp	dword ptr [rsp + 0x98], 0
	je	.label_217
	lea	rcx, [r12 + 2]
	cmp	rcx, r11
	jae	.label_217
	cmp	byte ptr [r10 + r12 + 1], 0x3f
	jne	.label_217
	movsx	edx, byte ptr [r10 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_241
	mov	ebx, esi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_264
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_250
	cmp	r14, rbp
	jae	.label_251
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x3f
.label_251:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_257
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_257:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_228
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_228:
	lea	rax, [r14 + 3]
	cmp	rax, rbp
	jae	.label_302
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x3f
.label_302:
	add	r14, 4
	xor	eax, eax
	mov	r12, rcx
	mov	r15b, dl
.label_264:
	xor	r13d, r13d
	mov	esi, ebx
	jmp	.label_206
.label_217:
	xor	eax, eax
.label_306:
	xor	r13d, r13d
	jmp	.label_206
.label_242:
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbx, [rsp + 0x70]
	nop	word ptr cs:[rax + rax]
.label_268:
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
	je	.label_299
	cmp	rbp, -1
	je	.label_295
	cmp	rbp, -2
	je	.label_297
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	mov	r12, qword ptr [rsp + 0x40]
	jne	.label_301
	xor	r13d, r13d
.label_301:
	add	r12, rbp
	lea	rbx, [rsp + 0x70]
	mov	rdi, rbx
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_268
	jmp	.label_223
.label_297:
	mov	r10, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x40]
	lea	rax, [rsi + r12]
	mov	rdx, qword ptr [rsp + 0x48]
	cmp	rax, rdx
	jae	.label_189
	lea	rax, [r10 + r12]
.label_256:
	cmp	byte ptr [rax + rsi], 0
	je	.label_189
	lea	rcx, [r12 + rsi + 1]
	inc	rsi
	cmp	rcx, rdx
	jb	.label_256
.label_189:
	mov	qword ptr [rsp + 0x40], rsi
.label_305:
	xor	r13d, r13d
	jmp	.label_193
.label_295:
	xor	r13d, r13d
.label_299:
	mov	r10, qword ptr [rsp + 0x28]
.label_193:
	mov	r12, qword ptr [rsp + 0x40]
.label_223:
	mov	rbx, r12
	mov	r12, qword ptr [rsp + 0x88]
.label_304:
	and	r13b, 1
	mov	eax, r13d
	or	al, byte ptr [rsp + 0x33]
	cmp	rbx, 1
	mov	rbp, qword ptr [rsp + 0xa0]
	mov	dil, byte ptr [rsp + 0x1e]
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x60]
	mov	esi, dword ptr [rsp + 0x94]
	ja	.label_203
	test	al, al
	je	.label_203
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_206
.label_203:
	mov	byte ptr [rsp + 0x40], al
	add	rbx, r12
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_220
	.section	.text
	.align	32
	#Procedure 0x403e87
	.globl sub_403e87
	.type sub_403e87, @function
sub_403e87:

	nop	word ptr [rax + rax]
.label_227:
	inc	r14
	mov	r15b, byte ptr [r10 + r12 + 1]
	mov	r12, rdx
.label_220:
	cmp	byte ptr [rsp + 0x40], 0
	je	.label_225
	test	sil, 1
	je	.label_238
	cmp	r14, rbp
	jae	.label_232
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x5c
.label_232:
	inc	r14
	xor	esi, esi
	jmp	.label_238
	.section	.text
	.align	32
	#Procedure 0x403ec5
	.globl sub_403ec5
	.type sub_403ec5, @function
sub_403ec5:

	nop	word ptr cs:[rax + rax]
.label_225:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_188
	cmp	r8d, 2
	jne	.label_212
	mov	eax, r9d
	and	al, 1
	jne	.label_212
	cmp	r14, rbp
	jae	.label_248
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_248:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_265
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x24
.label_265:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_260
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x27
.label_260:
	add	r14, 3
	mov	r9b, 1
.label_212:
	cmp	r14, rbp
	jae	.label_266
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_266:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_271
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_271:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_278
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_278:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_238:
	lea	rdx, [r12 + 1]
	cmp	rbx, rdx
	jbe	.label_240
	test	r9b, 1
	je	.label_287
	mov	rcx, rbx
	mov	ebx, eax
	and	bl, 1
	jne	.label_277
	mov	r8, r12
	mov	r12d, esi
	cmp	r14, rbp
	jae	.label_290
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], 0x27
.label_290:
	lea	rsi, [r14 + 1]
	cmp	rsi, rbp
	jae	.label_298
	mov	rbx, qword ptr [rsp + 0x10]
	mov	byte ptr [rbx + rsi], 0x27
.label_298:
	add	r14, 2
	xor	r9d, r9d
	mov	esi, r12d
	mov	rbx, rcx
	mov	r12, r8
	mov	r8, qword ptr [rsp + 0x38]
	jmp	.label_287
	.section	.text
	.align	32
	#Procedure 0x403fd6
	.globl sub_403fd6
	.type sub_403fd6, @function
sub_403fd6:

	nop	word ptr cs:[rax + rax]
.label_277:
	mov	rbx, rcx
.label_287:
	cmp	r14, rbp
	jae	.label_227
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], r15b
	mov	esi, ecx
	jmp	.label_227
	.section	.text
	.align	32
	#Procedure 0x403ffe
	.globl sub_403ffe
	.type sub_403ffe, @function
sub_403ffe:

	nop	
.label_240:
	test	r9b, 1
	je	.label_183
	and	al, 1
	jne	.label_183
	cmp	r14, rbp
	jae	.label_186
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_186:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_231
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_231:
	add	r14, 2
	xor	r9d, r9d
.label_183:
	mov	ebx, r15d
.label_281:
	cmp	r14, rbp
	jae	.label_201
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], bl
.label_201:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, dil
	mov	edi, r13d
	jmp	.label_207
.label_241:
	xor	r13d, r13d
	jmp	.label_206
	.section	.text
	.align	32
	#Procedure 0x404061
	.globl sub_404061
	.type sub_404061, @function
sub_404061:

	nop	word ptr cs:[rax + rax]
.label_246:
	mov	rcx, r12
.label_293:
	cmp	r8d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_218
	or	al, dl
	jne	.label_218
	mov	r11, rcx
	jmp	.label_188
.label_199:
	mov	eax, 2
.label_239:
	mov	qword ptr [rsp + 0x38], rax
.label_188:
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
.label_261:
	mov	r14, rax
.label_288:
	mov	rax, r14
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_213:
	mov	rdx, qword ptr [rsp + 0x58]
	test	rdx, rdx
	je	.label_202
	cmp	byte ptr [rsp + 0xf], 0
	mov	rcx, qword ptr [rsp + 0x10]
	jne	.label_210
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_210
	inc	rdx
	nop	dword ptr [rax + rax]
.label_272:
	cmp	r14, rbp
	jae	.label_270
	mov	byte ptr [rcx + r14], al
.label_270:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_272
	jmp	.label_210
.label_215:
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
	jmp	.label_261
.label_202:
	mov	rcx, qword ptr [rsp + 0x10]
.label_210:
	cmp	r14, rbp
	jae	.label_288
	mov	byte ptr [rcx + r14], 0
	jmp	.label_288
.label_250:
	mov	eax, 5
	jmp	.label_239
.label_254:
	call	abort
.label_313:
	cmp	byte ptr [rbx], 0
	je	.label_312
	xor	edi, edi
	cmp	r14, rbx
	je	.label_317
	mov	esi, OFFSET FLAT:label_315
	jmp	.label_316
.label_317:
	mov	esi, OFFSET FLAT:label_314
.label_316:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, r14
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
.label_311:
	call	error
	mov	byte ptr [rip + exit_status],  1
.label_312:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4041fa
	.globl sub_4041fa
	.type sub_4041fa, @function
sub_4041fa:

	nop
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404203

	.globl verify_numeric
	.type verify_numeric, @function
verify_numeric:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rsi
	mov	r14, rdi
	call	__errno_location
	mov	ebp, dword ptr [rax]
	test	ebp, ebp
	je	.label_313
	mov	rdi, r14
	call	quote
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_310
	xor	eax, eax
	mov	esi, ebp
	jmp	.label_311
	.section	.text
	.align	32
	#Procedure 0x404230
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_318
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_320:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_320
.label_318:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_321
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_322], OFFSET FLAT:slot0
.label_321:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_319
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_319:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x4042c1
	.globl sub_4042c1
	.type sub_4042c1, @function
sub_4042c1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4042d0
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_29]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_30]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_31]
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
	#Procedure 0x40433e
	.globl sub_40433e
	.type sub_40433e, @function
sub_40433e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x404340
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
	#Procedure 0x404353
	.globl sub_404353
	.type sub_404353, @function
sub_404353:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404360

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
	je	.label_323
	cmp	r15, -2
	jb	.label_323
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_323
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_323:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x4043b6
	.globl sub_4043b6
	.type sub_4043b6, @function
sub_4043b6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4043c0
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
	#Procedure 0x4043d8
	.globl sub_4043d8
	.type sub_4043d8, @function
sub_4043d8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4043e0
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_29]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_30]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_31]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_324
	test	rsi, rsi
	je	.label_324
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
.label_324:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40444c
	.globl sub_40444c
	.type sub_40444c, @function
sub_40444c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404450
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_325:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_325
	jmp	version_etc_arn
	.section	.text
	.align	32
	#Procedure 0x404471
	.globl sub_404471
	.type sub_404471, @function
sub_404471:

	nop	word ptr cs:[rax + rax]
.label_330:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_326
	mov	eax, OFFSET FLAT:label_327
	jmp	.label_328
	.section	.text
	.align	32
	#Procedure 0x40448f
	.globl sub_40448f
	.type sub_40448f, @function
sub_40448f:

	nop	word ptr cs:[rax + rax]
.label_333:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_329
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_329
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_329
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_329
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_329
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_329
	cmp	byte ptr [rax + 7], 0
	je	.label_330
.label_329:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_236
	mov	eax, OFFSET FLAT:label_197
.label_328:
	cmove	rax, rcx
.label_334:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4044e2

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
	jne	.label_334
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_333
	cmp	ecx, 0x55
	jne	.label_329
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_329
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_329
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_329
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_329
	cmp	byte ptr [rax + 5], 0
	jne	.label_329
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_331
	mov	eax, OFFSET FLAT:label_332
	jmp	.label_328
	.section	.text
	.align	32
	#Procedure 0x404550

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_335
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_335:
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
	#Procedure 0x4045d3
	.globl sub_4045d3
	.type sub_4045d3, @function
sub_4045d3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4045e0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_336
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_310
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
.label_337:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x404615
	.globl sub_404615
	.type sub_404615, @function
sub_404615:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404619

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
	je	.label_338
	test	r15, r15
	je	.label_337
.label_338:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_341:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_339
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_339:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404684
	.globl sub_404684
	.type sub_404684, @function
sub_404684:

	nop	
	.section	.text
	.align	32
	#Procedure 0x404686

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
	jne	.label_340
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_340
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_341
.label_340:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
	.section	.text
	.align	32
	#Procedure 0x4046c0

	.globl fwrite_success_callback
	.type fwrite_success_callback, @function
fwrite_success_callback:
	push	rax
	mov	rax, rdx
	mov	rcx, rsi
	mov	esi, 1
	mov	rdx, rcx
	mov	rcx, rax
	call	fwrite
	xor	eax, eax
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4046db
	.globl sub_4046db
	.type sub_4046db, @function
sub_4046db:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4046e0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_342
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_345
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_346
	call	free
	xor	eax, eax
	jmp	.label_344
.label_345:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x404717
	.globl sub_404717
	.type sub_404717, @function
sub_404717:

	nop	word ptr cs:[rax + rax]
.label_343:
	call	xalloc_die
.label_342:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_343
	mov	qword ptr [rsi], rbx
.label_346:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_344
	test	rax, rax
	je	.label_343
.label_344:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x404750

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x178
	mov	r14, rsi
	mov	r15d, edi
	mov	rdi, qword ptr [r14]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_59
	call	setlocale
	mov	edi, OFFSET FLAT:label_415
	mov	esi, OFFSET FLAT:label_416
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_415
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	byte ptr [rip + exit_status],  0
	mov	edi, OFFSET FLAT:label_420
	call	getenv
	test	rax, rax
	setne	byte ptr [rip + posixly_correct]
	cmp	r15d, 2
	jne	.label_426
	mov	rbp, qword ptr [r14 + 8]
	mov	esi, OFFSET FLAT:label_430
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	je	.label_394
	mov	esi, OFFSET FLAT:label_435
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	je	.label_412
	lea	rbx, [r14 + 8]
	jmp	.label_439
.label_426:
	jl	.label_427
	lea	rbx, [r14 + 8]
	mov	rbp, qword ptr [r14 + 8]
.label_439:
	cmp	byte ptr [rbp], 0x2d
	jne	.label_349
	cmp	byte ptr [rbp + 1], 0x2d
	jne	.label_349
	cmp	byte ptr [rbp + 2], 0
	je	.label_354
.label_349:
	mov	rbx, r14
.label_429:
	add	r15d, -2
	add	rbx, 0x10
	movabs	r14, 0x410150000001
	mov	qword ptr [rsp + 0x60], rbp
	nop	word ptr cs:[rax + rax]
.label_404:
	mov	qword ptr [rsp + 0x68], rbx
	mov	al, byte ptr [rbp]
	test	al, al
	mov	dword ptr [rsp + 0x48], r15d
	mov	ebx, r15d
	je	.label_365
	mov	dword ptr [rsp + 0x18], 0
	mov	ebx, dword ptr [rsp + 0x48]
	mov	r12, qword ptr [rsp + 0x68]
	mov	r15, qword ptr [rsp + 0x60]
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x28], rcx
	jmp	.label_367
.label_372:
	test	ebx, ebx
	jle	.label_364
	mov	rsi, qword ptr [r12]
	mov	edi, 3
	call	quotearg_style
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	add	r12, 8
	dec	ebx
	jmp	.label_364
.label_375:
	test	ebx, ebx
	jle	.label_364
	mov	r15d, ebx
	mov	rbx, qword ptr [r12]
	jmp	.label_384
	.section	.text
	.align	32
	#Procedure 0x4048bb
	.globl sub_4048bb
	.type sub_4048bb, @function
sub_4048bb:

	nop	dword ptr [rax + rax]
.label_390:
	mov	esi, 1
	mov	rdi, rbx
	call	print_esc
	cdqe	
	add	rax, rbx
	inc	rax
	mov	rbx, rax
.label_384:
	movzx	esi, byte ptr [rbx]
	cmp	esi, 0x5c
	je	.label_390
	test	sil, sil
	je	.label_381
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_392
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], sil
	inc	rbx
	jmp	.label_384
.label_392:
	call	__overflow
	inc	rbx
	jmp	.label_384
.label_376:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x160], xmm0
	movaps	xmmword ptr [rsp + 0x150], xmm0
	movaps	xmmword ptr [rsp + 0x140], xmm0
	movaps	xmmword ptr [rsp + 0x130], xmm0
	movaps	xmmword ptr [rsp + 0x120], xmm0
	movaps	xmmword ptr [rsp + 0x110], xmm0
	movaps	xmmword ptr [rsp + 0x100], xmm0
	movaps	xmmword ptr [rsp + 0xf0], xmm0
	movaps	xmmword ptr [rsp + 0xe0], xmm0
	movaps	xmmword ptr [rsp + 0xd0], xmm0
	movaps	xmmword ptr [rsp + 0xc0], xmm0
	movaps	xmmword ptr [rsp + 0xb0], xmm0
	movaps	xmmword ptr [rsp + 0xa0], xmm0
	movaps	xmmword ptr [rsp + 0x90], xmm0
	movaps	xmmword ptr [rsp + 0x80], xmm0
	movaps	xmmword ptr [rsp + 0x70], xmm0
	mov	byte ptr [rsp + 0xc8], 1
	mov	byte ptr [rsp + 0xe8], 1
	mov	byte ptr [rsp + 0xe5], 1
	mov	byte ptr [rsp + 0xe3], 1
	mov	byte ptr [rsp + 0xdf], 1
	mov	byte ptr [rsp + 0xd9], 1
	mov	byte ptr [rsp + 0xb7], 1
	mov	byte ptr [rsp + 0xb6], 1
	mov	byte ptr [rsp + 0xb5], 1
	mov	byte ptr [rsp + 0xb1], 1
	mov	byte ptr [rsp + 0xd1], 1
	lea	rax, [rsp + 0xd3]
	mov	byte ptr [rax + 4], 1
	mov	dword ptr [rax], 0x1010101
	xor	eax, eax
	mov	r13d, 1
	jmp	.label_401
	.section	.text
	.align	32
	#Procedure 0x404a08
	.globl sub_404a08
	.type sub_404a08, @function
sub_404a08:

	nop	dword ptr [rax + rax]
.label_362:
	inc	r13
	inc	rax
.label_401:
	movsx	ecx, byte ptr [r15 + r13]
	lea	edx, [rcx - 0x20]
	cmp	edx, 0x29
	ja	.label_356
	jmp	qword ptr [(rdx * 8) + label_360]
.label_496:
	mov	byte ptr [rsp + 0xc8], 0
	mov	byte ptr [rsp + 0xe8], 0
	mov	byte ptr [rsp + 0xe3], 0
	mov	byte ptr [rsp + 0xdf], 0
	mov	byte ptr [rsp + 0xb5], 0
	mov	byte ptr [rsp + 0xd5], 0
	mov	byte ptr [rsp + 0xd3], 0
	mov	byte ptr [rsp + 0xb1], 0
	mov	byte ptr [rsp + 0xd1], 0
	jmp	.label_362
.label_495:
	mov	byte ptr [rsp + 0xe5], 0
	mov	byte ptr [rsp + 0xe3], 0
	mov	byte ptr [rsp + 0xd9], 0
	mov	word ptr [rsp + 0xd3], 0
	jmp	.label_362
.label_497:
	mov	byte ptr [rsp + 0xe3], 0
	mov	byte ptr [rsp + 0xd3], 0
	jmp	.label_362
.label_356:
	cmp	cl, 0x2a
	jne	.label_385
	lea	rbp, [r15 + r13 + 1]
	inc	r13
	mov	al, 1
	mov	dword ptr [rsp + 0x1c], eax
	test	ebx, ebx
	jle	.label_386
	mov	rdi, qword ptr [r12]
	call	vstrtoimax
	mov	rcx, rax
	mov	qword ptr [rsp + 0x28], rcx
	sub	rax, -0x80000000
	shr	rax, 0x20
	jne	.label_388
	add	r12, 8
	dec	ebx
	jmp	.label_393
.label_381:
	add	r12, 8
	mov	ebx, r15d
	dec	ebx
	jmp	.label_364
.label_385:
	add	ecx, -0x30
	cmp	ecx, 9
	ja	.label_352
	nop	word ptr [rax + rax]
.label_399:
	movsx	ecx, byte ptr [r15 + rax + 2]
	add	ecx, -0x30
	inc	rax
	cmp	ecx, 0xa
	jb	.label_399
	lea	rbp, [r15 + rax + 1]
	inc	rax
	mov	dword ptr [rsp + 0x1c], 0
	mov	r13, rax
	jmp	.label_393
.label_352:
	lea	rbp, [r15 + r13]
	mov	dword ptr [rsp + 0x1c], 0
	jmp	.label_393
.label_386:
	xor	eax, eax
	mov	qword ptr [rsp + 0x28], rax
.label_393:
	cmp	byte ptr [rbp], 0x2e
	jne	.label_408
	mov	byte ptr [rsp + 0xd3], 0
	movsx	eax, byte ptr [rbp + 1]
	cmp	eax, 0x2a
	jne	.label_409
	add	rbp, 2
	add	r13, 2
	mov	al, 1
	mov	dword ptr [rsp + 0x14], eax
	test	ebx, ebx
	jle	.label_410
	mov	rdi, qword ptr [r12]
	call	vstrtoimax
	mov	dword ptr [rsp + 0x18], 0xffffffff
	test	rax, rax
	js	.label_414
	mov	ecx, 0x80000000
	cmp	rax, rcx
	jge	.label_418
	mov	dword ptr [rsp + 0x18], eax
.label_414:
	add	r12, 8
	mov	qword ptr [rsp + 0x30], r12
	dec	ebx
	jmp	.label_419
.label_408:
	mov	qword ptr [rsp + 0x30], r12
	jmp	.label_421
.label_409:
	inc	r13
	add	eax, -0x30
	cmp	eax, 9
	mov	qword ptr [rsp + 0x30], r12
	ja	.label_424
	inc	rbp
	nop	word ptr cs:[rax + rax]
.label_433:
	inc	r13
	movsx	eax, byte ptr [rbp + 1]
	inc	rbp
	add	eax, -0x30
	cmp	eax, 0xa
	jb	.label_433
	jmp	.label_421
.label_424:
	inc	rbp
.label_421:
	mov	dword ptr [rsp + 0x14], 0
	jmp	.label_419
.label_410:
	mov	dword ptr [rsp + 0x18], 0
	mov	qword ptr [rsp + 0x30], r12
	jmp	.label_419
.label_380:
	inc	rbp
.label_419:
	movzx	r12d, byte ptr [rbp]
	movzx	eax, r12b
	mov	ecx, r12d
	add	cl, 0xb4
	movzx	ecx, cl
	cmp	cl, 0x2e
	ja	.label_348
	bt	r14, rcx
	jb	.label_380
.label_348:
	cmp	byte ptr [rsp + rax + 0x70], 0
	je	.label_358
	movsx	r14d, r12b
	test	ebx, ebx
	jle	.label_361
	dec	ebx
	mov	dword ptr [rsp + 0x4c], ebx
	mov	rax, qword ptr [rsp + 0x30]
	mov	rcx, qword ptr [rax]
	add	rax, 8
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_363
.label_361:
	mov	dword ptr [rsp + 0x4c], ebx
	mov	ecx, OFFSET FLAT:label_59
.label_363:
	mov	qword ptr [rsp + 0x20], rcx
	add	r14d, -0x41
	cmp	r14d, 0x37
	ja	.label_374
	movabs	rax, 0x7100000071
	bt	rax, r14
	jae	.label_368
	mov	ebx, 1
	mov	eax, OFFSET FLAT:label_370
	jmp	.label_371
.label_368:
	movabs	rax, 0x90410800800000
	bt	rax, r14
	mov	ebx, 1
	mov	eax, OFFSET FLAT:label_373
	jae	.label_374
.label_371:
	mov	qword ptr [rsp + 0x38], rax
	lea	rdi, [r13 + rbx + 2]
	call	xmalloc
	mov	rcx, -1
	mov	rdi, rax
	mov	rsi, r15
	mov	rdx, r13
	mov	r13, rax
	call	__mempcpy_chk
	mov	rcx, -1
	mov	rdi, rax
	mov	rsi, qword ptr [rsp + 0x38]
	mov	rdx, rbx
	call	__mempcpy_chk
	mov	byte ptr [rax], r12b
	mov	byte ptr [rax + 1], 0
	cmp	r14d, 0x37
	mov	r12, qword ptr [rsp + 0x30]
	mov	ebx, dword ptr [rsp + 0x4c]
	ja	.label_350
	jmp	qword ptr [(r14 * 8) + label_396]
.label_502:
	mov	rcx, qword ptr [rsp + 0x20]
	mov	al, byte ptr [rcx]
	cmp	al, 0x27
	je	.label_383
	cmp	al, 0x22
	jne	.label_398
.label_383:
	mov	al, byte ptr [rcx + 1]
	test	al, al
	je	.label_398
	mov	r14d, ebx
	movzx	eax, al
	mov	dword ptr [rsp + 0x5c], eax
	fild	dword ptr [rsp + 0x5c]
	fstp	xword ptr [rsp + 0x38]
	cmp	byte ptr [rcx + 2], 0
	je	.label_403
	mov	al, byte ptr [rip + posixly_correct]
	test	al, al
	mov	ebx, dword ptr [rsp + 0x1c]
	mov	r15d, dword ptr [rsp + 0x14]
	jne	.label_353
	add	rcx, 2
	mov	qword ptr [rsp + 0x20], rcx
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_64
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, qword ptr [rsp + 0x20]
	call	error
	jmp	.label_353
.label_398:
	mov	r14d, ebx
	mov	rbx, rcx
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rdi, rbx
	lea	rsi, [rsp + 0x50]
	call	cl_strtold
	fstp	xword ptr [rsp + 0x38]
	mov	rsi, qword ptr [rsp + 0x50]
	mov	rdi, rbx
	call	verify_numeric
.label_403:
	mov	ebx, dword ptr [rsp + 0x1c]
	mov	r15d, dword ptr [rsp + 0x14]
.label_353:
	test	bl, bl
	je	.label_422
	test	r15b, r15b
	mov	ebx, r14d
	je	.label_425
	fld	xword ptr [rsp + 0x38]
	fstp	xword ptr [rsp]
	xor	eax, eax
	mov	rdi, r13
	mov	rsi, qword ptr [rsp + 0x28]
	mov	edx, dword ptr [rsp + 0x18]
	call	xprintf
	jmp	.label_350
.label_422:
	test	r15b, r15b
	mov	ebx, r14d
	je	.label_436
	fld	xword ptr [rsp + 0x38]
	fstp	xword ptr [rsp]
	xor	eax, eax
	mov	rdi, r13
	mov	esi, dword ptr [rsp + 0x18]
	call	xprintf
	jmp	.label_350
.label_503:
	mov	rcx, qword ptr [rsp + 0x20]
	mov	al, byte ptr [rcx]
	cmp	al, 0x27
	je	.label_347
	cmp	al, 0x22
	jne	.label_355
.label_347:
	movzx	r15d, byte ptr [rcx + 1]
	test	r15, r15
	je	.label_355
	cmp	byte ptr [rcx + 2], 0
	je	.label_357
	mov	al, byte ptr [rip + posixly_correct]
	test	al, al
	mov	r14d, dword ptr [rsp + 0x1c]
	jne	.label_359
	add	rcx, 2
	mov	qword ptr [rsp + 0x20], rcx
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_64
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, qword ptr [rsp + 0x20]
	call	error
	jmp	.label_359
.label_355:
	mov	r14, rcx
	call	__errno_location
	mov	dword ptr [rax], 0
	xor	edx, edx
	xor	ecx, ecx
	mov	rdi, r14
	lea	rsi, [rsp + 0x50]
	call	__strtoul_internal
	mov	r15, rax
	mov	rsi, qword ptr [rsp + 0x50]
	mov	rdi, r14
	call	verify_numeric
.label_357:
	mov	r14d, dword ptr [rsp + 0x1c]
.label_359:
	test	r14b, r14b
	je	.label_377
	mov	eax, dword ptr [rsp + 0x14]
	test	al, al
	je	.label_379
	xor	eax, eax
	mov	rdi, r13
	mov	rsi, qword ptr [rsp + 0x28]
	mov	edx, dword ptr [rsp + 0x18]
	mov	rcx, r15
	jmp	.label_382
.label_505:
	mov	rdi, qword ptr [rsp + 0x20]
	call	vstrtoimax
	mov	rcx, rax
	mov	eax, dword ptr [rsp + 0x1c]
	test	al, al
	je	.label_387
	mov	eax, dword ptr [rsp + 0x14]
	test	al, al
	je	.label_389
	xor	eax, eax
	mov	rdi, r13
	mov	rsi, qword ptr [rsp + 0x28]
	mov	edx, dword ptr [rsp + 0x18]
	jmp	.label_382
.label_377:
	mov	eax, dword ptr [rsp + 0x14]
	test	al, al
	je	.label_395
	xor	eax, eax
	mov	rdi, r13
	mov	esi, dword ptr [rsp + 0x18]
	jmp	.label_397
.label_425:
	fld	xword ptr [rsp + 0x38]
	fstp	xword ptr [rsp]
	xor	eax, eax
	mov	rdi, r13
	mov	rsi, qword ptr [rsp + 0x28]
	call	xprintf
	jmp	.label_350
.label_436:
	fld	xword ptr [rsp + 0x38]
	fstp	xword ptr [rsp]
	xor	eax, eax
	mov	rdi, r13
	call	xprintf
	jmp	.label_350
.label_374:
	xor	ebx, ebx
	mov	rax, r15
	jmp	.label_371
.label_504:
	mov	rax, qword ptr [rsp + 0x20]
	movsx	ecx, byte ptr [rax]
	mov	eax, dword ptr [rsp + 0x1c]
	test	al, al
	je	.label_407
	xor	eax, eax
	mov	rdi, r13
	mov	rsi, qword ptr [rsp + 0x28]
	mov	edx, ecx
	call	xprintf
	jmp	.label_350
.label_506:
	mov	eax, dword ptr [rsp + 0x1c]
	test	al, al
	je	.label_411
	mov	eax, dword ptr [rsp + 0x14]
	test	al, al
	je	.label_413
	xor	eax, eax
	mov	rdi, r13
	mov	rsi, qword ptr [rsp + 0x28]
	mov	edx, dword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rsp + 0x20]
.label_382:
	call	xprintf
	jmp	.label_350
.label_387:
	mov	eax, dword ptr [rsp + 0x14]
	test	al, al
	je	.label_432
	xor	eax, eax
	mov	rdi, r13
	mov	esi, dword ptr [rsp + 0x18]
	jmp	.label_442
.label_379:
	xor	eax, eax
	mov	rdi, r13
	mov	rsi, qword ptr [rsp + 0x28]
.label_397:
	mov	rdx, r15
	call	xprintf
	jmp	.label_350
.label_395:
	xor	eax, eax
	mov	rdi, r13
	mov	rsi, r15
	jmp	.label_351
.label_407:
	xor	eax, eax
	mov	rdi, r13
	mov	esi, ecx
	call	xprintf
	jmp	.label_350
.label_411:
	mov	eax, dword ptr [rsp + 0x14]
	test	al, al
	je	.label_437
	xor	eax, eax
	mov	rdi, r13
	mov	esi, dword ptr [rsp + 0x18]
	jmp	.label_428
.label_389:
	xor	eax, eax
	mov	rdi, r13
	mov	rsi, qword ptr [rsp + 0x28]
.label_442:
	mov	rdx, rcx
	call	xprintf
	jmp	.label_350
.label_432:
	xor	eax, eax
	mov	rdi, r13
	mov	rsi, rcx
	jmp	.label_351
.label_413:
	xor	eax, eax
	mov	rdi, r13
	mov	rsi, qword ptr [rsp + 0x28]
.label_428:
	mov	rdx, qword ptr [rsp + 0x20]
	call	xprintf
	jmp	.label_350
.label_437:
	xor	eax, eax
	mov	rdi, r13
	mov	rsi, qword ptr [rsp + 0x20]
.label_351:
	call	xprintf
.label_350:
	mov	rdi, r13
	call	free
	movabs	r14, 0x410150000001
	jmp	.label_364
.label_391:
	movzx	esi, al
	call	__overflow
	jmp	.label_366
.label_423:
	mov	esi, 0x25
	call	__overflow
	jmp	.label_364
	nop	dword ptr [rax]
.label_367:
	movsx	ecx, al
	cmp	ecx, 0x5c
	je	.label_369
	cmp	ecx, 0x25
	jne	.label_378
	lea	rbp, [r15 + 1]
	mov	al, byte ptr [r15 + 1]
	cmp	al, 0x71
	je	.label_372
	cmp	al, 0x62
	je	.label_375
	cmp	al, 0x25
	jne	.label_376
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_423
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x25
	jmp	.label_364
	nop	dword ptr [rax + rax]
.label_369:
	xor	esi, esi
	mov	rdi, r15
	call	print_esc
	movsxd	rbp, eax
	add	rbp, r15
	jmp	.label_364
	nop	word ptr cs:[rax + rax]
.label_378:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rdi + 0x28]
	cmp	rcx, qword ptr [rdi + 0x30]
	jae	.label_391
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], al
.label_366:
	mov	rbp, r15
.label_364:
	mov	al, byte ptr [rbp + 1]
	inc	rbp
	test	al, al
	mov	r15, rbp
	jne	.label_367
.label_365:
	mov	ecx, dword ptr [rsp + 0x48]
	sub	ecx, ebx
	movsxd	rax, ecx
	mov	edx, ebx
	mov	rbx, qword ptr [rsp + 0x68]
	lea	rbx, [rbx + rax*8]
	test	edx, edx
	mov	rbp, qword ptr [rsp + 0x60]
	jle	.label_400
	test	ecx, ecx
	mov	r15d, edx
	jg	.label_404
.label_400:
	test	edx, edx
	jle	.label_405
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_406
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, qword ptr [rbx]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
.label_405:
	movzx	ebx, byte ptr [rip + exit_status]
.label_434:
	mov	eax, ebx
	add	rsp, 0x178
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_412:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	xor	ebx, ebx
	mov	esi, OFFSET FLAT:label_69
	mov	edx, OFFSET FLAT:label_73
	mov	r8d, OFFSET FLAT:label_417
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	jmp	.label_434
.label_354:
	cmp	r15d, 3
	jl	.label_427
	dec	r15d
	mov	rbp, qword ptr [r14 + 0x10]
	jmp	.label_429
.label_358:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_431
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	inc	ebp
	sub	ebp, r15d
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	ecx, ebp
	mov	r8, r15
	call	error
.label_388:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_440
	jmp	.label_441
.label_418:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_438
.label_441:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [r12]
	call	quote
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_427:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_402
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	edi, 1
	call	usage
.label_394:
	xor	edi, edi
	call	usage
	.section	.text
	.align	32
	#Procedure 0x405261
	.globl sub_405261
	.type sub_405261, @function
sub_405261:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405270
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_29]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_30]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_31]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_443
	test	rdx, rdx
	je	.label_443
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_443:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4052da
	.globl sub_4052da
	.type sub_4052da, @function
sub_4052da:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4052e0

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
	je	.label_456
	mov	edx, OFFSET FLAT:label_447
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_453
.label_456:
	mov	edx, OFFSET FLAT:label_454
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_453:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_458
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
	mov	esi, OFFSET FLAT:label_455
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_459
	jmp	qword ptr [(r12 * 8) + label_460]
.label_513:
	add	rsp, 8
	jmp	.label_446
.label_459:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_450
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
	jmp	.label_446
.label_514:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_445
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
.label_515:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_451
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
.label_516:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_448
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
.label_517:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_462
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
	jmp	.label_446
.label_518:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_461
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
	jmp	.label_446
.label_519:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_444
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
	jmp	.label_446
.label_520:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_449
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
	jmp	.label_446
.label_522:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_452
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
	jmp	.label_446
.label_521:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_457
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
.label_446:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x405638
	.globl sub_405638
	.type sub_405638, @function
sub_405638:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405640

	.globl fallback_failure_callback
	.type fallback_failure_callback, @function
fallback_failure_callback:
	push	rax
	mov	r8, rdx
	mov	ecx, edi
	mov	esi, 1
	cmp	ecx, 0xffff
	ja	.label_463
	mov	edx, OFFSET FLAT:label_465
	jmp	.label_466
.label_463:
	mov	edx, OFFSET FLAT:label_464
.label_466:
	xor	eax, eax
	mov	rdi, r8
	call	__fprintf_chk
	mov	rax, -1
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x405672
	.globl sub_405672
	.type sub_405672, @function
sub_405672:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405680

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_467
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_467
	test	byte ptr [rbx + 1], 1
	je	.label_467
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_467:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	32
	#Procedure 0x4056b3
	.globl sub_4056b3
	.type sub_4056b3, @function
sub_4056b3:

	nop	word ptr cs:[rax + rax]
.label_468:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4056c5
	.globl sub_4056c5
	.type sub_4056c5, @function
sub_4056c5:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4056c9
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
	je	.label_468
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
	#Procedure 0x405730
	.globl xvfprintf
	.type xvfprintf, @function
xvfprintf:

	push	rbp
	push	r14
	push	rbx
	mov	rax, rdx
	mov	rcx, rsi
	mov	rbx, rdi
	mov	esi, 1
	mov	rdx, rcx
	mov	rcx, rax
	call	__vfprintf_chk
	mov	ebp, eax
	test	ebp, ebp
	jns	.label_469
	mov	rdi, rbx
	call	ferror
	test	eax, eax
	jne	.label_469
	mov	r14d, dword ptr [rip + exit_failure]
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_53
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	edi, r14d
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_469:
	mov	eax, ebp
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405797
	.globl sub_405797
	.type sub_405797, @function
sub_405797:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4057a0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_471
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_470
	cmp	dword ptr [rbp], 0x20
	jne	.label_470
.label_471:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_474
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_474:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_472:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_473
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
.label_470:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_475
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_472
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_310
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	.section	.text
	.align	32
	#Procedure 0x405860

	.globl xprintf
	.type xprintf, @function
xprintf:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0xd0
	mov	rbx, rdi
	test	al, al
	je	.label_476
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_476:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x30], rdx
	mov	qword ptr [rsp + 0x28], rsi
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xf0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 8
	mov	rdi, qword ptr [rip + stdout]
	lea	rcx, [rsp]
	mov	esi, 1
	mov	rdx, rbx
	call	__vfprintf_chk
	mov	ebx, eax
	test	ebx, ebx
	jns	.label_477
	mov	rdi, qword ptr [rip + stdout]
	call	ferror
	test	eax, eax
	jne	.label_477
	mov	r14d, dword ptr [rip + exit_failure]
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_53
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	edi, r14d
	mov	esi, ebp
	mov	rdx, rcx
	call	error
.label_477:
	mov	eax, ebx
	add	rsp, 0xd0
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405955
	.globl sub_405955
	.type sub_405955, @function
sub_405955:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405960

	.globl u8_uctomb_aux
	.type u8_uctomb_aux, @function
u8_uctomb_aux:
	mov	eax, 0xfffffffe
	cmp	esi, 0x80
	jb	.label_478
	mov	r8d, 2
	cmp	esi, 0x800
	jb	.label_480
	cmp	esi, 0xffff
	ja	.label_483
	mov	ecx, esi
	and	ecx, 0xfffff800
	mov	r8d, 3
	mov	eax, 0xffffffff
	cmp	ecx, 0xd800
	jne	.label_480
	jmp	.label_478
.label_483:
	mov	eax, 0xffffffff
	mov	r8d, 4
	cmp	esi, 0x10ffff
	ja	.label_478
.label_480:
	cmp	r8d, edx
	mov	eax, 0xfffffffe
	jg	.label_478
	mov	eax, r8d
	and	al, 7
	cmp	al, 2
	je	.label_479
	cmp	al, 3
	je	.label_481
	cmp	al, 4
	jne	.label_482
	mov	eax, esi
	and	eax, 0x3f
	or	eax, 0x80
	mov	byte ptr [rdi + 3], al
	shr	esi, 6
	or	esi, 0x10000
.label_481:
	mov	eax, esi
	and	eax, 0x3f
	or	eax, 0x80
	mov	byte ptr [rdi + 2], al
	shr	esi, 6
	or	esi, 0x800
.label_479:
	mov	eax, esi
	and	eax, 0x3f
	or	eax, 0x80
	mov	byte ptr [rdi + 1], al
	shr	esi, 6
	or	esi, 0xc0
	mov	byte ptr [rdi], sil
.label_482:
	mov	eax, r8d
.label_478:
	ret	
	.section	.text
	.align	32
	#Procedure 0x405a1b
	.globl sub_405a1b
	.type sub_405a1b, @function
sub_405a1b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405a20

	.globl print_unicode_char
	.type print_unicode_char, @function
print_unicode_char:
	mov	eax, esi
	mov	rcx, rdi
	test	edx, edx
	mov	esi, OFFSET FLAT:exit_failure_callback
	mov	edx, OFFSET FLAT:fallback_failure_callback
	cmovne	rdx, rsi
	mov	esi, OFFSET FLAT:fwrite_success_callback
	mov	edi, eax
	jmp	unicode_to_mb
	.section	.text
	.align	32
	#Procedure 0x405a41
	.globl sub_405a41
	.type sub_405a41, @function
sub_405a41:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405a50
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
	#Procedure 0x405a69
	.globl sub_405a69
	.type sub_405a69, @function
sub_405a69:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405a70
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_484
	test	rdx, rdx
	je	.label_484
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_484:
	push	rax
	call	abort
	.section	.text
	.align	32
	#Procedure 0x405a9b
	.globl sub_405a9b
	.type sub_405a9b, @function
sub_405a9b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405b05
	.globl sub_405b05
	.type sub_405b05, @function
sub_405b05:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405b12
	.globl sub_405b12
	.type sub_405b12, @function
sub_405b12:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405b36
	.globl sub_405b36
	.type sub_405b36, @function
sub_405b36:

	nop	word ptr cs:[rax + rax]
