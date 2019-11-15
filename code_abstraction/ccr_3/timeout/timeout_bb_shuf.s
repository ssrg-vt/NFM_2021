	.section	.text
	.align	16
	#Procedure 0x401ad9
	.globl sub_401ad9
	.type sub_401ad9, @function
sub_401ad9:

	hlt	
	.section	.text
	.align	16
	#Procedure 0x401ada
	.globl sub_401ada
	.type sub_401ada, @function
sub_401ada:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401b12
	.globl sub_401b12
	.type sub_401b12, @function
sub_401b12:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401b5a
	.globl sub_401b5a
	.type sub_401b5a, @function
sub_401b5a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401b7c
	.globl sub_401b7c
	.type sub_401b7c, @function
sub_401b7c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401b8d
	.globl sub_401b8d
	.type sub_401b8d, @function
sub_401b8d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401ba6
	.globl sub_401ba6
	.type sub_401ba6, @function
sub_401ba6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401bb0

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
	je	.label_10
	test	r15, r15
	je	.label_11
.label_10:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_11:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x401bec
	.globl sub_401bec
	.type sub_401bec, @function
sub_401bec:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401bf0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_12
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_12:
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
	#Procedure 0x401c73
	.globl sub_401c73
	.type sub_401c73, @function
sub_401c73:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401c80
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x401c8a
	.globl sub_401c8a
	.type sub_401c8a, @function
sub_401c8a:

	nop	word ptr [rax + rax]
.label_14:
	call	xalloc_die
.label_16:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x401c9a
	.globl sub_401c9a
	.type sub_401c9a, @function
sub_401c9a:

	nop	word ptr cs:[rax + rax]
.label_17:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_14
	mov	qword ptr [rsi], rbx
.label_15:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_13
	test	rax, rax
	je	.label_14
.label_13:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x401cce
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_17
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_16
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_15
	call	free
	xor	eax, eax
	jmp	.label_13
	.section	.text
	.align	16
	#Procedure 0x401d00

	.globl str2sig
	.type str2sig, @function
str2sig:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x10
	mov	r14, rsi
	mov	r12, rdi
	movsx	eax, byte ptr [r12]
	add	eax, -0x30
	cmp	eax, 0xa
	jae	.label_18
	lea	rsi, [rsp + 8]
	mov	edx, 0xa
	mov	rdi, r12
	call	strtol
	cmp	rax, 0x40
	jg	.label_19
	mov	rcx, qword ptr [rsp + 8]
	mov	cl, byte ptr [rcx]
	test	cl, cl
	je	.label_21
	jmp	.label_19
.label_18:
	xor	ebx, ebx
	mov	ebp, OFFSET FLAT:label_22
	nop	word ptr cs:[rax + rax]
.label_25:
	mov	rdi, rbp
	mov	rsi, r12
	call	strcmp
	test	eax, eax
	je	.label_28
	inc	rbx
	add	rbp, 0xc
	cmp	rbx, 0x22
	jbe	.label_25
	call	__libc_current_sigrtmin
	mov	ebp, eax
	call	__libc_current_sigrtmax
	mov	r15d, eax
	test	ebp, ebp
	jle	.label_20
	mov	esi, OFFSET FLAT:label_24
	mov	edx, 5
	mov	rdi, r12
	call	strncmp
	test	eax, eax
	je	.label_26
.label_20:
	test	r15d, r15d
	jle	.label_19
	mov	esi, OFFSET FLAT:label_29
	mov	edx, 5
	mov	rdi, r12
	call	strncmp
	test	eax, eax
	jne	.label_19
	add	r12, 5
	lea	rsi, [rsp + 8]
	mov	edx, 0xa
	mov	rdi, r12
	call	strtol
	mov	rcx, qword ptr [rsp + 8]
	cmp	byte ptr [rcx], 0
	jne	.label_19
	sub	ebp, r15d
	movsxd	rcx, ebp
	cmp	rcx, rax
	jg	.label_19
	test	rax, rax
	jg	.label_19
	mov	ecx, r15d
	jmp	.label_23
.label_28:
	mov	eax, dword ptr [rbp - 4]
	jmp	.label_21
.label_26:
	add	r12, 5
	lea	rsi, [rsp + 8]
	mov	edx, 0xa
	mov	rdi, r12
	call	strtol
	test	rax, rax
	js	.label_19
	mov	rcx, qword ptr [rsp + 8]
	mov	cl, byte ptr [rcx]
	test	cl, cl
	jne	.label_19
	sub	r15d, ebp
	movsxd	rcx, r15d
	cmp	rax, rcx
	jle	.label_27
.label_19:
	mov	eax, 0xffffffff
.label_21:
	mov	dword ptr [r14], eax
	sar	eax, 0x1f
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_27:
	mov	ecx, ebp
.label_23:
	add	rax, rcx
	jmp	.label_21
	.section	.text
	.align	16
	#Procedure 0x401e52
	.globl sub_401e52
	.type sub_401e52, @function
sub_401e52:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401e60
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_30]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_31]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_32]
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
	.align	16
	#Procedure 0x401ecf
	.globl sub_401ecf
	.type sub_401ecf, @function
sub_401ecf:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401ed0
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
	je	.label_33
	mov	qword ptr [rax], rbx
.label_33:
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
	#Procedure 0x401fbc
	.globl sub_401fbc
	.type sub_401fbc, @function
sub_401fbc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401fc0
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
	#Procedure 0x401fcf
	.globl sub_401fcf
	.type sub_401fcf, @function
sub_401fcf:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401fd0

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
	jne	.label_34
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_34
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_35
.label_34:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_35:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_36
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_36:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40203e
	.globl sub_40203e
	.type sub_40203e, @function
sub_40203e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402040

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
	mov	eax, OFFSET FLAT:label_38
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x402065
	.globl sub_402065
	.type sub_402065, @function
sub_402065:

	nop	word ptr cs:[rax + rax]
.label_41:
	test	rbx, rbx
	je	.label_39
	mov	qword ptr [rbx], r14
.label_39:
	xorps	xmm0, xmm0
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x402083
	.globl sub_402083
	.type sub_402083, @function
sub_402083:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402086

	.globl c_strtod
	.type c_strtod, @function
c_strtod:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	cmp	qword ptr [rip + c_locale_cache],  0
	jne	.label_42
	mov	edi, 0x1fbf
	mov	esi, OFFSET FLAT:label_40
	xor	edx, edx
	call	newlocale
	mov	qword ptr [rip + c_locale_cache],  rax
.label_42:
	mov	rdx, qword ptr [rip + c_locale_cache]
	test	rdx, rdx
	je	.label_41
	mov	rdi, r14
	mov	rsi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	strtod_l
	.section	.text
	.align	16
	#Procedure 0x4020d0
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
	.align	16
	#Procedure 0x402191
	.globl sub_402191
	.type sub_402191, @function
sub_402191:

	nop	word ptr cs:[rax + rax]
.label_47:
	mov	al, 1
	xorps	xmm1, xmm1
	ucomisd	xmm0, xmm1
	jne	.label_43
	jnp	.label_45
.label_43:
	cmp	dword ptr [r12], 0x22
	setne	al
	jmp	.label_45
.label_46:
	xor	eax, eax
.label_45:
	test	r15, r15
	je	.label_44
	mov	qword ptr [r15], rcx
.label_44:
	movsd	qword ptr [r14], xmm0
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x4021d4

	.globl xstrtod
	.type xstrtod, @function
xstrtod:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x10
	mov	r13, rcx
	mov	r14, rdx
	mov	r15, rsi
	mov	rbx, rdi
	call	__errno_location
	mov	r12, rax
	mov	dword ptr [r12], 0
	lea	rsi, [rsp + 8]
	mov	rdi, rbx
	call	r13
	mov	rcx, qword ptr [rsp + 8]
	cmp	rcx, rbx
	je	.label_46
	test	r15, r15
	jne	.label_47
	cmp	byte ptr [rcx], 0
	je	.label_47
	xor	eax, eax
	jmp	.label_44
	.section	.text
	.align	16
	#Procedure 0x402220
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x402228
	.globl sub_402228
	.type sub_402228, @function
