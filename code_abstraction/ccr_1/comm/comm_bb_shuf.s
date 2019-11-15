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
	.section	.text
	.align	16
	#Procedure 0x401670

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_9
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_10
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x401695
	.globl sub_401695
	.type sub_401695, @function
sub_401695:

	nop	word ptr cs:[rax + rax]
.label_11:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4016a5
	.globl sub_4016a5
	.type sub_4016a5, @function
sub_4016a5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4016af
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_11
	call	rpl_calloc
	test	rax, rax
	je	.label_11
	pop	rcx
	ret	
.label_12:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x4016d3
	.globl sub_4016d3
	.type sub_4016d3, @function
sub_4016d3:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4016db
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_12
	mov	eax, 0x80001f
	mov	ecx, edi
	shr	eax, cl
	and	eax, 1
	ret	
.label_13:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x4016f3
	.globl sub_4016f3
	.type sub_4016f3, @function
sub_4016f3:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4016f5
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_13
	movabs	rax, 0x7e0000007e03ff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
	.section	.text
	.align	16
	#Procedure 0x401710

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_14
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_16
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_14
.label_16:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_14
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_15
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_15:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_14:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	.section	.text
	.align	16
	#Procedure 0x401787
	.globl sub_401787
	.type sub_401787, @function
sub_401787:

	nop	word ptr [rax + rax]
.label_20:
	call	xalloc_die
.label_19:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40179a
	.globl sub_40179a
	.type sub_40179a, @function
sub_40179a:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4017a1

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_17
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_20
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_18
.label_17:
	test	rcx, rcx
	jne	.label_21
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	xor	ecx, ecx
	cmp	r8, 0x80
	seta	cl
	add	rcx, rax
.label_21:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_19
.label_18:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
	.section	.text
	.align	16
	#Procedure 0x401810

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_22
	ret	
.label_22:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	.section	.text
	.align	16
	#Procedure 0x401823
	.globl sub_401823
	.type sub_401823, @function
sub_401823:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401830

	.globl initbuffer
	.type initbuffer, @function
initbuffer:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rdi], xmm0
	mov	qword ptr [rdi + 0x10], 0
	ret	
	.section	.text
	.align	16
	#Procedure 0x40183f
	.globl sub_40183f
	.type sub_40183f, @function
sub_40183f:

	nop	
.label_25:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_23
.label_24:
	mov	eax, 1
	test	bpl, bpl
	je	.label_23
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
.label_23:
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
	#Procedure 0x401888
	.globl sub_401888
	.type sub_401888, @function
sub_401888:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40188b

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
	je	.label_25
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_24
	jmp	.label_23
	.section	.text
	.align	16
	#Procedure 0x4018c0
	.globl c_islower
	.type c_islower, @function
c_islower:

	add	edi, -0x61
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x4018ca
	.globl sub_4018ca
	.type sub_4018ca, @function
sub_4018ca:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4018d0

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
	je	.label_26
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
.label_26:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x401922
	.globl sub_401922
	.type sub_401922, @function
sub_401922:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401930
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_27:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_27
	jmp	version_etc_arn
	.section	.text
	.align	16
	#Procedure 0x401951
	.globl sub_401951
	.type sub_401951, @function
sub_401951:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401960
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
	#Procedure 0x40196f
	.globl sub_40196f
	.type sub_40196f, @function
sub_40196f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401970

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
	jne	.label_28
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
	je	.label_29
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_33
	mov	eax, OFFSET FLAT:label_34
	jmp	.label_32
.label_29:
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
	je	.label_37
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_30
	mov	eax, OFFSET FLAT:label_31
	jmp	.label_32
.label_37:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:label_35
	mov	eax, OFFSET FLAT:label_36
.label_32:
	cmove	rax, rcx
.label_28:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401a2d
	.globl sub_401a2d
	.type sub_401a2d, @function
sub_401a2d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401a30

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	.section	.text
	.align	16
	#Procedure 0x401a39
	.globl sub_401a39
	.type sub_401a39, @function
sub_401a39:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401a40

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
	mov	rax,  qword ptr [word ptr [rip + label_38]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_39]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_40]]
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
	#Procedure 0x401aa8
	.globl sub_401aa8
	.type sub_401aa8, @function
sub_401aa8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401ab0
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	mov	rax, rdx
	xor	edx, edx
	mov	rcx, rax
	jmp	quotearg_alloc_mem
	.section	.text
	.align	16
	#Procedure 0x401aba
	.globl sub_401aba
	.type sub_401aba, @function
sub_401aba:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401ac0

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
	je	.label_41
	mov	qword ptr [rax], rbx
.label_41:
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
	#Procedure 0x401bac
	.globl sub_401bac
	.type sub_401bac, @function
sub_401bac:

	nop	dword ptr [rax]
.label_44:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_42
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_42:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401be4
	.globl sub_401be4
	.type sub_401be4, @function
sub_401be4:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401be6

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
	jne	.label_43
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_43
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_44
.label_43:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
	.section	.text
	.align	16
	#Procedure 0x401c20
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
	#Procedure 0x401c53
	.globl sub_401c53
	.type sub_401c53, @function
sub_401c53:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401c60

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
	#Procedure 0x401c96
	.globl sub_401c96
	.type sub_401c96, @function
sub_401c96:

	nop	word ptr cs:[rax + rax]
.label_46:
	mov	ecx, 1
	cmova	eax, ecx
.label_45:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x401cb0
	.globl sub_401cb0
	.type sub_401cb0, @function
sub_401cb0:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401cbd

	.globl memcmp2
	.type memcmp2, @function
memcmp2:
	push	r14
	push	rbx
	push	rax
	mov	r14, rcx
	mov	rbx, rsi
	cmp	rbx, r14
	mov	rax, r14
	cmovbe	rax, rbx
	mov	rsi, rdx
	mov	rdx, rax
	call	memcmp
	test	eax, eax
	mov	ecx, eax
	jne	.label_47
	mov	ecx, 0xffffffff
	cmp	rbx, r14
	jae	.label_46
.label_47:
	mov	eax, ecx
	jmp	.label_45
	.section	.text
	.align	16
	#Procedure 0x401cf0
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
	#Procedure 0x401d62
	.globl sub_401d62
	.type sub_401d62, @function
sub_401d62:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401d70
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
	#Procedure 0x401d86
	.globl sub_401d86
	.type sub_401d86, @function
sub_401d86:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401d90

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
	je	.label_48
	mov	rsi, rbx
	mov	rdx, r12
	mov	rcx, r15
	mov	r8, r14
	call	collate_error
.label_48:
	mov	eax, ebp
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401dd2
	.globl sub_401dd2
	.type sub_401dd2, @function
sub_401dd2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401de0
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
	#Procedure 0x401df9
	.globl sub_401df9
	.type sub_401df9, @function
sub_401df9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401e00

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x401e0a
	.globl sub_401e0a
	.type sub_401e0a, @function
sub_401e0a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401e10
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
	#Procedure 0x401e20

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	.section	.text
	.align	16
	#Procedure 0x401e29
	.globl sub_401e29
	.type sub_401e29, @function
sub_401e29:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401e30

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quote_n
	.section	.text
	.align	16
	#Procedure 0x401e3a
	.globl sub_401e3a
	.type sub_401e3a, @function
sub_401e3a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401e40

	.globl check_order
	.type check_order, @function
check_order:
	push	rbp
	push	rbx
	push	rax
	mov	eax,  dword ptr [dword ptr [rip + check_input_order]]
	cmp	eax, 1
	je	.label_49
	cmp	eax, 2
	je	.label_50
	cmp	byte ptr [byte ptr [rip + seen_unpairable]],  1
	jne	.label_50
