	.section	.text
	.align	16
	#Procedure 0x401599
	.globl sub_401599
	.type sub_401599, @function
sub_401599:

	hlt	
	.section	.text
	.align	16
	#Procedure 0x40159a
	.globl sub_40159a
	.type sub_40159a, @function
sub_40159a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4015d2
	.globl sub_4015d2
	.type sub_4015d2, @function
sub_4015d2:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40161a
	.globl sub_40161a
	.type sub_40161a, @function
sub_40161a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40163c
	.globl sub_40163c
	.type sub_40163c, @function
sub_40163c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40164d
	.globl sub_40164d
	.type sub_40164d, @function
sub_40164d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401666
	.globl sub_401666
	.type sub_401666, @function
sub_401666:

	nop	word ptr cs:[rax + rax]
.label_9:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x401675
	.globl sub_401675
	.type sub_401675, @function
sub_401675:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40167b
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_10
	test	rax, rax
	je	.label_9
.label_10:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x401690

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
	je	.label_11
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
.label_11:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x401725
	.globl sub_401725
	.type sub_401725, @function
sub_401725:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401730

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
	#Procedure 0x4017b3
	.globl sub_4017b3
	.type sub_4017b3, @function
sub_4017b3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4017c0

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
	jne	.label_14
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_21
	cmp	ecx, 0x55
	jne	.label_13
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_13
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_13
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_13
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_13
	cmp	byte ptr [rax + 5], 0
	jne	.label_13
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_18
	mov	eax, OFFSET FLAT:label_19
	jmp	.label_20
.label_21:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_13
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_13
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_13
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_13
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_13
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_13
	cmp	byte ptr [rax + 7], 0
	je	.label_15
.label_13:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_16
	mov	eax, OFFSET FLAT:label_17
.label_20:
	cmove	rax, rcx
.label_14:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_15:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_22
	mov	eax, OFFSET FLAT:label_23
	jmp	.label_20
	.section	.text
	.align	16
	#Procedure 0x401885
	.globl sub_401885
	.type sub_401885, @function
sub_401885:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401890

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_24
	test	rbx, rbx
	jne	.label_24
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_24:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_26
	test	rax, rax
	je	.label_25
.label_26:
	pop	rbx
	ret	
.label_25:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4018c0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_27
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_28
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_30
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_31
	mov	ecx, OFFSET FLAT:label_32
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_29
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x401934
	.globl sub_401934
	.type sub_401934, @function
sub_401934:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401940
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x40194e
	.globl sub_40194e
	.type sub_40194e, @function
sub_40194e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401950

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
	js	.label_36
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_39
	cmp	r12d, 0x7fffffff
	je	.label_34
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
	jne	.label_37
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_37:
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
.label_39:
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
	jbe	.label_35
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_38
.label_35:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_33
	mov	rdi, r14
	call	free
.label_33:
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
.label_38:
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
.label_36:
	call	abort
.label_34:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x401b0d
	.globl sub_401b0d
	.type sub_401b0d, @function
sub_401b0d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401b10
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
	#Procedure 0x401b43
	.globl sub_401b43
	.type sub_401b43, @function
sub_401b43:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401b50

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_43
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_41
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_40
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_41
	mov	esi, OFFSET FLAT:label_45
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_42
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_42:
	mov	rbx, r14
.label_41:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_43:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_44
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	16
	#Procedure 0x401bf1
	.globl sub_401bf1
	.type sub_401bf1, @function
sub_401bf1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401c00

	.globl get_line
	.type get_line, @function
get_line:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r13d, esi
	mov	r14, rdi
	mov	rax, qword ptr [rip + word_limit]
	mov	r15d, OFFSET FLAT:wptr
	nop	word ptr cs:[rax + rax]
.label_72:
	mov	rcx, qword ptr [rip + wptr]
	mov	qword ptr [rax], rcx
	nop	word ptr [rax + rax]
.label_87:
	mov	rax, qword ptr [rip + wptr]
	cmp	rax, r15
	jne	.label_59
	cmp	byte ptr [rip + split],  1
	je	.label_62
	cmp	byte ptr [rip + crown],  1
	jne	.label_63
	mov	eax, dword ptr [rip + in_column]
	jmp	.label_67
.label_63:
	cmp	byte ptr [rip + tagged],  1
	jne	.label_62
	mov	eax, dword ptr [rip + in_column]
	cmp	eax, dword ptr [rip + first_indent]
	jne	.label_67
	cmp	dword ptr [rip + other_indent],  eax
	jne	.label_70
	xor	ecx, ecx
	test	eax, eax
	sete	cl
	lea	eax, [rcx + rcx*2]
	jmp	.label_67
	.section	.text
	.align	16
	#Procedure 0x401c91
	.globl sub_401c91
	.type sub_401c91, @function
sub_401c91:

	nop	word ptr cs:[rax + rax]
.label_62:
	mov	eax, dword ptr [rip + first_indent]
.label_67:
	mov	dword ptr [rip + other_indent],  eax
.label_70:
	call	flush_paragraph
	mov	rax, qword ptr [rip + wptr]
.label_59:
	lea	rcx, [rax + 1]
	mov	qword ptr [rip + wptr],  rcx
	mov	byte ptr [rax], r13b
	mov	rax, qword ptr [r14 + 8]
	cmp	rax, qword ptr [r14 + 0x10]
	jae	.label_77
	lea	rcx, [rax + 1]
	mov	qword ptr [r14 + 8], rcx
	movzx	r13d, byte ptr [rax]
.label_92:
	movsxd	rbp, r13d
	call	__ctype_b_loc
	mov	rbx, rax
	mov	rax, qword ptr [rbx]
	test	byte ptr [rax + rbp*2 + 1], 0x20
	je	.label_87
	jmp	.label_90
.label_77:
	mov	rdi, r14
	call	__uflow
	mov	r13d, eax
	cmp	r13d, -1
	jne	.label_92
	mov	r13d, 0xffffffff
	call	__ctype_b_loc
	mov	rbx, rax
	nop	word ptr cs:[rax + rax]
.label_90:
	mov	rcx, qword ptr [rip + wptr]
	mov	rax, qword ptr [rip + word_limit]
	mov	rbp, qword ptr [rax]
	sub	rcx, rbp
	mov	qword ptr [rsp + 0x10], rcx
	mov	dword ptr [rax + 8], ecx
	mov	r15, rax
	mov	eax, dword ptr [rip + in_column]
	add	eax, ecx
	mov	dword ptr [rsp + 4], eax
	mov	dword ptr [rip + in_column],  eax
	mov	rax, rcx
	shl	rax, 0x20
	movabs	rcx, 0xffffffff00000000
	add	rax, rcx
	sar	rax, 0x20
	lea	r12, [rbp + rax]
	movsx	esi, byte ptr [rbp]
	movzx	eax, byte ptr [rbp + rax]
	mov	qword ptr [rsp + 8], rax
	mov	edi, OFFSET FLAT:label_51
	mov	edx, 6
	call	memchr
	test	rax, rax
	setne	al
	mov	rcx, r15
	mov	r15b, byte ptr [rcx + 0x10]
	and	r15b, 0xfe
	or	r15b, al
	mov	byte ptr [rcx + 0x10], r15b
	mov	rax, qword ptr [rbx]
	mov	rbx, rcx
	mov	rcx, qword ptr [rsp + 8]
	mov	al, byte ptr [rax + rcx*2]
	and	al, 4
	and	r15b, 0xfb
	or	r15b, al
	mov	byte ptr [rbx + 0x10], r15b
	mov	rax, qword ptr [rsp + 0x10]
	cmp	eax, 2
	jl	.label_64
	nop	dword ptr [rax + rax]
.label_88:
	movsx	esi, byte ptr [r12]
	mov	edi, OFFSET FLAT:label_86
	mov	edx, 5
	call	memchr
	test	rax, rax
	je	.label_64
	dec	r12
	cmp	rbp, r12
	jb	.label_88
.label_64:
	movsx	rax, byte ptr [r12]
	mov	eax, eax
	cmp	rax, 0x40
	sbb	cl, cl
	movabs	rdx, 0x8000400200000001
	bt	rdx, rax
	sbb	al, al
	and	al, cl
	and	al, 1
	add	al, al
	and	r15b, 0xfd
	or	r15b, al
	mov	byte ptr [rbx + 0x10], r15b
	mov	r15d, OFFSET FLAT:wptr
	jmp	.label_73
	.section	.text
	.align	16
	#Procedure 0x401e27
	.globl sub_401e27
	.type sub_401e27, @function
sub_401e27:

	nop	word ptr [rax + rax]
.label_89:
	lea	rcx, [rax + 1]
	mov	qword ptr [r14 + 8], rcx
	movzx	r13d, byte ptr [rax]
.label_73:
	cmp	r13d, 9
	je	.label_57
	cmp	r13d, 0x20
	jne	.label_60
	mov	eax, dword ptr [rip + in_column]
	inc	eax
	jmp	.label_61
	.section	.text
	.align	16
	#Procedure 0x401e52
	.globl sub_401e52
	.type sub_401e52, @function
sub_401e52:

	nop	word ptr cs:[rax + rax]
.label_57:
	mov	byte ptr [rip + tabs],  1
	mov	ecx, dword ptr [rip + in_column]
	mov	eax, ecx
	sar	eax, 0x1f
	shr	eax, 0x1d
	add	eax, ecx
	and	eax, 0xfffffff8
	add	eax, 8
.label_61:
	mov	dword ptr [rip + in_column],  eax
	mov	rax, qword ptr [r14 + 8]
	cmp	rax, qword ptr [r14 + 0x10]
	jb	.label_89
	mov	rdi, r14
	call	__uflow
	mov	r13d, eax
	jmp	.label_73
	.section	.text
	.align	16
	#Procedure 0x401e9a
	.globl sub_401e9a
	.type sub_401e9a, @function
sub_401e9a:

	nop	word ptr [rax + rax]
.label_60:
	mov	ecx, dword ptr [rip + in_column]
	mov	esi, ecx
	sub	esi, dword ptr [rsp + 4]
	mov	rax, qword ptr [rip + word_limit]
	mov	dword ptr [rax + 0xc], esi
	cmp	r13d, -1
	mov	dl, byte ptr [rax + 0x10]
	je	.label_80
	test	dl, 2
	jne	.label_79
	xor	esi, esi
	jmp	.label_81
	.section	.text
	.align	16
	#Procedure 0x401ec8
	.globl sub_401ec8
	.type sub_401ec8, @function
sub_401ec8:

	nop	dword ptr [rax + rax]
.label_79:
	cmp	r13d, 0xa
	jne	.label_66
.label_80:
	or	dl, 8
	mov	byte ptr [rax + 0x10], dl
	jmp	.label_83
.label_66:
	cmp	esi, 1
	setg	sil
.label_81:
	shl	sil, 3
	and	dl, 0xf7
	or	dl, sil
	mov	byte ptr [rax + 0x10], dl
	cmp	r13d, 0xa
	je	.label_83
	cmp	byte ptr [rip + uniform],  1
	jne	.label_91
	nop	word ptr cs:[rax + rax]
.label_83:
	and	dl, 8
	movzx	edx, dl
	shr	edx, 3
	inc	edx
	mov	dword ptr [rax + 0xc], edx
.label_91:
	mov	edx, OFFSET FLAT:label_49
	cmp	rax, rdx
	jne	.label_50
	cmp	byte ptr [rip + split],  1
	jne	.label_53
	mov	eax, dword ptr [rip + first_indent]
.label_68:
	mov	dword ptr [rip + other_indent],  eax
	jmp	.label_56
.label_53:
	cmp	byte ptr [rip + crown],  1
	je	.label_58
	mov	eax, dword ptr [rip + first_indent]
	cmp	byte ptr [rip + tagged],  1
	jne	.label_68
	cmp	ecx, eax
	jne	.label_58
	cmp	dword ptr [rip + other_indent],  ecx
	jne	.label_56
	xor	eax, eax
	test	ecx, ecx
	sete	al
	lea	eax, [rax + rax*2]
	jmp	.label_68
.label_58:
	mov	dword ptr [rip + other_indent],  ecx
.label_56:
	call	flush_paragraph
	mov	rax, qword ptr [rip + word_limit]
.label_50:
	add	rax, 0x28
	mov	qword ptr [rip + word_limit],  rax
	cmp	r13d, 0xa
	je	.label_71
	cmp	r13d, -1
	jne	.label_72
.label_71:
	mov	dword ptr [rip + in_column],  0
	jmp	.label_74
	.section	.text
	.align	16
	#Procedure 0x401fa8
	.globl sub_401fa8
	.type sub_401fa8, @function
sub_401fa8:

	nop	dword ptr [rax + rax]
.label_84:
	mov	eax, dword ptr [rip + in_column]
	inc	eax
	mov	dword ptr [rip + in_column],  eax
.label_74:
	mov	rax, qword ptr [r14 + 8]
	cmp	rax, qword ptr [r14 + 0x10]
	jae	.label_78
	lea	rcx, [rax + 1]
	mov	qword ptr [r14 + 8], rcx
	movzx	eax, byte ptr [rax]
.label_46:
	cmp	eax, 9
	je	.label_82
	cmp	eax, 0x20
	je	.label_84
	jmp	.label_54
	.section	.text
	.align	16
	#Procedure 0x401fdf
	.globl sub_401fdf
	.type sub_401fdf, @function