sub_402228:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402230
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_30]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_31]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_32]
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
	.align	16
	#Procedure 0x40229e
	.globl sub_40229e
	.type sub_40229e, @function
sub_40229e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4022a0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_48
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_48
	test	byte ptr [rbx + 1], 1
	je	.label_48
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_48:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	16
	#Procedure 0x4022d3
	.globl sub_4022d3
	.type sub_4022d3, @function
sub_4022d3:

	nop	word ptr cs:[rax + rax]
.label_49:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4022e5
	.globl sub_4022e5
	.type sub_4022e5, @function
sub_4022e5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4022f0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_49
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_50
	test	rax, rax
	je	.label_49
.label_50:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x402320
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x40232e
	.globl sub_40232e
	.type sub_40232e, @function
sub_40232e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402330

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
	js	.label_54
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_57
	cmp	r12d, 0x7fffffff
	je	.label_52
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
	jne	.label_55
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_55:
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
.label_57:
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
	jbe	.label_53
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_56
.label_53:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_51
	mov	rdi, r14
	call	free
.label_51:
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
.label_56:
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
.label_54:
	call	abort
.label_52:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4024ed
	.globl sub_4024ed
	.type sub_4024ed, @function
sub_4024ed:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4024f0
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
	.align	16
	#Procedure 0x402508
	.globl sub_402508
	.type sub_402508, @function
sub_402508:

	nop	dword ptr [rax + rax]
.label_58:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402515
	.globl sub_402515
	.type sub_402515, @function
sub_402515:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402519
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
	je	.label_58
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
	.align	16
	#Procedure 0x402580

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
	jne	.label_60
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_59
	test	cl, cl
	jne	.label_59
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_59
.label_60:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_59
	call	__errno_location
	mov	dword ptr [rax], 0
.label_59:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4025e0
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_30]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_31]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_32]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_61
	test	rsi, rsi
	je	.label_61
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_61:
	call	abort
.label_62:
	sub	ebx, -0x80
	mov	edi, ebx
	call	_exit
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402664

	.globl cleanup
	.type cleanup, @function
cleanup:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x30
	mov	ebx, edi
	cmp	ebx, 0xe
	jne	.label_69
	mov	byte ptr [rip + timed_out],  1
	mov	ebx, dword ptr [rip + term_signal]
.label_69:
	cmp	dword ptr [rip + monitored_pid],  0
	je	.label_62
	movsd	xmm1, qword ptr [rip + kill_after]
	xorpd	xmm0, xmm0
	ucomisd	xmm1, xmm0
	jne	.label_65
	jnp	.label_68
.label_65:
	movsd	qword ptr [rsp + 8], xmm1
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	dword ptr [rip + term_signal],  9
	xor	edi, edi
	movsd	xmm0, qword ptr [rsp + 8]
	call	settimeout
	mov	qword ptr [rip + kill_after],  0
	mov	dword ptr [rbp], r14d
.label_68:
	cmp	byte ptr [rip + verbose],  1
	jne	.label_70
	lea	rsi, [rsp + 0x10]
	mov	edi, ebx
	call	sig2str
	test	eax, eax
	je	.label_71
	lea	rdi, [rsp + 0x10]
	mov	esi, 0x13
	mov	edx, 1
	mov	ecx, 0x13
	mov	r8d, OFFSET FLAT:label_72
	xor	eax, eax
	mov	r9d, ebx
	call	__snprintf_chk
.label_71:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_67
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rdi, qword ptr [rip + command]
	call	quote
	mov	rbp, rax
	lea	rcx, [rsp + 0x10]
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	mov	r8, rbp
	call	error
.label_70:
	mov	ebp, dword ptr [rip + monitored_pid]
	test	ebp, ebp
	jne	.label_66
	mov	esi, 1
	mov	edi, ebx
	call	signal
.label_66:
	mov	edi, ebp
	mov	esi, ebx
	call	kill
	mov	al, byte ptr [rip + foreground]
	test	al, al
	jne	.label_63
	mov	esi, 1
	mov	edi, ebx
	call	signal
	xor	edi, edi
	mov	esi, ebx
	call	kill
	cmp	ebx, 9
	je	.label_63
	cmp	ebx, 0x12
	je	.label_63
	mov	ebx, dword ptr [rip + monitored_pid]
	test	ebx, ebx
	jne	.label_64
	mov	edi, 0x12
	mov	esi, 1
	call	signal
.label_64:
	mov	esi, 0x12
	mov	edi, ebx
	call	kill
	mov	edi, 0x12
	mov	esi, 1
	call	signal
	xor	edi, edi
	mov	esi, 0x12
	call	kill
.label_63:
	add	rsp, 0x30
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4027e0

	.globl operand2sig
	.type operand2sig, @function
operand2sig:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x10
	mov	r14, rsi
	mov	r15, rdi
	movsx	eax, byte ptr [r15]
	add	eax, -0x30
	cmp	eax, 9
	ja	.label_82
	call	__errno_location
	mov	rbx, rax
	mov	dword ptr [rbx], 0
	lea	rsi, [rsp + 8]
	mov	edx, 0xa
	mov	rdi, r15
	call	strtol
	mov	rcx, qword ptr [rsp + 8]
	mov	edi, 0xffffffff
	cmp	rcx, r15
	je	.label_77
	cmp	byte ptr [rcx], 0
	jne	.label_77
	cmp	dword ptr [rbx], 0
	jne	.label_77
	cmp	eax, -1
	je	.label_77
	movsxd	rcx, eax
	cmp	rcx, rax
	jne	.label_77
	cmp	eax, 0xfe
	mov	ecx, 0xff
	mov	edi, 0x7f
	cmovg	edi, ecx
	and	edi, eax
.label_77:
	mov	dword ptr [rsp + 4], edi
	jmp	.label_81
.label_82:
	mov	rdi, r15
	call	xstrdup
	mov	r12, rax
	mov	bpl, byte ptr [r12]
	test	bpl, bpl
	je	.label_84
	lea	rbx, [r12 + 1]
	nop	word ptr [rax + rax]
.label_75:
	movsx	esi, bpl
	mov	edi, OFFSET FLAT:label_73
	mov	edx, 0x1b
	call	memchr
	test	rax, rax
	je	.label_78
	add	bpl, 0xe0
	mov	byte ptr [rbx - 1], bpl
.label_78:
	movzx	ebp, byte ptr [rbx]
	inc	rbx
	test	bpl, bpl
	jne	.label_75
.label_84:
	lea	rsi, [rsp + 4]
	mov	rdi, r12
	call	str2sig
	test	eax, eax
	je	.label_83
	cmp	byte ptr [r12], 0x53
	jne	.label_80
	cmp	byte ptr [r12 + 1], 0x49
	jne	.label_80
	cmp	byte ptr [r12 + 2], 0x47
	jne	.label_80
	mov	rdi, r12
	add	rdi, 3
	lea	rsi, [rsp + 4]
	call	str2sig
	test	eax, eax
	je	.label_83
.label_80:
	mov	dword ptr [rsp + 4], 0xffffffff
.label_83:
	mov	rdi, r12
	call	free
	mov	edi, dword ptr [rsp + 4]
.label_81:
	test	edi, edi
	js	.label_79
	mov	rsi, r14
	call	sig2str
	test	eax, eax
	je	.label_74
.label_79:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_76
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, r15
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	eax, 0xffffffff
	jmp	.label_85
.label_74:
	mov	eax, dword ptr [rsp + 4]
.label_85:
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402951
	.globl sub_402951
	.type sub_402951, @function
sub_402951:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
.label_90:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_86
	mov	eax, OFFSET FLAT:label_87
	jmp	.label_88
	.section	.text
	.align	16
	#Procedure 0x40296f
	.globl sub_40296f
	.type sub_40296f, @function
sub_40296f:

	nop	word ptr cs:[rax + rax]