.label_49:
	movsxd	rbx, edx
	cmp	byte ptr [byte ptr [rbx + seen_unpairable]],  0
	jne	.label_50
	mov	rax, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rdi + 0x10]
	dec	rax
	mov	rcx, qword ptr [rsi + 8]
	mov	rdx, qword ptr [rsi + 0x10]
	dec	rcx
	cmp	byte ptr [byte ptr [rip + hard_LC_COLLATE]],  0
	je	.label_52
	mov	rsi, rax
	call	xmemcoll
	jmp	.label_53
.label_52:
	mov	rsi, rax
	call	memcmp2
.label_53:
	test	eax, eax
	jle	.label_50
	xor	ebp, ebp
	cmp	dword ptr [dword ptr [rip + check_input_order]],  1
	sete	bpl
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_51
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebp
	mov	rdx, rcx
	mov	ecx, ebx
	call	error
	mov	byte ptr [byte ptr [rbx + seen_unpairable]],  1
.label_50:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401ee0

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
	#Procedure 0x401f29
	.globl sub_401f29
	.type sub_401f29, @function
sub_401f29:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401f30
	.globl freebuffer
	.type freebuffer, @function
freebuffer:

	mov	rdi, qword ptr [rdi + 0x10]
	jmp	free
	.section	.text
	.align	16
	#Procedure 0x401f39
	.globl sub_401f39
	.type sub_401f39, @function
sub_401f39:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401f40

	.globl compare_files
	.type compare_files, @function
compare_files:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x1c8
	mov	qword ptr [rsp + 8], rdi
	lea	r14, [rsp + 0x100]
	lea	r13, [rsp + 0x80]
	xor	r12d, r12d
	jmp	.label_74
.label_76:
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	jmp	.label_56
	.section	.text
	.align	16
	#Procedure 0x401f74
	.globl sub_401f74
	.type sub_401f74, @function
sub_401f74:

	nop	word ptr cs:[rax + rax]
.label_74:
	mov	ebx, 4
	mov	r15, r13
	mov	rbp, r14
	nop	dword ptr [rax + rax]
.label_60:
	mov	rdi, rbp
	call	initbuffer
	mov	qword ptr [r15], rbp
	add	rbp, 0x18
	add	r15, 8
	dec	rbx
	jne	.label_60
	lea	rbp, [r12 + r12*2]
	mov	qword ptr [rsp + rbp*4 + 0x60], 0
	mov	dword ptr [rsp + rbp*4 + 0x68], 0
	mov	rax, qword ptr [rsp + 8]
	mov	rax, qword ptr [rax + r12*8]
	cmp	byte ptr [rax], 0x2d
	jne	.label_67
	cmp	byte ptr [rax + 1], 0
	je	.label_76
.label_67:
	mov	rax, qword ptr [rsp + 8]
	mov	rdi, qword ptr [rax + r12*8]
	mov	esi, OFFSET FLAT:label_78
	call	fopen_safer
	mov	rdi, rax
.label_56:
	mov	qword ptr [rsp + r12*8 + 0x40], rdi
	test	rdi, rdi
	je	.label_75
	lea	rbx, [rsp + rbp*4 + 0x60]
	mov	esi, 2
	call	fadvise
	movsxd	rax, dword ptr [rbx]
	mov	rcx, r12
	shl	rcx, 5
	lea	rcx, [rsp + rcx + 0x80]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	rbp, qword ptr [rsp + r12*8 + 0x40]
	mov	al,  byte ptr [byte ptr [rip + delim]]
	test	al, al
	jne	.label_54
	mov	al, 0xa
	jmp	.label_68
	.section	.text
	.align	16
	#Procedure 0x40202d
	.globl sub_40202d
	.type sub_40202d, @function
sub_40202d:

	nop	dword ptr [rax]
.label_54:
	xor	eax, eax
.label_68:
	movzx	edx, al
	mov	rsi, rbp
	call	readlinebuffer_delim
	mov	qword ptr [rsp + r12*8 + 0x10], rax
	mov	rdi, rbp
	call	ferror_unlocked
	test	eax, eax
	jne	.label_75
	inc	r12
	add	r14, 0x60
	add	r13, 0x20
	cmp	r12, 1
	jle	.label_74
	mov	rax, qword ptr [rsp + 0x10]
	xor	r12d, r12d
	or	rax, qword ptr [rsp + 0x18]
	mov	r15d, 0
	mov	r13d, 0
	je	.label_83
	xor	r13d, r13d
	xor	r15d, r15d
	xor	r12d, r12d
	jmp	.label_55
.label_86:
	mov	al, cl
	jmp	.label_59
	.section	.text
	.align	16
	#Procedure 0x402095
	.globl sub_402095
	.type sub_402095, @function
sub_402095:

	nop	word ptr cs:[rax + rax]
.label_55:
	mov	word ptr [rsp + 0x20], 0
	mov	rcx, qword ptr [rsp + 0x10]
	test	rcx, rcx
	je	.label_64
	mov	rax, qword ptr [rsp + 0x18]
	test	rax, rax
	je	.label_71
	cmp	byte ptr [byte ptr [rip + hard_LC_COLLATE]],  0
	je	.label_73
	mov	rsi, qword ptr [rcx + 8]
	mov	rdi, qword ptr [rcx + 0x10]
	dec	rsi
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, qword ptr [rax + 0x10]
	dec	rcx
	call	xmemcoll
.label_59:
	test	eax, eax
	jne	.label_82
	inc	r13
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	edx, 3
	call	writeline
	mov	byte ptr [rsp + 0x21], 1
	jmp	.label_57
	.section	.text
	.align	16
	#Procedure 0x40210a
	.globl sub_40210a
	.type sub_40210a, @function
sub_40210a:

	nop	word ptr [rax + rax]
.label_64:
	mov	byte ptr [byte ptr [rip + seen_unpairable]],  1
	jmp	.label_88
.label_73:
	mov	rbx, qword ptr [rcx + 8]
	mov	rdi, qword ptr [rcx + 0x10]
	mov	rbp, qword ptr [rax + 8]
	mov	rsi, qword ptr [rax + 0x10]
	cmp	rbx, rbp
	mov	rdx, rbp
	cmovb	rdx, rbx
	dec	rdx
	call	memcmp
	test	eax, eax
	je	.label_72
.label_82:
	mov	byte ptr [byte ptr [rip + seen_unpairable]],  1
	test	eax, eax
	jle	.label_90
.label_88:
	inc	r15
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	edx, 2
	call	writeline
	mov	byte ptr [rsp + 0x21], 1
	jmp	.label_79
.label_72:
	xor	eax, eax
	cmp	rbx, rbp
	setne	cl
	jae	.label_86
	nop	dword ptr [rax + rax]
.label_71:
	mov	byte ptr [byte ptr [rip + seen_unpairable]],  1
.label_90:
	inc	r12
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	edx, 1
	call	writeline
.label_57:
	mov	byte ptr [rsp + 0x20], 1
.label_79:
	lea	rbp, [rsp + 0x68]
	xor	ebx, ebx
	xor	r14d, r14d
	nop	
.label_84:
	cmp	byte ptr [rsp + r14 + 0x20], 0
	je	.label_65
	mov	eax, dword ptr [rbp - 4]
	mov	dword ptr [rbp], eax
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
	inc	eax
	and	eax, 3
	mov	dword ptr [rbp - 8], eax
	lea	rax, [rsp + rax*8 + 0x80]
	mov	rdi, qword ptr [rax + rbx*4]
	mov	rsi, qword ptr [rsp + rbx + 0x40]
	movzx	eax,  byte ptr [byte ptr [rip + delim]]
	test	al, al
	jne	.label_85
	mov	al, 0xa
	jmp	.label_87