sub_401fdf:

	nop	
.label_82:
	mov	byte ptr [rip + tabs],  1
	mov	ecx, dword ptr [rip + in_column]
	mov	eax, ecx
	sar	eax, 0x1f
	shr	eax, 0x1d
	add	eax, ecx
	and	eax, 0xfffffff8
	add	eax, 8
	mov	dword ptr [rip + in_column],  eax
	jmp	.label_74
.label_78:
	mov	rdi, r14
	call	__uflow
	jmp	.label_46
.label_54:
	cmp	dword ptr [rip + prefix_length],  0
	je	.label_47
	mov	ecx, dword ptr [rip + in_column]
	mov	dword ptr [rip + next_prefix_indent],  ecx
	mov	rbx, qword ptr [rip + prefix]
	mov	cl, byte ptr [rbx]
	test	cl, cl
	je	.label_48
	inc	rbx
	jmp	.label_52
.label_47:
	mov	ecx, dword ptr [rip + prefix_lead_space]
	mov	edx, dword ptr [rip + in_column]
	cmp	ecx, edx
	cmovle	edx, ecx
	mov	dword ptr [rip + next_prefix_indent],  edx
	jmp	.label_55
.label_69:
	mov	rdi, r14
	call	__uflow
	jmp	.label_65
	.section	.text
	.align	16
	#Procedure 0x40205c
	.globl sub_40205c
	.type sub_40205c, @function
sub_40205c:

	nop	dword ptr [rax]
.label_52:
	movzx	ecx, cl
	cmp	eax, ecx
	jne	.label_55
	inc	dword ptr [rip + in_column]
	mov	rax, qword ptr [r14 + 8]
	cmp	rax, qword ptr [r14 + 0x10]
	jae	.label_69
	lea	rcx, [rax + 1]
	mov	qword ptr [r14 + 8], rcx
	movzx	eax, byte ptr [rax]
.label_65:
	movzx	ecx, byte ptr [rbx]
	inc	rbx
	test	cl, cl
	jne	.label_52
	jmp	.label_48
	.section	.text
	.align	16
	#Procedure 0x402092
	.globl sub_402092
	.type sub_402092, @function
sub_402092:

	nop	word ptr cs:[rax + rax]
.label_85:
	lea	rcx, [rax + 1]
	mov	qword ptr [r14 + 8], rcx
	movzx	eax, byte ptr [rax]
.label_48:
	cmp	eax, 9
	je	.label_75
	cmp	eax, 0x20
	jne	.label_55
	mov	eax, dword ptr [rip + in_column]
	inc	eax
	jmp	.label_76
	.section	.text
	.align	16
	#Procedure 0x4020bf
	.globl sub_4020bf
	.type sub_4020bf, @function
sub_4020bf:

	nop	
.label_75:
	mov	byte ptr [rip + tabs],  1
	mov	ecx, dword ptr [rip + in_column]
	mov	eax, ecx
	sar	eax, 0x1f
	shr	eax, 0x1d
	add	eax, ecx
	and	eax, 0xfffffff8
	add	eax, 8
.label_76:
	mov	dword ptr [rip + in_column],  eax
	mov	rax, qword ptr [r14 + 8]
	cmp	rax, qword ptr [r14 + 0x10]
	jb	.label_85
	mov	rdi, r14
	call	__uflow
	jmp	.label_48
.label_55:
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
	#Procedure 0x402106
	.globl sub_402106
	.type sub_402106, @function
sub_402106:

	nop	word ptr cs:[rax + rax]
.label_93:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402115
	.globl sub_402115
	.type sub_402115, @function
sub_402115:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40211f
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_93
	call	rpl_calloc
	test	rax, rax
	je	.label_93
	pop	rcx
	ret	
.label_94:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402145
	.globl sub_402145
	.type sub_402145, @function
sub_402145:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402147
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_95]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_96]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_97]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_94
	test	rdx, rdx
	je	.label_94
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
	.align	16
	#Procedure 0x4021b0

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r12, rsi
	mov	r13d, edi
	mov	rdi, qword ptr [r12]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_106
	call	setlocale
	mov	edi, OFFSET FLAT:label_125
	mov	esi, OFFSET FLAT:label_126
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_125
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	byte ptr [rip + uniform],  0
	mov	byte ptr [rip + split],  0
	mov	byte ptr [rip + tagged],  0
	mov	byte ptr [rip + crown],  0
	mov	dword ptr [rip + max_width],  0x4b
	mov	qword ptr [rip + prefix], OFFSET FLAT:label_106
	mov	dword ptr [rip + prefix_full_length],  0
	mov	dword ptr [rip + prefix_lead_space],  0
	mov	dword ptr [rip + prefix_length],  0
	xor	r14d, r14d
	cmp	r13d, 2
	jl	.label_120
	mov	rax, qword ptr [r12 + 8]
	xor	r14d, r14d
	cmp	byte ptr [rax], 0x2d
	jne	.label_120
	movsx	ecx, byte ptr [rax + 1]
	add	ecx, -0x30
	xor	r14d, r14d
	cmp	ecx, 9
	ja	.label_120
	inc	rax
	mov	rcx, qword ptr [r12]
	mov	qword ptr [r12 + 8], rcx
	lea	r12, [r12 + 8]
	dec	r13d
	mov	r14, rax
.label_120:
	xor	r15d, r15d
	jmp	.label_102
.label_118:
	mov	byte ptr [rax], 0
	sub	eax, ebx
	mov	dword ptr [rip + prefix_length],  eax
	nop	word ptr [rax + rax]
.label_102:
	mov	edx, OFFSET FLAT:label_109
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	mov	edi, r13d
	mov	rsi, r12
	call	getopt_long
	mov	ebx, eax
	cmp	ebx, 0x62
	jle	.label_115
	lea	eax, [rbx - 0x63]
	cmp	eax, 0x14
	ja	.label_105
	jmp	qword ptr [(rax * 8) + label_122]
.label_602:
	mov	byte ptr [rip + crown],  1
	jmp	.label_102
.label_603:
	mov	r15, qword ptr [rip + optarg]
	jmp	.label_102
.label_604:
	mov	rbx, qword ptr [rip + optarg]
	mov	dword ptr [rip + prefix_lead_space],  0
	cmp	byte ptr [rbx], 0x20
	jne	.label_121
	xor	eax, eax
.label_98:
	cmp	byte ptr [rbx + rax + 1], 0x20
	lea	rax, [rax + 1]
	je	.label_98
	mov	dword ptr [rip + prefix_lead_space],  eax
	add	rbx, rax
.label_121:
	mov	qword ptr [rip + prefix],  rbx
	mov	rdi, rbx
	call	strlen
	mov	dword ptr [rip + prefix_full_length],  eax
	movsxd	rcx, eax
	add	rcx, rbx
	nop	
.label_116:
	mov	rax, rcx
	cmp	rax, rbx
	jbe	.label_118
	lea	rcx, [rax - 1]
	cmp	byte ptr [rax - 1], 0x20
	je	.label_116
	jmp	.label_118
.label_605:
	mov	byte ptr [rip + split],  1
	jmp	.label_102
.label_606:
	mov	byte ptr [rip + tagged],  1
	jmp	.label_102
.label_607:
	mov	byte ptr [rip + uniform],  1
	jmp	.label_102
.label_608:
	mov	r14, qword ptr [rip + optarg]
	jmp	.label_102
.label_115:
	cmp	ebx, -1
	jne	.label_132
	test	r14, r14
	je	.label_101
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_103
	mov	edx, 5
	call	dcgettext
	mov	esi, 0
	mov	edx, 0x9c4
	mov	ecx, OFFSET FLAT:label_106
	xor	r9d, r9d
	mov	rdi, r14
	mov	r8, rax
	call	xdectoumax
	mov	dword ptr [rip + max_width],  eax
	jmp	.label_114
.label_101:
	mov	eax, dword ptr [rip + max_width]
.label_114:
	test	r15, r15
	je	.label_119
	movsxd	rbx, eax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_103
	mov	edx, 5
	call	dcgettext
	xor	esi, esi
	mov	ecx, OFFSET FLAT:label_106
	xor	r9d, r9d
	mov	rdi, r15
	mov	rdx, rbx
	mov	r8, rax
	call	xdectoumax
	mov	dword ptr [rip + goal_width],  eax
	test	r14, r14
	jne	.label_99
	add	eax, 0xa
	mov	dword ptr [rip + max_width],  eax
	jmp	.label_99
.label_119:
	imul	eax, eax, 0xbb
	cdqe	
	imul	rax, rax, 0x51eb851f
	mov	rcx, rax
	shr	rcx, 0x3f
	sar	rax, 0x26
	add	eax, ecx
	mov	dword ptr [rip + goal_width],  eax
.label_99:
	mov	eax, dword ptr [rip + optind]
	cmp	eax, r13d
	jne	.label_110
	mov	rdi, qword ptr [rip + stdin]
	call	fmt
	mov	r15b, 1
	jmp	.label_111
.label_110:
	mov	r15b, 1
	jge	.label_111
	mov	r15b, 1
	nop	dword ptr [rax]
.label_117:
	cdqe	
	mov	rbx, qword ptr [r12 + rax*8]
	cmp	byte ptr [rbx], 0x2d
	jne	.label_127
	cmp	byte ptr [rbx + 1], 0
	je	.label_128
.label_127:
	mov	esi, OFFSET FLAT:label_131
	mov	rdi, rbx
	call	fopen
	mov	rbp, rax
	test	rbp, rbp
	je	.label_100
	mov	rdi, rbp
	call	fmt
	mov	rdi, rbp
	call	rpl_fclose
	cmp	eax, -1
	jne	.label_107
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbx
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_112
	xor	eax, eax
	mov	esi, ebp
	jmp	.label_113
	.section	.text
	.align	16
	#Procedure 0x4024cc
	.globl sub_4024cc
	.type sub_4024cc, @function
sub_4024cc:

	nop	dword ptr [rax]
.label_100:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_124
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbp
.label_113:
	call	error
	jmp	.label_107
.label_128:
	mov	rdi, qword ptr [rip + stdin]
	call	fmt
	nop	dword ptr [rax]
.label_107:
	mov	eax, dword ptr [rip + optind]
	inc	eax
	mov	dword ptr [rip + optind],  eax
	cmp	eax, r13d
	jl	.label_117
.label_111:
	not	r15b
	and	r15b, 1
	movzx	eax, r15b
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_132:
	cmp	ebx, 0xffffff7d
	je	.label_123
	cmp	ebx, 0xffffff7e
	jne	.label_105
	xor	edi, edi
	call	usage
.label_123:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	esi, OFFSET FLAT:label_129
	mov	edx, OFFSET FLAT:label_31
	mov	r8d, OFFSET FLAT:label_130
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_105:
	lea	eax, [rbx - 0x30]
	cmp	eax, 9
	ja	.label_104
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_108
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	ecx, ebx
	call	error
.label_104:
	mov	edi, 1
	call	usage
	.section	.text
	.align	16
	#Procedure 0x4025cd
	.globl sub_4025cd
	.type sub_4025cd, @function
sub_4025cd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4025d0
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
	#Procedure 0x402645
	.globl sub_402645
	.type sub_402645, @function
sub_402645:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402650

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
	.align	16
	#Procedure 0x40269b
	.globl sub_40269b
	.type sub_40269b, @function
sub_40269b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4026a0
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
	#Procedure 0x4026af
	.globl sub_4026af
	.type sub_4026af, @function
sub_4026af:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4026b0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_135:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_135
	jmp	version_etc_arn
	.section	.text
	.align	16
	#Procedure 0x4026d1
	.globl sub_4026d1
	.type sub_4026d1, @function
sub_4026d1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4026e0
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
	#Procedure 0x4027a1
	.globl sub_4027a1
	.type sub_4027a1, @function
sub_4027a1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4027b0
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
	je	.label_136
	mov	qword ptr [rax], rbx
.label_136:
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
	#Procedure 0x40289c
	.globl sub_40289c
	.type sub_40289c, @function
sub_40289c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4028a0
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_95]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_96]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_97]
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
	#Procedure 0x40290e
	.globl sub_40290e
	.type sub_40290e, @function
sub_40290e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402910
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_95]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_96]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_97]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_137
	test	rsi, rsi
	je	.label_137
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_137:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402980
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
	#Procedure 0x402998
	.globl sub_402998
	.type sub_402998, @function
sub_402998:

	nop	dword ptr [rax + rax]
.label_144:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_138
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
	#Procedure 0x4029d8
	.globl sub_4029d8
	.type sub_4029d8, @function
sub_4029d8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4029dd

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_144
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_146
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_153
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_150
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_154
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_147
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_148
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_149
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_141
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_151
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_31
	mov	ecx, OFFSET FLAT:label_32
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_139
	mov	esi, OFFSET FLAT:label_143
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_139
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_142
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_139:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_152
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_32
	mov	ecx, OFFSET FLAT:label_129
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_140
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_129
	mov	ecx, OFFSET FLAT:label_145
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
	.section	.text
	.align	16
	#Procedure 0x402bc0
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
	#Procedure 0x402bcf
	.globl sub_402bcf
	.type sub_402bcf, @function
sub_402bcf:

	nop	
.label_158:
	call	xalloc_die
.label_156:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_158
	mov	qword ptr [rsi], rbx