.label_95:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_89
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_89
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_89
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_89
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_89
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_89
	cmp	byte ptr [rax + 7], 0
	je	.label_90
.label_89:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_91
	mov	eax, OFFSET FLAT:label_92
.label_88:
	cmove	rax, rcx
.label_96:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4029c2

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
	jne	.label_96
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_95
	cmp	ecx, 0x55
	jne	.label_89
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_89
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_89
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_89
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_89
	cmp	byte ptr [rax + 5], 0
	jne	.label_89
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_93
	mov	eax, OFFSET FLAT:label_94
	jmp	.label_88
	.section	.text
	.align	16
	#Procedure 0x402a30

	.globl dtotimespec
	.type dtotimespec, @function
dtotimespec:
	movabs	rcx, 0x7fffffffffffffff
	xor	edx, edx
	ucomisd	xmm0, qword ptr [rip + label_97]
	jbe	.label_98
	mov	edx, 0x3b9ac9ff
	movsd	xmm1, qword ptr [rip + label_99]
	ucomisd	xmm1, xmm0
	jbe	.label_100
	cvttsd2si	rsi, xmm0
	xorps	xmm1, xmm1
	cvtsi2sd	xmm1, rsi
	subsd	xmm0, xmm1
	mulsd	xmm0, qword ptr [rip + label_101]
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
	shr	rdx, 0x3f
	sar	rax, 0x1a
	add	rax, rdx
	imul	rdi, rax, 0x3b9aca00
	mov	rdx, rcx
	sub	rdx, rdi
	add	rdx, 0x3b9aca00
	sub	rcx, rdi
	cmovns	rdx, rcx
	add	rax, rsi
	sar	rcx, 0x3f
	add	rcx, rax
.label_100:
	mov	rax, rcx
	ret	
.label_98:
	inc	rcx
	mov	rax, rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x402add
	.globl sub_402add
	.type sub_402add, @function
sub_402add:

	nop	dword ptr [rax]
.label_103:
	call	xalloc_die
.label_102:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_104
	test	rax, rax
	je	.label_103
.label_104:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x402af9

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_102
	test	rbx, rbx
	jne	.label_102
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_105:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402b15
	.globl sub_402b15
	.type sub_402b15, @function
sub_402b15:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402b1f
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_105
	call	rpl_calloc
	test	rax, rax
	je	.label_105
	pop	rcx
	ret	
.label_106:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402b45
	.globl sub_402b45
	.type sub_402b45, @function
sub_402b45:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402b47
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_30]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_31]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_32]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_106
	test	rdx, rdx
	je	.label_106
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_107:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402bb5
	.globl sub_402bb5
	.type sub_402bb5, @function
sub_402bb5:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402bbd
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
	je	.label_107
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
	.align	16
	#Procedure 0x402c20
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_108
	test	rax, rax
	je	.label_109
.label_108:
	pop	rbx
	ret	
.label_109:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402c3a
	.globl sub_402c3a
	.type sub_402c3a, @function
sub_402c3a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402c40

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x148
	mov	rbx, rsi
	mov	ebp, edi
	mov	rdi, qword ptr [rbx]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_37
	call	setlocale
	mov	edi, OFFSET FLAT:label_124
	mov	esi, OFFSET FLAT:label_125
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_124
	call	textdomain
	mov	dword ptr [rip + exit_failure],  0x7d
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	lea	r14, [rsp + 0xb0]
	jmp	.label_110
.label_431:
	mov	byte ptr [rip + preserve_status],  1
	nop	word ptr [rax + rax]
.label_110:
	mov	edx, OFFSET FLAT:label_138
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	mov	edi, ebp
	mov	rsi, rbx
	call	getopt_long
	cmp	eax, 0x6a
	jle	.label_143
	add	eax, -0x6b
	cmp	eax, 0x16
	ja	.label_144
	jmp	qword ptr [(rax * 8) + label_145]
.label_427:
	mov	rdi, qword ptr [rip + optarg]
	call	parse_duration
	movsd	qword ptr [rip + kill_after],  xmm0
	jmp	.label_110
.label_428:
	mov	rdi, qword ptr [rip + optarg]
	mov	rsi, r14
	call	operand2sig
	mov	dword ptr [rip + term_signal],  eax
	cmp	eax, -1
	jne	.label_110
	jmp	.label_113
.label_429:
	mov	byte ptr [rip + verbose],  1
	jmp	.label_110
.label_430:
	mov	byte ptr [rip + foreground],  1
	jmp	.label_110
.label_143:
	cmp	eax, -1
	jne	.label_117
	movsxd	rax, dword ptr [rip + optind]
	sub	ebp, eax
	cmp	ebp, 1
	jle	.label_119
	lea	ecx, [rax + 1]
	mov	dword ptr [rip + optind],  ecx
	mov	rdi, qword ptr [rbx + rax*8]
	call	parse_duration
	movsd	qword ptr [rsp + 0x10], xmm0
	movsxd	r15, dword ptr [rip + optind]
	mov	rax, qword ptr [rbx + r15*8]
	mov	qword ptr [rip + command],  rax
	mov	al, byte ptr [rip + foreground]
	test	al, al
	jne	.label_122
	xor	edi, edi
	xor	esi, esi
	call	setpgid
.label_122:
	mov	r14d, dword ptr [rip + term_signal]
	lea	rdi, [rsp + 0x20]
	call	sigemptyset
	mov	qword ptr [rsp + 24], OFFSET FLAT:cleanup
	mov	dword ptr [rsp + 0xa0], 0x10000000
	lea	rbp, [rsp + 0x18]
	mov	edi, 0xe
	xor	edx, edx
	mov	rsi, rbp
	call	sigaction
	mov	edi, 2
	xor	edx, edx
	mov	rsi, rbp
	call	sigaction
	mov	edi, 3
	xor	edx, edx
	mov	rsi, rbp
	call	sigaction
	mov	edi, 1
	xor	edx, edx
	mov	rsi, rbp
	call	sigaction
	mov	edi, 0xf
	xor	edx, edx
	mov	rsi, rbp
	call	sigaction
	xor	edx, edx
	mov	edi, r14d
	mov	rsi, rbp
	call	sigaction
	mov	edi, 0x15
	mov	esi, 1
	call	signal
	mov	edi, 0x16
	mov	esi, 1
	call	signal
	lea	rdi, [rsp + 0x20]
	call	sigemptyset
	mov	qword ptr [rsp + 24], OFFSET FLAT:chld
	mov	dword ptr [rsp + 0xa0], 0x10000000
	lea	rsi, [rsp + 0x18]
	mov	edi, 0x11
	xor	edx, edx
	call	sigaction
	lea	rbp, [rsp + 0xc8]
	mov	rdi, rbp
	call	sigemptyset
	mov	esi, 0x11
	mov	rdi, rbp
	call	sigaddset
	mov	edi, 1
	xor	edx, edx
	mov	rsi, rbp
	call	sigprocmask
	test	eax, eax
	je	.label_128
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_114
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rcx
	call	error
.label_128:
	call	fork
	mov	dword ptr [rip + monitored_pid],  eax
	test	eax, eax
	je	.label_137
	cmp	eax, -1
	jne	.label_139
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_142
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	mov	ebx, 0x7d
	jmp	.label_121
.label_137:
	lea	rbx, [rbx + r15*8]
	mov	edi, 0x15
	xor	esi, esi
	call	signal
	mov	edi, 0x16
	xor	esi, esi
	call	signal
	mov	rdi, qword ptr [rbx]
	mov	rsi, rbx
	call	execvp
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	ebx, ebx
	cmp	ebp, 2
	sete	bl
	or	ebx, 0x7e
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_116
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rdi, qword ptr [rip + command]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, r14
	call	error
	jmp	.label_121