.label_85:
	xor	eax, eax
.label_87:
	movzx	edx, al
	call	readlinebuffer_delim
	mov	qword ptr [rsp + rbx + 0x10], rax
	test	rax, rax
	je	.label_89
	movsxd	rcx, dword ptr [rbp - 4]
	lea	rcx, [rsp + rcx*8 + 0x80]
	mov	rdi, qword ptr [rcx + rbx*4]
	lea	edx, [r14 + 1]
	mov	rsi, rax
	jmp	.label_77
	.section	.text
	.align	16
	#Procedure 0x40221d
	.globl sub_40221d
	.type sub_40221d, @function
sub_40221d:

	nop	dword ptr [rax]
.label_89:
	movsxd	rax, dword ptr [rbp]
	lea	rax, [rsp + rax*8 + 0x80]
	mov	rdi, qword ptr [rax + rbx*4]
	cmp	qword ptr [rdi + 0x10], 0
	je	.label_80
	movsxd	rax, dword ptr [rbp - 4]
	lea	rax, [rsp + rax*8 + 0x80]
	mov	rsi, qword ptr [rax + rbx*4]
	lea	edx, [r14 + 1]
.label_77:
	call	check_order
.label_80:
	mov	rdi, qword ptr [rsp + rbx + 0x40]
	call	ferror_unlocked
	test	eax, eax
	jne	.label_81
	mov	byte ptr [rsp + r14 + 0x20], 0
.label_65:
	inc	r14
	add	rbx, 8
	add	rbp, 0xc
	cmp	r14, 2
	jl	.label_84
	mov	rax, qword ptr [rsp + 0x10]
	or	rax, qword ptr [rsp + 0x18]
	jne	.label_55
.label_83:
	xor	ebx, ebx
	nop	
.label_66:
	mov	rdi, qword ptr [rsp + rbx*8 + 0x40]
	call	rpl_fclose
	test	eax, eax
	jne	.label_61
	inc	rbx
	cmp	rbx, 1
	jle	.label_66
	cmp	byte ptr [byte ptr [rip + total_option]],  1
	jne	.label_70
	lea	rsi, [rsp + 0x20]
	mov	rdi, r12
	call	umaxtostr
	mov	qword ptr [rsp + 8], rax
	mov	rax,  qword ptr [word ptr [rip + col_sep]]
	mov	qword ptr [rsp + 0x58], rax
	lea	rsi, [rsp + 0xe0]
	mov	rdi, r15
	call	umaxtostr
	mov	r15, rax
	mov	r12,  qword ptr [word ptr [rip + col_sep]]
	lea	rsi, [rsp + 0xc0]
	mov	rdi, r13
	call	umaxtostr
	mov	r14, rax
	mov	r13,  qword ptr [word ptr [rip + col_sep]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_63
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	al,  byte ptr [byte ptr [rip + delim]]
	test	al, al
	mov	ebx, 0xa
	mov	eax, 0
	cmovne	ebx, eax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_62
	mov	eax, 0
	mov	rdx, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	r8, r15
	mov	r9, r12
	push	rbx
	push	rbp
	push	r13
	push	r14
	call	__printf_chk
	add	rsp, 0x20
.label_70:
	add	rsp, 0x1c8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_81:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rax, qword ptr [rsp + 8]
	mov	rdx, qword ptr [rax + rbx]
.label_69:
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_58
	xor	eax, eax
	mov	esi, ebp
	call	error
.label_75:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rax, qword ptr [rsp + 8]
	mov	rdx, qword ptr [rax + r12*8]
	jmp	.label_69
.label_61:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rax, qword ptr [rsp + 8]
	mov	rdx, qword ptr [rax + rbx*8]
	jmp	.label_69
	.section	.text
	.align	16
	#Procedure 0x4023c9
	.globl sub_4023c9
	.type sub_4023c9, @function
sub_4023c9:

	nop	dword ptr [rax]
.label_91:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x4023d3
	.globl sub_4023d3
	.type sub_4023d3, @function
sub_4023d3:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4023d5
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_91
	movabs	rax, 0x3ffffff03ffffff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
	.section	.text
	.align	16
	#Procedure 0x4023f0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_93
	cmp	byte ptr [rax], 0x43
	jne	.label_95
	cmp	byte ptr [rax + 1], 0
	je	.label_92
.label_95:
	mov	esi, OFFSET FLAT:label_94
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_93
.label_92:
	xor	ebx, ebx
.label_93:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x402421
	.globl sub_402421
	.type sub_402421, @function
sub_402421:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402430

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
	#Procedure 0x40245d
	.globl sub_40245d
	.type sub_40245d, @function
sub_40245d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402460
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
	#Procedure 0x402473
	.globl sub_402473
	.type sub_402473, @function
sub_402473:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402480

	.globl dup_safer
	.type dup_safer, @function
dup_safer:
	xor	esi, esi
	mov	edx, 3
	xor	eax, eax
	jmp	rpl_fcntl
	.section	.text
	.align	16
	#Procedure 0x40248e
	.globl sub_40248e
	.type sub_40248e, @function
sub_40248e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402490

	.globl c_isupper
	.type c_isupper, @function
c_isupper:
	add	edi, -0x41
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x40249a
	.globl sub_40249a
	.type sub_40249a, @function
sub_40249a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4024a0
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
	#Procedure 0x4024af
	.globl sub_4024af
	.type sub_4024af, @function
sub_4024af:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4024b0

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
	je	.label_98
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_96
	jmp	.label_97
.label_98:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_97
.label_96:
	mov	eax, 1
	test	bpl, bpl
	je	.label_97
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
.label_97:
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
	#Procedure 0x402538
	.globl sub_402538
	.type sub_402538, @function
sub_402538:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402540

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
	je	.label_99
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_101
	jmp	.label_100
.label_99:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_100
.label_101:
	mov	eax, 1
	test	bpl, bpl
	je	.label_100
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
.label_100:
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
	#Procedure 0x4025b9
	.globl sub_4025b9
	.type sub_4025b9, @function
sub_4025b9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4025c0

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
	je	.label_104
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_103
	jmp	.label_102
.label_104:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_102
.label_103:
	mov	eax, 1
	test	bpl, bpl
	je	.label_102
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
.label_102:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402623
	.globl sub_402623
	.type sub_402623, @function
sub_402623:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402630

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
	je	.label_107
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_105
	jmp	.label_106
.label_107:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_106
.label_105:
	mov	eax, 1
	test	bpl, bpl
	je	.label_106
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_106:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40268f
	.globl sub_40268f
	.type sub_40268f, @function
sub_40268f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402690

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
	je	.label_108
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_110
	jmp	.label_109
.label_108:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_109
.label_110:
	mov	eax, 1
	test	bpl, bpl
	je	.label_109
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_109:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4026d9
	.globl sub_4026d9
	.type sub_4026d9, @function
sub_4026d9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4026e0

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
	je	.label_113
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_112
	jmp	.label_111
.label_113:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_111
.label_112:
	mov	eax, 1
	test	bpl, bpl
	je	.label_111
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_111:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402725
	.globl sub_402725
	.type sub_402725, @function
sub_402725:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402730

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_116
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_115
	jmp	.label_114
.label_116:
	mov	eax, 1
	test	cl, cl
	je	.label_114
.label_115:
	xor	eax, eax
.label_114:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40275f
	.globl sub_40275f
	.type sub_40275f, @function
sub_40275f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402760

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
	mov	esi, OFFSET FLAT:label_117
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rcx
	call	error
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_118
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
	mov	esi, OFFSET FLAT:label_119
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
	#Procedure 0x40282a
	.globl sub_40282a
	.type sub_40282a, @function
sub_40282a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402830
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
	#Procedure 0x402843
	.globl sub_402843
	.type sub_402843, @function
sub_402843:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402850
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
	je	.label_120
	dec	rbx
	dec	r15
	mov	rsi, r12
	mov	rdx, rbx
	mov	rcx, r14
	mov	r8, r15
	call	collate_error
.label_120:
	mov	eax, ebp
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402898
	.globl sub_402898
	.type sub_402898, @function
sub_402898:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4028a0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x4028a8
	.globl sub_4028a8
	.type sub_4028a8, @function
sub_4028a8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4028b0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_122:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_121
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_123
	.section	.text
	.align	16
	#Procedure 0x4028d9
	.globl sub_4028d9
	.type sub_4028d9, @function
sub_4028d9:

	nop	dword ptr [rax]
.label_121:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_123:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_124
	inc	r9
	cmp	r9, 0xa
	jb	.label_122
.label_124:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	16
	#Procedure 0x40290f
	.globl sub_40290f
	.type sub_40290f, @function
sub_40290f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402910
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_125
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_126
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_128
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_129
	mov	ecx, OFFSET FLAT:label_130
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_127
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x402984
	.globl sub_402984
	.type sub_402984, @function
sub_402984:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402990

	.globl umaxtostr
	.type umaxtostr, @function
umaxtostr:
	mov	rcx, rdi
	mov	byte ptr [rsi + 0x14], 0
	add	rsi, 0x14
	movabs	r8, 0xcccccccccccccccd
	nop	word ptr cs:[rax + rax]
.label_131:
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
	ja	.label_131
	mov	rax, rsi
	ret	
	.section	.text
	.align	16
	#Procedure 0x4029db
	.globl sub_4029db
	.type sub_4029db, @function
sub_4029db:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4029e0

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	sub	rsp, 0xd8
	test	al, al
	je	.label_140
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_140:
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
	ja	.label_142
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_141
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_133
	test	esi, esi
	jne	.label_142
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_145
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_135
.label_142:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_132
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_133
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_144
.label_141:
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
.label_133:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_136
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_138
.label_136:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_138:
	mov	edx, dword ptr [rax]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
.label_144:
	cmp	eax, 6
	jne	.label_132
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_134
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_137
.label_132:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_139
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_143
.label_145:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_135:
	mov	esi, dword ptr [rax]
	call	rpl_fcntl_DUPFD
	add	rsp, 0xd8
	ret	
.label_134:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_137:
	mov	esi, dword ptr [rax]
	call	rpl_fcntl_DUPFD_CLOEXEC
	add	rsp, 0xd8
	ret	
.label_139:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_143:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
	.section	.text
	.align	16
	#Procedure 0x402b94
	.globl sub_402b94
	.type sub_402b94, @function
sub_402b94:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402ba0

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
	#Procedure 0x402bd7
	.globl sub_402bd7
	.type sub_402bd7, @function
sub_402bd7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402be0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_146
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_149:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_149
.label_146:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_150
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_147]], OFFSET FLAT:slot0
.label_150:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_148
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_148:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x402c71
	.globl sub_402c71
	.type sub_402c71, @function