.label_155:
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
	.align	16
	#Procedure 0x402c02
	.globl sub_402c02
	.type sub_402c02, @function
sub_402c02:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402c0e
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
	jne	.label_155
	call	free
	xor	eax, eax
	jmp	.label_157
	.section	.text
	.align	16
	#Procedure 0x402c40

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
	jmp	.label_201
	.section	.text
	.align	16
	#Procedure 0x402cef
	.globl sub_402cef
	.type sub_402cef, @function
sub_402cef:

	nop	
.label_239:
	cmp	r8d, 2
	setne	al
	cmp	byte ptr [rsp + 0xf], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa8]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x34]
	mov	rsi, qword ptr [rsp + 0xc0]
	je	.label_235
	or	al, dl
	jne	.label_235
	test	dil, 1
	jne	.label_238
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_235
	test	rbp, rbp
	mov	r15d, r8d
	mov	al, bl
	mov	qword ptr [rsp + 0x48], rcx
	mov	r12d, esi
	mov	r13, qword ptr [rsp + 0x68]
	je	.label_201
	jmp	.label_235
.label_620:
	mov	r8d, 5
	test	r12b, 1
	jne	.label_244
	test	rbp, rbp
	je	.label_181
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax], 0x22
.label_181:
	mov	r14d, 1
	jmp	.label_248
.label_621:
	mov	r13b, 1
	mov	r8d, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_16
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	sil, 1
	jmp	.label_197
.label_244:
	xor	r14d, r14d
.label_248:
	mov	eax, OFFSET FLAT:label_16
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	r13b, 1
	jmp	.label_273
	.section	.text
	.align	16
	#Procedure 0x402dbf
	.globl sub_402dbf
	.type sub_402dbf, @function
sub_402dbf:

	nop	
.label_201:
	mov	rbp, r13
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_266
	mov	r8d, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	jmp	qword ptr [(rcx * 8) + label_174]
.label_622:
	mov	r14d, edi
	mov	edi, OFFSET FLAT:label_280
	mov	esi, r15d
	mov	ebx, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x80], rax
	mov	edi, OFFSET FLAT:label_17
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebx
	mov	edi, r14d
	mov	qword ptr [rsp + 0x78], rax
.label_623:
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x80]
	jne	.label_168
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_168
	xor	r14d, r14d
	nop	
.label_186:
	cmp	r14, rbp
	jae	.label_277
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], al
.label_277:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_186
.label_168:
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
	jmp	.label_197
.label_615:
	xor	r8d, r8d
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_197
.label_618:
	mov	al, 1
.label_616:
	mov	r12b, 1
.label_619:
	test	r12b, 1
	mov	cl, 1
	je	.label_209
	mov	ecx, eax
.label_209:
	mov	al, cl
.label_617:
	mov	r8d, 2
	test	r12b, 1
	jne	.label_211
	test	rbp, rbp
	je	.label_218
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx], 0x27
.label_218:
	mov	r14d, 1
	jmp	.label_219
.label_211:
	xor	r14d, r14d
.label_219:
	mov	ecx, OFFSET FLAT:label_17
	mov	qword ptr [rsp + 0x58], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x50], rcx
	mov	r13d, eax
.label_273:
	mov	sil, r12b
.label_197:
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
	jmp	.label_226
	.section	.text
	.align	16
	#Procedure 0x402f81
	.globl sub_402f81
	.type sub_402f81, @function
sub_402f81:

	nop	word ptr cs:[rax + rax]
.label_229:
	inc	r12
.label_226:
	cmp	r11, -1
	je	.label_251
	cmp	r12, r11
	jne	.label_254
	jmp	.label_256
	.section	.text
	.align	16
	#Procedure 0x402fa3
	.globl sub_402fa3
	.type sub_402fa3, @function
sub_402fa3:

	nop	word ptr cs:[rax + rax]
.label_251:
	mov	rcx, -1
	cmp	byte ptr [r10 + r12], 0
	je	.label_260
.label_254:
	cmp	byte ptr [rsp + 0x37], 0
	je	.label_267
	mov	rax, qword ptr [rsp + 0x50]
	lea	rbx, [r12 + rax]
	cmp	rax, 2
	jb	.label_270
	cmp	r11, -1
	jne	.label_270
	mov	r15d, edi
	mov	rdi, r10
	mov	r13d, r9d
	call	strlen
	mov	r9d, r13d
	mov	r8, qword ptr [rsp + 0x38]
	mov	edi, r15d
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_270:
	cmp	rbx, r11
	jbe	.label_284
.label_267:
	xor	esi, esi
.label_191:
	movzx	r15d, byte ptr [r10 + r12]
	cmp	r15, 0x7e
	ja	.label_160
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_164]
.label_557:
	test	r12, r12
	jne	.label_172
	jmp	.label_173
	.section	.text
	.align	16
	#Procedure 0x403036
	.globl sub_403036
	.type sub_403036, @function
sub_403036:

	nop	word ptr cs:[rax + rax]
.label_284:
	mov	r13d, r9d
	mov	r15d, edi
	mov	rbx, r11
	lea	rdi, [r10 + r12]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	rdx, qword ptr [rsp + 0x50]
	call	memcmp
	test	eax, eax
	sete	sil
	jne	.label_184
	cmp	byte ptr [rsp + 0xf], 0
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	je	.label_191
	jmp	.label_167
.label_184:
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	jmp	.label_191
.label_561:
	xor	eax, eax
	cmp	r11, -1
	je	.label_203
	test	r12, r12
	jne	.label_206
	cmp	r11, 1
	je	.label_173
	xor	r13d, r13d
	jmp	.label_163
.label_550:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_213
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_167
	cmp	r8d, 2
	jne	.label_221
	mov	eax, r9d
	and	al, 1
	jne	.label_221
	cmp	r14, rbp
	jae	.label_222
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_222:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_224
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_224:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_230
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_230:
	add	r14, 3
	mov	r9b, 1
.label_221:
	mov	rcx, r14
	cmp	rcx, rbp
	jae	.label_236
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + rcx], 0x5c
.label_236:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r8d, 2
	je	.label_237
	lea	rdx, [r12 + 1]
	cmp	rdx, r11
	jae	.label_237
	mov	dl, byte ptr [r10 + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_237
	cmp	r14, rbp
	jae	.label_223
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x30
.label_223:
	lea	rdx, [rcx + 2]
	cmp	rdx, rbp
	jae	.label_208
	mov	ebx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rdx], 0x30
	mov	esi, ebx
.label_208:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_163
.label_551:
	mov	bl, 0x62
	jmp	.label_252
.label_552:
	mov	cl, 0x74
	jmp	.label_171
.label_553:
	mov	bl, 0x76
	jmp	.label_252
.label_554:
	mov	bl, 0x66
	jmp	.label_252
.label_555:
	mov	cl, 0x72
	jmp	.label_171
.label_558:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa8], rax
	cmp	r8d, 2
	jne	.label_263
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_196
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
	jae	.label_275
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_275:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_161
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x5c
.label_161:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_166
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_166:
	add	r14, 3
	xor	r9d, r9d
.label_263:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_163
.label_559:
	mov	r15b, 0x3f
	cmp	r8d, 5
	je	.label_177
	cmp	r8d, 2
	jne	.label_172
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_172
	jmp	.label_196
.label_560:
	cmp	r8d, 2
	jne	.label_193
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_196
	mov	r15b, 0x5c
	xor	eax, eax
	jmp	.label_198
.label_160:
	cmp	qword ptr [rsp + 0xb8], 1
	mov	qword ptr [rsp + 0xa0], rbp
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	mov	dword ptr [rsp + 0x94], esi
	jne	.label_200
	mov	qword ptr [rsp + 0x48], r11
	call	__ctype_b_loc
	mov	r10, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	ebx, 1
	jmp	.label_185
.label_203:
	test	r12, r12
	jne	.label_220
	mov	cl, byte ptr [r10 + 1]
	test	cl, cl
	jne	.label_220
.label_173:
	mov	dl, 1
.label_556:
	cmp	byte ptr [rsp + 0x27], 0
	je	.label_196
	xor	eax, eax
	mov	r13b, dl
.label_163:
	cmp	byte ptr [rsp + 0x36], 0
	je	.label_227
	cmp	qword ptr [rsp + 0x100], 0
	jne	.label_231
	jmp	.label_233
	.section	.text
	.align	16
	#Procedure 0x403314
	.globl sub_403314
	.type sub_403314, @function
sub_403314:

	nop	word ptr cs:[rax + rax]
.label_227:
	cmp	byte ptr [rsp + 0x35], 0
	je	.label_233
.label_231:
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	ebx, esi
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_228
	mov	rcx, qword ptr [rsp + 0x100]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_241
	.section	.text
	.align	16
	#Procedure 0x40334d
	.globl sub_40334d
	.type sub_40334d, @function
sub_40334d:

	nop	dword ptr [rax]
.label_233:
	test	sil, sil
.label_241:
	mov	ebx, r15d
	je	.label_176
	jmp	.label_246
.label_228:
	mov	ebx, r15d
	jmp	.label_246
.label_213:
	cmp	dword ptr [rsp + 0x9c], 0
	jne	.label_229
	xor	r15d, r15d
	jmp	.label_172
.label_193:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x32], 0
	je	.label_171
	xor	eax, eax
	mov	r15b, 0x5c
.label_198:
	xor	r13d, r13d
	jmp	.label_176
.label_171:
	cmp	byte ptr [rsp + 0x27], 0
	mov	ebx, ecx
	je	.label_196
.label_252:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1f], 0
	mov	r13d, 0
	je	.label_163
	nop	
.label_246:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_167
	cmp	r8d, 2
	jne	.label_264
	mov	eax, r9d
	and	al, 1
	jne	.label_264
	cmp	r14, rbp
	jae	.label_269
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_269:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_276
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_276:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_279
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_279:
	add	r14, 3
	mov	r9b, 1
.label_264:
	cmp	r14, rbp
	jae	.label_278
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_278:
	inc	r14
	jmp	.label_257
.label_200:
	mov	qword ptr [rsp + 0x70], 0
	cmp	r11, -1
	jne	.label_165
	mov	rdi, r10
	call	strlen
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_165:
	cmp	byte ptr [rsp + 0x31], 0
	mov	qword ptr [rsp + 0x48], r11
	mov	qword ptr [rsp + 0x88], r12
	je	.label_243
	lea	rax, [r10 + r12]
	mov	qword ptr [rsp + 0xb0], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbp, [rsp + 0x70]
.label_183:
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
	je	.label_272
	test	rbx, rbx
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_190
	cmp	rbx, 2
	mov	rbp, qword ptr [rsp + 0xa0]
	jb	.label_216
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax]
.label_189:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_271
	bt	rsi, rdx
	jb	.label_196
.label_271:
	inc	rcx
	cmp	rcx, rbx
	jb	.label_189
.label_216:
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	jne	.label_187
	xor	r13d, r13d
.label_187:
	lea	rbp, [rsp + 0x70]
	mov	r12, qword ptr [rsp + 0x40]
	add	r12, rbx
	mov	rdi, rbp
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_183
	jmp	.label_205
.label_237:
	xor	r13d, r13d
	jmp	.label_163
.label_220:
	mov	r11, -1
	xor	r13d, r13d
	jmp	.label_163
.label_177:
	cmp	dword ptr [rsp + 0x98], 0
	je	.label_172
	lea	rcx, [r12 + 2]
	cmp	rcx, r11
	jae	.label_172
	cmp	byte ptr [r10 + r12 + 1], 0x3f
	jne	.label_172
	movsx	edx, byte ptr [r10 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_250
	mov	ebx, esi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_253
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_259
	cmp	r14, rbp
	jae	.label_261
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x3f
.label_261:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_268
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_268:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_232
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_232:
	lea	rax, [r14 + 3]
	cmp	rax, rbp
	jae	.label_249
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x3f
.label_249:
	add	r14, 4
	xor	eax, eax
	mov	r12, rcx
	mov	r15b, dl
.label_253:
	xor	r13d, r13d
	mov	esi, ebx
	jmp	.label_163
.label_172:
	xor	eax, eax
.label_206:
	xor	r13d, r13d
	jmp	.label_163
.label_243:
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbx, [rsp + 0x70]
	nop	word ptr cs:[rax + rax]
.label_202:
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
	je	.label_175
	cmp	rbp, -1
	je	.label_192
	cmp	rbp, -2
	je	.label_194
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	mov	r12, qword ptr [rsp + 0x40]
	jne	.label_169
	xor	r13d, r13d
.label_169:
	add	r12, rbp
	lea	rbx, [rsp + 0x70]
	mov	rdi, rbx
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_202
	jmp	.label_205
.label_194:
	mov	r10, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x40]
	lea	rax, [rsi + r12]
	mov	rdx, qword ptr [rsp + 0x48]
	cmp	rax, rdx
	jae	.label_214
	lea	rax, [r10 + r12]
.label_199:
	cmp	byte ptr [rax + rsi], 0
	je	.label_214
	lea	rcx, [r12 + rsi + 1]
	inc	rsi
	cmp	rcx, rdx
	jb	.label_199
.label_214:
	mov	qword ptr [rsp + 0x40], rsi
.label_272:
	xor	r13d, r13d
	jmp	.label_190
.label_192:
	xor	r13d, r13d
.label_175:
	mov	r10, qword ptr [rsp + 0x28]