.label_139:
	lea	rbx, [rsp + 0x18]
	mov	rdi, rbx
	call	sigemptyset
	mov	esi, 0xe
	mov	rdi, rbx
	call	sigaddset
	mov	edi, 1
	xor	edx, edx
	mov	rsi, rbx
	call	sigprocmask
	test	eax, eax
	je	.label_131
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_114
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_131:
	mov	edi, 1
	movsd	xmm0, qword ptr [rsp + 0x10]
	call	settimeout
	mov	ebp, dword ptr [rip + term_signal]
	lea	rbx, [rsp + 0x18]
	mov	rdi, rbx
	call	sigemptyset
	mov	esi, 0xe
	mov	rdi, rbx
	call	sigaddset
	mov	esi, 2
	mov	rdi, rbx
	call	sigaddset
	mov	esi, 3
	mov	rdi, rbx
	call	sigaddset
	mov	esi, 1
	mov	rdi, rbx
	call	sigaddset
	mov	esi, 0xf
	mov	rdi, rbx
	call	sigaddset
	mov	rdi, rbx
	mov	esi, ebp
	call	sigaddset
	mov	esi, 0x11
	mov	rdi, rbx
	call	sigaddset
	lea	rdx, [rsp + 0xc8]
	xor	edi, edi
	mov	rsi, rbx
	call	sigprocmask
	test	eax, eax
	je	.label_120
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_114
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_120:
	mov	edi, dword ptr [rip + monitored_pid]
	lea	rsi, [rsp + 0xc]
	mov	edx, 1
	call	waitpid
	test	eax, eax
	jne	.label_129
	lea	rbx, [rsp + 0xc8]
	lea	rbp, [rsp + 0xc]
	nop	word ptr cs:[rax + rax]
.label_140:
	mov	rdi, rbx
	call	sigsuspend
	mov	edi, dword ptr [rip + monitored_pid]
	mov	edx, 1
	mov	rsi, rbp
	call	waitpid
	test	eax, eax
	je	.label_140
.label_129:
	test	eax, eax
	js	.label_141
	mov	eax, dword ptr [rsp + 0xc]
	mov	ebx, eax
	and	ebx, 0x7f
	je	.label_146
	mov	ecx, ebx
	shl	ecx, 0x18
	add	ecx, 0x1000000
	sar	ecx, 0x19
	test	ecx, ecx
	jle	.label_111
	test	al, al
	jns	.label_147
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_148
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_147:
	mov	al, byte ptr [rip + timed_out]
	test	al, al
	jne	.label_115
	mov	edi, 4
	xor	esi, esi
	xor	eax, eax
	call	prctl
	test	eax, eax
	je	.label_118
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_123
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rcx
	call	error
	jmp	.label_115
.label_141:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_127
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	mov	dword ptr [rsp + 0xc], 0x7d
	mov	ebx, 0x7d
	jmp	.label_130
.label_146:
	movzx	ebx, ah
	jmp	.label_135
.label_111:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_136
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	ecx, dword ptr [rsp + 0xc]
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	call	error
	mov	dword ptr [rsp + 0xc], 1
	mov	ebx, 1
	jmp	.label_130
.label_118:
	xor	esi, esi
	mov	edi, ebx
	call	signal
	lea	rbp, [rsp + 0x18]
	mov	rdi, rbp
	call	sigemptyset
	mov	rdi, rbp
	mov	esi, ebx
	call	sigaddset
	mov	edi, 1
	xor	edx, edx
	mov	rsi, rbp
	call	sigprocmask
	test	eax, eax
	je	.label_112
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_114
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rcx
	call	error
.label_112:
	mov	edi, ebx
	call	raise
.label_115:
	or	ebx, 0x80
.label_135:
	mov	dword ptr [rsp + 0xc], ebx
.label_130:
	cmp	byte ptr [rip + timed_out],  1
	jne	.label_121
	mov	al, byte ptr [rip + preserve_status]
	test	al, al
	jne	.label_121
	mov	dword ptr [rsp + 0xc], 0x7c
	mov	ebx, 0x7c
.label_121:
	mov	eax, ebx
	add	rsp, 0x148
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_117:
	cmp	eax, 0xffffff7d
	je	.label_126
	cmp	eax, 0xffffff7e
	jne	.label_144
	xor	edi, edi
	call	usage
.label_126:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	esi, OFFSET FLAT:label_132
	mov	edx, OFFSET FLAT:label_133
	mov	r8d, OFFSET FLAT:label_134
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_144:
	mov	edi, 0x7d
	call	usage
.label_113:
	mov	edi, 0x7d
	call	usage
.label_119:
	mov	edi, 0x7d
	call	usage
	.section	.text
	.align	16
	#Procedure 0x4032d8
	.globl sub_4032d8
	.type sub_4032d8, @function
sub_4032d8:

	nop	dword ptr [rax + rax]
.label_152:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4032e5
	.globl sub_4032e5
	.type sub_4032e5, @function
sub_4032e5:

	nop	word ptr [rax + rax]
.label_153:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_149
	test	rax, rax
	je	.label_150
.label_149:
	pop	rbx
	ret	
.label_150:
	call	xalloc_die
.label_151:
	test	rcx, rcx
	jne	.label_154
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_154:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_152
.label_155:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_153
	test	rbx, rbx
	jne	.label_153
	call	free
	xor	eax, eax
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x403353
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_151
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_150
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_155
	.section	.text
	.align	16
	#Procedure 0x403380
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
	.align	16
	#Procedure 0x4033f5
	.globl sub_4033f5
	.type sub_4033f5, @function
sub_4033f5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403400

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_156
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_158
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_160
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_158
	mov	esi, OFFSET FLAT:label_159
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_161
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_161:
	mov	rbx, r14
.label_158:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_156:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_157
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4034a1
	.globl sub_4034a1
	.type sub_4034a1, @function
sub_4034a1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4034b0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_162
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_165:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_165
.label_162:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_166
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_163], OFFSET FLAT:slot0
.label_166:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_164
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_164:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x403541
	.globl sub_403541
	.type sub_403541, @function
sub_403541:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403550

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
	jmp	.label_188
	.section	.text
	.align	16
	#Procedure 0x4035ff
	.globl sub_4035ff
	.type sub_4035ff, @function
sub_4035ff:

	nop	
.label_186:
	cmp	r8d, 2
	setne	al
	cmp	byte ptr [rsp + 0xf], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa8]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x34]
	mov	rsi, qword ptr [rsp + 0xc0]
	je	.label_167
	or	al, dl
	jne	.label_167
	test	dil, 1
	jne	.label_184
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_167
	test	rbp, rbp
	mov	r15d, r8d
	mov	al, bl
	mov	qword ptr [rsp + 0x48], rcx
	mov	r12d, esi
	mov	r13, qword ptr [rsp + 0x68]
	je	.label_188
	jmp	.label_167
.label_421:
	mov	r8d, 5
	test	r12b, 1
	jne	.label_195
	test	rbp, rbp
	je	.label_199
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax], 0x22
.label_199:
	mov	r14d, 1
	jmp	.label_201
.label_422:
	mov	r13b, 1
	mov	r8d, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_91
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	sil, 1
	jmp	.label_204
.label_195:
	xor	r14d, r14d
.label_201:
	mov	eax, OFFSET FLAT:label_91
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	r13b, 1
	jmp	.label_183
	.section	.text
	.align	16
	#Procedure 0x4036cf
	.globl sub_4036cf
	.type sub_4036cf, @function
sub_4036cf:

	nop	
.label_188:
	mov	rbp, r13
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_222
	mov	r8d, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	jmp	qword ptr [(rcx * 8) + label_228]
.label_423:
	mov	r14d, edi
	mov	edi, OFFSET FLAT:label_234
	mov	esi, r15d
	mov	ebx, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x80], rax
	mov	edi, OFFSET FLAT:label_92
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebx
	mov	edi, r14d
	mov	qword ptr [rsp + 0x78], rax
.label_424:
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x80]
	jne	.label_244
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_244
	xor	r14d, r14d
	nop	
.label_206:
	cmp	r14, rbp
	jae	.label_255
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], al
.label_255:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_206
.label_244:
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
	jmp	.label_204