sub_402c71:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402c80
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
	#Procedure 0x402ca7
	.globl sub_402ca7
	.type sub_402ca7, @function
sub_402ca7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402cb0

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
	je	.label_162
	mov	edx, OFFSET FLAT:label_158
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_164
.label_162:
	mov	edx, OFFSET FLAT:label_165
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_164:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_169
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
	mov	esi, OFFSET FLAT:label_166
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_152
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_153]]
.label_466:
	add	rsp, 8
	jmp	.label_151
.label_152:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_161
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
	jmp	.label_151
.label_467:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_167
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
.label_468:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_157
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
.label_469:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_159
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
.label_470:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_155
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
	jmp	.label_151
.label_471:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_154
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
	jmp	.label_151
.label_472:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_156
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
	jmp	.label_151
.label_473:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_160
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
	jmp	.label_151
.label_475:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_163
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
	jmp	.label_151
.label_474:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_168
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
.label_151:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x403008
	.globl sub_403008
	.type sub_403008, @function
sub_403008:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403010
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	add	edi, -0x20
	cmp	edi, 0x5f
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x40301a
	.globl sub_40301a
	.type sub_40301a, @function
sub_40301a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403020
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	.section	.text
	.align	16
	#Procedure 0x40302a
	.globl sub_40302a
	.type sub_40302a, @function
sub_40302a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403030
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	add	edi, -0x30
	cmp	edi, 0xa
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x40303a
	.globl sub_40303a
	.type sub_40303a, @function
sub_40303a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403040
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_170
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_170:
	push	rax
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403066
	.globl sub_403066
	.type sub_403066, @function
sub_403066:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403070

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_171
	test	rbx, rbx
	jne	.label_171
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_171:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_173
	test	rax, rax
	je	.label_172
.label_173:
	pop	rbx
	ret	
.label_172:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4030a0

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x4030aa
	.globl sub_4030aa
	.type sub_4030aa, @function
sub_4030aa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4030b0
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quotearg_n
	.section	.text
	.align	16
	#Procedure 0x4030bd
	.globl sub_4030bd
	.type sub_4030bd, @function
sub_4030bd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4030c0
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
	#Procedure 0x4030d0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_174
	test	rsi, rsi
	mov	ecx, 1
	je	.label_175
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_175
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_174:
	mov	ecx, 1
.label_175:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	16
	#Procedure 0x40311b
	.globl sub_40311b
	.type sub_40311b, @function
sub_40311b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403120

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
	#Procedure 0x40312d
	.globl sub_40312d
	.type sub_40312d, @function
sub_40312d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403130

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_176
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_176:
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
	#Procedure 0x4031b3
	.globl sub_4031b3
	.type sub_4031b3, @function
sub_4031b3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4031c0

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	.section	.text
	.align	16
	#Procedure 0x4031c5
	.globl sub_4031c5
	.type sub_4031c5, @function
sub_4031c5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4031d0

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x4031de
	.globl sub_4031de
	.type sub_4031de, @function
sub_4031de:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4031e0

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
	js	.label_177
	mov	eax, dword ptr [r13]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_180
	cmp	r12d, 0x7fffffff
	je	.label_182
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
	jne	.label_178
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_178:
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
.label_180:
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
	jbe	.label_183
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_179
.label_183:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_181
	mov	rdi, r14
	call	free
.label_181:
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
.label_179:
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
.label_177:
	call	abort
.label_182:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40339d
	.globl sub_40339d
	.type sub_40339d, @function
sub_40339d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4033a0

	.globl fdadvise
	.type fdadvise, @function
fdadvise:
	jmp	posix_fadvise
	.section	.text
	.align	16
	#Procedure 0x4033a5
	.globl sub_4033a5
	.type sub_4033a5, @function
sub_4033a5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4033b0

	.globl fadvise
	.type fadvise, @function
fadvise:
	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_184
	call	fileno
	xor	esi, esi
	xor	edx, edx
	mov	edi, eax
	mov	ecx, ebx
	pop	rbx
	jmp	fdadvise
.label_184:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4033ca
	.globl sub_4033ca
	.type sub_4033ca, @function
sub_4033ca:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4033d0

	.globl writeline
	.type writeline, @function