.label_190:
	mov	r12, qword ptr [rsp + 0x40]
.label_205:
	mov	rbx, r12
	mov	r12, qword ptr [rsp + 0x88]
.label_185:
	and	r13b, 1
	mov	eax, r13d
	or	al, byte ptr [rsp + 0x33]
	cmp	rbx, 1
	mov	rbp, qword ptr [rsp + 0xa0]
	mov	dil, byte ptr [rsp + 0x1e]
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x60]
	mov	esi, dword ptr [rsp + 0x94]
	ja	.label_225
	test	al, al
	je	.label_225
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_163
.label_225:
	mov	byte ptr [rsp + 0x40], al
	add	rbx, r12
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_240
	.section	.text
	.align	16
	#Procedure 0x403747
	.globl sub_403747
	.type sub_403747, @function
sub_403747:

	nop	word ptr [rax + rax]
.label_204:
	inc	r14
	mov	r15b, byte ptr [r10 + r12 + 1]
	mov	r12, rdx
.label_240:
	cmp	byte ptr [rsp + 0x40], 0
	je	.label_245
	test	sil, 1
	je	.label_179
	cmp	r14, rbp
	jae	.label_247
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x5c
.label_247:
	inc	r14
	xor	esi, esi
	jmp	.label_179
	.section	.text
	.align	16
	#Procedure 0x403785
	.globl sub_403785
	.type sub_403785, @function
sub_403785:

	nop	word ptr cs:[rax + rax]
.label_245:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_167
	cmp	r8d, 2
	jne	.label_255
	mov	eax, r9d
	and	al, 1
	jne	.label_255
	cmp	r14, rbp
	jae	.label_258
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_258:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_262
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x24
.label_262:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_207
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x27
.label_207:
	add	r14, 3
	mov	r9b, 1
.label_255:
	cmp	r14, rbp
	jae	.label_242
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_242:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_282
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_282:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_162
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_162:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_179:
	lea	rdx, [r12 + 1]
	cmp	rbx, rdx
	jbe	.label_176
	test	r9b, 1
	je	.label_178
	mov	rcx, rbx
	mov	ebx, eax
	and	bl, 1
	jne	.label_274
	mov	r8, r12
	mov	r12d, esi
	cmp	r14, rbp
	jae	.label_182
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], 0x27
.label_182:
	lea	rsi, [r14 + 1]
	cmp	rsi, rbp
	jae	.label_195
	mov	rbx, qword ptr [rsp + 0x10]
	mov	byte ptr [rbx + rsi], 0x27
.label_195:
	add	r14, 2
	xor	r9d, r9d
	mov	esi, r12d
	mov	rbx, rcx
	mov	r12, r8
	mov	r8, qword ptr [rsp + 0x38]
	jmp	.label_178
	.section	.text
	.align	16
	#Procedure 0x403896
	.globl sub_403896
	.type sub_403896, @function
sub_403896:

	nop	word ptr cs:[rax + rax]
.label_274:
	mov	rbx, rcx
.label_178:
	cmp	r14, rbp
	jae	.label_204
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], r15b
	mov	esi, ecx
	jmp	.label_204
	.section	.text
	.align	16
	#Procedure 0x4038be
	.globl sub_4038be
	.type sub_4038be, @function
sub_4038be:

	nop	
.label_176:
	test	r9b, 1
	je	.label_212
	and	al, 1
	jne	.label_212
	cmp	r14, rbp
	jae	.label_217
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_217:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_234
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_234:
	add	r14, 2
	xor	r9d, r9d
.label_212:
	mov	ebx, r15d
.label_257:
	cmp	r14, rbp
	jae	.label_265
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], bl
.label_265:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, dil
	mov	edi, r13d
	jmp	.label_229
.label_250:
	xor	r13d, r13d
	jmp	.label_163
	.section	.text
	.align	16
	#Procedure 0x403921
	.globl sub_403921
	.type sub_403921, @function
sub_403921:

	nop	word ptr cs:[rax + rax]
.label_256:
	mov	rcx, r12
.label_260:
	cmp	r8d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_239
	or	al, dl
	jne	.label_239
	mov	r11, rcx
	jmp	.label_167
.label_196:
	mov	eax, 2
.label_188:
	mov	qword ptr [rsp + 0x38], rax
.label_167:
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
.label_215:
	mov	r14, rax
.label_180:
	mov	rax, r14
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_235:
	mov	rdx, qword ptr [rsp + 0x58]
	test	rdx, rdx
	je	.label_210
	cmp	byte ptr [rsp + 0xf], 0
	mov	rcx, qword ptr [rsp + 0x10]
	jne	.label_170
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_170
	inc	rdx
	nop	dword ptr [rax + rax]
.label_283:
	cmp	r14, rbp
	jae	.label_281
	mov	byte ptr [rcx + r14], al
.label_281:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_283
	jmp	.label_170
.label_238:
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
	jmp	.label_215
.label_210:
	mov	rcx, qword ptr [rsp + 0x10]
.label_170:
	cmp	r14, rbp
	jae	.label_180
	mov	byte ptr [rcx + r14], 0
	jmp	.label_180
.label_259:
	mov	eax, 5
	jmp	.label_188
.label_266:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403a70

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_295
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_297
.label_295:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_297:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_285
	cmp	r10d, 0x29
	jae	.label_294
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_296
.label_294:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_296:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_285
	cmp	r10d, 0x29
	jae	.label_292
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_293
.label_292:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_293:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_285
	cmp	r10d, 0x29
	jae	.label_290
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_291
.label_290:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_291:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_285
	cmp	r10d, 0x29
	jae	.label_288
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_289
.label_288:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_289:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_285
	cmp	r10d, 0x29
	jae	.label_286
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_287
.label_286:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_287:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_285
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_285
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_285
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_285
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_285:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	16
	#Procedure 0x403c52
	.globl sub_403c52
	.type sub_403c52, @function
sub_403c52:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403c60
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_95]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_96]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_97]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_298
	test	rsi, rsi
	je	.label_298
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
.label_298:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403ccc
	.globl sub_403ccc
	.type sub_403ccc, @function
sub_403ccc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403cd0
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
	#Procedure 0x403ce3
	.globl sub_403ce3
	.type sub_403ce3, @function
sub_403ce3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403cf0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_299
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_112
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403d20

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_300
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_301
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_300
.label_301:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_300
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_302
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_302:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_300:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	.section	.text
	.align	16
	#Procedure 0x403d94
	.globl sub_403d94
	.type sub_403d94, @function
sub_403d94:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403da0
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x403daa
	.globl sub_403daa
	.type sub_403daa, @function
sub_403daa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403db0

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
	#Procedure 0x403dc9
	.globl sub_403dc9
	.type sub_403dc9, @function
sub_403dc9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403dd0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_303
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_303
	test	byte ptr [rbx + 1], 1
	je	.label_303
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_303:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	16
	#Procedure 0x403e03
	.globl sub_403e03
	.type sub_403e03, @function
sub_403e03:

	nop	word ptr cs:[rax + rax]
.label_304:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403e15
	.globl sub_403e15
	.type sub_403e15, @function
sub_403e15:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403e1d
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
	.section	.text
	.align	16
	#Procedure 0x403e80
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
	#Procedure 0x403eb6
	.globl sub_403eb6
	.type sub_403eb6, @function
sub_403eb6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403ec0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_306
	cmp	byte ptr [rax], 0x43
	jne	.label_308
	cmp	byte ptr [rax + 1], 0
	je	.label_305
.label_308:
	mov	esi, OFFSET FLAT:label_307
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_306
.label_305:
	xor	ebx, ebx
.label_306:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x403ef1
	.globl sub_403ef1
	.type sub_403ef1, @function
sub_403ef1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403f00

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
	#Procedure 0x403f17
	.globl sub_403f17
	.type sub_403f17, @function
sub_403f17:

	nop	word ptr [rax + rax]
.label_309:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403f25
	.globl sub_403f25
	.type sub_403f25, @function
sub_403f25:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403f29

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
	je	.label_310
	test	r15, r15
	je	.label_309
.label_310:
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
	.align	16
	#Procedure 0x403f60
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_311
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_314:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_314
.label_311:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_315
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_312], OFFSET FLAT:slot0
.label_315:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_313
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_313:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x403ff1
	.globl sub_403ff1
	.type sub_403ff1, @function
sub_403ff1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404000
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x404011
	.globl sub_404011
	.type sub_404011, @function
sub_404011:

	nop	word ptr cs:[rax + rax]
.label_317:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_316
	call	__errno_location
	mov	dword ptr [rax], 0
.label_316:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40403b

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
	jne	.label_317
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_316
	test	cl, cl
	jne	.label_316
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_316
	.section	.text
	.align	16
	#Procedure 0x404080

	.globl xnumtoumax
	.type xnumtoumax, @function
xnumtoumax:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, r9
	mov	r15, rcx
	mov	r13, rdx
	mov	eax, esi
	mov	r12, rdi
	lea	rcx, [rsp]
	xor	esi, esi
	mov	edx, eax
	call	xstrtoumax
	test	eax, eax
	je	.label_319
	cmp	eax, 1
	je	.label_321
	cmp	eax, 3
	jne	.label_322
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_318
.label_322:
	call	__errno_location
	jmp	.label_318
.label_319:
	mov	rbx, qword ptr [rsp]
	cmp	rbx, r13
	jb	.label_320
	cmp	rbx, r15
	jbe	.label_324
.label_320:
	call	__errno_location
	cmp	rbx, 0x40000000
	jb	.label_325
	mov	dword ptr [rax], 0x4b
	jmp	.label_318
.label_321:
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	jmp	.label_318
.label_325:
	mov	dword ptr [rax], 0x22
.label_318:
	mov	ecx, dword ptr [rsp + 0x40]
	test	ecx, ecx
	mov	ebx, 1
	cmovne	ebx, ecx
	mov	ebp, dword ptr [rax]
	xor	eax, eax
	cmp	ebp, 0x16
	cmove	ebp, eax
	mov	rdi, r12
	call	quote
	mov	r8, rax
	mov	edx, OFFSET FLAT:label_323
	xor	eax, eax
	mov	edi, ebx
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	rbx, qword ptr [rsp]
.label_324:
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
	#Procedure 0x40414b
	.globl sub_40414b
	.type sub_40414b, @function
sub_40414b:

	nop	dword ptr [rax + rax]
.label_326:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x404155
	.globl sub_404155
	.type sub_404155, @function
sub_404155:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404160
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_326
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_327
	test	rax, rax
	je	.label_326
.label_327:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x404190

	.globl put_line
	.type put_line, @function
put_line:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14d, esi
	mov	r15, rdi
	mov	dword ptr [rip + out_column],  0
	mov	ebp, dword ptr [rip + prefix_indent]
	xor	eax, eax
	cmp	byte ptr [rip + tabs],  1
	jne	.label_333
	cmp	ebp, 8
	jl	.label_333
	mov	ebx, ebp
	sar	ebx, 0x1f
	shr	ebx, 0x1d
	add	ebx, ebp
	and	ebx, 0xfffffff8
	cmp	ebx, 2
	jl	.label_333
	xor	ecx, ecx
	jmp	.label_331
.label_355:
	mov	esi, 9
	call	__overflow
	mov	ecx, dword ptr [rip + out_column]
	jmp	.label_351
	.section	.text
	.align	16
	#Procedure 0x4041e9
	.globl sub_4041e9
	.type sub_4041e9, @function
sub_4041e9:

	nop	dword ptr [rax]
.label_331:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_355
	lea	rdx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rax], 9
.label_351:
	mov	eax, ecx
	sar	eax, 0x1f
	shr	eax, 0x1d
	add	eax, ecx
	and	eax, 0xfffffff8
	add	eax, 8
	mov	dword ptr [rip + out_column],  eax
	cmp	eax, ebx
	mov	ecx, eax
	jl	.label_331
	jmp	.label_333
	.section	.text
	.align	16
	#Procedure 0x40422a
	.globl sub_40422a
	.type sub_40422a, @function
sub_40422a:

	nop	word ptr [rax + rax]
.label_345:
	inc	eax
	mov	dword ptr [rip + out_column],  eax
.label_333:
	cmp	eax, ebp
	jge	.label_342
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rdi + 0x28]
	cmp	rcx, qword ptr [rdi + 0x30]
	jae	.label_354
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], 0x20
	jmp	.label_345
.label_354:
	mov	esi, 0x20
	call	__overflow
	mov	eax, dword ptr [rip + out_column]
	jmp	.label_345
.label_342:
	mov	rdi, qword ptr [rip + prefix]
	mov	rsi, qword ptr [rip + stdout]
	call	fputs_unlocked
	mov	ecx, dword ptr [rip + out_column]
	add	ecx, dword ptr [rip + prefix_length]
	mov	dword ptr [rip + out_column],  ecx
	cmp	byte ptr [rip + tabs],  1
	jne	.label_359
	mov	ebp, r14d
	sar	ebp, 0x1f
	shr	ebp, 0x1d
	add	ebp, r14d
	and	ebp, 0xfffffff8
	cmp	ecx, ebp
	jge	.label_335
	lea	eax, [rcx + 1]
	cmp	eax, ebp
	jl	.label_332
	mov	eax, ecx
	jmp	.label_334
.label_359:
	mov	eax, ecx
	jmp	.label_334
.label_335:
	mov	eax, ecx
	jmp	.label_334