.label_416:
	xor	r8d, r8d
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_204
.label_419:
	mov	al, 1
.label_417:
	mov	r12b, 1
.label_420:
	test	r12b, 1
	mov	cl, 1
	je	.label_279
	mov	ecx, eax
.label_279:
	mov	al, cl
.label_418:
	mov	r8d, 2
	test	r12b, 1
	jne	.label_280
	test	rbp, rbp
	je	.label_286
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx], 0x27
.label_286:
	mov	r14d, 1
	jmp	.label_260
.label_280:
	xor	r14d, r14d
.label_260:
	mov	ecx, OFFSET FLAT:label_92
	mov	qword ptr [rsp + 0x58], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x50], rcx
	mov	r13d, eax
.label_183:
	mov	sil, r12b
.label_204:
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
	jmp	.label_174
	.section	.text
	.align	16
	#Procedure 0x403891
	.globl sub_403891
	.type sub_403891, @function
sub_403891:

	nop	word ptr cs:[rax + rax]
.label_176:
	inc	r12
.label_174:
	cmp	r11, -1
	je	.label_208
	cmp	r12, r11
	jne	.label_211
	jmp	.label_214
	.section	.text
	.align	16
	#Procedure 0x4038b3
	.globl sub_4038b3
	.type sub_4038b3, @function
sub_4038b3:

	nop	word ptr cs:[rax + rax]
.label_208:
	mov	rcx, -1
	cmp	byte ptr [r10 + r12], 0
	je	.label_189
.label_211:
	cmp	byte ptr [rsp + 0x37], 0
	je	.label_223
	mov	rax, qword ptr [rsp + 0x50]
	lea	rbx, [r12 + rax]
	cmp	rax, 2
	jb	.label_226
	cmp	r11, -1
	jne	.label_226
	mov	r15d, edi
	mov	rdi, r10
	mov	r13d, r9d
	call	strlen
	mov	r9d, r13d
	mov	r8, qword ptr [rsp + 0x38]
	mov	edi, r15d
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_226:
	cmp	rbx, r11
	jbe	.label_238
.label_223:
	xor	esi, esi
.label_262:
	movzx	r15d, byte ptr [r10 + r12]
	cmp	r15, 0x7e
	ja	.label_239
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_245]
.label_530:
	test	r12, r12
	jne	.label_198
	jmp	.label_249
	.section	.text
	.align	16
	#Procedure 0x403946
	.globl sub_403946
	.type sub_403946, @function
sub_403946:

	nop	word ptr cs:[rax + rax]
.label_238:
	mov	r13d, r9d
	mov	r15d, edi
	mov	rbx, r11
	lea	rdi, [r10 + r12]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	rdx, qword ptr [rsp + 0x50]
	call	memcmp
	test	eax, eax
	sete	sil
	jne	.label_258
	cmp	byte ptr [rsp + 0xf], 0
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	je	.label_262
	jmp	.label_194
.label_258:
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	jmp	.label_262
.label_534:
	xor	eax, eax
	cmp	r11, -1
	je	.label_276
	test	r12, r12
	jne	.label_278
	cmp	r11, 1
	je	.label_249
	xor	r13d, r13d
	jmp	.label_173
.label_523:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_282
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_194
	cmp	r8d, 2
	jne	.label_287
	mov	eax, r9d
	and	al, 1
	jne	.label_287
	cmp	r14, rbp
	jae	.label_289
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_289:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_169
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_169:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_177
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_177:
	add	r14, 3
	mov	r9b, 1
.label_287:
	mov	rcx, r14
	cmp	rcx, rbp
	jae	.label_181
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + rcx], 0x5c
.label_181:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r8d, 2
	je	.label_193
	lea	rdx, [r12 + 1]
	cmp	rdx, r11
	jae	.label_193
	mov	dl, byte ptr [r10 + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_193
	cmp	r14, rbp
	jae	.label_269
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x30
.label_269:
	lea	rdx, [rcx + 2]
	cmp	rdx, rbp
	jae	.label_227
	mov	ebx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rdx], 0x30
	mov	esi, ebx
.label_227:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_173
.label_524:
	mov	bl, 0x62
	jmp	.label_209
.label_525:
	mov	cl, 0x74
	jmp	.label_203
.label_526:
	mov	bl, 0x76
	jmp	.label_209
.label_527:
	mov	bl, 0x66
	jmp	.label_209
.label_528:
	mov	cl, 0x72
	jmp	.label_203
.label_531:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa8], rax
	cmp	r8d, 2
	jne	.label_220
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_168
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
	jae	.label_229
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_229:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_242
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x5c
.label_242:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_248
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_248:
	add	r14, 3
	xor	r9d, r9d
.label_220:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_173
.label_532:
	mov	r15b, 0x3f
	cmp	r8d, 5
	je	.label_251
	cmp	r8d, 2
	jne	.label_198
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_198
	jmp	.label_168
.label_533:
	cmp	r8d, 2
	jne	.label_265
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_168
	mov	r15b, 0x5c
	xor	eax, eax
	jmp	.label_252
.label_239:
	cmp	qword ptr [rsp + 0xb8], 1
	mov	qword ptr [rsp + 0xa0], rbp
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	mov	dword ptr [rsp + 0x94], esi
	jne	.label_274
	mov	qword ptr [rsp + 0x48], r11
	call	__ctype_b_loc
	mov	r10, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	ebx, 1
	jmp	.label_272
.label_276:
	test	r12, r12
	jne	.label_288
	mov	cl, byte ptr [r10 + 1]
	test	cl, cl
	jne	.label_288
.label_249:
	mov	dl, 1
.label_529:
	cmp	byte ptr [rsp + 0x27], 0
	je	.label_168
	xor	eax, eax
	mov	r13b, dl
.label_173:
	cmp	byte ptr [rsp + 0x36], 0
	je	.label_175
	cmp	qword ptr [rsp + 0x100], 0
	jne	.label_178
	jmp	.label_179
	.section	.text
	.align	16
	#Procedure 0x403c24
	.globl sub_403c24
	.type sub_403c24, @function
sub_403c24:

	nop	word ptr cs:[rax + rax]
.label_175:
	cmp	byte ptr [rsp + 0x35], 0
	je	.label_179
.label_178:
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	ebx, esi
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_250
	mov	rcx, qword ptr [rsp + 0x100]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_190
	.section	.text
	.align	16
	#Procedure 0x403c5d
	.globl sub_403c5d
	.type sub_403c5d, @function
sub_403c5d:

	nop	dword ptr [rax]
.label_179:
	test	sil, sil
.label_190:
	mov	ebx, r15d
	je	.label_191
	jmp	.label_197
.label_250:
	mov	ebx, r15d
	jmp	.label_197
.label_282:
	cmp	dword ptr [rsp + 0x9c], 0
	jne	.label_176
	xor	r15d, r15d
	jmp	.label_198
.label_265:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x32], 0
	je	.label_203
	xor	eax, eax
	mov	r15b, 0x5c
.label_252:
	xor	r13d, r13d
	jmp	.label_191
.label_203:
	cmp	byte ptr [rsp + 0x27], 0
	mov	ebx, ecx
	je	.label_168
.label_209:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1f], 0
	mov	r13d, 0
	je	.label_173
	nop	
.label_197:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_194
	cmp	r8d, 2
	jne	.label_221
	mov	eax, r9d
	and	al, 1
	jne	.label_221
	cmp	r14, rbp
	jae	.label_225
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_225:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_230
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_230:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_233
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_233:
	add	r14, 3
	mov	r9b, 1
.label_221:
	cmp	r14, rbp
	jae	.label_185
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_185:
	inc	r14
	jmp	.label_219
.label_274:
	mov	qword ptr [rsp + 0x70], 0
	cmp	r11, -1
	jne	.label_246
	mov	rdi, r10
	call	strlen
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_246:
	cmp	byte ptr [rsp + 0x31], 0
	mov	qword ptr [rsp + 0x48], r11
	mov	qword ptr [rsp + 0x88], r12
	je	.label_182
	lea	rax, [r10 + r12]
	mov	qword ptr [rsp + 0xb0], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbp, [rsp + 0x70]