writeline:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	cmp	edx, 3
	je	.label_188
	cmp	edx, 2
	je	.label_190
	cmp	edx, 1
	jne	.label_186
	mov	al,  byte ptr [byte ptr [rip + only_file_1]]
	test	al, al
	jne	.label_186
	jmp	.label_187
.label_190:
	cmp	byte ptr [byte ptr [rip + only_file_2]],  1
	jne	.label_187
	cmp	byte ptr [byte ptr [rip + only_file_1]],  1
	je	.label_185
	jmp	.label_186
.label_188:
	cmp	byte ptr [byte ptr [rip + both]],  1
	jne	.label_187
	cmp	byte ptr [byte ptr [rip + only_file_1]],  1
	jne	.label_189
	mov	rdi,  qword ptr [word ptr [rip + col_sep]]
	mov	rdx,  qword ptr [word ptr [rip + col_sep_len]]
	mov	esi, 1
	mov	rcx, r14
	call	fwrite_unlocked
.label_189:
	cmp	byte ptr [byte ptr [rip + only_file_2]],  1
	jne	.label_186
.label_185:
	mov	rdi,  qword ptr [word ptr [rip + col_sep]]
	mov	rdx,  qword ptr [word ptr [rip + col_sep_len]]
	mov	esi, 1
	mov	rcx, r14
	call	fwrite_unlocked
.label_186:
	mov	rdx, qword ptr [rbx + 8]
	mov	rdi, qword ptr [rbx + 0x10]
	mov	esi, 1
	mov	rcx, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	fwrite_unlocked
.label_187:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x403481
	.globl sub_403481
	.type sub_403481, @function
sub_403481:

	nop	word ptr cs:[rax + rax]
.label_191:
	neg	r14
	sbb	eax, eax
.label_192:
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
	#Procedure 0x4034a4
	.globl sub_4034a4
	.type sub_4034a4, @function
sub_4034a4:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4034a6

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
.label_193:
	mov	dword ptr [r13], 0
	mov	rdi, rbx
	mov	rsi, r12
	call	strcoll
	test	eax, eax
	jne	.label_192
	mov	rdi, rbx
	call	strlen
	mov	rbp, rax
	inc	rbp
	mov	rdi, r12
	call	strlen
	inc	rax
	sub	r14, rax
	sub	r15, rbp
	je	.label_191
	add	r12, rax
	add	rbx, rbp
	mov	eax, 1
	test	r14, r14
	jne	.label_193
	jmp	.label_192
	.section	.text
	.align	16
	#Procedure 0x403510

	.globl rpl_fcntl_DUPFD_CLOEXEC
	.type rpl_fcntl_DUPFD_CLOEXEC, @function
rpl_fcntl_DUPFD_CLOEXEC:
	push	rbp
	push	r14
	push	rbx
	mov	r14d, esi
	mov	ebp, edi
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0
	js	.label_196
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebp
	mov	edx, r14d
	call	fcntl
	mov	ebx, eax
	test	ebx, ebx
	jns	.label_198
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_198
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
	test	ebx, ebx
	js	.label_195
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
	jmp	.label_194
.label_198:
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_194
.label_196:
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
.label_194:
	test	ebx, ebx
	js	.label_195
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	jne	.label_195
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_197
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebx
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_195
.label_197:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	mov	dword ptr [rbp], r14d
	mov	ebx, 0xffffffff
.label_195:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4035d3
	.globl sub_4035d3
	.type sub_4035d3, @function
sub_4035d3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4035e0

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
	jne	.label_199
	mov	rdi, r12
	mov	rsi, r14
	mov	rdx, rbx
	call	memcmp
	test	eax, eax
	je	.label_200
.label_199:
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
.label_200:
	call	__errno_location
	mov	dword ptr [rax], 0
	xor	eax, eax
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x403640

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_201
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_201
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_201:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	16
	#Procedure 0x403666
	.globl sub_403666
	.type sub_403666, @function
sub_403666:

	nop	word ptr cs:[rax + rax]
.label_206:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:label_202
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403690
	.globl sub_403690
	.type sub_403690, @function
sub_403690:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40369f

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_206
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_204
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_207
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_204
	mov	esi, OFFSET FLAT:label_205
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_203
	add	r14, 3
	mov	qword ptr [word ptr [rip + __progname]],  r14
.label_203:
	mov	rbx, r14
.label_204:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x403720

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
	#Procedure 0x403759
	.globl sub_403759
	.type sub_403759, @function
sub_403759:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403760
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
	#Procedure 0x403771
	.globl sub_403771
	.type sub_403771, @function
sub_403771:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403780
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
	#Procedure 0x403794
	.globl sub_403794
	.type sub_403794, @function
sub_403794:

	nop	word ptr cs:[rax + rax]
.label_208:
	push	rax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4037a6
	.globl sub_4037a6
	.type sub_4037a6, @function
sub_4037a6:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4037ab

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_208
	test	rdx, rdx
	je	.label_208
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4037d0
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
	#Procedure 0x4037dd
	.globl sub_4037dd
	.type sub_4037dd, @function
sub_4037dd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4037e0

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
	je	.label_209
	cmp	r15, -2
	jb	.label_209
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_209
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_209:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x403836
	.globl sub_403836
	.type sub_403836, @function
sub_403836:

	nop	word ptr cs:[rax + rax]
.label_211:
	call	__errno_location
	mov	dword ptr [rax], 0
	xor	eax, eax
.label_212:
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
	#Procedure 0x40385c
	.globl sub_40385c
	.type sub_40385c, @function
sub_40385c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403863

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
	jne	.label_210
	mov	rdi, r12
	mov	rsi, r14
	mov	rdx, rbx
	call	memcmp
	test	eax, eax
	je	.label_211
.label_210:
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
	jmp	.label_212
	.section	.text
	.align	16
	#Procedure 0x4038c0

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
	je	.label_213
	mov	rdi, rbx
	call	fileno
	cmp	eax, 2
	ja	.label_217
	mov	edi, eax
	call	dup_safer
	mov	ebp, eax
	test	ebp, ebp
	js	.label_214
	mov	rdi, rbx
	call	rpl_fclose
	test	eax, eax
	jne	.label_215
	mov	edi, ebp
	mov	rsi, r14
	call	fdopen
	test	rax, rax
	jne	.label_213
.label_215:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	jmp	.label_216
.label_217:
	mov	rax, rbx
	jmp	.label_213
.label_214:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	rdi, rbx
	call	rpl_fclose
	mov	dword ptr [rbp], r14d
.label_216:
	xor	eax, eax
.label_213:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403946
	.globl sub_403946
	.type sub_403946, @function
sub_403946:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403950
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x40395a
	.globl sub_40395a
	.type sub_40395a, @function
sub_40395a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403960

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_221
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_218
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_218
.label_221:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_222
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_219:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_220
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
.label_222:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_218:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_223
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_219
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_58
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	.section	.text
	.align	16
	#Procedure 0x403a20

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
	je	.label_224
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_225
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_225
.label_224:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_225
	test	cl, cl
	jne	.label_225
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_225:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403a86
	.globl sub_403a86
	.type sub_403a86, @function
sub_403a86:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403a90
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
	#Procedure 0x403a9d
	.globl sub_403a9d
	.type sub_403a9d, @function
sub_403a9d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403aa0

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:label_226
	nop	