.label_350:
	mov	esi, 9
	call	__overflow
	mov	ecx, dword ptr [rip + out_column]
	jmp	.label_344
	.section	.text
	.align	16
	#Procedure 0x4042d2
	.globl sub_4042d2
	.type sub_4042d2, @function
sub_4042d2:

	nop	word ptr cs:[rax + rax]
.label_332:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_350
	lea	rdx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rax], 9
.label_344:
	mov	eax, ecx
	sar	eax, 0x1f
	shr	eax, 0x1d
	add	eax, ecx
	and	eax, 0xfffffff8
	add	eax, 8
	mov	dword ptr [rip + out_column],  eax
	cmp	eax, ebp
	mov	ecx, eax
	jl	.label_332
	jmp	.label_334
	.section	.text
	.align	16
	#Procedure 0x40431a
	.globl sub_40431a
	.type sub_40431a, @function
sub_40431a:

	nop	word ptr [rax + rax]
.label_343:
	inc	eax
	mov	dword ptr [rip + out_column],  eax
.label_334:
	cmp	eax, r14d
	jge	.label_338
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rdi + 0x28]
	cmp	rcx, qword ptr [rdi + 0x30]
	jae	.label_340
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], 0x20
	jmp	.label_343
.label_340:
	mov	esi, 0x20
	call	__overflow
	mov	eax, dword ptr [rip + out_column]
	jmp	.label_343
.label_338:
	mov	r14, qword ptr [r15 + 0x20]
	add	r14, -0x28
	jmp	.label_349
	.section	.text
	.align	16
	#Procedure 0x404367
	.globl sub_404367
	.type sub_404367, @function
sub_404367:

	nop	word ptr [rax + rax]
.label_358:
	add	r15, 0x28
	mov	eax, ecx
.label_349:
	mov	rbp, qword ptr [r15 + 8]
	xor	ecx, ecx
	test	ebp, ebp
	je	.label_356
	mov	rbx, qword ptr [r15]
	neg	ebp
	jmp	.label_328
.label_353:
	movzx	esi, al
	call	__overflow
	jmp	.label_348
	.section	.text
	.align	16
	#Procedure 0x404391
	.globl sub_404391
	.type sub_404391, @function
sub_404391:

	nop	word ptr cs:[rax + rax]
.label_328:
	movzx	eax, byte ptr [rbx]
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rdi + 0x28]
	cmp	rcx, qword ptr [rdi + 0x30]
	jae	.label_353
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], al
.label_348:
	inc	rbx
	inc	ebp
	jne	.label_328
	mov	rbp, qword ptr [r15 + 8]
	mov	eax, dword ptr [rip + out_column]
	mov	ecx, ebp
.label_356:
	add	eax, ecx
	cmp	r15, r14
	mov	dword ptr [rip + out_column],  eax
	je	.label_346
	shr	rbp, 0x20
	add	ebp, eax
	cmp	byte ptr [rip + tabs],  1
	jne	.label_352
	mov	ebx, ebp
	sar	ebx, 0x1f
	shr	ebx, 0x1d
	add	ebx, ebp
	and	ebx, 0xfffffff8
	lea	ecx, [rax + 1]
	cmp	ecx, ebx
	jge	.label_337
	cmp	eax, ebx
	jl	.label_329
	mov	ecx, eax
	jmp	.label_330
	.section	.text
	.align	16
	#Procedure 0x40440d
	.globl sub_40440d
	.type sub_40440d, @function
sub_40440d:

	nop	dword ptr [rax]
.label_352:
	mov	ecx, eax
	jmp	.label_330
.label_337:
	mov	ecx, eax
	jmp	.label_330
.label_357:
	mov	esi, 9
	call	__overflow
	mov	eax, dword ptr [rip + out_column]
	jmp	.label_336
	.section	.text
	.align	16
	#Procedure 0x40442a
	.globl sub_40442a
	.type sub_40442a, @function
sub_40442a:

	nop	word ptr [rax + rax]
.label_329:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rdi + 0x28]
	cmp	rcx, qword ptr [rdi + 0x30]
	jae	.label_357
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], 9
.label_336:
	mov	ecx, eax
	sar	ecx, 0x1f
	shr	ecx, 0x1d
	add	ecx, eax
	and	ecx, 0xfffffff8
	add	ecx, 8
	mov	dword ptr [rip + out_column],  ecx
	cmp	ecx, ebx
	mov	eax, ecx
	jl	.label_329
	jmp	.label_330
	.section	.text
	.align	16
	#Procedure 0x40446a
	.globl sub_40446a
	.type sub_40446a, @function
sub_40446a:

	nop	word ptr [rax + rax]
.label_347:
	inc	ecx
	mov	dword ptr [rip + out_column],  ecx
.label_330:
	cmp	ecx, ebp
	jge	.label_358
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_339
	lea	rdx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rax], 0x20
	jmp	.label_347
.label_339:
	mov	esi, 0x20
	call	__overflow
	mov	ecx, dword ptr [rip + out_column]
	jmp	.label_347
.label_346:
	mov	dword ptr [rip + last_line_length],  eax
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_341
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_341:
	mov	esi, 0xa
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	__overflow
	.section	.text
	.align	16
	#Procedure 0x4044f1
	.globl sub_4044f1
	.type sub_4044f1, @function
sub_4044f1:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404500

	.globl fmt_paragraph
	.type fmt_paragraph, @function
fmt_paragraph:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	rsi, qword ptr [rip + word_limit]
	mov	qword ptr [rsi + 0x18], 0
	mov	eax, dword ptr [rsi + 8]
	mov	dword ptr [rsp - 0xc], eax
	mov	edi, dword ptr [rip + max_width]
	mov	dword ptr [rsi + 8], edi
	lea	rax, [rsi - 0x28]
	mov	ecx, OFFSET FLAT:unused_word_type
	cmp	rax, rcx
	jb	.label_360
	mov	ecx, dword ptr [rip + first_indent]
	mov	dword ptr [rsp - 4], ecx
	mov	ecx, dword ptr [rip + other_indent]
	mov	dword ptr [rsp - 8], ecx
	mov	r11d, dword ptr [rip + last_line_length]
	mov	r12d, dword ptr [rip + goal_width]
	xor	r15d, r15d
	mov	edx, OFFSET FLAT:unused_word_type
	mov	r8, rsi
	nop	dword ptr [rax + rax]
.label_370:
	mov	r13, r8
	mov	r8, rax
	cmp	r8, rdx
	mov	eax, dword ptr [rsp - 8]
	cmove	eax, dword ptr [rsp - 4]
	movsxd	r10, dword ptr [r13 - 0x20]
	lea	eax, [r10 + rax]
	cmp	r8, rdx
	jne	.label_364
	test	r11d, r11d
	jle	.label_364
	mov	ecx, OFFSET FLAT:label_367
	movabs	r9, 0x7fffffffffffffff
	nop	dword ptr [rax + rax]
.label_369:
	cmp	rsi, rcx
	mov	edx, 0
	je	.label_373
	mov	edx, r12d
	sub	edx, eax
	add	edx, edx
	lea	edx, [rdx + rdx*4]
	movsxd	rdx, edx
	imul	rdx, rdx
	cmp	qword ptr [rcx + 0x20], rsi
	je	.label_373
	movsxd	rbp, dword ptr [rcx + 0x14]
	movsxd	rbx, eax
	sub	rbx, rbp
	add	rbx, rbx
	lea	rbx, [rbx + rbx*4]
	imul	rbx, rbx
	shr	rbx, 1
	add	rdx, rbx
.label_373:
	add	rdx, qword ptr [rcx + 0x18]
	mov	ebx, eax
	sub	ebx, r11d
	add	ebx, ebx
	lea	ebx, [rbx + rbx*4]
	movsxd	r14, ebx
	imul	r14, r14
	shr	r14, 1
	add	r14, rdx
	cmp	r14, r9
	jge	.label_371
	mov	qword ptr [r13 - 8], rcx
	mov	dword ptr [r13 - 0x14], eax
	mov	r9, r14
.label_371:
	cmp	rsi, rcx
	je	.label_366
	add	eax, dword ptr [rcx - 0x1c]
	add	eax, dword ptr [rcx + 8]
	add	rcx, 0x28
	cmp	eax, edi
	jl	.label_369
	jmp	.label_366
	.section	.text
	.align	16
	#Procedure 0x404633
	.globl sub_404633
	.type sub_404633, @function
sub_404633:

	nop	word ptr cs:[rax + rax]
.label_364:
	mov	rcx, r15
	movabs	r9, 0x7fffffffffffffff
	nop	dword ptr [rax]
.label_372:
	test	rcx, rcx
	mov	edx, 0
	je	.label_363
	mov	edx, r12d
	sub	edx, eax
	add	edx, edx
	lea	edx, [rdx + rdx*4]
	movsxd	rdx, edx
	imul	rdx, rdx
	cmp	qword ptr [rsi + rcx + 0x20], rsi
	je	.label_363
	movsxd	rbx, dword ptr [rsi + rcx + 0x14]
	movsxd	rbp, eax
	sub	rbp, rbx
	add	rbp, rbp
	lea	rbx, [rbp + rbp*4]
	imul	rbx, rbx
	shr	rbx, 1
	add	rdx, rbx
.label_363:
	add	rdx, qword ptr [rsi + rcx + 0x18]
	cmp	rdx, r9
	jge	.label_362
	lea	rbp, [rsi + rcx]
	mov	qword ptr [r13 - 8], rbp
	mov	dword ptr [r13 - 0x14], eax
	mov	r9, rdx
.label_362:
	test	rcx, rcx
	je	.label_366
	add	eax, dword ptr [rsi + rcx - 0x1c]
	add	eax, dword ptr [rsi + rcx + 8]
	add	rcx, 0x28
	cmp	eax, edi
	jl	.label_372
.label_366:
	mov	edx, OFFSET FLAT:unused_word_type
	cmp	r8, rdx
	mov	ecx, 0x1324
	jbe	.label_365
	mov	al, byte ptr [r13 - 0x40]
	test	al, 2
	jne	.label_361
	test	al, 4
	mov	ecx, 0xce4
	jne	.label_365
	mov	eax, OFFSET FLAT:label_367
	cmp	r8, rax
	mov	ecx, 0x1324
	jbe	.label_365
	test	byte ptr [r13 - 0x68], 8
	mov	ecx, 0x1324
	je	.label_365
	movsxd	rcx, dword ptr [r13 - 0x48]
	add	rcx, 2
	mov	eax, 0x9c40
	xor	edx, edx
	idiv	rcx
	mov	edx, OFFSET FLAT:unused_word_type
	mov	rcx, rax
	add	rcx, 0x1324
	jmp	.label_365
	.section	.text
	.align	16
	#Procedure 0x40471b
	.globl sub_40471b
	.type sub_40471b, @function
sub_40471b:

	nop	dword ptr [rax + rax]
.label_361:
	test	al, 8
	mov	ecx, 0x960
	mov	eax, 0x59164
	cmove	rcx, rax
.label_365:
	mov	al, byte ptr [r13 - 0x18]
	test	al, 1
	jne	.label_368
	test	al, 8
	je	.label_374
	add	r10, 2
	mov	eax, 0x57e4
	xor	edx, edx
	idiv	r10
	mov	edx, OFFSET FLAT:unused_word_type
	add	rcx, rax
	jmp	.label_374
	.section	.text
	.align	16
	#Procedure 0x404754
	.globl sub_404754
	.type sub_404754, @function
sub_404754:

	nop	word ptr cs:[rax + rax]
.label_368:
	add	rcx, -0x640
.label_374:
	add	rcx, r9
	mov	qword ptr [r13 - 0x10], rcx
	lea	rax, [r8 - 0x28]
	add	r15, -0x28
	cmp	rax, rdx
	jae	.label_370
.label_360:
	mov	eax, dword ptr [rsp - 0xc]
	mov	dword ptr [rsi + 8], eax
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404791
	.globl sub_404791
	.type sub_404791, @function
sub_404791:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4047a0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_95]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_96]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_97]
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
	#Procedure 0x4047f5
	.globl sub_4047f5
	.type sub_4047f5, @function
sub_4047f5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404800
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
	je	.label_375
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
.label_375:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40486c
	.globl sub_40486c
	.type sub_40486c, @function
sub_40486c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404870
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_95]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_96]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_97]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_376
	test	rdx, rdx
	je	.label_376
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_376:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4048da
	.globl sub_4048da
	.type sub_4048da, @function
sub_4048da:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4048e0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_377
	test	rax, rax
	je	.label_378
.label_377:
	pop	rbx
	ret	
.label_378:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4048fa
	.globl sub_4048fa
	.type sub_4048fa, @function
sub_4048fa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404900
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x40490a
	.globl sub_40490a
	.type sub_40490a, @function
sub_40490a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404910
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
	#Procedure 0x404928
	.globl sub_404928
	.type sub_404928, @function
sub_404928:

	nop	dword ptr [rax + rax]
.label_380:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_379
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_379:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404964
	.globl sub_404964
	.type sub_404964, @function
sub_404964:

	nop	
	.section	.text
	.align	16
	#Procedure 0x404966

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
	jne	.label_381
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_381
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_380
.label_381:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
	.section	.text
	.align	16
	#Procedure 0x4049a0

	.globl xstrtoumax
	.type xstrtoumax, @function