.label_247:
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
	je	.label_267
	cmp	rbx, -1
	mov	r10, qword ptr [rsp + 0x28]
	movabs	rsi, 0x20000002b
	je	.label_277
	test	rbx, rbx
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_217
	cmp	rbx, 2
	mov	rbp, qword ptr [rsp + 0xa0]
	jb	.label_284
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax]
.label_205:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_290
	bt	rsi, rdx
	jb	.label_168
.label_290:
	inc	rcx
	cmp	rcx, rbx
	jb	.label_205
.label_284:
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	jne	.label_180
	xor	r13d, r13d
.label_180:
	lea	rbp, [rsp + 0x70]
	mov	r12, qword ptr [rsp + 0x40]
	add	r12, rbx
	mov	rdi, rbp
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_247
	jmp	.label_192
.label_193:
	xor	r13d, r13d
	jmp	.label_173
.label_288:
	mov	r11, -1
	xor	r13d, r13d
	jmp	.label_173
.label_251:
	cmp	dword ptr [rsp + 0x98], 0
	je	.label_198
	lea	rcx, [r12 + 2]
	cmp	rcx, r11
	jae	.label_198
	cmp	byte ptr [r10 + r12 + 1], 0x3f
	jne	.label_198
	movsx	edx, byte ptr [r10 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_207
	mov	ebx, esi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_291
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_216
	cmp	r14, rbp
	jae	.label_218
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x3f
.label_218:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_224
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_224:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_257
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_257:
	lea	rax, [r14 + 3]
	cmp	rax, rbp
	jae	.label_283
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x3f
.label_283:
	add	r14, 4
	xor	eax, eax
	mov	r12, rcx
	mov	r15b, dl
.label_291:
	xor	r13d, r13d
	mov	esi, ebx
	jmp	.label_173
.label_198:
	xor	eax, eax
.label_278:
	xor	r13d, r13d
	jmp	.label_173
.label_182:
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
	je	.label_259
	cmp	rbp, -1
	je	.label_264
	cmp	rbp, -2
	je	.label_267
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	mov	r12, qword ptr [rsp + 0x40]
	jne	.label_271
	xor	r13d, r13d
.label_271:
	add	r12, rbp
	lea	rbx, [rsp + 0x70]
	mov	rdi, rbx
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_275
	jmp	.label_192
.label_267:
	mov	r10, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x40]
	lea	rax, [rsi + r12]
	mov	rdx, qword ptr [rsp + 0x48]
	cmp	rax, rdx
	jae	.label_263
	lea	rax, [r10 + r12]
.label_261:
	cmp	byte ptr [rax + rsi], 0
	je	.label_263
	lea	rcx, [r12 + rsi + 1]
	inc	rsi
	cmp	rcx, rdx
	jb	.label_261
.label_263:
	mov	qword ptr [rsp + 0x40], rsi
.label_277:
	xor	r13d, r13d
	jmp	.label_217
.label_264:
	xor	r13d, r13d
.label_259:
	mov	r10, qword ptr [rsp + 0x28]
.label_217:
	mov	r12, qword ptr [rsp + 0x40]
.label_192:
	mov	rbx, r12
	mov	r12, qword ptr [rsp + 0x88]
.label_272:
	and	r13b, 1
	mov	eax, r13d
	or	al, byte ptr [rsp + 0x33]
	cmp	rbx, 1
	mov	rbp, qword ptr [rsp + 0xa0]
	mov	dil, byte ptr [rsp + 0x1e]
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x60]
	mov	esi, dword ptr [rsp + 0x94]
	ja	.label_172
	test	al, al
	je	.label_172
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_173
.label_172:
	mov	byte ptr [rsp + 0x40], al
	add	rbx, r12
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_187
	.section	.text
	.align	16
	#Procedure 0x404057
	.globl sub_404057
	.type sub_404057, @function
sub_404057:

	nop	word ptr [rax + rax]
.label_241:
	inc	r14
	mov	r15b, byte ptr [r10 + r12 + 1]
	mov	r12, rdx
.label_187:
	cmp	byte ptr [rsp + 0x40], 0
	je	.label_196
	test	sil, 1
	je	.label_213
	cmp	r14, rbp
	jae	.label_200
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x5c
.label_200:
	inc	r14
	xor	esi, esi
	jmp	.label_213
	.section	.text
	.align	16
	#Procedure 0x404095
	.globl sub_404095
	.type sub_404095, @function
sub_404095:

	nop	word ptr cs:[rax + rax]
.label_196:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_194
	cmp	r8d, 2
	jne	.label_212
	mov	eax, r9d
	and	al, 1
	jne	.label_212
	cmp	r14, rbp
	jae	.label_215
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_215:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_236
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x24
.label_236:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_266
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x27
.label_266:
	add	r14, 3
	mov	r9b, 1
.label_212:
	cmp	r14, rbp
	jae	.label_231
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_231:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_171
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_171:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_243
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_243:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_213:
	lea	rdx, [r12 + 1]
	cmp	rbx, rdx
	jbe	.label_191
	test	r9b, 1
	je	.label_253
	mov	rcx, rbx
	mov	ebx, eax
	and	bl, 1
	jne	.label_232
	mov	r8, r12
	mov	r12d, esi
	cmp	r14, rbp
	jae	.label_256
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], 0x27
.label_256:
	lea	rsi, [r14 + 1]
	cmp	rsi, rbp
	jae	.label_268
	mov	rbx, qword ptr [rsp + 0x10]
	mov	byte ptr [rbx + rsi], 0x27
.label_268:
	add	r14, 2
	xor	r9d, r9d
	mov	esi, r12d
	mov	rbx, rcx
	mov	r12, r8
	mov	r8, qword ptr [rsp + 0x38]
	jmp	.label_253
	.section	.text
	.align	16
	#Procedure 0x4041a6
	.globl sub_4041a6
	.type sub_4041a6, @function
sub_4041a6:

	nop	word ptr cs:[rax + rax]
.label_232:
	mov	rbx, rcx
.label_253:
	cmp	r14, rbp
	jae	.label_241
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], r15b
	mov	esi, ecx
	jmp	.label_241
	.section	.text
	.align	16
	#Procedure 0x4041ce
	.globl sub_4041ce
	.type sub_4041ce, @function
sub_4041ce:

	nop	
.label_191:
	test	r9b, 1
	je	.label_281
	and	al, 1
	jne	.label_281
	cmp	r14, rbp
	jae	.label_285
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_285:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_270
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_270:
	add	r14, 2
	xor	r9d, r9d
.label_281:
	mov	ebx, r15d
.label_219:
	cmp	r14, rbp
	jae	.label_170
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], bl
.label_170:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, dil
	mov	edi, r13d
	jmp	.label_176
.label_207:
	xor	r13d, r13d
	jmp	.label_173
	.section	.text
	.align	16
	#Procedure 0x404231
	.globl sub_404231
	.type sub_404231, @function
sub_404231:

	nop	word ptr cs:[rax + rax]
.label_214:
	mov	rcx, r12
.label_189:
	cmp	r8d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_186
	or	al, dl
	jne	.label_186
	mov	r11, rcx
	jmp	.label_194
.label_168:
	mov	eax, 2
.label_210:
	mov	qword ptr [rsp + 0x38], rax
.label_194:
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
.label_273:
	mov	r14, rax
.label_254:
	mov	rax, r14
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_167:
	mov	rdx, qword ptr [rsp + 0x58]
	test	rdx, rdx
	je	.label_240
	cmp	byte ptr [rsp + 0xf], 0
	mov	rcx, qword ptr [rsp + 0x10]
	jne	.label_202
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_202
	inc	rdx
	nop	dword ptr [rax + rax]
.label_237:
	cmp	r14, rbp
	jae	.label_235
	mov	byte ptr [rcx + r14], al
.label_235:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_237
	jmp	.label_202