.label_236:
	mov	edi, OFFSET FLAT:label_229
	call	strcmp
	test	eax, eax
	je	.label_234
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_236
.label_234:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:label_229
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_230
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_129
	mov	ecx, OFFSET FLAT:label_130
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_228
	mov	esi, OFFSET FLAT:label_233
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_228
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_227
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_228:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_231
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:label_229
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_130
	mov	ecx, OFFSET FLAT:label_229
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_235
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:label_232
	mov	ecx, OFFSET FLAT:label_9
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
	#Procedure 0x403bba
	.globl sub_403bba
	.type sub_403bba, @function
sub_403bba:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403bc0

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
.label_259:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_264
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_268]]
.label_516:
	mov	r14d, r10d
	mov	edi, OFFSET FLAT:label_274
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_36
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10d, r14d
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_517:
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_284
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_284
	xor	r14d, r14d
.label_297:
	cmp	r14, r11
	jae	.label_293
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_293:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_297
.label_284:
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
	jmp	.label_302
.label_509:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_302
.label_512:
	mov	al, 1
.label_510:
	mov	r12b, 1
.label_513:
	test	r12b, 1
	mov	cl, 1
	je	.label_314
	mov	ecx, eax
.label_314:
	mov	al, cl
.label_511:
	test	r12b, 1
	jne	.label_316
	test	r11, r11
	je	.label_270
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_270:
	mov	r14d, 1
	jmp	.label_322
.label_316:
	xor	r14d, r14d
.label_322:
	mov	ecx, OFFSET FLAT:label_36
	mov	qword ptr [rsp + 0x40], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x38], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_302
.label_514:
	test	r12b, 1
	jne	.label_329
	test	r11, r11
	je	.label_349
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_349:
	mov	r14d, 1
	jmp	.label_299
.label_515:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_35
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	sil, 1
	jmp	.label_302
.label_329:
	xor	r14d, r14d
.label_299:
	mov	eax, OFFSET FLAT:label_35
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_302:
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
	jmp	.label_241
	.section	.text
	.align	16
	#Procedure 0x403e9c
	.globl sub_403e9c
	.type sub_403e9c, @function
sub_403e9c:

	nop	dword ptr [rax]
.label_294:
	inc	rsi
.label_241:
	cmp	rbp, -1
	je	.label_337
	cmp	rsi, rbp
	jne	.label_348
	jmp	.label_282
	.section	.text
	.align	16
	#Procedure 0x403eb3
	.globl sub_403eb3
	.type sub_403eb3, @function
sub_403eb3:

	nop	word ptr cs:[rax + rax]
.label_337:
	cmp	byte ptr [rdi + rsi], 0
	je	.label_282
.label_348:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_286
	mov	rax, qword ptr [rsp + 0x38]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_289
	cmp	rbp, -1
	jne	.label_289
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
.label_289:
	cmp	rbx, rbp
	jbe	.label_301
.label_286:
	xor	r8d, r8d
.label_323:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_303
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_306]]
.label_486:
	test	rsi, rsi
	jne	.label_295
	jmp	.label_309
	.section	.text
	.align	16
	#Procedure 0x403f4e
	.globl sub_403f4e
	.type sub_403f4e, @function
sub_403f4e:

	nop	
.label_301:
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
	jne	.label_320
	cmp	byte ptr [rsp + 7], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_323
	jmp	.label_240
.label_320:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_323
.label_490:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_336
	test	rsi, rsi
	jne	.label_338
	cmp	rbp, 1
	je	.label_309
	xor	r13d, r13d
	jmp	.label_248
.label_479:
	cmp	byte ptr [rsp + 0x1e], 0
	je	.label_347
	cmp	byte ptr [rsp + 7], 0
	jne	.label_262
	cmp	r12d, 2
	jne	.label_239
	mov	eax, r9d
	and	al, 1
	jne	.label_239
	cmp	r14, r11
	jae	.label_273
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_273:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_245
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_245:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_251
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_251:
	add	r14, 3
	mov	r9b, 1
.label_239:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_342
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_342:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_261
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_261
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_261
	cmp	r14, r11
	jae	.label_275
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_275:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_277
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_277:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_248
.label_480:
	mov	bl, 0x62
	jmp	.label_283
.label_481:
	mov	cl, 0x74
	jmp	.label_253
.label_482:
	mov	bl, 0x76
	jmp	.label_283
.label_483:
	mov	bl, 0x66
	jmp	.label_283
.label_484:
	mov	cl, 0x72
	jmp	.label_253
.label_487:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_291
	cmp	byte ptr [rsp + 7], 0
	jne	.label_262
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
	jae	.label_298
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_298:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_307
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_307:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_310
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_310:
	add	r14, 3
	xor	r9d, r9d
.label_291:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_248
.label_488:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_318
	cmp	r12d, 2
	jne	.label_295
	cmp	byte ptr [rsp + 7], 0
	je	.label_295
	jmp	.label_262
.label_489:
	cmp	r12d, 2
	jne	.label_327
	cmp	byte ptr [rsp + 7], 0
	jne	.label_262
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_254
.label_303:
	mov	dword ptr [rsp + 0x4c], r8d
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xb0], 1
	jne	.label_332
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
.label_237:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2b]
	mov	qword ptr [rsp + 0x58], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 0x17]
	mov	r12, qword ptr [rsp + 0x68]
	mov	r9d, dword ptr [rsp + 0x48]
	ja	.label_249
	test	r8b, r8b
	je	.label_249
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x4c]
	jmp	.label_248
.label_336:
	test	rsi, rsi
	jne	.label_258
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_258
.label_309:
	mov	dl, 1
.label_485:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_262
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_248:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_269
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_272
	jmp	.label_260
	.section	.text
	.align	16
	#Procedure 0x404294
	.globl sub_404294
	.type sub_404294, @function
sub_404294:

	nop	word ptr cs:[rax + rax]
.label_269:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_260
.label_272:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_279
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_254
	jmp	.label_290
	.section	.text
	.align	16
	#Procedure 0x4042dd
	.globl sub_4042dd
	.type sub_4042dd, @function
sub_4042dd:

	nop	dword ptr [rax]
.label_260:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_290
	jmp	.label_254
.label_279:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_290
.label_347:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_294
	xor	r15d, r15d
	jmp	.label_295
.label_327:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x2a], 0
	je	.label_253
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_254
.label_253:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_262
.label_283:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1e], 0
	mov	r13d, 0
	je	.label_248
	nop	word ptr cs:[rax + rax]
.label_290:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_262
	cmp	r12d, 2
	jne	.label_255
	mov	eax, r9d
	and	al, 1
	jne	.label_255
	cmp	r14, r11
	jae	.label_317
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_317:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_287
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_287:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_325
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_325:
	add	r14, 3
	mov	r9b, 1
.label_255:
	cmp	r14, r11
	jae	.label_328
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_328:
	inc	r14
	jmp	.label_330
.label_332:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_333
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_333:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x58], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x50], rsi
.label_276:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_244
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_247
	cmp	rbp, -2
	je	.label_319
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2c]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_266
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_334:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_341
	bt	rsi, rdx
	jb	.label_240
.label_341:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_334
.label_266:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_281
	xor	r13d, r13d
.label_281:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x50]
	je	.label_276
	jmp	.label_237
.label_261:
	xor	r13d, r13d
	jmp	.label_248
.label_258:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_248
.label_318:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_295
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_295
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_295
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_345
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_304
	cmp	byte ptr [rsp + 7], 0
	jne	.label_262
	mov	r15b, byte ptr [rdi + rcx]
	cmp	r14, r11
	jae	.label_311
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_311:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_343
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_343:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_321
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_321:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_324
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x3f
.label_324:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r13d, r13d
	jmp	.label_248
.label_295:
	xor	eax, eax
.label_338:
	xor	r13d, r13d
	jmp	.label_248