xstrtoumax:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r14, r8
	mov	r12d, edx
	mov	rbp, rsi
	mov	rbx, rdi
	cmp	r12d, 0x25
	jae	.label_387
	mov	qword ptr [rsp + 8], rcx
	call	__errno_location
	mov	r15, rax
	mov	dword ptr [r15], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_402:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_402
	test	rbp, rbp
	lea	rsi, [rsp + 0x20]
	cmovne	rsi, rbp
	mov	r13d, 4
	cmp	al, 0x2d
	je	.label_392
	xor	ebp, ebp
	xor	ecx, ecx
	mov	rdi, rbx
	mov	qword ptr [rsp + 0x18], rsi
	mov	edx, r12d
	call	__strtoul_internal
	mov	r12, rax
	mov	rax, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rax]
	cmp	rcx, rbx
	je	.label_390
	mov	eax, dword ptr [r15]
	test	eax, eax
	je	.label_398
	cmp	eax, 0x22
	jne	.label_392
	mov	ebp, 1
.label_398:
	test	r14, r14
	mov	r15d, ebp
	jne	.label_400
	jmp	.label_383
.label_390:
	test	r14, r14
	je	.label_392
	movsx	esi, byte ptr [rbx]
	test	esi, esi
	je	.label_392
	mov	rdi, r14
	mov	rbx, rcx
	call	strchr
	mov	rcx, rbx
	xor	r15d, r15d
	mov	r12d, 1
	test	rax, rax
	je	.label_392
.label_400:
	movsx	r13d, byte ptr [rcx]
	test	r13d, r13d
	je	.label_383
	mov	qword ptr [rsp + 0x10], rcx
	mov	rdi, r14
	mov	esi, r13d
	call	strchr
	test	rax, rax
	je	.label_391
	mov	ecx, 1
	mov	esi, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_385
	movabs	rdx, 0x814400308945
	bt	rdx, rax
	jae	.label_385
	mov	esi, 0x30
	mov	rdi, r14
	call	strchr
	mov	ecx, 1
	mov	esi, 0x400
	test	rax, rax
	je	.label_385
	mov	rax, qword ptr [rsp + 0x10]
	movsx	eax, byte ptr [rax + 1]
	mov	ecx, 1
	mov	esi, 0x400
	cmp	eax, 0x42
	je	.label_382
	cmp	eax, 0x44
	je	.label_382
	cmp	eax, 0x69
	jne	.label_385
	xor	eax, eax
	mov	rcx, qword ptr [rsp + 0x10]
	cmp	byte ptr [rcx + 2], 0x42
	sete	al
	lea	rcx, [rax + rax + 1]
	mov	esi, 0x400
	jmp	.label_385
.label_382:
	mov	ecx, 2
	mov	esi, 0x3e8
.label_385:
	add	r13d, -0x42
	cmp	r13d, 0x35
	ja	.label_391
	xor	eax, eax
	jmp	qword ptr [(r13 * 8) + label_399]
.label_629:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, r12
	sbb	r8b, r8b
	mov	rbx, r12
	imul	rbx, rsi
	cmp	rax, r12
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	bl, bl
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, rdi
	or	dl, r8b
	jmp	.label_401
.label_391:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], r12
	or	r15d, 2
	jmp	.label_388
.label_630:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	imul	rsi, r12
	cmp	rax, r12
	cmovb	rsi, rdi
	sbb	eax, eax
	jmp	.label_393
.label_631:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, r12
	sbb	r8b, r8b
	mov	rbx, r12
	imul	rbx, rsi
	cmp	rax, r12
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	imul	rsi, rbx
	cmp	rax, rbx
	cmovb	rsi, rdi
	or	dl, r8b
	jmp	.label_384
.label_633:
	mov	r9, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, r12
	sbb	r8b, r8b
	mov	rbx, r12
	imul	rbx, rsi
	cmp	rax, r12
	cmovb	rbx, r9
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, r9
	cmp	rax, rbp
	sbb	r10b, r10b
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r9
	cmp	rax, rdi
	sbb	bl, bl
	imul	rsi, rdi
	cmp	rax, rdi
	cmovb	rsi, r9
	or	dl, r8b
	jmp	.label_386
.label_627:
	xor	eax, eax
	mov	rdx, r12
	shr	rdx, 0x36
	setne	al
	shl	r12, 0xa
	jmp	.label_403
.label_628:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, r12
	sbb	r8b, r8b
	mov	rbx, r12
	imul	rbx, rsi
	cmp	rax, r12
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	r10b, r10b
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r11b, r11b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	bpl, bpl
	imul	rsi, rbx
	cmp	rax, rbx
	cmovb	rsi, rdi
	or	dl, r8b
	or	dl, r9b
	or	dl, r10b
	or	dl, r11b
	or	dl, bpl
	jmp	.label_384
.label_632:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, r12
	sbb	r8b, r8b
	mov	rbx, r12
	imul	rbx, rsi
	cmp	rax, r12
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	r10b, r10b
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	bl, bl
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, rdi
	or	dl, r8b
	or	dl, r9b
.label_386:
	or	dl, r10b
.label_401:
	or	dl, bl
.label_384:
	and	dl, 1
	movzx	eax, dl
	mov	r12, rsi
	jmp	.label_389
.label_634:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, r12
	sbb	r8b, r8b
	mov	rbx, r12
	imul	rbx, rsi
	cmp	rax, r12
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	r10b, r10b
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r11b, r11b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	r14b, r14b
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	mov	r13d, r15d
	sbb	r15b, r15b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	bpl, bpl
	imul	rsi, rbx
	cmp	rax, rbx
	cmovb	rsi, rdi
	or	dl, r8b
	or	dl, r9b
	or	dl, r10b
	or	dl, r11b
	and	dl, 1
	or	dl, r14b
	or	dl, r15b
	mov	r15d, r13d
	or	dl, bpl
	jmp	.label_394
.label_635:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, r12
	sbb	r8b, r8b
	mov	rbx, r12
	imul	rbx, rsi
	cmp	rax, r12
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	r10b, r10b
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r11b, r11b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	r14b, r14b
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	bl, bl
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, rdi
	or	dl, r8b
	or	dl, r9b
	or	dl, r10b
	and	dl, 1
	or	dl, r11b
	or	dl, r14b
	or	dl, bl
.label_394:
	movzx	eax, dl
.label_393:
	and	eax, 1
	mov	r12, rsi
	jmp	.label_389
.label_636:
	xor	eax, eax
	mov	rdx, r12
	shr	rdx, 0x37
	setne	al
	shl	r12, 9
.label_403:
	cmp	rdx, 1
	sbb	rdx, rdx
	not	rdx
	or	r12, rdx
	jmp	.label_389
.label_637:
	lea	rax, [r12 + r12]
	test	r12, r12
	mov	rdx, -1
	cmovns	rdx, rax
	shr	r12, 0x3f
	mov	eax, r12d
	mov	r12, rdx
.label_389:
	or	eax, r15d
	mov	rdi, qword ptr [rsp + 0x10]
	lea	rdx, [rdi + rcx]
	mov	rsi, qword ptr [rsp + 0x18]
	mov	qword ptr [rsi], rdx
	lea	r15d, [rax + 2]
	cmp	byte ptr [rdi + rcx], 0
	cmove	r15d, eax
.label_383:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], r12
.label_388:
	mov	r13d, r15d
.label_392:
	mov	eax, r13d
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_387:
	mov	edi, OFFSET FLAT:label_395
	mov	esi, OFFSET FLAT:label_396
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_397
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x404fd1
	.globl sub_404fd1
	.type sub_404fd1, @function
sub_404fd1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404fe0
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
	#Procedure 0x404ff9
	.globl sub_404ff9
	.type sub_404ff9, @function
sub_404ff9:

	nop	dword ptr [rax]
.label_409:
	test	rcx, rcx
	jne	.label_404
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_404:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_408
.label_410:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_407
	test	rbx, rbx
	jne	.label_407
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_408:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x405051
	.globl sub_405051
	.type sub_405051, @function
sub_405051:

	nop	word ptr [rax + rax]
.label_407:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_405
	test	rax, rax
	je	.label_406
.label_405:
	pop	rbx
	ret	
.label_406:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x405073
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_409
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_406
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_410
	.section	.text
	.align	16
	#Procedure 0x4050a0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_106
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_411
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4050c5
	.globl sub_4050c5
	.type sub_4050c5, @function
sub_4050c5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4050d0
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
	je	.label_413
	test	r14, r14
	je	.label_412
.label_413:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_412:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x405106
	.globl sub_405106
	.type sub_405106, @function
sub_405106:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405110
	.globl fdadvise
	.type fdadvise, @function
fdadvise:

	jmp	posix_fadvise
	.section	.text
	.align	16
	#Procedure 0x405115
	.globl sub_405115
	.type sub_405115, @function
sub_405115:

	nop	word ptr cs:[rax + rax]
.label_414:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x405125
	.globl sub_405125
	.type sub_405125, @function
sub_405125:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405133
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
	je	.label_415
	test	r15, r15
	je	.label_414
.label_415:
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
	.align	16
	#Procedure 0x405170
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x405178
	.globl sub_405178
	.type sub_405178, @function
sub_405178:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405180

	.globl fmt
	.type fmt, @function
fmt:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rdi
	mov	esi, 2
	call	fadvise
	mov	byte ptr [rip + tabs],  0
	mov	dword ptr [rip + other_indent],  0
	mov	dword ptr [rip + in_column],  0
	jmp	.label_484
	.section	.text
	.align	16
	#Procedure 0x4051b5
	.globl sub_4051b5
	.type sub_4051b5, @function
sub_4051b5:

	nop	word ptr cs:[rax + rax]
.label_490:
	mov	eax, dword ptr [rip + in_column]
	inc	eax
	mov	dword ptr [rip + in_column],  eax
.label_484:
	mov	rax, qword ptr [r14 + 8]
	cmp	rax, qword ptr [r14 + 0x10]
	jae	.label_493
	lea	rcx, [rax + 1]
	mov	qword ptr [r14 + 8], rcx
	movzx	ebp, byte ptr [rax]
.label_503:
	cmp	ebp, 9
	je	.label_497
	cmp	ebp, 0x20
	je	.label_490
	jmp	.label_495
	.section	.text
	.align	16
	#Procedure 0x4051ef
	.globl sub_4051ef
	.type sub_4051ef, @function
sub_4051ef:

	nop	
.label_497:
	mov	byte ptr [rip + tabs],  1
	mov	ecx, dword ptr [rip + in_column]
	mov	eax, ecx
	sar	eax, 0x1f
	shr	eax, 0x1d
	add	eax, ecx
	and	eax, 0xfffffff8
	add	eax, 8
	mov	dword ptr [rip + in_column],  eax
	jmp	.label_484
.label_493:
	mov	rdi, r14
	call	__uflow
	mov	ebp, eax
	jmp	.label_503
.label_495:
	cmp	dword ptr [rip + prefix_length],  0
	je	.label_421
	mov	eax, dword ptr [rip + in_column]
	mov	dword ptr [rip + next_prefix_indent],  eax
	mov	rbx, qword ptr [rip + prefix]
	mov	al, byte ptr [rbx]
	test	al, al
	je	.label_424
	inc	rbx
	jmp	.label_428
.label_421:
	mov	eax, dword ptr [rip + prefix_lead_space]
	mov	ecx, dword ptr [rip + in_column]
	cmp	eax, ecx
	cmovle	ecx, eax
	mov	dword ptr [rip + next_prefix_indent],  ecx
	jmp	.label_429
.label_443:
	mov	rdi, r14
	call	__uflow
	mov	ebp, eax
	jmp	.label_439
.label_428:
	movzx	eax, al
	cmp	ebp, eax
	jne	.label_429
	inc	dword ptr [rip + in_column]
	mov	rax, qword ptr [r14 + 8]
	cmp	rax, qword ptr [r14 + 0x10]
	jae	.label_443
	lea	rcx, [rax + 1]
	mov	qword ptr [r14 + 8], rcx
	movzx	ebp, byte ptr [rax]
.label_439:
	movzx	eax, byte ptr [rbx]
	inc	rbx
	test	al, al
	jne	.label_428
	jmp	.label_424
	.section	.text
	.align	16
	#Procedure 0x4052a2
	.globl sub_4052a2
	.type sub_4052a2, @function
sub_4052a2:

	nop	word ptr cs:[rax + rax]
.label_460:
	lea	rcx, [rax + 1]
	mov	qword ptr [r14 + 8], rcx
	movzx	ebp, byte ptr [rax]
.label_424:
	cmp	ebp, 9
	je	.label_454
	cmp	ebp, 0x20
	jne	.label_429
	mov	eax, dword ptr [rip + in_column]
	inc	eax
	jmp	.label_456
	.section	.text
	.align	16
	#Procedure 0x4052cf
	.globl sub_4052cf
	.type sub_4052cf, @function
sub_4052cf:

	nop	
.label_454:
	mov	byte ptr [rip + tabs],  1
	mov	ecx, dword ptr [rip + in_column]
	mov	eax, ecx
	sar	eax, 0x1f
	shr	eax, 0x1d
	add	eax, ecx
	and	eax, 0xfffffff8
	add	eax, 8