.label_184:
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
	jmp	.label_273
.label_240:
	mov	rcx, qword ptr [rsp + 0x10]
.label_202:
	cmp	r14, rbp
	jae	.label_254
	mov	byte ptr [rcx + r14], 0
	jmp	.label_254
.label_216:
	mov	eax, 5
	jmp	.label_210
.label_222:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404380

	.globl cl_strtod
	.type cl_strtod, @function
cl_strtod:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x20
	mov	r14, rsi
	mov	rbx, rdi
	lea	rsi, [rsp + 8]
	call	strtod
	mov	r12, qword ptr [rsp + 8]
	cmp	byte ptr [r12], 0
	je	.label_293
	movsd	qword ptr [rsp + 0x10], xmm0
	call	__errno_location
	mov	r15, rax
	mov	ebp, dword ptr [r15]
	lea	rsi, [rsp + 0x18]
	mov	rdi, rbx
	call	c_strtod
	mov	rax, qword ptr [rsp + 0x18]
	cmp	r12, rax
	jae	.label_294
	mov	qword ptr [rsp + 8], rax
	mov	r12, rax
	jmp	.label_293
.label_294:
	mov	dword ptr [r15], ebp
	movsd	xmm0, qword ptr [rsp + 0x10]
.label_293:
	test	r14, r14
	je	.label_292
	mov	qword ptr [r14], r12
.label_292:
	add	rsp, 0x20
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4043f8
	.globl sub_4043f8
	.type sub_4043f8, @function
sub_4043f8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404400

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_295
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_296
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404430
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_30]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_31]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_32]
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
	.align	16
	#Procedure 0x404484
	.globl sub_404484
	.type sub_404484, @function
sub_404484:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404490

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
	je	.label_303
	mov	edx, OFFSET FLAT:label_312
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_298
.label_491:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_299
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
.label_303:
	mov	edx, OFFSET FLAT:label_314
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_298:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_301
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
	mov	esi, OFFSET FLAT:label_315
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_304
	jmp	qword ptr [(r12 * 8) + label_307]
.label_494:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_309
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
	jmp	.label_300
.label_490:
	add	rsp, 8
	jmp	.label_300
.label_304:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_311
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
	jmp	.label_300
.label_499:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_297
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
	jmp	.label_300
.label_498:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_302
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
.label_300:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x4046a4
	.globl sub_4046a4
	.type sub_4046a4, @function
sub_4046a4:

	nop	dword ptr [rax + rax]
.label_492:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_310
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
.label_493:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_308
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
.label_495:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_305
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
	jmp	.label_300
.label_496:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_306
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
	jmp	.label_300
.label_497:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_313
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
	jmp	.label_300
	.section	.text
	.align	16
	#Procedure 0x4047f0

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
	#Procedure 0x404807
	.globl sub_404807
	.type sub_404807, @function
sub_404807:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404810

	.globl settimeout
	.type settimeout, @function
settimeout:
	push	rbx
	sub	rsp, 0x30
	mov	ebx, edi
	movsd	qword ptr [rsp + 8], xmm0
	call	dtotimespec
	xorpd	xmm0, xmm0
	movapd	xmmword ptr [rsp + 0x10], xmm0
	mov	qword ptr [rsp + 0x20], rax
	mov	qword ptr [rsp + 0x28], rdx
	lea	rdx, [rsp]
	xor	edi, edi
	xor	esi, esi
	call	timer_create
	test	eax, eax
	je	.label_317
	test	bl, bl
	je	.label_316
	call	__errno_location
	mov	ebx, dword ptr [rax]
	cmp	ebx, 0x26
	je	.label_316
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_320
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	jmp	.label_316
.label_317:
	mov	rdi, qword ptr [rsp]
	lea	rdx, [rsp + 0x10]
	xor	esi, esi
	xor	ecx, ecx
	call	timer_settime
	test	eax, eax
	je	.label_318
	test	bl, bl
	je	.label_319
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_321
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_319:
	mov	rdi, qword ptr [rsp]
	call	timer_delete
.label_316:
	mov	edi, 0xffffffff
	movsd	xmm1, qword ptr [rsp + 8]
	ucomisd	xmm1, qword ptr [rip + label_322]
	jae	.label_323
	cvttsd2si	rax, xmm1
	mov	ecx, eax
	xorps	xmm0, xmm0
	cvtsi2sd	xmm0, rcx
	xor	edi, edi
	ucomisd	xmm1, xmm0
	seta	dil
	add	edi, eax
.label_323:
	call	alarm
.label_318:
	add	rsp, 0x30
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x404902
	.globl sub_404902
	.type sub_404902, @function
sub_404902:

	nop	word ptr cs:[rax + rax]
.label_324:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404915
	.globl sub_404915
	.type sub_404915, @function
sub_404915:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40491d
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
	je	.label_324
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
	.align	16
	#Procedure 0x404980
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
	je	.label_326
	test	rbx, rbx
	jne	.label_326
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_326:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_327
	test	rax, rax
	je	.label_325
.label_327:
	pop	rbx
	ret	
.label_325:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4049c8
	.globl sub_4049c8
	.type sub_4049c8, @function
sub_4049c8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4049d0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_328
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_329
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_331
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_133
	mov	ecx, OFFSET FLAT:label_332
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_330
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x404a44
	.globl sub_404a44
	.type sub_404a44, @function
sub_404a44:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404a50

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_333
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_335
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_333
.label_335:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_333
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_334
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_334:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_333:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	.section	.text
	.align	16
	#Procedure 0x404ac4
	.globl sub_404ac4
	.type sub_404ac4, @function
sub_404ac4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404ad0
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
	.align	16
	#Procedure 0x404ae9
	.globl sub_404ae9
	.type sub_404ae9, @function
sub_404ae9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404af0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_346
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_348
.label_346:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_348:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_336
	cmp	r10d, 0x29
	jae	.label_345
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_347
.label_345:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_347:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_336
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
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_336
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
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_336
	cmp	r10d, 0x29
	jae	.label_339
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_340
.label_339:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_340:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_336
	cmp	r10d, 0x29
	jae	.label_337
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_338
.label_337:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_338:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_336
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_336
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_336
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_336
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_336:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	16
	#Procedure 0x404cd2
	.globl sub_404cd2
	.type sub_404cd2, @function
sub_404cd2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404ce0

	.globl chld
	.type chld, @function
chld:
	ret	
	.section	.text
	.align	16
	#Procedure 0x404ce1
	.globl sub_404ce1
	.type sub_404ce1, @function
sub_404ce1:

	nop	word ptr cs:[rax + rax]
.label_349:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404cf5
	.globl sub_404cf5
	.type sub_404cf5, @function
sub_404cf5:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404cfb
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_30]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_31]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_32]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_349
	test	rdx, rdx
	je	.label_349
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
	.align	16
	#Procedure 0x404d60
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x404d71
	.globl sub_404d71
	.type sub_404d71, @function
sub_404d71:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404d80
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
	je	.label_350
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
.label_350:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404de1
	.globl sub_404de1
	.type sub_404de1, @function
sub_404de1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404df0

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
	.align	16
	#Procedure 0x404e09
	.globl sub_404e09
	.type sub_404e09, @function
sub_404e09:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404e10

	.globl sig2str
	.type sig2str, @function
sig2str:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r15, rsi
	mov	ebp, edi
	mov	ecx, OFFSET FLAT:numname_table
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_354:
	mov	edx, eax
	cmp	dword ptr [rcx], ebp
	je	.label_357
	lea	esi, [rdx + 1]
	cmp	dword ptr [rcx + 0xc], ebp
	je	.label_355
	lea	esi, [rdx + 2]
	cmp	dword ptr [rcx + 0x18], ebp
	je	.label_355
	add	edx, 3
	cmp	dword ptr [rcx + 0x24], ebp
	mov	rsi, rdx
	je	.label_355
	cmp	dword ptr [rcx + 0x30], ebp
	je	.label_352
	add	rax, 5
	add	rcx, 0x3c
	cmp	eax, 0x23
	jb	.label_354
	call	__libc_current_sigrtmin
	mov	r14d, eax
	call	__libc_current_sigrtmax
	cmp	r14d, ebp
	mov	ebx, 0xffffffff
	jg	.label_351
	cmp	eax, ebp
	jl	.label_351
	mov	ecx, eax
	sub	ecx, r14d
	mov	edx, ecx
	shr	edx, 0x1f
	add	edx, ecx
	sar	edx, 1
	add	edx, r14d
	cmp	edx, ebp
	jge	.label_358
	mov	word ptr [r15 + 4], 0x58
	mov	dword ptr [r15], 0x414d5452
	mov	r14d, eax
	jmp	.label_353
