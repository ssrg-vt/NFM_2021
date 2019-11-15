	.section	.text
	.align	32
	#Procedure 0x401bc9
	.globl sub_401bc9
	.type sub_401bc9, @function
sub_401bc9:

	hlt	
	.section	.text
	.align	32
	#Procedure 0x401bca
	.globl sub_401bca
	.type sub_401bca, @function
sub_401bca:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401c02
	.globl sub_401c02
	.type sub_401c02, @function
sub_401c02:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401c4a
	.globl sub_401c4a
	.type sub_401c4a, @function
sub_401c4a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401c6c
	.globl sub_401c6c
	.type sub_401c6c, @function
sub_401c6c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401c7d
	.globl sub_401c7d
	.type sub_401c7d, @function
sub_401c7d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401c96
	.globl sub_401c96
	.type sub_401c96, @function
sub_401c96:

	nop	word ptr cs:[rax + rax]
.label_13:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_9
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	32
	#Procedure 0x401cc0
	.globl sub_401cc0
	.type sub_401cc0, @function
sub_401cc0:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401ccf

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_13
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_11
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_14
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_11
	mov	esi, OFFSET FLAT:label_12
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_10
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_10:
	mov	rbx, r14
.label_11:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_15:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401d55
	.globl sub_401d55
	.type sub_401d55, @function
sub_401d55:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401d59

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
	je	.label_16
	test	r15, r15
	je	.label_15
.label_16:
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
	#Procedure 0x401d90
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
	je	.label_17
	add	rbx, 8
	nop	word ptr cs:[rax + rax]
.label_18:
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	mov	rax, r13
	je	.label_17
	mov	r13, qword ptr [rbx]
	add	rbx, 8
	add	r15, r14
	test	r13, r13
	mov	eax, 0
	jne	.label_18
.label_17:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x401df3
	.globl sub_401df3
	.type sub_401df3, @function
sub_401df3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401e00

	.globl tzfree
	.type tzfree, @function
tzfree:
	push	rbx
	cmp	rdi, 2
	jb	.label_19
	nop	word ptr [rax + rax]
.label_20:
	mov	rbx, qword ptr [rdi]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_20
.label_19:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x401e22
	.globl sub_401e22
	.type sub_401e22, @function
sub_401e22:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401e30
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
	je	.label_21
	mov	qword ptr [rax], rbx
.label_21:
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
	#Procedure 0x401f1c
	.globl sub_401f1c
	.type sub_401f1c, @function
sub_401f1c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401f20
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x401f2e
	.globl sub_401f2e
	.type sub_401f2e, @function
sub_401f2e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x401f30

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
	js	.label_25
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_28
	cmp	r12d, 0x7fffffff
	je	.label_23
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
	jne	.label_26
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_26:
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
.label_28:
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
	jbe	.label_24
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_27
.label_24:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_22
	mov	rdi, r14
	call	free
.label_22:
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
.label_27:
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
.label_25:
	call	abort
.label_23:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4020ed
	.globl sub_4020ed
	.type sub_4020ed, @function
sub_4020ed:

	nop	dword ptr [rax]
.label_30:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_29
	call	__errno_location
	mov	dword ptr [rax], 0
.label_29:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40210b

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
	jne	.label_30
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_29
	test	cl, cl
	jne	.label_29
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_29
	.section	.text
	.align	32
	#Procedure 0x402150
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_31
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_34:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_34
.label_31:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_35
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_33], OFFSET FLAT:slot0
.label_35:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_32
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_32:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x4021e1
	.globl sub_4021e1
	.type sub_4021e1, @function
sub_4021e1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4021f0

	.globl mktime_z
	.type mktime_z, @function
mktime_z:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	rbp, rsi
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_57
	mov	edi, OFFSET FLAT:label_39
	call	getenv
	mov	r13, rax
	test	r13, r13
	mov	r12b, byte ptr [rbx + 8]
	mov	qword ptr [rsp + 8], rbp
	je	.label_40
	test	r12b, r12b
	je	.label_43
	lea	rdi, [rbx + 9]
	mov	rsi, r13
	call	strcmp
	mov	r15d, 1
	test	eax, eax
	je	.label_46
.label_43:
	mov	rdi, r13
	call	strlen
	mov	rbp, rax
	inc	rbp
	mov	r14b, 1
	jmp	.label_49
.label_57:
	mov	rdi, rbp
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	timegm
.label_40:
	xor	r14d, r14d
	mov	r15d, 1
	test	r12b, r12b
	mov	ebp, 0
	je	.label_46
.label_49:
	lea	rax, [rbp + 0x11]
	and	rax, 0xfffffffffffffff8
	cmp	rbp, 0x77
	mov	edi, 0x80
	cmovae	rdi, rax
	call	malloc
	mov	r15, rax
	mov	rax, -1
	test	r15, r15
	je	.label_42
	mov	qword ptr [r15], 0
	mov	byte ptr [r15 + 8], r14b
	mov	byte ptr [r15 + 9], 0
	test	r14b, r14b
	je	.label_45
	lea	r14, [r15 + 9]
	mov	rdi, r14
	mov	rsi, r13
	mov	rdx, rbp
	call	memcpy
	mov	byte ptr [r14 + rbp], 0
.label_45:
	test	r12b, r12b
	je	.label_54
	lea	rsi, [rbx + 9]
	mov	edi, OFFSET FLAT:label_39
	mov	edx, 1
	call	setenv
	jmp	.label_58
.label_54:
	mov	edi, OFFSET FLAT:label_39
	call	unsetenv
.label_58:
	test	eax, eax
	je	.label_36
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	cmp	r15, 2
	jb	.label_47
	nop	word ptr cs:[rax + rax]
.label_44:
	mov	rbx, qword ptr [r15]
	mov	rdi, r15
	call	free
	test	rbx, rbx
	mov	r15, rbx
	jne	.label_44
.label_47:
	mov	dword ptr [rbp], r14d
	jmp	.label_37
.label_36:
	call	tzset
.label_46:
	mov	rbp, qword ptr [rsp + 8]
	mov	rdi, rbp
	call	mktime
	mov	qword ptr [rsp], rax
	cmp	rax, -1
	jne	.label_51
	lea	rdi, [rsp]
	lea	rsi, [rsp + 0x10]
	call	localtime_r
	test	rax, rax
	je	.label_50
	mov	rax, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsp + 0x18]
	xor	rax, qword ptr [rbp]
	xor	rcx, qword ptr [rbp + 8]
	mov	edx, ecx
	or	edx, eax
	shr	rax, 0x20
	or	edx, eax
	shr	rcx, 0x20
	mov	rax, qword ptr [rsp + 0x20]
	xor	rax, qword ptr [rbp + 0x10]
	mov	esi, eax
	or	esi, ecx
	or	esi, edx
	shr	rax, 0x20
	or	eax, esi
	mov	edi, dword ptr [rbp + 0x20]
	mov	edx, dword ptr [rsp + 0x30]
	test	edi, edi
	sete	sil
	test	edx, edx
	sete	cl
	xor	cl, sil
	or	edx, edi
	setns	dl
	and	dl, cl
	movzx	ecx, dl
	or	ecx, eax
	jne	.label_50
.label_51:
	mov	rdi, rbx
	mov	rsi, rbp
	call	save_abbr
	test	al, al
	jne	.label_50
	mov	qword ptr [rsp], -1
.label_50:
	cmp	r15, 1
	je	.label_53
	call	__errno_location
	mov	r14, rax
	mov	r12d, dword ptr [r14]
	cmp	byte ptr [r15 + 8], 0
	je	.label_55
	lea	rsi, [r15 + 9]
	mov	edi, OFFSET FLAT:label_39
	mov	edx, 1
	call	setenv
	jmp	.label_38
.label_55:
	mov	edi, OFFSET FLAT:label_39
	call	unsetenv
.label_38:
	test	eax, eax
	je	.label_56
	mov	r12d, dword ptr [r14]
	xor	ebp, ebp
	jmp	.label_41
.label_56:
	call	tzset
	mov	bpl, 1
.label_41:
	cmp	r15, 2
	jb	.label_52
	nop	word ptr [rax + rax]
.label_48:
	mov	rbx, qword ptr [r15]
	mov	rdi, r15
	call	free
	test	rbx, rbx
	mov	r15, rbx
	jne	.label_48
.label_52:
	mov	dword ptr [r14], r12d
	test	bpl, bpl
	je	.label_37
.label_53:
	mov	rax, qword ptr [rsp]
	jmp	.label_42
.label_37:
	mov	rax, -1
.label_42:
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402467
	.globl sub_402467
	.type sub_402467, @function
sub_402467:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402470
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x40247a
	.globl sub_40247a
	.type sub_40247a, @function
sub_40247a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402480
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
	#Procedure 0x4024b6
	.globl sub_4024b6
	.type sub_4024b6, @function
sub_4024b6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4024c0

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
	je	.label_59
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
.label_59:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40252c
	.globl sub_40252c
	.type sub_40252c, @function
sub_40252c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402530
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_60]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_61]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_62]
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
	#Procedure 0x40259f
	.globl sub_40259f
	.type sub_40259f, @function
sub_40259f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4025a0

	.globl debug_print_relative_time
	.type debug_print_relative_time, @function
debug_print_relative_time:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	cmp	byte ptr [r14 + 0xd9], 0
	je	.label_76
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_84
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	mov	rsi, rbx
	call	dbg_printf
	mov	rcx, qword ptr [r14 + 0x68]
	test	rcx, rcx
	je	.label_69
	mov	rdi, qword ptr [rip + stderr]
	xor	ebx, ebx
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_74
	mov	r8d, OFFSET FLAT:label_75
	xor	eax, eax
	call	__fprintf_chk
	mov	rcx, qword ptr [r14 + 0x70]
	mov	al, 1
	test	rcx, rcx
	jne	.label_88
	jmp	.label_65
.label_76:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_69:
	mov	rcx, qword ptr [r14 + 0x70]
	mov	ebx, 1
	test	rcx, rcx
	je	.label_68
.label_88:
	mov	rdi, qword ptr [rip + stderr]
	lea	rdx, qword ptr [rbx + label_66]
	mov	esi, 1
	mov	r8d, OFFSET FLAT:label_79
	xor	eax, eax
	call	__fprintf_chk
	mov	al, 1
.label_65:
	mov	rcx, qword ptr [r14 + 0x78]
	test	rcx, rcx
	je	.label_64
	mov	rdi, qword ptr [rip + stderr]
	movzx	eax, al
	xor	rax, 1
	lea	rdx, qword ptr [rax + label_66]
	mov	esi, 1
	mov	r8d, OFFSET FLAT:label_67
	xor	eax, eax
	call	__fprintf_chk
	mov	al, 1
.label_64:
	mov	rcx, qword ptr [r14 + 0x80]
	test	rcx, rcx
	je	.label_86
	mov	rdi, qword ptr [rip + stderr]
	movzx	eax, al
	xor	rax, 1
	lea	rdx, qword ptr [rax + label_66]
	mov	esi, 1
	mov	r8d, OFFSET FLAT:label_73
	xor	eax, eax
	call	__fprintf_chk
	mov	al, 1
.label_86:
	mov	rcx, qword ptr [r14 + 0x88]
	test	rcx, rcx
	je	.label_80
	mov	rdi, qword ptr [rip + stderr]
	movzx	eax, al
	xor	rax, 1
	lea	rdx, qword ptr [rax + label_66]
	mov	esi, 1
	mov	r8d, OFFSET FLAT:label_87
	xor	eax, eax
	call	__fprintf_chk
	mov	al, 1
.label_80:
	mov	rcx, qword ptr [r14 + 0x90]
	test	rcx, rcx
	je	.label_70
	mov	rdi, qword ptr [rip + stderr]
	movzx	eax, al
	xor	rax, 1
	lea	rdx, qword ptr [rax + label_66]
	mov	esi, 1
	mov	r8d, OFFSET FLAT:label_81
	xor	eax, eax
	call	__fprintf_chk
	mov	al, 1
.label_70:
	movsxd	rcx, dword ptr [r14 + 0x98]
	test	rcx, rcx
	je	.label_71
	mov	rdi, qword ptr [rip + stderr]
	movzx	eax, al
	xor	rax, 1
	lea	rdx, qword ptr [rax + label_66]
	mov	esi, 1
	mov	r8d, OFFSET FLAT:label_72
	xor	eax, eax
	call	__fprintf_chk
.label_71:
	mov	rsi, qword ptr [rip + stderr]
	mov	edi, 0xa
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	fputc
.label_68:
	cmp	qword ptr [r14 + 0x78], 0
	je	.label_77
	xor	eax, eax
	jmp	.label_65
.label_77:
	cmp	qword ptr [r14 + 0x80], 0
	je	.label_82
	xor	eax, eax
	jmp	.label_65
.label_82:
	cmp	qword ptr [r14 + 0x88], 0
	je	.label_63
	xor	eax, eax
	jmp	.label_65
.label_63:
	cmp	qword ptr [r14 + 0x90], 0
	je	.label_83
	xor	eax, eax
	jmp	.label_65
.label_83:
	cmp	dword ptr [r14 + 0x98], 0
	je	.label_78
	xor	eax, eax
	jmp	.label_65
.label_78:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_85
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stderr]
	mov	rdi, rax
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	fputs
	.section	.text
	.align	32
	#Procedure 0x4027dc
	.globl sub_4027dc
	.type sub_4027dc, @function
sub_4027dc:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4027e0

	.globl gettime
	.type gettime, @function
gettime:
	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	clock_gettime
	.section	.text
	.align	32
	#Procedure 0x4027ed
	.globl sub_4027ed
	.type sub_4027ed, @function
sub_4027ed:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4027f0
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
	#Procedure 0x402809
	.globl sub_402809
	.type sub_402809, @function
sub_402809:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402810
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x40281a
	.globl sub_40281a
	.type sub_40281a, @function
sub_40281a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402820
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
	#Procedure 0x40282f
	.globl sub_40282f
	.type sub_40282f, @function
sub_40282f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402830

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
	je	.label_104
	mov	edx, OFFSET FLAT:label_95
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_101
.label_104:
	mov	edx, OFFSET FLAT:label_102
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_101:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_107
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
	mov	esi, OFFSET FLAT:label_103
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_90
	jmp	qword ptr [(r12 * 8) + label_91]
.label_1412:
	add	rsp, 8
	jmp	.label_89
.label_90:
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
	jmp	.label_89
.label_1413:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_99
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
.label_1414:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_106
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
.label_1415:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_96
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
.label_1416:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_93
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
	jmp	.label_89
.label_1417:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_92
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
	jmp	.label_89
.label_1418:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_94
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
	jmp	.label_89
.label_1419:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_97
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
	jmp	.label_89
.label_1421:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_100
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
	jmp	.label_89
.label_1420:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_105
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
.label_89:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x402b88
	.globl sub_402b88
	.type sub_402b88, @function
sub_402b88:

	nop	dword ptr [rax + rax]
.label_109:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_108
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_108:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402bc4
	.globl sub_402bc4
	.type sub_402bc4, @function
sub_402bc4:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402bc6

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
	jne	.label_110
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_110
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_109
.label_110:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
	.section	.text
	.align	32
	#Procedure 0x402c00
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_60]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_61]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_62]
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
	#Procedure 0x402c6e
	.globl sub_402c6e
	.type sub_402c6e, @function
sub_402c6e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402c70

	.globl debug_print_current_time
	.type debug_print_current_time, @function
debug_print_current_time:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x70
	mov	r15, rsi
	mov	rbx, rdi
	cmp	byte ptr [r15 + 0xd9], 0
	jne	.label_137
.label_116:
	add	rsp, 0x70
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
.label_137:
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_84
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	mov	rsi, rbx
	call	dbg_printf
	cmp	qword ptr [r15 + 0xa8], 0
	je	.label_122
	cmp	byte ptr [r15 + 0xda], 0
	jne	.label_124
	mov	rdi, qword ptr [rip + stderr]
	mov	rcx, qword ptr [r15 + 0x28]
	mov	r8, qword ptr [r15 + 0x38]
	mov	r9, qword ptr [r15 + 0x40]
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_130
	xor	eax, eax
	call	__fprintf_chk
	mov	byte ptr [r15 + 0xda], 1
	mov	r12b, 1
	jmp	.label_122
.label_124:
	xor	r12d, r12d
.label_122:
	mov	rax, qword ptr [r15 + 0xd8]
	mov	rcx, rax
	shr	rcx, 0x38
	cmp	al, cl
	je	.label_113
	test	r12b, r12b
	je	.label_115
	mov	rsi, qword ptr [rip + stderr]
	mov	edi, 0x20
	call	fputc
.label_115:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_118
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15 + 0x28]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	rax, qword ptr [r15 + 0xd8]
	mov	byte ptr [r15 + 0xdf], al
	mov	r12b, 1
.label_113:
	cmp	qword ptr [r15 + 0xc8], 0
	je	.label_136
	shr	rax, 0x28
	test	al, al
	jne	.label_136
	mov	r9, qword ptr [r15 + 0x58]
	mov	rdi, qword ptr [rip + stderr]
	xor	r12b, 1
	movzx	eax, r12b
	lea	rdx, qword ptr [rax + label_135]
	mov	rcx, qword ptr [r15 + 0x48]
	mov	r8, qword ptr [r15 + 0x50]
	mov	esi, 1
	xor	eax, eax
	call	__fprintf_chk
	mov	rcx, qword ptr [r15 + 0x60]
	test	rcx, rcx
	je	.label_119
	mov	rdi, qword ptr [rip + stderr]
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_120
	xor	eax, eax
	call	__fprintf_chk
.label_119:
	cmp	dword ptr [r15 + 0x1c], 1
	jne	.label_139
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_132
	mov	esi, 2
	mov	edx, 1
	call	fwrite
.label_139:
	mov	byte ptr [r15 + 0xdd], 1
	mov	r12b, 1
.label_136:
	cmp	qword ptr [r15 + 0xb0], 0
	je	.label_111
	cmp	byte ptr [r15 + 0xdb], 0
	jne	.label_111
	test	r12b, r12b
	je	.label_114
	mov	rsi, qword ptr [rip + stderr]
	mov	edi, 0x20
	call	fputc
.label_114:
	mov	r14, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_117
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	lea	rsi, [rsp]
	mov	rdi, r15
	call	str_days
	mov	rcx, rax
	mov	r8, qword ptr [r15 + 8]
	mov	r9d, dword ptr [r15 + 0x10]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rdx, rbx
	call	__fprintf_chk
	mov	byte ptr [r15 + 0xdb], 1
	mov	r12b, 1
.label_111:
	cmp	qword ptr [r15 + 0xb8], 0
	je	.label_112
	cmp	byte ptr [r15 + 0xdc], 0
	jne	.label_112
	mov	rdi, qword ptr [rip + stderr]
	xor	r12b, 1
	movzx	eax, r12b
	lea	rdx, qword ptr [rax + label_127]
	cmp	qword ptr [r15 + 0xc0], 0
	mov	ecx, dword ptr [r15 + 0x14]
	mov	eax, OFFSET FLAT:label_128
	mov	r8d, OFFSET FLAT:label_129
	cmovne	r8, rax
	mov	esi, 1
	xor	eax, eax
	call	__fprintf_chk
	mov	byte ptr [r15 + 0xdc], 1
	mov	r12b, 1
.label_112:
	cmp	qword ptr [r15 + 0xd0], 0
	je	.label_131
	cmp	byte ptr [r15 + 0xde], 0
	jne	.label_131
	mov	r14, qword ptr [rip + stderr]
	xor	r12b, 1
	movsxd	r13, dword ptr [r15 + 0x18]
	mov	eax, r13d
	shr	eax, 0x1f
	imul	rbx, r13, -0x6e5d4c3b
	shr	rbx, 0x20
	add	ebx, r13d
	mov	ecx, ebx
	shr	ecx, 0x1f
	sar	ebx, 0xb
	add	ebx, ecx
	mov	r9d, ebx
	neg	r9d
	cmp	r13, -0xe10
	lea	r8d, [rax + rax + 0x2b]
	cmovg	r9d, ebx
	lea	rdi, [rsp]
	mov	esi, 1
	mov	edx, 0x1b
	mov	ecx, OFFSET FLAT:label_138
	xor	eax, eax
	call	__sprintf_chk
	imul	edx, ebx, 0xe10
	mov	esi, r13d
	sub	esi, edx
	mov	ecx, esi
	neg	ecx
	cmovl	ecx, esi
	cmp	r13d, edx
	movzx	edx, r12b
	lea	rdx, qword ptr [rdx + label_125]
	je	.label_126
	cdqe	
	lea	rax, [rsp + rax]
	movsxd	r9, ecx
	imul	rsi, r9, -0x77777777
	shr	rsi, 0x20
	add	esi, r9d
	mov	edi, esi
	shr	edi, 0x1f
	sar	esi, 5
	add	esi, edi
	imul	r8d, esi, 0x3c
	imul	rbx, r9, 0x1b4e81b5
	mov	r10, rbx
	shr	r10, 0x3f
	shr	rbx, 0x26
	movsxd	rsi, esi
	imul	rcx, rsi, 0x66666667
	mov	rdi, rcx
	shr	rdi, 0x3f
	sar	rcx, 0x22
	add	ecx, edi
	add	ecx, ecx
	lea	ecx, [rcx + rcx*4]
	sub	esi, ecx
	add	esi, 0x30
	sub	r9d, r8d
	mov	byte ptr [rax], 0x3a
	lea	ecx, [rbx + r10 + 0x30]
	mov	byte ptr [rax + 1], cl
	mov	byte ptr [rax + 2], sil
	jne	.label_140
	add	rax, 3
	jmp	.label_133
.label_140:
	mov	byte ptr [rax + 3], 0x3a
	movsxd	rcx, r9d
	imul	rcx, rcx, 0x66666667
	mov	rsi, rcx
	shr	rsi, 0x3f
	sar	rcx, 0x22
	lea	edi, [rcx + rsi]
	lea	ecx, [rcx + rsi + 0x30]
	mov	byte ptr [rax + 4], cl
	add	edi, edi
	lea	ecx, [rdi + rdi*4]
	neg	ecx
	lea	ecx, [r9 + rcx + 0x30]
	mov	byte ptr [rax + 5], cl
	add	rax, 6
.label_133:
	mov	byte ptr [rax], 0
.label_126:
	lea	rcx, [rsp]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	call	__fprintf_chk
	mov	byte ptr [r15 + 0xde], 1
	mov	r12b, 1
.label_131:
	cmp	byte ptr [r15 + 0xa0], 0
	je	.label_121
	mov	r14, qword ptr [r15 + 0x58]
	test	r12b, r12b
	je	.label_123
	mov	rsi, qword ptr [rip + stderr]
	mov	edi, 0x20
	call	fputc
.label_123:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_134
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbx
	mov	rdx, rcx
	mov	rcx, r14
	call	__fprintf_chk
.label_121:
	mov	rsi, qword ptr [rip + stderr]
	mov	edi, 0xa
	call	fputc
	jmp	.label_116
	.section	.text
	.align	32
	#Procedure 0x4030a7
	.globl sub_4030a7
	.type sub_4030a7, @function
sub_4030a7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4030b0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x4030b8
	.globl sub_4030b8
	.type sub_4030b8, @function
sub_4030b8:

	nop	dword ptr [rax + rax]
.label_142:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	.section	.text
	.align	32
	#Procedure 0x4030cb

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_146
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_143
	cmp	dword ptr [rbp], 0x20
	jne	.label_143
.label_146:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_142
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_144:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_145
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
.label_143:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_147
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_144
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_141
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	.section	.text
	.align	32
	#Procedure 0x403180
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
	#Procedure 0x403198
	.globl sub_403198
	.type sub_403198, @function
sub_403198:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4031a0
	.globl current_timespec
	.type current_timespec, @function
current_timespec:

	sub	rsp, 0x18
	lea	rsi, [rsp + 8]
	xor	edi, edi
	call	clock_gettime
	mov	rax, qword ptr [rsp + 8]
	mov	rdx, qword ptr [rsp + 0x10]
	add	rsp, 0x18
	ret	
	.section	.text
	.align	32
	#Procedure 0x4031bf
	.globl sub_4031bf
	.type sub_4031bf, @function
sub_4031bf:

	nop	
.label_148:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4031c5
	.globl sub_4031c5
	.type sub_4031c5, @function
sub_4031c5:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4031c7
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_60]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_61]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_62]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_148
	test	rdx, rdx
	je	.label_148
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
	#Procedure 0x403230
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	.section	.text
	.align	32
	#Procedure 0x403238
	.globl sub_403238
	.type sub_403238, @function
sub_403238:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403240

	.globl localtime_rz
	.type localtime_rz, @function
localtime_rz:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	rbp, rsi
	mov	r15, rdi
	test	r15, r15
	je	.label_157
	mov	qword ptr [rsp + 8], rdx
	mov	edi, OFFSET FLAT:label_39
	call	getenv
	mov	r13, rax
	test	r13, r13
	mov	bl, byte ptr [r15 + 8]
	mov	qword ptr [rsp + 0x10], rbp
	je	.label_163
	test	bl, bl
	je	.label_159
	lea	rdi, [r15 + 9]
	mov	rsi, r13
	call	strcmp
	mov	r14d, 1
	test	eax, eax
	je	.label_150
.label_159:
	mov	rdi, r13
	call	strlen
	mov	rbp, rax
	inc	rbp
	mov	r12b, 1
	jmp	.label_153
.label_157:
	mov	rdi, rbp
	mov	rsi, rdx
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	gmtime_r
.label_163:
	xor	r12d, r12d
	mov	r14d, 1
	test	bl, bl
	mov	ebp, 0
	je	.label_150
.label_153:
	lea	rax, [rbp + 0x11]
	and	rax, 0xfffffffffffffff8
	cmp	rbp, 0x77
	mov	edi, 0x80
	cmovae	rdi, rax
	call	malloc
	mov	r14, rax
	test	r14, r14
	je	.label_165
	mov	qword ptr [r14], 0
	mov	byte ptr [r14 + 8], r12b
	mov	byte ptr [r14 + 9], 0
	test	r12b, r12b
	je	.label_169
	lea	r12, [r14 + 9]
	mov	rdi, r12
	mov	rsi, r13
	mov	rdx, rbp
	call	memcpy
	mov	byte ptr [r12 + rbp], 0
.label_169:
	test	bl, bl
	je	.label_155
	lea	rsi, [r15 + 9]
	mov	edi, OFFSET FLAT:label_39
	mov	edx, 1
	call	setenv
	jmp	.label_152
.label_155:
	mov	edi, OFFSET FLAT:label_39
	call	unsetenv
.label_152:
	test	eax, eax
	je	.label_161
	call	__errno_location
	mov	rbp, rax
	mov	r15d, dword ptr [rbp]
	cmp	r14, 2
	jb	.label_162
	nop	word ptr cs:[rax + rax]
.label_167:
	mov	rbx, qword ptr [r14]
	mov	rdi, r14
	call	free
	test	rbx, rbx
	mov	r14, rbx
	jne	.label_167
.label_162:
	mov	dword ptr [rbp], r15d
.label_165:
	xor	eax, eax
	jmp	.label_149
.label_161:
	call	tzset
.label_150:
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rbx, qword ptr [rsp + 8]
	mov	rsi, rbx
	call	localtime_r
	mov	bpl, 1
	test	rax, rax
	mov	r12b, 1
	je	.label_154
	mov	rdi, r15
	mov	rsi, rbx
	call	save_abbr
	mov	r12d, eax
	xor	r12b, 1
.label_154:
	cmp	r14, 1
	je	.label_158
	call	__errno_location
	mov	r15, rax
	mov	r13d, dword ptr [r15]
	cmp	byte ptr [r14 + 8], 0
	je	.label_160
	lea	rsi, [r14 + 9]
	mov	edi, OFFSET FLAT:label_39
	mov	edx, 1
	call	setenv
	jmp	.label_164
.label_160:
	mov	edi, OFFSET FLAT:label_39
	call	unsetenv
.label_164:
	test	eax, eax
	je	.label_166
	mov	r13d, dword ptr [r15]
	xor	ebp, ebp
	jmp	.label_168
.label_166:
	call	tzset
	mov	bpl, 1
.label_168:
	cmp	r14, 2
	jb	.label_151
	nop	word ptr cs:[rax + rax]
.label_156:
	mov	rbx, qword ptr [r14]
	mov	rdi, r14
	call	free
	test	rbx, rbx
	mov	r14, rbx
	jne	.label_156
.label_151:
	mov	dword ptr [r15], r13d
	mov	rbx, qword ptr [rsp + 8]
.label_158:
	xor	eax, eax
	xor	bpl, 1
	cmovne	rbx, rax
	test	r12b, r12b
	cmovne	rbx, rax
	mov	rax, rbx
.label_149:
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
	#Procedure 0x40345e
	.globl sub_40345e
	.type sub_40345e, @function
sub_40345e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x403460

	.globl fdutimensat
	.type fdutimensat, @function
fdutimensat:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r14d, r8d
	mov	r12, rcx
	mov	rbp, rdx
	mov	r15d, esi
	mov	ebx, edi
	mov	eax, 1
	test	ebx, ebx
	js	.label_170
	mov	edi, ebx
	mov	rsi, r12
	call	futimens
.label_170:
	test	rbp, rbp
	je	.label_172
	test	ebx, ebx
	js	.label_171
	cmp	eax, -1
	jne	.label_172
	call	__errno_location
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	dword ptr [rcx], 0x26
	jne	.label_173
.label_171:
	mov	edi, r15d
	mov	rsi, rbp
	mov	rdx, r12
	mov	ecx, r14d
	call	utimensat
.label_172:
	cmp	eax, 1
	jne	.label_173
	call	__errno_location
	mov	dword ptr [rax], 9
	mov	eax, 0xffffffff
.label_173:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4034d8
	.globl sub_4034d8
	.type sub_4034d8, @function
sub_4034d8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4034e0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_174
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_141
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403510

	.globl posix2_version
	.type posix2_version, @function
posix2_version:
	push	rax
	mov	edi, OFFSET FLAT:label_175
	call	getenv
	mov	ecx, 0x31069
	test	rax, rax
	je	.label_176
	mov	ecx, 0x31069
	cmp	byte ptr [rax], 0
	je	.label_176
	lea	rsi, [rsp]
	mov	edx, 0xa
	mov	rdi, rax
	call	strtol
	mov	rcx, qword ptr [rsp]
	cmp	byte ptr [rcx], 0
	mov	ecx, 0x31069
	cmove	rcx, rax
.label_176:
	cmp	rcx, 0x7fffffff
	mov	edx, 0x7fffffff
	cmovl	edx, ecx
	cmp	rcx, -0x80000000
	mov	eax, 0x80000000
	cmovge	eax, edx
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x403570
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
	je	.label_177
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
.label_177:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4035d8
	.globl sub_4035d8
	.type sub_4035d8, @function
sub_4035d8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4035e0
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
	#Procedure 0x4035ef
	.globl sub_4035ef
	.type sub_4035ef, @function
sub_4035ef:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4035f0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_60]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_61]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_62]
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
	#Procedure 0x403644
	.globl sub_403644
	.type sub_403644, @function
sub_403644:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403650
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
	#Procedure 0x403711
	.globl sub_403711
	.type sub_403711, @function
sub_403711:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403720
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
	#Procedure 0x403733
	.globl sub_403733
	.type sub_403733, @function
sub_403733:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403740
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_60]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_61]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_62]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_178
	test	rdx, rdx
	je	.label_178
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_178:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4037aa
	.globl sub_4037aa
	.type sub_4037aa, @function
sub_4037aa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4037b0

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
	mov	r12, rsi
	mov	rbp, rdi
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_183
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stderr]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbx, qword ptr [rbp]
	test	rbx, rbx
	je	.label_180
	xor	r13d, r13d
	xor	r15d, r15d
	mov	qword ptr [rsp], rbp
	nop	dword ptr [rax + rax]
.label_185:
	test	r15, r15
	je	.label_179
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	je	.label_184
.label_179:
	mov	r13, qword ptr [rip + stderr]
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_181
	xor	eax, eax
	mov	rdi, r13
	call	__fprintf_chk
	mov	r13, r12
	jmp	.label_187
	.section	.text
	.align	32
	#Procedure 0x403842
	.globl sub_403842
	.type sub_403842, @function
sub_403842:

	nop	word ptr cs:[rax + rax]
.label_184:
	mov	rbp, qword ptr [rip + stderr]
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_186
	xor	eax, eax
	mov	rdi, rbp
	mov	rbp, qword ptr [rsp]
	call	__fprintf_chk
.label_187:
	mov	rbx, qword ptr [rbp + r15*8 + 8]
	inc	r15
	add	r12, r14
	test	rbx, rbx
	jne	.label_185
.label_180:
	mov	rdi, qword ptr [rip + stderr]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_182
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_182:
	mov	esi, 0xa
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	__overflow
	.section	.text
	.align	32
	#Procedure 0x4038d1
	.globl sub_4038d1
	.type sub_4038d1, @function
sub_4038d1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4038e0

	.globl __xargmatch_internal
	.type __xargmatch_internal, @function
__xargmatch_internal:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r14, r9
	mov	r15, r8
	mov	r12, rcx
	mov	r13, rdx
	mov	rbp, rsi
	mov	rbx, rdi
	mov	rdi, rbp
	mov	rsi, r13
	mov	rdx, r12
	mov	rcx, r15
	call	argmatch
	test	rax, rax
	jns	.label_191
	cmp	rax, -1
	mov	qword ptr [rsp + 0x10], rbx
	mov	rbx, r14
	je	.label_192
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_188
	jmp	.label_189
.label_192:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_190
.label_189:
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rsp + 8], rax
	xor	edi, edi
	mov	esi, 8
	mov	rdx, rbp
	call	quotearg_n_style
	mov	r14, rax
	mov	edi, 1
	mov	rsi, qword ptr [rsp + 0x10]
	call	quote_n
	mov	rbp, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, qword ptr [rsp + 8]
	mov	rcx, r14
	mov	r8, rbp
	call	error
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r15
	call	argmatch_valid
	call	rbx
	mov	rax, -1
.label_191:
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
	#Procedure 0x4039a3
	.globl sub_4039a3
	.type sub_4039a3, @function
sub_4039a3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4039b0

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
	jmp	.label_245
	.section	.text
	.align	32
	#Procedure 0x403a5f
	.globl sub_403a5f
	.type sub_403a5f, @function
sub_403a5f:

	nop	
.label_242:
	cmp	r8d, 2
	setne	al
	cmp	byte ptr [rsp + 0xf], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa8]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x34]
	mov	rsi, qword ptr [rsp + 0xc0]
	je	.label_214
	or	al, dl
	jne	.label_214
	test	dil, 1
	jne	.label_240
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_214
	test	rbp, rbp
	mov	r15d, r8d
	mov	al, bl
	mov	qword ptr [rsp + 0x48], rcx
	mov	r12d, esi
	mov	r13, qword ptr [rsp + 0x68]
	je	.label_245
	jmp	.label_214
.label_1674:
	mov	r8d, 5
	test	r12b, 1
	jne	.label_250
	test	rbp, rbp
	je	.label_254
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax], 0x22
.label_254:
	mov	r14d, 1
	jmp	.label_257
.label_1675:
	mov	r13b, 1
	mov	r8d, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_259
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	sil, 1
	jmp	.label_196
.label_250:
	xor	r14d, r14d
.label_257:
	mov	eax, OFFSET FLAT:label_259
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	r13b, 1
	jmp	.label_269
	.section	.text
	.align	32
	#Procedure 0x403b2f
	.globl sub_403b2f
	.type sub_403b2f, @function
sub_403b2f:

	nop	
.label_245:
	mov	rbp, r13
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_278
	mov	r8d, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	jmp	qword ptr [(rcx * 8) + label_300]
.label_1676:
	mov	r14d, edi
	mov	edi, OFFSET FLAT:label_289
	mov	esi, r15d
	mov	ebx, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x80], rax
	mov	edi, OFFSET FLAT:label_220
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebx
	mov	edi, r14d
	mov	qword ptr [rsp + 0x78], rax
.label_1677:
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x80]
	jne	.label_235
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_235
	xor	r14d, r14d
	nop	
.label_255:
	cmp	r14, rbp
	jae	.label_233
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], al
.label_233:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_255
.label_235:
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
	jmp	.label_196
.label_1669:
	xor	r8d, r8d
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_196
.label_1672:
	mov	al, 1
.label_1670:
	mov	r12b, 1
.label_1673:
	test	r12b, 1
	mov	cl, 1
	je	.label_204
	mov	ecx, eax
.label_204:
	mov	al, cl
.label_1671:
	mov	r8d, 2
	test	r12b, 1
	jne	.label_206
	test	rbp, rbp
	je	.label_213
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx], 0x27
.label_213:
	mov	r14d, 1
	jmp	.label_304
.label_206:
	xor	r14d, r14d
.label_304:
	mov	ecx, OFFSET FLAT:label_220
	mov	qword ptr [rsp + 0x58], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x50], rcx
	mov	r13d, eax
.label_269:
	mov	sil, r12b
.label_196:
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
	jmp	.label_227
	.section	.text
	.align	32
	#Procedure 0x403cf1
	.globl sub_403cf1
	.type sub_403cf1, @function
sub_403cf1:

	nop	word ptr cs:[rax + rax]
.label_262:
	inc	r12
.label_227:
	cmp	r11, -1
	je	.label_265
	cmp	r12, r11
	jne	.label_267
	jmp	.label_268
	.section	.text
	.align	32
	#Procedure 0x403d13
	.globl sub_403d13
	.type sub_403d13, @function
sub_403d13:

	nop	word ptr cs:[rax + rax]
.label_265:
	mov	rcx, -1
	cmp	byte ptr [r10 + r12], 0
	je	.label_272
.label_267:
	cmp	byte ptr [rsp + 0x37], 0
	je	.label_279
	mov	rax, qword ptr [rsp + 0x50]
	lea	rbx, [r12 + rax]
	cmp	rax, 2
	jb	.label_282
	cmp	r11, -1
	jne	.label_282
	mov	r15d, edi
	mov	rdi, r10
	mov	r13d, r9d
	call	strlen
	mov	r9d, r13d
	mov	r8, qword ptr [rsp + 0x38]
	mov	edi, r15d
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_282:
	cmp	rbx, r11
	jbe	.label_293
.label_279:
	xor	esi, esi
.label_312:
	movzx	r15d, byte ptr [r10 + r12]
	cmp	r15, 0x7e
	ja	.label_294
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_297]
.label_1689:
	test	r12, r12
	jne	.label_253
	jmp	.label_203
	.section	.text
	.align	32
	#Procedure 0x403da6
	.globl sub_403da6
	.type sub_403da6, @function
sub_403da6:

	nop	word ptr cs:[rax + rax]
.label_293:
	mov	r13d, r9d
	mov	r15d, edi
	mov	rbx, r11
	lea	rdi, [r10 + r12]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	rdx, qword ptr [rsp + 0x50]
	call	memcmp
	test	eax, eax
	sete	sil
	jne	.label_309
	cmp	byte ptr [rsp + 0xf], 0
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	je	.label_312
	jmp	.label_193
.label_309:
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	jmp	.label_312
.label_1693:
	xor	eax, eax
	cmp	r11, -1
	je	.label_195
	test	r12, r12
	jne	.label_200
	cmp	r11, 1
	je	.label_203
	xor	r13d, r13d
	jmp	.label_198
.label_1682:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_208
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_193
	cmp	r8d, 2
	jne	.label_215
	mov	eax, r9d
	and	al, 1
	jne	.label_215
	cmp	r14, rbp
	jae	.label_221
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_221:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_223
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_223:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_230
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_230:
	add	r14, 3
	mov	r9b, 1
.label_215:
	mov	rcx, r14
	cmp	rcx, rbp
	jae	.label_238
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + rcx], 0x5c
.label_238:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r8d, 2
	je	.label_236
	lea	rdx, [r12 + 1]
	cmp	rdx, r11
	jae	.label_236
	mov	dl, byte ptr [r10 + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_236
	cmp	r14, rbp
	jae	.label_258
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x30
.label_258:
	lea	rdx, [rcx + 2]
	cmp	rdx, rbp
	jae	.label_283
	mov	ebx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rdx], 0x30
	mov	esi, ebx
.label_283:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_198
.label_1683:
	mov	bl, 0x62
	jmp	.label_229
.label_1684:
	mov	cl, 0x74
	jmp	.label_216
.label_1685:
	mov	bl, 0x76
	jmp	.label_229
.label_1686:
	mov	bl, 0x66
	jmp	.label_229
.label_1687:
	mov	cl, 0x72
	jmp	.label_216
.label_1690:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa8], rax
	cmp	r8d, 2
	jne	.label_275
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_222
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
	jae	.label_284
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_284:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_295
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x5c
.label_295:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_299
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_299:
	add	r14, 3
	xor	r9d, r9d
.label_275:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_198
.label_1691:
	mov	r15b, 0x3f
	cmp	r8d, 5
	je	.label_305
	cmp	r8d, 2
	jne	.label_253
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_253
	jmp	.label_222
.label_1692:
	cmp	r8d, 2
	jne	.label_314
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_222
	mov	r15b, 0x5c
	xor	eax, eax
	jmp	.label_301
.label_294:
	cmp	qword ptr [rsp + 0xb8], 1
	mov	qword ptr [rsp + 0xa0], rbp
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	mov	dword ptr [rsp + 0x94], esi
	jne	.label_319
	mov	qword ptr [rsp + 0x48], r11
	call	__ctype_b_loc
	mov	r10, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	ebx, 1
	jmp	.label_205
.label_195:
	test	r12, r12
	jne	.label_219
	mov	cl, byte ptr [r10 + 1]
	test	cl, cl
	jne	.label_219
.label_203:
	mov	dl, 1
.label_1688:
	cmp	byte ptr [rsp + 0x27], 0
	je	.label_222
	xor	eax, eax
	mov	r13b, dl
.label_198:
	cmp	byte ptr [rsp + 0x36], 0
	je	.label_228
	cmp	qword ptr [rsp + 0x100], 0
	jne	.label_231
	jmp	.label_234
	.section	.text
	.align	32
	#Procedure 0x404084
	.globl sub_404084
	.type sub_404084, @function
sub_404084:

	nop	word ptr cs:[rax + rax]
.label_228:
	cmp	byte ptr [rsp + 0x35], 0
	je	.label_234
.label_231:
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	ebx, esi
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_241
	mov	rcx, qword ptr [rsp + 0x100]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_247
	.section	.text
	.align	32
	#Procedure 0x4040bd
	.globl sub_4040bd
	.type sub_4040bd, @function
sub_4040bd:

	nop	dword ptr [rax]
.label_234:
	test	sil, sil
.label_247:
	mov	ebx, r15d
	je	.label_239
	jmp	.label_252
.label_241:
	mov	ebx, r15d
	jmp	.label_252
.label_208:
	cmp	dword ptr [rsp + 0x9c], 0
	jne	.label_262
	xor	r15d, r15d
	jmp	.label_253
.label_314:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x32], 0
	je	.label_216
	xor	eax, eax
	mov	r15b, 0x5c
.label_301:
	xor	r13d, r13d
	jmp	.label_239
.label_216:
	cmp	byte ptr [rsp + 0x27], 0
	mov	ebx, ecx
	je	.label_222
.label_229:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1f], 0
	mov	r13d, 0
	je	.label_198
	nop	
.label_252:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_193
	cmp	r8d, 2
	jne	.label_276
	mov	eax, r9d
	and	al, 1
	jne	.label_276
	cmp	r14, rbp
	jae	.label_281
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_281:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_285
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_285:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_288
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_288:
	add	r14, 3
	mov	r9b, 1
.label_276:
	cmp	r14, rbp
	jae	.label_246
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_246:
	inc	r14
	jmp	.label_266
.label_319:
	mov	qword ptr [rsp + 0x70], 0
	cmp	r11, -1
	jne	.label_298
	mov	rdi, r10
	call	strlen
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_298:
	cmp	byte ptr [rsp + 0x31], 0
	mov	qword ptr [rsp + 0x48], r11
	mov	qword ptr [rsp + 0x88], r12
	je	.label_317
	lea	rax, [r10 + r12]
	mov	qword ptr [rsp + 0xb0], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbp, [rsp + 0x70]
.label_201:
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
	je	.label_194
	cmp	rbx, -1
	mov	r10, qword ptr [rsp + 0x28]
	movabs	rsi, 0x20000002b
	je	.label_197
	test	rbx, rbx
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_217
	cmp	rbx, 2
	mov	rbp, qword ptr [rsp + 0xa0]
	jb	.label_211
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax]
.label_261:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_244
	bt	rsi, rdx
	jb	.label_222
.label_244:
	inc	rcx
	cmp	rcx, rbx
	jb	.label_261
.label_211:
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	jne	.label_316
	xor	r13d, r13d
.label_316:
	lea	rbp, [rsp + 0x70]
	mov	r12, qword ptr [rsp + 0x40]
	add	r12, rbx
	mov	rdi, rbp
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_201
	jmp	.label_199
.label_236:
	xor	r13d, r13d
	jmp	.label_198
.label_219:
	mov	r11, -1
	xor	r13d, r13d
	jmp	.label_198
.label_305:
	cmp	dword ptr [rsp + 0x98], 0
	je	.label_253
	lea	rcx, [r12 + 2]
	cmp	rcx, r11
	jae	.label_253
	cmp	byte ptr [r10 + r12 + 1], 0x3f
	jne	.label_253
	movsx	edx, byte ptr [r10 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_264
	mov	ebx, esi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_210
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_271
	cmp	r14, rbp
	jae	.label_273
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x3f
.label_273:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_280
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_280:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_302
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_302:
	lea	rax, [r14 + 3]
	cmp	rax, rbp
	jae	.label_237
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x3f
.label_237:
	add	r14, 4
	xor	eax, eax
	mov	r12, rcx
	mov	r15b, dl
.label_210:
	xor	r13d, r13d
	mov	esi, ebx
	jmp	.label_198
.label_253:
	xor	eax, eax
.label_200:
	xor	r13d, r13d
	jmp	.label_198
.label_317:
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbx, [rsp + 0x70]
	nop	word ptr cs:[rax + rax]
.label_263:
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
	je	.label_310
	cmp	rbp, -1
	je	.label_313
	cmp	rbp, -2
	je	.label_194
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	mov	r12, qword ptr [rsp + 0x40]
	jne	.label_315
	xor	r13d, r13d
.label_315:
	add	r12, rbp
	lea	rbx, [rsp + 0x70]
	mov	rdi, rbx
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_263
	jmp	.label_199
.label_194:
	mov	r10, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x40]
	lea	rax, [rsi + r12]
	mov	rdx, qword ptr [rsp + 0x48]
	cmp	rax, rdx
	jae	.label_209
	lea	rax, [r10 + r12]
.label_218:
	cmp	byte ptr [rax + rsi], 0
	je	.label_209
	lea	rcx, [r12 + rsi + 1]
	inc	rsi
	cmp	rcx, rdx
	jb	.label_218
.label_209:
	mov	qword ptr [rsp + 0x40], rsi
.label_197:
	xor	r13d, r13d
	jmp	.label_217
.label_313:
	xor	r13d, r13d
.label_310:
	mov	r10, qword ptr [rsp + 0x28]
.label_217:
	mov	r12, qword ptr [rsp + 0x40]
.label_199:
	mov	rbx, r12
	mov	r12, qword ptr [rsp + 0x88]
.label_205:
	and	r13b, 1
	mov	eax, r13d
	or	al, byte ptr [rsp + 0x33]
	cmp	rbx, 1
	mov	rbp, qword ptr [rsp + 0xa0]
	mov	dil, byte ptr [rsp + 0x1e]
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x60]
	mov	esi, dword ptr [rsp + 0x94]
	ja	.label_226
	test	al, al
	je	.label_226
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_198
.label_226:
	mov	byte ptr [rsp + 0x40], al
	add	rbx, r12
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_243
	.section	.text
	.align	32
	#Procedure 0x4044b7
	.globl sub_4044b7
	.type sub_4044b7, @function
sub_4044b7:

	nop	word ptr [rax + rax]
.label_202:
	inc	r14
	mov	r15b, byte ptr [r10 + r12 + 1]
	mov	r12, rdx
.label_243:
	cmp	byte ptr [rsp + 0x40], 0
	je	.label_251
	test	sil, 1
	je	.label_260
	cmp	r14, rbp
	jae	.label_318
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x5c
.label_318:
	inc	r14
	xor	esi, esi
	jmp	.label_260
	.section	.text
	.align	32
	#Procedure 0x4044f5
	.globl sub_4044f5
	.type sub_4044f5, @function
sub_4044f5:

	nop	word ptr cs:[rax + rax]
.label_251:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_193
	cmp	r8d, 2
	jne	.label_225
	mov	eax, r9d
	and	al, 1
	jne	.label_225
	cmp	r14, rbp
	jae	.label_270
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_270:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_274
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x24
.label_274:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_256
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x27
.label_256:
	add	r14, 3
	mov	r9b, 1
.label_225:
	cmp	r14, rbp
	jae	.label_286
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_286:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_291
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_291:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_296
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_296:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_260:
	lea	rdx, [r12 + 1]
	cmp	rbx, rdx
	jbe	.label_239
	test	r9b, 1
	je	.label_306
	mov	rcx, rbx
	mov	ebx, eax
	and	bl, 1
	jne	.label_232
	mov	r8, r12
	mov	r12d, esi
	cmp	r14, rbp
	jae	.label_308
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], 0x27
.label_308:
	lea	rsi, [r14 + 1]
	cmp	rsi, rbp
	jae	.label_277
	mov	rbx, qword ptr [rsp + 0x10]
	mov	byte ptr [rbx + rsi], 0x27
.label_277:
	add	r14, 2
	xor	r9d, r9d
	mov	esi, r12d
	mov	rbx, rcx
	mov	r12, r8
	mov	r8, qword ptr [rsp + 0x38]
	jmp	.label_306
	.section	.text
	.align	32
	#Procedure 0x404606
	.globl sub_404606
	.type sub_404606, @function
sub_404606:

	nop	word ptr cs:[rax + rax]
.label_232:
	mov	rbx, rcx
.label_306:
	cmp	r14, rbp
	jae	.label_202
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], r15b
	mov	esi, ecx
	jmp	.label_202
	.section	.text
	.align	32
	#Procedure 0x40462e
	.globl sub_40462e
	.type sub_40462e, @function
sub_40462e:

	nop	
.label_239:
	test	r9b, 1
	je	.label_207
	and	al, 1
	jne	.label_207
	cmp	r14, rbp
	jae	.label_212
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_212:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_249
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_249:
	add	r14, 2
	xor	r9d, r9d
.label_207:
	mov	ebx, r15d
.label_266:
	cmp	r14, rbp
	jae	.label_224
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], bl
.label_224:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, dil
	mov	edi, r13d
	jmp	.label_262
.label_264:
	xor	r13d, r13d
	jmp	.label_198
	.section	.text
	.align	32
	#Procedure 0x404691
	.globl sub_404691
	.type sub_404691, @function
sub_404691:

	nop	word ptr cs:[rax + rax]
.label_268:
	mov	rcx, r12
.label_272:
	cmp	r8d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_242
	or	al, dl
	jne	.label_242
	mov	r11, rcx
	jmp	.label_193
.label_222:
	mov	eax, 2
.label_311:
	mov	qword ptr [rsp + 0x38], rax
.label_193:
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
.label_303:
	mov	r14, rax
.label_307:
	mov	rax, r14
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_214:
	mov	rdx, qword ptr [rsp + 0x58]
	test	rdx, rdx
	je	.label_287
	cmp	byte ptr [rsp + 0xf], 0
	mov	rcx, qword ptr [rsp + 0x10]
	jne	.label_248
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_248
	inc	rdx
	nop	dword ptr [rax + rax]
.label_292:
	cmp	r14, rbp
	jae	.label_290
	mov	byte ptr [rcx + r14], al
.label_290:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_292
	jmp	.label_248
.label_240:
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
	jmp	.label_303
.label_287:
	mov	rcx, qword ptr [rsp + 0x10]
.label_248:
	cmp	r14, rbp
	jae	.label_307
	mov	byte ptr [rcx + r14], 0
	jmp	.label_307
.label_271:
	mov	eax, 5
	jmp	.label_311
.label_278:
	call	abort
.label_322:
	test	rcx, rcx
	jne	.label_320
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_320:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_325
.label_321:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_323
	test	rbx, rbx
	jne	.label_323
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_326:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x404831
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_322
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_326
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_321
.label_325:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x404863
	.globl sub_404863
	.type sub_404863, @function
sub_404863:

	nop	word ptr [rax + rax]
.label_323:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_324
	test	rax, rax
	je	.label_326
.label_324:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x404880
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
	#Procedure 0x404898
	.globl sub_404898
	.type sub_404898, @function
sub_404898:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4048a0
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
	je	.label_327
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
.label_327:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x404935
	.globl sub_404935
	.type sub_404935, @function
sub_404935:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404940

	.globl save_abbr
	.type save_abbr, @function
save_abbr:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rsi
	mov	r12, rdi
	mov	rbx, qword ptr [r15 + 0x30]
	mov	r14b, 1
	test	rbx, rbx
	je	.label_328
	cmp	r15, rbx
	ja	.label_336
	lea	rax, [r15 + 0x38]
	cmp	rbx, rax
	jb	.label_328
.label_336:
	mov	ebp, OFFSET FLAT:label_129
	cmp	byte ptr [rbx], 0
	je	.label_331
	lea	rbp, [r12 + 9]
	jmp	.label_329
.label_335:
	mov	rax, qword ptr [r12]
	lea	rbp, [rax + 9]
	test	rax, rax
	cmove	rbp, rcx
	cmovne	r12, rax
.label_329:
	lea	r13, [r12 + 9]
.label_332:
	mov	rdi, rbp
	mov	rsi, rbx
	call	strcmp
	test	eax, eax
	je	.label_331
	cmp	byte ptr [rbp], 0
	jne	.label_338
	cmp	rbp, r13
	jne	.label_339
	cmp	byte ptr [r12 + 8], 0
	je	.label_340
.label_338:
	mov	rdi, rbp
	call	strlen
	lea	rcx, [rbp + rax + 1]
	cmp	byte ptr [rbp + rax + 1], 0
	mov	rbp, rcx
	jne	.label_332
	jmp	.label_335
.label_340:
	mov	rbp, r13
.label_339:
	mov	rdi, rbx
	call	strlen
	lea	rdx, [rax + 1]
	mov	rcx, rbp
	sub	rcx, r13
	mov	rsi, rcx
	not	rsi
	cmp	rdx, rsi
	jbe	.label_337
	call	__errno_location
	mov	dword ptr [rax], 0xc
.label_334:
	xor	r14d, r14d
	jmp	.label_328
.label_337:
	add	rcx, rdx
	cmp	rcx, 0x76
	ja	.label_333
	mov	rdi, rbp
	mov	rsi, rbx
	mov	rbx, rdx
	call	memcpy
	mov	byte ptr [rbp + rbx], 0
	jmp	.label_331
.label_333:
	add	rax, 0x12
	and	rax, 0xfffffffffffffff8
	mov	r13, rdx
	cmp	rdx, 0x77
	mov	edi, 0x80
	cmovae	rdi, rax
	call	malloc
	test	rax, rax
	je	.label_330
	mov	qword ptr [rax], 0
	mov	word ptr [rax + 8], 1
	mov	rbp, rax
	add	rbp, 9
	mov	rdi, rbp
	mov	rsi, rbx
	mov	rdx, r13
	mov	rbx, rax
	call	memcpy
	mov	byte ptr [rbx + r13 + 9], 0
	mov	qword ptr [r12], rbx
	mov	byte ptr [rbx + 8], 0
.label_331:
	mov	qword ptr [r15 + 0x30], rbp
.label_328:
	mov	eax, r14d
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_330:
	mov	qword ptr [r12], 0
	jmp	.label_334
	.section	.text
	.align	32
	#Procedure 0x404aa5
	.globl sub_404aa5
	.type sub_404aa5, @function
sub_404aa5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404ab0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_341
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_341:
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
	#Procedure 0x404b33
	.globl sub_404b33
	.type sub_404b33, @function
sub_404b33:

	nop	word ptr cs:[rax + rax]
.label_345:
	mov	byte ptr [r14], 0
	xor	eax, eax
	jmp	.label_342
	.section	.text
	.align	32
	#Procedure 0x404b48

	.globl str_days
	.type str_days, @function
str_days:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	cmp	byte ptr [rbx + 0xe0], 0
	je	.label_345
	mov	r9, qword ptr [rbx + 8]
	lea	rax, [r9 + 1]
	cmp	rax, 0xd
	ja	.label_347
	imul	rax, rax, 0xb
	lea	r9, qword ptr [rax + str_days.ordinal_values]
	mov	esi, 0x64
	mov	edx, 1
	mov	rcx, -1
	mov	r8d, OFFSET FLAT:label_141
	jmp	.label_346
.label_347:
	mov	esi, 0x64
	mov	edx, 1
	mov	rcx, -1
	mov	r8d, OFFSET FLAT:label_348
.label_346:
	xor	eax, eax
	mov	rdi, r14
	call	__snprintf_chk
.label_342:
	movsxd	rcx, dword ptr [rbx + 0x10]
	test	rcx, rcx
	js	.label_344
	cmp	eax, 0x63
	ja	.label_344
	cmp	ecx, 6
	jg	.label_344
	movsxd	rdi, eax
	add	rdi, r14
	mov	edx, 0x64
	sub	edx, eax
	movsxd	rsi, edx
	mov	r8d, OFFSET FLAT:label_343
	cmp	eax, 1
	adc	r8, 0
	lea	r9, qword ptr [(rcx * 4) + str_days.days_values]
	mov	edx, 1
	mov	rcx, -1
	xor	eax, eax
	call	__snprintf_chk
.label_344:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x404c04
	.globl sub_404c04
	.type sub_404c04, @function
sub_404c04:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404c10

	.globl apply_relative_time
	.type apply_relative_time, @function
apply_relative_time:
	lea	r8, [rsp + 8]
	movabs	r10, 0x7fffffffffffffff
	mov	edx, dword ptr [rsp + 0x38]
	test	esi, esi
	js	.label_352
	test	edx, edx
	js	.label_358
	mov	esi, 0x7fffffff
	sub	esi, edx
	lea	rcx, [rdi + 0x98]
	mov	eax, dword ptr [rdi + 0x98]
	cmp	esi, eax
	jl	.label_359
	jmp	.label_366
.label_352:
	test	edx, edx
	js	.label_387
	lea	rcx, [rdi + 0x98]
	mov	eax, dword ptr [rdi + 0x98]
	mov	esi, edx
	xor	esi, 0x80000000
	cmp	eax, esi
	jl	.label_370
	jmp	.label_377
.label_358:
	lea	rcx, [rdi + 0x98]
	mov	eax, dword ptr [rdi + 0x98]
	mov	esi, 0x80000000
	sub	esi, edx
	cmp	eax, esi
	jge	.label_366
.label_359:
	add	edx, eax
	mov	dword ptr [rcx], edx
	mov	r9d, 1
	jmp	.label_382
.label_366:
	add	edx, eax
	mov	dword ptr [rcx], edx
	xor	r9d, r9d
.label_382:
	mov	rdx, qword ptr [r8 + 0x28]
	test	rdx, rdx
	js	.label_385
	mov	rsi, r10
	sub	rsi, rdx
	lea	rcx, [rdi + 0x90]
	mov	rax, qword ptr [rdi + 0x90]
	cmp	rsi, rax
	jl	.label_388
	jmp	.label_376
.label_385:
	lea	rcx, [rdi + 0x90]
	mov	rax, qword ptr [rdi + 0x90]
	lea	rsi, [r10 + 1]
	sub	rsi, rdx
	cmp	rax, rsi
	jge	.label_376
.label_388:
	add	rdx, rax
	mov	qword ptr [rcx], rdx
	mov	r11d, 1
	jmp	.label_353
.label_376:
	add	rdx, rax
	mov	qword ptr [rcx], rdx
	xor	r11d, r11d
.label_353:
	or	r11d, r9d
	mov	rsi, qword ptr [r8 + 0x20]
	test	rsi, rsi
	js	.label_401
	mov	rcx, r10
	sub	rcx, rsi
	lea	r9, [rdi + 0x88]
	mov	rax, qword ptr [rdi + 0x88]
	cmp	rcx, rax
	jl	.label_405
	jmp	.label_354
.label_401:
	lea	r9, [rdi + 0x88]
	mov	rax, qword ptr [rdi + 0x88]
	lea	rcx, [r10 + 1]
	sub	rcx, rsi
	cmp	rax, rcx
	jge	.label_354
.label_405:
	add	rsi, rax
	mov	qword ptr [r9], rsi
	mov	eax, 1
	jmp	.label_361
.label_354:
	add	rsi, rax
	mov	qword ptr [r9], rsi
	xor	eax, eax
.label_361:
	or	r11d, eax
	mov	rsi, qword ptr [r8 + 0x18]
	test	rsi, rsi
	js	.label_367
	mov	rdx, r10
	sub	rdx, rsi
	mov	rcx, rdi
	sub	rcx, -0x80
	mov	rax, qword ptr [rdi + 0x80]
	cmp	rdx, rax
	jl	.label_399
	jmp	.label_380
.label_367:
	mov	rcx, rdi
	sub	rcx, -0x80
	mov	rax, qword ptr [rdi + 0x80]
	lea	rdx, [r10 + 1]
	sub	rdx, rsi
	cmp	rax, rdx
	jge	.label_380
.label_399:
	add	rsi, rax
	mov	qword ptr [rcx], rsi
	mov	eax, 1
	jmp	.label_381
.label_380:
	add	rsi, rax
	mov	qword ptr [rcx], rsi
	xor	eax, eax
.label_381:
	or	r11d, eax
	mov	rsi, qword ptr [r8 + 0x10]
	test	rsi, rsi
	js	.label_386
	mov	rdx, r10
	sub	rdx, rsi
	lea	rcx, [rdi + 0x78]
	mov	rax, qword ptr [rdi + 0x78]
	cmp	rdx, rax
	jl	.label_390
	jmp	.label_394
.label_386:
	lea	rcx, [rdi + 0x78]
	mov	rax, qword ptr [rdi + 0x78]
	lea	rdx, [r10 + 1]
	sub	rdx, rsi
	cmp	rax, rdx
	jge	.label_394
.label_390:
	add	rsi, rax
	mov	qword ptr [rcx], rsi
	mov	eax, 1
	jmp	.label_397
.label_394:
	add	rsi, rax
	mov	qword ptr [rcx], rsi
	xor	eax, eax
.label_397:
	or	r11d, eax
	mov	rsi, qword ptr [r8 + 8]
	test	rsi, rsi
	js	.label_369
	mov	rdx, r10
	sub	rdx, rsi
	lea	rcx, [rdi + 0x70]
	mov	rax, qword ptr [rdi + 0x70]
	cmp	rdx, rax
	jl	.label_403
	jmp	.label_349
.label_369:
	lea	rcx, [rdi + 0x70]
	mov	rax, qword ptr [rdi + 0x70]
	lea	rdx, [r10 + 1]
	sub	rdx, rsi
	cmp	rax, rdx
	jge	.label_349
.label_403:
	add	rsi, rax
	mov	qword ptr [rcx], rsi
	mov	eax, 1
	jmp	.label_355
.label_349:
	add	rsi, rax
	mov	qword ptr [rcx], rsi
	xor	eax, eax
.label_355:
	or	r11d, eax
	mov	rcx, qword ptr [r8]
	test	rcx, rcx
	js	.label_360
	sub	r10, rcx
	lea	rsi, [rdi + 0x68]
	mov	rax, qword ptr [rdi + 0x68]
	cmp	r10, rax
	jl	.label_363
	jmp	.label_368
.label_360:
	lea	rsi, [rdi + 0x68]
	mov	rax, qword ptr [rdi + 0x68]
	inc	r10
	sub	r10, rcx
	cmp	rax, r10
	jge	.label_368
.label_363:
	add	rcx, rax
	mov	qword ptr [rsi], rcx
	mov	eax, 1
	jmp	.label_374
.label_368:
	add	rcx, rax
	mov	qword ptr [rsi], rcx
	xor	eax, eax
.label_374:
	or	r11d, eax
	je	.label_378
	xor	eax, eax
	ret	
.label_387:
	lea	esi, [rdx + 0x7fffffff]
	lea	rcx, [rdi + 0x98]
	mov	eax, dword ptr [rdi + 0x98]
	cmp	esi, eax
	jge	.label_377
.label_370:
	sub	eax, edx
	mov	dword ptr [rcx], eax
	mov	r9d, 1
	jmp	.label_384
.label_377:
	sub	eax, edx
	mov	dword ptr [rcx], eax
	xor	r9d, r9d
.label_384:
	mov	rdx, qword ptr [r8 + 0x28]
	test	rdx, rdx
	js	.label_391
	lea	rcx, [rdi + 0x90]
	mov	rsi, qword ptr [rdi + 0x90]
	lea	rax, [r10 + 1]
	xor	rax, rdx
	cmp	rsi, rax
	jl	.label_393
	jmp	.label_396
.label_391:
	lea	rax, [rdx + r10]
	lea	rcx, [rdi + 0x90]
	mov	rsi, qword ptr [rdi + 0x90]
	cmp	rax, rsi
	jge	.label_396
.label_393:
	sub	rsi, rdx
	mov	qword ptr [rcx], rsi
	mov	r11d, 1
	jmp	.label_375
.label_396:
	sub	rsi, rdx
	mov	qword ptr [rcx], rsi
	xor	r11d, r11d
.label_375:
	or	r11d, r9d
	mov	rsi, qword ptr [r8 + 0x20]
	test	rsi, rsi
	js	.label_406
	lea	r9, [rdi + 0x88]
	mov	rcx, qword ptr [rdi + 0x88]
	lea	rax, [r10 + 1]
	xor	rax, rsi
	cmp	rcx, rax
	jl	.label_350
	jmp	.label_357
.label_406:
	lea	rax, [rsi + r10]
	lea	r9, [rdi + 0x88]
	mov	rcx, qword ptr [rdi + 0x88]
	cmp	rax, rcx
	jge	.label_357
.label_350:
	sub	rcx, rsi
	mov	qword ptr [r9], rcx
	mov	eax, 1
	jmp	.label_364
.label_357:
	sub	rcx, rsi
	mov	qword ptr [r9], rcx
	xor	eax, eax
.label_364:
	or	r11d, eax
	mov	rsi, qword ptr [r8 + 0x18]
	test	rsi, rsi
	js	.label_371
	mov	rcx, rdi
	sub	rcx, -0x80
	mov	rax, qword ptr [rdi + 0x80]
	lea	rdx, [r10 + 1]
	xor	rdx, rsi
	cmp	rax, rdx
	jl	.label_373
	jmp	.label_379
.label_371:
	lea	r9, [rsi + r10]
	mov	rcx, rdi
	sub	rcx, -0x80
	mov	rax, qword ptr [rdi + 0x80]
	cmp	r9, rax
	jge	.label_379
.label_373:
	sub	rax, rsi
	mov	qword ptr [rcx], rax
	mov	eax, 1
	jmp	.label_383
.label_379:
	sub	rax, rsi
	mov	qword ptr [rcx], rax
	xor	eax, eax
.label_383:
	or	r11d, eax
	mov	rsi, qword ptr [r8 + 0x10]
	test	rsi, rsi
	js	.label_389
	lea	rcx, [rdi + 0x78]
	mov	rax, qword ptr [rdi + 0x78]
	lea	rdx, [r10 + 1]
	xor	rdx, rsi
	cmp	rax, rdx
	jl	.label_392
	jmp	.label_395
.label_389:
	lea	rdx, [rsi + r10]
	lea	rcx, [rdi + 0x78]
	mov	rax, qword ptr [rdi + 0x78]
	cmp	rdx, rax
	jge	.label_395
.label_392:
	sub	rax, rsi
	mov	qword ptr [rcx], rax
	mov	eax, 1
	jmp	.label_398
.label_395:
	sub	rax, rsi
	mov	qword ptr [rcx], rax
	xor	eax, eax
.label_398:
	or	r11d, eax
	mov	rsi, qword ptr [r8 + 8]
	test	rsi, rsi
	js	.label_400
	lea	rcx, [rdi + 0x70]
	mov	rax, qword ptr [rdi + 0x70]
	lea	rdx, [r10 + 1]
	xor	rdx, rsi
	cmp	rax, rdx
	jl	.label_404
	jmp	.label_351
.label_400:
	lea	rdx, [rsi + r10]
	lea	rcx, [rdi + 0x70]
	mov	rax, qword ptr [rdi + 0x70]
	cmp	rdx, rax
	jge	.label_351
.label_404:
	sub	rax, rsi
	mov	qword ptr [rcx], rax
	mov	eax, 1
	jmp	.label_356
.label_351:
	sub	rax, rsi
	mov	qword ptr [rcx], rax
	xor	eax, eax
.label_356:
	or	r11d, eax
	mov	rcx, qword ptr [r8]
	test	rcx, rcx
	js	.label_362
	lea	r8, [rdi + 0x68]
	mov	rsi, qword ptr [rdi + 0x68]
	inc	r10
	xor	r10, rcx
	cmp	rsi, r10
	jl	.label_365
	jmp	.label_372
.label_362:
	add	r10, rcx
	lea	r8, [rdi + 0x68]
	mov	rsi, qword ptr [rdi + 0x68]
	cmp	r10, rsi
	jge	.label_372
.label_365:
	sub	rsi, rcx
	mov	qword ptr [r8], rsi
	mov	eax, 1
	jmp	.label_402
.label_372:
	sub	rsi, rcx
	mov	qword ptr [r8], rsi
	xor	eax, eax
.label_402:
	or	r11d, eax
	je	.label_378
	xor	eax, eax
	ret	
.label_378:
	mov	byte ptr [rdi + 0xa1], 1
	mov	al, 1
	ret	
	.section	.text
	.align	32
	#Procedure 0x40508c
	.globl sub_40508c
	.type sub_40508c, @function
sub_40508c:

	nop	dword ptr [rax]
.label_407:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x405095
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_60]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_61]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_62]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_407
	test	rsi, rsi
	je	.label_407
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_408:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x405105
	.globl sub_405105
	.type sub_405105, @function
sub_405105:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40510f
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_408
	call	rpl_calloc
	test	rax, rax
	je	.label_408
	pop	rcx
	ret	
.label_409:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x405135
	.globl sub_405135
	.type sub_405135, @function
sub_405135:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40513d

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
	je	.label_409
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
	.section	.text
	.align	32
	#Procedure 0x4051a0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_129
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_410
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4051c5
	.globl sub_4051c5
	.type sub_4051c5, @function
sub_4051c5:

	nop	word ptr cs:[rax + rax]
.label_411:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4051d5
	.globl sub_4051d5
	.type sub_4051d5, @function
sub_4051d5:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4051d9
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_60]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_61]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_62]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_411
	test	rsi, rsi
	je	.label_411
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
	#Procedure 0x405240

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_412
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_414
.label_412:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_414:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_415
	cmp	r10d, 0x29
	jae	.label_424
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_413
.label_424:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_413:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_415
	cmp	r10d, 0x29
	jae	.label_422
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_423
.label_422:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_423:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_415
	cmp	r10d, 0x29
	jae	.label_420
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_421
.label_420:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_421:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_415
	cmp	r10d, 0x29
	jae	.label_418
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_419
.label_418:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_419:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_415
	cmp	r10d, 0x29
	jae	.label_416
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_417
.label_416:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_417:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_415
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_415
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_415
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_415
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_415:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	32
	#Procedure 0x405422
	.globl sub_405422
	.type sub_405422, @function
sub_405422:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405430
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
	#Procedure 0x4054a5
	.globl sub_4054a5
	.type sub_4054a5, @function
sub_4054a5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4054b0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_425
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_425
	test	byte ptr [rbx + 1], 1
	je	.label_425
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_425:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	32
	#Procedure 0x4054e3
	.globl sub_4054e3
	.type sub_4054e3, @function
sub_4054e3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4054f0

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
	je	.label_426
	cmp	r15, -2
	jb	.label_426
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_426
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_426:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x405546
	.globl sub_405546
	.type sub_405546, @function
sub_405546:

	nop	word ptr cs:[rax + rax]
.label_427:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x405555
	.globl sub_405555
	.type sub_405555, @function
sub_405555:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40555b

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_428
	test	rax, rax
	je	.label_427
.label_428:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x405570

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	mov	edi, 1
	jmp	usage
	.section	.text
	.align	32
	#Procedure 0x40557a
	.globl sub_40557a
	.type sub_40557a, @function
sub_40557a:

	nop	word ptr [rax + rax]
.label_429:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x405585
	.globl sub_405585
	.type sub_405585, @function
sub_405585:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405593
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
	je	.label_430
	test	r15, r15
	je	.label_429
.label_430:
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
	#Procedure 0x4055d0

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
	mov	rbx, rsi
	mov	r15, rdi
	call	strlen
	mov	r12, rax
	mov	qword ptr [rsp + 0x18], rbx
	mov	rbp, qword ptr [rbx]
	test	rbp, rbp
	je	.label_439
	test	r14, r14
	je	.label_431
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 0x20], r14
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_436:
	mov	rdi, rbp
	mov	rsi, r15
	mov	rdx, r12
	call	strncmp
	test	eax, eax
	jne	.label_434
	mov	rdi, rbp
	call	strlen
	cmp	rax, r12
	je	.label_432
	mov	rax, qword ptr [rsp + 8]
	cmp	rax, -1
	je	.label_433
	mov	rdi, rax
	imul	rdi, r13
	add	rdi, qword ptr [rsp + 0x20]
	mov	rsi, r14
	mov	rdx, r13
	call	memcmp
	test	eax, eax
	je	.label_434
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_434
.label_433:
	mov	qword ptr [rsp + 8], rbx
	nop	word ptr [rax + rax]
.label_434:
	mov	rax, qword ptr [rsp + 0x18]
	mov	rbp, qword ptr [rax + rbx*8 + 8]
	inc	rbx
	add	r14, r13
	test	rbp, rbp
	jne	.label_436
	jmp	.label_437
.label_439:
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_437
.label_431:
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	xor	ebx, ebx
	nop	dword ptr [rax + rax]
.label_438:
	mov	rdi, rbp
	mov	rsi, r15
	mov	rdx, r12
	call	strncmp
	test	eax, eax
	jne	.label_435
	mov	rdi, rbp
	call	strlen
	cmp	rax, r12
	je	.label_432
	mov	rax, qword ptr [rsp + 8]
	cmp	rax, -1
	cmove	rax, rbx
	mov	qword ptr [rsp + 8], rax
	je	.label_435
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	nop	word ptr [rax + rax]
.label_435:
	mov	rax, qword ptr [rsp + 0x18]
	mov	rbp, qword ptr [rax + rbx*8 + 8]
	inc	rbx
	test	rbp, rbp
	jne	.label_438
.label_437:
	mov	rax, qword ptr [rsp + 0x10]
	test	al, 1
	mov	rbx, -2
	cmove	rbx, qword ptr [rsp + 8]
.label_432:
	mov	rax, rbx
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
	#Procedure 0x405748
	.globl sub_405748
	.type sub_405748, @function
sub_405748:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405750

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x405761
	.globl sub_405761
	.type sub_405761, @function
sub_405761:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405770

	.globl parse_datetime2
	.type parse_datetime2, @function
parse_datetime2:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x408
	mov	qword ptr [rsp + 0x60], r9
	mov	r13, r8
	mov	r14d, ecx
	mov	r15, rdx
	mov	r12, rsi
	mov	qword ptr [rsp + 0x68], rdi
	mov	rdi, r12
	call	strlen
	mov	qword ptr [rsp + 0x58], rax
	test	r15, r15
	jne	.label_693
	lea	r15, [rsp + 0x390]
	mov	rdi, r15
	call	gettime
.label_693:
	mov	rax, qword ptr [r15]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [r15 + 8]
	mov	qword ptr [rsp + 8], rax
	movzx	eax, byte ptr [r12]
	add	eax, -9
	cmp	eax, 0x17
	mov	rbp, r12
	ja	.label_697
	mov	ecx, 0x80001f
	mov	rbp, r12
	nop	word ptr cs:[rax + rax]
.label_708:
	bt	ecx, eax
	jae	.label_697
	movzx	eax, byte ptr [rbp + 1]
	inc	rbp
	add	eax, -9
	cmp	eax, 0x18
	jb	.label_708
.label_697:
	mov	esi, OFFSET FLAT:label_440
	mov	edx, 4
	mov	rdi, rbp
	call	strncmp
	test	eax, eax
	jne	.label_446
	lea	rbx, [rbp + 4]
	mov	edi, 1
	mov	rax, rbx
	jmp	.label_447
	.section	.text
	.align	32
	#Procedure 0x405828
	.globl sub_405828
	.type sub_405828, @function
sub_405828:

	nop	dword ptr [rax + rax]
.label_462:
	inc	rax
	inc	rdi
.label_447:
	movzx	ecx, byte ptr [rax]
	cmp	cl, 0x5c
	je	.label_456
	test	cl, cl
	je	.label_446
	cmp	cl, 0x22
	jne	.label_462
	jmp	.label_465
	.section	.text
	.align	32
	#Procedure 0x40584c
	.globl sub_40584c
	.type sub_40584c, @function
sub_40584c:

	nop	dword ptr [rax]
.label_456:
	movzx	ecx, byte ptr [rax + 1]
	inc	rax
	cmp	cl, 0x22
	je	.label_462
	cmp	cl, 0x5c
	je	.label_462
.label_446:
	xor	eax, eax
	mov	qword ptr [rsp + 0x78], rax
	mov	rbx, r13
.label_590:
	lea	rdx, [rsp + 0x358]
	mov	rdi, rbx
	mov	rsi, r15
	call	localtime_rz
	test	rax, rax
	je	.label_485
	movabs	r15, 0x7fffffffffffffff
	cmp	byte ptr [rbp], 0
	mov	eax, OFFSET FLAT:label_487
	cmovne	rax, rbp
	mov	qword ptr [rsp + 0xb8], rax
	and	r14b, 1
	mov	byte ptr [rsp + 0x191], r14b
	movsxd	rax, dword ptr [rsp + 0x36c]
	add	rax, 0x76c
	mov	qword ptr [rsp + 0xe0], rax
	mov	qword ptr [rsp + 0xe8], 0
	movsxd	rax, dword ptr [rsp + 0x368]
	inc	rax
	mov	qword ptr [rsp + 0xf0], rax
	movsxd	rax, dword ptr [rsp + 0x364]
	mov	qword ptr [rsp + 0xf8], rax
	movsxd	rax, dword ptr [rsp + 0x360]
	mov	qword ptr [rsp + 0x100], rax
	movsxd	rax, dword ptr [rsp + 0x35c]
	mov	qword ptr [rsp + 0x108], rax
	movsxd	rax, dword ptr [rsp + 0x358]
	mov	qword ptr [rsp + 0x110], rax
	mov	rax, qword ptr [rsp + 8]
	cdqe	
	mov	qword ptr [rsp + 0x118], rax
	mov	eax, dword ptr [rsp + 0x378]
	mov	dword ptr [rsp + 0x40], eax
	mov	dword ptr [rsp + 0xd4], 2
	xorps	xmm0, xmm0
	movups	xmmword ptr [rsp + 0x14a], xmm0
	movups	xmmword ptr [rsp + 0x140], xmm0
	movups	xmmword ptr [rsp + 0x130], xmm0
	movups	xmmword ptr [rsp + 0x120], xmm0
	movups	xmmword ptr [rsp + 0x180], xmm0
	movups	xmmword ptr [rsp + 0x170], xmm0
	movups	xmmword ptr [rsp + 0x160], xmm0
	mov	byte ptr [rsp + 0x190], 0
	mov	byte ptr [rsp + 0x198], 0
	mov	word ptr [rsp + 0x196], 0
	mov	dword ptr [rsp + 0x192], 0
	mov	rcx, qword ptr [rsp + 0x388]
	mov	qword ptr [rsp + 0x1a0], rcx
	mov	dword ptr [rsp + 0x1a8], 0x10d
	mov	dword ptr [rsp + 0x1ac], eax
	mov	qword ptr [rsp + 0x1b0], 0
	lea	rax, [r15 - 0x76a700]
	mov	rbp, qword ptr [rsp]
	cmp	rbp, rax
	jg	.label_488
	lea	rax, [rbp + 0x76a700]
	mov	qword ptr [rsp + 0x220], rax
	lea	rsi, [rsp + 0x220]
	lea	rdx, [rsp + 0x290]
	mov	rdi, rbx
	call	localtime_rz
	test	rax, rax
	je	.label_597
	mov	rax, qword ptr [rsp + 0x2c0]
	test	rax, rax
	je	.label_597
	mov	ecx, dword ptr [rsp + 0x2b0]
	cmp	ecx, dword ptr [rsp + 0x1ac]
	jne	.label_605
.label_597:
	lea	rax, [r15 - 0xed4e00]
	cmp	rbp, rax
	jg	.label_488
	lea	rax, [rbp + 0xed4e00]
	mov	qword ptr [rsp + 0x220], rax
	lea	rsi, [rsp + 0x220]
	lea	rdx, [rsp + 0x290]
	mov	rdi, rbx
	call	localtime_rz
	test	rax, rax
	je	.label_455
	mov	rax, qword ptr [rsp + 0x2c0]
	test	rax, rax
	je	.label_455
	mov	ecx, dword ptr [rsp + 0x2b0]
	cmp	ecx, dword ptr [rsp + 0x1ac]
	jne	.label_605
.label_455:
	lea	rax, [r15 - 0x163f500]
	cmp	rbp, rax
	jg	.label_488
	add	rbp, 0x163f500
	mov	qword ptr [rsp + 0x220], rbp
	lea	rsi, [rsp + 0x220]
	lea	rdx, [rsp + 0x290]
	mov	rdi, rbx
	call	localtime_rz
	test	rax, rax
	je	.label_488
	mov	rax, qword ptr [rsp + 0x2c0]
	test	rax, rax
	je	.label_488
	mov	ecx, dword ptr [rsp + 0x2b0]
	cmp	ecx, dword ptr [rsp + 0x1ac]
	je	.label_488
.label_605:
	mov	qword ptr [rsp + 0x1b0], rax
	mov	dword ptr [rsp + 0x1b8], 0x10d
	mov	dword ptr [rsp + 0x1bc], ecx
	mov	qword ptr [rsp + 0x1c0], 0
.label_488:
	mov	rdi, qword ptr [rsp + 0x1a0]
	test	rdi, rdi
	je	.label_659
	mov	rsi, qword ptr [rsp + 0x1b0]
	test	rsi, rsi
	je	.label_659
	call	strcmp
	test	eax, eax
	jne	.label_659
	mov	dword ptr [rsp + 0x1ac], 0xffffffff
	mov	qword ptr [rsp + 0x1b0], 0
.label_659:
	lea	rdi, [rsp + 0xb8]
	call	yyparse
	test	eax, eax
	mov	al, byte ptr [rsp + 0x191]
	je	.label_653
	test	al, al
	je	.label_678
	add	r12, qword ptr [rsp + 0x58]
	cmp	r12, qword ptr [rsp + 0xb8]
	jbe	.label_483
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_516
	jmp	.label_517
.label_485:
	xor	ebp, ebp
	jmp	.label_445
.label_653:
	test	al, al
	mov	r12, qword ptr [rsp + 0x68]
	jne	.label_687
.label_564:
	cmp	byte ptr [rsp + 0x158], 0
	je	.label_691
	lea	rax, [rsp + 0x110]
	movups	xmm0, xmmword ptr [rax]
	movups	xmmword ptr [r12], xmm0
.label_662:
	mov	rdi, qword ptr [rsp + 0x60]
	mov	bpl, 1
	cmp	byte ptr [rsp + 0x191], 0
	je	.label_445
	test	rdi, rdi
	je	.label_700
	mov	esi, OFFSET FLAT:label_458
	mov	r14, rdi
	call	strcmp
	mov	r15, rbx
	xor	edi, edi
	test	eax, eax
	je	.label_704
	mov	esi, OFFSET FLAT:label_706
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	mov	rsi, r14
	call	dbg_printf
	jmp	.label_444
.label_678:
	xor	ebp, ebp
	jmp	.label_445
.label_465:
	xor	eax, eax
	cmp	rdi, 0x65
	jl	.label_448
	call	malloc
	mov	rsi, rax
	xor	ebp, ebp
	test	rsi, rsi
	mov	edi, 0
	jne	.label_452
	jmp	.label_460
.label_483:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_461
.label_517:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rsi, qword ptr [rsp + 0xb8]
	xor	ebp, ebp
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
.label_445:
	cmp	rbx, r13
	je	.label_481
	mov	rdi, rbx
	call	tzfree
.label_481:
	mov	rdi, qword ptr [rsp + 0x78]
.label_460:
	call	free
	mov	eax, ebp
	add	rsp, 0x408
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_691:
	mov	rax, qword ptr [rsp + 0x160]
	mov	rcx, qword ptr [rsp + 0x180]
	mov	rdx, rax
	or	rdx, rcx
	or	rdx, qword ptr [rsp + 0x168]
	or	rdx, qword ptr [rsp + 0x178]
	mov	rsi, qword ptr [rsp + 0x188]
	add	rsi, qword ptr [rsp + 0x170]
	or	rsi, rdx
	mov	r14b, byte ptr [rsp + 0x191]
	cmp	rsi, 2
	jl	.label_684
	test	r14b, r14b
	je	.label_510
	cmp	rcx, 2
	jl	.label_515
	mov	edi, OFFSET FLAT:label_520
	xor	eax, eax
	call	dbg_printf
	mov	rax, qword ptr [rsp + 0x160]
.label_515:
	cmp	rax, 2
	jl	.label_525
	mov	edi, OFFSET FLAT:label_608
	xor	eax, eax
	call	dbg_printf
.label_525:
	cmp	qword ptr [rsp + 0x168], 2
	jl	.label_532
	mov	edi, OFFSET FLAT:label_534
	xor	eax, eax
	call	dbg_printf
.label_532:
	cmp	qword ptr [rsp + 0x178], 2
	jl	.label_539
	mov	edi, OFFSET FLAT:label_544
	xor	eax, eax
	call	dbg_printf
.label_539:
	mov	rax, qword ptr [rsp + 0x188]
	add	rax, qword ptr [rsp + 0x170]
	xor	ebp, ebp
	cmp	rax, 2
	jl	.label_445
	mov	edi, OFFSET FLAT:label_550
	xor	eax, eax
	call	dbg_printf
	jmp	.label_445
.label_448:
	lea	rsi, [rsp + 0x3a0]
.label_452:
	mov	qword ptr [rsp + 0x78], rax
	mov	qword ptr [rsp + 0x10], r13
	mov	cl, byte ptr [rbx]
	mov	rax, rsi
	cmp	cl, 0x22
	jne	.label_555
	mov	r13, rbx
	jmp	.label_560
.label_555:
	xor	edx, edx
	cmp	cl, 0x5c
	sete	dl
	movzx	ecx, byte ptr [rbx + rdx]
	mov	byte ptr [rax], cl
	inc	rax
	lea	r13, [rbx + rdx + 1]
	movzx	ecx, byte ptr [rbx + rdx + 1]
	cmp	cl, 0x22
	mov	rbx, r13
	jne	.label_555
.label_560:
	mov	byte ptr [rax], 0
	mov	qword ptr [rsp + 0x60], rsi
	mov	rdi, rsi
	call	tzalloc
	mov	rbx, rax
	test	rbx, rbx
	je	.label_574
	inc	r13
	mov	eax, 0x80001f
	nop	word ptr [rax + rax]
.label_587:
	mov	rbp, r13
	movzx	ecx, byte ptr [rbp]
	add	ecx, -9
	cmp	ecx, 0x17
	ja	.label_669
	lea	r13, [rbp + 1]
	bt	eax, ecx
	jb	.label_587
.label_669:
	mov	r13, qword ptr [rsp + 0x10]
	jmp	.label_590
.label_684:
	mov	qword ptr [rsp], rbx
	mov	rbx, qword ptr [rsp + 0xe0]
	test	rbx, rbx
	js	.label_593
	cmp	qword ptr [rsp + 0xe8], 2
	jne	.label_598
	cmp	rbx, 0x45
	mov	eax, 0x7d0
	mov	ebp, 0x76c
	cmovl	rbp, rax
	add	rbp, rbx
	test	r14b, r14b
	je	.label_604
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_611
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	mov	rsi, rbx
	mov	rdx, rbp
	call	dbg_printf
.label_604:
	test	rbp, rbp
	jns	.label_619
	jmp	.label_622
.label_574:
	xor	ebp, ebp
	jmp	.label_481
.label_700:
	mov	r15, rbx
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_625
	jmp	.label_626
.label_704:
	mov	esi, OFFSET FLAT:label_628
.label_626:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
.label_444:
	mov	r14, qword ptr [r12]
	mov	ebx, dword ptr [r12 + 8]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_634
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	mov	rsi, r14
	mov	edx, ebx
	call	dbg_printf
	lea	rsi, [rsp + 0x290]
	mov	rdi, r12
	call	gmtime_r
	test	rax, rax
	je	.label_645
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_648
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	lea	r14, [rsp + 0x220]
	lea	rcx, [rsp + 0x290]
	mov	esi, 0x64
	mov	edx, OFFSET FLAT:label_454
	xor	r8d, r8d
	xor	r9d, r9d
	mov	rdi, r14
	call	nstrftime
	xor	eax, eax
	mov	rdi, rbx
	mov	rsi, r14
	call	dbg_printf
.label_645:
	lea	rdx, [rsp + 0x80]
	mov	rbx, r15
	mov	rdi, rbx
	mov	rsi, r12
	call	localtime_rz
	test	rax, rax
	je	.label_445
	mov	r12, rbx
	movsxd	r15, dword ptr [rsp + 0xa8]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_673
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	lea	rdi, [rsp + 0x220]
	lea	rcx, [rsp + 0x80]
	mov	esi, 0x64
	mov	edx, OFFSET FLAT:label_454
	xor	r8d, r8d
	xor	r9d, r9d
	call	nstrftime
	mov	eax, r15d
	shr	eax, 0x1f
	imul	rbx, r15, -0x6e5d4c3b
	shr	rbx, 0x20
	add	ebx, r15d
	mov	ecx, ebx
	shr	ecx, 0x1f
	sar	ebx, 0xb
	add	ebx, ecx
	mov	r9d, ebx
	neg	r9d
	cmp	r15, -0xe10
	lea	r8d, [rax + rax + 0x2b]
	cmovg	r9d, ebx
	lea	rdi, [rsp + 0x330]
	mov	esi, 1
	mov	edx, 0x1b
	mov	ecx, OFFSET FLAT:label_138
	xor	eax, eax
	call	__sprintf_chk
	imul	edx, ebx, 0xe10
	mov	esi, r15d
	sub	esi, edx
	mov	ecx, esi
	neg	ecx
	cmovl	ecx, esi
	cmp	r15d, edx
	je	.label_703
	cdqe	
	lea	rax, [rsp + rax + 0x330]
	movsxd	r9, ecx
	imul	rdx, r9, -0x77777777
	shr	rdx, 0x20
	add	edx, r9d
	mov	esi, edx
	shr	esi, 0x1f
	sar	edx, 5
	add	edx, esi
	imul	r8d, edx, 0x3c
	imul	rdi, r9, 0x1b4e81b5
	mov	rbx, rdi
	shr	rbx, 0x3f
	shr	rdi, 0x26
	movsxd	rdx, edx
	imul	rsi, rdx, 0x66666667
	mov	rcx, rsi
	shr	rcx, 0x3f
	sar	rsi, 0x22
	add	esi, ecx
	add	esi, esi
	lea	ecx, [rsi + rsi*4]
	sub	edx, ecx
	add	edx, 0x30
	sub	r9d, r8d
	mov	byte ptr [rax], 0x3a
	lea	ecx, [rdi + rbx + 0x30]
	mov	byte ptr [rax + 1], cl
	mov	byte ptr [rax + 2], dl
	je	.label_709
	mov	byte ptr [rax + 3], 0x3a
	movsxd	rcx, r9d
	imul	rcx, rcx, 0x66666667
	mov	rdx, rcx
	shr	rdx, 0x3f
	sar	rcx, 0x22
	lea	esi, [rcx + rdx]
	lea	ecx, [rcx + rdx + 0x30]
	mov	byte ptr [rax + 4], cl
	add	esi, esi
	lea	ecx, [rsi + rsi*4]
	neg	ecx
	lea	ecx, [r9 + rcx + 0x30]
	mov	byte ptr [rax + 5], cl
	add	rax, 6
	jmp	.label_630
.label_510:
	xor	ebp, ebp
	jmp	.label_445
.label_593:
	mov	rbp, rbx
.label_622:
	lea	rdx, [rbp + r15]
	mov	ecx, 0x7ffff894
	mov	eax, 0xfffff894
	sub	eax, ebp
	cmp	rdx, -0x76c
	mov	rbx, qword ptr [rsp]
	jl	.label_497
	sub	rcx, rbp
	shr	rcx, 0x20
	je	.label_507
	jmp	.label_497
.label_687:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_513
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
	cmp	byte ptr [rsp + 0x158], 0
	jne	.label_524
	cmp	qword ptr [rsp + 0x188], 0
	jne	.label_530
	mov	rax, qword ptr [rsp + 0x60]
	test	rax, rax
	jne	.label_533
	mov	rbp, rbx
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_540
	jmp	.label_474
.label_598:
	mov	rbp, rbx
.label_619:
	lea	rcx, [rbp + 0x7ffff894]
	lea	eax, [rbp - 0x76c]
	shr	rcx, 0x20
	mov	rbx, qword ptr [rsp]
	je	.label_507
.label_497:
	mov	dword ptr [rsp + 0x34], eax
	test	r14b, r14b
	je	.label_549
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_476
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	mov	rsi, rbp
	call	dbg_printf
	jmp	.label_549
.label_507:
	mov	dword ptr [rsp + 0x34], eax
	mov	rax, qword ptr [rsp + 0xf0]
	lea	ecx, [rax - 1]
	cmp	rax, -0x7fffffff
	mov	dword ptr [rsp + 0x30], ecx
	jl	.label_549
	dec	rax
	cmp	rax, 0x7fffffff
	jg	.label_549
	mov	rax, qword ptr [rsp + 0xf8]
	mov	dword ptr [rsp + 0x2c], eax
	sub	rax, -0x80000000
	shr	rax, 0x20
	je	.label_567
.label_549:
	cmp	byte ptr [rsp + 0x191], 0
	je	.label_576
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_647
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
	jmp	.label_445
.label_576:
	xor	ebp, ebp
	jmp	.label_445
.label_709:
	add	rax, 3
.label_630:
	mov	byte ptr [rax], 0
.label_703:
	lea	rsi, [rsp + 0x220]
	lea	rdx, [rsp + 0x330]
	xor	eax, eax
	mov	rdi, r14
	call	dbg_printf
	mov	rbx, r12
	jmp	.label_445
.label_524:
	mov	rbp, rbx
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_603
	jmp	.label_474
.label_567:
	mov	rax, qword ptr [rsp + 0x180]
	test	rax, rax
	jne	.label_601
	cmp	byte ptr [rsp + 0x159], 0
	je	.label_612
	mov	rcx, qword ptr [rsp + 0x168]
	or	rcx, qword ptr [rsp + 0x160]
	jne	.label_612
.label_601:
	mov	rdx, qword ptr [rsp + 0x100]
	mov	ecx, dword ptr [rsp + 0xd4]
	test	ecx, ecx
	je	.label_621
	cmp	ecx, 1
	jne	.label_627
	lea	rdi, [rdx - 1]
	lea	rbp, [rdx + 0xc]
	cmp	rdx, 0xc
	mov	rsi, -1
	cmove	rsi, rdx
	cmp	rdi, 0xb
	cmovb	rsi, rbp
	jmp	.label_629
.label_530:
	mov	rbp, rbx
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_640
.label_474:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbx
	mov	rdx, rcx
	call	__fprintf_chk
.label_599:
	mov	rax, qword ptr [rsp + 0x188]
	cmp	qword ptr [rsp + 0x170], 0
	je	.label_646
	test	rax, rax
	mov	rbx, rbp
	jne	.label_652
	cmp	dword ptr [rsp + 0xcc], 0
	jle	.label_584
	mov	rdi, qword ptr [rip + stderr]
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_658
	xor	eax, eax
	call	__fprintf_chk
	mov	rax, qword ptr [rsp + 0x188]
	jmp	.label_652
.label_646:
	mov	rbx, rbp
.label_652:
	test	rax, rax
	je	.label_584
	mov	r12, rbx
	mov	r14, qword ptr [rip + stderr]
	movsxd	rbx, dword ptr [rsp + 0xd0]
	mov	eax, ebx
	shr	eax, 0x1f
	imul	rbp, rbx, -0x6e5d4c3b
	shr	rbp, 0x20
	add	ebp, ebx
	mov	ecx, ebp
	shr	ecx, 0x1f
	sar	ebp, 0xb
	add	ebp, ecx
	mov	r9d, ebp
	neg	r9d
	cmp	rbx, -0xe10
	lea	r8d, [rax + rax + 0x2b]
	cmovg	r9d, ebp
	lea	rdi, [rsp + 0x330]
	mov	esi, 1
	mov	edx, 0x1b
	mov	ecx, OFFSET FLAT:label_138
	xor	eax, eax
	call	__sprintf_chk
	imul	edx, ebp, 0xe10
	mov	esi, ebx
	sub	esi, edx
	mov	ecx, esi
	neg	ecx
	cmovl	ecx, esi
	cmp	ebx, edx
	je	.label_690
	cdqe	
	lea	rax, [rsp + rax + 0x330]
	movsxd	rcx, ecx
	imul	rdx, rcx, -0x77777777
	shr	rdx, 0x20
	add	edx, ecx
	mov	esi, edx
	shr	esi, 0x1f
	sar	edx, 5
	add	edx, esi
	imul	r8d, edx, 0x3c
	imul	rdi, rcx, 0x1b4e81b5
	mov	rbp, rdi
	shr	rbp, 0x3f
	shr	rdi, 0x26
	movsxd	rdx, edx
	imul	rbx, rdx, 0x66666667
	mov	rsi, rbx
	shr	rsi, 0x3f
	sar	rbx, 0x22
	add	ebx, esi
	add	ebx, ebx
	lea	esi, [rbx + rbx*4]
	sub	edx, esi
	add	edx, 0x30
	sub	ecx, r8d
	mov	byte ptr [rax], 0x3a
	lea	esi, [rdi + rbp + 0x30]
	mov	byte ptr [rax + 1], sil
	mov	byte ptr [rax + 2], dl
	jne	.label_696
	add	rax, 3
	jmp	.label_449
.label_533:
	mov	rbp, rbx
	cmp	rbx, r13
	jne	.label_453
	mov	esi, OFFSET FLAT:label_458
	mov	rdi, rax
	mov	r14, rax
	call	strcmp
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	test	eax, eax
	jne	.label_466
	mov	esi, OFFSET FLAT:label_473
	jmp	.label_474
.label_621:
	lea	rdi, [rdx - 1]
	xor	ebp, ebp
	cmp	rdx, 0xc
	mov	rsi, -1
	cmove	rsi, rbp
	cmp	rdi, 0xb
	jmp	.label_479
.label_627:
	cmp	rdx, 0x18
	mov	rsi, -1
.label_479:
	cmovb	rsi, rdx
.label_629:
	mov	dword ptr [rsp + 0x28], esi
	test	esi, esi
	js	.label_490
	mov	ecx, dword ptr [rsp + 0x108]
	mov	dword ptr [rsp + 0x24], ecx
	mov	ecx, dword ptr [rsp + 0x110]
	mov	dword ptr [rsp + 0x20], ecx
	cmp	byte ptr [rsp + 0x191], 0
	je	.label_493
	mov	r12, r13
	xor	edi, edi
	test	rax, rax
	je	.label_499
	mov	esi, OFFSET FLAT:label_503
	jmp	.label_504
.label_490:
	cmp	byte ptr [rsp + 0x191], 0
	je	.label_506
	cmp	ecx, 1
	mov	eax, OFFSET FLAT:label_132
	mov	edx, OFFSET FLAT:label_129
	cmove	rdx, rax
	test	ecx, ecx
	mov	ebx, OFFSET FLAT:label_511
	cmovne	rbx, rdx
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_512
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rsi, qword ptr [rsp + 0x100]
	xor	eax, eax
	mov	rdi, rcx
	mov	rdx, rbx
	mov	rbx, qword ptr [rsp]
	call	dbg_printf
	jmp	.label_445
.label_696:
	mov	byte ptr [rax + 3], 0x3a
	movsxd	rdx, ecx
	imul	rdx, rdx, 0x66666667
	mov	rsi, rdx
	shr	rsi, 0x3f
	sar	rdx, 0x22
	lea	edi, [rdx + rsi]
	lea	edx, [rdx + rsi + 0x30]
	mov	byte ptr [rax + 4], dl
	add	edi, edi
	lea	edx, [rdi + rdi*4]
	neg	edx
	lea	ecx, [rcx + rdx + 0x30]
	mov	byte ptr [rax + 5], cl
	add	rax, 6
.label_449:
	mov	byte ptr [rax], 0
.label_690:
	lea	rcx, [rsp + 0x330]
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_554
	xor	eax, eax
	mov	rdi, r14
	call	__fprintf_chk
	mov	rbx, r12
	mov	r12, qword ptr [rsp + 0x68]
.label_584:
	mov	rsi, qword ptr [rip + stderr]
	mov	edi, 0xa
	call	fputc
	jmp	.label_564
.label_612:
	mov	dword ptr [rsp + 0x20], 0
	mov	dword ptr [rsp + 0x24], 0
	mov	dword ptr [rsp + 0x28], 0
	mov	qword ptr [rsp + 0x118], 0
	cmp	byte ptr [rsp + 0x191], 0
	je	.label_493
	mov	edi, OFFSET FLAT:label_581
	xor	eax, eax
	call	dbg_printf
	jmp	.label_493
.label_453:
	mov	r14, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_585
	mov	edx, 5
	mov	rbx, rax
	call	dcgettext
	mov	rcx, rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rdx, rcx
	mov	rcx, rbx
	call	__fprintf_chk
	jmp	.label_599
.label_499:
	mov	esi, OFFSET FLAT:label_600
.label_504:
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx, qword ptr [rsp + 0x20]
	mov	rbp, rbx
	shr	rbp, 0x20
	mov	r9d, dword ptr [rsp + 0x28]
	lea	r13, [rsp + 0x220]
	mov	esi, 0x64
	mov	edx, 1
	mov	ecx, 0x64
	mov	r8d, OFFSET FLAT:label_606
	mov	eax, 0
	mov	rdi, r13
	push	rbx
	push	rbp
	call	__snprintf_chk
	add	rsp, 0x10
	xor	eax, eax
	mov	rdi, r14
	mov	rsi, r13
	call	dbg_printf
	mov	r13, r12
	mov	rbx, qword ptr [rsp]
.label_493:
	mov	rax, qword ptr [rsp + 0x168]
	or	rax, qword ptr [rsp + 0x160]
	or	rax, qword ptr [rsp + 0x180]
	je	.label_661
	mov	dword ptr [rsp + 0x40], 0xffffffff
.label_661:
	cmp	qword ptr [rsp + 0x170], 0
	je	.label_636
	mov	eax, dword ptr [rsp + 0xcc]
	mov	dword ptr [rsp + 0x40], eax
	jmp	.label_641
.label_636:
	mov	eax, dword ptr [rsp + 0x40]
.label_641:
	mov	rcx, qword ptr [rsp + 0x20]
	mov	dword ptr [rsp + 0x1e8], ecx
	shr	rcx, 0x20
	mov	dword ptr [rsp + 0x1ec], ecx
	mov	rcx, qword ptr [rsp + 0x28]
	mov	dword ptr [rsp + 0x1f0], ecx
	shr	rcx, 0x20
	mov	dword ptr [rsp + 0x1f4], ecx
	mov	rcx, qword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x1f8], ecx
	shr	rcx, 0x20
	mov	dword ptr [rsp + 0x1fc], ecx
	mov	dword ptr [rsp + 0x208], eax
	mov	dword ptr [rsp + 0x38], 0xffffffff
	lea	rsi, [rsp + 0x20]
	mov	rdi, rbx
	call	mktime_z
	mov	r12, rax
	cmp	dword ptr [rsp + 0x38], 0
	js	.label_664
	mov	rax, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [rsp + 0x28]
	xor	rax, qword ptr [rsp + 0x1e8]
	xor	rcx, qword ptr [rsp + 0x1f0]
	mov	edx, ecx
	or	edx, eax
	shr	rax, 0x20
	or	edx, eax
	shr	rcx, 0x20
	mov	rax, qword ptr [rsp + 0x30]
	xor	rax, qword ptr [rsp + 0x1f8]
	mov	esi, eax
	or	esi, ecx
	or	esi, edx
	shr	rax, 0x20
	or	eax, esi
	je	.label_666
.label_664:
	mov	rax, qword ptr [rsp + 0x188]
	mov	qword ptr [rsp + 0x58], rax
	test	rax, rax
	je	.label_569
	mov	byte ptr [rsp + 0x292], 0x58
	mov	word ptr [rsp + 0x290], 0x5858
	movsxd	rbx, dword ptr [rsp + 0xd0]
	mov	eax, ebx
	shr	eax, 0x1f
	imul	rbp, rbx, -0x6e5d4c3b
	shr	rbp, 0x20
	add	ebp, ebx
	mov	ecx, ebp
	shr	ecx, 0x1f
	sar	ebp, 0xb
	add	ebp, ecx
	mov	r9d, ebp
	neg	r9d
	cmp	rbx, -0xe10
	lea	rdi, [rsp + 0x293]
	lea	r8d, [rax + rax + 0x2b]
	cmovg	r9d, ebp
	mov	esi, 1
	mov	edx, 0x1b
	mov	ecx, OFFSET FLAT:label_138
	xor	eax, eax
	call	__sprintf_chk
	imul	ecx, ebp, 0xe10
	mov	esi, ebx
	sub	esi, ecx
	mov	edx, esi
	neg	edx
	cmovl	edx, esi
	cmp	ebx, ecx
	je	.label_707
	cdqe	
	lea	rcx, [rsp + rax + 0x293]
	movsxd	rax, edx
	imul	rdx, rax, -0x77777777
	shr	rdx, 0x20
	add	edx, eax
	mov	esi, edx
	shr	esi, 0x1f
	sar	edx, 5
	add	edx, esi
	imul	r8d, edx, 0x3c
	imul	rdi, rax, 0x1b4e81b5
	mov	rbp, rdi
	shr	rbp, 0x3f
	shr	rdi, 0x26
	movsxd	rdx, edx
	imul	rbx, rdx, 0x66666667
	mov	rsi, rbx
	shr	rsi, 0x3f
	sar	rbx, 0x22
	add	ebx, esi
	add	ebx, ebx
	lea	esi, [rbx + rbx*4]
	sub	edx, esi
	add	edx, 0x30
	sub	eax, r8d
	mov	byte ptr [rcx], 0x3a
	lea	esi, [rdi + rbp + 0x30]
	mov	byte ptr [rcx + 1], sil
	mov	byte ptr [rcx + 2], dl
	lea	rcx, [rcx + 3]
	je	.label_442
	mov	byte ptr [rcx], 0x3a
	movsxd	rdx, eax
	imul	rdx, rdx, 0x66666667
	mov	rsi, rdx
	shr	rsi, 0x3f
	sar	rdx, 0x22
	lea	edi, [rdx + rsi]
	lea	edx, [rdx + rsi + 0x30]
	mov	byte ptr [rcx + 1], dl
	add	edi, edi
	lea	edx, [rdi + rdi*4]
	neg	edx
	lea	eax, [rax + rdx + 0x30]
	mov	byte ptr [rcx + 2], al
	add	rcx, 3
.label_442:
	mov	byte ptr [rcx], 0
.label_707:
	lea	rdi, [rsp + 0x290]
	call	tzalloc
	mov	r14, rax
	test	r14, r14
	je	.label_501
	mov	rax, qword ptr [rsp + 0x1e8]
	mov	dword ptr [rsp + 0x20], eax
	shr	rax, 0x20
	mov	dword ptr [rsp + 0x24], eax
	mov	rax, qword ptr [rsp + 0x1f0]
	mov	dword ptr [rsp + 0x28], eax
	shr	rax, 0x20
	mov	dword ptr [rsp + 0x2c], eax
	mov	rax, qword ptr [rsp + 0x1f8]
	mov	dword ptr [rsp + 0x30], eax
	shr	rax, 0x20
	mov	dword ptr [rsp + 0x34], eax
	mov	eax, dword ptr [rsp + 0x208]
	mov	dword ptr [rsp + 0x40], eax
	mov	dword ptr [rsp + 0x38], 0xffffffff
	lea	rsi, [rsp + 0x20]
	mov	rdi, r14
	call	mktime_z
	mov	r12, rax
	cmp	dword ptr [rsp + 0x38], 0
	js	.label_617
	mov	rax, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [rsp + 0x28]
	xor	rax, qword ptr [rsp + 0x1e8]
	xor	rcx, qword ptr [rsp + 0x1f0]
	mov	edx, ecx
	or	edx, eax
	shr	rax, 0x20
	or	edx, eax
	shr	rcx, 0x20
	mov	rbx, qword ptr [rsp + 0x30]
	xor	rbx, qword ptr [rsp + 0x1f8]
	mov	ebp, ebx
	or	ebp, ecx
	or	ebp, edx
	shr	rbx, 0x20
	mov	rdi, r14
	call	tzfree
	or	ebx, ebp
	mov	rbx, qword ptr [rsp]
	jne	.label_569
.label_666:
	cmp	qword ptr [rsp + 0x168], 0
	je	.label_561
	mov	rax, qword ptr [rsp + 0x160]
	test	rax, rax
	jne	.label_561
	mov	rcx, qword ptr [rsp + 0xc0]
	test	rcx, rcx
	jle	.label_566
	mov	eax, dword ptr [rsp + 0x38]
	cmp	eax, dword ptr [rsp + 0xc8]
	setne	al
	jmp	.label_572
.label_501:
	cmp	byte ptr [rsp + 0x191], 0
	je	.label_579
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_582
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	lea	rsi, [rsp + 0x290]
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
.label_579:
	xor	ebp, ebp
	mov	rbx, qword ptr [rsp]
	jmp	.label_445
.label_506:
	xor	ebp, ebp
	jmp	.label_445
.label_466:
	mov	esi, OFFSET FLAT:label_595
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbx
	mov	rdx, rcx
	mov	rcx, r14
	call	__fprintf_chk
	jmp	.label_599
.label_617:
	mov	rdi, r14
	call	tzfree
	mov	rbx, qword ptr [rsp]
.label_569:
	mov	qword ptr [rsp + 0x10], r13
	mov	r9, qword ptr [rsp + 0x1e8]
	mov	r10, qword ptr [rsp + 0x1f0]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rsp + 0x28]
	cmp	r9d, ebp
	sete	r8b
	mov	rsi, r9
	shr	rsi, 0x20
	mov	rdi, rbp
	shr	rdi, 0x20
	cmp	esi, edi
	sete	r14b
	mov	rcx, r10
	shr	rcx, 0x20
	mov	rdx, rax
	shr	rdx, 0x20
	mov	qword ptr [rsp + 0x1e0], rcx
	mov	qword ptr [rsp + 0x1d8], rdx
	cmp	ecx, edx
	sete	r11b
	mov	r12, qword ptr [rsp + 0x1f8]
	mov	r13, qword ptr [rsp + 0x30]
	cmp	r12d, r13d
	sete	r15b
	mov	qword ptr [rsp + 0x60], r12
	shr	r12, 0x20
	mov	qword ptr [rsp + 0x68], r13
	shr	r13, 0x20
	cmp	r12d, r13d
	sete	dl
	cmp	r10d, eax
	setne	cl
	cmp	byte ptr [rsp + 0x191], 0
	je	.label_613
	mov	byte ptr [rsp + 0x1f], dl
	mov	byte ptr [rsp + 0x1d0], r11b
	mov	qword ptr [rsp + 0x300], rdi
	mov	qword ptr [rsp + 0x308], rsi
	mov	qword ptr [rsp + 0x310], rax
	mov	qword ptr [rsp + 0x318], r10
	mov	qword ptr [rsp + 0x320], rbp
	mov	qword ptr [rsp + 0x328], r9
	and	r8b, cl
	and	r14b, r8b
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_650
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_672
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rsp + 0x2f8], rax
	lea	rdi, [rsp + 0x290]
	lea	rcx, [rsp + 0x1e8]
	mov	esi, 0x64
	mov	edx, OFFSET FLAT:label_454
	xor	r8d, r8d
	xor	r9d, r9d
	call	nstrftime
	mov	rbp, rax
	cmp	ebp, 0x63
	jg	.label_685
	mov	rax, qword ptr [rsp + 0x188]
	test	rax, rax
	je	.label_685
	mov	byte ptr [rsp + 0x70], r15b
	mov	byte ptr [rsp + 8], r14b
	movsxd	rbx, dword ptr [rsp + 0xd0]
	mov	r14d, 0x64
	sub	r14d, ebp
	mov	eax, ebx
	shr	eax, 0x1f
	imul	r15, rbx, -0x6e5d4c3b
	shr	r15, 0x20
	add	r15d, ebx
	mov	ecx, r15d
	shr	ecx, 0x1f
	sar	r15d, 0xb
	add	r15d, ecx
	mov	r9d, r15d
	neg	r9d
	cmp	rbx, -0xe10
	lea	r8d, [rax + rax + 0x2b]
	cmovg	r9d, r15d
	lea	rdi, [rsp + 0x80]
	mov	esi, 1
	mov	edx, 0x1b
	mov	ecx, OFFSET FLAT:label_138
	xor	eax, eax
	call	__sprintf_chk
	imul	edx, r15d, 0xe10
	mov	esi, ebx
	sub	esi, edx
	mov	ecx, esi
	neg	ecx
	cmovl	ecx, esi
	cmp	ebx, edx
	movsxd	rdx, ebp
	lea	rdi, [rsp + rdx + 0x290]
	movsxd	rsi, r14d
	je	.label_694
	cdqe	
	lea	rax, [rsp + rax + 0x80]
	movsxd	r9, ecx
	imul	rdx, r9, -0x77777777
	shr	rdx, 0x20
	add	edx, r9d
	mov	ebp, edx
	shr	ebp, 0x1f
	sar	edx, 5
	add	edx, ebp
	imul	r8d, edx, 0x3c
	imul	rbx, r9, 0x1b4e81b5
	mov	r10, rbx
	shr	r10, 0x3f
	shr	rbx, 0x26
	movsxd	rdx, edx
	imul	rcx, rdx, 0x66666667
	mov	rbp, rcx
	shr	rbp, 0x3f
	sar	rcx, 0x22
	add	ecx, ebp
	add	ecx, ecx
	lea	ecx, [rcx + rcx*4]
	sub	edx, ecx
	add	edx, 0x30
	sub	r9d, r8d
	mov	byte ptr [rax], 0x3a
	lea	ecx, [rbx + r10 + 0x30]
	mov	byte ptr [rax + 1], cl
	mov	byte ptr [rax + 2], dl
	je	.label_459
	mov	byte ptr [rax + 3], 0x3a
	movsxd	rcx, r9d
	imul	rcx, rcx, 0x66666667
	mov	rdx, rcx
	shr	rdx, 0x3f
	sar	rcx, 0x22
	lea	ebp, [rcx + rdx]
	lea	ecx, [rcx + rdx + 0x30]
	mov	byte ptr [rax + 4], cl
	add	ebp, ebp
	lea	ecx, [rbp + rbp*4]
	neg	ecx
	lea	ecx, [r9 + rcx + 0x30]
	mov	byte ptr [rax + 5], cl
	add	rax, 6
	jmp	.label_495
.label_566:
	xor	eax, eax
.label_572:
	movzx	eax, al
	cmp	rcx, rax
	jge	.label_548
	test	rcx, rcx
	jle	.label_519
	mov	eax, dword ptr [rsp + 0x38]
	cmp	eax, dword ptr [rsp + 0xc8]
	setne	al
	jmp	.label_522
.label_548:
	test	rcx, rcx
	jle	.label_527
	mov	eax, dword ptr [rsp + 0x38]
	cmp	eax, dword ptr [rsp + 0xc8]
	setne	al
	jmp	.label_531
.label_459:
	add	rax, 3
.label_495:
	mov	byte ptr [rax], 0
.label_694:
	lea	r9, [rsp + 0x80]
	mov	edx, 1
	mov	rcx, -1
	mov	r8d, OFFSET FLAT:label_457
	xor	eax, eax
	call	__snprintf_chk
	mov	r14b, byte ptr [rsp + 8]
	mov	r15b, byte ptr [rsp + 0x70]
.label_685:
	and	r15b, byte ptr [rsp + 0x1f]
	mov	byte ptr [rsp + 0x70], r15b
	and	r14b, byte ptr [rsp + 0x1d0]
	lea	rbx, [rsp + 0x290]
	xor	eax, eax
	mov	rdi, qword ptr [rsp + 0x2f8]
	mov	rsi, rbx
	call	dbg_printf
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_557
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	lea	rcx, [rsp + 0x20]
	mov	esi, 0x64
	mov	edx, OFFSET FLAT:label_454
	xor	r8d, r8d
	xor	r9d, r9d
	mov	rdi, rbx
	call	nstrftime
	mov	r15, rax
	cmp	r15d, 0x63
	jg	.label_573
	mov	rax, qword ptr [rsp + 0x188]
	test	rax, rax
	je	.label_573
	mov	qword ptr [rsp + 0x1d0], rbp
	mov	byte ptr [rsp + 8], r14b
	movsxd	rbx, dword ptr [rsp + 0xd0]
	mov	r14d, 0x64
	sub	r14d, r15d
	mov	eax, ebx
	shr	eax, 0x1f
	imul	rbp, rbx, -0x6e5d4c3b
	shr	rbp, 0x20
	add	ebp, ebx
	mov	ecx, ebp
	shr	ecx, 0x1f
	sar	ebp, 0xb
	add	ebp, ecx
	mov	r9d, ebp
	neg	r9d
	cmp	rbx, -0xe10
	lea	r8d, [rax + rax + 0x2b]
	cmovg	r9d, ebp
	lea	rdi, [rsp + 0x80]
	mov	esi, 1
	mov	edx, 0x1b
	mov	ecx, OFFSET FLAT:label_138
	xor	eax, eax
	call	__sprintf_chk
	imul	edx, ebp, 0xe10
	mov	esi, ebx
	sub	esi, edx
	mov	ecx, esi
	neg	ecx
	cmovl	ecx, esi
	cmp	ebx, edx
	movsxd	rdx, r15d
	lea	rdi, [rsp + rdx + 0x290]
	movsxd	rsi, r14d
	je	.label_545
	cdqe	
	lea	rax, [rsp + rax + 0x80]
	movsxd	r9, ecx
	imul	rdx, r9, -0x77777777
	shr	rdx, 0x20
	add	edx, r9d
	mov	ebp, edx
	shr	ebp, 0x1f
	sar	edx, 5
	add	edx, ebp
	imul	r8d, edx, 0x3c
	imul	rbx, r9, 0x1b4e81b5
	mov	r10, rbx
	shr	r10, 0x3f
	shr	rbx, 0x26
	movsxd	rdx, edx
	imul	rcx, rdx, 0x66666667
	mov	rbp, rcx
	shr	rbp, 0x3f
	sar	rcx, 0x22
	add	ecx, ebp
	add	ecx, ecx
	lea	ecx, [rcx + rcx*4]
	sub	edx, ecx
	add	edx, 0x30
	sub	r9d, r8d
	mov	byte ptr [rax], 0x3a
	lea	ecx, [rbx + r10 + 0x30]
	mov	byte ptr [rax + 1], cl
	mov	byte ptr [rax + 2], dl
	je	.label_620
	mov	byte ptr [rax + 3], 0x3a
	movsxd	rcx, r9d
	imul	rcx, rcx, 0x66666667
	mov	rdx, rcx
	shr	rdx, 0x3f
	sar	rcx, 0x22
	lea	ebp, [rcx + rdx]
	lea	ecx, [rcx + rdx + 0x30]
	mov	byte ptr [rax + 4], cl
	add	ebp, ebp
	lea	ecx, [rbp + rbp*4]
	neg	ecx
	lea	ecx, [r9 + rcx + 0x30]
	mov	byte ptr [rax + 5], cl
	add	rax, 6
	jmp	.label_643
.label_620:
	add	rax, 3
.label_643:
	mov	byte ptr [rax], 0
.label_545:
	lea	r9, [rsp + 0x80]
	mov	edx, 1
	mov	rcx, -1
	mov	r8d, OFFSET FLAT:label_457
	xor	eax, eax
	call	__snprintf_chk
	mov	r14b, byte ptr [rsp + 8]
	mov	rbp, qword ptr [rsp + 0x1d0]
.label_573:
	and	r14b, byte ptr [rsp + 0x70]
	mov	byte ptr [rsp + 8], r14b
	lea	r14, [rsp + 0x290]
	xor	eax, eax
	mov	rdi, rbp
	mov	rsi, r14
	call	dbg_printf
	cmp	r12d, r13d
	mov	eax, OFFSET FLAT:label_129
	mov	r9d, OFFSET FLAT:label_679
	cmove	r9, rax
	mov	rcx, qword ptr [rsp + 0x60]
	mov	rdx, qword ptr [rsp + 0x68]
	cmp	ecx, edx
	mov	r15d, OFFSET FLAT:label_680
	mov	r10d, OFFSET FLAT:label_680
	cmove	r10, rax
	mov	r12, qword ptr [rsp + 0x1e0]
	mov	r13, qword ptr [rsp + 0x1d8]
	cmp	r12d, r13d
	mov	r11d, OFFSET FLAT:label_680
	cmove	r11, rax
	mov	rcx, qword ptr [rsp + 0x318]
	mov	rdx, qword ptr [rsp + 0x310]
	cmp	ecx, edx
	mov	ebx, OFFSET FLAT:label_680
	cmove	rbx, rax
	mov	rcx, qword ptr [rsp + 0x308]
	mov	rdx, qword ptr [rsp + 0x300]
	cmp	ecx, edx
	mov	ebp, OFFSET FLAT:label_680
	cmove	rbp, rax
	mov	rcx, qword ptr [rsp + 0x328]
	mov	rdx, qword ptr [rsp + 0x320]
	cmp	ecx, edx
	cmove	r15, rax
	sub	rsp, 8
	mov	esi, 0x64
	mov	edx, 1
	mov	ecx, 0x64
	mov	r8d, OFFSET FLAT:label_681
	mov	eax, 0
	mov	rdi, r14
	push	r15
	push	rbp
	push	rbx
	push	r11
	push	r10
	call	__snprintf_chk
	add	rsp, 0x30
	test	eax, eax
	mov	rbx, qword ptr [rsp]
	js	.label_518
	movabs	rcx, 0xffffffff00000000
	cmp	eax, 0x63
	mov	edx, 0x63
	cmovb	edx, eax
	inc	edx
	lea	rax, [rdx - 1]
	shl	rdx, 0x20
	add	rdx, rcx
.label_475:
	mov	rsi, rdx
	test	rax, rax
	jle	.label_470
	lea	rdx, [rsi + rcx]
	cmp	byte ptr [rsp + rax + 0x28f], 0x20
	lea	rax, [rax - 1]
	je	.label_475
.label_470:
	sar	rsi, 0x20
	mov	byte ptr [rsp + rsi + 0x290], 0
.label_518:
	lea	rsi, [rsp + 0x290]
	mov	edi, OFFSET FLAT:label_589
	xor	eax, eax
	call	dbg_printf
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_491
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
	cmp	byte ptr [rsp + 8], 0
	je	.label_496
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_498
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
.label_496:
	cmp	r12d, r13d
	je	.label_509
	mov	rax, qword ptr [rsp + 0x60]
	mov	rcx, qword ptr [rsp + 0x68]
	cmp	eax, ecx
	je	.label_509
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_551
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
.label_509:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_526
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
	cmp	qword ptr [rsp + 0x58], 0
	je	.label_535
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_537
	jmp	.label_538
.label_535:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_542
.label_538:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, OFFSET FLAT:label_546
	xor	eax, eax
	mov	rsi, rcx
	call	dbg_printf
.label_613:
	xor	ebp, ebp
	mov	r13, qword ptr [rsp + 0x10]
	jmp	.label_445
.label_519:
	xor	eax, eax
.label_522:
	movzx	eax, al
	mov	rdx, rcx
	sub	rdx, rax
	movabs	rax, 0xedb6db6db6db6db7
	cmp	rdx, rax
	jge	.label_553
	jmp	.label_529
.label_527:
	xor	eax, eax
.label_531:
	movzx	eax, al
	mov	rdx, rcx
	sub	rdx, rax
	movabs	rax, 0x1249249249249249
	cmp	rdx, rax
	jg	.label_529
.label_553:
	test	rcx, rcx
	jle	.label_565
	mov	eax, dword ptr [rsp + 0x38]
	cmp	eax, dword ptr [rsp + 0xc8]
	setne	al
	jmp	.label_580
.label_565:
	xor	eax, eax
.label_580:
	movzx	eax, al
	sub	rcx, rax
	lea	rax, [rcx*8]
	sub	rax, rcx
	js	.label_610
	mov	rsi, r15
	sub	rsi, rax
	mov	ecx, dword ptr [rsp + 0xc8]
	mov	edx, dword ptr [rsp + 0x38]
	lea	edi, [rcx + 7]
	sub	edi, edx
	movsxd	rdi, edi
	imul	rbp, rdi, -0x6db6db6d
	shr	rbp, 0x20
	add	ebp, edi
	mov	ebx, ebp
	shr	ebx, 0x1f
	sar	ebp, 2
	add	ebp, ebx
	lea	ebx, [rbp*8]
	sub	ebx, ebp
	sub	edi, ebx
	mov	rbx, qword ptr [rsp]
	movsxd	rdi, edi
	jmp	.label_577
.label_610:
	mov	ecx, dword ptr [rsp + 0xc8]
	mov	edx, dword ptr [rsp + 0x38]
	lea	esi, [rcx + 7]
	sub	esi, edx
	movsxd	rsi, esi
	imul	rdi, rsi, -0x6db6db6d
	shr	rdi, 0x20
	add	edi, esi
	mov	ebp, edi
	shr	ebp, 0x1f
	sar	edi, 2
	add	edi, ebp
	lea	ebp, [rdi*8]
	sub	ebp, edi
	sub	esi, ebp
	movsxd	rsi, esi
	lea	rdi, [r15 + 1]
	sub	rdi, rax
.label_577:
	cmp	rsi, rdi
	jl	.label_529
	add	ecx, 7
	sub	ecx, edx
	movsxd	rcx, ecx
	imul	rdx, rcx, -0x6db6db6d
	shr	rdx, 0x20
	add	edx, ecx
	mov	esi, edx
	shr	esi, 0x1f
	sar	edx, 2
	add	edx, esi
	lea	esi, [rdx*8]
	sub	esi, edx
	sub	ecx, esi
	movsxd	rcx, ecx
	add	rcx, rax
	movsxd	rax, dword ptr [rsp + 0x2c]
	test	rax, rax
	js	.label_615
	mov	rdx, r15
	sub	rdx, rax
	cmp	rdx, rcx
	jge	.label_670
	jmp	.label_632
.label_615:
	lea	rdx, [r15 + 1]
	sub	rdx, rax
	cmp	rcx, rdx
	jl	.label_632
.label_670:
	mov	edx, 0x80000000
	lea	rdx, [rcx + rdx]
	add	rdx, rax
	shr	rdx, 0x20
	je	.label_635
.label_632:
	add	ecx, eax
	mov	dword ptr [rsp + 0x2c], ecx
.label_529:
	cmp	byte ptr [rsp + 0x191], 0
	jne	.label_642
	jmp	.label_464
.label_635:
	mov	r14, r13
	add	ecx, eax
	mov	dword ptr [rsp + 0x2c], ecx
	mov	dword ptr [rsp + 0x40], 0xffffffff
	lea	rsi, [rsp + 0x20]
	mov	rdi, rbx
	call	mktime_z
	mov	cl, byte ptr [rsp + 0x191]
	mov	r12, rax
	cmp	rax, -1
	je	.label_651
	test	cl, cl
	je	.label_656
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_521
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rsp + 8], rax
	lea	rdi, [rsp + 0xb8]
	lea	rsi, [rsp + 0x290]
	call	str_days
	mov	qword ptr [rsp + 0x58], rax
	lea	rdi, [rsp + 0x220]
	lea	rcx, [rsp + 0x20]
	mov	esi, 0x64
	mov	edx, OFFSET FLAT:label_454
	xor	r8d, r8d
	xor	r9d, r9d
	call	nstrftime
	mov	rbp, rax
	cmp	ebp, 0x63
	jg	.label_480
	mov	rax, qword ptr [rsp + 0x188]
	test	rax, rax
	je	.label_480
	movsxd	r13, dword ptr [rsp + 0xd0]
	mov	eax, 0x64
	sub	eax, ebp
	mov	dword ptr [rsp + 0x70], eax
	mov	eax, r13d
	shr	eax, 0x1f
	imul	rbx, r13, -0x6e5d4c3b
	shr	rbx, 0x20
	add	ebx, r13d
	mov	ecx, ebx
	shr	ecx, 0x1f
	sar	ebx, 0xb
	add	ebx, ecx
	mov	r9d, ebx
	neg	r9d
	cmp	r13, -0xe10
	lea	r8d, [rax + rax + 0x2b]
	cmovg	r9d, ebx
	lea	rdi, [rsp + 0x80]
	mov	esi, 1
	mov	edx, 0x1b
	mov	ecx, OFFSET FLAT:label_138
	xor	eax, eax
	call	__sprintf_chk
	imul	edx, ebx, 0xe10
	mov	esi, r13d
	sub	esi, edx
	mov	ecx, esi
	neg	ecx
	cmovl	ecx, esi
	cmp	r13d, edx
	movsxd	rdx, ebp
	lea	rdi, [rsp + rdx + 0x220]
	movsxd	rsi, dword ptr [rsp + 0x70]
	je	.label_702
	cdqe	
	lea	rax, [rsp + rax + 0x80]
	movsxd	r9, ecx
	imul	rdx, r9, -0x77777777
	shr	rdx, 0x20
	add	edx, r9d
	mov	ebp, edx
	shr	ebp, 0x1f
	sar	edx, 5
	add	edx, ebp
	imul	r8d, edx, 0x3c
	imul	rbx, r9, 0x1b4e81b5
	mov	r10, rbx
	shr	r10, 0x3f
	shr	rbx, 0x26
	movsxd	rdx, edx
	imul	rcx, rdx, 0x66666667
	mov	rbp, rcx
	shr	rbp, 0x3f
	sar	rcx, 0x22
	add	ecx, ebp
	add	ecx, ecx
	lea	ecx, [rcx + rcx*4]
	sub	edx, ecx
	add	edx, 0x30
	sub	r9d, r8d
	mov	byte ptr [rax], 0x3a
	lea	ecx, [rbx + r10 + 0x30]
	mov	byte ptr [rax + 1], cl
	mov	byte ptr [rax + 2], dl
	je	.label_451
	mov	byte ptr [rax + 3], 0x3a
	movsxd	rcx, r9d
	imul	rcx, rcx, 0x66666667
	mov	rdx, rcx
	shr	rdx, 0x3f
	sar	rcx, 0x22
	lea	ebp, [rcx + rdx]
	lea	ecx, [rcx + rdx + 0x30]
	mov	byte ptr [rax + 4], cl
	add	ebp, ebp
	lea	ecx, [rbp + rbp*4]
	neg	ecx
	lea	ecx, [r9 + rcx + 0x30]
	mov	byte ptr [rax + 5], cl
	add	rax, 6
	jmp	.label_484
.label_651:
	test	cl, cl
	mov	r13, r14
	mov	rbx, qword ptr [rsp]
	je	.label_464
.label_642:
	mov	qword ptr [rsp + 0x10], r13
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_502
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	lea	rdi, [rsp + 0xb8]
	lea	rsi, [rsp + 0x290]
	call	str_days
	mov	r15, rax
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	r13d, dword ptr [rsp + 0xc8]
	lea	rdi, [rsp + 0x220]
	lea	rcx, [rsp + 0x20]
	mov	esi, 0x64
	mov	edx, OFFSET FLAT:label_454
	xor	r8d, r8d
	xor	r9d, r9d
	call	nstrftime
	mov	r12, rax
	cmp	r12d, 0x63
	jg	.label_543
	mov	rax, qword ptr [rsp + 0x188]
	test	rax, rax
	je	.label_543
	mov	qword ptr [rsp + 0x58], rbp
	mov	qword ptr [rsp + 0x60], r15
	mov	qword ptr [rsp + 8], r14
	movsxd	rbx, dword ptr [rsp + 0xd0]
	mov	r14d, 0x64
	sub	r14d, r12d
	mov	eax, ebx
	shr	eax, 0x1f
	imul	r15, rbx, -0x6e5d4c3b
	shr	r15, 0x20
	add	r15d, ebx
	mov	ecx, r15d
	shr	ecx, 0x1f
	sar	r15d, 0xb
	add	r15d, ecx
	mov	r9d, r15d
	neg	r9d
	cmp	rbx, -0xe10
	lea	r8d, [rax + rax + 0x2b]
	cmovg	r9d, r15d
	lea	rdi, [rsp + 0x80]
	mov	esi, 1
	mov	edx, 0x1b
	mov	ecx, OFFSET FLAT:label_138
	xor	eax, eax
	call	__sprintf_chk
	imul	edx, r15d, 0xe10
	mov	esi, ebx
	sub	esi, edx
	mov	ecx, esi
	neg	ecx
	cmovl	ecx, esi
	cmp	ebx, edx
	movsxd	rdx, r12d
	lea	rdi, [rsp + rdx + 0x220]
	movsxd	rsi, r14d
	je	.label_571
	cdqe	
	lea	rax, [rsp + rax + 0x80]
	movsxd	r9, ecx
	imul	rdx, r9, -0x77777777
	shr	rdx, 0x20
	add	edx, r9d
	mov	ebp, edx
	shr	ebp, 0x1f
	sar	edx, 5
	add	edx, ebp
	imul	r8d, edx, 0x3c
	imul	rbx, r9, 0x1b4e81b5
	mov	r10, rbx
	shr	r10, 0x3f
	shr	rbx, 0x26
	movsxd	rdx, edx
	imul	rcx, rdx, 0x66666667
	mov	rbp, rcx
	shr	rbp, 0x3f
	sar	rcx, 0x22
	add	ecx, ebp
	add	ecx, ecx
	lea	ecx, [rcx + rcx*4]
	sub	edx, ecx
	add	edx, 0x30
	sub	r9d, r8d
	mov	byte ptr [rax], 0x3a
	lea	ecx, [rbx + r10 + 0x30]
	mov	byte ptr [rax + 1], cl
	mov	byte ptr [rax + 2], dl
	je	.label_583
	mov	byte ptr [rax + 3], 0x3a
	movsxd	rcx, r9d
	imul	rcx, rcx, 0x66666667
	mov	rdx, rcx
	shr	rdx, 0x3f
	sar	rcx, 0x22
	lea	ebp, [rcx + rdx]
	lea	ecx, [rcx + rdx + 0x30]
	mov	byte ptr [rax + 4], cl
	add	ebp, ebp
	lea	ecx, [rbp + rbp*4]
	neg	ecx
	lea	ecx, [r9 + rcx + 0x30]
	mov	byte ptr [rax + 5], cl
	add	rax, 6
	jmp	.label_586
.label_583:
	add	rax, 3
.label_586:
	mov	byte ptr [rax], 0
.label_571:
	lea	r9, [rsp + 0x80]
	mov	edx, 1
	mov	rcx, -1
	mov	r8d, OFFSET FLAT:label_457
	xor	eax, eax
	call	__snprintf_chk
	mov	rbx, qword ptr [rsp]
	mov	r14, qword ptr [rsp + 8]
	mov	r15, qword ptr [rsp + 0x60]
	mov	rbp, qword ptr [rsp + 0x58]
.label_543:
	lea	r8, [rsp + 0x220]
	xor	eax, eax
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, rbp
	mov	ecx, r13d
	call	dbg_printf
	mov	r13, qword ptr [rsp + 0x10]
	xor	ebp, ebp
	jmp	.label_445
.label_451:
	add	rax, 3
.label_484:
	mov	byte ptr [rax], 0
.label_702:
	lea	r9, [rsp + 0x80]
	mov	edx, 1
	mov	rcx, -1
	mov	r8d, OFFSET FLAT:label_457
	xor	eax, eax
	call	__snprintf_chk
.label_480:
	lea	rdx, [rsp + 0x220]
	xor	eax, eax
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, qword ptr [rsp + 0x58]
	call	dbg_printf
.label_656:
	mov	r13, r14
	mov	rbx, qword ptr [rsp]
.label_561:
	cmp	byte ptr [rsp + 0x191], 0
	je	.label_668
	mov	rax, qword ptr [rsp + 0x160]
	mov	rcx, qword ptr [rsp + 0x168]
	mov	rdx, rcx
	or	rdx, rax
	jne	.label_671
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_676
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rsp + 8], rax
	movsxd	rax, dword ptr [rsp + 0x34]
	xor	ecx, ecx
	cmp	rax, -0x76d
	setg	cl
	lea	rcx, qword ptr [rcx + label_508]
	imul	rdx, rax, 0x51eb851f
	mov	rsi, rdx
	shr	rsi, 0x3f
	sar	rdx, 0x25
	lea	edi, [rdx + rsi]
	lea	edx, [rdx + rsi + 0x13]
	mov	r8d, 0xffffffed
	sub	r8d, edi
	test	edx, edx
	cmovns	r8d, edx
	imul	edx, edi, 0x64
	sub	eax, edx
	mov	r9d, eax
	neg	r9d
	cmovl	r9d, eax
	lea	rdi, [rsp + 0x80]
	mov	esi, 1
	mov	edx, 0xd
	xor	eax, eax
	call	__sprintf_chk
	mov	ebx, dword ptr [rsp + 0x2c]
	mov	ebp, dword ptr [rsp + 0x30]
	inc	ebp
	mov	r14, r12
	mov	r12, r13
	lea	r13, [rsp + 0x220]
	mov	esi, 0x64
	mov	edx, 1
	mov	ecx, 0x64
	mov	r8d, OFFSET FLAT:label_701
	mov	eax, 0
	mov	rdi, r13
	lea	r9, [rsp + 0x80]
	push	rbx
	mov	rbx, qword ptr [rsp + 8]
	push	rbp
	call	__snprintf_chk
	add	rsp, 0x10
	xor	eax, eax
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, r13
	mov	r13, r12
	mov	r12, r14
	call	dbg_printf
	mov	rax, qword ptr [rsp + 0x160]
	mov	rcx, qword ptr [rsp + 0x168]
.label_671:
	test	rcx, rcx
	je	.label_467
	test	rax, rax
	je	.label_467
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_472
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	lea	rdi, [rsp + 0xb8]
	lea	rsi, [rsp + 0x290]
	call	str_days
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rbx
	mov	rbx, qword ptr [rsp]
	mov	rsi, rcx
	call	dbg_printf
.label_467:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_492
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	lea	rdi, [rsp + 0x220]
	lea	rcx, [rsp + 0x20]
	mov	esi, 0x64
	mov	edx, OFFSET FLAT:label_454
	xor	r8d, r8d
	xor	r9d, r9d
	call	nstrftime
	cmp	eax, 0x63
	jg	.label_505
	mov	rcx, qword ptr [rsp + 0x188]
	test	rcx, rcx
	je	.label_505
	mov	qword ptr [rsp + 8], rbp
	mov	qword ptr [rsp + 0x10], r13
	movsxd	rbx, dword ptr [rsp + 0xd0]
	mov	r13d, 0x64
	sub	r13d, eax
	mov	edx, ebx
	shr	edx, 0x1f
	imul	r14, rbx, -0x6e5d4c3b
	shr	r14, 0x20
	add	r14d, ebx
	mov	rbp, rax
	mov	ecx, r14d
	shr	ecx, 0x1f
	sar	r14d, 0xb
	add	r14d, ecx
	mov	r9d, r14d
	neg	r9d
	cmp	rbx, -0xe10
	lea	r8d, [rdx + rdx + 0x2b]
	cmovg	r9d, r14d
	lea	rdi, [rsp + 0x80]
	mov	esi, 1
	mov	edx, 0x1b
	mov	ecx, OFFSET FLAT:label_138
	xor	eax, eax
	call	__sprintf_chk
	imul	edx, r14d, 0xe10
	mov	esi, ebx
	sub	esi, edx
	mov	ecx, esi
	neg	ecx
	cmovl	ecx, esi
	cmp	ebx, edx
	movsxd	rdx, ebp
	lea	rdi, [rsp + rdx + 0x220]
	movsxd	rsi, r13d
	je	.label_441
	cdqe	
	lea	rax, [rsp + rax + 0x80]
	movsxd	r9, ecx
	imul	rdx, r9, -0x77777777
	shr	rdx, 0x20
	add	edx, r9d
	mov	ebp, edx
	shr	ebp, 0x1f
	sar	edx, 5
	add	edx, ebp
	imul	r8d, edx, 0x3c
	imul	rbx, r9, 0x1b4e81b5
	mov	r10, rbx
	shr	r10, 0x3f
	shr	rbx, 0x26
	movsxd	rdx, edx
	imul	rcx, rdx, 0x66666667
	mov	rbp, rcx
	shr	rbp, 0x3f
	sar	rcx, 0x22
	add	ecx, ebp
	add	ecx, ecx
	lea	ecx, [rcx + rcx*4]
	sub	edx, ecx
	add	edx, 0x30
	sub	r9d, r8d
	mov	byte ptr [rax], 0x3a
	lea	ecx, [rbx + r10 + 0x30]
	mov	byte ptr [rax + 1], cl
	mov	byte ptr [rax + 2], dl
	je	.label_556
	mov	byte ptr [rax + 3], 0x3a
	movsxd	rcx, r9d
	imul	rcx, rcx, 0x66666667
	mov	rdx, rcx
	shr	rdx, 0x3f
	sar	rcx, 0x22
	lea	ebp, [rcx + rdx]
	lea	ecx, [rcx + rdx + 0x30]
	mov	byte ptr [rax + 4], cl
	add	ebp, ebp
	lea	ecx, [rbp + rbp*4]
	neg	ecx
	lea	ecx, [r9 + rcx + 0x30]
	mov	byte ptr [rax + 5], cl
	add	rax, 6
	jmp	.label_450
.label_556:
	add	rax, 3
.label_450:
	mov	byte ptr [rax], 0
.label_441:
	lea	r9, [rsp + 0x80]
	mov	edx, 1
	mov	rcx, -1
	mov	r8d, OFFSET FLAT:label_457
	xor	eax, eax
	call	__snprintf_chk
	mov	r13, qword ptr [rsp + 0x10]
	mov	rbx, qword ptr [rsp]
	mov	rbp, qword ptr [rsp + 8]
.label_505:
	lea	rsi, [rsp + 0x220]
	xor	eax, eax
	mov	rdi, rbp
	call	dbg_printf
.label_668:
	mov	rcx, qword ptr [rsp + 0x128]
	mov	rax, qword ptr [rsp + 0x130]
	or	rcx, qword ptr [rsp + 0x120]
	mov	rdx, rcx
	or	rdx, rax
	je	.label_623
	cmp	byte ptr [rsp + 0x191], 0
	je	.label_631
	test	rcx, rcx
	je	.label_695
	cmp	dword ptr [rsp + 0x2c], 0xf
	je	.label_695
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_638
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
	mov	rax, qword ptr [rsp + 0x130]
.label_695:
	test	rax, rax
	je	.label_631
	cmp	dword ptr [rsp + 0x28], 0xc
	je	.label_631
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_644
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
.label_631:
	mov	r14, r13
	mov	r13, qword ptr [rsp + 0x120]
	test	r13, r13
	js	.label_654
	mov	rcx, r15
	sub	rcx, r13
	movsxd	rax, dword ptr [rsp + 0x34]
	cmp	rcx, rax
	jge	.label_657
	jmp	.label_660
.label_654:
	movsxd	rax, dword ptr [rsp + 0x34]
	lea	rcx, [r15 + 1]
	sub	rcx, r13
	cmp	rax, rcx
	jl	.label_660
.label_657:
	movsxd	rcx, eax
	mov	edx, 0x80000000
	lea	rdx, [r13 + rdx]
	add	rdx, rcx
	shr	rdx, 0x20
	jne	.label_660
	mov	rdi, qword ptr [rsp + 0x128]
	test	rdi, rdi
	js	.label_674
	mov	rdx, r15
	sub	rdx, rdi
	movsxd	rcx, dword ptr [rsp + 0x30]
	cmp	rdx, rcx
	jge	.label_468
	jmp	.label_660
.label_674:
	movsxd	rcx, dword ptr [rsp + 0x30]
	lea	rdx, [r15 + 1]
	sub	rdx, rdi
	cmp	rcx, rdx
	jl	.label_660
.label_468:
	movsxd	rdx, ecx
	mov	esi, 0x80000000
	lea	rsi, [rdi + rsi]
	add	rsi, rdx
	shr	rsi, 0x20
	jne	.label_660
	mov	rbx, qword ptr [rsp + 0x130]
	test	rbx, rbx
	js	.label_688
	mov	rsi, r15
	sub	rsi, rbx
	movsxd	rdx, dword ptr [rsp + 0x2c]
	cmp	rsi, rdx
	jmp	.label_692
.label_688:
	movsxd	rdx, dword ptr [rsp + 0x2c]
	lea	rsi, [r15 + 1]
	sub	rsi, rbx
	cmp	rdx, rsi
.label_692:
	mov	rbp, rdi
	jl	.label_660
	movsxd	rsi, edx
	mov	edi, 0x80000000
	add	rdi, rbx
	add	rdi, rsi
	shr	rdi, 0x20
	je	.label_698
.label_660:
	cmp	byte ptr [rsp + 0x191], 0
	mov	r13, r14
	mov	rbx, qword ptr [rsp]
	je	.label_464
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_705
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	esi, OFFSET FLAT:label_710
	mov	edx, 0x877
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
	xor	ebp, ebp
	jmp	.label_445
.label_698:
	add	r13d, eax
	add	ebp, ecx
	add	ebx, edx
	mov	dword ptr [rsp + 0x34], r13d
	mov	qword ptr [rsp + 0x58], rbp
	mov	dword ptr [rsp + 0x30], ebp
	mov	dword ptr [rsp + 0x2c], ebx
	mov	eax, dword ptr [rsp + 0x1f0]
	mov	dword ptr [rsp + 0x28], eax
	mov	eax, dword ptr [rsp + 0x1ec]
	mov	dword ptr [rsp + 0x24], eax
	mov	eax, dword ptr [rsp + 0x1e8]
	mov	dword ptr [rsp + 0x20], eax
	mov	eax, dword ptr [rsp + 0x208]
	mov	dword ptr [rsp + 0x40], eax
	lea	rsi, [rsp + 0x20]
	mov	rdi, qword ptr [rsp]
	call	mktime_z
	mov	qword ptr [rsp + 8], rax
	cmp	rax, -1
	mov	al, byte ptr [rsp + 0x191]
	je	.label_686
	test	al, al
	je	.label_482
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_489
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, qword ptr [rsp + 0x120]
	mov	rdx, qword ptr [rsp + 0x128]
	mov	rcx, qword ptr [rsp + 0x130]
	xor	eax, eax
	call	dbg_printf
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_500
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rsp + 0x70], rax
	lea	rdi, [rsp + 0x220]
	lea	rcx, [rsp + 0x20]
	mov	esi, 0x64
	mov	edx, OFFSET FLAT:label_454
	xor	r8d, r8d
	xor	r9d, r9d
	call	nstrftime
	mov	rcx, rax
	cmp	eax, 0x63
	jg	.label_575
	mov	rax, qword ptr [rsp + 0x188]
	test	rax, rax
	je	.label_575
	movsxd	r12, dword ptr [rsp + 0xd0]
	mov	eax, 0x64
	mov	qword ptr [rsp + 0x1d8], rcx
	sub	eax, ecx
	mov	dword ptr [rsp + 0x1e0], eax
	mov	eax, r12d
	shr	eax, 0x1f
	imul	rbp, r12, -0x6e5d4c3b
	shr	rbp, 0x20
	add	ebp, r12d
	mov	ecx, ebp
	shr	ecx, 0x1f
	sar	ebp, 0xb
	add	ebp, ecx
	mov	r9d, ebp
	neg	r9d
	cmp	r12, -0xe10
	lea	r8d, [rax + rax + 0x2b]
	cmovg	r9d, ebp
	lea	rdi, [rsp + 0x80]
	mov	esi, 1
	mov	edx, 0x1b
	mov	ecx, OFFSET FLAT:label_138
	xor	eax, eax
	call	__sprintf_chk
	imul	edx, ebp, 0xe10
	mov	esi, r12d
	sub	esi, edx
	mov	ecx, esi
	neg	ecx
	cmovl	ecx, esi
	cmp	r12d, edx
	mov	rdx, qword ptr [rsp + 0x1d8]
	movsxd	rdx, edx
	lea	rdi, [rsp + rdx + 0x220]
	movsxd	rsi, dword ptr [rsp + 0x1e0]
	je	.label_558
	cdqe	
	lea	r11, [rsp + rax + 0x80]
	movsxd	r9, ecx
	imul	rdx, r9, -0x77777777
	shr	rdx, 0x20
	add	edx, r9d
	mov	ebp, edx
	shr	ebp, 0x1f
	sar	edx, 5
	add	edx, ebp
	imul	r8d, edx, 0x3c
	imul	rbp, r9, 0x1b4e81b5
	mov	r10, rbp
	shr	r10, 0x3f
	shr	rbp, 0x26
	movsxd	rdx, edx
	imul	rcx, rdx, 0x66666667
	mov	rax, rcx
	shr	rax, 0x3f
	sar	rcx, 0x22
	add	ecx, eax
	add	ecx, ecx
	lea	eax, [rcx + rcx*4]
	sub	edx, eax
	add	edx, 0x30
	sub	r9d, r8d
	mov	byte ptr [r11], 0x3a
	lea	eax, [rbp + r10 + 0x30]
	mov	byte ptr [r11 + 1], al
	mov	byte ptr [r11 + 2], dl
	je	.label_616
	mov	byte ptr [r11 + 3], 0x3a
	movsxd	rax, r9d
	imul	rax, rax, 0x66666667
	mov	rcx, rax
	shr	rcx, 0x3f
	sar	rax, 0x22
	lea	edx, [rax + rcx]
	lea	eax, [rax + rcx + 0x30]
	mov	byte ptr [r11 + 4], al
	add	edx, edx
	lea	eax, [rdx + rdx*4]
	neg	eax
	lea	eax, [r9 + rax + 0x30]
	mov	byte ptr [r11 + 5], al
	add	r11, 6
	jmp	.label_607
.label_686:
	test	al, al
	mov	r13, r14
	mov	rbx, qword ptr [rsp]
	je	.label_464
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_637
	mov	edx, 5
	call	dcgettext
	mov	r13, rax
	lea	rdi, [rsp + 0x220]
	lea	rcx, [rsp + 0x20]
	mov	esi, 0x64
	mov	edx, OFFSET FLAT:label_454
	xor	r8d, r8d
	xor	r9d, r9d
	call	nstrftime
	mov	r12, rax
	cmp	r12d, 0x63
	jg	.label_469
	mov	rax, qword ptr [rsp + 0x188]
	test	rax, rax
	je	.label_469
	movsxd	rbx, dword ptr [rsp + 0xd0]
	mov	r15d, 0x64
	sub	r15d, r12d
	mov	eax, ebx
	shr	eax, 0x1f
	imul	rbp, rbx, -0x6e5d4c3b
	shr	rbp, 0x20
	add	ebp, ebx
	mov	ecx, ebp
	shr	ecx, 0x1f
	sar	ebp, 0xb
	add	ebp, ecx
	mov	r9d, ebp
	neg	r9d
	cmp	rbx, -0xe10
	lea	r8d, [rax + rax + 0x2b]
	cmovg	r9d, ebp
	lea	rdi, [rsp + 0x80]
	mov	esi, 1
	mov	edx, 0x1b
	mov	ecx, OFFSET FLAT:label_138
	xor	eax, eax
	call	__sprintf_chk
	imul	edx, ebp, 0xe10
	mov	esi, ebx
	sub	esi, edx
	mov	ecx, esi
	neg	ecx
	cmovl	ecx, esi
	cmp	ebx, edx
	movsxd	rdx, r12d
	lea	rdi, [rsp + rdx + 0x220]
	movsxd	rsi, r15d
	je	.label_667
	cdqe	
	lea	rax, [rsp + rax + 0x80]
	movsxd	r9, ecx
	imul	rdx, r9, -0x77777777
	shr	rdx, 0x20
	add	edx, r9d
	mov	ebp, edx
	shr	ebp, 0x1f
	sar	edx, 5
	add	edx, ebp
	imul	r8d, edx, 0x3c
	imul	rbx, r9, 0x1b4e81b5
	mov	r10, rbx
	shr	r10, 0x3f
	shr	rbx, 0x26
	movsxd	rdx, edx
	imul	rcx, rdx, 0x66666667
	mov	rbp, rcx
	shr	rbp, 0x3f
	sar	rcx, 0x22
	add	ecx, ebp
	add	ecx, ecx
	lea	ecx, [rcx + rcx*4]
	sub	edx, ecx
	add	edx, 0x30
	sub	r9d, r8d
	mov	byte ptr [rax], 0x3a
	lea	ecx, [rbx + r10 + 0x30]
	mov	byte ptr [rax + 1], cl
	mov	byte ptr [rax + 2], dl
	je	.label_675
	mov	byte ptr [rax + 3], 0x3a
	movsxd	rcx, r9d
	imul	rcx, rcx, 0x66666667
	mov	rdx, rcx
	shr	rdx, 0x3f
	sar	rcx, 0x22
	lea	ebp, [rcx + rdx]
	lea	ecx, [rcx + rdx + 0x30]
	mov	byte ptr [rax + 4], cl
	add	ebp, ebp
	lea	ecx, [rbp + rbp*4]
	neg	ecx
	lea	ecx, [r9 + rcx + 0x30]
	mov	byte ptr [rax + 5], cl
	add	rax, 6
	jmp	.label_699
.label_616:
	add	r11, 3
.label_607:
	mov	byte ptr [r11], 0
.label_558:
	lea	r9, [rsp + 0x80]
	mov	edx, 1
	mov	rcx, -1
	mov	r8d, OFFSET FLAT:label_457
	xor	eax, eax
	call	__snprintf_chk
.label_575:
	lea	rsi, [rsp + 0x220]
	xor	eax, eax
	mov	rdi, qword ptr [rsp + 0x70]
	call	dbg_printf
	mov	eax, dword ptr [rsp + 0x208]
	cmp	eax, -1
	je	.label_463
	cmp	dword ptr [rsp + 0x40], eax
	je	.label_463
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_471
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
.label_463:
	cmp	qword ptr [rsp + 0x130], 0
	jne	.label_482
	cmp	dword ptr [rsp + 0x2c], ebx
	jne	.label_682
	cmp	qword ptr [rsp + 0x128], 0
	jne	.label_482
	mov	rax, qword ptr [rsp + 0x58]
	cmp	dword ptr [rsp + 0x30], eax
	je	.label_482
.label_682:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_494
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_663
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	xor	eax, eax
	cmp	r13d, 0xfffff893
	setg	al
	lea	rcx, qword ptr [rax + label_508]
	movsxd	rax, r13d
	imul	rax, rax, 0x51eb851f
	mov	rdx, rax
	shr	rdx, 0x3f
	sar	rax, 0x25
	lea	esi, [rax + rdx]
	lea	eax, [rax + rdx + 0x13]
	mov	ebp, 0xffffffed
	mov	r8d, 0xffffffed
	sub	r8d, esi
	test	eax, eax
	cmovns	r8d, eax
	imul	eax, esi, 0x64
	sub	r13d, eax
	mov	r9d, r13d
	neg	r9d
	cmovl	r9d, r13d
	lea	r13, [rsp + 0x80]
	mov	esi, 1
	mov	edx, 0xd
	xor	eax, eax
	mov	rdi, r13
	call	__sprintf_chk
	mov	rdx, qword ptr [rsp + 0x58]
	inc	edx
	xor	eax, eax
	mov	rdi, r12
	mov	rsi, r13
	mov	ecx, ebx
	call	dbg_printf
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_559
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	movsxd	rax, dword ptr [rsp + 0x34]
	xor	ecx, ecx
	cmp	rax, -0x76d
	setg	cl
	lea	rcx, qword ptr [rcx + label_508]
	imul	rdx, rax, 0x51eb851f
	mov	rsi, rdx
	shr	rsi, 0x3f
	sar	rdx, 0x25
	lea	edi, [rdx + rsi]
	lea	edx, [rdx + rsi + 0x13]
	sub	ebp, edi
	test	edx, edx
	cmovns	ebp, edx
	imul	edx, edi, 0x64
	sub	eax, edx
	mov	r9d, eax
	neg	r9d
	cmovl	r9d, eax
	mov	esi, 1
	mov	edx, 0xd
	xor	eax, eax
	mov	rdi, r13
	mov	r8d, ebp
	call	__sprintf_chk
	mov	ecx, dword ptr [rsp + 0x2c]
	mov	edx, dword ptr [rsp + 0x30]
	inc	edx
	xor	eax, eax
	mov	rdi, rbx
	mov	rsi, r13
	call	dbg_printf
.label_482:
	mov	r13, r14
	mov	rbx, qword ptr [rsp]
	mov	r12, qword ptr [rsp + 8]
.label_623:
	cmp	qword ptr [rsp + 0x188], 0
	je	.label_588
	movsxd	rax, dword ptr [rsp + 0xd0]
	mov	rdx, qword ptr [rsp + 0x48]
	test	rdx, rdx
	js	.label_592
	lea	rsi, [r15 + 1]
	xor	rsi, rdx
	mov	ecx, 1
	cmp	rax, rsi
	jge	.label_596
	jmp	.label_514
.label_592:
	lea	rsi, [rdx + r15]
	mov	ecx, 1
	cmp	rsi, rax
	jl	.label_514
.label_596:
	xor	ecx, ecx
.label_514:
	sub	rax, rdx
	js	.label_609
	lea	rsi, [r15 + 1]
	xor	rsi, rax
	mov	edx, 1
	cmp	r12, rsi
	jge	.label_665
	jmp	.label_614
.label_609:
	lea	rsi, [rax + r15]
	mov	edx, 1
	cmp	rsi, r12
	jl	.label_614
.label_665:
	xor	edx, edx
.label_614:
	or	edx, ecx
	je	.label_618
	cmp	byte ptr [rsp + 0x191], 0
	je	.label_464
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_624
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	esi, dword ptr [rsp + 0xd0]
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
	xor	ebp, ebp
	jmp	.label_445
.label_618:
	sub	r12, rax
.label_588:
	cmp	byte ptr [rsp + 0x191], 0
	je	.label_633
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_639
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	lea	rdi, [rsp + 0x220]
	lea	rcx, [rsp + 0x20]
	mov	esi, 0x64
	mov	edx, OFFSET FLAT:label_454
	xor	r8d, r8d
	xor	r9d, r9d
	call	nstrftime
	mov	r14, rax
	cmp	r14d, 0x63
	jg	.label_649
	mov	rax, qword ptr [rsp + 0x188]
	test	rax, rax
	je	.label_649
	mov	qword ptr [rsp + 8], rbx
	mov	qword ptr [rsp + 0x10], r13
	movsxd	rbx, dword ptr [rsp + 0xd0]
	mov	r13d, 0x64
	sub	r13d, r14d
	mov	eax, ebx
	shr	eax, 0x1f
	imul	rbp, rbx, -0x6e5d4c3b
	shr	rbp, 0x20
	add	ebp, ebx
	mov	ecx, ebp
	shr	ecx, 0x1f
	sar	ebp, 0xb
	add	ebp, ecx
	mov	r9d, ebp
	neg	r9d
	cmp	rbx, -0xe10
	lea	r8d, [rax + rax + 0x2b]
	cmovg	r9d, ebp
	lea	rdi, [rsp + 0x80]
	mov	esi, 1
	mov	edx, 0x1b
	mov	ecx, OFFSET FLAT:label_138
	xor	eax, eax
	call	__sprintf_chk
	imul	edx, ebp, 0xe10
	mov	esi, ebx
	sub	esi, edx
	mov	ecx, esi
	neg	ecx
	cmovl	ecx, esi
	cmp	ebx, edx
	movsxd	rdx, r14d
	lea	rdi, [rsp + rdx + 0x220]
	movsxd	rsi, r13d
	je	.label_683
	cdqe	
	lea	rax, [rsp + rax + 0x80]
	movsxd	r9, ecx
	imul	rdx, r9, -0x77777777
	shr	rdx, 0x20
	add	edx, r9d
	mov	ebp, edx
	shr	ebp, 0x1f
	sar	edx, 5
	add	edx, ebp
	imul	r8d, edx, 0x3c
	imul	rbx, r9, 0x1b4e81b5
	mov	r10, rbx
	shr	r10, 0x3f
	shr	rbx, 0x26
	movsxd	rdx, edx
	imul	rcx, rdx, 0x66666667
	mov	rbp, rcx
	shr	rbp, 0x3f
	sar	rcx, 0x22
	add	ecx, ebp
	add	ecx, ecx
	lea	ecx, [rcx + rcx*4]
	sub	edx, ecx
	add	edx, 0x30
	sub	r9d, r8d
	mov	byte ptr [rax], 0x3a
	lea	ecx, [rbx + r10 + 0x30]
	mov	byte ptr [rax + 1], cl
	mov	byte ptr [rax + 2], dl
	je	.label_689
	mov	byte ptr [rax + 3], 0x3a
	movsxd	rcx, r9d
	imul	rcx, rcx, 0x66666667
	mov	rdx, rcx
	shr	rdx, 0x3f
	sar	rcx, 0x22
	lea	ebp, [rcx + rdx]
	lea	ecx, [rcx + rdx + 0x30]
	mov	byte ptr [rax + 4], cl
	add	ebp, ebp
	lea	ecx, [rbp + rbp*4]
	neg	ecx
	lea	ecx, [r9 + rcx + 0x30]
	mov	byte ptr [rax + 5], cl
	add	rax, 6
	jmp	.label_478
.label_689:
	add	rax, 3
.label_478:
	mov	byte ptr [rax], 0
.label_683:
	lea	r9, [rsp + 0x80]
	mov	edx, 1
	mov	rcx, -1
	mov	r8d, OFFSET FLAT:label_457
	xor	eax, eax
	call	__snprintf_chk
	mov	r13, qword ptr [rsp + 0x10]
	mov	rbx, qword ptr [rsp + 8]
.label_649:
	lea	rsi, [rsp + 0x220]
	xor	eax, eax
	mov	rdi, rbx
	mov	rdx, r12
	call	dbg_printf
.label_633:
	movsxd	rdi, dword ptr [rsp + 0x150]
	mov	rsi, qword ptr [rsp + 0x118]
	add	rsi, rdi
	movabs	rbp, 0x112e0be826d694b3
	mov	rax, rsi
	imul	rbp
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 0x1a
	add	rdx, rax
	imul	rax, rdx, 0x3b9aca00
	mov	rcx, rsi
	sub	rcx, rax
	add	rcx, 0x3b9aca00
	mov	rax, rcx
	imul	rbp
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 0x1a
	add	rdx, rax
	imul	rax, rdx, 0x3b9aca00
	sub	rcx, rax
	sub	rsi, rcx
	mov	rax, rsi
	imul	rbp
	mov	rax, qword ptr [rsp + 0x138]
	test	rax, rax
	js	.label_486
	movabs	rsi, 0x91a2b3c4d5e6f
	cmp	rax, rsi
	jle	.label_523
	jmp	.label_528
.label_486:
	movabs	rsi, 0xfff6e5d4c3b2a191
	cmp	rax, rsi
	jl	.label_528
.label_523:
	imul	rbx, rax, 0xe10
	test	rbx, rbx
	js	.label_536
	mov	rsi, r15
	sub	rsi, rbx
	cmp	rsi, r12
	jge	.label_541
	jmp	.label_528
.label_536:
	lea	rsi, [r15 + 1]
	sub	rsi, rbx
	cmp	r12, rsi
	jl	.label_528
.label_541:
	mov	qword ptr [rsp + 0x10], r13
	mov	rsi, qword ptr [rsp + 0x140]
	test	rsi, rsi
	js	.label_547
	movabs	rbp, 0x222222222222222
	cmp	rsi, rbp
	mov	r13, qword ptr [rsp + 0x10]
	jle	.label_552
	jmp	.label_528
.label_547:
	movabs	rbp, 0xfdddddddddddddde
	cmp	rsi, rbp
	mov	r13, qword ptr [rsp + 0x10]
	jl	.label_528
.label_552:
	add	rbx, r12
	imul	r14, rsi, 0x3c
	test	r14, r14
	js	.label_562
	mov	rbp, r15
	sub	rbp, r14
	cmp	rbp, rbx
	jmp	.label_568
.label_562:
	lea	rbp, [r15 + 1]
	sub	rbp, r14
	cmp	rbx, rbp
.label_568:
	mov	r13, qword ptr [rsp + 0x10]
	jl	.label_528
	add	r14, rbx
	mov	rbx, qword ptr [rsp + 0x148]
	test	rbx, rbx
	js	.label_570
	mov	rbp, r15
	sub	rbp, rbx
	cmp	rbp, r14
	jmp	.label_578
.label_570:
	lea	rbp, [r15 + 1]
	sub	rbp, rbx
	cmp	r14, rbp
.label_578:
	mov	r13, qword ptr [rsp + 0x10]
	jl	.label_528
	mov	rbp, rdx
	shr	rbp, 0x3f
	sar	rdx, 0x1a
	add	rdx, rbp
	add	r14, rbx
	movsxd	rdx, edx
	test	edx, edx
	js	.label_677
	sub	r15, rdx
	cmp	r15, r14
	jmp	.label_591
.label_677:
	inc	r15
	sub	r15, rdx
	cmp	r14, r15
.label_591:
	mov	r13, qword ptr [rsp + 0x10]
	jge	.label_594
.label_528:
	cmp	byte ptr [rsp + 0x191], 0
	je	.label_579
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_602
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
	jmp	.label_579
.label_594:
	add	r14, rdx
	mov	rdx, qword ptr [rsp + 0x68]
	mov	qword ptr [rdx], r14
	mov	qword ptr [rdx + 8], rcx
	cmp	byte ptr [rsp + 0x191], 0
	je	.label_477
	or	rsi, rax
	or	rsi, rbx
	or	rsi, rdi
	je	.label_477
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_563
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, qword ptr [rsp + 0x138]
	mov	rdx, qword ptr [rsp + 0x140]
	mov	rcx, qword ptr [rsp + 0x148]
	mov	r8d, dword ptr [rsp + 0x150]
	xor	eax, eax
	call	dbg_printf
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_443
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	mov	rsi, r14
	call	dbg_printf
	cmp	dword ptr [rsp + 0x40], -1
	je	.label_477
	lea	rdx, [rsp + 0x80]
	mov	rdi, qword ptr [rsp]
	mov	rsi, qword ptr [rsp + 0x68]
	call	localtime_rz
	test	rax, rax
	je	.label_477
	mov	eax, dword ptr [rsp + 0x40]
	cmp	eax, dword ptr [rsp + 0xa0]
	je	.label_477
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_655
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
.label_477:
	mov	r13, qword ptr [rsp + 0x10]
	mov	rbx, qword ptr [rsp]
	mov	r12, qword ptr [rsp + 0x68]
	jmp	.label_662
.label_675:
	add	rax, 3
.label_699:
	mov	byte ptr [rax], 0
.label_667:
	lea	r9, [rsp + 0x80]
	mov	edx, 1
	mov	rcx, -1
	mov	r8d, OFFSET FLAT:label_457
	xor	eax, eax
	call	__snprintf_chk
.label_469:
	lea	rsi, [rsp + 0x220]
	xor	eax, eax
	mov	rdi, r13
	call	dbg_printf
	mov	r13, r14
	mov	rbx, qword ptr [rsp]
.label_464:
	xor	ebp, ebp
	jmp	.label_445
	.section	.text
	.align	32
	#Procedure 0x408776
	.globl sub_408776
	.type sub_408776, @function
sub_408776:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408780

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_60]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_61]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_62]
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
	#Procedure 0x4087d5
	.globl sub_4087d5
	.type sub_4087d5, @function
sub_4087d5:

	nop	word ptr cs:[rax + rax]
.label_713:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_711
	test	rax, rax
	je	.label_712
.label_711:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4087f4

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_713
	test	rbx, rbx
	jne	.label_713
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_712:
	call	xalloc_die
.label_718:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_715
	mov	eax, OFFSET FLAT:label_716
	jmp	.label_717
	.section	.text
	.align	32
	#Procedure 0x40881f
	.globl sub_40881f
	.type sub_40881f, @function
sub_40881f:

	nop	word ptr cs:[rax + rax]
.label_722:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_714
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_714
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_714
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_714
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_714
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_714
	cmp	byte ptr [rax + 7], 0
	je	.label_718
.label_714:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_259
	mov	eax, OFFSET FLAT:label_220
.label_717:
	cmove	rax, rcx
.label_721:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408872

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
	jne	.label_721
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_722
	cmp	ecx, 0x55
	jne	.label_714
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_714
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_714
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_714
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_714
	cmp	byte ptr [rax + 5], 0
	jne	.label_714
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_719
	mov	eax, OFFSET FLAT:label_720
	jmp	.label_717
.label_723:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4088e5
	.globl sub_4088e5
	.type sub_4088e5, @function
sub_4088e5:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4088eb
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_724
	test	rax, rax
	je	.label_723
.label_724:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x408900
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_725:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_725
	jmp	version_etc_arn
	.section	.text
	.align	32
	#Procedure 0x408921
	.globl sub_408921
	.type sub_408921, @function
sub_408921:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408930
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
	#Procedure 0x408963
	.globl sub_408963
	.type sub_408963, @function
sub_408963:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408970

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xc8
	mov	dword ptr [rsp + 0xc], edi
	mov	qword ptr [rsp + 0x10], rsi
	mov	rdi, qword ptr [rsi]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_129
	call	setlocale
	mov	edi, OFFSET FLAT:label_743
	mov	esi, OFFSET FLAT:label_778
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_743
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	dword ptr [rip + change_times],  0
	mov	byte ptr [rip + use_ref],  0
	mov	byte ptr [rip + no_create],  0
	xor	r14d, r14d
	xor	ebx, ebx
	jmp	.label_764
.label_1544:
	mov	rsi, qword ptr [rip + optarg]
	mov	r9, qword ptr [rip + argmatch_die]
	mov	edi, OFFSET FLAT:label_790
	mov	edx, OFFSET FLAT:time_args
	mov	ecx, OFFSET FLAT:time_masks
	mov	r8d, 4
	call	__xargmatch_internal
	mov	eax, dword ptr [(rax * 4) + time_masks]
	or	dword ptr [rip + change_times],  eax
	nop	dword ptr [rax + rax]
.label_764:
	mov	edx, OFFSET FLAT:label_742
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, dword ptr [rsp + 0xc]
	mov	rsi, qword ptr [rsp + 0x10]
	call	getopt_long
	cmp	eax, 0x60
	jle	.label_755
	add	eax, -0x61
	cmp	eax, 0x1f
	ja	.label_735
	jmp	qword ptr [(rax * 8) + label_788]
.label_1537:
	or	byte ptr [rip + change_times],  1
	jmp	.label_764
.label_1538:
	mov	byte ptr [rip + no_create],  1
	jmp	.label_764
.label_1539:
	mov	r14, qword ptr [rip + optarg]
	jmp	.label_764
.label_1540:
	mov	byte ptr [rip + no_dereference],  1
	jmp	.label_764
.label_1541:
	or	byte ptr [rip + change_times],  2
	jmp	.label_764
.label_1542:
	mov	byte ptr [rip + use_ref],  1
	mov	rax, qword ptr [rip + optarg]
	mov	qword ptr [rip + ref_file],  rax
	jmp	.label_764
.label_1543:
	mov	rsi, qword ptr [rip + optarg]
	mov	edi, OFFSET FLAT:newtime
	mov	edx, 6
	call	posixtime
	test	al, al
	je	.label_782
	mov	qword ptr [rip + label_756],  0
	movaps	xmm0, xmmword ptr [rip + newtime]
	movaps	xmmword ptr [rip + label_751],  xmm0
	mov	bl, 1
	jmp	.label_764
.label_755:
	cmp	eax, -1
	jne	.label_786
	cmp	dword ptr [rip + change_times],  0
	jne	.label_789
	mov	dword ptr [rip + change_times],  3
.label_789:
	test	bl, bl
	mov	al, byte ptr [rip + use_ref]
	je	.label_793
	test	r14, r14
	setne	cl
	or	cl, al
	test	cl, 1
	je	.label_737
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_729
	jmp	.label_730
.label_793:
	test	al, 1
	je	.label_737
	mov	rsi, qword ptr [rip + ref_file]
	cmp	byte ptr [rip + no_dereference],  1
	jne	.label_738
	lea	rdx, [rsp + 0x38]
	mov	edi, 1
	call	__lxstat
	jmp	.label_758
.label_737:
	test	r14, r14
	je	.label_761
	lea	rbx, [rsp + 0x38]
	mov	rdi, rbx
	call	gettime
	mov	edi, OFFSET FLAT:newtime
	mov	rsi, r14
	mov	rdx, rbx
	call	parse_datetime
	test	al, al
	je	.label_766
	movaps	xmm0, xmmword ptr [rip + newtime]
	movaps	xmmword ptr [rip + label_751],  xmm0
	mov	bl, 1
	cmp	dword ptr [rip + change_times],  3
	jne	.label_761
	mov	rax, qword ptr [rip + newtime]
	cmp	rax, qword ptr [rsp + 0x38]
	jne	.label_761
	mov	rcx, qword ptr [rip + label_756]
	cmp	rcx, qword ptr [rsp + 0x40]
	jne	.label_761
	xor	rax, 1
	mov	qword ptr [rsp + 0x18], rax
	mov	qword ptr [rsp + 0x20], rcx
	lea	rdi, [rsp + 0x28]
	lea	rdx, [rsp + 0x18]
	mov	rsi, r14
	call	parse_datetime
	test	al, al
	je	.label_766
	mov	rax, qword ptr [rsp + 0x28]
	mov	bl, 1
	cmp	rax, qword ptr [rsp + 0x18]
	jne	.label_761
	mov	rax, qword ptr [rsp + 0x30]
	cmp	rax, qword ptr [rsp + 0x20]
	setne	bl
.label_761:
	test	bl, 1
	jne	.label_752
	mov	eax, dword ptr [rsp + 0xc]
	sub	eax, dword ptr [rip + optind]
	cmp	eax, 2
	jl	.label_754
	call	posix2_version
	cmp	eax, 0x30daf
	jg	.label_754
	movsxd	rax, dword ptr [rip + optind]
	mov	rcx, qword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rcx + rax*8]
	mov	edi, OFFSET FLAT:newtime
	mov	edx, 9
	call	posixtime
	test	al, al
	je	.label_754
	mov	qword ptr [rip + label_756],  0
	movaps	xmm0, xmmword ptr [rip + newtime]
	movaps	xmmword ptr [rip + label_751],  xmm0
	mov	edi, OFFSET FLAT:label_757
	call	getenv
	test	rax, rax
	jne	.label_768
	mov	edi, OFFSET FLAT:newtime
	call	localtime
	mov	rbx, rax
	test	rbx, rbx
	je	.label_768
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_770
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	movsxd	rax, dword ptr [rip + optind]
	mov	rcx, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rcx + rax*8]
	movsxd	r8, dword ptr [rbx + 0x14]
	add	r8, 0x76c
	mov	r9d, dword ptr [rbx + 0x10]
	inc	r9d
	mov	r10d, dword ptr [rbx + 0xc]
	mov	r11d, dword ptr [rbx + 8]
	mov	ebp, dword ptr [rbx]
	mov	ebx, dword ptr [rbx + 4]
	xor	edi, edi
	xor	esi, esi
	mov	eax, 0
	push	rbp
	push	rbx
	push	r11
	push	r10
	call	error
	add	rsp, 0x20
.label_768:
	inc	dword ptr [rip + optind]
	jmp	.label_752
.label_754:
	cmp	dword ptr [rip + change_times],  3
	jne	.label_787
	mov	byte ptr [rip + amtime_now],  1
	jmp	.label_752
.label_787:
	mov	qword ptr [rip + label_756],  0x3fffffff
	mov	qword ptr [rip + label_760],  0x3fffffff
	jmp	.label_752
.label_738:
	lea	rdx, [rsp + 0x38]
	mov	edi, 1
	call	__xstat
.label_758:
	test	eax, eax
	jne	.label_779
	movups	xmm0, xmmword ptr [rsp + 0x80]
	movaps	xmmword ptr [rip + newtime],  xmm0
	movups	xmm0, xmmword ptr [rsp + 0x90]
	movaps	xmmword ptr [rip + label_751],  xmm0
	test	r14, r14
	je	.label_752
	mov	eax, dword ptr [rip + change_times]
	test	al, 1
	je	.label_762
	mov	edi, OFFSET FLAT:newtime
	mov	edx, OFFSET FLAT:newtime
	mov	rsi, r14
	call	parse_datetime
	test	al, al
	je	.label_766
	mov	eax, dword ptr [rip + change_times]
.label_762:
	test	al, 2
	je	.label_752
	mov	edi, OFFSET FLAT:label_751
	mov	edx, OFFSET FLAT:label_751
	mov	rsi, r14
	call	parse_datetime
	test	al, al
	je	.label_766
.label_752:
	mov	eax, dword ptr [rip + optind]
	cmp	eax, dword ptr [rsp + 0xc]
	je	.label_775
	mov	r15b, 1
	jge	.label_777
	mov	r15b, 1
	nop	dword ptr [rax + rax]
.label_783:
	cdqe	
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r13, qword ptr [rcx + rax*8]
	cmp	byte ptr [r13], 0x2d
	jne	.label_781
	cmp	byte ptr [r13 + 1], 0
	je	.label_784
.label_781:
	mov	ebp, 0xffffffff
	xor	r14d, r14d
	movzx	eax, byte ptr [rip + no_create]
	test	al, al
	jne	.label_726
	movzx	eax, byte ptr [rip + no_dereference]
	test	al, al
	jne	.label_726
	xor	r14d, r14d
	xor	edi, edi
	mov	edx, 0x941
	mov	ecx, 0x1b6
	mov	rsi, r13
	call	fd_reopen
	cmp	eax, -1
	je	.label_794
	mov	ebp, eax
	jmp	.label_726
.label_784:
	mov	ebp, 1
	xor	r14d, r14d
	jmp	.label_726
.label_794:
	call	__errno_location
	mov	eax, dword ptr [rax]
	cmp	eax, 0x16
	ja	.label_773
	mov	ecx, 0x600002
	bt	ecx, eax
	jb	.label_726
.label_773:
	mov	r14d, eax
	nop	word ptr [rax + rax]
.label_726:
	mov	eax, dword ptr [rip + change_times]
	cmp	eax, 1
	je	.label_736
	cmp	eax, 3
	je	.label_727
	cmp	eax, 2
	jne	.label_759
	mov	qword ptr [rip + label_756],  0x3ffffffe
	jmp	.label_727
	.section	.text
	.align	32
	#Procedure 0x408e56
	.globl sub_408e56
	.type sub_408e56, @function
sub_408e56:

	nop	word ptr cs:[rax + rax]
.label_736:
	mov	qword ptr [rip + label_760],  0x3ffffffe
.label_727:
	movzx	eax, byte ptr [rip + amtime_now]
	test	al, al
	mov	ecx, OFFSET FLAT:newtime
	mov	eax, 0
	cmovne	rcx, rax
	cmp	ebp, 1
	mov	rdx, r13
	cmove	rdx, rax
	movzx	r8d, byte ptr [rip + no_dereference]
	shl	r8d, 8
	cmp	ebp, -1
	cmovne	r8d, eax
	mov	esi, 0xffffff9c
	mov	edi, ebp
	call	fdutimensat
	mov	ebx, eax
	test	ebp, ebp
	je	.label_780
	cmp	ebp, 1
	setne	al
	test	ebx, ebx
	je	.label_753
	test	al, al
	jne	.label_753
	call	__errno_location
	cmp	dword ptr [rax], 9
	jne	.label_753
	mov	r12b, 1
	movzx	eax, byte ptr [rip + no_create]
	test	al, al
	je	.label_728
	jmp	.label_734
	.section	.text
	.align	32
	#Procedure 0x408edc
	.globl sub_408edc
	.type sub_408edc, @function
sub_408edc:

	nop	dword ptr [rax]
.label_780:
	xor	edi, edi
	call	close
	test	eax, eax
	je	.label_753
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_791
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r13
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	jmp	.label_733
	.section	.text
	.align	32
	#Procedure 0x408f27
	.globl sub_408f27
	.type sub_408f27, @function
sub_408f27:

	nop	word ptr [rax + rax]
.label_753:
	mov	r12b, 1
	test	ebx, ebx
	je	.label_734
.label_728:
	test	r14d, r14d
	je	.label_765
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_772
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r13
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	jmp	.label_767
.label_765:
	movzx	ebx, byte ptr [rip + no_create]
	call	__errno_location
	mov	ebp, dword ptr [rax]
	cmp	bl, 1
	jne	.label_771
	mov	r12b, 1
	cmp	ebp, 2
	je	.label_734
.label_771:
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_785
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r13
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
.label_767:
	mov	rdx, rbx
.label_733:
	call	error
.label_734:
	and	r15b, r12b
	mov	eax, dword ptr [rip + optind]
	inc	eax
	mov	dword ptr [rip + optind],  eax
	cmp	eax, dword ptr [rsp + 0xc]
	jl	.label_783
.label_777:
	movzx	eax, r15b
	xor	eax, 1
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_759:
	mov	edi, OFFSET FLAT:label_739
	mov	esi, OFFSET FLAT:label_740
	mov	edx, 0x99
	mov	ecx, OFFSET FLAT:label_741
	call	__assert_fail
.label_786:
	cmp	eax, 0xffffff7d
	je	.label_731
	cmp	eax, 0xffffff7e
	jne	.label_735
	xor	edi, edi
	call	usage
.label_731:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	esi, OFFSET FLAT:label_744
	mov	edx, OFFSET FLAT:label_745
	mov	r8d, OFFSET FLAT:label_746
	mov	r9d, OFFSET FLAT:label_747
	mov	eax, 0
	push	0
	push	OFFSET FLAT:label_748
	push	OFFSET FLAT:label_749
	push	OFFSET FLAT:label_750
	call	version_etc
	add	rsp, 0x20
	xor	edi, edi
	call	exit
.label_735:
	mov	edi, 1
	call	usage
.label_782:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_769
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + optarg]
	jmp	.label_774
.label_775:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_776
.label_730:
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
.label_766:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_769
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, r14
.label_774:
	call	quote
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_779:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_792
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rsi, qword ptr [rip + ref_file]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	nop	
.label_797:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_732
	mov	qword ptr [rsi], rbx
.label_795:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_763
	test	rax, rax
	je	.label_732
.label_763:
	pop	rbx
	ret	
.label_796:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40915d
	.globl sub_40915d
	.type sub_40915d, @function
sub_40915d:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409169
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_797
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_796
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_795
	call	free
	xor	eax, eax
	jmp	.label_763
.label_732:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4091a0
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_798
	test	rdx, rdx
	je	.label_798
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_798:
	push	rax
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4091cb
	.globl sub_4091cb
	.type sub_4091cb, @function
sub_4091cb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4091d0

	.globl nstrftime
	.type nstrftime, @function
nstrftime:
	push	rax
	mov	eax, r9d
	mov	r10, r8
	sub	rsp, 8
	mov	r8d, 0
	mov	r9d, 0
	push	rax
	push	r10
	push	-1
	call	__strftime_internal
	add	rsp, 0x20
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4091f7
	.globl sub_4091f7
	.type sub_4091f7, @function
sub_4091f7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409200

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
	#Procedure 0x409219
	.globl sub_409219
	.type sub_409219, @function
sub_409219:

	nop	dword ptr [rax]
.label_800:
	mov	ecx, 1
.label_799:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	32
	#Procedure 0x409230
	.globl sub_409230
	.type sub_409230, @function
sub_409230:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409235

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_800
	test	rsi, rsi
	mov	ecx, 1
	je	.label_799
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_799
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_801:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x409275
	.globl sub_409275
	.type sub_409275, @function
sub_409275:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409280
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_801
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_802
	test	rax, rax
	je	.label_801
.label_802:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4092b0

	.globl yyparse
	.type yyparse, @function
yyparse:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x588
	mov	r13, rdi
	lea	r12, [rsp + 0x120]
	mov	word ptr [rsp + 0xf0], 0
	lea	rax, [r13 + 0x58]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [r13 + 0x50]
	mov	qword ptr [rsp + 0xd0], rax
	lea	rax, [r13 + 0x20]
	mov	qword ptr [rsp + 0xb8], rax
	mov	ebx, 0xfffffffe
	movabs	r10, 0x8000000000000000
	movabs	rax, 0x3ffffff03ffffff
	movabs	rcx, 0x3ffffffffffffff
	and	rcx, rax
	mov	qword ptr [rsp + 0xe8], rcx
	mov	r15d, 0x80001f
	mov	eax, 0
	mov	r8d, 0
	xor	r9d, r9d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xd8], rcx
	mov	dword ptr [rsp + 0xb4], 0
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xc8], rcx
	jmp	.label_1032
.label_1030:
	movsxd	rsi, eax
	movsx	r14d, byte ptr [rsi + yypact]
	cmp	r14d, -0x5d
	je	.label_1044
	cmp	ebx, -2
	jne	.label_1070
	mov	qword ptr [rsp + 0x48], rsi
	mov	rdi, qword ptr [r13]
	mov	rdx, rdi
	jmp	.label_821
.label_870:
	mov	rdi, rdx
	nop	
.label_821:
	mov	al, byte ptr [rdx]
	movzx	ecx, al
	lea	ebp, [rcx - 9]
	cmp	ebp, 0x17
	ja	.label_1075
	inc	rdx
.label_978:
	mov	rsi, rdx
	bt	r15d, ebp
	jae	.label_1078
	mov	qword ptr [r13], rsi
	mov	al, byte ptr [rsi]
	movzx	ecx, al
	lea	ebp, [rcx - 9]
	lea	rdx, [rsi + 1]
	cmp	ebp, 0x18
	mov	rdi, rsi
	jb	.label_978
	dec	rdx
	mov	rdi, rsi
	jmp	.label_1075
	.section	.text
	.align	32
	#Procedure 0x4093c9
	.globl sub_4093c9
	.type sub_4093c9, @function
sub_4093c9:

	nop	dword ptr [rax]
.label_1078:
	dec	rsi
	mov	rdx, rsi
.label_1075:
	lea	esi, [rcx - 0x30]
	cmp	esi, 0xa
	jae	.label_1091
	cmp	al, 0x2d
	je	.label_1079
	xor	ecx, ecx
	cmp	al, 0x2b
	je	.label_1079
	jmp	.label_1098
	.section	.text
	.align	32
	#Procedure 0x4093ed
	.globl sub_4093ed
	.type sub_4093ed, @function
sub_4093ed:

	nop	dword ptr [rax]
.label_1091:
	cmp	al, 0x2b
	je	.label_1079
	cmp	al, 0x2d
	jne	.label_1102
.label_1079:
	inc	rdx
	mov	rsi, rdx
	nop	
.label_815:
	mov	rdx, rsi
	mov	qword ptr [r13], rdx
	mov	bpl, byte ptr [rdx]
	movzx	ecx, bpl
	lea	edi, [rcx - 9]
	cmp	edi, 0x17
	ja	.label_803
	lea	rsi, [rdx + 1]
	bt	r15d, edi
	jb	.label_815
.label_803:
	add	ecx, -0x30
	cmp	ecx, 9
	mov	rdi, rdx
	ja	.label_821
	jmp	.label_824
.label_1102:
	add	ecx, -0x41
	cmp	ecx, 0x39
	ja	.label_826
	movabs	rsi, 0x3ffffff03ffffff
	bt	rsi, rcx
	jb	.label_831
.label_826:
	cmp	al, 0x28
	mov	rsi, qword ptr [rsp + 0x48]
	jne	.label_836
	xor	eax, eax
	nop	dword ptr [rax]
.label_1090:
	mov	rcx, rdx
	lea	rdx, [rcx + 1]
	mov	qword ptr [r13], rdx
	movzx	ebx, byte ptr [rcx]
	cmp	bl, 0x28
	je	.label_841
	cmp	bl, 0x29
	je	.label_847
	xor	ecx, ecx
	test	bl, bl
	jne	.label_849
	jmp	.label_854
	.section	.text
	.align	32
	#Procedure 0x409483
	.globl sub_409483
	.type sub_409483, @function
sub_409483:

	nop	word ptr cs:[rax + rax]
.label_847:
	dec	rax
	jmp	.label_849
	.section	.text
	.align	32
	#Procedure 0x409495
	.globl sub_409495
	.type sub_409495, @function
sub_409495:

	nop	word ptr cs:[rax + rax]
.label_841:
	inc	rax
.label_849:
	test	rax, rax
	jne	.label_1090
	jmp	.label_870
.label_824:
	cmp	al, 0x2d
	mov	ecx, 1
	mov	eax, 0xffffffff
	cmove	ecx, eax
	jne	.label_873
	mov	rsi, rdx
	xor	eax, eax
	nop	word ptr [rax + rax]
.label_926:
	mov	ebx, 0x3f
	test	rax, rax
	js	.label_885
	movabs	rdi, 0xccccccccccccccc
	cmp	rax, rdi
	jle	.label_889
	jmp	.label_895
	.section	.text
	.align	32
	#Procedure 0x4094ee
	.globl sub_4094ee
	.type sub_4094ee, @function
sub_4094ee:

	nop	
.label_885:
	movabs	rdi, 0xf333333333333334
	cmp	rax, rdi
	jl	.label_895
.label_889:
	add	rax, rax
	lea	rdi, [rax + rax*4]
	movzx	eax, bpl
	mov	ebp, 0x30
	sub	ebp, eax
	movsxd	rax, ebp
	js	.label_903
	lea	rbp, [r10 - 1]
	sub	rbp, rax
	mov	ebx, 0x3f
	cmp	rbp, rdi
	jge	.label_915
	jmp	.label_895
.label_903:
	mov	rbp, r10
	sub	rbp, rax
	mov	ebx, 0x3f
	cmp	rdi, rbp
	jl	.label_895
.label_915:
	add	rax, rdi
	movzx	ebp, byte ptr [rsi + 1]
	inc	rsi
	mov	edi, ebp
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_926
	mov	qword ptr [rsp + 0x60], r9
	mov	qword ptr [rsp + 0x58], r8
	lea	r9, [rsi - 1]
	mov	r8b, 1
	mov	rdi, rdx
	jmp	.label_933
.label_873:
	mov	ecx, 1
	mov	al, bpl
	mov	rdi, rdx
.label_1098:
	mov	bpl, al
	mov	rsi, rdx
	xor	eax, eax
	nop	dword ptr [rax + rax]
.label_983:
	mov	ebx, 0x3f
	test	rax, rax
	js	.label_947
	movabs	rdx, 0xccccccccccccccc
	cmp	rax, rdx
	jle	.label_952
	jmp	.label_895
	.section	.text
	.align	32
	#Procedure 0x4095ae
	.globl sub_4095ae
	.type sub_4095ae, @function
sub_4095ae:

	nop	
.label_947:
	movabs	rdx, 0xf333333333333334
	cmp	rax, rdx
	jl	.label_895
.label_952:
	add	rax, rax
	lea	rdx, [rax + rax*4]
	movzx	eax, bpl
	cmp	al, 0x2f
	ja	.label_964
	lea	rbp, [r10 + 0x30]
	sub	rbp, rax
	mov	ebx, 0x3f
	cmp	rdx, rbp
	jge	.label_967
	jmp	.label_895
	.section	.text
	.align	32
	#Procedure 0x4095e8
	.globl sub_4095e8
	.type sub_4095e8, @function
sub_4095e8:

	nop	dword ptr [rax + rax]
.label_964:
	lea	rbp, [r10 + 0x2f]
	sub	rbp, rax
	mov	ebx, 0x3f
	cmp	rbp, rdx
	jl	.label_895
.label_967:
	lea	rax, [rax - 0x30]
	add	rax, rdx
	movzx	ebp, byte ptr [rsi + 1]
	inc	rsi
	mov	edx, ebp
	add	edx, -0x30
	cmp	edx, 0xa
	jb	.label_983
	mov	qword ptr [rsp + 0x60], r9
	mov	qword ptr [rsp + 0x58], r8
	lea	r9, [rsi - 1]
	xor	r8d, r8d
.label_933:
	or	bpl, 2
	cmp	bpl, 0x2e
	jne	.label_998
	movsx	edx, byte ptr [r9 + 2]
	add	edx, -0x30
	cmp	edx, 9
	ja	.label_998
	lea	edx, [rdx + rdx*4]
	movsx	esi, byte ptr [r9 + 3]
	add	esi, -0x30
	lea	rdi, [r9 + 3]
	add	r9, 4
	cmp	esi, 0xa
	cmovae	r9, rdi
	mov	ebx, 0
	cmovae	esi, ebx
	lea	edx, [rsi + rdx*2]
	lea	edx, [rdx + rdx*4]
	movsx	esi, byte ptr [r9]
	add	esi, -0x30
	lea	rdi, [r9 + 1]
	cmp	esi, 0xa
	cmovae	rdi, r9
	cmovae	esi, ebx
	lea	edx, [rsi + rdx*2]
	lea	edx, [rdx + rdx*4]
	movsx	esi, byte ptr [rdi]
	add	esi, -0x30
	lea	rbp, [rdi + 1]
	cmp	esi, 0xa
	cmovae	rbp, rdi
	cmovae	esi, ebx
	lea	edx, [rsi + rdx*2]
	lea	edx, [rdx + rdx*4]
	movsx	esi, byte ptr [rbp]
	add	esi, -0x30
	lea	rdi, [rbp + 1]
	cmp	esi, 0xa
	cmovae	rdi, rbp
	cmovae	esi, ebx
	lea	edx, [rsi + rdx*2]
	lea	edx, [rdx + rdx*4]
	movsx	esi, byte ptr [rdi]
	add	esi, -0x30
	lea	rbp, [rdi + 1]
	cmp	esi, 0xa
	cmovae	rbp, rdi
	cmovae	esi, ebx
	lea	edx, [rsi + rdx*2]
	lea	edx, [rdx + rdx*4]
	movsx	esi, byte ptr [rbp]
	add	esi, -0x30
	lea	rdi, [rbp + 1]
	cmp	esi, 0xa
	cmovae	rdi, rbp
	cmovae	esi, ebx
	lea	edx, [rsi + rdx*2]
	lea	edx, [rdx + rdx*4]
	movsx	esi, byte ptr [rdi]
	add	esi, -0x30
	lea	rbp, [rdi + 1]
	cmp	esi, 0xa
	cmovae	rbp, rdi
	cmovae	esi, ebx
	lea	edx, [rsi + rdx*2]
	lea	esi, [rdx + rdx*4]
	movsx	edi, byte ptr [rbp]
	add	edi, -0x30
	lea	rdx, [rbp + 1]
	cmp	edi, 0xa
	cmovae	rdx, rbp
	cmovae	edi, ebx
	lea	esi, [rdi + rsi*2]
	test	r8b, r8b
	je	.label_1009
	movsx	ebp, byte ptr [rdx]
	mov	edi, ebp
	add	edi, -0x30
	cmp	edi, 9
	mov	r9, qword ptr [rsp + 0x60]
	ja	.label_973
	nop	
.label_1068:
	cmp	bpl, 0x30
	jne	.label_1065
	movsx	ebp, byte ptr [rdx + 1]
	inc	rdx
	mov	edi, ebp
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_1068
	jmp	.label_973
.label_998:
	mov	edx, ecx
	shr	edx, 0x1f
	mov	dword ptr [rsp + 0xb4], edx
	mov	qword ptr [r13], rsi
	sub	rsi, rdi
	xor	ebx, ebx
	test	ecx, ecx
	sete	bl
	or	ebx, 0x112
	mov	qword ptr [rsp + 0xd8], rsi
	mov	r8, qword ptr [rsp + 0x58]
	mov	rsi, qword ptr [rsp + 0x48]
	jmp	.label_866
.label_836:
	lea	rax, [rdx + 1]
	mov	qword ptr [r13], rax
	movzx	ebx, byte ptr [rdx]
	jmp	.label_1070
.label_831:
	lea	rsi, [rsp + 0x70]
	mov	rbp, qword ptr [rsp + 0xe8]
	nop	word ptr cs:[rax + rax]
.label_813:
	lea	rcx, [rsp + 0x83]
	cmp	rsi, rcx
	jae	.label_1092
	mov	byte ptr [rsi], al
	inc	rsi
	mov	rdx, qword ptr [r13]
.label_1092:
	mov	rax, rdx
	lea	rdx, [rax + 1]
	mov	qword ptr [r13], rdx
	movzx	eax, byte ptr [rax + 1]
	mov	ecx, eax
	add	ecx, -0x41
	cmp	ecx, 0x39
	ja	.label_1097
	mov	rdi, rbp
	shr	rdi, cl
	and	edi, 1
	jmp	.label_1104
	.section	.text
	.align	32
	#Procedure 0x40980a
	.globl sub_40980a
	.type sub_40980a, @function
sub_40980a:

	nop	word ptr [rax + rax]
.label_1097:
	xor	edi, edi
.label_1104:
	cmp	al, 0x2e
	je	.label_813
	test	dil, dil
	jne	.label_813
	mov	byte ptr [rsi], 0
	mov	al, byte ptr [rsp + 0x70]
	test	al, al
	je	.label_867
	lea	rcx, [rsp + 0x71]
	nop	dword ptr [rax + rax]
.label_832:
	movzx	edx, al
	add	edx, -0x61
	cmp	edx, 0x1a
	jae	.label_825
	add	al, 0xe0
.label_825:
	mov	byte ptr [rcx - 1], al
	movzx	eax, byte ptr [rcx]
	inc	rcx
	test	al, al
	jne	.label_832
.label_867:
	mov	qword ptr [rsp + 0x60], r9
	mov	rbp, r8
	mov	esi, OFFSET FLAT:label_835
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:meridian_table
	je	.label_807
	mov	esi, OFFSET FLAT:label_845
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_853
	je	.label_807
	mov	esi, OFFSET FLAT:label_1062
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_864
	je	.label_807
	mov	esi, OFFSET FLAT:label_868
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_876
	je	.label_807
	lea	rdi, [rsp + 0x70]
	call	strlen
	cmp	rax, 3
	mov	qword ptr [rsp + 0x90], rax
	je	.label_884
	cmp	rax, 4
	jne	.label_917
	cmp	byte ptr [rsp + 0x73], 0x2e
	jne	.label_917
.label_884:
	mov	esi, OFFSET FLAT:label_897
	mov	ebx, OFFSET FLAT:month_and_day_table
.label_910:
	mov	edx, 3
	lea	rdi, [rsp + 0x70]
	call	strncmp
	test	eax, eax
	je	.label_906
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_910
.label_1022:
	mov	rdi, r13
	lea	rsi, [rsp + 0x70]
	call	lookup_zone
	test	rax, rax
	jne	.label_807
	mov	esi, OFFSET FLAT:label_921
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:dst_table
	je	.label_807
	mov	esi, OFFSET FLAT:label_929
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:time_units_table
	je	.label_807
	mov	esi, OFFSET FLAT:label_937
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_941
	je	.label_807
	mov	esi, OFFSET FLAT:label_851
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_950
	je	.label_807
	mov	esi, OFFSET FLAT:label_955
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_958
	je	.label_807
	mov	esi, OFFSET FLAT:label_962
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_966
	je	.label_807
	mov	esi, OFFSET FLAT:label_970
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_975
	je	.label_807
	mov	esi, OFFSET FLAT:label_1056
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_984
	je	.label_807
	mov	esi, OFFSET FLAT:label_989
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_819
	je	.label_807
	mov	esi, OFFSET FLAT:label_844
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_1001
	je	.label_807
	mov	esi, OFFSET FLAT:label_1006
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_938
	je	.label_807
	mov	rax, qword ptr [rsp + 0x90]
	cmp	byte ptr [rsp + rax + 0x6f], 0x53
	jne	.label_1017
	mov	rax, qword ptr [rsp + 0x90]
	mov	byte ptr [rsp + rax + 0x6f], 0
	mov	esi, OFFSET FLAT:label_929
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:time_units_table
	je	.label_807
	mov	esi, OFFSET FLAT:label_937
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_941
	je	.label_807
	mov	esi, OFFSET FLAT:label_851
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_950
	je	.label_807
	mov	esi, OFFSET FLAT:label_955
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_958
	je	.label_807
	mov	esi, OFFSET FLAT:label_962
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_966
	je	.label_807
	mov	esi, OFFSET FLAT:label_970
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_975
	je	.label_807
	mov	esi, OFFSET FLAT:label_1056
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_984
	je	.label_807
	mov	esi, OFFSET FLAT:label_989
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_819
	je	.label_807
	mov	esi, OFFSET FLAT:label_844
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_1001
	je	.label_807
	mov	esi, OFFSET FLAT:label_1006
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_938
	je	.label_807
	mov	rax, qword ptr [rsp + 0x90]
	mov	byte ptr [rsp + rax + 0x6f], 0x53
.label_1017:
	mov	esi, OFFSET FLAT:label_986
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:relative_time_table
	je	.label_807
	mov	esi, OFFSET FLAT:label_1088
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_1049
	je	.label_807
	mov	esi, OFFSET FLAT:label_1096
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_1101
	je	.label_807
	mov	esi, OFFSET FLAT:label_804
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_811
	je	.label_807
	mov	esi, OFFSET FLAT:label_818
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_976
	je	.label_807
	mov	esi, OFFSET FLAT:label_830
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_834
	je	.label_807
	mov	esi, OFFSET FLAT:label_840
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_1018
	je	.label_807
	mov	esi, OFFSET FLAT:label_846
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_855
	je	.label_807
	mov	esi, OFFSET FLAT:label_860
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_865
	je	.label_807
	mov	esi, OFFSET FLAT:label_1100
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_877
	je	.label_807
	mov	esi, OFFSET FLAT:label_882
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_887
	je	.label_807
	mov	esi, OFFSET FLAT:label_891
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_953
	je	.label_807
	mov	esi, OFFSET FLAT:label_900
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_908
	je	.label_807
	mov	esi, OFFSET FLAT:label_913
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_919
	je	.label_807
	mov	esi, OFFSET FLAT:label_922
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_925
	je	.label_807
	mov	esi, OFFSET FLAT:label_930
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_934
	je	.label_807
	mov	esi, OFFSET FLAT:label_1077
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_893
	je	.label_807
	mov	esi, OFFSET FLAT:label_920
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_951
	je	.label_807
	mov	esi, OFFSET FLAT:label_956
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_959
	je	.label_807
	mov	esi, OFFSET FLAT:label_963
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_828
	je	.label_807
	movzx	esi, word ptr [rsp + 0x70]
	cmp	qword ptr [rsp + 0x90], 1
	mov	ecx, esi
	jne	.label_971
	cmp	cl, 0x41
	mov	eax, OFFSET FLAT:military_table
	je	.label_807
	cmp	cl, 0x42
	mov	eax, OFFSET FLAT:label_981
	je	.label_807
	cmp	cl, 0x43
	mov	eax, OFFSET FLAT:label_987
	je	.label_807
	cmp	cl, 0x44
	mov	eax, OFFSET FLAT:label_871
	je	.label_807
	cmp	cl, 0x45
	mov	eax, OFFSET FLAT:label_995
	je	.label_807
	cmp	cl, 0x46
	mov	eax, OFFSET FLAT:label_999
	je	.label_807
	cmp	cl, 0x47
	mov	eax, OFFSET FLAT:label_1004
	je	.label_807
	cmp	cl, 0x48
	mov	eax, OFFSET FLAT:label_1011
	je	.label_807
	cmp	cl, 0x49
	mov	eax, OFFSET FLAT:label_1015
	je	.label_807
	cmp	cl, 0x4b
	mov	eax, OFFSET FLAT:label_1031
	je	.label_807
	cmp	cl, 0x4c
	mov	eax, OFFSET FLAT:label_1024
	je	.label_807
	cmp	cl, 0x4d
	mov	eax, OFFSET FLAT:label_1026
	je	.label_807
	cmp	cl, 0x4e
	mov	eax, OFFSET FLAT:label_1027
	je	.label_807
	cmp	cl, 0x4f
	mov	eax, OFFSET FLAT:label_872
	je	.label_807
	cmp	cl, 0x50
	mov	eax, OFFSET FLAT:label_1034
	je	.label_807
	cmp	cl, 0x51
	mov	eax, OFFSET FLAT:label_1036
	je	.label_807
	cmp	cl, 0x52
	mov	eax, OFFSET FLAT:label_1039
	je	.label_807
	cmp	cl, 0x53
	mov	eax, OFFSET FLAT:label_1041
	je	.label_807
	cmp	cl, 0x54
	mov	eax, OFFSET FLAT:label_1043
	je	.label_807
	cmp	cl, 0x55
	mov	eax, OFFSET FLAT:label_1045
	je	.label_807
	cmp	cl, 0x56
	mov	eax, OFFSET FLAT:label_1048
	je	.label_807
	cmp	cl, 0x57
	mov	eax, OFFSET FLAT:label_1051
	je	.label_807
	cmp	cl, 0x58
	mov	eax, OFFSET FLAT:label_1055
	je	.label_807
	cmp	cl, 0x59
	mov	eax, OFFSET FLAT:label_907
	je	.label_807
	test	cl, cl
	je	.label_977
	cmp	cl, 0x5a
	mov	eax, OFFSET FLAT:label_1064
	je	.label_807
	jmp	.label_1067
.label_1009:
	mov	r9, qword ptr [rsp + 0x60]
	jmp	.label_973
.label_1065:
	inc	esi
.label_973:
	dec	rdx
	nop	dword ptr [rax]
.label_1069:
	movsx	edi, byte ptr [rdx + 1]
	inc	rdx
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_1069
	test	esi, esi
	setne	bl
	and	r8b, bl
	cmp	r8b, 1
	jne	.label_1071
	mov	ebx, 0x3f
	cmp	rax, r10
	mov	r8, qword ptr [rsp + 0x58]
	jne	.label_1074
.label_895:
	mov	rax, r9
	mov	rsi, qword ptr [rsp + 0x48]
	jmp	.label_866
.label_1071:
	mov	r8, qword ptr [rsp + 0x58]
	jmp	.label_1082
.label_1074:
	dec	rax
	mov	edi, 0x3b9aca00
	sub	edi, esi
	mov	esi, edi
.label_1082:
	mov	rdi, rax
	shr	rdi, 8
	mov	qword ptr [rsp + 0xc8], rdi
	mov	dword ptr [rsp + 0xb4], eax
	movsxd	rax, esi
	mov	qword ptr [r13], rdx
	xor	ebx, ebx
	test	ecx, ecx
	sete	bl
	or	ebx, 0x114
	mov	rsi, qword ptr [rsp + 0x48]
	jmp	.label_866
.label_917:
	mov	esi, OFFSET FLAT:label_897
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:month_and_day_table
	je	.label_807
	mov	esi, OFFSET FLAT:label_809
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_914
	je	.label_807
	mov	esi, OFFSET FLAT:label_822
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_829
	je	.label_807
	mov	esi, OFFSET FLAT:label_833
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_839
	je	.label_807
	mov	esi, OFFSET FLAT:label_1002
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_1028
	je	.label_807
	mov	esi, OFFSET FLAT:label_852
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_859
	je	.label_807
	mov	esi, OFFSET FLAT:label_863
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_1099
	je	.label_807
	mov	esi, OFFSET FLAT:label_875
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_881
	je	.label_807
	mov	esi, OFFSET FLAT:label_892
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_890
	je	.label_807
	mov	esi, OFFSET FLAT:label_944
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_899
	je	.label_807
	mov	esi, OFFSET FLAT:label_997
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_912
	je	.label_807
	mov	esi, OFFSET FLAT:label_918
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_1058
	je	.label_807
	mov	esi, OFFSET FLAT:label_1072
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_838
	je	.label_807
	mov	esi, OFFSET FLAT:label_969
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_857
	je	.label_807
	mov	esi, OFFSET FLAT:label_886
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_948
	je	.label_807
	mov	esi, OFFSET FLAT:label_940
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_968
	je	.label_807
	mov	esi, OFFSET FLAT:label_1084
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_1023
	je	.label_807
	mov	esi, OFFSET FLAT:label_965
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_1053
	je	.label_807
	mov	esi, OFFSET FLAT:label_974
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_806
	je	.label_807
	mov	esi, OFFSET FLAT:label_982
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_879
	je	.label_807
	mov	esi, OFFSET FLAT:label_991
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_996
	je	.label_807
	mov	esi, OFFSET FLAT:label_923
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_1003
	je	.label_807
	mov	esi, OFFSET FLAT:label_1007
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_1012
	je	.label_807
	mov	esi, OFFSET FLAT:label_1016
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_1021
	jne	.label_1022
	jmp	.label_807
.label_906:
	mov	rax, rbx
.label_807:
	mov	ebx, dword ptr [rax + 8]
	mov	eax, dword ptr [rax + 0xc]
	mov	dword ptr [rsp + 0xb4], eax
	sar	eax, 8
	cdqe	
	mov	qword ptr [rsp + 0xc8], rax
.label_1013:
	movabs	r10, 0x8000000000000000
	mov	r8, rbp
	mov	r9, qword ptr [rsp + 0x60]
	mov	rsi, qword ptr [rsp + 0x48]
	nop	word ptr cs:[rax + rax]
.label_1070:
	xor	ecx, ecx
	test	ebx, ebx
	jle	.label_854
	mov	ecx, 2
	cmp	ebx, 0x115
	mov	rax, r9
	ja	.label_1037
.label_866:
	movsxd	rcx, ebx
	movzx	ecx, byte ptr [rcx + yytranslate]
	mov	r9, rax
	jmp	.label_1037
	.section	.text
	.align	32
	#Procedure 0x40a2e5
	.globl sub_40a2e5
	.type sub_40a2e5, @function
sub_40a2e5:

	nop	word ptr cs:[rax + rax]
.label_854:
	xor	ebx, ebx
.label_1037:
	add	r14d, ecx
	cmp	r14d, 0x70
	ja	.label_1044
	movsxd	rdx, r14d
	movsx	eax, byte ptr [rdx + yycheck]
	cmp	eax, ecx
	jne	.label_1044
	movzx	eax, byte ptr [rdx + yytable]
	or	rdx, 4
	cmp	rdx, 0x6f
	jne	.label_1047
	neg	eax
	jmp	.label_1052
	.section	.text
	.align	32
	#Procedure 0x40a322
	.globl sub_40a322
	.type sub_40a322, @function
sub_40a322:

	nop	word ptr cs:[rax + rax]
.label_1044:
	movzx	eax, byte ptr [rsi + yydefact]
	test	eax, eax
	mov	ebp, 1
	je	.label_810
.label_1052:
	movsxd	rdi, eax
	movzx	r14d, byte ptr [rdi + yyr2]
	mov	eax, 1
	sub	rax, r14
	imul	rax, rax, 0x38
	mov	r11, qword ptr [r12 + rax]
	mov	rcx, qword ptr [r12 + rax + 8]
	mov	qword ptr [rsp + 0x48], rcx
	mov	rsi, qword ptr [r12 + rax + 0x10]
	mov	rcx, qword ptr [r12 + rax + 0x18]
	mov	qword ptr [rsp + 0x90], rcx
	mov	rcx, qword ptr [r12 + rax + 0x20]
	mov	qword ptr [rsp + 0xa0], rcx
	mov	rcx, qword ptr [r12 + rax + 0x28]
	mov	qword ptr [rsp + 0x98], rcx
	mov	ecx, dword ptr [r12 + rax + 0x30]
	mov	dword ptr [rsp + 0x44], ecx
	mov	edx, dword ptr [r12 + rax + 0x34]
	lea	eax, [rdi - 4]
	cmp	eax, 0x57
	ja	.label_848
	jmp	qword ptr [(rax * 8) + label_1083]
.label_1511:
	mov	rax, qword ptr [r12 + 0x30]
	mov	qword ptr [rsp + 0x30], rax
	movdqu	xmm0, xmmword ptr [r12]
	movups	xmm1, xmmword ptr [r12 + 0x10]
	movups	xmm2, xmmword ptr [r12 + 0x20]
	movups	xmmword ptr [rsp + 0x20], xmm2
	movups	xmmword ptr [rsp + 0x10], xmm1
	movdqu	xmmword ptr [rsp], xmm0
	mov	ebp, 1
	mov	qword ptr [rsp + 0x68], rsi
	mov	esi, 1
	mov	qword ptr [rsp + 0x50], rdi
	mov	rdi, r13
	mov	qword ptr [rsp + 0x58], r8
	mov	qword ptr [rsp + 0x60], r9
	mov	dword ptr [rsp + 0x40], edx
	mov	qword ptr [rsp + 0xa8], r11
	call	apply_relative_time
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rsi, qword ptr [rsp + 0x68]
	mov	edx, dword ptr [rsp + 0x40]
	mov	rdi, qword ptr [rsp + 0x50]
	mov	r9, qword ptr [rsp + 0x60]
	mov	r8, qword ptr [rsp + 0x58]
	movabs	r10, 0x8000000000000000
	jmp	.label_814
.label_1047:
	mov	rcx, qword ptr [rsp + 0xc8]
	shl	rcx, 8
	mov	edx, dword ptr [rsp + 0xb4]
	movzx	edx, dl
	or	rdx, rcx
	mov	qword ptr [r12 + 0x38], rdx
	mov	qword ptr [r12 + 0x40], r9
	mov	rcx, qword ptr [rsp + 0xd8]
	mov	qword ptr [r12 + 0x48], rcx
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r12 + 0x60], xmm0
	movdqu	xmmword ptr [r12 + 0x50], xmm0
	lea	rcx, [r12 + 0x38]
	mov	ebx, 0xfffffffe
	jmp	.label_946
.label_1525:
	mov	rax, qword ptr [r12 - 0x30]
	jmp	.label_861
.label_1532:
	mov	r11, qword ptr [r12 + 8]
	xor	eax, eax
	mov	qword ptr [rsp + 0x48], rax
	jmp	.label_848
.label_1513:
	mov	r11, qword ptr [r12 - 0x30]
	jmp	.label_874
.label_1528:
	mov	rax, qword ptr [r12 - 0x30]
	jmp	.label_878
.label_1516:
	mov	rax, qword ptr [r12 - 0x30]
	jmp	.label_880
.label_1529:
	mov	rax, qword ptr [r12 - 0x38]
	mov	qword ptr [rsp + 0x98], rax
	mov	eax, dword ptr [r12 - 0x30]
	mov	dword ptr [rsp + 0x44], eax
	xor	r11d, r11d
	xor	eax, eax
	mov	qword ptr [rsp + 0x48], rax
	xor	esi, esi
	xor	eax, eax
	mov	qword ptr [rsp + 0x90], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0xa0], rax
	jmp	.label_848
.label_1520:
	mov	rsi, qword ptr [r12]
	jmp	.label_905
.label_1522:
	mov	rax, qword ptr [r12 - 0x30]
	jmp	.label_1014
.label_1534:
	mov	qword ptr [rsp + 0x50], rdi
	movdqu	xmm0, xmmword ptr [r12 - 0x38]
	mov	rdi, qword ptr [r12 - 0x28]
	mov	rax, qword ptr [r13 + 0xa8]
	test	rax, rax
	mov	qword ptr [rsp + 0x58], r8
	mov	qword ptr [rsp + 0x60], r9
	mov	dword ptr [rsp + 0x40], edx
	mov	qword ptr [rsp + 0x68], rsi
	mov	qword ptr [rsp + 0xa8], r11
	je	.label_931
	cmp	qword ptr [r13 + 0x30], 0
	jne	.label_931
	cmp	byte ptr [r13 + 0xa1], 0
	je	.label_932
.label_931:
	cmp	rdi, 5
	jl	.label_936
	inc	rax
	mov	qword ptr [r13 + 0xa8], rax
	pshufd	xmm0, xmm0, 0x4e
	movq	rcx, xmm0
	movabs	rbp, 0xa3d70a3d70a3d70b
	mov	rax, rcx
	imul	rbp
	mov	rsi, rdx
	add	rsi, rcx
	mov	rax, rsi
	shr	rax, 0x3f
	sar	rsi, 6
	add	rsi, rax
	imul	rax, rsi, 0x64
	mov	rdx, rcx
	sub	rdx, rax
	mov	qword ptr [r13 + 0x40], rdx
	mov	rax, rsi
	imul	rbp
	add	rdx, rsi
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 6
	add	rdx, rax
	imul	rax, rdx, 0x64
	sub	rsi, rax
	mov	qword ptr [r13 + 0x38], rsi
	movabs	rdx, 0x346dc5d63886594b
	mov	rax, rcx
	imul	rdx
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 0xb
	add	rdx, rax
	mov	qword ptr [r13 + 0x28], rdx
	add	rdi, -4
	mov	qword ptr [r13 + 0x30], rdi
	jmp	.label_939
.label_1518:
	mov	rsi, qword ptr [r12]
	test	rsi, rsi
	js	.label_985
	lea	r11, [r12 - 0x38]
	jmp	.label_990
.label_1517:
	xor	r11d, r11d
	mov	eax, 1
	jmp	.label_993
.label_1510:
	mov	qword ptr [rsp + 0x68], rsi
	mov	esi, dword ptr [r12]
	mov	rax, qword ptr [r12 - 8]
	mov	qword ptr [rsp + 0x30], rax
	movdqu	xmm0, xmmword ptr [r12 - 0x38]
	movups	xmm1, xmmword ptr [r12 - 0x28]
	movups	xmm2, xmmword ptr [r12 - 0x18]
	movups	xmmword ptr [rsp + 0x20], xmm2
	movups	xmmword ptr [rsp + 0x10], xmm1
	movdqu	xmmword ptr [rsp], xmm0
	mov	qword ptr [rsp + 0x50], rdi
	mov	rdi, r13
	mov	qword ptr [rsp + 0x58], r8
	mov	rbp, r9
	mov	dword ptr [rsp + 0x40], edx
	mov	qword ptr [rsp + 0xa8], r11
	call	apply_relative_time
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rsi, qword ptr [rsp + 0x68]
	mov	edx, dword ptr [rsp + 0x40]
	mov	rdi, qword ptr [rsp + 0x50]
	mov	r9, rbp
	mov	r8, qword ptr [rsp + 0x58]
	movabs	r10, 0x8000000000000000
	mov	ebp, 1
.label_814:
	test	al, al
	jne	.label_848
	jmp	.label_810
.label_1509:
	mov	rax, qword ptr [r12 - 0x60]
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	qword ptr [rcx + 0x10], rax
	movdqu	xmm0, xmmword ptr [r12 - 0x70]
	movdqu	xmmword ptr [rcx], xmm0
	mov	rax, qword ptr [r12 - 0x30]
	mov	rcx, rax
	neg	rcx
	cmp	rax, r10
	mov	qword ptr [r13 + 0x38], rcx
	mov	ebp, 1
	je	.label_810
	mov	rax, qword ptr [r12 + 8]
	mov	rcx, rax
	neg	rcx
	cmp	rax, r10
	mov	qword ptr [r13 + 0x40], rcx
	jne	.label_848
	jmp	.label_810
.label_1663:
	mov	rax, qword ptr [r12 - 0x30]
	mov	qword ptr [r13 + 0x40], rax
	mov	rax, qword ptr [r12]
	mov	qword ptr [r13 + 0x38], rax
	jmp	.label_848
.label_1535:
	mov	r11, -1
	jmp	.label_848
.label_1645:
	mov	dword ptr [r13 + 0x14], 1
	inc	qword ptr [r13 + 0xc0]
	jmp	.label_848
.label_1648:
	mov	eax, dword ptr [r12 - 0x38]
	mov	dword ptr [r13 + 0x18], eax
	jmp	.label_1063
.label_1640:
	mov	rax, qword ptr [r12 - 0x30]
	mov	qword ptr [r13 + 0x48], rax
	pxor	xmm0, xmm0
	mov	rax, qword ptr [rsp + 0xd0]
	movdqu	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	mov	dword ptr [r13 + 0x1c], 2
	jmp	.label_848
.label_1652:
	mov	eax, 0xe10
	add	eax, dword ptr [r12 - 0x38]
	mov	dword ptr [r13 + 0x18], eax
	jmp	.label_848
.label_1650:
	mov	dword ptr [rsp + 0x40], edx
	mov	rdx, qword ptr [r12 - 0x30]
	imul	rcx, rdx, 0x64
	cmp	qword ptr [r12 - 0x28], 3
	mov	rax, qword ptr [r12]
	cmovge	rcx, rdx
	test	rax, rax
	cmovns	rcx, rdx
	js	.label_1076
	mov	rbp, rsi
	mov	dl, byte ptr [r12 - 0x38]
	test	rcx, rcx
	js	.label_1087
	movabs	rsi, 0x222222222222222
	cmp	rcx, rsi
	jg	.label_1081
	jmp	.label_1095
.label_1637:
	mov	rax, qword ptr [r12 - 0x30]
	mov	qword ptr [r13 + 0x48], rax
	pxor	xmm0, xmm0
	mov	rax, qword ptr [rsp + 0xd0]
	movdqu	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	jmp	.label_898
.label_1660:
	mov	rax, qword ptr [r12 - 0x70]
	mov	qword ptr [r13 + 0x38], rax
	mov	rax, qword ptr [r12 - 0x30]
	mov	rcx, rax
	neg	rcx
	cmp	rax, r10
	mov	qword ptr [r13 + 0x40], rcx
	mov	ebp, 1
	je	.label_810
	mov	rax, qword ptr [r12 + 8]
	mov	rcx, rax
	neg	rcx
	cmp	rax, r10
	mov	qword ptr [r13 + 0x28], rcx
	jne	.label_827
	jmp	.label_810
.label_1655:
	mov	rax, qword ptr [r12 - 0x38]
	jmp	.label_837
.label_1649:
	mov	dword ptr [r13 + 0x18], 0x6270
.label_1063:
	mov	rax, qword ptr [r12 + 0x30]
	mov	qword ptr [rsp + 0x30], rax
	movdqu	xmm0, xmmword ptr [r12]
	movups	xmm1, xmmword ptr [r12 + 0x10]
	movups	xmm2, xmmword ptr [r12 + 0x20]
	movups	xmmword ptr [rsp + 0x20], xmm2
	movups	xmmword ptr [rsp + 0x10], xmm1
	movdqu	xmmword ptr [rsp], xmm0
	mov	ebp, 1
	mov	qword ptr [rsp + 0x68], rsi
	mov	esi, 1
	mov	qword ptr [rsp + 0x50], rdi
	mov	rdi, r13
	mov	qword ptr [rsp + 0x58], r8
	mov	qword ptr [rsp + 0x60], r9
	mov	dword ptr [rsp + 0x40], edx
	mov	qword ptr [rsp + 0xa8], r11
	call	apply_relative_time
	test	al, al
	je	.label_810
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_883
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r13
	call	debug_print_relative_time
	mov	r11, qword ptr [rsp + 0xa8]
	jmp	.label_894
.label_1639:
	mov	rax, qword ptr [r12 - 0x110]
	mov	rcx, qword ptr [r12 - 0xa0]
	mov	ebp, edx
	mov	rdx, qword ptr [r12 - 0x38]
	mov	r10, r9
	mov	r9, r11
	mov	r11, rsi
	movsxd	rsi, dword ptr [r12 - 0x30]
	mov	qword ptr [r13 + 0x48], rax
	mov	qword ptr [r13 + 0x50], rcx
	mov	qword ptr [r13 + 0x58], rdx
	mov	edx, ebp
	mov	qword ptr [r13 + 0x60], rsi
	mov	rsi, r11
	mov	r11, r9
	mov	r9, r10
	movabs	r10, 0x8000000000000000
	jmp	.label_898
.label_1646:
	mov	eax, dword ptr [r12]
	mov	dword ptr [r13 + 0x18], eax
	jmp	.label_848
.label_1629:
	inc	qword ptr [r13 + 0xc8]
	mov	qword ptr [rsp + 0x50], rdi
	xor	edi, edi
	mov	qword ptr [rsp + 0x68], rsi
	mov	esi, OFFSET FLAT:label_927
	jmp	.label_928
.label_1656:
	mov	rax, qword ptr [r12 - 0x30]
.label_837:
	mov	qword ptr [r13 + 8], rax
	mov	eax, dword ptr [r12]
	mov	dword ptr [r13 + 0x10], eax
	mov	byte ptr [r13 + 0xe0], 1
	jmp	.label_848
.label_1658:
	mov	rbp, qword ptr [r12 - 0xd0]
	mov	al, byte ptr [r13 + 0xd9]
	cmp	rbp, 4
	jl	.label_943
	lea	rcx, [r12 - 0xe0]
	mov	qword ptr [rsp + 0xe0], rcx
	test	al, al
	je	.label_954
	mov	qword ptr [rsp + 0x50], rdi
	xor	edi, edi
	mov	qword ptr [rsp + 0x68], rsi
	mov	esi, OFFSET FLAT:label_960
	mov	dword ptr [rsp + 0x40], edx
	mov	edx, 5
	mov	qword ptr [rsp + 0x58], r8
	mov	qword ptr [rsp + 0x60], r9
	mov	qword ptr [rsp + 0xa8], r11
	call	dcgettext
	mov	rcx, rax
	mov	rsi, qword ptr [r12 - 0xd8]
	xor	eax, eax
	mov	rdi, rcx
	mov	rdx, rbp
	call	dbg_printf
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rsi, qword ptr [rsp + 0x68]
	mov	edx, dword ptr [rsp + 0x40]
	mov	rdi, qword ptr [rsp + 0x50]
	mov	r9, qword ptr [rsp + 0x60]
	mov	r8, qword ptr [rsp + 0x58]
	movabs	r10, 0x8000000000000000
.label_954:
	mov	rbp, qword ptr [rsp + 0xe0]
	mov	rax, qword ptr [rbp + 0x10]
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	qword ptr [rcx + 0x10], rax
	movdqu	xmm0, xmmword ptr [rbp]
	movdqu	xmmword ptr [rcx], xmm0
.label_1657:
	mov	rax, qword ptr [r12 - 0x68]
	jmp	.label_1005
.label_1632:
	inc	qword ptr [r13 + 0xa8]
	mov	qword ptr [rsp + 0x50], rdi
	xor	edi, edi
	mov	qword ptr [rsp + 0x68], rsi
	mov	esi, OFFSET FLAT:label_1010
	jmp	.label_928
.label_1638:
	mov	rax, qword ptr [r12 - 0xa0]
	mov	rcx, qword ptr [r12 - 0x30]
	mov	qword ptr [r13 + 0x48], rax
	mov	qword ptr [r13 + 0x50], rcx
	pxor	xmm0, xmm0
	mov	rax, qword ptr [rsp + 0xc0]
	movdqu	xmmword ptr [rax], xmm0
.label_898:
	mov	eax, dword ptr [r12]
	mov	dword ptr [r13 + 0x1c], eax
	jmp	.label_848
.label_1651:
	mov	eax, 0xe10
	add	eax, dword ptr [r12]
	mov	dword ptr [r13 + 0x18], eax
	jmp	.label_848
.label_1627:
	movdqu	xmm0, xmmword ptr [r12]
	mov	rax, qword ptr [rsp + 0xc0]
	movdqu	xmmword ptr [rax], xmm0
	mov	byte ptr [r13 + 0xa0], 1
	mov	qword ptr [rsp + 0x50], rdi
	xor	edi, edi
	mov	qword ptr [rsp + 0x68], rsi
	mov	esi, OFFSET FLAT:label_1033
	jmp	.label_928
.label_1628:
	inc	qword ptr [r13 + 0xc8]
	inc	qword ptr [r13 + 0xa8]
	mov	qword ptr [rsp + 0x50], rdi
	xor	edi, edi
	mov	qword ptr [rsp + 0x68], rsi
	mov	esi, OFFSET FLAT:label_1042
	jmp	.label_928
.label_1633:
	inc	qword ptr [r13 + 0xb0]
	mov	qword ptr [rsp + 0x50], rdi
	xor	edi, edi
	mov	qword ptr [rsp + 0x68], rsi
	mov	esi, OFFSET FLAT:label_1046
	jmp	.label_928
.label_1634:
	mov	qword ptr [rsp + 0x50], rdi
	xor	edi, edi
	mov	qword ptr [rsp + 0x68], rsi
	mov	esi, OFFSET FLAT:label_883
	jmp	.label_1054
.label_1641:
	mov	rax, qword ptr [r12 - 0xa0]
	mov	rcx, qword ptr [r12 - 0x30]
	mov	qword ptr [r13 + 0x48], rax
	mov	qword ptr [r13 + 0x50], rcx
	jmp	.label_1061
.label_1514:
	xor	eax, eax
	mov	qword ptr [rsp + 0x48], rax
	mov	r11d, 1
	jmp	.label_820
.label_1642:
	mov	rax, qword ptr [r12 - 0x110]
	mov	rcx, qword ptr [r12 - 0xa0]
	mov	ebp, edx
	mov	rdx, qword ptr [r12 - 0x38]
	mov	r10, r9
	mov	r9, r11
	mov	r11, rsi
	movsxd	rsi, dword ptr [r12 - 0x30]
	mov	qword ptr [r13 + 0x48], rax
	mov	qword ptr [r13 + 0x50], rcx
	mov	qword ptr [r13 + 0x58], rdx
	mov	edx, ebp
	mov	qword ptr [r13 + 0x60], rsi
	mov	rsi, r11
	mov	r11, r9
	mov	r9, r10
	movabs	r10, 0x8000000000000000
	mov	dword ptr [r13 + 0x1c], 2
	jmp	.label_848
.label_1630:
	inc	qword ptr [r13 + 0xb8]
	mov	qword ptr [rsp + 0x50], rdi
	xor	edi, edi
	mov	qword ptr [rsp + 0x68], rsi
	mov	esi, OFFSET FLAT:label_1086
	jmp	.label_928
.label_1631:
	inc	qword ptr [r13 + 0xd0]
	mov	qword ptr [rsp + 0x50], rdi
	xor	edi, edi
	mov	qword ptr [rsp + 0x68], rsi
	mov	esi, OFFSET FLAT:label_1093
	jmp	.label_928
.label_1536:
	mov	r11, qword ptr [r12 + 8]
	jmp	.label_848
.label_1508:
	mov	rax, qword ptr [r12 - 0x68]
	mov	qword ptr [r13 + 0x40], rax
	mov	rax, qword ptr [r12 - 0x38]
	mov	qword ptr [r13 + 0x38], rax
	jmp	.label_805
.label_1515:
	mov	rax, qword ptr [r12 - 0x38]
.label_880:
	mov	qword ptr [rsp + 0x48], rax
	xor	r11d, r11d
	jmp	.label_820
.label_1636:
	mov	qword ptr [rsp + 0x50], rdi
	xor	edi, edi
	mov	qword ptr [rsp + 0x68], rsi
	mov	esi, OFFSET FLAT:label_823
.label_1054:
	mov	dword ptr [rsp + 0x40], edx
	mov	edx, 5
	mov	qword ptr [rsp + 0x58], r8
	mov	qword ptr [rsp + 0x60], r9
	mov	rbp, r11
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r13
	call	debug_print_relative_time
	jmp	.label_842
.label_1521:
	mov	rax, qword ptr [r12 - 0x38]
.label_1014:
	mov	qword ptr [rsp + 0x90], rax
	xor	r11d, r11d
	jmp	.label_843
.label_1635:
	mov	qword ptr [rsp + 0x50], rdi
	xor	edi, edi
	mov	qword ptr [rsp + 0x68], rsi
	mov	esi, OFFSET FLAT:label_850
.label_928:
	mov	dword ptr [rsp + 0x40], edx
	mov	edx, 5
	mov	qword ptr [rsp + 0x58], r8
	mov	qword ptr [rsp + 0x60], r9
	mov	rbp, r11
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r13
	call	debug_print_current_time
.label_842:
	mov	r11, rbp
.label_894:
	mov	rsi, qword ptr [rsp + 0x68]
	mov	edx, dword ptr [rsp + 0x40]
	mov	rdi, qword ptr [rsp + 0x50]
	mov	r9, qword ptr [rsp + 0x60]
	mov	r8, qword ptr [rsp + 0x58]
	movabs	r10, 0x8000000000000000
	jmp	.label_848
.label_1644:
	mov	eax, dword ptr [r12]
	mov	dword ptr [r13 + 0x14], eax
	jmp	.label_848
.label_1661:
	mov	rax, qword ptr [r12 - 0x38]
.label_1005:
	mov	qword ptr [r13 + 0x38], rax
	mov	rax, qword ptr [r12 + 8]
	mov	qword ptr [r13 + 0x40], rax
	jmp	.label_848
.label_1643:
	mov	dword ptr [rsp + 0x40], edx
	inc	qword ptr [r13 + 0xd0]
	mov	rdx, qword ptr [r12 - 0x30]
	imul	rcx, rdx, 0x64
	cmp	qword ptr [r12 - 0x28], 3
	mov	rax, qword ptr [r12]
	cmovge	rcx, rdx
	test	rax, rax
	cmovns	rcx, rdx
	js	.label_902
	mov	rbp, rsi
	mov	dl, byte ptr [r12 - 0x38]
	test	rcx, rcx
	js	.label_1050
	movabs	rsi, 0x222222222222222
	cmp	rcx, rsi
	jg	.label_924
	jmp	.label_896
.label_1512:
	mov	r11, qword ptr [r12 - 0x38]
.label_874:
	xor	eax, eax
.label_993:
	mov	qword ptr [rsp + 0x48], rax
.label_820:
	xor	esi, esi
	jmp	.label_935
.label_1647:
	mov	dword ptr [r13 + 0x18], 0x6270
	jmp	.label_848
.label_1527:
	mov	rax, qword ptr [r12 - 0x38]
.label_878:
	mov	qword ptr [rsp + 0x98], rax
	xor	r11d, r11d
	jmp	.label_942
.label_1533:
	mov	qword ptr [rsp + 0x50], rdi
	movdqu	xmm0, xmmword ptr [r12]
	mov	rdi, qword ptr [r12 + 0x10]
	mov	rax, qword ptr [r13 + 0xa8]
	test	rax, rax
	je	.label_945
	cmp	qword ptr [r13 + 0x30], 0
	jne	.label_945
	cmp	byte ptr [r13 + 0xa1], 0
	je	.label_957
.label_945:
	cmp	rdi, 5
	jl	.label_961
	inc	rax
	mov	qword ptr [r13 + 0xa8], rax
	pshufd	xmm0, xmm0, 0x4e
	movq	rcx, xmm0
	movabs	rbp, 0xa3d70a3d70a3d70b
	mov	rax, rcx
	mov	dword ptr [rsp + 0x40], edx
	imul	rbp
	mov	rbp, rsi
	mov	rsi, rdx
	add	rsi, rcx
	mov	rax, rsi
	shr	rax, 0x3f
	sar	rsi, 6
	add	rsi, rax
	imul	rax, rsi, 0x64
	mov	rdx, rcx
	sub	rdx, rax
	mov	qword ptr [r13 + 0x40], rdx
	mov	rax, rsi
	movabs	rdx, 0xa3d70a3d70a3d70b
	imul	rdx
	add	rdx, rsi
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 6
	add	rdx, rax
	imul	rax, rdx, 0x64
	sub	rsi, rax
	mov	qword ptr [r13 + 0x38], rsi
	mov	rsi, rbp
	movabs	rdx, 0x346dc5d63886594b
	mov	rax, rcx
	imul	rdx
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 0xb
	add	rdx, rax
	mov	qword ptr [r13 + 0x28], rdx
	mov	edx, dword ptr [rsp + 0x40]
	add	rdi, -4
.label_972:
	mov	qword ptr [r13 + 0x30], rdi
	mov	rdi, qword ptr [rsp + 0x50]
	jmp	.label_848
.label_1524:
	mov	rax, qword ptr [r12 - 0x38]
.label_861:
	mov	qword ptr [rsp + 0xa0], rax
	xor	r11d, r11d
	jmp	.label_1025
.label_1523:
	xor	r11d, r11d
	mov	eax, 1
	mov	qword ptr [rsp + 0x90], rax
.label_843:
	xor	eax, eax
	mov	qword ptr [rsp + 0x48], rax
	xor	esi, esi
	jmp	.label_1029
.label_1654:
	mov	qword ptr [r13 + 8], 0
	mov	eax, dword ptr [r12 - 0x38]
	mov	dword ptr [r13 + 0x10], eax
	jmp	.label_848
.label_1653:
	mov	qword ptr [r13 + 8], 0
	mov	eax, dword ptr [r12]
	mov	dword ptr [r13 + 0x10], eax
	jmp	.label_848
.label_1662:
	mov	rax, qword ptr [r12 - 0xa8]
	jmp	.label_1040
.label_1659:
	mov	rax, qword ptr [r12 - 0x68]
	mov	qword ptr [r13 + 0x40], rax
	mov	rax, qword ptr [r12 - 0x38]
	mov	qword ptr [r13 + 0x38], rax
	mov	rax, qword ptr [r12 + 8]
	mov	rcx, rax
	neg	rcx
	cmp	rax, r10
	mov	qword ptr [r13 + 0x28], rcx
	mov	ebp, 1
	je	.label_810
.label_827:
	mov	rax, qword ptr [r12 + 0x10]
	mov	qword ptr [r13 + 0x30], rax
	jmp	.label_848
.label_1530:
	xor	r11d, r11d
	mov	eax, 1
	mov	qword ptr [rsp + 0x98], rax
.label_942:
	xor	eax, eax
	mov	qword ptr [rsp + 0x48], rax
	xor	esi, esi
	xor	eax, eax
	mov	qword ptr [rsp + 0x90], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0xa0], rax
	jmp	.label_1057
.label_1531:
	mov	rsi, qword ptr [r12]
	test	rsi, rsi
	jns	.label_1066
	mov	rbp, rsi
	lea	r11, [r12 - 0x30]
	mov	rsi, qword ptr [r12 - 0x30]
	test	rsi, rsi
	js	.label_988
	mov	rcx, rbp
	cmp	rcx, -1
	jne	.label_994
	mov	rsi, rcx
	jmp	.label_980
.label_1519:
	mov	rsi, qword ptr [r12]
	test	rsi, rsi
	js	.label_1073
.label_1066:
	lea	r11, [r12 - 0x30]
.label_990:
	test	rsi, rsi
	je	.label_980
	mov	rbp, rsi
	mov	dword ptr [rsp + 0x40], edx
	mov	rsi, qword ptr [r11]
	test	rsi, rsi
	js	.label_1080
	lea	rax, [r10 - 1]
	xor	edx, edx
	mov	rcx, rbp
	div	rcx
	mov	ebp, 1
	cmp	rax, rsi
	jmp	.label_1085
.label_1526:
	xor	r11d, r11d
	mov	eax, 1
	mov	qword ptr [rsp + 0xa0], rax
.label_1025:
	xor	eax, eax
	mov	qword ptr [rsp + 0x48], rax
	xor	esi, esi
	xor	eax, eax
	mov	qword ptr [rsp + 0x90], rax
	jmp	.label_1094
.label_943:
	test	al, al
	je	.label_1103
	mov	qword ptr [rsp + 0x50], rdi
	xor	edi, edi
	mov	qword ptr [rsp + 0x68], rsi
	mov	esi, OFFSET FLAT:label_888
	mov	dword ptr [rsp + 0x40], edx
	mov	edx, 5
	mov	qword ptr [rsp + 0x58], r8
	mov	qword ptr [rsp + 0x60], r9
	mov	rbp, r11
	call	dcgettext
	mov	rcx, rax
	mov	rsi, qword ptr [r12 - 0xd8]
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
	mov	r11, rbp
	mov	rsi, qword ptr [rsp + 0x68]
	mov	edx, dword ptr [rsp + 0x40]
	mov	rdi, qword ptr [rsp + 0x50]
	mov	r9, qword ptr [rsp + 0x60]
	mov	r8, qword ptr [rsp + 0x58]
	movabs	r10, 0x8000000000000000
.label_1103:
	mov	rax, qword ptr [r12 - 0xd8]
.label_1040:
	mov	qword ptr [r13 + 0x38], rax
	mov	rax, qword ptr [r12 - 0x68]
	mov	qword ptr [r13 + 0x40], rax
.label_805:
	mov	rax, qword ptr [r12 + 0x10]
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	qword ptr [rcx + 0x10], rax
	movdqu	xmm0, xmmword ptr [r12]
	movdqu	xmmword ptr [rcx], xmm0
	jmp	.label_848
.label_936:
	inc	qword ptr [r13 + 0xc8]
	xor	eax, eax
	cmp	rdi, 3
	pshufd	xmm0, xmm0, 0x4e
	movq	rcx, xmm0
	jl	.label_862
	movabs	rdx, 0xa3d70a3d70a3d70b
	mov	rax, rcx
	imul	rdx
	add	rdx, rcx
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 6
	add	rdx, rax
	imul	rsi, rdx, 0x64
	mov	rax, rcx
	sub	rax, rsi
	mov	rcx, rdx
.label_862:
	mov	qword ptr [r13 + 0x48], rcx
	mov	qword ptr [r13 + 0x50], rax
	pxor	xmm0, xmm0
	mov	rax, qword ptr [rsp + 0xc0]
	movdqu	xmmword ptr [rax], xmm0
	mov	dword ptr [r13 + 0x1c], 2
.label_939:
	mov	rax, qword ptr [r12 + 0x30]
	mov	qword ptr [rsp + 0x30], rax
	movdqu	xmm0, xmmword ptr [r12]
	movups	xmm1, xmmword ptr [r12 + 0x10]
	movups	xmm2, xmmword ptr [r12 + 0x20]
	movups	xmmword ptr [rsp + 0x20], xmm2
	movups	xmmword ptr [rsp + 0x10], xmm1
	movdqu	xmmword ptr [rsp], xmm0
	mov	ebp, 1
	mov	esi, 1
	mov	rdi, r13
	call	apply_relative_time
	test	al, al
	movabs	r10, 0x8000000000000000
	mov	r8, qword ptr [rsp + 0x58]
	mov	r9, qword ptr [rsp + 0x60]
	mov	rdi, qword ptr [rsp + 0x50]
	mov	edx, dword ptr [rsp + 0x40]
	mov	rsi, qword ptr [rsp + 0x68]
	mov	r11, qword ptr [rsp + 0xa8]
	jne	.label_848
	jmp	.label_810
.label_961:
	inc	qword ptr [r13 + 0xc8]
	xor	eax, eax
	cmp	rdi, 3
	pshufd	xmm0, xmm0, 0x4e
	movq	rcx, xmm0
	jl	.label_869
	mov	edi, edx
	movabs	rdx, 0xa3d70a3d70a3d70b
	mov	rax, rcx
	imul	rdx
	add	rdx, rcx
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 6
	add	rdx, rax
	mov	rbp, rsi
	imul	rsi, rdx, 0x64
	mov	rax, rcx
	sub	rax, rsi
	mov	rsi, rbp
	mov	rcx, rdx
	mov	edx, edi
.label_869:
	mov	rdi, qword ptr [rsp + 0x50]
	mov	qword ptr [r13 + 0x48], rcx
	mov	qword ptr [r13 + 0x50], rax
.label_1061:
	pxor	xmm0, xmm0
	mov	rax, qword ptr [rsp + 0xc0]
	movdqu	xmmword ptr [rax], xmm0
	mov	dword ptr [r13 + 0x1c], 2
	jmp	.label_848
.label_1080:
	mov	rax, r10
	cqo	
	mov	rcx, rbp
	idiv	rcx
	mov	ebp, 1
	cmp	rsi, rax
.label_1085:
	mov	rsi, rcx
	mov	edx, dword ptr [rsp + 0x40]
	jge	.label_980
	jmp	.label_810
.label_985:
	mov	rbp, rsi
	lea	r11, [r12 - 0x38]
	mov	rsi, qword ptr [r12 - 0x38]
	test	rsi, rsi
	js	.label_988
	mov	rcx, rbp
	cmp	rcx, -1
	jne	.label_994
	mov	rsi, rcx
	jmp	.label_980
.label_1076:
	movabs	rdx, 0xa3d70a3d70a3d70b
	mov	rax, rcx
	imul	rdx
	add	rdx, rcx
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 6
	add	rdx, rax
	imul	rax, rdx, 0x3c
	imul	rdx, rdx, 0x64
	sub	rcx, rdx
	add	rcx, rax
	mov	al, 1
	jmp	.label_1000
.label_902:
	movabs	rdx, 0xa3d70a3d70a3d70b
	mov	rax, rcx
	imul	rdx
	add	rdx, rcx
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 6
	add	rdx, rax
	imul	rax, rdx, 0x3c
	imul	rdx, rdx, 0x64
	sub	rcx, rdx
	add	rcx, rax
	mov	al, 1
	jmp	.label_1020
.label_1073:
	mov	rbp, rsi
	lea	r11, [r12 - 0x30]
	mov	rsi, qword ptr [r12 - 0x30]
	test	rsi, rsi
	js	.label_988
	mov	rcx, rbp
	cmp	rcx, -1
	je	.label_1035
.label_994:
	mov	rax, r10
	mov	ebp, edx
	cqo	
	idiv	rcx
	mov	edx, ebp
	mov	ebp, 1
	cmp	rax, rsi
	jmp	.label_1038
.label_988:
	lea	rax, [r10 - 1]
	mov	dword ptr [rsp + 0x40], edx
	cqo	
	mov	rcx, rbp
	idiv	rcx
	mov	edx, dword ptr [rsp + 0x40]
	mov	ebp, 1
	cmp	rsi, rax
.label_1038:
	mov	rsi, rcx
	jl	.label_810
.label_980:
	imul	rsi, qword ptr [r11]
.label_905:
	xor	r11d, r11d
	xor	eax, eax
	mov	qword ptr [rsp + 0x48], rax
.label_935:
	xor	eax, eax
	mov	qword ptr [rsp + 0x90], rax
.label_1029:
	xor	eax, eax
	mov	qword ptr [rsp + 0xa0], rax
.label_1094:
	xor	eax, eax
	mov	qword ptr [rsp + 0x98], rax
.label_1057:
	mov	dword ptr [rsp + 0x44], 0
.label_848:
	sub	r8, r14
	neg	r14
	imul	rax, r14, 0x38
	lea	rcx, [r12 + rax + 0x38]
	mov	qword ptr [r12 + rax + 0x38], r11
	mov	rbp, qword ptr [rsp + 0x48]
	mov	qword ptr [r12 + rax + 0x40], rbp
	mov	qword ptr [r12 + rax + 0x48], rsi
	mov	rsi, qword ptr [rsp + 0x90]
	mov	qword ptr [r12 + rax + 0x50], rsi
	mov	rsi, qword ptr [rsp + 0xa0]
	mov	qword ptr [r12 + rax + 0x58], rsi
	mov	rsi, qword ptr [rsp + 0x98]
	mov	qword ptr [r12 + rax + 0x60], rsi
	mov	esi, dword ptr [rsp + 0x44]
	mov	dword ptr [r12 + rax + 0x68], esi
	mov	dword ptr [r12 + rax + 0x6c], edx
	movzx	eax, byte ptr [rdi + yyr1]
	movsx	esi, byte ptr [rax + label_1059]
	movsx	edx, word ptr [rsp + r8*2 + 0xf0]
	add	esi, edx
	cmp	esi, 0x70
	ja	.label_1060
	movsxd	rsi, esi
	movsx	edi, byte ptr [rsi + yycheck]
	cmp	edi, edx
	jne	.label_1060
	movzx	eax, byte ptr [rsi + yytable]
	jmp	.label_946
	.section	.text
	.align	32
	#Procedure 0x40b3c3
	.globl sub_40b3c3
	.type sub_40b3c3, @function
sub_40b3c3:

	nop	word ptr cs:[rax + rax]
.label_1060:
	movsx	eax, byte ptr [rax + label_1089]
.label_946:
	mov	word ptr [rsp + r8*2 + 0xf2], ax
	inc	r8
	mov	ebp, 2
	cmp	r8, 0x12
	mov	r12, rcx
	jle	.label_1032
	jmp	.label_810
.label_1087:
	movabs	rsi, 0xfdddddddddddddde
	cmp	rcx, rsi
	jge	.label_1095
.label_1081:
	mov	sil, 1
	jmp	.label_808
.label_1095:
	xor	esi, esi
.label_808:
	imul	rcx, rcx, 0x3c
	test	dl, dl
	je	.label_812
	mov	rdx, rax
	xor	rdx, r10
	cmp	rcx, rdx
	setl	dl
	sub	rcx, rax
	jmp	.label_816
.label_812:
	lea	rdx, [r10 - 1]
	sub	rdx, rax
	cmp	rdx, rcx
	setl	dl
	add	rcx, rax
.label_816:
	or	dl, sil
	sete	al
	mov	rsi, rbp
.label_1000:
	mov	ebp, 1
	test	al, al
	je	.label_810
	lea	rax, [rcx + 0x5a0]
	cmp	rax, 0xb40
	ja	.label_810
	mov	qword ptr [rsp + 0x68], rsi
	movabs	rsi, 0x3c00000000
	imul	eax, ecx, 0x3c
	mov	dword ptr [r13 + 0x18], eax
	mov	rdx, qword ptr [r12 - 0x70]
	test	rdx, rdx
	js	.label_1008
	mov	qword ptr [rsp + 0x50], rdi
	lea	rdi, [r10 - 1]
	sub	rdi, rdx
	movabs	rsi, 0x3c00000000
	imul	rcx, rsi
	sar	rcx, 0x20
	cmp	rdi, rcx
	mov	rdi, qword ptr [rsp + 0x50]
	jge	.label_856
	jmp	.label_817
.label_1008:
	imul	rcx, rsi
	sar	rcx, 0x20
	mov	rsi, r10
	sub	rsi, rdx
	cmp	rcx, rsi
	jl	.label_817
.label_856:
	add	rcx, rdx
	sub	rcx, -0x80000000
	shr	rcx, 0x20
	jne	.label_817
	add	edx, eax
	mov	dword ptr [r13 + 0x18], edx
	mov	edx, dword ptr [rsp + 0x40]
	mov	rsi, qword ptr [rsp + 0x68]
	jmp	.label_848
.label_1050:
	movabs	rsi, 0xfdddddddddddddde
	cmp	rcx, rsi
	jge	.label_896
.label_924:
	mov	sil, 1
	jmp	.label_901
.label_896:
	xor	esi, esi
.label_901:
	imul	rcx, rcx, 0x3c
	test	dl, dl
	je	.label_904
	mov	rdx, rax
	xor	rdx, r10
	cmp	rcx, rdx
	setl	dl
	sub	rcx, rax
	jmp	.label_909
.label_904:
	lea	rdx, [r10 - 1]
	sub	rdx, rax
	cmp	rdx, rcx
	setl	dl
	add	rcx, rax
.label_909:
	or	dl, sil
	sete	al
	mov	rsi, rbp
.label_1020:
	mov	ebp, 1
	test	al, al
	mov	edx, dword ptr [rsp + 0x40]
	je	.label_810
	lea	rax, [rcx + 0x5a0]
	cmp	rax, 0xb40
	ja	.label_810
	imul	eax, ecx, 0x3c
	mov	dword ptr [r13 + 0x18], eax
	jmp	.label_848
.label_932:
	cmp	rdi, 2
	jg	.label_858
	mov	rax, qword ptr [r13 + 0xc8]
	test	rax, rax
	jne	.label_858
	mov	qword ptr [r13 + 0xc8], 1
	pshufd	xmm0, xmm0, 0x4e
	movq	rcx, xmm0
	xor	eax, eax
	jmp	.label_862
.label_957:
	cmp	rdi, 2
	jg	.label_949
	mov	rax, qword ptr [r13 + 0xc8]
	test	rax, rax
	jne	.label_949
	mov	qword ptr [r13 + 0xc8], 1
	pshufd	xmm0, xmm0, 0x4e
	movq	rcx, xmm0
	xor	eax, eax
	jmp	.label_869
.label_1035:
	mov	rsi, rcx
	jmp	.label_980
.label_858:
	mov	byte ptr [r13 + 0xd8], 1
	movdqu	xmmword ptr [r13 + 0x20], xmm0
	mov	qword ptr [r13 + 0x30], rdi
	jmp	.label_939
.label_949:
	mov	byte ptr [r13 + 0xd8], 1
	movdqu	xmmword ptr [r13 + 0x20], xmm0
	jmp	.label_972
.label_971:
	test	cl, cl
	je	.label_977
.label_1067:
	shr	esi, 8
	cmp	cl, 0x2e
	sete	dil
	lea	rcx, [rsp + 0x71]
	lea	rdx, [rsp + 0x70]
	cmove	rcx, rdx
	mov	byte ptr [rcx], sil
	test	sil, sil
	je	.label_979
	lea	rax, [rsp + 0x72]
.label_916:
	lea	rbx, [rcx + 1]
	movzx	edx, byte ptr [rax]
	cmp	byte ptr [rax - 1], 0x2e
	mov	sil, 1
	je	.label_992
	mov	esi, edi
.label_992:
	cmovne	rcx, rbx
	mov	byte ptr [rcx], dl
	inc	rax
	test	dl, dl
	mov	edi, esi
	jne	.label_916
	jmp	.label_911
.label_979:
	mov	esi, edi
.label_911:
	test	sil, 1
	je	.label_977
	mov	rdi, r13
	lea	rsi, [rsp + 0x70]
	call	lookup_zone
	test	rax, rax
	jne	.label_807
.label_977:
	mov	ebx, 0x3f
	cmp	byte ptr [r13 + 0xd9], 0
	je	.label_1013
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1019
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	lea	rsi, [rsp + 0x70]
	call	dbg_printf
	jmp	.label_1013
	.section	.text
	.align	32
	#Procedure 0x40b699
	.globl sub_40b699
	.type sub_40b699, @function
sub_40b699:

	nop	dword ptr [rax]
.label_1032:
	cmp	eax, 0xc
	jne	.label_1030
	xor	ebp, ebp
.label_810:
	mov	eax, ebp
	add	rsp, 0x588
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_817:
	add	edx, eax
	mov	dword ptr [r13 + 0x18], edx
	jmp	.label_810
	.section	.text
	.align	32
	#Procedure 0x40b6c7
	.globl sub_40b6c7
	.type sub_40b6c7, @function
sub_40b6c7:

	nop	word ptr [rax + rax]
.label_1106:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	.section	.text
	.align	32
	#Procedure 0x40b6dc
	.globl sub_40b6dc
	.type sub_40b6dc, @function
sub_40b6dc:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b6e8

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_1106
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_1105
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_1106
.label_1105:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_1106
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_1107
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_1107:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b750

	.globl posixtime
	.type posixtime, @function
posixtime:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x78
	mov	r13d, edx
	mov	rbx, rsi
	mov	qword ptr [rsp + 0x68], rdi
	mov	rdi, rbx
	call	strlen
	mov	rbp, rax
	xor	r12d, r12d
	test	r13b, 4
	je	.label_1112
	mov	esi, 0x2e
	mov	rdi, rbx
	call	strchr
	xor	r12d, r12d
	test	rax, rax
	je	.label_1112
	mov	rcx, rax
	sub	rcx, rbx
	sub	rbp, rcx
	cmp	rbp, 3
	mov	r12, rax
	mov	rbp, rcx
	jne	.label_1111
.label_1112:
	lea	rcx, [rbp - 8]
	mov	eax, ebp
	and	eax, 1
	cmp	rcx, 4
	ja	.label_1111
	test	rax, rax
	jne	.label_1111
	xor	r14d, r14d
	test	rbp, rbp
	je	.label_1122
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_1125:
	movsx	ecx, byte ptr [rbx + rax]
	add	ecx, -0x30
	cmp	ecx, 0xa
	jae	.label_1111
	inc	rax
	cmp	rax, rbp
	jb	.label_1125
	xor	r14d, r14d
	shr	rbp, 1
	je	.label_1122
	mov	ecx, ebp
	and	ecx, 1
	xor	eax, eax
	cmp	rbp, 1
	je	.label_1109
	mov	rdx, rbp
	sub	rdx, rcx
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_1116:
	movsx	esi, byte ptr [rbx + rax*2]
	lea	esi, [rsi + rsi*4]
	movsx	edi, byte ptr [rbx + rax*2 + 1]
	lea	esi, [rdi + rsi*2 - 0x210]
	mov	dword ptr [rsp + rax*4 + 0x10], esi
	movsx	esi, byte ptr [rbx + rax*2 + 2]
	lea	esi, [rsi + rsi*4]
	movsx	edi, byte ptr [rbx + rax*2 + 3]
	lea	esi, [rdi + rsi*2 - 0x210]
	mov	dword ptr [rsp + rax*4 + 0x14], esi
	add	rax, 2
	cmp	rdx, rax
	jne	.label_1116
.label_1109:
	test	rcx, rcx
	je	.label_1124
	movsx	ecx, byte ptr [rbx + rax*2]
	lea	ecx, [rcx + rcx*4]
	movsx	edx, byte ptr [rbx + rax*2 + 1]
	lea	ecx, [rdx + rcx*2 - 0x210]
	mov	dword ptr [rsp + rax*4 + 0x10], ecx
.label_1124:
	mov	r14, rbp
.label_1122:
	mov	r15d, r13d
	and	r15d, 1
	je	.label_1126
	lea	rax, [rsp + 0x10]
	jmp	.label_1108
.label_1126:
	movabs	rax, 0x7fffffffffffffff
	and	rax, r14
	cmp	rax, 4
	je	.label_1120
	cmp	rax, 6
	je	.label_1115
	cmp	rax, 5
	jne	.label_1117
	mov	r10d, dword ptr [rsp + 0x10]
	cmp	r10d, 0x44
	jg	.label_1110
	test	r13b, 8
	jne	.label_1111
	add	r10d, 0x64
	jmp	.label_1110
.label_1120:
	lea	rbp, [rsp + 0x50]
	mov	rdi, rbp
	call	time
	mov	rdi, rbp
	call	localtime
	test	rax, rax
	je	.label_1111
	mov	r10d, dword ptr [rax + 0x14]
	jmp	.label_1110
.label_1115:
	test	r13b, 2
	je	.label_1111
	mov	rax, qword ptr [rsp + 0x10]
	imul	ecx, eax, 0x64
	shr	rax, 0x20
	lea	r10d, [rax + rcx - 0x76c]
.label_1110:
	add	r14, -4
	lea	rax, [rsp + r14*4 + 0x10]
	mov	r14d, 4
.label_1108:
	mov	edi, dword ptr [rax]
	mov	r9d, dword ptr [rax + 4]
	mov	r8d, dword ptr [rax + 8]
	mov	esi, dword ptr [rax + 0xc]
	test	r15d, r15d
	je	.label_1114
	movabs	rcx, 0x7fffffffffffffff
	and	r14, rcx
	cmp	r14, 4
	je	.label_1118
	cmp	r14, 6
	je	.label_1113
	cmp	r14, 5
	jne	.label_1117
	mov	r10d, dword ptr [rax + 0x10]
	cmp	r10d, 0x44
	jg	.label_1114
	test	r13b, 8
	jne	.label_1111
	add	r10d, 0x64
	jmp	.label_1114
.label_1118:
	mov	dword ptr [rsp + 8], r9d
	mov	r15d, r8d
	mov	r14d, edi
	mov	ebp, esi
	lea	rdi, [rsp + 0x50]
	call	time
	lea	rdi, [rsp + 0x50]
	call	localtime
	test	rax, rax
	je	.label_1111
	mov	r10d, dword ptr [rax + 0x14]
	mov	esi, ebp
	mov	edi, r14d
	mov	r8d, r15d
	mov	r9d, dword ptr [rsp + 8]
	jmp	.label_1114
.label_1113:
	test	r13b, 2
	je	.label_1111
	imul	ecx, dword ptr [rax + 0x10], 0x64
	mov	eax, dword ptr [rax + 0x14]
	lea	r10d, [rax + rcx - 0x76c]
.label_1114:
	xor	eax, eax
	test	r12, r12
	je	.label_1121
	movsx	eax, byte ptr [r12 + 1]
	add	eax, -0x30
	cmp	eax, 9
	ja	.label_1111
	movsx	ecx, byte ptr [r12 + 2]
	lea	edx, [rcx - 0x30]
	cmp	edx, 9
	ja	.label_1111
	lea	eax, [rax + rax*4]
	lea	eax, [rcx + rax*2 - 0x30]
.label_1121:
	mov	dword ptr [rsp + 0xc], r13d
	dec	edi
	mov	dword ptr [rsp + 8], eax
	mov	dword ptr [rsp + 0x10], eax
	mov	dword ptr [rsp + 0x14], esi
	mov	dword ptr [rsp + 0x18], r8d
	mov	dword ptr [rsp + 0x1c], r9d
	mov	dword ptr [rsp + 0x20], edi
	mov	dword ptr [rsp + 0x24], r10d
	mov	dword ptr [rsp + 0x28], 0xffffffff
	mov	dword ptr [rsp + 0x30], 0xffffffff
	mov	r15d, edi
	lea	rdi, [rsp + 0x10]
	mov	ebp, esi
	mov	r12d, r8d
	mov	r14d, r9d
	mov	r13d, r10d
	call	mktime
	mov	rcx, rax
	cmp	dword ptr [rsp + 0x28], 0
	js	.label_1111
	xor	r13d, dword ptr [rsp + 0x24]
	xor	r15d, dword ptr [rsp + 0x20]
	xor	r14d, dword ptr [rsp + 0x1c]
	or	r14d, r13d
	xor	r12d, dword ptr [rsp + 0x18]
	or	r12d, r14d
	xor	ebp, dword ptr [rsp + 0x14]
	or	ebp, r12d
	or	ebp, r15d
	mov	eax, dword ptr [rsp + 0x10]
	mov	edx, dword ptr [rsp + 8]
	xor	eax, edx
	or	eax, ebp
	je	.label_1123
	cmp	edx, 0x3c
	jne	.label_1111
	lea	rbp, [rsp + 0x50]
	mov	edx, 0x10
	mov	rdi, rbp
	mov	rsi, rbx
	mov	rbx, rcx
	call	__stpcpy_chk
	mov	byte ptr [rax], 0
	mov	word ptr [rax - 2], 0x3935
	lea	rdi, [rsp + 0x70]
	mov	rsi, rbp
	mov	edx, dword ptr [rsp + 0xc]
	call	posixtime
	mov	rcx, rbx
	test	al, al
	je	.label_1111
.label_1123:
	mov	rax, qword ptr [rsp + 0x68]
	mov	qword ptr [rax], rcx
	mov	al, 1
	jmp	.label_1119
.label_1111:
	xor	eax, eax
.label_1119:
	add	rsp, 0x78
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1117:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40bade
	.globl sub_40bade
	.type sub_40bade, @function
sub_40bade:

	nop	
	.section	.text
	.align	32
	#Procedure 0x40bae0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_1128
	cmp	byte ptr [rax], 0x43
	jne	.label_1130
	cmp	byte ptr [rax + 1], 0
	je	.label_1127
.label_1130:
	mov	esi, OFFSET FLAT:label_1129
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_1128
.label_1127:
	xor	ebx, ebx
.label_1128:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x40bb11
	.globl sub_40bb11
	.type sub_40bb11, @function
sub_40bb11:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40bb20

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
	#Procedure 0x40bb37
	.globl sub_40bb37
	.type sub_40bb37, @function
sub_40bb37:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40bb40

	.globl __strftime_internal
	.type __strftime_internal, @function
__strftime_internal:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x4b8
	mov	dword ptr [rsp + 0x88], r9d
	mov	dword ptr [rsp + 0x8c], r8d
	mov	r11, rcx
	mov	rbp, rdx
	mov	qword ptr [rsp + 0x48], rsi
	mov	r10, rdi
	mov	eax, dword ptr [r11 + 8]
	mov	rcx, qword ptr [r11 + 0x30]
	test	rcx, rcx
	mov	edx, OFFSET FLAT:label_129
	cmovne	rdx, rcx
	lea	ecx, [rax - 0xc]
	test	eax, eax
	mov	esi, 0xc
	cmovne	esi, eax
	cmp	eax, 0xc
	cmovg	esi, ecx
	mov	dword ptr [rsp + 0x7c], esi
	mov	al, byte ptr [rbp]
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x70], rcx
	test	al, al
	je	.label_1295
	mov	edi, dword ptr [rsp + 0x4f0]
	mov	qword ptr [rsp + 0x68], rdx
	lea	rcx, [rdx - 1]
	mov	qword ptr [rsp + 0x80], rcx
	xor	r8d, r8d
	mov	qword ptr [rsp + 0x38], r11
	jmp	.label_1205
.label_1295:
	xor	r8d, r8d
	jmp	.label_1313
.label_1291:
	mov	rdx, r10
	mov	rsi, qword ptr [rsp + 0x80]
	mov	r9, r15
.label_1169:
	movzx	ebx, byte ptr [rsi + rdx]
	mov	rdi, qword ptr [rax]
	movzx	ebx, byte ptr [rdi + rbx*4]
	mov	byte ptr [r9 + rdx - 1], bl
	movzx	ebx, byte ptr [rsi + rdx - 1]
	mov	rdi, qword ptr [rax]
	movzx	ebx, byte ptr [rdi + rbx*4]
	mov	byte ptr [r9 + rdx - 2], bl
	movzx	ebx, byte ptr [rsi + rdx - 2]
	mov	rdi, qword ptr [rax]
	movzx	ebx, byte ptr [rdi + rbx*4]
	mov	byte ptr [r9 + rdx - 3], bl
	movzx	ebx, byte ptr [rsi + rdx - 3]
	mov	rdi, qword ptr [rax]
	movzx	ebx, byte ptr [rdi + rbx*4]
	mov	byte ptr [r9 + rdx - 4], bl
	lea	rdx, [rdx - 4]
	cmp	rcx, rdx
	jne	.label_1169
.label_1292:
	test	rcx, rcx
	mov	r8, qword ptr [rsp + 0x18]
	je	.label_1143
	lea	rsi, [r9 + rdx - 1]
	add	rdx, qword ptr [rsp + 0x80]
	neg	rcx
.label_1149:
	movzx	edi, byte ptr [rdx]
	mov	rbx, qword ptr [rax]
	movzx	ebx, byte ptr [rbx + rdi*4]
	mov	byte ptr [rsi], bl
	dec	rsi
	dec	rdx
	inc	rcx
	jne	.label_1149
.label_1143:
	add	r9, r10
	mov	rcx, r9
	jmp	.label_1137
.label_1319:
	mov	esi, 0x20
.label_1321:
	mov	rdx, r14
	mov	r12, rdi
	call	memset
	mov	rdi, r12
	mov	r8, qword ptr [rsp + 0x18]
	add	rdi, r14
	mov	cl, byte ptr [rbp]
	mov	r14d, r15d
.label_1316:
	mov	byte ptr [rdi], cl
	inc	rdi
	mov	rdx, rdi
.label_1312:
	add	r8, rbx
	mov	r10, rdx
	mov	r11, qword ptr [rsp + 0x38]
	jmp	.label_1145
.label_1318:
	mov	edi, 3
	jmp	.label_1166
	.section	.text
	.align	32
	#Procedure 0x40bcae
	.globl sub_40bcae
	.type sub_40bcae, @function
sub_40bcae:

	nop	
.label_1205:
	cmp	al, 0x25
	jne	.label_1171
	xor	eax, eax
	mov	ecx, dword ptr [rsp + 0x8c]
	mov	r12b, cl
	xor	r9d, r9d
.label_1431:
	mov	ebx, eax
	mov	al, r12b
.label_1244:
	mov	r12b, al
	inc	rbp
	jmp	.label_1180
	.section	.text
	.align	32
	#Procedure 0x40bcd4
	.globl sub_40bcd4
	.type sub_40bcd4, @function
sub_40bcd4:

	nop	word ptr cs:[rax + rax]
.label_1190:
	inc	rbp
	mov	r9d, edx
.label_1180:
	mov	cl, byte ptr [rbp]
	movsx	edx, cl
	mov	al, 1
	lea	esi, [rdx - 0x23]
	cmp	esi, 0xd
	ja	.label_1182
	jmp	qword ptr [(rsi * 8) + label_1188]
	.section	.text
	.align	32
	#Procedure 0x40bcfd
	.globl sub_40bcfd
	.type sub_40bcfd, @function
sub_40bcfd:

	nop	dword ptr [rax]
.label_1182:
	cmp	edx, 0x5f
	je	.label_1190
	cmp	edx, 0x5e
	je	.label_1244
.label_1432:
	add	edx, -0x30
	cmp	edx, 9
	ja	.label_1191
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_1206:
	mov	edi, 0x7fffffff
	cmp	eax, 0xccccccc
	jg	.label_1198
	movsx	ecx, cl
	cmp	eax, 0xccccccc
	jne	.label_1287
	lea	edx, [rcx - 0x30]
	cmp	edx, 7
	jg	.label_1198
.label_1287:
	lea	eax, [rax + rax*4]
	lea	edi, [rcx + rax*2 - 0x30]
.label_1198:
	movsx	ecx, byte ptr [rbp + 1]
	inc	rbp
	mov	eax, ecx
	add	eax, -0x30
	cmp	eax, 0xa
	mov	eax, edi
	jb	.label_1206
.label_1191:
	mov	qword ptr [rsp + 0x18], r8
	movsx	r8d, cl
	cmp	r8d, 0x4f
	je	.label_1134
	cmp	r8d, 0x45
	jne	.label_1212
.label_1134:
	mov	cl, byte ptr [rbp + 1]
	inc	rbp
	jmp	.label_1216
	.section	.text
	.align	32
	#Procedure 0x40bd7c
	.globl sub_40bd7c
	.type sub_40bd7c, @function
sub_40bd7c:

	nop	dword ptr [rax]
.label_1171:
	test	edi, edi
	mov	ecx, edi
	mov	edx, 0
	cmovs	ecx, edx
	movsxd	rbx, ecx
	cmp	ebx, 1
	mov	edx, 1
	cmovbe	rbx, rdx
	mov	rdx, qword ptr [rsp + 0x48]
	sub	rdx, r8
	mov	r15d, 1
	cmp	rbx, rdx
	jae	.label_1219
	test	r10, r10
	mov	edx, 0
	je	.label_1229
	cmp	ecx, 2
	jb	.label_1232
	mov	dword ptr [rsp + 0x2c], r14d
	movsxd	r14, edi
	lea	rdx, [r14 - 1]
	mov	esi, 0x20
	mov	rdi, r10
	mov	r15, r8
	mov	r12, r10
	call	memset
	mov	r11, qword ptr [rsp + 0x38]
	mov	r10, r12
	mov	r8, r15
	lea	r10, [r10 + r14 - 1]
	mov	r14d, dword ptr [rsp + 0x2c]
	mov	al, byte ptr [rbp]
.label_1232:
	mov	byte ptr [r10], al
	inc	r10
	mov	rdx, r10
.label_1229:
	add	r8, rbx
	xor	r15d, r15d
	mov	r10, rdx
.label_1219:
	test	r15d, r15d
	mov	eax, 4
	cmove	r15d, eax
.label_1184:
	or	r15d, 4
	cmp	r15d, 4
	je	.label_1145
	jmp	.label_1245
.label_1212:
	xor	r8d, r8d
.label_1216:
	mov	qword ptr [rsp + 0x10], r10
	mov	qword ptr [rsp + 8], rdi
	movsx	esi, cl
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	cmp	esi, 0x7a
	ja	.label_1138
	mov	r15d, OFFSET FLAT:label_1253
	mov	dl, 0x72
	mov	r10d, 0xffffffff
	xor	eax, eax
	xor	edi, edi
	jmp	qword ptr [(rsi * 8) + label_1254]
.label_1447:
	cmp	r8d, 0x45
	je	.label_1138
	mov	dword ptr [rsp + 0x30], r9d
	mov	qword ptr [rsp + 0x40], r12
	mov	eax, dword ptr [r11 + 0x14]
	mov	r9d, dword ptr [r11 + 0x18]
	mov	edx, eax
	sar	edx, 0x1f
	and	edx, 0x190
	lea	r10d, [rax + rdx - 0x64]
	mov	r11d, dword ptr [r11 + 0x1c]
	lea	edx, [r11 + 0x17e]
	sub	edx, r9d
	movsxd	rbx, edx
	imul	rdx, rbx, -0x6db6db6d
	shr	rdx, 0x20
	add	edx, ebx
	mov	edi, edx
	shr	edi, 0x1f
	sar	edx, 2
	add	edx, edi
	lea	edi, [rdx*8]
	sub	edi, edx
	sub	ebx, edi
	lea	r12d, [r11 + 3]
	sub	r12d, ebx
	js	.label_1259
	mov	ebx, 0x16d
	test	r10b, 3
	jne	.label_1177
	movsxd	rdi, r10d
	imul	rdi, rdi, 0x51eb851f
	mov	rbx, rdi
	sar	rbx, 0x25
	mov	r14, rdi
	shr	r14, 0x3f
	add	ebx, r14d
	imul	r15d, ebx, 0x64
	sar	rdi, 0x27
	add	edi, r14d
	imul	ebx, edi, 0x190
	xor	edi, edi
	cmp	r10d, ebx
	sete	dil
	add	edi, 0x16d
	cmp	r10d, r15d
	mov	ebx, 0x16e
	cmove	ebx, edi
.label_1177:
	sub	r11d, ebx
	lea	edi, [r11 + 0x17e]
	sub	edi, r9d
	movsxd	rdi, edi
	imul	rbx, rdi, -0x6db6db6d
	shr	rbx, 0x20
	add	ebx, edi
	mov	edx, ebx
	shr	edx, 0x1f
	sar	ebx, 2
	add	ebx, edx
	lea	edx, [rbx*8]
	sub	edx, ebx
	sub	edi, edx
	add	r11d, 3
	sub	r11d, edi
	cmovns	r12d, r11d
	shr	r11d, 0x1f
	xor	r11d, 1
	jmp	.label_1290
.label_1461:
	test	bl, bl
	je	.label_1301
	mov	r12b, 1
.label_1301:
	cmp	r8d, 0x45
	jne	.label_1303
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	jmp	.label_1138
.label_1439:
	dec	rbp
	jmp	.label_1138
.label_1440:
	test	r8d, r8d
	jne	.label_1138
	mov	r15d, r14d
	xor	eax, eax
	mov	rsi, qword ptr [rsp + 8]
	test	esi, esi
	cmovns	eax, esi
	movsxd	rdx, eax
	cmp	edx, 1
	mov	ebx, 1
	cmova	rbx, rdx
	mov	rdx, qword ptr [rsp + 0x48]
	mov	r8, qword ptr [rsp + 0x18]
	sub	rdx, r8
	cmp	rbx, rdx
	mov	rdi, qword ptr [rsp + 0x10]
	jae	.label_1165
	xor	edx, edx
	test	rdi, rdi
	mov	r14d, r15d
	je	.label_1312
	cmp	eax, 2
	jb	.label_1316
	movsxd	r14, esi
	dec	r14
	cmp	r9d, 0x30
	je	.label_1317
	cmp	r9d, 0x2b
	jne	.label_1319
.label_1317:
	mov	esi, 0x30
	jmp	.label_1321
.label_1441:
	mov	edx, 1
	jmp	.label_1132
	.section	.text
	.align	32
	#Procedure 0x40c00a
	.globl sub_40c00a
	.type sub_40c00a, @function
sub_40c00a:

	nop	word ptr [rax + rax]
.label_1136:
	inc	rdx
.label_1132:
	movzx	ebx, byte ptr [rbp + rdx]
	cmp	bl, 0x3a
	je	.label_1136
	cmp	bl, 0x7a
	jne	.label_1138
	add	rbp, rdx
	mov	qword ptr [rsp + 0x20], rdx
.label_1478:
	cmp	dword ptr [r11 + 0x20], 0
	js	.label_1142
	mov	dword ptr [rsp + 0x30], r9d
	mov	rdx, r11
	mov	r11, qword ptr [rsp + 0x10]
	mov	r9d, dword ptr [rdx + 0x28]
	mov	sil, 1
	test	r9d, r9d
	mov	r10, qword ptr [rsp + 0x20]
	js	.label_1146
	test	r9d, r9d
	je	.label_1154
	xor	esi, esi
	jmp	.label_1146
.label_1442:
	test	r8d, r8d
	jne	.label_1138
	test	bl, bl
	je	.label_1158
	mov	r12b, 1
.label_1158:
	xor	eax, eax
	mov	dl, 0x41
	jmp	.label_1157
.label_1443:
	cmp	r8d, 0x45
	je	.label_1138
	test	bl, bl
	je	.label_1162
	mov	r12b, 1
.label_1162:
	xor	eax, eax
	mov	dl, 0x42
	jmp	.label_1157
.label_1444:
	cmp	r8d, 0x45
	jne	.label_1164
	xor	eax, eax
	mov	dl, 0x43
	jmp	.label_1157
.label_1445:
	test	r8d, r8d
	jne	.label_1138
	mov	r15d, OFFSET FLAT:label_1174
	mov	r10d, 0xffffffff
	jmp	.label_1175
.label_1446:
	test	r8d, r8d
	jne	.label_1138
	test	r9d, r9d
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_1181
	test	ecx, ecx
	jns	.label_1181
	mov	r15d, OFFSET FLAT:label_1183
	mov	r9d, 0x2b
	mov	r10d, 4
	jmp	.label_1175
.label_1448:
	cmp	r8d, 0x45
	je	.label_1138
	mov	r13d, dword ptr [r11 + 8]
	jmp	.label_1204
.label_1449:
	mov	edi, 2
	cmp	r8d, 0x45
	je	.label_1138
	mov	edx, dword ptr [rsp + 0x7c]
	mov	r13d, edx
	jmp	.label_1163
.label_1450:
	cmp	r8d, 0x45
	je	.label_1138
	mov	r13d, dword ptr [r11 + 4]
	jmp	.label_1204
.label_1451:
	cmp	r8d, 0x45
	je	.label_1138
	mov	edi, 9
	mov	r11, qword ptr [rsp + 8]
	cmp	r11d, -1
	je	.label_1207
	cmp	r11d, 8
	jg	.label_1210
	mov	edx, 9
	sub	edx, r11d
	mov	esi, 8
	sub	esi, r11d
	and	edx, 3
	cmp	esi, 3
	mov	esi, dword ptr [rsp + 0x500]
	mov	r13d, esi
	mov	r10, qword ptr [rsp + 0x10]
	jb	.label_1213
	lea	esi, [r11 + rdx - 9]
	mov	edi, dword ptr [rsp + 0x500]
	mov	r13d, edi
.label_1224:
	movsxd	rdi, r13d
	imul	r13, rdi, 0x68db8bad
	mov	rdi, r13
	shr	rdi, 0x3f
	sar	r13, 0x2c
	add	r13d, edi
	add	esi, 4
	jne	.label_1224
.label_1213:
	test	edx, edx
	je	.label_1233
	neg	edx
	nop	word ptr cs:[rax + rax]
.label_1236:
	movsxd	rsi, r13d
	imul	r13, rsi, 0x66666667
	mov	rsi, r13
	shr	rsi, 0x3f
	sar	r13, 0x22
	add	r13d, esi
	inc	edx
	jne	.label_1236
.label_1233:
	mov	edi, r11d
	jmp	.label_1227
.label_1452:
	mov	dil, 1
.label_1470:
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	test	bl, bl
	je	.label_1239
	mov	r12d, 0
.label_1239:
	je	.label_1240
	mov	dil, 1
.label_1240:
	mov	dl, 0x70
	mov	al, dil
	jmp	.label_1201
.label_1453:
	cmp	r8d, 0x45
	je	.label_1138
	mov	r13d, dword ptr [r11]
	jmp	.label_1204
.label_1454:
	mov	r15d, OFFSET FLAT:label_1247
.label_1175:
	mov	dword ptr [rsp + 0x2c], r14d
	mov	qword ptr [rsp + 0x58], r13
	xor	r8d, r8d
	mov	qword ptr [rsp + 0x40], r12
	test	r12b, r12b
	setne	r8b
	sub	rsp, 8
	xor	r14d, r14d
	xor	edi, edi
	mov	rsi, -1
	mov	rdx, r15
	mov	rcx, r11
	mov	r13d, r9d
	mov	eax, dword ptr [rsp + 0x508]
	push	rax
	push	qword ptr [rsp + 0x508]
	mov	qword ptr [rsp + 0x38], r10
	push	r10
	call	__strftime_internal
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r8, qword ptr [rsp + 0x38]
	add	rsp, 0x20
	mov	rbx, rax
	mov	rdx, qword ptr [rsp + 8]
	test	edx, edx
	cmovns	r14d, edx
	movsxd	rax, r14d
	cmp	rbx, rax
	mov	r14, rbx
	cmovb	r14, rax
	mov	r12, qword ptr [rsp + 0x48]
	sub	r12, r8
	cmp	r14, r12
	jae	.label_1165
	xor	ecx, ecx
	test	rdi, rdi
	je	.label_1269
	cmp	rbx, rax
	jae	.label_1272
	movsxd	rcx, edx
	mov	qword ptr [rsp + 8], rbx
	sub	rcx, rbx
	mov	eax, r13d
	cmp	eax, 0x30
	mov	qword ptr [rsp + 0x30], rcx
	je	.label_1274
	cmp	eax, 0x2b
	jne	.label_1279
.label_1274:
	mov	esi, 0x30
	jmp	.label_1281
.label_1455:
	cmp	r8d, 0x45
	je	.label_1138
	mov	edx, dword ptr [r11 + 0x1c]
	add	edx, 7
	sub	edx, dword ptr [r11 + 0x18]
	movsxd	r13, edx
	jmp	.label_1283
.label_1456:
	cmp	r8d, 0x45
	je	.label_1138
	mov	edx, dword ptr [r11 + 0x18]
	mov	esi, dword ptr [r11 + 0x1c]
	lea	edi, [rdx + 6]
	movsxd	rdi, edi
	imul	rbx, rdi, -0x6db6db6d
	shr	rbx, 0x20
	lea	edx, [rbx + rdx + 6]
	mov	ebx, edx
	shr	ebx, 0x1f
	sar	edx, 2
	add	edx, ebx
	lea	ebx, [rdx*8]
	sub	ebx, edx
	sub	edi, ebx
	add	esi, 7
	sub	esi, edi
	movsxd	r13, esi
.label_1283:
	imul	rdx, r13, -0x6db6db6d
	shr	rdx, 0x20
	add	r13d, edx
	mov	edx, r13d
	shr	edx, 0x1f
	sar	r13d, 2
	add	r13d, edx
	jmp	.label_1204
.label_1457:
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	cmp	r8d, 0x4f
	je	.label_1138
	mov	dl, 0x58
	jmp	.label_1161
.label_1458:
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	cmp	r8d, 0x45
	je	.label_1306
	cmp	r8d, 0x4f
	je	.label_1138
	mov	r13d, dword ptr [r11 + 0x14]
	cmp	r13d, 0xfffff894
	setl	bl
	add	r13d, 0x76c
	mov	esi, 4
	jmp	.label_1200
.label_1459:
	mov	r15d, r9d
	mov	qword ptr [rsp + 0x40], r12
	mov	r12d, r14d
	mov	qword ptr [rsp + 0x58], r13
	mov	rdi, qword ptr [rsp + 0x68]
	call	strlen
	mov	r9, qword ptr [rsp + 0x10]
	mov	r8, qword ptr [rsp + 0x18]
	mov	r10, rax
	xor	eax, eax
	mov	rdx, qword ptr [rsp + 8]
	test	edx, edx
	cmovns	eax, edx
	cdqe	
	cmp	r10, rax
	mov	r13, r10
	cmovb	r13, rax
	mov	rcx, qword ptr [rsp + 0x48]
	sub	rcx, r8
	cmp	r13, rcx
	jae	.label_1165
	xor	ecx, ecx
	test	r9, r9
	mov	r14d, r12d
	je	.label_1137
	cmp	r10, rax
	jae	.label_1139
	movsxd	rax, edx
	mov	qword ptr [rsp + 0x20], r10
	sub	rax, r10
	cmp	r15d, 0x30
	mov	qword ptr [rsp + 8], rax
	je	.label_1141
	cmp	r15d, 0x2b
	jne	.label_1147
.label_1141:
	mov	esi, 0x30
	jmp	.label_1150
.label_1460:
	test	r8d, r8d
	jne	.label_1138
	test	bl, bl
	je	.label_1155
	mov	r12b, 1
.label_1155:
	xor	eax, eax
	mov	dl, 0x61
	jmp	.label_1157
.label_1462:
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	cmp	r8d, 0x4f
	je	.label_1138
	mov	dl, 0x63
	jmp	.label_1161
.label_1463:
	cmp	r8d, 0x45
	je	.label_1138
	mov	r13d, dword ptr [r11 + 0xc]
.label_1204:
	mov	edi, 2
	jmp	.label_1163
.label_1464:
	cmp	r8d, 0x45
	je	.label_1138
	mov	edx, dword ptr [r11 + 0xc]
	jmp	.label_1168
.label_1465:
	cmp	r8d, 0x45
	je	.label_1138
	mov	r13d, dword ptr [r11 + 0x1c]
	cmp	r13d, -1
	setl	bl
	inc	r13d
	mov	edi, 3
	jmp	.label_1173
.label_1466:
	cmp	r8d, 0x45
	je	.label_1138
	mov	edx, dword ptr [r11 + 8]
	jmp	.label_1168
.label_1467:
	cmp	r8d, 0x45
	mov	edx, dword ptr [rsp + 0x7c]
	je	.label_1138
.label_1168:
	test	r9d, r9d
	mov	esi, 0x5f
	cmove	r9d, esi
	mov	edi, 2
	mov	r13d, edx
	jmp	.label_1163
.label_1468:
	cmp	r8d, 0x45
	je	.label_1138
	mov	r13d, dword ptr [r11 + 0x10]
	cmp	r13d, -1
	setl	bl
	inc	r13d
	mov	edi, 2
.label_1173:
	xor	r14d, r14d
	xor	edx, edx
	jmp	.label_1199
.label_1469:
	mov	r15d, r14d
	xor	eax, eax
	mov	rdx, qword ptr [rsp + 8]
	test	edx, edx
	cmovns	eax, edx
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	ebx, 1
	cmova	rbx, rcx
	mov	rcx, qword ptr [rsp + 0x48]
	mov	r8, qword ptr [rsp + 0x18]
	sub	rcx, r8
	cmp	rbx, rcx
	mov	rdi, qword ptr [rsp + 0x10]
	jae	.label_1165
	xor	ecx, ecx
	test	rdi, rdi
	mov	r14d, r15d
	je	.label_1211
	cmp	eax, 2
	jb	.label_1217
	movsxd	r14, edx
	dec	r14
	cmp	r9d, 0x30
	je	.label_1218
	cmp	r9d, 0x2b
	jne	.label_1220
.label_1218:
	mov	esi, 0x30
	jmp	.label_1223
.label_1471:
	imul	r13d, dword ptr [r11 + 0x10], 0xb
	sar	r13d, 5
	inc	r13d
	mov	edi, 1
	xor	r14d, r14d
	xor	edx, edx
	xor	ebx, ebx
.label_1199:
	mov	r11, qword ptr [rsp + 8]
	mov	r10, qword ptr [rsp + 0x10]
	jmp	.label_1203
.label_1472:
	mov	dword ptr [rsp + 0x30], r9d
	mov	qword ptr [rsp + 0x40], r12
	mov	dword ptr [rsp + 0x2c], r14d
	mov	r14, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [r11 + 0x30]
	mov	qword ptr [rsp + 0xe0], rax
	movups	xmm0, xmmword ptr [r11]
	movups	xmm1, xmmword ptr [r11 + 0x10]
	movups	xmm2, xmmword ptr [r11 + 0x20]
	movaps	xmmword ptr [rsp + 0xd0], xmm2
	movaps	xmmword ptr [rsp + 0xc0], xmm1
	movaps	xmmword ptr [rsp + 0xb0], xmm0
	lea	rsi, [rsp + 0xb0]
	mov	rdi, qword ptr [rsp + 0x4f8]
	call	mktime_z
	mov	rcx, rax
	mov	r15, rcx
	shr	r15, 0x3f
	lea	r12, [rsp + 0xa7]
	je	.label_1243
	nop	word ptr cs:[rax + rax]
.label_1251:
	movabs	rdx, 0x6666666666666667
	mov	rax, rcx
	imul	rdx
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 2
	lea	edi, [rdx + rax]
	add	edi, edi
	lea	edi, [rdi + rdi*4]
	mov	ebx, ecx
	sub	ebx, edi
	add	rdx, rax
	mov	al, 0x30
	sub	al, bl
	mov	byte ptr [r12 - 1], al
	dec	r12
	add	rcx, 9
	cmp	rcx, 0x12
	mov	rcx, rdx
	ja	.label_1251
	jmp	.label_1263
	.section	.text
	.align	32
	#Procedure 0x40c685
	.globl sub_40c685
	.type sub_40c685, @function
sub_40c685:

	nop	word ptr cs:[rax + rax]
.label_1243:
	movabs	rdx, 0x6666666666666667
	mov	rax, rcx
	imul	rdx
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 2
	lea	edi, [rdx + rax]
	add	edi, edi
	lea	edi, [rdi + rdi*4]
	mov	ebx, ecx
	sub	ebx, edi
	add	rdx, rax
	add	bl, 0x30
	mov	byte ptr [r12 - 1], bl
	dec	r12
	add	rcx, 9
	cmp	rcx, 0x12
	mov	rcx, rdx
	ja	.label_1243
.label_1263:
	xor	edx, edx
	mov	r8, r14
	mov	r10, qword ptr [rsp + 0x10]
	mov	esi, 1
	mov	eax, dword ptr [rsp + 0x2c]
	mov	r9d, dword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 8]
	mov	rbx, r15
	jmp	.label_1277
.label_1473:
	mov	r15d, r14d
	xor	eax, eax
	mov	rdx, qword ptr [rsp + 8]
	test	edx, edx
	cmovns	eax, edx
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	ebx, 1
	cmova	rbx, rcx
	mov	rcx, qword ptr [rsp + 0x48]
	mov	r8, qword ptr [rsp + 0x18]
	sub	rcx, r8
	cmp	rbx, rcx
	mov	rdi, qword ptr [rsp + 0x10]
	jae	.label_1165
	xor	ecx, ecx
	test	rdi, rdi
	mov	r14d, r15d
	je	.label_1211
	cmp	eax, 2
	jb	.label_1294
	movsxd	r14, edx
	dec	r14
	cmp	r9d, 0x30
	je	.label_1296
	cmp	r9d, 0x2b
	jne	.label_1320
.label_1296:
	mov	esi, 0x30
	jmp	.label_1298
.label_1474:
	mov	edx, dword ptr [r11 + 0x18]
	lea	esi, [rdx + 6]
	movsxd	r13, esi
	imul	rsi, r13, -0x6db6db6d
	shr	rsi, 0x20
	lea	edx, [rsi + rdx + 6]
	mov	esi, edx
	shr	esi, 0x1f
	sar	edx, 2
	add	edx, esi
	lea	esi, [rdx*8]
	sub	esi, edx
	sub	r13d, esi
	inc	r13d
	jmp	.label_1302
.label_1475:
	cmp	r8d, 0x45
	je	.label_1138
	mov	r13d, dword ptr [r11 + 0x18]
.label_1302:
	mov	edi, 1
.label_1163:
	mov	r11, qword ptr [rsp + 8]
.label_1250:
	mov	r10, qword ptr [rsp + 0x10]
.label_1227:
	mov	ebx, r13d
	shr	ebx, 0x1f
	xor	r14d, r14d
	xor	edx, edx
	jmp	.label_1203
.label_1476:
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	cmp	r8d, 0x4f
	je	.label_1138
	mov	dl, 0x78
	jmp	.label_1161
.label_1477:
	cmp	r8d, 0x45
	jne	.label_1264
	xor	eax, eax
	mov	dl, 0x79
	jmp	.label_1157
.label_1303:
	xor	eax, eax
	mov	edx, ecx
.label_1157:
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x20], rcx
	jmp	.label_1201
.label_1272:
	mov	rcx, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	mov	rdx, r15
	mov	r10, qword ptr [rsp + 0x20]
	jmp	.label_1131
.label_1259:
	dec	r10d
	mov	r14d, 0x16d
	test	r10b, 3
	jne	.label_1160
	movsxd	rdx, r10d
	imul	rdx, rdx, 0x51eb851f
	mov	rdi, rdx
	sar	rdi, 0x25
	mov	rbx, rdx
	shr	rbx, 0x3f
	add	edi, ebx
	imul	edi, edi, 0x64
	sar	rdx, 0x27
	add	edx, ebx
	imul	edx, edx, 0x190
	xor	ebx, ebx
	cmp	r10d, edx
	sete	bl
	add	ebx, 0x16d
	cmp	r10d, edi
	mov	r14d, 0x16e
	cmove	r14d, ebx
.label_1160:
	lea	edi, [r14 + r11 + 0x17e]
	sub	edi, r9d
	movsxd	rdi, edi
	imul	rbx, rdi, -0x6db6db6d
	shr	rbx, 0x20
	add	ebx, edi
	mov	edx, ebx
	shr	edx, 0x1f
	sar	ebx, 2
	add	ebx, edx
	lea	edx, [rbx*8]
	sub	edx, ebx
	sub	edi, edx
	lea	r12d, [r14 + r11 + 3]
	sub	r12d, edi
	mov	r11d, 0xffffffff
.label_1290:
	cmp	esi, 0x47
	je	.label_1167
	cmp	esi, 0x67
	jne	.label_1170
	movsxd	rdx, eax
	imul	rdx, rdx, 0x51eb851f
	mov	rsi, rdx
	shr	rsi, 0x3f
	sar	rdx, 0x25
	add	edx, esi
	imul	edx, edx, 0x64
	mov	esi, eax
	sub	esi, edx
	add	esi, r11d
	movsxd	r13, esi
	imul	rdx, r13, 0x51eb851f
	mov	rsi, rdx
	shr	rsi, 0x3f
	sar	rdx, 0x25
	add	edx, esi
	imul	edx, edx, 0x64
	sub	r13d, edx
	mov	esi, 2
	jns	.label_1152
	mov	edx, 0xfffff894
	sub	edx, r11d
	mov	edi, r13d
	neg	edi
	add	r13d, 0x64
	cmp	eax, edx
	cmovl	r13d, edi
.label_1152:
	xor	ebx, ebx
	jmp	.label_1195
.label_1142:
	mov	r8, qword ptr [rsp + 0x18]
	mov	r10, qword ptr [rsp + 0x10]
	jmp	.label_1145
.label_1164:
	movsxd	rdx, dword ptr [r11 + 0x14]
	cmp	rdx, -0x76c
	setl	sil
	setg	bl
	imul	r13, rdx, 0x51eb851f
	mov	rdi, r13
	shr	rdi, 0x3f
	sar	r13, 0x25
	add	r13d, edi
	imul	edi, r13d, 0x64
	cmp	edx, edi
	sets	dl
	and	dl, bl
	mov	rbx, rsi
	movzx	edx, dl
	sub	r13d, edx
	add	r13d, 0x13
	mov	esi, 2
	jmp	.label_1200
.label_1264:
	movsxd	rdx, dword ptr [r11 + 0x14]
	imul	rsi, rdx, 0x51eb851f
	mov	rdi, rsi
	shr	rdi, 0x3f
	sar	rsi, 0x25
	add	esi, edi
	imul	esi, esi, 0x64
	mov	r13d, edx
	sub	r13d, esi
	mov	esi, 2
	jns	.label_1215
	mov	edi, r13d
	neg	edi
	add	r13d, 0x64
	cmp	edx, 0xfffff894
	cmovl	r13d, edi
.label_1215:
	xor	ebx, ebx
.label_1200:
	mov	r11, qword ptr [rsp + 8]
	mov	r10, qword ptr [rsp + 0x10]
	jmp	.label_1228
.label_1167:
	mov	edx, 0xfffff894
	sub	edx, r11d
	cmp	eax, edx
	setl	bl
	lea	r13d, [r11 + rax + 0x76c]
	mov	esi, 4
.label_1195:
	mov	r10, qword ptr [rsp + 0x10]
	mov	r12, qword ptr [rsp + 0x40]
	mov	r9d, dword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 8]
.label_1228:
	test	r9d, r9d
	cmove	r9d, dword ptr [rsp + 0x88]
	xor	r14d, r14d
	cmp	r9d, 0x2b
	mov	edx, 0
	jne	.label_1238
	cmp	esi, 2
	mov	edx, 0x63
	mov	edi, 0x270f
	cmove	edi, edx
	cmp	edi, r13d
	mov	rdi, rbx
	setb	bl
	cmp	esi, r11d
	setl	dl
	or	dl, bl
	mov	rbx, rdi
.label_1238:
	mov	rdi, rsi
.label_1203:
	cmp	r8d, 0x4f
	jne	.label_1187
	test	bl, bl
	jne	.label_1187
	mov	qword ptr [rsp + 8], r11
	xor	eax, eax
	mov	edx, ecx
	mov	r11, qword ptr [rsp + 0x38]
	mov	qword ptr [rsp + 0x20], rdi
	jmp	.label_1201
.label_1187:
	mov	qword ptr [rsp + 0x40], r12
	mov	eax, r13d
	neg	eax
	test	bl, bl
	cmove	eax, r13d
	lea	r12, [rsp + 0xa7]
	mov	rsi, rdi
	mov	r8, qword ptr [rsp + 0x18]
	nop	word ptr [rax + rax]
.label_1262:
	test	r14b, 1
	je	.label_1260
	mov	byte ptr [r12 - 1], 0x3a
	dec	r12
.label_1260:
	sar	r14d, 1
	mov	ecx, eax
	mov	r13d, 0xcccccccd
	imul	r13, rcx
	shr	r13, 0x23
	lea	ecx, [r13 + r13]
	lea	ecx, [rcx + rcx*4]
	mov	edi, eax
	sub	edi, ecx
	or	edi, 0x30
	mov	byte ptr [r12 - 1], dil
	dec	r12
	cmp	eax, 9
	mov	eax, r13d
	ja	.label_1262
	test	r14d, r14d
	mov	eax, r13d
	jne	.label_1262
	xor	eax, eax
.label_1277:
	cmp	esi, r11d
	cmovl	esi, r11d
	test	dl, dl
	je	.label_1270
	mov	dl, 0x2b
.label_1270:
	test	bl, bl
	mov	byte ptr [rsp + 0x50], 0x2d
	jne	.label_1273
	mov	ecx, edx
	mov	byte ptr [rsp + 0x50], cl
.label_1273:
	cmp	r9d, 0x2d
	mov	dword ptr [rsp + 0x2c], eax
	mov	qword ptr [rsp + 0x58], r13
	mov	dword ptr [rsp + 0x30], r9d
	mov	qword ptr [rsp + 0x20], rsi
	jne	.label_1192
	cmp	byte ptr [rsp + 0x50], 0
	je	.label_1159
	xor	eax, eax
	test	r11d, r11d
	cmovns	eax, r11d
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	ebx, 1
	cmova	rbx, rcx
	mov	rcx, qword ptr [rsp + 0x48]
	sub	rcx, r8
	cmp	rbx, rcx
	jae	.label_1165
	xor	ecx, ecx
	test	r10, r10
	je	.label_1179
	cmp	eax, 2
	setb	al
	mov	rcx, qword ptr [rsp + 0x20]
	test	ecx, ecx
	jne	.label_1189
	test	al, al
	jne	.label_1189
	movsxd	r14, r11d
	lea	rdx, [r14 - 1]
	mov	esi, 0x20
	mov	rdi, r10
	mov	r15, r8
	mov	r13, r10
	mov	qword ptr [rsp + 8], r11
	call	memset
	mov	r11, qword ptr [rsp + 8]
	mov	r10, r13
	mov	r8, r15
	lea	r10, [r10 + r14 - 1]
	jmp	.label_1189
.label_1192:
	movsxd	rax, esi
	mov	rcx, r12
	lea	rdx, [rsp + 0xa7]
	sub	rcx, rdx
	mov	dl, byte ptr [rsp + 0x50]
	neg	dl
	sbb	rbx, rbx
	add	rbx, rcx
	add	rbx, rax
	test	ebx, ebx
	jle	.label_1307
	cmp	r9d, 0x5f
	jne	.label_1309
	movsxd	r14, ebx
	mov	rax, qword ptr [rsp + 0x48]
	sub	rax, r8
	cmp	r14, rax
	jae	.label_1165
	xor	edx, edx
	test	r10, r10
	mov	r15d, 0
	je	.label_1315
	mov	esi, 0x20
	mov	rdi, r10
	mov	rdx, r14
	mov	r13, r8
	mov	r15, r10
	mov	qword ptr [rsp + 8], r11
	call	memset
	xor	edx, edx
	mov	r11, qword ptr [rsp + 8]
	mov	r8, r13
	add	r15, r14
.label_1315:
	add	r8, r14
	sub	r11d, ebx
	cmovg	edx, r11d
	cmp	byte ptr [rsp + 0x50], 0
	je	.label_1322
	xor	eax, eax
	test	edx, edx
	cmovns	eax, edx
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	ebx, 1
	cmova	rbx, rcx
	mov	rcx, qword ptr [rsp + 0x48]
	sub	rcx, r8
	cmp	rbx, rcx
	jae	.label_1165
	xor	r10d, r10d
	test	r15, r15
	je	.label_1196
	cmp	eax, 2
	setb	al
	mov	rcx, qword ptr [rsp + 0x20]
	test	ecx, ecx
	jne	.label_1151
	test	al, al
	jne	.label_1151
	movsxd	r14, edx
	mov	qword ptr [rsp + 0x18], rdx
	lea	rdx, [r14 - 1]
	mov	esi, 0x20
	mov	rdi, r15
	mov	r13, r8
	call	memset
	mov	rdx, qword ptr [rsp + 0x18]
	mov	r8, r13
	lea	r15, [r15 + r14 - 1]
.label_1151:
	mov	al, byte ptr [rsp + 0x50]
	mov	byte ptr [r15], al
	inc	r15
	mov	r10, r15
.label_1196:
	add	r8, rbx
	mov	r11d, edx
	jmp	.label_1159
.label_1307:
	cmp	byte ptr [rsp + 0x50], 0
	je	.label_1159
	xor	eax, eax
	test	r11d, r11d
	cmovns	eax, r11d
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	ebx, 1
	cmova	rbx, rcx
	mov	rcx, qword ptr [rsp + 0x48]
	sub	rcx, r8
	cmp	rbx, rcx
	jae	.label_1165
	xor	ecx, ecx
	test	r10, r10
	je	.label_1179
	cmp	eax, 2
	setb	al
	mov	rcx, qword ptr [rsp + 0x20]
	test	ecx, ecx
	jne	.label_1189
	test	al, al
	jne	.label_1189
	movsxd	r14, r11d
	dec	r14
	mov	eax, dword ptr [rsp + 0x30]
	cmp	eax, 0x30
	mov	qword ptr [rsp + 8], r11
	je	.label_1185
	cmp	eax, 0x2b
	jne	.label_1242
.label_1185:
	mov	esi, 0x30
	jmp	.label_1193
.label_1309:
	mov	rcx, qword ptr [rsp + 0x48]
	sub	rcx, r8
	cmp	rax, rcx
	jae	.label_1165
	cmp	byte ptr [rsp + 0x50], 0
	je	.label_1266
	xor	eax, eax
	test	r11d, r11d
	cmovns	eax, r11d
	movsxd	rdx, eax
	cmp	edx, 1
	mov	r15d, 1
	cmova	r15, rdx
	cmp	r15, rcx
	jae	.label_1165
	xor	ecx, ecx
	test	r10, r10
	je	.label_1255
	cmp	eax, 2
	setb	al
	mov	rcx, qword ptr [rsp + 0x20]
	test	ecx, ecx
	jne	.label_1209
	test	al, al
	jne	.label_1209
	movsxd	r14, r11d
	dec	r14
	mov	eax, dword ptr [rsp + 0x30]
	cmp	eax, 0x30
	je	.label_1271
	cmp	eax, 0x2b
	jne	.label_1246
.label_1271:
	mov	esi, 0x30
	jmp	.label_1221
.label_1170:
	movsxd	rdx, r12d
	imul	rsi, rdx, -0x6db6db6d
	shr	rsi, 0x20
	add	edx, esi
	mov	esi, edx
	sar	esi, 2
	shr	edx, 0x1f
	lea	r13d, [rsi + rdx + 1]
	mov	edi, 2
	mov	r10, qword ptr [rsp + 0x10]
	mov	r12, qword ptr [rsp + 0x40]
	mov	r9d, dword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 8]
	jmp	.label_1227
.label_1322:
	mov	r10, r15
	mov	r11d, edx
	jmp	.label_1159
.label_1306:
	mov	dl, 0x59
.label_1161:
	xor	eax, eax
.label_1201:
	mov	dword ptr [rsp + 0x40], eax
	mov	dword ptr [rsp + 0x30], r9d
	mov	qword ptr [rsp + 0x58], r13
	mov	r13, qword ptr [rsp + 0x10]
	mov	word ptr [rsp + 0x63], 0x2520
	test	r8d, r8d
	lea	rcx, [rsp + 0x65]
	je	.label_1237
	mov	byte ptr [rsp + 0x65], r8b
	lea	rcx, [rsp + 0x66]
.label_1237:
	mov	byte ptr [rcx], dl
	mov	byte ptr [rcx + 1], 0
	lea	rdi, [rsp + 0xb0]
	lea	rdx, [rsp + 0x63]
	mov	esi, 0x400
	mov	rcx, r11
	call	strftime
	mov	rbx, rax
	test	rbx, rbx
	je	.label_1249
	mov	rsi, qword ptr [rsp + 0x20]
	mov	r15, r12
	lea	r10, [rbx - 1]
	xor	eax, eax
	mov	rdx, qword ptr [rsp + 8]
	test	edx, edx
	cmovns	eax, edx
	cdqe	
	cmp	r10, rax
	mov	r12, r10
	cmovb	r12, rax
	mov	rcx, qword ptr [rsp + 0x48]
	mov	r8, qword ptr [rsp + 0x18]
	sub	rcx, r8
	cmp	r12, rcx
	jae	.label_1165
	xor	ecx, ecx
	mov	rdi, r13
	test	rdi, rdi
	mov	r11, qword ptr [rsp + 0x38]
	je	.label_1261
	cmp	r10, rax
	setae	al
	test	esi, esi
	jne	.label_1265
	test	al, al
	jne	.label_1265
	mov	dword ptr [rsp + 0x2c], r14d
	movsxd	r14, edx
	sub	r14, r10
	mov	eax, dword ptr [rsp + 0x30]
	cmp	eax, 0x30
	mov	qword ptr [rsp + 0x50], r10
	je	.label_1308
	cmp	eax, 0x2b
	jne	.label_1268
.label_1308:
	mov	esi, 0x30
	jmp	.label_1153
.label_1249:
	mov	r8, qword ptr [rsp + 0x18]
	mov	r10, r13
	mov	r13, qword ptr [rsp + 0x58]
	mov	r11, qword ptr [rsp + 0x38]
	jmp	.label_1145
.label_1265:
	mov	eax, dword ptr [rsp + 0x40]
	jmp	.label_1278
.label_1268:
	mov	esi, 0x20
.label_1153:
	mov	rdx, r14
	call	memset
	mov	r10, qword ptr [rsp + 0x50]
	mov	r11, qword ptr [rsp + 0x38]
	mov	rdi, r13
	mov	r8, qword ptr [rsp + 0x18]
	mov	eax, dword ptr [rsp + 0x40]
	add	rdi, r14
	mov	r14d, dword ptr [rsp + 0x2c]
.label_1278:
	test	al, 1
	jne	.label_1286
	test	r15b, 1
	jne	.label_1288
	lea	rsi, [rsp + 0xb1]
	mov	rdx, r10
	mov	rbx, rdi
	mov	r15, r10
	call	memcpy
	mov	r10, r15
	mov	r11, qword ptr [rsp + 0x38]
	mov	rdi, rbx
	mov	r8, qword ptr [rsp + 0x18]
	jmp	.label_1140
.label_1286:
	test	r10, r10
	je	.label_1140
	mov	r13d, r14d
	mov	r14, rdi
	mov	r15, r10
	call	__ctype_tolower_loc
	mov	r10, r15
	mov	rdi, r14
	mov	rdx, rbx
	add	rdx, -2
	mov	r9d, r10d
	and	r9d, 3
	cmp	rdx, 3
	mov	rsi, r10
	jb	.label_1297
	lea	r8, [r9 + 1]
	nop	dword ptr [rax]
.label_1305:
	movzx	esi, byte ptr [rsp + rbx + 0xaf]
	mov	rdx, qword ptr [rax]
	movzx	edx, byte ptr [rdx + rsi*4]
	mov	byte ptr [rdi + rbx - 2], dl
	movzx	edx, byte ptr [rsp + rbx + 0xae]
	mov	rsi, qword ptr [rax]
	movzx	edx, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rbx - 3], dl
	movzx	edx, byte ptr [rsp + rbx + 0xad]
	mov	rsi, qword ptr [rax]
	movzx	edx, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rbx - 4], dl
	movzx	edx, byte ptr [rsp + rbx + 0xac]
	mov	rsi, qword ptr [rax]
	movzx	edx, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rbx - 5], dl
	add	rbx, -4
	cmp	r8, rbx
	jne	.label_1305
	dec	rbx
	mov	rsi, rbx
.label_1297:
	test	r9, r9
	mov	r8, qword ptr [rsp + 0x18]
	mov	r14d, r13d
	mov	r11, qword ptr [rsp + 0x38]
	je	.label_1140
	lea	rdx, [rdi + rsi - 1]
	lea	rsi, [rsp + rsi + 0xb0]
	neg	r9
	nop	word ptr cs:[rax + rax]
.label_1156:
	movzx	ecx, byte ptr [rsi]
	mov	rbx, qword ptr [rax]
	movzx	ebx, byte ptr [rbx + rcx*4]
	mov	byte ptr [rdx], bl
	dec	rdx
	dec	rsi
	inc	r9
	jne	.label_1156
	jmp	.label_1140
.label_1288:
	test	r10, r10
	je	.label_1140
	mov	r13d, r14d
	mov	r14, rdi
	mov	r15, r10
	call	__ctype_toupper_loc
	mov	r10, r15
	mov	rdi, r14
	mov	rdx, rbx
	add	rdx, -2
	mov	r9d, r10d
	and	r9d, 3
	cmp	rdx, 3
	mov	rsi, r10
	jb	.label_1148
	lea	r8, [r9 + 1]
	nop	word ptr cs:[rax + rax]
.label_1267:
	movzx	esi, byte ptr [rsp + rbx + 0xaf]
	mov	rdx, qword ptr [rax]
	movzx	edx, byte ptr [rdx + rsi*4]
	mov	byte ptr [rdi + rbx - 2], dl
	movzx	edx, byte ptr [rsp + rbx + 0xae]
	mov	rsi, qword ptr [rax]
	movzx	edx, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rbx - 3], dl
	movzx	edx, byte ptr [rsp + rbx + 0xad]
	mov	rsi, qword ptr [rax]
	movzx	edx, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rbx - 4], dl
	movzx	edx, byte ptr [rsp + rbx + 0xac]
	mov	rsi, qword ptr [rax]
	movzx	edx, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rbx - 5], dl
	add	rbx, -4
	cmp	r8, rbx
	jne	.label_1267
	dec	rbx
	mov	rsi, rbx
.label_1148:
	test	r9, r9
	mov	r8, qword ptr [rsp + 0x18]
	mov	r14d, r13d
	mov	r11, qword ptr [rsp + 0x38]
	je	.label_1140
	lea	rdx, [rdi + rsi - 1]
	lea	rsi, [rsp + rsi + 0xb0]
	neg	r9
	nop	dword ptr [rax]
.label_1186:
	movzx	ecx, byte ptr [rsi]
	mov	rbx, qword ptr [rax]
	movzx	ebx, byte ptr [rbx + rcx*4]
	mov	byte ptr [rdx], bl
	dec	rdx
	dec	rsi
	inc	r9
	jne	.label_1186
.label_1140:
	add	rdi, r10
	mov	rcx, rdi
.label_1261:
	add	r8, r12
	mov	r10, rcx
	jmp	.label_1194
.label_1139:
	mov	r15, qword ptr [rsp + 0x68]
	mov	rax, qword ptr [rsp + 0x40]
	jmp	.label_1197
.label_1279:
	mov	esi, 0x20
.label_1281:
	mov	rdx, rcx
	mov	rbx, rdi
	call	memset
	mov	rcx, qword ptr [rsp + 0x38]
	add	rbx, qword ptr [rsp + 0x30]
	mov	rdi, rbx
	mov	r9d, r13d
	mov	rdx, r15
	mov	r10, qword ptr [rsp + 0x20]
	mov	rbx, qword ptr [rsp + 8]
.label_1131:
	xor	r8d, r8d
	mov	rax, qword ptr [rsp + 0x40]
	test	al, al
	setne	r8b
	sub	rsp, 8
	mov	rsi, r12
	mov	eax, dword ptr [rsp + 0x508]
	push	rax
	push	qword ptr [rsp + 0x508]
	push	r10
	mov	r15, rdi
	call	__strftime_internal
	add	rsp, 0x20
	add	rbx, r15
	mov	rcx, rbx
	mov	r8, qword ptr [rsp + 0x18]
.label_1269:
	add	r8, r14
	jmp	.label_1222
.label_1154:
	mov	rdx, qword ptr [rsp + 0x68]
	cmp	byte ptr [rdx], 0x2d
	sete	sil
.label_1146:
	cmp	r10, 3
	ja	.label_1226
	movsxd	rax, r9d
	imul	rbx, rax, -0x77777777
	shr	rbx, 0x20
	add	ebx, r9d
	mov	edi, ebx
	shr	edi, 0x1f
	sar	ebx, 5
	add	ebx, edi
	imul	r13, rax, -0x6e5d4c3b
	shr	r13, 0x20
	add	r13d, r9d
	mov	edi, r13d
	shr	edi, 0x1f
	sar	r13d, 0xb
	add	r13d, edi
	movsxd	rdi, ebx
	imul	rbx, rdi, -0x77777777
	shr	rbx, 0x20
	add	ebx, edi
	mov	edx, ebx
	shr	edx, 0x1f
	sar	ebx, 5
	add	ebx, edx
	imul	edx, ebx, 0x3c
	imul	ebx, edi, 0x3c
	sub	edi, edx
	sub	r9d, ebx
	jmp	qword ptr [(r10 * 8) + label_1230]
.label_1490:
	imul	r13d, r13d, 0x64
	add	r13d, edi
	mov	edi, 5
.label_1166:
	xor	r14d, r14d
	jmp	.label_1172
.label_1181:
	xor	eax, eax
	mov	r10d, ecx
	add	r10d, -6
	cmovs	r10d, eax
	mov	r15d, OFFSET FLAT:label_1183
	jmp	.label_1175
.label_1207:
	mov	edx, dword ptr [rsp + 0x500]
	mov	r13d, edx
	mov	r11d, 9
	jmp	.label_1250
.label_1226:
	xor	edi, edi
	mov	r15d, 0xe
	jmp	.label_1257
.label_1493:
	test	r9d, r9d
	je	.label_1258
.label_1492:
	imul	r13d, r13d, 0x2710
	imul	edx, edi, 0x64
	add	r13d, r9d
	add	r13d, edx
	mov	edi, 9
	mov	r14d, 0x14
	jmp	.label_1172
.label_1210:
	mov	edx, dword ptr [rsp + 0x500]
	mov	r13d, edx
	mov	edi, r11d
	jmp	.label_1250
.label_1147:
	mov	esi, 0x20
.label_1150:
	mov	rdi, r9
	mov	rdx, rax
	mov	r14, r9
	call	memset
	mov	r15, qword ptr [rsp + 0x68]
	add	r14, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x18]
	mov	r9, r14
	mov	r14d, r12d
	mov	rax, qword ptr [rsp + 0x40]
	mov	r10, qword ptr [rsp + 0x20]
.label_1197:
	test	bl, bl
	je	.label_1275
	test	r10, r10
	je	.label_1143
	mov	r12, r9
	mov	rbx, r10
	call	__ctype_tolower_loc
	mov	r10, rbx
	lea	rdx, [r10 - 1]
	mov	ecx, r10d
	and	ecx, 3
	cmp	rdx, 3
	jae	.label_1280
	mov	rdx, r10
	mov	r8, qword ptr [rsp + 0x18]
	mov	r9, r12
	jmp	.label_1282
.label_1275:
	test	al, al
	je	.label_1248
	test	r10, r10
	je	.label_1143
	mov	r15, r9
	mov	rbx, r10
	call	__ctype_toupper_loc
	mov	r10, rbx
	lea	rdx, [r10 - 1]
	mov	ecx, r10d
	and	ecx, 3
	cmp	rdx, 3
	jae	.label_1291
	mov	rdx, r10
	mov	r9, r15
	jmp	.label_1292
.label_1280:
	mov	rdx, r10
	mov	r8, qword ptr [rsp + 0x18]
	mov	r9, r12
	nop	word ptr cs:[rax + rax]
.label_1300:
	movzx	esi, byte ptr [r15 + rdx - 1]
	mov	rdi, qword ptr [rax]
	movzx	ebx, byte ptr [rdi + rsi*4]
	mov	byte ptr [r9 + rdx - 1], bl
	movzx	esi, byte ptr [r15 + rdx - 2]
	mov	rdi, qword ptr [rax]
	movzx	ebx, byte ptr [rdi + rsi*4]
	mov	byte ptr [r9 + rdx - 2], bl
	movzx	esi, byte ptr [r15 + rdx - 3]
	mov	rdi, qword ptr [rax]
	movzx	ebx, byte ptr [rdi + rsi*4]
	mov	byte ptr [r9 + rdx - 3], bl
	movzx	esi, byte ptr [r15 + rdx - 4]
	mov	rdi, qword ptr [rax]
	movzx	ebx, byte ptr [rdi + rsi*4]
	mov	byte ptr [r9 + rdx - 4], bl
	lea	rdx, [rdx - 4]
	cmp	rcx, rdx
	jne	.label_1300
.label_1282:
	test	rcx, rcx
	je	.label_1143
	lea	rsi, [r9 + rdx - 1]
	add	rdx, qword ptr [rsp + 0x80]
	neg	rcx
	nop	word ptr [rax + rax]
.label_1314:
	movzx	edi, byte ptr [rdx]
	mov	rbx, qword ptr [rax]
	movzx	ebx, byte ptr [rbx + rdi*4]
	mov	byte ptr [rsi], bl
	dec	rsi
	dec	rdx
	inc	rcx
	jne	.label_1314
	jmp	.label_1143
.label_1220:
	mov	esi, 0x20
.label_1223:
	mov	rdx, r14
	mov	r12, rdi
	call	memset
	add	r12, r14
	mov	r8, qword ptr [rsp + 0x18]
	mov	rdi, r12
	mov	r14d, r15d
.label_1217:
	mov	byte ptr [rdi], 0xa
	jmp	.label_1133
.label_1320:
	mov	esi, 0x20
.label_1298:
	mov	rdx, r14
	mov	r12, rdi
	call	memset
	add	r12, r14
	mov	r8, qword ptr [rsp + 0x18]
	mov	rdi, r12
	mov	r14d, r15d
.label_1294:
	mov	byte ptr [rdi], 9
.label_1133:
	inc	rdi
	mov	rcx, rdi
.label_1211:
	add	r8, rbx
	mov	r10, rcx
	mov	r11, qword ptr [rsp + 0x38]
	jmp	.label_1145
.label_1242:
	mov	esi, 0x20
.label_1193:
	mov	rdi, r10
	mov	rdx, r14
	mov	r15, r8
	mov	r13, r10
	call	memset
	mov	r11, qword ptr [rsp + 8]
	mov	r10, r13
	mov	r8, r15
	add	r10, r14
.label_1189:
	mov	al, byte ptr [rsp + 0x50]
	mov	byte ptr [r10], al
	inc	r10
	mov	rcx, r10
.label_1179:
	add	r8, rbx
	mov	r10, rcx
	jmp	.label_1159
.label_1248:
	mov	rdi, r9
	mov	rsi, r15
	mov	rdx, r10
	mov	rbx, r9
	mov	r15, r10
	call	memcpy
	mov	r10, r15
	mov	r9, rbx
	mov	r8, qword ptr [rsp + 0x18]
	jmp	.label_1143
.label_1258:
	test	edi, edi
	je	.label_1318
.label_1491:
	imul	r13d, r13d, 0x64
	add	r13d, edi
	mov	edi, 6
	mov	r14d, 4
.label_1172:
	mov	r15d, 0x21
.label_1257:
	mov	r10, r11
	mov	r9d, dword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 8]
	mov	ebx, r15d
	and	bl, 0x3f
	cmp	bl, 0xe
	je	.label_1178
	mov	dl, 1
	cmp	bl, 0x21
	mov	rbx, rsi
	je	.label_1203
	mov	r11, qword ptr [rsp + 0x38]
	mov	r8, qword ptr [rsp + 0x18]
	jmp	.label_1184
.label_1178:
	mov	qword ptr [rsp + 0x20], rdi
.label_1138:
	mov	r10, qword ptr [rsp + 0x20]
	mov	qword ptr [rsp + 0x40], r12
	mov	dword ptr [rsp + 0x2c], r14d
	mov	qword ptr [rsp + 0x58], r13
	lea	rax, [rbp - 2]
	xor	ecx, ecx
	xor	r15d, r15d
	mov	edx, 1
	nop	word ptr cs:[rax + rax]
.label_1202:
	mov	r12, rdx
	mov	r14, rax
	mov	r13, rcx
	mov	ebx, 1
	sub	rbx, r12
	lea	rdx, [r12 + 1]
	lea	rax, [r14 - 1]
	inc	r15b
	lea	rcx, [r13 - 1]
	cmp	byte ptr [rbp + rbx], 0x25
	jne	.label_1202
	mov	r11, qword ptr [rsp + 8]
	test	r11d, r11d
	mov	eax, r11d
	mov	ecx, 0
	cmovs	eax, ecx
	cmp	r12d, eax
	mov	ecx, eax
	cmova	ecx, r12d
	movsxd	rsi, ecx
	mov	rcx, qword ptr [rsp + 0x48]
	mov	r8, qword ptr [rsp + 0x18]
	sub	rcx, r8
	cmp	rsi, rcx
	mov	rdi, qword ptr [rsp + 0x10]
	jae	.label_1165
	test	rdi, rdi
	mov	ecx, 0
	je	.label_1214
	movsxd	rdx, r12d
	test	r10d, r10d
	mov	qword ptr [rsp + 0x20], rdx
	mov	qword ptr [rsp + 0x30], rsi
	jne	.label_1231
	cmp	r12d, eax
	jae	.label_1231
	movsxd	rax, r11d
	sub	rax, rdx
	cmp	r9d, 0x30
	mov	qword ptr [rsp + 8], rax
	je	.label_1256
	cmp	r9d, 0x2b
	jne	.label_1234
.label_1256:
	mov	esi, 0x30
	jmp	.label_1235
.label_1234:
	mov	esi, 0x20
.label_1235:
	mov	rdx, rax
	call	memset
	mov	rax, qword ptr [rsp + 0x10]
	add	rax, qword ptr [rsp + 8]
	mov	rdi, rax
	mov	rdx, qword ptr [rsp + 0x20]
.label_1231:
	mov	rax, qword ptr [rsp + 0x40]
	test	al, 1
	jne	.label_1310
	add	rbx, rbp
	mov	rsi, rbx
	mov	rbx, rdi
	call	memcpy
	mov	r10, qword ptr [rsp + 0x20]
	mov	r9, rbx
	mov	r8, qword ptr [rsp + 0x18]
	jmp	.label_1241
.label_1310:
	mov	rbx, rdi
	call	__ctype_toupper_loc
	mov	r10, qword ptr [rsp + 0x20]
	mov	r9, rbx
	movsxd	rcx, r12d
	lea	rdx, [rcx - 1]
	and	ecx, 3
	cmp	rdx, 3
	mov	rdx, r10
	jb	.label_1289
	movsxd	rdx, r12d
	add	r14, rdx
	and	r15b, 3
	movzx	esi, r15b
	mov	rdx, r10
	nop	word ptr cs:[rax + rax]
.label_1252:
	movzx	edi, byte ptr [r14 + 1]
	mov	rbx, qword ptr [rax]
	movzx	ebx, byte ptr [rbx + rdi*4]
	mov	byte ptr [r9 + rdx - 1], bl
	movzx	edi, byte ptr [r14]
	mov	rbx, qword ptr [rax]
	movzx	ebx, byte ptr [rbx + rdi*4]
	mov	byte ptr [r9 + rdx - 2], bl
	movzx	edi, byte ptr [r14 - 1]
	mov	rbx, qword ptr [rax]
	movzx	ebx, byte ptr [rbx + rdi*4]
	mov	byte ptr [r9 + rdx - 3], bl
	movzx	edi, byte ptr [r14 - 2]
	mov	rbx, qword ptr [rax]
	movzx	ebx, byte ptr [rbx + rdi*4]
	mov	byte ptr [r9 + rdx - 4], bl
	add	rdx, -4
	add	r14, -4
	cmp	rsi, rdx
	jne	.label_1252
.label_1289:
	test	rcx, rcx
	mov	r8, qword ptr [rsp + 0x18]
	je	.label_1241
	lea	rcx, [r9 + rdx - 1]
	add	rdx, rbp
	lea	rdx, [r13 + rdx - 1]
	and	r12d, 3
	neg	r12
	nop	
.label_1276:
	movzx	esi, byte ptr [rdx]
	mov	rdi, qword ptr [rax]
	movzx	ebx, byte ptr [rdi + rsi*4]
	mov	byte ptr [rcx], bl
	dec	rcx
	dec	rdx
	inc	r12
	jne	.label_1276
.label_1241:
	add	r9, r10
	mov	rcx, r9
	mov	rsi, qword ptr [rsp + 0x30]
.label_1214:
	add	r8, rsi
.label_1222:
	mov	r10, rcx
	mov	r11, qword ptr [rsp + 0x38]
	mov	r13, qword ptr [rsp + 0x58]
	mov	r14d, dword ptr [rsp + 0x2c]
	jmp	.label_1145
.label_1246:
	mov	esi, 0x20
.label_1221:
	mov	rdi, r10
	mov	rdx, r14
	mov	r13, r10
	call	memset
	mov	r10, r13
	mov	r8, qword ptr [rsp + 0x18]
	add	r10, r14
.label_1209:
	mov	al, byte ptr [rsp + 0x50]
	mov	byte ptr [r10], al
	inc	r10
	mov	rcx, r10
.label_1255:
	add	r8, r15
	mov	r10, rcx
.label_1266:
	xor	r11d, r11d
	test	r10, r10
	movsxd	r15, ebx
	mov	eax, 0
	je	.label_1293
	mov	esi, 0x30
	mov	rdi, r10
	mov	rdx, r15
	mov	r14, r8
	mov	rbx, r10
	call	memset
	xor	r11d, r11d
	mov	r8, r14
	add	rbx, r15
	mov	rax, rbx
.label_1293:
	add	r8, r15
	mov	r10, rax
.label_1159:
	lea	r15, [rsp + 0xa7]
	sub	r15, r12
	xor	eax, eax
	test	r11d, r11d
	cmovns	eax, r11d
	cdqe	
	cmp	r15, rax
	mov	r13, r15
	cmovb	r13, rax
	mov	rcx, qword ptr [rsp + 0x48]
	sub	rcx, r8
	cmp	r13, rcx
	jae	.label_1165
	xor	ecx, ecx
	test	r10, r10
	mov	r14d, dword ptr [rsp + 0x2c]
	je	.label_1137
	cmp	r15, rax
	setae	al
	mov	rcx, qword ptr [rsp + 0x20]
	test	ecx, ecx
	jne	.label_1304
	test	al, al
	jne	.label_1304
	mov	qword ptr [rsp + 0x18], r13
	mov	r13, r8
	movsxd	r14, r11d
	sub	r14, r15
	mov	eax, dword ptr [rsp + 0x30]
	cmp	eax, 0x30
	je	.label_1311
	cmp	eax, 0x2b
	jne	.label_1285
.label_1311:
	mov	esi, 0x30
	jmp	.label_1299
.label_1285:
	mov	esi, 0x20
.label_1299:
	mov	rdi, r10
	mov	rdx, r14
	mov	rbx, r10
	call	memset
	add	rbx, r14
	mov	r8, r13
	mov	r10, rbx
	mov	r14d, dword ptr [rsp + 0x2c]
	mov	r13, qword ptr [rsp + 0x18]
.label_1304:
	mov	rax, qword ptr [rsp + 0x40]
	test	al, al
	je	.label_1135
	test	r15, r15
	je	.label_1176
	mov	r14, r8
	mov	rbx, r10
	call	__ctype_toupper_loc
	mov	r10, rbx
	lea	rcx, [rsp + 0xa7]
	sub	ecx, r12d
	lea	rdx, [rsp + 0xa6]
	sub	rdx, r12
	and	ecx, 3
	cmp	rdx, 3
	mov	rdx, r15
	jb	.label_1144
	mov	r8, r12
	neg	r8
	mov	rdi, r10
	sub	rdi, r12
	dec	rdi
	mov	r9, -1
	sub	r8, rcx
	lea	rdx, [rsp + 0xa7]
	nop	dword ptr [rax]
.label_1284:
	movzx	esi, byte ptr [r9 + rdx]
	mov	rbx, qword ptr [rax]
	movzx	ebx, byte ptr [rbx + rsi*4]
	mov	byte ptr [rdi + rdx], bl
	movzx	esi, byte ptr [r9 + rdx - 1]
	mov	rbx, qword ptr [rax]
	movzx	ebx, byte ptr [rbx + rsi*4]
	mov	byte ptr [rdi + rdx - 1], bl
	movzx	esi, byte ptr [r9 + rdx - 2]
	mov	rbx, qword ptr [rax]
	movzx	ebx, byte ptr [rbx + rsi*4]
	mov	byte ptr [rdi + rdx - 2], bl
	movzx	esi, byte ptr [r9 + rdx - 3]
	mov	rbx, qword ptr [rax]
	movzx	ebx, byte ptr [rbx + rsi*4]
	mov	byte ptr [rdi + rdx - 3], bl
	add	rdx, -4
	mov	rsi, r8
	add	rsi, rdx
	jne	.label_1284
	sub	rdx, r12
.label_1144:
	test	rcx, rcx
	mov	r8, r14
	mov	r14d, dword ptr [rsp + 0x2c]
	je	.label_1176
	lea	rsi, [r10 + rdx - 1]
	lea	rdx, [r12 + rdx - 1]
	neg	rcx
	nop	dword ptr [rax + rax]
.label_1225:
	movzx	edi, byte ptr [rdx]
	mov	rbx, qword ptr [rax]
	movzx	ebx, byte ptr [rbx + rdi*4]
	mov	byte ptr [rsi], bl
	dec	rsi
	dec	rdx
	inc	rcx
	jne	.label_1225
	jmp	.label_1176
.label_1135:
	mov	rdi, r10
	mov	rsi, r12
	mov	rdx, r15
	mov	r14, r8
	mov	rbx, r10
	call	memcpy
	mov	r10, rbx
	mov	r8, r14
	mov	r14d, dword ptr [rsp + 0x2c]
.label_1176:
	add	r10, r15
	mov	rcx, r10
.label_1137:
	add	r8, r13
	mov	r10, rcx
	mov	r11, qword ptr [rsp + 0x38]
.label_1194:
	mov	r13, qword ptr [rsp + 0x58]
	nop	
.label_1145:
	mov	al, byte ptr [rbp + 1]
	inc	rbp
	mov	edi, 0xffffffff
	test	al, al
	jne	.label_1205
.label_1313:
	cmp	qword ptr [rsp + 0x48], 0
	je	.label_1208
	test	r10, r10
	je	.label_1208
	mov	byte ptr [r10], 0
.label_1208:
	mov	qword ptr [rsp + 0x70], r8
.label_1245:
	mov	rax, qword ptr [rsp + 0x70]
	add	rsp, 0x4b8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1165:
	xor	eax, eax
	mov	qword ptr [rsp + 0x70], rax
	jmp	.label_1245
	.section	.text
	.align	32
	#Procedure 0x40d989
	.globl sub_40d989
	.type sub_40d989, @function
sub_40d989:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40d990

	.globl tzalloc
	.type tzalloc, @function
tzalloc:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rdi
	xor	r15d, r15d
	test	r14, r14
	je	.label_1323
	mov	rdi, r14
	call	strlen
	mov	r15, rax
	inc	r15
.label_1323:
	lea	rax, [r15 + 0x11]
	and	rax, 0xfffffffffffffff8
	cmp	r15, 0x77
	mov	edi, 0x80
	cmovae	rdi, rax
	call	malloc
	mov	rbx, rax
	test	rbx, rbx
	je	.label_1324
	mov	qword ptr [rbx], 0
	test	r14, r14
	setne	byte ptr [rbx + 8]
	mov	byte ptr [rbx + 9], 0
	je	.label_1324
	mov	r12, rbx
	add	r12, 9
	mov	rdi, r12
	mov	rsi, r14
	mov	rdx, r15
	call	memcpy
	mov	byte ptr [r12 + r15], 0
.label_1324:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_1325:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40da15
	.globl sub_40da15
	.type sub_40da15, @function
sub_40da15:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40da1f
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
	je	.label_1326
	test	r14, r14
	je	.label_1325
.label_1326:
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
	#Procedure 0x40da50

	.globl dbg_printf
	.type dbg_printf, @function
dbg_printf:
	push	rbx
	sub	rsp, 0xd0
	mov	rbx, rdi
	test	al, al
	je	.label_1327
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_1327:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x30], rdx
	mov	qword ptr [rsp + 0x28], rsi
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_1328
	mov	esi, 6
	mov	edx, 1
	call	fwrite
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 8
	mov	rdi, qword ptr [rip + stderr]
	lea	rcx, [rsp]
	mov	esi, 1
	mov	rdx, rbx
	call	__vfprintf_chk
	add	rsp, 0xd0
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x40db11
	.globl sub_40db11
	.type sub_40db11, @function
sub_40db11:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40db20
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1329
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_1330
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1332
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_745
	mov	ecx, OFFSET FLAT:label_1333
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1331
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	32
	#Procedure 0x40db94
	.globl sub_40db94
	.type sub_40db94, @function
sub_40db94:

	nop	word ptr cs:[rax + rax]
.label_1336:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_1334
	test	rax, rax
	je	.label_1335
.label_1334:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x40dbb4
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_1335
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_1336
	test	rbx, rbx
	jne	.label_1336
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_1335:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40dbe8
	.globl sub_40dbe8
	.type sub_40dbe8, @function
sub_40dbe8:

	nop	dword ptr [rax + rax]
.label_1337:
	mov	eax, ebx
.label_1338:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40dbfd
	.globl sub_40dbfd
	.type sub_40dbfd, @function
sub_40dbfd:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40dc07

	.globl fd_reopen
	.type fd_reopen, @function
fd_reopen:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	ebp, edi
	xor	eax, eax
	mov	rdi, rsi
	mov	esi, edx
	mov	edx, ecx
	call	open
	mov	ebx, eax
	cmp	ebx, ebp
	je	.label_1337
	test	ebx, ebx
	js	.label_1337
	mov	edi, ebx
	mov	esi, ebp
	call	dup2
	mov	r14d, eax
	call	__errno_location
	mov	rbp, rax
	mov	r15d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	mov	dword ptr [rbp], r15d
	mov	eax, r14d
	jmp	.label_1338
	.section	.text
	.align	32
	#Procedure 0x40dc50

	.globl lookup_zone
	.type lookup_zone, @function
lookup_zone:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rsi
	mov	r15, rdi
	mov	esi, OFFSET FLAT:label_1346
	mov	rdi, r14
	call	strcmp
	mov	r12d, OFFSET FLAT:universal_time_zone_table
	test	eax, eax
	je	.label_1340
	mov	esi, OFFSET FLAT:label_1348
	mov	rdi, r14
	call	strcmp
	mov	r12d, OFFSET FLAT:label_1341
	test	eax, eax
	je	.label_1340
	mov	esi, OFFSET FLAT:label_1347
	mov	rdi, r14
	call	strcmp
	mov	r12d, OFFSET FLAT:label_1339
	test	eax, eax
	je	.label_1340
	mov	rsi, qword ptr [r15 + 0xe8]
	test	rsi, rsi
	je	.label_1345
	add	r15, 0xe8
	mov	r12, r15
	nop	word ptr cs:[rax + rax]
.label_1349:
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	je	.label_1340
	mov	rsi, qword ptr [r12 + 0x10]
	add	r12, 0x10
	test	rsi, rsi
	jne	.label_1349
.label_1345:
	mov	ebx, OFFSET FLAT:time_zone_table
	mov	esi, OFFSET FLAT:label_1344
	xor	r12d, r12d
	nop	word ptr [rax + rax]
.label_1343:
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	je	.label_1342
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_1343
	jmp	.label_1340
.label_1342:
	mov	r12, rbx
.label_1340:
	mov	rax, r12
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x40dd2d
	.globl sub_40dd2d
	.type sub_40dd2d, @function
sub_40dd2d:

	nop	dword ptr [rax]
.label_1351:
	mov	esi, OFFSET FLAT:label_190
.label_1350:
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
	.align	32
	#Procedure 0x40dd83
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
	je	.label_1351
	mov	esi, OFFSET FLAT:label_188
	jmp	.label_1350
	.section	.text
	.align	32
	#Procedure 0x40dda0
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
	je	.label_1352
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
.label_1352:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40de01
	.globl sub_40de01
	.type sub_40de01, @function
sub_40de01:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40de10

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_1365
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1364
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1354
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1355
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1356
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1357
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1370
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1367
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1358
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1368
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1359
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_745
	mov	ecx, OFFSET FLAT:label_1333
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_1361
	mov	esi, OFFSET FLAT:label_1353
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_1361
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1363
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_1361:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1362
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_1333
	mov	ecx, OFFSET FLAT:label_744
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1366
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_744
	mov	ecx, OFFSET FLAT:label_1369
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_1365:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1360
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
	#Procedure 0x40e04b
	.globl sub_40e04b
	.type sub_40e04b, @function
sub_40e04b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e050

	.globl parse_datetime
	.type parse_datetime, @function
parse_datetime:
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
	mov	edi, OFFSET FLAT:label_39
	call	getenv
	mov	r13, rax
	mov	rdi, r13
	call	tzalloc
	mov	rbx, rax
	test	rbx, rbx
	je	.label_1372
	xor	ecx, ecx
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r14
	mov	r8, rbx
	mov	r9, r13
	call	parse_datetime2
	mov	bpl, al
	mov	rdi, rbx
	call	tzfree
	jmp	.label_1371
.label_1372:
	xor	ebp, ebp
.label_1371:
	mov	eax, ebp
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
	#Procedure 0x40e0b7
	.globl sub_40e0b7
	.type sub_40e0b7, @function
sub_40e0b7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e125
	.globl sub_40e125
	.type sub_40e125, @function
sub_40e125:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e132
	.globl sub_40e132
	.type sub_40e132, @function
sub_40e132:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e156
	.globl sub_40e156
	.type sub_40e156, @function
sub_40e156:

	nop	word ptr cs:[rax + rax]