.label_249:
	add	qword ptr [rsp + 0x58], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_331
	.section	.text
	.align	16
	#Procedure 0x4045c3
	.globl sub_4045c3
	.type sub_4045c3, @function
sub_4045c3:

	nop	word ptr cs:[rax + rax]
.label_296:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_331:
	test	r8b, r8b
	je	.label_339
	mov	ecx, dword ptr [rsp + 0x4c]
	test	cl, 1
	je	.label_340
	cmp	r14, r11
	jae	.label_344
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_344:
	inc	r14
	mov	dword ptr [rsp + 0x4c], 0
	jmp	.label_340
	.section	.text
	.align	16
	#Procedure 0x40460c
	.globl sub_40460c
	.type sub_40460c, @function
sub_40460c:

	nop	dword ptr [rax]
.label_339:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_240
	cmp	r12d, 2
	jne	.label_243
	mov	eax, r9d
	and	al, 1
	jne	.label_243
	cmp	r14, r11
	jae	.label_246
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_246:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_250
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_250:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_256
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_256:
	add	r14, 3
	mov	r9b, 1
.label_243:
	cmp	r14, r11
	jae	.label_257
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_257:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_265
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_265:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_308
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_308:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_340:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x58], rdx
	jbe	.label_254
	test	r9b, 1
	je	.label_285
	mov	ebx, eax
	and	bl, 1
	jne	.label_285
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_288
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_288:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_300
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_300:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_285:
	cmp	r14, r11
	jae	.label_296
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_296
	.section	.text
	.align	16
	#Procedure 0x404713
	.globl sub_404713
	.type sub_404713, @function
sub_404713:

	nop	word ptr cs:[rax + rax]
.label_254:
	test	r9b, 1
	je	.label_292
	and	al, 1
	jne	.label_292
	cmp	r14, r11
	jae	.label_305
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_305:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_313
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_313:
	add	r14, 2
	xor	r9d, r9d
.label_292:
	mov	ebx, r15d
.label_330:
	cmp	r14, r11
	jae	.label_312
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_312:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_294
.label_247:
	xor	r13d, r13d
.label_244:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_237
.label_319:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbx, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	jae	.label_326
	mov	rsi, qword ptr [rsp + 0x50]
.label_238:
	mov	rax, qword ptr [rsp + 0x58]
	cmp	byte ptr [rax + r12], 0
	je	.label_271
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_238
	xor	r13d, r13d
	jmp	.label_237
.label_326:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_237
.label_271:
	xor	r13d, r13d
	jmp	.label_237
.label_345:
	xor	r13d, r13d
	jmp	.label_248
.label_304:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_248
	.section	.text
	.align	16
	#Procedure 0x4047e8
	.globl sub_4047e8
	.type sub_4047e8, @function
sub_4047e8:

	nop	dword ptr [rax + rax]
.label_282:
	test	r14, r14
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0xa8]
	and	cl, 1
	mov	qword ptr [rsp + 0x20], rbp
	je	.label_346
	or	dl, al
	je	.label_240
.label_346:
	test	cl, cl
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x1d]
	mov	rsi, qword ptr [rsp + 0xa8]
	je	.label_242
	or	dl, al
	jne	.label_242
	test	r10b, 1
	jne	.label_252
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_242
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x60]
	je	.label_259
.label_242:
	mov	rdx, qword ptr [rsp + 0x40]
	test	rdx, rdx
	je	.label_263
	test	cl, cl
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_267
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_267
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_280:
	cmp	r14, r11
	jae	.label_335
	mov	byte ptr [rcx + r14], al
.label_335:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_280
	jmp	.label_267
.label_262:
	mov	qword ptr [rsp + 0x20], rbp
.label_240:
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
.label_315:
	mov	r14, rax
.label_278:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_252:
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
	jmp	.label_315
.label_263:
	mov	rcx, qword ptr [rsp + 8]
.label_267:
	cmp	r14, r11
	jae	.label_278
	mov	byte ptr [rcx + r14], 0
	jmp	.label_278
.label_264:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40497c
	.globl sub_40497c
	.type sub_40497c, @function
sub_40497c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404980

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_350
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_356
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_351
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_354
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_352
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_364
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_353
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_360
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_362
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_355
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_359
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_357
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_363
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_361
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	mov	rcx, rdx
	call	__printf_chk
	call	emit_ancillary_info
	mov	edi, ebp
	call	exit
.label_350:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_358
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
	#Procedure 0x404b88
	.globl sub_404b88
	.type sub_404b88, @function
sub_404b88:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404b90
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	add	edi, -0x21
	cmp	edi, 0x5d
	ja	.label_365
	mov	al, 1
	jmp	qword ptr [word ptr [+ (rdi * 8) + label_367]]
.label_365:
	xor	eax, eax
	jmp	.label_366
	.section	.text
	.align	16
	#Procedure 0x404ba5
	.globl sub_404ba5
	.type sub_404ba5, @function
sub_404ba5:

	nop	word ptr cs:[rax + rax]
.label_366:
	ret	
	.section	.text
	.align	16
	#Procedure 0x404bb0

	.globl main
	.type main, @function
main:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x10
	mov	rbx, rsi
	mov	ebp, edi
	mov	rdi, qword ptr [rbx]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_9
	call	setlocale
	mov	edi, OFFSET FLAT:label_387
	mov	esi, OFFSET FLAT:label_388
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_387
	call	textdomain
	mov	edi, 3
	call	hard_locale
	mov	byte ptr [byte ptr [rip + hard_LC_COLLATE]],  al
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	byte ptr [byte ptr [rip + only_file_1]],  1
	mov	byte ptr [byte ptr [rip + only_file_2]],  1
	mov	byte ptr [byte ptr [rip + both]],  1
	mov	byte ptr [byte ptr [rip + seen_unpairable]],  0
	mov	byte ptr [byte ptr [rip + label_369]],  0
	mov	byte ptr [byte ptr [rip + issued_disorder_warning]],  0
	mov	dword ptr [dword ptr [rip + check_input_order]],  0
	mov	byte ptr [byte ptr [rip + total_option]],  0
	jmp	.label_368
	.section	.text
	.align	16
	#Procedure 0x404c44
	.globl sub_404c44
	.type sub_404c44, @function
sub_404c44:

	nop	word ptr cs:[rax + rax]
.label_376:
	mov	byte ptr [byte ptr [rip + only_file_1]],  0
.label_368:
	mov	edx, OFFSET FLAT:label_390
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	mov	edi, ebp
	mov	rsi, rbx
	call	getopt_long
	cmp	eax, 0x31
	jle	.label_394
	lea	ecx, [rax - 0x7a]
	cmp	ecx, 9
	ja	.label_381
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_397]]
.label_432:
	mov	byte ptr [byte ptr [rip + delim]],  1
	jmp	.label_368
	.section	.text
	.align	16
	#Procedure 0x404c8b
	.globl sub_404c8b
	.type sub_404c8b, @function
sub_404c8b:

	nop	dword ptr [rax + rax]
.label_394:
	cmp	eax, 0x30
	jle	.label_371
	jmp	.label_376
.label_381:
	cmp	eax, 0x32
	je	.label_377
	cmp	eax, 0x33
	jne	.label_375
	mov	byte ptr [byte ptr [rip + both]],  0
	jmp	.label_368
.label_433:
	mov	dword ptr [dword ptr [rip + check_input_order]],  1
	jmp	.label_368
.label_434:
	mov	dword ptr [dword ptr [rip + check_input_order]],  2
	jmp	.label_368