.label_357:
	mov	rsi, rdx
	jmp	.label_355
.label_352:
	add	rax, 4
	mov	rsi, rax
.label_355:
	lea	rax, [rsi + rsi*2]
	lea	rsi, qword ptr [(rax * 4) + label_22]
	mov	rdi, r15
	call	strcpy
	xor	ebx, ebx
.label_351:
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_358:
	mov	word ptr [r15 + 4], 0x4e
	mov	dword ptr [r15], 0x494d5452
.label_353:
	xor	ebx, ebx
	sub	ebp, r14d
	je	.label_351
	add	r15, 5
	xor	ebx, ebx
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_356
	xor	eax, eax
	mov	rdi, r15
	mov	r8d, ebp
	call	__sprintf_chk
	jmp	.label_351
	.section	.text
	.align	16
	#Procedure 0x404f10

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
	je	.label_359
	cmp	r15, -2
	jb	.label_359
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_359
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_359:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x404f66
	.globl sub_404f66
	.type sub_404f66, @function
sub_404f66:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404f70
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x404f7a
	.globl sub_404f7a
	.type sub_404f7a, @function
sub_404f7a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404f80

	.globl parse_duration
	.type parse_duration, @function
parse_duration:
	push	r14
	push	rbx
	sub	rsp, 0x18
	mov	rbx, rdi
	lea	rsi, [rsp + 0x10]
	lea	rdx, [rsp + 8]
	mov	ecx, OFFSET FLAT:cl_strtod
	call	xstrtod
	test	al, al
	jne	.label_368
	call	__errno_location
	cmp	dword ptr [rax], 0x22
	jne	.label_363
.label_368:
	movsd	xmm1, qword ptr [rsp + 8]
	xorpd	xmm0, xmm0
	ucomisd	xmm1, xmm0
	jb	.label_363
	mov	rcx, qword ptr [rsp + 0x10]
	movsx	eax, byte ptr [rcx]
	test	eax, eax
	je	.label_369
	cmp	byte ptr [rcx + 1], 0
	jne	.label_363
.label_369:
	movsd	xmm0, qword ptr [rip + label_365]
	lea	ecx, [rax - 0x64]
	cmp	ecx, 0xf
	ja	.label_366
	jmp	qword ptr [(rcx * 8) + label_370]
.label_366:
	test	eax, eax
	je	.label_361
.label_363:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_364
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	call	error
	mov	edi, 0x7d
	call	usage
.label_484:
	movsd	xmm0, qword ptr [rip + label_360]
.label_361:
	mulsd	xmm0, xmm1
	add	rsp, 0x18
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x405034
	.globl sub_405034
	.type sub_405034, @function
sub_405034:

	nop	dword ptr [rax + rax]
.label_483:
	movsd	xmm0, qword ptr [rip + label_367]
	jmp	.label_361
.label_482:
	movsd	xmm0, qword ptr [rip + label_362]
	jmp	.label_361
	.section	.text
	.align	16
	#Procedure 0x405050
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	.section	.text
	.align	16
	#Procedure 0x405058
	.globl sub_405058
	.type sub_405058, @function
sub_405058:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405060

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
	je	.label_372
	test	r15, r15
	je	.label_371
.label_372:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_371:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4050a2
	.globl sub_4050a2
	.type sub_4050a2, @function
sub_4050a2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4050b0
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
	#Procedure 0x4050e3
	.globl sub_4050e3
	.type sub_4050e3, @function
sub_4050e3:

	nop	word ptr cs:[rax + rax]
.label_373:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4050f5
	.globl sub_4050f5
	.type sub_4050f5, @function
sub_4050f5:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4050fb

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_374
	test	rax, rax
	je	.label_373
.label_374:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x405110
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
	#Procedure 0x405123
	.globl sub_405123
	.type sub_405123, @function
sub_405123:

	nop	word ptr cs:[rax + rax]
.label_375:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405135
	.globl sub_405135
	.type sub_405135, @function
sub_405135:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405139
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_30]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_31]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_32]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_375
	test	rsi, rsi
	je	.label_375
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
	.align	16
	#Procedure 0x4051a0
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
	#Procedure 0x4051d6
	.globl sub_4051d6
	.type sub_4051d6, @function
sub_4051d6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4051e0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_379
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_377
	cmp	dword ptr [rbp], 0x20
	jne	.label_377
.label_379:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_381
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_377:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_376
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_380
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_296
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_380:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_378
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	word ptr cs:[rax + rax]
.label_381:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	.section	.text
	.align	16
	#Procedure 0x4052a0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_383
	cmp	byte ptr [rax], 0x43
	jne	.label_385
	cmp	byte ptr [rax + 1], 0
	je	.label_382
.label_385:
	mov	esi, OFFSET FLAT:label_384
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_383
.label_382:
	xor	ebx, ebx
.label_383:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4052d1
	.globl sub_4052d1
	.type sub_4052d1, @function
sub_4052d1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4052e0
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
	je	.label_386
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
.label_386:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405375
	.globl sub_405375
	.type sub_405375, @function
sub_405375:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405380
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_387:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_387
	jmp	version_etc_arn
	.section	.text
	.align	16
	#Procedure 0x4053a1
	.globl sub_4053a1
	.type sub_4053a1, @function
sub_4053a1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4053b0
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
	je	.label_389
	test	r14, r14
	je	.label_388
.label_389:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_388:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4053e6
	.globl sub_4053e6
	.type sub_4053e6, @function
sub_4053e6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4053f0
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
	.align	16
	#Procedure 0x405408
	.globl sub_405408
	.type sub_405408, @function
sub_405408:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405410

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_390
	test	rsi, rsi
	mov	ecx, 1
	je	.label_391
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_391
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_390:
	mov	ecx, 1
.label_391:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	16
	#Procedure 0x40545b
	.globl sub_40545b
	.type sub_40545b, @function
sub_40545b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405460
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
	#Procedure 0x40546f
	.globl sub_40546f
	.type sub_40546f, @function
sub_40546f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x405470

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_30]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_31]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_32]
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
	.align	16
	#Procedure 0x4054c5
	.globl sub_4054c5
	.type sub_4054c5, @function
sub_4054c5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4054d0

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_396
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_407
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
	mov	esi, OFFSET FLAT:label_398
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_400
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_399
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_409
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_406
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_401
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_395
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_405
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_402
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_133
	mov	ecx, OFFSET FLAT:label_332
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_392
	mov	esi, OFFSET FLAT:label_394
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_392
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_393
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_392:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_403
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_332
	mov	ecx, OFFSET FLAT:label_132
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_404
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_132
	mov	ecx, OFFSET FLAT:label_408
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_396:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_397
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
	.align	16
	#Procedure 0x40570e
	.globl sub_40570e
	.type sub_40570e, @function
sub_40570e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x405710
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_410
	test	rdx, rdx
	je	.label_410
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_410:
	push	rax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40573b
	.globl sub_40573b
	.type sub_40573b, @function
sub_40573b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4057a5
	.globl sub_4057a5
	.type sub_4057a5, @function
sub_4057a5:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4057b2
	.globl sub_4057b2
	.type sub_4057b2, @function
sub_4057b2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4057d6
	.globl sub_4057d6
	.type sub_4057d6, @function
sub_4057d6:

	nop	word ptr cs:[rax + rax]