.label_456:
	mov	dword ptr [rip + in_column],  eax
	mov	rax, qword ptr [r14 + 8]
	cmp	rax, qword ptr [r14 + 0x10]
	jb	.label_460
	mov	rdi, r14
	call	__uflow
	mov	ebp, eax
	jmp	.label_424
.label_429:
	mov	dword ptr [rip + next_char],  ebp
	mov	r15d, OFFSET FLAT:unused_word_type
	mov	r12d, OFFSET FLAT:in_column
	jmp	.label_465
.label_451:
	mov	ebp, dword ptr [rip + next_char]
	nop	word ptr cs:[rax + rax]
.label_465:
	mov	dword ptr [rip + last_line_length],  0
	jmp	.label_462
.label_472:
	mov	eax, dword ptr [rip + prefix_lead_space]
	mov	ecx, dword ptr [rip + in_column]
	cmp	eax, ecx
	cmovle	ecx, eax
	mov	dword ptr [rip + next_prefix_indent],  ecx
	nop	word ptr cs:[rax + rax]
.label_462:
	cmp	ebp, -1
	je	.label_444
	cmp	ebp, 0xa
	je	.label_444
	mov	eax, dword ptr [rip + next_prefix_indent]
	cmp	eax, dword ptr [rip + prefix_lead_space]
	jl	.label_444
	mov	ecx, dword ptr [rip + in_column]
	mov	edx, dword ptr [rip + prefix_full_length]
	add	edx, eax
	cmp	ecx, edx
	jge	.label_481
	nop	
.label_444:
	mov	dword ptr [rip + out_column],  0
	mov	ebx, dword ptr [rip + next_prefix_indent]
	cmp	dword ptr [rip + in_column],  ebx
	jg	.label_483
	cmp	ebp, -1
	je	.label_487
	cmp	ebp, 0xa
	jne	.label_483
	mov	ebx, ebp
	jmp	.label_427
	.section	.text
	.align	16
	#Procedure 0x4053b9
	.globl sub_4053b9
	.type sub_4053b9, @function
sub_4053b9:

	nop	dword ptr [rax]
.label_483:
	xor	eax, eax
	cmp	byte ptr [rip + tabs],  1
	jne	.label_430
	cmp	ebx, 8
	jl	.label_430
	mov	r13d, ebx
	sar	r13d, 0x1f
	shr	r13d, 0x1d
	add	r13d, ebx
	and	r13d, 0xfffffff8
	cmp	r13d, 2
	jl	.label_430
	xor	ecx, ecx
	jmp	.label_425
.label_487:
	mov	ebx, ebp
	jmp	.label_427
.label_437:
	mov	esi, 9
	call	__overflow
	mov	ecx, dword ptr [rip + out_column]
	jmp	.label_416
	.section	.text
	.align	16
	#Procedure 0x40540d
	.globl sub_40540d
	.type sub_40540d, @function
sub_40540d:

	nop	dword ptr [rax]
.label_425:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_437
	lea	rdx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rax], 9
.label_416:
	mov	eax, ecx
	sar	eax, 0x1f
	shr	eax, 0x1d
	add	eax, ecx
	and	eax, 0xfffffff8
	add	eax, 8
	mov	dword ptr [rip + out_column],  eax
	cmp	eax, r13d
	mov	ecx, eax
	jl	.label_425
	jmp	.label_430
	.section	.text
	.align	16
	#Procedure 0x40544b
	.globl sub_40544b
	.type sub_40544b, @function
sub_40544b:

	nop	dword ptr [rax + rax]
.label_440:
	inc	eax
	mov	dword ptr [rip + out_column],  eax
.label_430:
	cmp	eax, ebx
	jge	.label_432
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rdi + 0x28]
	cmp	rcx, qword ptr [rdi + 0x30]
	jae	.label_435
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], 0x20
	jmp	.label_440
.label_435:
	mov	esi, 0x20
	call	__overflow
	mov	eax, dword ptr [rip + out_column]
	jmp	.label_440
	.section	.text
	.align	16
	#Procedure 0x40548c
	.globl sub_40548c
	.type sub_40548c, @function
sub_40548c:

	nop	dword ptr [rax]
.label_432:
	mov	r13d, dword ptr [rip + in_column]
	cmp	eax, r13d
	jne	.label_448
	mov	ecx, eax
	mov	r13d, eax
	jmp	.label_464
	.section	.text
	.align	16
	#Procedure 0x4054a3
	.globl sub_4054a3
	.type sub_4054a3, @function
sub_4054a3:

	nop	word ptr cs:[rax + rax]
.label_448:
	mov	rbx, qword ptr [rip + prefix]
	jmp	.label_452
.label_458:
	call	__overflow
	mov	eax, dword ptr [rip + out_column]
	mov	r13d, dword ptr [rip + in_column]
	jmp	.label_455
	.section	.text
	.align	16
	#Procedure 0x4054cd
	.globl sub_4054cd
	.type sub_4054cd, @function
sub_4054cd:

	nop	dword ptr [rax]
.label_452:
	movzx	esi, byte ptr [rbx]
	test	esi, esi
	je	.label_459
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rdi + 0x28]
	cmp	rcx, qword ptr [rdi + 0x30]
	jae	.label_458
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], sil
.label_455:
	inc	rbx
	inc	eax
	mov	dword ptr [rip + out_column],  eax
	cmp	eax, r13d
	mov	ecx, r13d
	jne	.label_452
	jmp	.label_464
.label_459:
	mov	ecx, eax
.label_464:
	cmp	ebp, -1
	je	.label_466
	mov	ebx, 0xa
	cmp	ebp, 0xa
	je	.label_427
	cmp	byte ptr [rip + tabs],  1
	jne	.label_468
	mov	ebx, r13d
	sar	ebx, 0x1f
	shr	ebx, 0x1d
	add	ebx, r13d
	and	ebx, 0xfffffff8
	lea	eax, [rcx + 1]
	cmp	eax, ebx
	jge	.label_468
	cmp	ecx, ebx
	jl	.label_477
	mov	eax, ecx
	jmp	.label_470
	.section	.text
	.align	16
	#Procedure 0x405547
	.globl sub_405547
	.type sub_405547, @function
sub_405547:

	nop	word ptr [rax + rax]
.label_466:
	mov	eax, dword ptr [rip + prefix_length]
	add	eax, dword ptr [rip + next_prefix_indent]
	mov	ebx, 0xffffffff
	cmp	r13d, eax
	jl	.label_427
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_478
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
	jmp	.label_427
.label_468:
	mov	eax, ecx
	jmp	.label_470
.label_489:
	mov	esi, 9
	call	__overflow
	mov	ecx, dword ptr [rip + out_column]
	jmp	.label_485
	.section	.text
	.align	16
	#Procedure 0x4055a5
	.globl sub_4055a5
	.type sub_4055a5, @function
sub_4055a5:

	nop	word ptr cs:[rax + rax]
.label_477:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_489
	lea	rdx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rax], 9
.label_485:
	mov	eax, ecx
	sar	eax, 0x1f
	shr	eax, 0x1d
	add	eax, ecx
	and	eax, 0xfffffff8
	add	eax, 8
	mov	dword ptr [rip + out_column],  eax
	cmp	eax, ebx
	mov	ecx, eax
	jl	.label_477
.label_470:
	cmp	eax, r13d
	jl	.label_496
	mov	ebx, ebp
	jmp	.label_427
.label_419:
	mov	esi, 0x20
	call	__overflow
	mov	eax, dword ptr [rip + out_column]
	jmp	.label_502
	.section	.text
	.align	16
	#Procedure 0x405603
	.globl sub_405603
	.type sub_405603, @function
sub_405603:

	nop	word ptr cs:[rax + rax]
.label_496:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rdi + 0x28]
	cmp	rcx, qword ptr [rdi + 0x30]
	jae	.label_419
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], 0x20
.label_502:
	inc	eax
	mov	dword ptr [rip + out_column],  eax
	cmp	eax, r13d
	jl	.label_496
	mov	ebx, ebp
	jmp	.label_427
.label_478:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_427
	.section	.text
	.align	16
	#Procedure 0x405649
	.globl sub_405649
	.type sub_405649, @function
sub_405649:

	nop	dword ptr [rax]
.label_445:
	lea	rcx, [rax + 1]
	mov	qword ptr [r14 + 8], rcx
	movzx	ebx, byte ptr [rax]
.label_427:
	cmp	ebx, -1
	je	.label_422
	cmp	ebx, 0xa
	je	.label_441
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_438
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], bl
.label_450:
	mov	rax, qword ptr [r14 + 8]
	cmp	rax, qword ptr [r14 + 0x10]
	jb	.label_445
	mov	rdi, r14
	call	__uflow
	mov	ebx, eax
	jmp	.label_427
.label_438:
	movzx	esi, bl
	call	__overflow
	jmp	.label_450
	.section	.text
	.align	16
	#Procedure 0x4056a4
	.globl sub_4056a4
	.type sub_4056a4, @function
sub_4056a4:

	nop	word ptr cs:[rax + rax]
.label_441:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_474
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
.label_426:
	mov	dword ptr [rip + in_column],  0
	jmp	.label_457
	.section	.text
	.align	16
	#Procedure 0x4056dc
	.globl sub_4056dc
	.type sub_4056dc, @function
sub_4056dc:

	nop	dword ptr [rax]
.label_488:
	mov	eax, dword ptr [rip + in_column]
	inc	eax
	mov	dword ptr [rip + in_column],  eax
.label_457:
	mov	rax, qword ptr [r14 + 8]
	cmp	rax, qword ptr [r14 + 0x10]
	jae	.label_461
	lea	rcx, [rax + 1]
	mov	qword ptr [r14 + 8], rcx
	movzx	ebp, byte ptr [rax]
.label_469:
	cmp	ebp, 9
	je	.label_463
	cmp	ebp, 0x20
	je	.label_488
	jmp	.label_467
	.section	.text
	.align	16
	#Procedure 0x40570f
	.globl sub_40570f
	.type sub_40570f, @function
sub_40570f:

	nop	
.label_463:
	mov	byte ptr [rip + tabs],  1
	mov	ecx, dword ptr [rip + in_column]
	mov	eax, ecx
	sar	eax, 0x1f
	shr	eax, 0x1d
	add	eax, ecx
	and	eax, 0xfffffff8
	add	eax, 8
	mov	dword ptr [rip + in_column],  eax
	jmp	.label_457
.label_461:
	mov	rdi, r14
	call	__uflow
	mov	ebp, eax
	jmp	.label_469
	.section	.text
	.align	16
	#Procedure 0x405741
	.globl sub_405741
	.type sub_405741, @function
sub_405741:

	nop	word ptr cs:[rax + rax]
.label_467:
	cmp	dword ptr [rip + prefix_length],  0
	je	.label_472
	mov	eax, dword ptr [rip + in_column]
	mov	dword ptr [rip + next_prefix_indent],  eax
	mov	rbx, qword ptr [rip + prefix]
	mov	al, byte ptr [rbx]
	test	al, al
	je	.label_423
	inc	rbx
	nop	dword ptr [rax]
.label_486:
	movzx	eax, al
	cmp	ebp, eax
	jne	.label_462
	inc	dword ptr [rip + in_column]
	mov	rax, qword ptr [r14 + 8]
	cmp	rax, qword ptr [r14 + 0x10]
	jae	.label_482
	lea	rcx, [rax + 1]
	mov	qword ptr [r14 + 8], rcx
	movzx	ebp, byte ptr [rax]
.label_436:
	movzx	eax, byte ptr [rbx]
	inc	rbx
	test	al, al
	jne	.label_486
	jmp	.label_423
.label_482:
	mov	rdi, r14
	call	__uflow
	mov	ebp, eax
	jmp	.label_436
	.section	.text
	.align	16
	#Procedure 0x4057be
	.globl sub_4057be
	.type sub_4057be, @function
sub_4057be:

	nop	
.label_418:
	lea	rcx, [rax + 1]
	mov	qword ptr [r14 + 8], rcx
	movzx	ebp, byte ptr [rax]
.label_423:
	cmp	ebp, 9
	je	.label_491
	cmp	ebp, 0x20
	jne	.label_462
	mov	eax, dword ptr [rip + in_column]
	inc	eax
	jmp	.label_494
	.section	.text
	.align	16
	#Procedure 0x4057e3
	.globl sub_4057e3
	.type sub_4057e3, @function
sub_4057e3:

	nop	word ptr cs:[rax + rax]
.label_491:
	mov	byte ptr [rip + tabs],  1
	mov	ecx, dword ptr [rip + in_column]
	mov	eax, ecx
	sar	eax, 0x1f
	shr	eax, 0x1d
	add	eax, ecx
	and	eax, 0xfffffff8
	add	eax, 8
.label_494:
	mov	dword ptr [rip + in_column],  eax
	mov	rax, qword ptr [r14 + 8]
	cmp	rax, qword ptr [r14 + 0x10]
	jb	.label_418
	mov	rdi, r14
	call	__uflow
	mov	ebp, eax
	jmp	.label_423
.label_474:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_426
.label_481:
	mov	dword ptr [rip + prefix_indent],  eax
	mov	dword ptr [rip + first_indent],  ecx
	mov	qword ptr [rip + wptr], OFFSET FLAT:parabuf
	mov	qword ptr [rip + word_limit], OFFSET FLAT:unused_word_type
	mov	rdi, r14
	mov	esi, ebp
	call	get_line
	mov	ecx, dword ptr [rip + next_prefix_indent]
	mov	ebp, dword ptr [rip + prefix_indent]
	cmp	ecx, ebp
	jne	.label_433
	mov	esi, dword ptr [rip + prefix_full_length]
	add	esi, ecx
	cmp	dword ptr [rip + in_column],  esi
	setge	bl
	cmp	eax, 0xa
	setne	dl
	cmp	eax, -1
	setne	sil
	and	sil, dl
	and	sil, bl
	jmp	.label_442