.label_435:
	cmp	qword ptr [word ptr [rip + col_sep_len]],  0
	je	.label_386
	mov	rdi,  qword ptr [word ptr [rip + col_sep]]
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	call	strcmp
	test	eax, eax
	jne	.label_393
.label_386:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [word ptr [rip + col_sep]],  rdi
	cmp	byte ptr [rdi], 0
	mov	eax, 1
	je	.label_395
	call	strlen
.label_395:
	mov	qword ptr [word ptr [rip + col_sep_len]],  rax
	jmp	.label_368
.label_436:
	mov	byte ptr [byte ptr [rip + total_option]],  1
	jmp	.label_368
.label_377:
	mov	byte ptr [byte ptr [rip + only_file_2]],  0
	jmp	.label_368
.label_371:
	cmp	eax, -1
	jne	.label_382
	cmp	qword ptr [word ptr [rip + col_sep_len]],  0
	jne	.label_383
	mov	qword ptr [word ptr [rip + col_sep_len]],  1
.label_383:
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	ecx, ebp
	sub	ecx, eax
	cmp	ecx, 1
	jle	.label_389
	cmp	ecx, 2
	jne	.label_391
	lea	rdi, [rbx + rax*8]
	call	compare_files
	mov	al,  byte ptr [byte ptr [rip + label_369]]
	or	al,  byte ptr [byte ptr [rip + issued_disorder_warning]]
	jne	.label_370
	xor	eax, eax
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_382:
	cmp	eax, 0xffffff7d
	je	.label_372
	cmp	eax, 0xffffff7e
	jne	.label_375
	xor	edi, edi
	call	usage
.label_372:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	qword ptr [rsp], 0
	mov	esi, OFFSET FLAT:label_229
	mov	edx, OFFSET FLAT:label_129
	mov	r8d, OFFSET FLAT:label_378
	mov	r9d, OFFSET FLAT:label_379
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_375:
	mov	edi, 1
	call	usage
.label_389:
	xor	edi, edi
	cmp	eax, ebp
	jge	.label_392
	mov	esi, OFFSET FLAT:label_396
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	movsxd	rax, ebp
	mov	rdi, qword ptr [rbx + rax*8 - 8]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	call	error
	mov	edi, 1
	call	usage
.label_391:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_380
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rdi, qword ptr [rbx + rax*8 + 0x10]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
	mov	edi, 1
	call	usage
.label_370:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_374
.label_385:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_392:
	mov	esi, OFFSET FLAT:label_373
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
.label_393:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_384
	jmp	.label_385
	.section	.text
	.align	16
	#Procedure 0x404ec6
	.globl sub_404ec6
	.type sub_404ec6, @function
sub_404ec6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404ed0
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_398
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_398
.label_399:
	ret	
.label_398:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_399
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x404ef6
	.globl sub_404ef6
	.type sub_404ef6, @function
sub_404ef6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404f00

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
	mov	rcx,  qword ptr [word ptr [rip + label_38]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_39]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_40]]
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
	#Procedure 0x404f6d
	.globl sub_404f6d
	.type sub_404f6d, @function
sub_404f6d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404f70

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	mov	eax, esi
	mov	rsi, -1
	mov	edx, eax
	jmp	quotearg_char_mem
	.section	.text
	.align	16
	#Procedure 0x404f7d
	.globl sub_404f7d
	.type sub_404f7d, @function
sub_404f7d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404f80

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	.section	.text
	.align	16
	#Procedure 0x404f87
	.globl sub_404f87
	.type sub_404f87, @function
sub_404f87:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404f90

	.globl x2realloc
	.type x2realloc, @function
x2realloc:
	mov	edx, 1
	jmp	x2nrealloc
	.section	.text
	.align	16
	#Procedure 0x404f9a
	.globl sub_404f9a
	.type sub_404f9a, @function
sub_404f9a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404fa0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_400
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
	.align	16
	#Procedure 0x404fd0

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
	#Procedure 0x404fe7
	.globl sub_404fe7
	.type sub_404fe7, @function
sub_404fe7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404ff0
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	add	edi, -0x21
	cmp	edi, 0x5e
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x404ffa
	.globl sub_404ffa
	.type sub_404ffa, @function
sub_404ffa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405000
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
	#Procedure 0x40500f
	.globl sub_40500f
	.type sub_40500f, @function
sub_40500f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x405010
	.globl readlinebuffer
	.type readlinebuffer, @function
readlinebuffer:

	mov	edx, 0xa
	jmp	readlinebuffer_delim
	.section	.text
	.align	16
	#Procedure 0x405017
	.globl sub_405017
	.type sub_405017, @function
sub_405017:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405020

	.globl readlinebuffer_delim
	.type readlinebuffer_delim, @function
readlinebuffer_delim:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	dword ptr [rsp + 8], edx
	mov	r13, rsi
	mov	r14, rdi
	mov	rbx, qword ptr [r14]
	mov	r15, qword ptr [r14 + 0x10]
	mov	rdi, r13
	call	feof_unlocked
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x10], rcx
	test	eax, eax
	jne	.label_403
	add	rbx, r15
	mov	eax, dword ptr [rsp + 8]
	movsx	eax, al
	mov	dword ptr [rsp + 0xc], eax
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	r12, r15
	nop	
.label_402:
	mov	rdi, r13
	call	getc_unlocked
	mov	ebp, eax
	cmp	ebp, -1
	jne	.label_404
	cmp	r12, r15
	je	.label_403
	mov	rdi, r13
	call	ferror_unlocked
	test	eax, eax
	jne	.label_403
	mov	eax, dword ptr [rsp + 8]
	cmp	byte ptr [r12 - 1], al
	mov	ebp, dword ptr [rsp + 0xc]
	je	.label_401
.label_404:
	cmp	r12, rbx
	jne	.label_405
	mov	r12, qword ptr [r14]
	mov	rdi, r15
	mov	rsi, r14
	call	x2realloc
	mov	r15, rax
	add	r12, r15
	mov	qword ptr [r14 + 0x10], r15
	mov	rbx, r15
	add	rbx, qword ptr [r14]
.label_405:
	mov	byte ptr [r12], bpl
	inc	r12
	cmp	ebp, dword ptr [rsp + 0xc]
	jne	.label_402
.label_401:
	sub	r12, r15
	mov	qword ptr [r14 + 8], r12
	mov	qword ptr [rsp + 0x10], r14
.label_403:
	mov	rax, qword ptr [rsp + 0x10]
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
	#Procedure 0x4050ef
	.globl sub_4050ef
	.type sub_4050ef, @function
sub_4050ef:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4050f0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_406
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_406:
	push	rax
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x405113
	.globl sub_405113
	.type sub_405113, @function
sub_405113:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405120

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_407
	test	rax, rax
	je	.label_408
.label_407:
	pop	rbx
	ret	
.label_408:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40513a
	.globl sub_40513a
	.type sub_40513a, @function
sub_40513a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405140
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	.section	.text
	.align	16
	#Procedure 0x405148
	.globl sub_405148
	.type sub_405148, @function
sub_405148:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405150
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_409
.label_410:
	ret	
.label_409:
	cmp	edi, 0x7f
	je	.label_410
	xor	eax, eax
	jmp	.label_410
	.section	.text
	.align	16
	#Procedure 0x405161
	.globl sub_405161
	.type sub_405161, @function
sub_405161:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4051d5
	.globl sub_4051d5
	.type sub_4051d5, @function
sub_4051d5:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4051e2
	.globl sub_4051e2
	.type sub_4051e2, @function
sub_4051e2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405206
	.globl sub_405206
	.type sub_405206, @function
sub_405206:

	nop	word ptr cs:[rax + rax]