.label_433:
	xor	esi, esi
.label_442:
	cmp	byte ptr [rip + split],  1
	jne	.label_449
	mov	ecx, dword ptr [rip + first_indent]
	mov	dword ptr [rip + other_indent],  ecx
	jmp	.label_417
.label_449:
	mov	dl, byte ptr [rip + crown]
	test	dl, dl
	je	.label_453
	test	sil, sil
	mov	edx, OFFSET FLAT:first_indent
	cmovne	rdx, r12
	mov	edx, dword ptr [rdx]
	mov	dword ptr [rip + other_indent],  edx
	cmp	ecx, ebp
	jne	.label_417
	add	ecx, dword ptr [rip + prefix_full_length]
	cmp	dword ptr [rip + in_column],  ecx
	jl	.label_417
	cmp	eax, -1
	je	.label_417
	cmp	eax, 0xa
	je	.label_417
.label_471:
	mov	rdi, r14
	mov	esi, eax
	call	get_line
	mov	edx, dword ptr [rip + next_prefix_indent]
	cmp	edx, dword ptr [rip + prefix_indent]
	jne	.label_417
	mov	ecx, dword ptr [rip + in_column]
	add	edx, dword ptr [rip + prefix_full_length]
	cmp	ecx, edx
	jl	.label_417
	cmp	eax, -1
	je	.label_417
	cmp	eax, 0xa
	je	.label_417
	cmp	ecx, dword ptr [rip + other_indent]
	je	.label_471
	jmp	.label_417
.label_453:
	cmp	byte ptr [rip + tagged],  1
	jne	.label_473
	test	sil, sil
	je	.label_475
	mov	edi, dword ptr [rip + in_column]
	mov	esi, dword ptr [rip + first_indent]
	cmp	edi, esi
	jne	.label_476
	mov	esi, edi
	jmp	.label_479
.label_473:
	mov	esi, dword ptr [rip + first_indent]
	mov	dword ptr [rip + other_indent],  esi
	jmp	.label_480
.label_475:
	mov	esi, dword ptr [rip + first_indent]
.label_479:
	cmp	dword ptr [rip + other_indent],  esi
	jne	.label_480
	xor	edx, edx
	test	esi, esi
	sete	dl
	lea	edx, [rdx + rdx*2]
	mov	dword ptr [rip + other_indent],  edx
	jmp	.label_480
.label_476:
	mov	dword ptr [rip + other_indent],  edi
.label_480:
	mov	dl, byte ptr [rip + tagged]
	test	dl, dl
	je	.label_501
	cmp	ecx, ebp
	jne	.label_417
	mov	edx, dword ptr [rip + in_column]
	add	ecx, dword ptr [rip + prefix_full_length]
	cmp	edx, ecx
	jl	.label_417
	cmp	eax, -1
	je	.label_417
	cmp	eax, 0xa
	je	.label_417
	cmp	edx, esi
	je	.label_417
.label_420:
	mov	rdi, r14
	mov	esi, eax
	call	get_line
	mov	edx, dword ptr [rip + next_prefix_indent]
	cmp	edx, dword ptr [rip + prefix_indent]
	jne	.label_417
	mov	ecx, dword ptr [rip + in_column]
	add	edx, dword ptr [rip + prefix_full_length]
	cmp	ecx, edx
	jl	.label_417
	cmp	eax, -1
	je	.label_417
	cmp	eax, 0xa
	je	.label_417
	cmp	ecx, dword ptr [rip + other_indent]
	je	.label_420
	jmp	.label_417
.label_501:
	cmp	ecx, ebp
	jne	.label_417
.label_431:
	mov	edx, dword ptr [rip + in_column]
	add	ecx, dword ptr [rip + prefix_full_length]
	cmp	edx, ecx
	jl	.label_417
	cmp	eax, -1
	je	.label_417
	cmp	eax, 0xa
	je	.label_417
	cmp	edx, dword ptr [rip + other_indent]
	jne	.label_417
	mov	rdi, r14
	mov	esi, eax
	call	get_line
	mov	ecx, dword ptr [rip + next_prefix_indent]
	cmp	ecx, dword ptr [rip + prefix_indent]
	je	.label_431
.label_417:
	mov	rbp, qword ptr [rip + word_limit]
	cmp	rbp, r15
	jbe	.label_434
	or	byte ptr [rbp - 0x18], 0xa
	mov	dword ptr [rip + next_char],  eax
	call	fmt_paragraph
	mov	esi, dword ptr [rip + first_indent]
	mov	edi, OFFSET FLAT:unused_word_type
	call	put_line
	mov	rbx, qword ptr [rip + label_446]
	jmp	.label_447
	.section	.text
	.align	16
	#Procedure 0x405a8f
	.globl sub_405a8f
	.type sub_405a8f, @function
sub_405a8f:

	nop	
.label_492:
	mov	esi, dword ptr [rip + other_indent]
	mov	rdi, rbx
	call	put_line
	mov	rbx, qword ptr [rbx + 0x20]
.label_447:
	cmp	rbx, rbp
	jne	.label_492
	jmp	.label_451
.label_422:
	mov	dword ptr [rip + next_char],  0xffffffff
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_434:
	mov	edi, OFFSET FLAT:label_498
	mov	esi, OFFSET FLAT:label_499
	mov	edx, 0x25e
	mov	ecx, OFFSET FLAT:label_500
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x405ade
	.globl sub_405ade
	.type sub_405ade, @function
sub_405ade:

	nop	
	.section	.text
	.align	16
	#Procedure 0x405ae0

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
	je	.label_504
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
.label_504:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405b48
	.globl sub_405b48
	.type sub_405b48, @function
sub_405b48:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405b50
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_95]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_96]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_97]
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
	#Procedure 0x405ba4
	.globl sub_405ba4
	.type sub_405ba4, @function
sub_405ba4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405bb0

	.globl flush_paragraph
	.type flush_paragraph, @function
flush_paragraph:
	push	r15
	push	r14
	push	rbx
	mov	rbx, qword ptr [rip + word_limit]
	mov	eax, OFFSET FLAT:unused_word_type
	cmp	rbx, rax
	je	.label_511
	call	fmt_paragraph
	mov	rsi, qword ptr [rip + label_446]
	cmp	rsi, rbx
	je	.label_509
	movabs	r8, 0x7ffffffffffffff7
	mov	rcx, qword ptr [rsi + 0x18]
	lea	rdx, [r8 + 8]
	mov	r14, rbx
	nop	dword ptr [rax]
.label_505:
	mov	rdi, qword ptr [rsi + 0x20]
	mov	rax, qword ptr [rdi + 0x18]
	sub	rcx, rax
	cmp	rcx, rdx
	cmovl	r14, rsi
	cmovg	rcx, rdx
	lea	rdx, [rcx + 9]
	cmp	rcx, r8
	cmovge	rdx, rcx
	cmp	rdi, rbx
	mov	rcx, rax
	mov	rsi, rdi
	jne	.label_505
	jmp	.label_512
.label_511:
	mov	rdx, qword ptr [rip + wptr]
	mov	eax, OFFSET FLAT:parabuf
	sub	rdx, rax
	mov	rcx, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:parabuf
	mov	esi, 1
	call	fwrite_unlocked
	mov	qword ptr [rip + wptr], OFFSET FLAT:parabuf
	jmp	.label_507
.label_509:
	mov	r14, rbx
.label_512:
	mov	esi, dword ptr [rip + first_indent]
	mov	edi, OFFSET FLAT:unused_word_type
	call	put_line
	mov	rbx, qword ptr [rip + label_446]
	jmp	.label_508
	.section	.text
	.align	16
	#Procedure 0x405c6f
	.globl sub_405c6f
	.type sub_405c6f, @function
sub_405c6f:

	nop	
.label_506:
	mov	esi, dword ptr [rip + other_indent]
	mov	rdi, rbx
	call	put_line
	mov	rbx, qword ptr [rbx + 0x20]
.label_508:
	cmp	rbx, r14
	jne	.label_506
	mov	rsi, qword ptr [r14]
	mov	rbx, qword ptr [rip + wptr]
	mov	rdx, rbx
	sub	rdx, rsi
	mov	r15d, OFFSET FLAT:parabuf
	mov	edi, OFFSET FLAT:parabuf
	call	memmove
	mov	eax, dword ptr [r14]
	sub	eax, r15d
	cdqe	
	sub	rbx, rax
	mov	qword ptr [rip + wptr],  rbx
	mov	rbx, qword ptr [rip + word_limit]
	cmp	r14, rbx
	ja	.label_513
	neg	rax
	mov	rcx, r14
	nop	dword ptr [rax + rax]
.label_510:
	add	qword ptr [rcx], rax
	add	rcx, 0x28
	mov	rbx, qword ptr [rip + word_limit]
	cmp	rcx, rbx
	jbe	.label_510
.label_513:
	mov	edx, 0x28
	sub	rdx, r14
	add	rdx, rbx
	mov	r15d, OFFSET FLAT:unused_word_type
	mov	edi, OFFSET FLAT:unused_word_type
	mov	rsi, r14
	call	memmove
	sub	r14, r15
	movabs	rcx, 0x9999999999999999
	mov	rax, r14
	imul	rcx
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 4
	add	rdx, rax
	lea	rax, [rdx + rdx*4]
	lea	rax, [rbx + rax*8]
	mov	qword ptr [rip + word_limit],  rax
.label_507:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x405d37
	.globl sub_405d37
	.type sub_405d37, @function
sub_405d37:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405d40

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
	je	.label_514
	cmp	r15, -2
	jb	.label_514
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_514
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_514:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x405d96
	.globl sub_405d96
	.type sub_405d96, @function
sub_405d96:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405da0
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_95]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_96]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_97]
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
	#Procedure 0x405e0f
	.globl sub_405e0f
	.type sub_405e0f, @function
sub_405e0f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x405e10
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_515
	test	rdx, rdx
	je	.label_515
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_515:
	push	rax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405e3b
	.globl sub_405e3b
	.type sub_405e3b, @function
sub_405e3b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405e40

	.globl xdectoumax
	.type xdectoumax, @function
xdectoumax:
	push	rax
	mov	r10, r8
	mov	rax, rcx
	mov	rcx, rdx
	mov	rdx, rsi
	mov	dword ptr [rsp], r9d
	mov	esi, 0xa
	mov	r8, rax
	mov	r9, r10
	call	xnumtoumax
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x405e63
	.globl sub_405e63
	.type sub_405e63, @function
sub_405e63:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405e70
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
	je	.label_516
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
.label_516:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405ed1
	.globl sub_405ed1
	.type sub_405ed1, @function
sub_405ed1:

	nop	word ptr cs:[rax + rax]
.label_519:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_517
	test	rax, rax
	je	.label_518
.label_517:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x405ef4
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_518
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_519
	test	rbx, rbx
	jne	.label_519
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_518:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x405f28
	.globl sub_405f28
	.type sub_405f28, @function
sub_405f28:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405f30

	.globl fadvise
	.type fadvise, @function
fadvise:
	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_520
	call	fileno
	xor	esi, esi
	xor	edx, edx
	mov	edi, eax
	mov	ecx, ebx
	pop	rbx
	jmp	posix_fadvise
.label_520:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x405f4d
	.globl sub_405f4d
	.type sub_405f4d, @function
sub_405f4d:

	nop	dword ptr [rax]
.label_524:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_521
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_522
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_112
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	.section	.text
	.align	16
	#Procedure 0x405f91

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_523
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_524
	cmp	dword ptr [rbp], 0x20
	jne	.label_524
.label_523:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_525
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_525:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_522:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_323
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406010

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
	je	.label_532
	mov	edx, OFFSET FLAT:label_541
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_528
.label_532:
	mov	edx, OFFSET FLAT:label_530
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_528:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_535
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
	mov	esi, OFFSET FLAT:label_531
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_537
	jmp	qword ptr [(r12 * 8) + label_538]
.label_657:
	add	rsp, 8
	jmp	.label_529
.label_537:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_544
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
	jmp	.label_529
.label_658:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_536
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
.label_659:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_526
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
.label_660:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_542
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
.label_661:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_539
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
	jmp	.label_529
.label_662:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_534
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
	jmp	.label_529
.label_663:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_540
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
	jmp	.label_529
.label_664:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_543
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
	jmp	.label_529
.label_666:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_527
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
	jmp	.label_529
.label_665:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_533
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
.label_529:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x406368
	.globl sub_406368
	.type sub_406368, @function
sub_406368:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406370
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	.section	.text
	.align	16
	#Procedure 0x406378
	.globl sub_406378
	.type sub_406378, @function
sub_406378:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4063e5
	.globl sub_4063e5
	.type sub_4063e5, @function
sub_4063e5:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4063f2
	.globl sub_4063f2
	.type sub_4063f2, @function
sub_4063f2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406416
	.globl sub_406416
	.type sub_406416, @function
sub_406416:

	nop	word ptr cs:[rax + rax]
